; ModuleID = 'drivers/input/serio/libps2.c'
source_filename = "drivers/input/serio/libps2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_sendbyte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_sendbyte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_begin_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_begin_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_end_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_end_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_drain: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_drain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_is_keyboard_id: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_is_keyboard_id ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ps2_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __ps2_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_sliced_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_sliced_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ps2_interrupt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ps2_interrupt ; .previous"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID___addressable_ps2_sendbyte267 = internal global ptr @ps2_sendbyte, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_ps2_begin_command268 = internal global ptr @ps2_begin_command, section ".discard.addressable", align 8, !dbg !133
@__UNIQUE_ID___addressable_ps2_end_command269 = internal global ptr @ps2_end_command, section ".discard.addressable", align 8, !dbg !135
@.str = private unnamed_addr constant [29 x i8] c"drivers/input/serio/libps2.c\00", align 1, !dbg !137
@__UNIQUE_ID___addressable_ps2_drain270 = internal global ptr @ps2_drain, section ".discard.addressable", align 8, !dbg !143
@ps2_is_keyboard_id.keyboard_ids = internal constant [6 x i8] c"\AB\AC+]`G", align 1, !dbg !145
@__UNIQUE_ID___addressable_ps2_is_keyboard_id271 = internal global ptr @ps2_is_keyboard_id, section ".discard.addressable", align 8, !dbg !164
@__UNIQUE_ID___addressable___ps2_command272 = internal global ptr @__ps2_command, section ".discard.addressable", align 8, !dbg !166
@__UNIQUE_ID___addressable_ps2_command273 = internal global ptr @ps2_command, section ".discard.addressable", align 8, !dbg !168
@__UNIQUE_ID___addressable_ps2_sliced_command274 = internal global ptr @ps2_sliced_command, section ".discard.addressable", align 8, !dbg !170
@ps2_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !172
@.str.1 = private unnamed_addr constant [19 x i8] c"&ps2dev->cmd_mutex\00", align 1, !dbg !4383
@ps2_init.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4388
@.str.3 = private unnamed_addr constant [14 x i8] c"&ps2dev->wait\00", align 1, !dbg !4390
@__UNIQUE_ID___addressable_ps2_init275 = internal global ptr @ps2_init, section ".discard.addressable", align 8, !dbg !4395
@__UNIQUE_ID___addressable_ps2_interrupt276 = internal global ptr @ps2_interrupt, section ".discard.addressable", align 8, !dbg !4397
@__UNIQUE_ID_author277 = internal constant [45 x i8] c"libps2.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1, !dbg !4399
@__UNIQUE_ID_description278 = internal constant [39 x i8] c"libps2.description=PS/2 driver library\00", section ".modinfo", align 1, !dbg !4404
@__UNIQUE_ID_file279 = internal constant [39 x i8] c"libps2.file=drivers/input/serio/libps2\00", section ".modinfo", align 1, !dbg !4409
@__UNIQUE_ID_license280 = internal constant [19 x i8] c"libps2.license=GPL\00", section ".modinfo", align 1, !dbg !4411
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4414
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___addressable_ps2_sendbyte267, ptr @__UNIQUE_ID___addressable_ps2_begin_command268, ptr @__UNIQUE_ID___addressable_ps2_end_command269, ptr @__UNIQUE_ID___addressable_ps2_drain270, ptr @__UNIQUE_ID___addressable_ps2_is_keyboard_id271, ptr @__UNIQUE_ID___addressable___ps2_command272, ptr @__UNIQUE_ID___addressable_ps2_command273, ptr @__UNIQUE_ID___addressable_ps2_sliced_command274, ptr @__UNIQUE_ID___addressable_ps2_init275, ptr @__UNIQUE_ID___addressable_ps2_interrupt276, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ps2_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %byte, i32 noundef %timeout) #0 align 16 !dbg !4427 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %byte.addr = alloca i8, align 1
  %timeout.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4431, metadata !DIExpression()), !dbg !4435
  store i8 %byte, ptr %byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte.addr, metadata !4432, metadata !DIExpression()), !dbg !4436
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4433, metadata !DIExpression()), !dbg !4437
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !4438
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4434, metadata !DIExpression()), !dbg !4439
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4440
  %serio = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 0, !dbg !4441
  %1 = load ptr, ptr %serio, align 8, !dbg !4441
  call void @serio_pause_rx(ptr noundef %1) #10, !dbg !4442
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4443
  %3 = load i8, ptr %byte.addr, align 1, !dbg !4444
  %4 = load i32, ptr %timeout.addr, align 4, !dbg !4445
  %call = call i32 @ps2_do_sendbyte(ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef 1) #10, !dbg !4446
  store i32 %call, ptr %retval1, align 4, !dbg !4447
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4448
  %serio2 = getelementptr inbounds %struct.ps2dev, ptr %5, i32 0, i32 0, !dbg !4449
  %6 = load ptr, ptr %serio2, align 8, !dbg !4449
  call void @serio_continue_rx(ptr noundef %6) #10, !dbg !4450
  %7 = load i32, ptr %retval1, align 4, !dbg !4451
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !4452
  ret i32 %7, !dbg !4453
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_pause_rx(ptr noundef %serio) #3 align 16 !dbg !4454 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !4458
  %lock = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6, !dbg !4459
  call void @spin_lock_irq(ptr noundef %lock) #10, !dbg !4460
  ret void, !dbg !4461
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ps2_do_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %byte, i32 noundef %timeout, i32 noundef %max_attempts) #0 align 16 !dbg !4462 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %byte.addr = alloca i8, align 1
  %timeout.addr = alloca i32, align 4
  %max_attempts.addr = alloca i32, align 4
  %attempt = alloca i32, align 4
  %error = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret18 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond21 = alloca i8, align 1
  %tmp32 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  %tmp46 = alloca i64, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4466, metadata !DIExpression()), !dbg !4501
  store i8 %byte, ptr %byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte.addr, metadata !4467, metadata !DIExpression()), !dbg !4502
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4468, metadata !DIExpression()), !dbg !4503
  store i32 %max_attempts, ptr %max_attempts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_attempts.addr, metadata !4469, metadata !DIExpression()), !dbg !4504
  call void @llvm.lifetime.start.p0(i64 4, ptr %attempt) #9, !dbg !4505
  call void @llvm.dbg.declare(metadata ptr %attempt, metadata !4470, metadata !DIExpression()), !dbg !4506
  store i32 0, ptr %attempt, align 4, !dbg !4506
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #9, !dbg !4507
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4471, metadata !DIExpression()), !dbg !4508
  br label %do.body, !dbg !4509

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4510
  %serio = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 0, !dbg !4510
  %1 = load ptr, ptr %serio, align 8, !dbg !4510
  %lock = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 6, !dbg !4510
  br label %do.cond, !dbg !4510

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4510

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4512

do.body1:                                         ; preds = %land.end, %do.end
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4513
  %nak = getelementptr inbounds %struct.ps2dev, ptr %2, i32 0, i32 6, !dbg !4514
  store i8 1, ptr %nak, align 1, !dbg !4515
  %3 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4516
  %flags = getelementptr inbounds %struct.ps2dev, ptr %3, i32 0, i32 3, !dbg !4517
  %4 = load i64, ptr %flags, align 8, !dbg !4518
  %or = or i64 %4, 1, !dbg !4518
  store i64 %or, ptr %flags, align 8, !dbg !4518
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4519
  %serio2 = getelementptr inbounds %struct.ps2dev, ptr %5, i32 0, i32 0, !dbg !4520
  %6 = load ptr, ptr %serio2, align 8, !dbg !4520
  call void @serio_continue_rx(ptr noundef %6) #10, !dbg !4521
  %7 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4522
  %serio3 = getelementptr inbounds %struct.ps2dev, ptr %7, i32 0, i32 0, !dbg !4523
  %8 = load ptr, ptr %serio3, align 8, !dbg !4523
  %9 = load i8, ptr %byte.addr, align 1, !dbg !4524
  %call = call i32 @serio_write(ptr noundef %8, i8 noundef zeroext %9) #10, !dbg !4525
  store i32 %call, ptr %error, align 4, !dbg !4526
  %10 = load i32, ptr %error, align 4, !dbg !4527
  %tobool = icmp ne i32 %10, 0, !dbg !4527
  br i1 %tobool, label %if.then, label %if.else, !dbg !4528

if.then:                                          ; preds = %do.body1
  br label %if.end47, !dbg !4529

if.else:                                          ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #9, !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4472, metadata !DIExpression()), !dbg !4530
  %11 = load i32, ptr %timeout.addr, align 4, !dbg !4530
  %call4 = call i64 @msecs_to_jiffies(i32 noundef %11) #10, !dbg !4530
  store i64 %call4, ptr %__ret, align 8, !dbg !4530
  br label %do.body5, !dbg !4530

do.body5:                                         ; preds = %if.else
  call void @might_resched() #10, !dbg !4531
  br label %do.cond6, !dbg !4531

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4531

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #9, !dbg !4533
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !4476, metadata !DIExpression()), !dbg !4533
  %12 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4533
  %flags8 = getelementptr inbounds %struct.ps2dev, ptr %12, i32 0, i32 3, !dbg !4533
  %13 = load i64, ptr %flags8, align 8, !dbg !4533
  %and = and i64 %13, 1, !dbg !4533
  %tobool9 = icmp ne i64 %and, 0, !dbg !4533
  %lnot = xor i1 %tobool9, true, !dbg !4533
  %frombool = zext i1 %lnot to i8, !dbg !4533
  store i8 %frombool, ptr %__cond, align 1, !dbg !4533
  %14 = load i8, ptr %__cond, align 1, !dbg !4534, !range !4536, !noundef !1449
  %tobool10 = trunc i8 %14 to i1, !dbg !4534
  br i1 %tobool10, label %land.lhs.true, label %if.end, !dbg !4534

land.lhs.true:                                    ; preds = %do.end7
  %15 = load i64, ptr %__ret, align 8, !dbg !4534
  %tobool11 = icmp ne i64 %15, 0, !dbg !4534
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !4533

if.then12:                                        ; preds = %land.lhs.true
  store i64 1, ptr %__ret, align 8, !dbg !4534
  br label %if.end, !dbg !4534

if.end:                                           ; preds = %if.then12, %land.lhs.true, %do.end7
  %16 = load i8, ptr %__cond, align 1, !dbg !4533, !range !4536, !noundef !1449
  %tobool13 = trunc i8 %16 to i1, !dbg !4533
  br i1 %tobool13, label %lor.end, label %lor.rhs, !dbg !4533

lor.rhs:                                          ; preds = %if.end
  %17 = load i64, ptr %__ret, align 8, !dbg !4533
  %tobool14 = icmp ne i64 %17, 0, !dbg !4533
  %lnot15 = xor i1 %tobool14, true, !dbg !4533
  br label %lor.end, !dbg !4533

lor.end:                                          ; preds = %lor.rhs, %if.end
  %18 = phi i1 [ true, %if.end ], [ %lnot15, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32, !dbg !4533
  store i32 %lor.ext, ptr %tmp, align 4, !dbg !4534
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #9, !dbg !4537
  %19 = load i32, ptr %tmp, align 4, !dbg !4533
  %tobool16 = icmp ne i32 %19, 0, !dbg !4537
  br i1 %tobool16, label %if.end45, label %if.then17, !dbg !4530

if.then17:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #9, !dbg !4538
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !4479, metadata !DIExpression()), !dbg !4538
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret18) #9, !dbg !4538
  call void @llvm.dbg.declare(metadata ptr %__ret18, metadata !4492, metadata !DIExpression()), !dbg !4538
  %20 = load i32, ptr %timeout.addr, align 4, !dbg !4538
  %call19 = call i64 @msecs_to_jiffies(i32 noundef %20) #10, !dbg !4538
  store i64 %call19, ptr %__ret18, align 8, !dbg !4538
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #10, !dbg !4538
  br label %for.cond, !dbg !4538

for.cond:                                         ; preds = %cleanup.cont, %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #9, !dbg !4539
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !4493, metadata !DIExpression()), !dbg !4539
  %21 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4539
  %wait = getelementptr inbounds %struct.ps2dev, ptr %21, i32 0, i32 2, !dbg !4539
  %call20 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 2) #10, !dbg !4539
  store i64 %call20, ptr %__int, align 8, !dbg !4539
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond21) #9, !dbg !4540
  call void @llvm.dbg.declare(metadata ptr %__cond21, metadata !4497, metadata !DIExpression()), !dbg !4540
  %22 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4540
  %flags22 = getelementptr inbounds %struct.ps2dev, ptr %22, i32 0, i32 3, !dbg !4540
  %23 = load i64, ptr %flags22, align 8, !dbg !4540
  %and23 = and i64 %23, 1, !dbg !4540
  %tobool24 = icmp ne i64 %and23, 0, !dbg !4540
  %lnot25 = xor i1 %tobool24, true, !dbg !4540
  %frombool26 = zext i1 %lnot25 to i8, !dbg !4540
  store i8 %frombool26, ptr %__cond21, align 1, !dbg !4540
  %24 = load i8, ptr %__cond21, align 1, !dbg !4541, !range !4536, !noundef !1449
  %tobool27 = trunc i8 %24 to i1, !dbg !4541
  br i1 %tobool27, label %land.lhs.true28, label %if.end31, !dbg !4541

land.lhs.true28:                                  ; preds = %for.cond
  %25 = load i64, ptr %__ret18, align 8, !dbg !4541
  %tobool29 = icmp ne i64 %25, 0, !dbg !4541
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !4540

if.then30:                                        ; preds = %land.lhs.true28
  store i64 1, ptr %__ret18, align 8, !dbg !4541
  br label %if.end31, !dbg !4541

if.end31:                                         ; preds = %if.then30, %land.lhs.true28, %for.cond
  %26 = load i8, ptr %__cond21, align 1, !dbg !4540, !range !4536, !noundef !1449
  %tobool33 = trunc i8 %26 to i1, !dbg !4540
  br i1 %tobool33, label %lor.end37, label %lor.rhs34, !dbg !4540

lor.rhs34:                                        ; preds = %if.end31
  %27 = load i64, ptr %__ret18, align 8, !dbg !4540
  %tobool35 = icmp ne i64 %27, 0, !dbg !4540
  %lnot36 = xor i1 %tobool35, true, !dbg !4540
  br label %lor.end37, !dbg !4540

lor.end37:                                        ; preds = %lor.rhs34, %if.end31
  %28 = phi i1 [ true, %if.end31 ], [ %lnot36, %lor.rhs34 ]
  %lor.ext38 = zext i1 %28 to i32, !dbg !4540
  store i32 %lor.ext38, ptr %tmp32, align 4, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond21) #9, !dbg !4543
  %29 = load i32, ptr %tmp32, align 4, !dbg !4540
  %tobool39 = icmp ne i32 %29, 0, !dbg !4543
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4539

if.then40:                                        ; preds = %lor.end37
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4543

if.end41:                                         ; preds = %lor.end37
  %30 = load i64, ptr %__ret18, align 8, !dbg !4539
  %call42 = call i64 @schedule_timeout(i64 noundef %30) #10, !dbg !4539
  store i64 %call42, ptr %__ret18, align 8, !dbg !4539
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4544
  br label %cleanup, !dbg !4544

cleanup:                                          ; preds = %if.end41, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #9, !dbg !4544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !4544, !llvm.loop !4545

for.end:                                          ; preds = %cleanup
  %31 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4538
  %wait43 = getelementptr inbounds %struct.ps2dev, ptr %31, i32 0, i32 2, !dbg !4538
  call void @finish_wait(ptr noundef %wait43, ptr noundef %__wq_entry) #10, !dbg !4538
  br label %__out, !dbg !4538

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !4500), !dbg !4538
  %32 = load i64, ptr %__ret18, align 8, !dbg !4538
  store i64 %32, ptr %tmp44, align 8, !dbg !4538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret18) #9, !dbg !4537
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #9, !dbg !4537
  %33 = load i64, ptr %tmp44, align 8, !dbg !4538
  store i64 %33, ptr %__ret, align 8, !dbg !4537
  br label %if.end45, !dbg !4537

if.end45:                                         ; preds = %__out, %lor.end
  %34 = load i64, ptr %__ret, align 8, !dbg !4530
  store i64 %34, ptr %tmp46, align 8, !dbg !4537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #9, !dbg !4548
  %35 = load i64, ptr %tmp46, align 8, !dbg !4530
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.then
  %36 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4549
  %serio48 = getelementptr inbounds %struct.ps2dev, ptr %36, i32 0, i32 0, !dbg !4550
  %37 = load ptr, ptr %serio48, align 8, !dbg !4550
  call void @serio_pause_rx(ptr noundef %37) #10, !dbg !4551
  br label %do.cond49, !dbg !4552

do.cond49:                                        ; preds = %if.end47
  %38 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4553
  %nak50 = getelementptr inbounds %struct.ps2dev, ptr %38, i32 0, i32 6, !dbg !4554
  %39 = load i8, ptr %nak50, align 1, !dbg !4554
  %conv = zext i8 %39 to i32, !dbg !4553
  %cmp = icmp eq i32 %conv, 254, !dbg !4555
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4556

land.rhs:                                         ; preds = %do.cond49
  %40 = load i32, ptr %attempt, align 4, !dbg !4557
  %inc = add i32 %40, 1, !dbg !4557
  store i32 %inc, ptr %attempt, align 4, !dbg !4557
  %41 = load i32, ptr %max_attempts.addr, align 4, !dbg !4558
  %cmp52 = icmp ult i32 %inc, %41, !dbg !4559
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond49
  %42 = phi i1 [ false, %do.cond49 ], [ %cmp52, %land.rhs ], !dbg !4560
  br i1 %42, label %do.body1, label %do.end54, !dbg !4552, !llvm.loop !4561

do.end54:                                         ; preds = %land.end
  %43 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4564
  %flags55 = getelementptr inbounds %struct.ps2dev, ptr %43, i32 0, i32 3, !dbg !4565
  %44 = load i64, ptr %flags55, align 8, !dbg !4566
  %and56 = and i64 %44, -2, !dbg !4566
  store i64 %and56, ptr %flags55, align 8, !dbg !4566
  %45 = load i32, ptr %error, align 4, !dbg !4567
  %tobool57 = icmp ne i32 %45, 0, !dbg !4567
  br i1 %tobool57, label %if.end62, label %if.then58, !dbg !4569

if.then58:                                        ; preds = %do.end54
  %46 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4570
  %nak59 = getelementptr inbounds %struct.ps2dev, ptr %46, i32 0, i32 6, !dbg !4572
  %47 = load i8, ptr %nak59, align 1, !dbg !4572
  %conv60 = zext i8 %47 to i32, !dbg !4570
  switch i32 %conv60, label %sw.default [
    i32 0, label %sw.epilog
    i32 254, label %sw.bb
    i32 252, label %sw.bb61
  ], !dbg !4573

sw.bb:                                            ; preds = %if.then58
  store i32 -11, ptr %error, align 4, !dbg !4574
  br label %sw.epilog, !dbg !4576

sw.bb61:                                          ; preds = %if.then58
  store i32 -71, ptr %error, align 4, !dbg !4577
  br label %sw.epilog, !dbg !4578

sw.default:                                       ; preds = %if.then58
  store i32 -5, ptr %error, align 4, !dbg !4579
  br label %sw.epilog, !dbg !4580

sw.epilog:                                        ; preds = %sw.default, %sw.bb61, %sw.bb, %if.then58
  br label %if.end62, !dbg !4581

if.end62:                                         ; preds = %sw.epilog, %do.end54
  %48 = load i32, ptr %error, align 4, !dbg !4582
  %tobool63 = icmp ne i32 %48, 0, !dbg !4582
  br i1 %tobool63, label %if.then66, label %lor.lhs.false, !dbg !4584

lor.lhs.false:                                    ; preds = %if.end62
  %49 = load i32, ptr %attempt, align 4, !dbg !4585
  %cmp64 = icmp sgt i32 %49, 1, !dbg !4586
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !4587

if.then66:                                        ; preds = %lor.lhs.false, %if.end62
  br label %if.end67, !dbg !4588

if.end67:                                         ; preds = %if.then66, %lor.lhs.false
  %50 = load i32, ptr %error, align 4, !dbg !4589
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #9, !dbg !4590
  call void @llvm.lifetime.end.p0(i64 4, ptr %attempt) #9, !dbg !4590
  ret i32 %50, !dbg !4591

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_continue_rx(ptr noundef %serio) #3 align 16 !dbg !4592 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !4596
  %lock = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6, !dbg !4597
  call void @spin_unlock_irq(ptr noundef %lock) #10, !dbg !4598
  ret void, !dbg !4599
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ps2_begin_command(ptr noundef %ps2dev) #0 align 16 !dbg !4600 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4604, metadata !DIExpression()), !dbg !4606
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9, !dbg !4607
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4605, metadata !DIExpression()), !dbg !4608
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4609
  %serio = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 0, !dbg !4610
  %1 = load ptr, ptr %serio, align 8, !dbg !4610
  %ps2_cmd_mutex = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20, !dbg !4611
  %2 = load ptr, ptr %ps2_cmd_mutex, align 8, !dbg !4611
  %tobool = icmp ne ptr %2, null, !dbg !4609
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4609

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4609

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4612
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, ptr %3, i32 0, i32 1, !dbg !4613
  br label %cond.end, !dbg !4609

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %cmd_mutex, %cond.false ], !dbg !4609
  store ptr %cond, ptr %m, align 8, !dbg !4608
  %4 = load ptr, ptr %m, align 8, !dbg !4614
  call void @mutex_lock(ptr noundef %4) #10, !dbg !4615
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9, !dbg !4616
  ret void, !dbg !4616
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4617 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ps2_end_command(ptr noundef %ps2dev) #0 align 16 !dbg !4620 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4622, metadata !DIExpression()), !dbg !4624
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9, !dbg !4625
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4623, metadata !DIExpression()), !dbg !4626
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4627
  %serio = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 0, !dbg !4628
  %1 = load ptr, ptr %serio, align 8, !dbg !4628
  %ps2_cmd_mutex = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20, !dbg !4629
  %2 = load ptr, ptr %ps2_cmd_mutex, align 8, !dbg !4629
  %tobool = icmp ne ptr %2, null, !dbg !4627
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4627

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4627

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4630
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, ptr %3, i32 0, i32 1, !dbg !4631
  br label %cond.end, !dbg !4627

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %cmd_mutex, %cond.false ], !dbg !4627
  store ptr %cond, ptr %m, align 8, !dbg !4626
  %4 = load ptr, ptr %m, align 8, !dbg !4632
  call void @mutex_unlock(ptr noundef %4) #10, !dbg !4633
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9, !dbg !4634
  ret void, !dbg !4634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4635 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ps2_drain(ptr noundef %ps2dev, i64 noundef %maxbytes, i32 noundef %timeout) #0 align 16 !dbg !4636 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %maxbytes.addr = alloca i64, align 8
  %timeout.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp35 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret43 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond46 = alloca i8, align 1
  %tmp59 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp73 = alloca i64, align 8
  %tmp75 = alloca i64, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4640, metadata !DIExpression()), !dbg !4666
  store i64 %maxbytes, ptr %maxbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxbytes.addr, metadata !4641, metadata !DIExpression()), !dbg !4667
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4642, metadata !DIExpression()), !dbg !4668
  %0 = load i64, ptr %maxbytes.addr, align 8, !dbg !4669
  %cmp = icmp ugt i64 %0, 8, !dbg !4670
  br i1 %cmp, label %if.then, label %if.end20, !dbg !4671

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4672
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4643, metadata !DIExpression()), !dbg !4672
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4672
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4673
  %tobool = icmp ne i32 %1, 0, !dbg !4673
  %lnot = xor i1 %tobool, true, !dbg !4673
  %lnot1 = xor i1 %lnot, true, !dbg !4673
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4673
  %conv = sext i32 %lnot.ext to i64, !dbg !4673
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4673
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4673
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4672

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !4673

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !4674
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4647, metadata !DIExpression()), !dbg !4674
  store i32 2305, ptr %__flags, align 4, !dbg !4674
  br label %do.body4, !dbg !4674

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4675

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4675

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4674

do.body5:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4677
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 159, i32 %2, i64 12) #9, !dbg !4677, !srcloc !4679
  br label %do.cond6, !dbg !4677

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4677

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !4674

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !4680

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4680

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !4673
  br label %do.cond11, !dbg !4674

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4674

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !4674

if.end:                                           ; preds = %do.end12, %if.then
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4672
  %tobool13 = icmp ne i32 %3, 0, !dbg !4672
  %lnot14 = xor i1 %tobool13, true, !dbg !4672
  %lnot16 = xor i1 %lnot14, true, !dbg !4672
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4672
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !4672
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !4672
  store i64 %expval19, ptr %tmp, align 8, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4682
  %4 = load i64, ptr %tmp, align 8, !dbg !4672
  store i64 8, ptr %maxbytes.addr, align 8, !dbg !4683
  br label %if.end20, !dbg !4684

if.end20:                                         ; preds = %if.end, %entry
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4685
  call void @ps2_begin_command(ptr noundef %5) #10, !dbg !4686
  %6 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4687
  %serio = getelementptr inbounds %struct.ps2dev, ptr %6, i32 0, i32 0, !dbg !4688
  %7 = load ptr, ptr %serio, align 8, !dbg !4688
  call void @serio_pause_rx(ptr noundef %7) #10, !dbg !4689
  %8 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4690
  %flags = getelementptr inbounds %struct.ps2dev, ptr %8, i32 0, i32 3, !dbg !4691
  store i64 2, ptr %flags, align 8, !dbg !4692
  %9 = load i64, ptr %maxbytes.addr, align 8, !dbg !4693
  %conv21 = trunc i64 %9 to i8, !dbg !4693
  %10 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4694
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %10, i32 0, i32 5, !dbg !4695
  store i8 %conv21, ptr %cmdcnt, align 8, !dbg !4696
  %11 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4697
  %serio22 = getelementptr inbounds %struct.ps2dev, ptr %11, i32 0, i32 0, !dbg !4698
  %12 = load ptr, ptr %serio22, align 8, !dbg !4698
  call void @serio_continue_rx(ptr noundef %12) #10, !dbg !4699
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #9, !dbg !4700
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4650, metadata !DIExpression()), !dbg !4700
  %13 = load i32, ptr %timeout.addr, align 4, !dbg !4700
  %call = call i64 @msecs_to_jiffies(i32 noundef %13) #10, !dbg !4700
  store i64 %call, ptr %__ret, align 8, !dbg !4700
  br label %do.body23, !dbg !4700

do.body23:                                        ; preds = %if.end20
  call void @might_resched() #10, !dbg !4701
  br label %do.cond24, !dbg !4701

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4701

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #9, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !4652, metadata !DIExpression()), !dbg !4703
  %14 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4703
  %flags26 = getelementptr inbounds %struct.ps2dev, ptr %14, i32 0, i32 3, !dbg !4703
  %15 = load i64, ptr %flags26, align 8, !dbg !4703
  %and = and i64 %15, 2, !dbg !4703
  %tobool27 = icmp ne i64 %and, 0, !dbg !4703
  %lnot28 = xor i1 %tobool27, true, !dbg !4703
  %frombool = zext i1 %lnot28 to i8, !dbg !4703
  store i8 %frombool, ptr %__cond, align 1, !dbg !4703
  %16 = load i8, ptr %__cond, align 1, !dbg !4704, !range !4536, !noundef !1449
  %tobool30 = trunc i8 %16 to i1, !dbg !4704
  br i1 %tobool30, label %land.lhs.true, label %if.end34, !dbg !4704

land.lhs.true:                                    ; preds = %do.end25
  %17 = load i64, ptr %__ret, align 8, !dbg !4704
  %tobool32 = icmp ne i64 %17, 0, !dbg !4704
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4703

if.then33:                                        ; preds = %land.lhs.true
  store i64 1, ptr %__ret, align 8, !dbg !4704
  br label %if.end34, !dbg !4704

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %do.end25
  %18 = load i8, ptr %__cond, align 1, !dbg !4703, !range !4536, !noundef !1449
  %tobool36 = trunc i8 %18 to i1, !dbg !4703
  br i1 %tobool36, label %lor.end, label %lor.rhs, !dbg !4703

lor.rhs:                                          ; preds = %if.end34
  %19 = load i64, ptr %__ret, align 8, !dbg !4703
  %tobool38 = icmp ne i64 %19, 0, !dbg !4703
  %lnot39 = xor i1 %tobool38, true, !dbg !4703
  br label %lor.end, !dbg !4703

lor.end:                                          ; preds = %lor.rhs, %if.end34
  %20 = phi i1 [ true, %if.end34 ], [ %lnot39, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32, !dbg !4703
  store i32 %lor.ext, ptr %tmp35, align 4, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #9, !dbg !4706
  %21 = load i32, ptr %tmp35, align 4, !dbg !4703
  %tobool41 = icmp ne i32 %21, 0, !dbg !4706
  br i1 %tobool41, label %if.end74, label %if.then42, !dbg !4700

if.then42:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #9, !dbg !4707
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !4655, metadata !DIExpression()), !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret43) #9, !dbg !4707
  call void @llvm.dbg.declare(metadata ptr %__ret43, metadata !4657, metadata !DIExpression()), !dbg !4707
  %22 = load i32, ptr %timeout.addr, align 4, !dbg !4707
  %call44 = call i64 @msecs_to_jiffies(i32 noundef %22) #10, !dbg !4707
  store i64 %call44, ptr %__ret43, align 8, !dbg !4707
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #10, !dbg !4707
  br label %for.cond, !dbg !4707

for.cond:                                         ; preds = %cleanup.cont, %if.then42
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #9, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !4658, metadata !DIExpression()), !dbg !4708
  %23 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4708
  %wait = getelementptr inbounds %struct.ps2dev, ptr %23, i32 0, i32 2, !dbg !4708
  %call45 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 2) #10, !dbg !4708
  store i64 %call45, ptr %__int, align 8, !dbg !4708
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond46) #9, !dbg !4709
  call void @llvm.dbg.declare(metadata ptr %__cond46, metadata !4662, metadata !DIExpression()), !dbg !4709
  %24 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4709
  %flags47 = getelementptr inbounds %struct.ps2dev, ptr %24, i32 0, i32 3, !dbg !4709
  %25 = load i64, ptr %flags47, align 8, !dbg !4709
  %and48 = and i64 %25, 2, !dbg !4709
  %tobool49 = icmp ne i64 %and48, 0, !dbg !4709
  %lnot50 = xor i1 %tobool49, true, !dbg !4709
  %frombool52 = zext i1 %lnot50 to i8, !dbg !4709
  store i8 %frombool52, ptr %__cond46, align 1, !dbg !4709
  %26 = load i8, ptr %__cond46, align 1, !dbg !4710, !range !4536, !noundef !1449
  %tobool53 = trunc i8 %26 to i1, !dbg !4710
  br i1 %tobool53, label %land.lhs.true55, label %if.end58, !dbg !4710

land.lhs.true55:                                  ; preds = %for.cond
  %27 = load i64, ptr %__ret43, align 8, !dbg !4710
  %tobool56 = icmp ne i64 %27, 0, !dbg !4710
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !4709

if.then57:                                        ; preds = %land.lhs.true55
  store i64 1, ptr %__ret43, align 8, !dbg !4710
  br label %if.end58, !dbg !4710

if.end58:                                         ; preds = %if.then57, %land.lhs.true55, %for.cond
  %28 = load i8, ptr %__cond46, align 1, !dbg !4709, !range !4536, !noundef !1449
  %tobool60 = trunc i8 %28 to i1, !dbg !4709
  br i1 %tobool60, label %lor.end66, label %lor.rhs62, !dbg !4709

lor.rhs62:                                        ; preds = %if.end58
  %29 = load i64, ptr %__ret43, align 8, !dbg !4709
  %tobool63 = icmp ne i64 %29, 0, !dbg !4709
  %lnot64 = xor i1 %tobool63, true, !dbg !4709
  br label %lor.end66, !dbg !4709

lor.end66:                                        ; preds = %lor.rhs62, %if.end58
  %30 = phi i1 [ true, %if.end58 ], [ %lnot64, %lor.rhs62 ]
  %lor.ext67 = zext i1 %30 to i32, !dbg !4709
  store i32 %lor.ext67, ptr %tmp59, align 4, !dbg !4710
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond46) #9, !dbg !4712
  %31 = load i32, ptr %tmp59, align 4, !dbg !4709
  %tobool68 = icmp ne i32 %31, 0, !dbg !4712
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4708

if.then69:                                        ; preds = %lor.end66
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4712

if.end70:                                         ; preds = %lor.end66
  %32 = load i64, ptr %__ret43, align 8, !dbg !4708
  %call71 = call i64 @schedule_timeout(i64 noundef %32) #10, !dbg !4708
  store i64 %call71, ptr %__ret43, align 8, !dbg !4708
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4713
  br label %cleanup, !dbg !4713

cleanup:                                          ; preds = %if.end70, %if.then69
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #9, !dbg !4713
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 12, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !4713, !llvm.loop !4714

for.end:                                          ; preds = %cleanup
  %33 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4707
  %wait72 = getelementptr inbounds %struct.ps2dev, ptr %33, i32 0, i32 2, !dbg !4707
  call void @finish_wait(ptr noundef %wait72, ptr noundef %__wq_entry) #10, !dbg !4707
  br label %__out, !dbg !4707

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !4665), !dbg !4707
  %34 = load i64, ptr %__ret43, align 8, !dbg !4707
  store i64 %34, ptr %tmp73, align 8, !dbg !4707
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret43) #9, !dbg !4706
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #9, !dbg !4706
  %35 = load i64, ptr %tmp73, align 8, !dbg !4707
  store i64 %35, ptr %__ret, align 8, !dbg !4706
  br label %if.end74, !dbg !4706

if.end74:                                         ; preds = %__out, %lor.end
  %36 = load i64, ptr %__ret, align 8, !dbg !4700
  store i64 %36, ptr %tmp75, align 8, !dbg !4706
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #9, !dbg !4716
  %37 = load i64, ptr %tmp75, align 8, !dbg !4700
  %38 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4717
  call void @ps2_end_command(ptr noundef %38) #10, !dbg !4718
  ret void, !dbg !4719

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #6 align 16 !dbg !4720 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  %0 = load i32, ptr %m.addr, align 4, !dbg !4727
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4729
  br i1 %1, label %if.then, label %if.else, !dbg !4730

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !4731
  %cmp = icmp slt i32 %2, 0, !dbg !4734
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4735

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !4736
  br label %return, !dbg !4736

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !4737
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #10, !dbg !4738
  store i64 %call, ptr %retval, align 8, !dbg !4739
  br label %return, !dbg !4739

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !4740
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #10, !dbg !4742
  store i64 %call2, ptr %retval, align 8, !dbg !4743
  br label %return, !dbg !4743

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !4744
  ret i64 %5, !dbg !4744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !4416 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !4745
  %0 = load ptr, ptr %tmp, align 8, !dbg !4745
  %call = call i32 %0() #10, !dbg !4747
  ret void, !dbg !4748
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4749 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4752 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4756 dso_local i64 @schedule_timeout(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4759 dso_local void @finish_wait(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext %id_byte) #0 align 16 !dbg !147 {
entry:
  %id_byte.addr = alloca i8, align 1
  store i8 %id_byte, ptr %id_byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %id_byte.addr, metadata !159, metadata !DIExpression()), !dbg !4762
  %0 = load i8, ptr %id_byte.addr, align 1, !dbg !4763
  %conv = zext i8 %0 to i32, !dbg !4763
  %call = call ptr @memchr(ptr noundef @ps2_is_keyboard_id.keyboard_ids, i32 noundef %conv, i64 noundef 6) #10, !dbg !4764
  %cmp = icmp ne ptr %call, null, !dbg !4765
  ret i1 %cmp, !dbg !4766
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4767 dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef %command) #0 align 16 !dbg !4771 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %command.addr = alloca i32, align 4
  %timeout = alloca i32, align 4
  %send = alloca i32, align 4
  %receive = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %send_param = alloca [16 x i8], align 16
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on28 = alloca i32, align 4
  %__flags39 = alloca i32, align 4
  %tmp52 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp119 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret127 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond131 = alloca i8, align 1
  %tmp144 = alloca i32, align 4
  %tmp159 = alloca i64, align 8
  %tmp161 = alloca i64, align 8
  %__ret172 = alloca i64, align 8
  %__cond177 = alloca i8, align 1
  %tmp190 = alloca i32, align 4
  %__wq_entry201 = alloca %struct.wait_queue_entry, align 8
  %__ret202 = alloca i64, align 8
  %__int205 = alloca i64, align 8
  %__cond208 = alloca i8, align 1
  %tmp221 = alloca i32, align 4
  %tmp240 = alloca i64, align 8
  %tmp242 = alloca i64, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4776, metadata !DIExpression()), !dbg !4834
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !4777, metadata !DIExpression()), !dbg !4835
  store i32 %command, ptr %command.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !4778, metadata !DIExpression()), !dbg !4836
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #9, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !4779, metadata !DIExpression()), !dbg !4838
  call void @llvm.lifetime.start.p0(i64 4, ptr %send) #9, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %send, metadata !4780, metadata !DIExpression()), !dbg !4840
  %0 = load i32, ptr %command.addr, align 4, !dbg !4841
  %shr = lshr i32 %0, 12, !dbg !4842
  %and = and i32 %shr, 15, !dbg !4843
  store i32 %and, ptr %send, align 4, !dbg !4840
  call void @llvm.lifetime.start.p0(i64 4, ptr %receive) #9, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %receive, metadata !4781, metadata !DIExpression()), !dbg !4845
  %1 = load i32, ptr %command.addr, align 4, !dbg !4846
  %shr1 = lshr i32 %1, 8, !dbg !4847
  %and2 = and i32 %shr1, 15, !dbg !4848
  store i32 %and2, ptr %receive, align 4, !dbg !4845
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4782, metadata !DIExpression()), !dbg !4850
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4851
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4783, metadata !DIExpression()), !dbg !4852
  call void @llvm.lifetime.start.p0(i64 16, ptr %send_param) #9, !dbg !4853
  call void @llvm.dbg.declare(metadata ptr %send_param, metadata !4784, metadata !DIExpression()), !dbg !4854
  %2 = load i32, ptr %receive, align 4, !dbg !4855
  %conv = zext i32 %2 to i64, !dbg !4855
  %cmp = icmp ugt i64 %conv, 8, !dbg !4856
  br i1 %cmp, label %if.then, label %if.end24, !dbg !4857

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4858
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4785, metadata !DIExpression()), !dbg !4858
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4858
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4859
  %tobool = icmp ne i32 %3, 0, !dbg !4859
  %lnot = xor i1 %tobool, true, !dbg !4859
  %lnot4 = xor i1 %lnot, true, !dbg !4859
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4859
  %conv5 = sext i32 %lnot.ext to i64, !dbg !4859
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !4859
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4859
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !4858

if.then7:                                         ; preds = %if.then
  br label %do.body, !dbg !4859

do.body:                                          ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !4860
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4789, metadata !DIExpression()), !dbg !4860
  store i32 2305, ptr %__flags, align 4, !dbg !4860
  br label %do.body8, !dbg !4860

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4861

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4861

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4860

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !4863
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 275, i32 %4, i64 12) #9, !dbg !4863, !srcloc !4865
  br label %do.cond10, !dbg !4863

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4863

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4860

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4866

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4866

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !4859
  br label %do.cond15, !dbg !4860

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4860

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4860

if.end:                                           ; preds = %do.end16, %if.then
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4858
  %tobool17 = icmp ne i32 %5, 0, !dbg !4858
  %lnot18 = xor i1 %tobool17, true, !dbg !4858
  %lnot20 = xor i1 %lnot18, true, !dbg !4858
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4858
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4858
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4858
  store i64 %expval23, ptr %tmp, align 8, !dbg !4859
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4868
  %6 = load i64, ptr %tmp, align 8, !dbg !4858
  store i32 -22, ptr %retval, align 4, !dbg !4869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup280, !dbg !4869

if.end24:                                         ; preds = %entry
  %7 = load i32, ptr %send, align 4, !dbg !4870
  %tobool25 = icmp ne i32 %7, 0, !dbg !4870
  br i1 %tobool25, label %land.lhs.true, label %if.end60, !dbg !4871

land.lhs.true:                                    ; preds = %if.end24
  %8 = load ptr, ptr %param.addr, align 8, !dbg !4872
  %tobool26 = icmp ne ptr %8, null, !dbg !4872
  br i1 %tobool26, label %if.end60, label %if.then27, !dbg !4873

if.then27:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !4792, metadata !DIExpression()), !dbg !4874
  store i32 1, ptr %__ret_warn_on28, align 4, !dbg !4874
  %9 = load i32, ptr %__ret_warn_on28, align 4, !dbg !4875
  %tobool29 = icmp ne i32 %9, 0, !dbg !4875
  %lnot30 = xor i1 %tobool29, true, !dbg !4875
  %lnot32 = xor i1 %lnot30, true, !dbg !4875
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !4875
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !4875
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !4875
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !4875
  br i1 %tobool36, label %if.then37, label %if.end51, !dbg !4874

if.then37:                                        ; preds = %if.then27
  br label %do.body38, !dbg !4875

do.body38:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags39) #9, !dbg !4876
  call void @llvm.dbg.declare(metadata ptr %__flags39, metadata !4796, metadata !DIExpression()), !dbg !4876
  store i32 2305, ptr %__flags39, align 4, !dbg !4876
  br label %do.body40, !dbg !4876

do.body40:                                        ; preds = %do.body38
  br label %do.cond41, !dbg !4877

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !4877

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !4876

do.body43:                                        ; preds = %do.end42
  %10 = load i32, ptr %__flags39, align 4, !dbg !4879
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 280, i32 %10, i64 12) #9, !dbg !4879, !srcloc !4881
  br label %do.cond44, !dbg !4879

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !4879

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !4876

do.body46:                                        ; preds = %do.end45
  br label %do.cond47, !dbg !4882

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !4882

do.end48:                                         ; preds = %do.cond47
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags39) #9, !dbg !4875
  br label %do.cond49, !dbg !4876

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !4876

do.end50:                                         ; preds = %do.cond49
  br label %if.end51, !dbg !4876

if.end51:                                         ; preds = %do.end50, %if.then27
  %11 = load i32, ptr %__ret_warn_on28, align 4, !dbg !4874
  %tobool53 = icmp ne i32 %11, 0, !dbg !4874
  %lnot54 = xor i1 %tobool53, true, !dbg !4874
  %lnot56 = xor i1 %lnot54, true, !dbg !4874
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !4874
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !4874
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0), !dbg !4874
  store i64 %expval59, ptr %tmp52, align 8, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !4884
  %12 = load i64, ptr %tmp52, align 8, !dbg !4874
  store i32 -22, ptr %retval, align 4, !dbg !4885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup280, !dbg !4885

if.end60:                                         ; preds = %land.lhs.true, %if.end24
  %arraydecay = getelementptr inbounds [16 x i8], ptr %send_param, i64 0, i64 0, !dbg !4886
  %13 = load ptr, ptr %param.addr, align 8, !dbg !4887
  %14 = load i32, ptr %send, align 4, !dbg !4888
  %conv61 = zext i32 %14 to i64, !dbg !4888
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %13, i64 %conv61, i1 false), !dbg !4886
  %15 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4889
  %serio = getelementptr inbounds %struct.ps2dev, ptr %15, i32 0, i32 0, !dbg !4890
  %16 = load ptr, ptr %serio, align 8, !dbg !4890
  call void @serio_pause_rx(ptr noundef %16) #10, !dbg !4891
  %17 = load i32, ptr %receive, align 4, !dbg !4892
  %conv62 = trunc i32 %17 to i8, !dbg !4892
  %18 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4893
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %18, i32 0, i32 5, !dbg !4894
  store i8 %conv62, ptr %cmdcnt, align 8, !dbg !4895
  %19 = load i32, ptr %command.addr, align 4, !dbg !4896
  switch i32 %19, label %sw.default [
    i32 754, label %sw.bb
    i32 4333, label %sw.bb63
    i32 8427, label %sw.bb63
    i32 4339, label %sw.bb63
  ], !dbg !4897

sw.bb:                                            ; preds = %if.end60
  %20 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4898
  %flags = getelementptr inbounds %struct.ps2dev, ptr %20, i32 0, i32 3, !dbg !4900
  store i64 8, ptr %flags, align 8, !dbg !4901
  br label %sw.epilog, !dbg !4902

sw.bb63:                                          ; preds = %if.end60, %if.end60, %if.end60
  %21 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4903
  %flags64 = getelementptr inbounds %struct.ps2dev, ptr %21, i32 0, i32 3, !dbg !4904
  store i64 32, ptr %flags64, align 8, !dbg !4905
  br label %sw.epilog, !dbg !4906

sw.default:                                       ; preds = %if.end60
  %22 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4907
  %flags65 = getelementptr inbounds %struct.ps2dev, ptr %22, i32 0, i32 3, !dbg !4908
  store i64 0, ptr %flags65, align 8, !dbg !4909
  br label %sw.epilog, !dbg !4910

sw.epilog:                                        ; preds = %sw.default, %sw.bb63, %sw.bb
  %23 = load i32, ptr %receive, align 4, !dbg !4911
  %tobool66 = icmp ne i32 %23, 0, !dbg !4911
  br i1 %tobool66, label %if.then67, label %if.end77, !dbg !4913

if.then67:                                        ; preds = %sw.epilog
  %24 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4914
  %flags68 = getelementptr inbounds %struct.ps2dev, ptr %24, i32 0, i32 3, !dbg !4916
  %25 = load i64, ptr %flags68, align 8, !dbg !4917
  %or = or i64 %25, 6, !dbg !4917
  store i64 %or, ptr %flags68, align 8, !dbg !4917
  %26 = load ptr, ptr %param.addr, align 8, !dbg !4918
  %tobool69 = icmp ne ptr %26, null, !dbg !4918
  br i1 %tobool69, label %if.then70, label %if.end76, !dbg !4920

if.then70:                                        ; preds = %if.then67
  store i32 0, ptr %i, align 4, !dbg !4921
  br label %for.cond, !dbg !4923

for.cond:                                         ; preds = %for.inc, %if.then70
  %27 = load i32, ptr %i, align 4, !dbg !4924
  %28 = load i32, ptr %receive, align 4, !dbg !4926
  %cmp71 = icmp ult i32 %27, %28, !dbg !4927
  br i1 %cmp71, label %for.body, label %for.end, !dbg !4928

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %param.addr, align 8, !dbg !4929
  %30 = load i32, ptr %i, align 4, !dbg !4930
  %idxprom = sext i32 %30 to i64, !dbg !4929
  %arrayidx = getelementptr i8, ptr %29, i64 %idxprom, !dbg !4929
  %31 = load i8, ptr %arrayidx, align 1, !dbg !4929
  %32 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4931
  %cmdbuf = getelementptr inbounds %struct.ps2dev, ptr %32, i32 0, i32 4, !dbg !4932
  %33 = load i32, ptr %receive, align 4, !dbg !4933
  %sub = sub i32 %33, 1, !dbg !4934
  %34 = load i32, ptr %i, align 4, !dbg !4935
  %sub73 = sub i32 %sub, %34, !dbg !4936
  %idxprom74 = zext i32 %sub73 to i64, !dbg !4931
  %arrayidx75 = getelementptr [8 x i8], ptr %cmdbuf, i64 0, i64 %idxprom74, !dbg !4931
  store i8 %31, ptr %arrayidx75, align 1, !dbg !4937
  br label %for.inc, !dbg !4931

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %i, align 4, !dbg !4938
  %inc = add i32 %35, 1, !dbg !4938
  store i32 %inc, ptr %i, align 4, !dbg !4938
  br label %for.cond, !dbg !4939, !llvm.loop !4940

for.end:                                          ; preds = %for.cond
  br label %if.end76, !dbg !4941

if.end76:                                         ; preds = %for.end, %if.then67
  br label %if.end77, !dbg !4942

if.end77:                                         ; preds = %if.end76, %sw.epilog
  %36 = load i32, ptr %command.addr, align 4, !dbg !4943
  %cmp78 = icmp eq i32 %36, 767, !dbg !4944
  %37 = zext i1 %cmp78 to i64, !dbg !4943
  %cond = select i1 %cmp78, i32 1000, i32 200, !dbg !4943
  store i32 %cond, ptr %timeout, align 4, !dbg !4945
  %38 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4946
  %39 = load i32, ptr %command.addr, align 4, !dbg !4947
  %and80 = and i32 %39, 255, !dbg !4948
  %conv81 = trunc i32 %and80 to i8, !dbg !4947
  %40 = load i32, ptr %timeout, align 4, !dbg !4949
  %call = call i32 @ps2_do_sendbyte(ptr noundef %38, i8 noundef zeroext %conv81, i32 noundef %40, i32 noundef 2) #10, !dbg !4950
  store i32 %call, ptr %rc, align 4, !dbg !4951
  %41 = load i32, ptr %rc, align 4, !dbg !4952
  %tobool82 = icmp ne i32 %41, 0, !dbg !4952
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !4954

if.then83:                                        ; preds = %if.end77
  br label %out_reset_flags, !dbg !4955

if.end84:                                         ; preds = %if.end77
  store i32 0, ptr %i, align 4, !dbg !4956
  br label %for.cond85, !dbg !4958

for.cond85:                                       ; preds = %for.inc95, %if.end84
  %42 = load i32, ptr %i, align 4, !dbg !4959
  %43 = load i32, ptr %send, align 4, !dbg !4961
  %cmp86 = icmp ult i32 %42, %43, !dbg !4962
  br i1 %cmp86, label %for.body88, label %for.end97, !dbg !4963

for.body88:                                       ; preds = %for.cond85
  %44 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4964
  %45 = load ptr, ptr %param.addr, align 8, !dbg !4966
  %46 = load i32, ptr %i, align 4, !dbg !4967
  %idxprom89 = sext i32 %46 to i64, !dbg !4966
  %arrayidx90 = getelementptr i8, ptr %45, i64 %idxprom89, !dbg !4966
  %47 = load i8, ptr %arrayidx90, align 1, !dbg !4966
  %call91 = call i32 @ps2_do_sendbyte(ptr noundef %44, i8 noundef zeroext %47, i32 noundef 200, i32 noundef 2) #10, !dbg !4968
  store i32 %call91, ptr %rc, align 4, !dbg !4969
  %48 = load i32, ptr %rc, align 4, !dbg !4970
  %tobool92 = icmp ne i32 %48, 0, !dbg !4970
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !4972

if.then93:                                        ; preds = %for.body88
  br label %out_reset_flags, !dbg !4973

if.end94:                                         ; preds = %for.body88
  br label %for.inc95, !dbg !4974

for.inc95:                                        ; preds = %if.end94
  %49 = load i32, ptr %i, align 4, !dbg !4975
  %inc96 = add i32 %49, 1, !dbg !4975
  store i32 %inc96, ptr %i, align 4, !dbg !4975
  br label %for.cond85, !dbg !4976, !llvm.loop !4977

for.end97:                                        ; preds = %for.cond85
  %50 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4979
  %serio98 = getelementptr inbounds %struct.ps2dev, ptr %50, i32 0, i32 0, !dbg !4980
  %51 = load ptr, ptr %serio98, align 8, !dbg !4980
  call void @serio_continue_rx(ptr noundef %51) #10, !dbg !4981
  %52 = load i32, ptr %command.addr, align 4, !dbg !4982
  %cmp99 = icmp eq i32 %52, 767, !dbg !4983
  %53 = zext i1 %cmp99 to i64, !dbg !4982
  %cond101 = select i1 %cmp99, i32 4000, i32 500, !dbg !4982
  %call102 = call i64 @msecs_to_jiffies(i32 noundef %cond101) #10, !dbg !4984
  %conv103 = trunc i64 %call102 to i32, !dbg !4984
  store i32 %conv103, ptr %timeout, align 4, !dbg !4985
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #9, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4799, metadata !DIExpression()), !dbg !4986
  %54 = load i32, ptr %timeout, align 4, !dbg !4986
  %conv104 = zext i32 %54 to i64, !dbg !4986
  store i64 %conv104, ptr %__ret, align 8, !dbg !4986
  br label %do.body105, !dbg !4986

do.body105:                                       ; preds = %for.end97
  call void @might_resched() #10, !dbg !4987
  br label %do.cond106, !dbg !4987

do.cond106:                                       ; preds = %do.body105
  br label %do.end107, !dbg !4987

do.end107:                                        ; preds = %do.cond106
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #9, !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !4801, metadata !DIExpression()), !dbg !4989
  %55 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4989
  %flags108 = getelementptr inbounds %struct.ps2dev, ptr %55, i32 0, i32 3, !dbg !4989
  %56 = load i64, ptr %flags108, align 8, !dbg !4989
  %and109 = and i64 %56, 4, !dbg !4989
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4989
  %lnot111 = xor i1 %tobool110, true, !dbg !4989
  %frombool = zext i1 %lnot111 to i8, !dbg !4989
  store i8 %frombool, ptr %__cond, align 1, !dbg !4989
  %57 = load i8, ptr %__cond, align 1, !dbg !4990, !range !4536, !noundef !1449
  %tobool113 = trunc i8 %57 to i1, !dbg !4990
  br i1 %tobool113, label %land.lhs.true115, label %if.end118, !dbg !4990

land.lhs.true115:                                 ; preds = %do.end107
  %58 = load i64, ptr %__ret, align 8, !dbg !4990
  %tobool116 = icmp ne i64 %58, 0, !dbg !4990
  br i1 %tobool116, label %if.end118, label %if.then117, !dbg !4989

if.then117:                                       ; preds = %land.lhs.true115
  store i64 1, ptr %__ret, align 8, !dbg !4990
  br label %if.end118, !dbg !4990

if.end118:                                        ; preds = %if.then117, %land.lhs.true115, %do.end107
  %59 = load i8, ptr %__cond, align 1, !dbg !4989, !range !4536, !noundef !1449
  %tobool120 = trunc i8 %59 to i1, !dbg !4989
  br i1 %tobool120, label %lor.end, label %lor.rhs, !dbg !4989

lor.rhs:                                          ; preds = %if.end118
  %60 = load i64, ptr %__ret, align 8, !dbg !4989
  %tobool122 = icmp ne i64 %60, 0, !dbg !4989
  %lnot123 = xor i1 %tobool122, true, !dbg !4989
  br label %lor.end, !dbg !4989

lor.end:                                          ; preds = %lor.rhs, %if.end118
  %61 = phi i1 [ true, %if.end118 ], [ %lnot123, %lor.rhs ]
  %lor.ext = zext i1 %61 to i32, !dbg !4989
  store i32 %lor.ext, ptr %tmp119, align 4, !dbg !4990
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #9, !dbg !4992
  %62 = load i32, ptr %tmp119, align 4, !dbg !4989
  %tobool125 = icmp ne i32 %62, 0, !dbg !4992
  br i1 %tobool125, label %if.end160, label %if.then126, !dbg !4986

if.then126:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #9, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !4804, metadata !DIExpression()), !dbg !4993
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret127) #9, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %__ret127, metadata !4806, metadata !DIExpression()), !dbg !4993
  %63 = load i32, ptr %timeout, align 4, !dbg !4993
  %conv128 = zext i32 %63 to i64, !dbg !4993
  store i64 %conv128, ptr %__ret127, align 8, !dbg !4993
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #10, !dbg !4993
  br label %for.cond129, !dbg !4993

for.cond129:                                      ; preds = %cleanup.cont, %if.then126
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #9, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !4807, metadata !DIExpression()), !dbg !4994
  %64 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4994
  %wait = getelementptr inbounds %struct.ps2dev, ptr %64, i32 0, i32 2, !dbg !4994
  %call130 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 2) #10, !dbg !4994
  store i64 %call130, ptr %__int, align 8, !dbg !4994
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond131) #9, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %__cond131, metadata !4811, metadata !DIExpression()), !dbg !4995
  %65 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4995
  %flags132 = getelementptr inbounds %struct.ps2dev, ptr %65, i32 0, i32 3, !dbg !4995
  %66 = load i64, ptr %flags132, align 8, !dbg !4995
  %and133 = and i64 %66, 4, !dbg !4995
  %tobool134 = icmp ne i64 %and133, 0, !dbg !4995
  %lnot135 = xor i1 %tobool134, true, !dbg !4995
  %frombool137 = zext i1 %lnot135 to i8, !dbg !4995
  store i8 %frombool137, ptr %__cond131, align 1, !dbg !4995
  %67 = load i8, ptr %__cond131, align 1, !dbg !4996, !range !4536, !noundef !1449
  %tobool138 = trunc i8 %67 to i1, !dbg !4996
  br i1 %tobool138, label %land.lhs.true140, label %if.end143, !dbg !4996

land.lhs.true140:                                 ; preds = %for.cond129
  %68 = load i64, ptr %__ret127, align 8, !dbg !4996
  %tobool141 = icmp ne i64 %68, 0, !dbg !4996
  br i1 %tobool141, label %if.end143, label %if.then142, !dbg !4995

if.then142:                                       ; preds = %land.lhs.true140
  store i64 1, ptr %__ret127, align 8, !dbg !4996
  br label %if.end143, !dbg !4996

if.end143:                                        ; preds = %if.then142, %land.lhs.true140, %for.cond129
  %69 = load i8, ptr %__cond131, align 1, !dbg !4995, !range !4536, !noundef !1449
  %tobool145 = trunc i8 %69 to i1, !dbg !4995
  br i1 %tobool145, label %lor.end151, label %lor.rhs147, !dbg !4995

lor.rhs147:                                       ; preds = %if.end143
  %70 = load i64, ptr %__ret127, align 8, !dbg !4995
  %tobool148 = icmp ne i64 %70, 0, !dbg !4995
  %lnot149 = xor i1 %tobool148, true, !dbg !4995
  br label %lor.end151, !dbg !4995

lor.end151:                                       ; preds = %lor.rhs147, %if.end143
  %71 = phi i1 [ true, %if.end143 ], [ %lnot149, %lor.rhs147 ]
  %lor.ext152 = zext i1 %71 to i32, !dbg !4995
  store i32 %lor.ext152, ptr %tmp144, align 4, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond131) #9, !dbg !4998
  %72 = load i32, ptr %tmp144, align 4, !dbg !4995
  %tobool153 = icmp ne i32 %72, 0, !dbg !4998
  br i1 %tobool153, label %if.then154, label %if.end155, !dbg !4994

if.then154:                                       ; preds = %lor.end151
  store i32 28, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4998

if.end155:                                        ; preds = %lor.end151
  %73 = load i64, ptr %__ret127, align 8, !dbg !4994
  %call156 = call i64 @schedule_timeout(i64 noundef %73) #10, !dbg !4994
  store i64 %call156, ptr %__ret127, align 8, !dbg !4994
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4999
  br label %cleanup, !dbg !4999

cleanup:                                          ; preds = %if.end155, %if.then154
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #9, !dbg !4999
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 28, label %for.end157
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond129, !dbg !4999, !llvm.loop !5000

for.end157:                                       ; preds = %cleanup
  %74 = load ptr, ptr %ps2dev.addr, align 8, !dbg !4993
  %wait158 = getelementptr inbounds %struct.ps2dev, ptr %74, i32 0, i32 2, !dbg !4993
  call void @finish_wait(ptr noundef %wait158, ptr noundef %__wq_entry) #10, !dbg !4993
  br label %__out, !dbg !4993

__out:                                            ; preds = %for.end157
  call void @llvm.dbg.label(metadata !4814), !dbg !4993
  %75 = load i64, ptr %__ret127, align 8, !dbg !4993
  store i64 %75, ptr %tmp159, align 8, !dbg !4993
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret127) #9, !dbg !4992
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #9, !dbg !4992
  %76 = load i64, ptr %tmp159, align 8, !dbg !4993
  store i64 %76, ptr %__ret, align 8, !dbg !4992
  br label %if.end160, !dbg !4992

if.end160:                                        ; preds = %__out, %lor.end
  %77 = load i64, ptr %__ret, align 8, !dbg !4986
  store i64 %77, ptr %tmp161, align 8, !dbg !4992
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #9, !dbg !5002
  %78 = load i64, ptr %tmp161, align 8, !dbg !4986
  %conv162 = trunc i64 %78 to i32, !dbg !5002
  store i32 %conv162, ptr %timeout, align 4, !dbg !5003
  %79 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5004
  %cmdcnt163 = getelementptr inbounds %struct.ps2dev, ptr %79, i32 0, i32 5, !dbg !5005
  %80 = load i8, ptr %cmdcnt163, align 8, !dbg !5005
  %conv164 = zext i8 %80 to i32, !dbg !5004
  %tobool165 = icmp ne i32 %conv164, 0, !dbg !5004
  br i1 %tobool165, label %land.lhs.true166, label %if.end243, !dbg !5006

land.lhs.true166:                                 ; preds = %if.end160
  %81 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5007
  %flags167 = getelementptr inbounds %struct.ps2dev, ptr %81, i32 0, i32 3, !dbg !5008
  %82 = load i64, ptr %flags167, align 8, !dbg !5008
  %and168 = and i64 %82, 4, !dbg !5009
  %tobool169 = icmp ne i64 %and168, 0, !dbg !5009
  br i1 %tobool169, label %if.end243, label %if.then170, !dbg !5010

if.then170:                                       ; preds = %land.lhs.true166
  %83 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5011
  %84 = load i32, ptr %command.addr, align 4, !dbg !5012
  %85 = load i32, ptr %timeout, align 4, !dbg !5013
  %call171 = call i32 @ps2_adjust_timeout(ptr noundef %83, i32 noundef %84, i32 noundef %85) #10, !dbg !5014
  store i32 %call171, ptr %timeout, align 4, !dbg !5015
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret172) #9, !dbg !5016
  call void @llvm.dbg.declare(metadata ptr %__ret172, metadata !4815, metadata !DIExpression()), !dbg !5016
  %86 = load i32, ptr %timeout, align 4, !dbg !5016
  %conv173 = zext i32 %86 to i64, !dbg !5016
  store i64 %conv173, ptr %__ret172, align 8, !dbg !5016
  br label %do.body174, !dbg !5016

do.body174:                                       ; preds = %if.then170
  call void @might_resched() #10, !dbg !5017
  br label %do.cond175, !dbg !5017

do.cond175:                                       ; preds = %do.body174
  br label %do.end176, !dbg !5017

do.end176:                                        ; preds = %do.cond175
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond177) #9, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %__cond177, metadata !4819, metadata !DIExpression()), !dbg !5019
  %87 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5019
  %flags178 = getelementptr inbounds %struct.ps2dev, ptr %87, i32 0, i32 3, !dbg !5019
  %88 = load i64, ptr %flags178, align 8, !dbg !5019
  %and179 = and i64 %88, 2, !dbg !5019
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5019
  %lnot181 = xor i1 %tobool180, true, !dbg !5019
  %frombool183 = zext i1 %lnot181 to i8, !dbg !5019
  store i8 %frombool183, ptr %__cond177, align 1, !dbg !5019
  %89 = load i8, ptr %__cond177, align 1, !dbg !5020, !range !4536, !noundef !1449
  %tobool184 = trunc i8 %89 to i1, !dbg !5020
  br i1 %tobool184, label %land.lhs.true186, label %if.end189, !dbg !5020

land.lhs.true186:                                 ; preds = %do.end176
  %90 = load i64, ptr %__ret172, align 8, !dbg !5020
  %tobool187 = icmp ne i64 %90, 0, !dbg !5020
  br i1 %tobool187, label %if.end189, label %if.then188, !dbg !5019

if.then188:                                       ; preds = %land.lhs.true186
  store i64 1, ptr %__ret172, align 8, !dbg !5020
  br label %if.end189, !dbg !5020

if.end189:                                        ; preds = %if.then188, %land.lhs.true186, %do.end176
  %91 = load i8, ptr %__cond177, align 1, !dbg !5019, !range !4536, !noundef !1449
  %tobool191 = trunc i8 %91 to i1, !dbg !5019
  br i1 %tobool191, label %lor.end197, label %lor.rhs193, !dbg !5019

lor.rhs193:                                       ; preds = %if.end189
  %92 = load i64, ptr %__ret172, align 8, !dbg !5019
  %tobool194 = icmp ne i64 %92, 0, !dbg !5019
  %lnot195 = xor i1 %tobool194, true, !dbg !5019
  br label %lor.end197, !dbg !5019

lor.end197:                                       ; preds = %lor.rhs193, %if.end189
  %93 = phi i1 [ true, %if.end189 ], [ %lnot195, %lor.rhs193 ]
  %lor.ext198 = zext i1 %93 to i32, !dbg !5019
  store i32 %lor.ext198, ptr %tmp190, align 4, !dbg !5020
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond177) #9, !dbg !5022
  %94 = load i32, ptr %tmp190, align 4, !dbg !5019
  %tobool199 = icmp ne i32 %94, 0, !dbg !5022
  br i1 %tobool199, label %if.end241, label %if.then200, !dbg !5016

if.then200:                                       ; preds = %lor.end197
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry201) #9, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %__wq_entry201, metadata !4822, metadata !DIExpression()), !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret202) #9, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %__ret202, metadata !4824, metadata !DIExpression()), !dbg !5023
  %95 = load i32, ptr %timeout, align 4, !dbg !5023
  %conv203 = zext i32 %95 to i64, !dbg !5023
  store i64 %conv203, ptr %__ret202, align 8, !dbg !5023
  call void @init_wait_entry(ptr noundef %__wq_entry201, i32 noundef 0) #10, !dbg !5023
  br label %for.cond204, !dbg !5023

for.cond204:                                      ; preds = %cleanup.cont236, %if.then200
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int205) #9, !dbg !5024
  call void @llvm.dbg.declare(metadata ptr %__int205, metadata !4825, metadata !DIExpression()), !dbg !5024
  %96 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5024
  %wait206 = getelementptr inbounds %struct.ps2dev, ptr %96, i32 0, i32 2, !dbg !5024
  %call207 = call i64 @prepare_to_wait_event(ptr noundef %wait206, ptr noundef %__wq_entry201, i32 noundef 2) #10, !dbg !5024
  store i64 %call207, ptr %__int205, align 8, !dbg !5024
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond208) #9, !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %__cond208, metadata !4829, metadata !DIExpression()), !dbg !5025
  %97 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5025
  %flags209 = getelementptr inbounds %struct.ps2dev, ptr %97, i32 0, i32 3, !dbg !5025
  %98 = load i64, ptr %flags209, align 8, !dbg !5025
  %and210 = and i64 %98, 2, !dbg !5025
  %tobool211 = icmp ne i64 %and210, 0, !dbg !5025
  %lnot212 = xor i1 %tobool211, true, !dbg !5025
  %frombool214 = zext i1 %lnot212 to i8, !dbg !5025
  store i8 %frombool214, ptr %__cond208, align 1, !dbg !5025
  %99 = load i8, ptr %__cond208, align 1, !dbg !5026, !range !4536, !noundef !1449
  %tobool215 = trunc i8 %99 to i1, !dbg !5026
  br i1 %tobool215, label %land.lhs.true217, label %if.end220, !dbg !5026

land.lhs.true217:                                 ; preds = %for.cond204
  %100 = load i64, ptr %__ret202, align 8, !dbg !5026
  %tobool218 = icmp ne i64 %100, 0, !dbg !5026
  br i1 %tobool218, label %if.end220, label %if.then219, !dbg !5025

if.then219:                                       ; preds = %land.lhs.true217
  store i64 1, ptr %__ret202, align 8, !dbg !5026
  br label %if.end220, !dbg !5026

if.end220:                                        ; preds = %if.then219, %land.lhs.true217, %for.cond204
  %101 = load i8, ptr %__cond208, align 1, !dbg !5025, !range !4536, !noundef !1449
  %tobool222 = trunc i8 %101 to i1, !dbg !5025
  br i1 %tobool222, label %lor.end228, label %lor.rhs224, !dbg !5025

lor.rhs224:                                       ; preds = %if.end220
  %102 = load i64, ptr %__ret202, align 8, !dbg !5025
  %tobool225 = icmp ne i64 %102, 0, !dbg !5025
  %lnot226 = xor i1 %tobool225, true, !dbg !5025
  br label %lor.end228, !dbg !5025

lor.end228:                                       ; preds = %lor.rhs224, %if.end220
  %103 = phi i1 [ true, %if.end220 ], [ %lnot226, %lor.rhs224 ]
  %lor.ext229 = zext i1 %103 to i32, !dbg !5025
  store i32 %lor.ext229, ptr %tmp221, align 4, !dbg !5026
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond208) #9, !dbg !5028
  %104 = load i32, ptr %tmp221, align 4, !dbg !5025
  %tobool230 = icmp ne i32 %104, 0, !dbg !5028
  br i1 %tobool230, label %if.then231, label %if.end232, !dbg !5024

if.then231:                                       ; preds = %lor.end228
  store i32 33, ptr %cleanup.dest.slot, align 4
  br label %cleanup234, !dbg !5028

if.end232:                                        ; preds = %lor.end228
  %105 = load i64, ptr %__ret202, align 8, !dbg !5024
  %call233 = call i64 @schedule_timeout(i64 noundef %105) #10, !dbg !5024
  store i64 %call233, ptr %__ret202, align 8, !dbg !5024
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5029
  br label %cleanup234, !dbg !5029

cleanup234:                                       ; preds = %if.end232, %if.then231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int205) #9, !dbg !5029
  %cleanup.dest235 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest235, label %unreachable [
    i32 0, label %cleanup.cont236
    i32 33, label %for.end237
  ]

cleanup.cont236:                                  ; preds = %cleanup234
  br label %for.cond204, !dbg !5029, !llvm.loop !5030

for.end237:                                       ; preds = %cleanup234
  %106 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5023
  %wait238 = getelementptr inbounds %struct.ps2dev, ptr %106, i32 0, i32 2, !dbg !5023
  call void @finish_wait(ptr noundef %wait238, ptr noundef %__wq_entry201) #10, !dbg !5023
  br label %__out239, !dbg !5023

__out239:                                         ; preds = %for.end237
  call void @llvm.dbg.label(metadata !4832), !dbg !5023
  %107 = load i64, ptr %__ret202, align 8, !dbg !5023
  store i64 %107, ptr %tmp240, align 8, !dbg !5023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret202) #9, !dbg !5022
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry201) #9, !dbg !5022
  %108 = load i64, ptr %tmp240, align 8, !dbg !5023
  store i64 %108, ptr %__ret172, align 8, !dbg !5022
  br label %if.end241, !dbg !5022

if.end241:                                        ; preds = %__out239, %lor.end197
  %109 = load i64, ptr %__ret172, align 8, !dbg !5016
  store i64 %109, ptr %tmp242, align 8, !dbg !5022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret172) #9, !dbg !5032
  %110 = load i64, ptr %tmp242, align 8, !dbg !5016
  br label %if.end243, !dbg !5033

if.end243:                                        ; preds = %if.end241, %land.lhs.true166, %if.end160
  %111 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5034
  %serio244 = getelementptr inbounds %struct.ps2dev, ptr %111, i32 0, i32 0, !dbg !5035
  %112 = load ptr, ptr %serio244, align 8, !dbg !5035
  call void @serio_pause_rx(ptr noundef %112) #10, !dbg !5036
  %113 = load ptr, ptr %param.addr, align 8, !dbg !5037
  %tobool245 = icmp ne ptr %113, null, !dbg !5037
  br i1 %tobool245, label %if.then246, label %if.end262, !dbg !5039

if.then246:                                       ; preds = %if.end243
  store i32 0, ptr %i, align 4, !dbg !5040
  br label %for.cond247, !dbg !5043

for.cond247:                                      ; preds = %for.inc258, %if.then246
  %114 = load i32, ptr %i, align 4, !dbg !5044
  %115 = load i32, ptr %receive, align 4, !dbg !5046
  %cmp248 = icmp ult i32 %114, %115, !dbg !5047
  br i1 %cmp248, label %for.body250, label %for.end260, !dbg !5048

for.body250:                                      ; preds = %for.cond247
  %116 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5049
  %cmdbuf251 = getelementptr inbounds %struct.ps2dev, ptr %116, i32 0, i32 4, !dbg !5050
  %117 = load i32, ptr %receive, align 4, !dbg !5051
  %sub252 = sub i32 %117, 1, !dbg !5052
  %118 = load i32, ptr %i, align 4, !dbg !5053
  %sub253 = sub i32 %sub252, %118, !dbg !5054
  %idxprom254 = zext i32 %sub253 to i64, !dbg !5049
  %arrayidx255 = getelementptr [8 x i8], ptr %cmdbuf251, i64 0, i64 %idxprom254, !dbg !5049
  %119 = load i8, ptr %arrayidx255, align 1, !dbg !5049
  %120 = load ptr, ptr %param.addr, align 8, !dbg !5055
  %121 = load i32, ptr %i, align 4, !dbg !5056
  %idxprom256 = sext i32 %121 to i64, !dbg !5055
  %arrayidx257 = getelementptr i8, ptr %120, i64 %idxprom256, !dbg !5055
  store i8 %119, ptr %arrayidx257, align 1, !dbg !5057
  br label %for.inc258, !dbg !5055

for.inc258:                                       ; preds = %for.body250
  %122 = load i32, ptr %i, align 4, !dbg !5058
  %inc259 = add i32 %122, 1, !dbg !5058
  store i32 %inc259, ptr %i, align 4, !dbg !5058
  br label %for.cond247, !dbg !5059, !llvm.loop !5060

for.end260:                                       ; preds = %for.cond247
  %123 = load ptr, ptr %param.addr, align 8, !dbg !5062
  %124 = load i32, ptr %receive, align 4, !dbg !5063
  %conv261 = zext i32 %124 to i64, !dbg !5063
  call void @kmsan_unpoison_memory(ptr noundef %123, i64 noundef %conv261) #10, !dbg !5064
  br label %if.end262, !dbg !5065

if.end262:                                        ; preds = %for.end260, %if.end243
  %125 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5066
  %cmdcnt263 = getelementptr inbounds %struct.ps2dev, ptr %125, i32 0, i32 5, !dbg !5068
  %126 = load i8, ptr %cmdcnt263, align 8, !dbg !5068
  %conv264 = zext i8 %126 to i32, !dbg !5066
  %tobool265 = icmp ne i32 %conv264, 0, !dbg !5066
  br i1 %tobool265, label %land.lhs.true266, label %if.end274, !dbg !5069

land.lhs.true266:                                 ; preds = %if.end262
  %127 = load i32, ptr %command.addr, align 4, !dbg !5070
  %cmp267 = icmp ne i32 %127, 767, !dbg !5071
  br i1 %cmp267, label %if.then273, label %lor.lhs.false, !dbg !5072

lor.lhs.false:                                    ; preds = %land.lhs.true266
  %128 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5073
  %cmdcnt269 = getelementptr inbounds %struct.ps2dev, ptr %128, i32 0, i32 5, !dbg !5074
  %129 = load i8, ptr %cmdcnt269, align 8, !dbg !5074
  %conv270 = zext i8 %129 to i32, !dbg !5073
  %cmp271 = icmp ne i32 %conv270, 1, !dbg !5075
  br i1 %cmp271, label %if.then273, label %if.end274, !dbg !5076

if.then273:                                       ; preds = %lor.lhs.false, %land.lhs.true266
  store i32 -71, ptr %rc, align 4, !dbg !5077
  br label %out_reset_flags, !dbg !5079

if.end274:                                        ; preds = %lor.lhs.false, %if.end262
  store i32 0, ptr %rc, align 4, !dbg !5080
  br label %out_reset_flags, !dbg !5081

out_reset_flags:                                  ; preds = %if.end274, %if.then273, %if.then93, %if.then83
  call void @llvm.dbg.label(metadata !4833), !dbg !5082
  %130 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5083
  %flags275 = getelementptr inbounds %struct.ps2dev, ptr %130, i32 0, i32 3, !dbg !5084
  store i64 0, ptr %flags275, align 8, !dbg !5085
  %131 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5086
  %serio276 = getelementptr inbounds %struct.ps2dev, ptr %131, i32 0, i32 0, !dbg !5087
  %132 = load ptr, ptr %serio276, align 8, !dbg !5087
  call void @serio_continue_rx(ptr noundef %132) #10, !dbg !5088
  %133 = load i32, ptr %rc, align 4, !dbg !5089
  %cmp277 = icmp ne i32 %133, -11, !dbg !5090
  br i1 %cmp277, label %cond.true, label %cond.false, !dbg !5089

cond.true:                                        ; preds = %out_reset_flags
  %134 = load i32, ptr %rc, align 4, !dbg !5091
  br label %cond.end, !dbg !5089

cond.false:                                       ; preds = %out_reset_flags
  br label %cond.end, !dbg !5089

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond279 = phi i32 [ %134, %cond.true ], [ -71, %cond.false ], !dbg !5089
  store i32 %cond279, ptr %retval, align 4, !dbg !5092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup280, !dbg !5092

cleanup280:                                       ; preds = %cond.end, %if.end51, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %send_param) #9, !dbg !5093
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !5093
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !5093
  call void @llvm.lifetime.end.p0(i64 4, ptr %receive) #9, !dbg !5093
  call void @llvm.lifetime.end.p0(i64 4, ptr %send) #9, !dbg !5093
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #9, !dbg !5093
  %135 = load i32, ptr %retval, align 4, !dbg !5093
  ret i32 %135, !dbg !5093

unreachable:                                      ; preds = %cleanup234, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ps2_adjust_timeout(ptr noundef %ps2dev, i32 noundef %command, i32 noundef %timeout) #0 align 16 !dbg !5094 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %command.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5098, metadata !DIExpression()), !dbg !5101
  store i32 %command, ptr %command.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5100, metadata !DIExpression()), !dbg !5103
  %0 = load i32, ptr %command.addr, align 4, !dbg !5104
  switch i32 %0, label %sw.default [
    i32 767, label %sw.bb
    i32 754, label %sw.bb4
  ], !dbg !5105

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %timeout.addr, align 4, !dbg !5106
  %conv = zext i32 %1 to i64, !dbg !5106
  %call = call i64 @msecs_to_jiffies(i32 noundef 100) #10, !dbg !5109
  %cmp = icmp ugt i64 %conv, %call, !dbg !5110
  br i1 %cmp, label %if.then, label %if.end, !dbg !5111

if.then:                                          ; preds = %sw.bb
  %call2 = call i64 @msecs_to_jiffies(i32 noundef 100) #10, !dbg !5112
  %conv3 = trunc i64 %call2 to i32, !dbg !5112
  store i32 %conv3, ptr %timeout.addr, align 4, !dbg !5113
  br label %if.end, !dbg !5114

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !5115

sw.bb4:                                           ; preds = %entry
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5116
  %cmdbuf = getelementptr inbounds %struct.ps2dev, ptr %2, i32 0, i32 4, !dbg !5118
  %arrayidx = getelementptr [8 x i8], ptr %cmdbuf, i64 0, i64 1, !dbg !5116
  %3 = load i8, ptr %arrayidx, align 1, !dbg !5116
  %conv5 = zext i8 %3 to i32, !dbg !5116
  %cmp6 = icmp eq i32 %conv5, 170, !dbg !5119
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !5120

if.then8:                                         ; preds = %sw.bb4
  %4 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5121
  %serio = getelementptr inbounds %struct.ps2dev, ptr %4, i32 0, i32 0, !dbg !5123
  %5 = load ptr, ptr %serio, align 8, !dbg !5123
  call void @serio_pause_rx(ptr noundef %5) #10, !dbg !5124
  %6 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5125
  %flags = getelementptr inbounds %struct.ps2dev, ptr %6, i32 0, i32 3, !dbg !5126
  store i64 0, ptr %flags, align 8, !dbg !5127
  %7 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5128
  %serio9 = getelementptr inbounds %struct.ps2dev, ptr %7, i32 0, i32 0, !dbg !5129
  %8 = load ptr, ptr %serio9, align 8, !dbg !5129
  call void @serio_continue_rx(ptr noundef %8) #10, !dbg !5130
  store i32 0, ptr %timeout.addr, align 4, !dbg !5131
  br label %if.end10, !dbg !5132

if.end10:                                         ; preds = %if.then8, %sw.bb4
  %9 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5133
  %cmdbuf11 = getelementptr inbounds %struct.ps2dev, ptr %9, i32 0, i32 4, !dbg !5135
  %arrayidx12 = getelementptr [8 x i8], ptr %cmdbuf11, i64 0, i64 1, !dbg !5133
  %10 = load i8, ptr %arrayidx12, align 1, !dbg !5133
  %call13 = call zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext %10) #10, !dbg !5136
  br i1 %call13, label %if.end18, label %if.then14, !dbg !5137

if.then14:                                        ; preds = %if.end10
  %11 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5138
  %serio15 = getelementptr inbounds %struct.ps2dev, ptr %11, i32 0, i32 0, !dbg !5140
  %12 = load ptr, ptr %serio15, align 8, !dbg !5140
  call void @serio_pause_rx(ptr noundef %12) #10, !dbg !5141
  %13 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5142
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %13, i32 0, i32 5, !dbg !5143
  store i8 0, ptr %cmdcnt, align 8, !dbg !5144
  %14 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5145
  %flags16 = getelementptr inbounds %struct.ps2dev, ptr %14, i32 0, i32 3, !dbg !5146
  store i64 0, ptr %flags16, align 8, !dbg !5147
  %15 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5148
  %serio17 = getelementptr inbounds %struct.ps2dev, ptr %15, i32 0, i32 0, !dbg !5149
  %16 = load ptr, ptr %serio17, align 8, !dbg !5149
  call void @serio_continue_rx(ptr noundef %16) #10, !dbg !5150
  store i32 0, ptr %timeout.addr, align 4, !dbg !5151
  br label %if.end18, !dbg !5152

if.end18:                                         ; preds = %if.then14, %if.end10
  br label %sw.epilog, !dbg !5153

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5154

sw.epilog:                                        ; preds = %sw.default, %if.end18, %if.end
  %17 = load i32, ptr %timeout.addr, align 4, !dbg !5155
  ret i32 %17, !dbg !5156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !5157 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5162, metadata !DIExpression()), !dbg !5164
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5163, metadata !DIExpression()), !dbg !5165
  ret void, !dbg !5166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef %command) #0 align 16 !dbg !5167 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %command.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5169, metadata !DIExpression()), !dbg !5173
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5170, metadata !DIExpression()), !dbg !5174
  store i32 %command, ptr %command.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !5171, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5172, metadata !DIExpression()), !dbg !5177
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5178
  call void @ps2_begin_command(ptr noundef %0) #10, !dbg !5179
  %1 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5180
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5181
  %3 = load i32, ptr %command.addr, align 4, !dbg !5182
  %call = call i32 @__ps2_command(ptr noundef %1, ptr noundef %2, i32 noundef %3) #10, !dbg !5183
  store i32 %call, ptr %rc, align 4, !dbg !5184
  %4 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5185
  call void @ps2_end_command(ptr noundef %4) #10, !dbg !5186
  %5 = load i32, ptr %rc, align 4, !dbg !5187
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !5188
  ret i32 %5, !dbg !5189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %command) #0 align 16 !dbg !5190 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %command.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %d = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5194, metadata !DIExpression()), !dbg !5203
  store i8 %command, ptr %command.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !5195, metadata !DIExpression()), !dbg !5204
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5196, metadata !DIExpression()), !dbg !5206
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5197, metadata !DIExpression()), !dbg !5208
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5209
  call void @ps2_begin_command(ptr noundef %0) #10, !dbg !5210
  %1 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5211
  %call = call i32 @__ps2_command(ptr noundef %1, ptr noundef null, i32 noundef 230) #10, !dbg !5212
  store i32 %call, ptr %retval1, align 4, !dbg !5213
  %2 = load i32, ptr %retval1, align 4, !dbg !5214
  %tobool = icmp ne i32 %2, 0, !dbg !5214
  br i1 %tobool, label %if.then, label %if.end, !dbg !5216

if.then:                                          ; preds = %entry
  br label %out, !dbg !5217

if.end:                                           ; preds = %entry
  store i32 6, ptr %i, align 4, !dbg !5218
  br label %for.cond, !dbg !5219

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !5220
  %cmp = icmp sge i32 %3, 0, !dbg !5221
  br i1 %cmp, label %for.body, label %for.end, !dbg !5222

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %d) #9, !dbg !5223
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5198, metadata !DIExpression()), !dbg !5224
  %4 = load i8, ptr %command.addr, align 1, !dbg !5225
  %conv = zext i8 %4 to i32, !dbg !5225
  %5 = load i32, ptr %i, align 4, !dbg !5226
  %shr = ashr i32 %conv, %5, !dbg !5227
  %and = and i32 %shr, 3, !dbg !5228
  %conv2 = trunc i32 %and to i8, !dbg !5229
  store i8 %conv2, ptr %d, align 1, !dbg !5224
  %6 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5230
  %call3 = call i32 @__ps2_command(ptr noundef %6, ptr noundef %d, i32 noundef 4328) #10, !dbg !5231
  store i32 %call3, ptr %retval1, align 4, !dbg !5232
  %7 = load i32, ptr %retval1, align 4, !dbg !5233
  %tobool4 = icmp ne i32 %7, 0, !dbg !5233
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5235

if.then5:                                         ; preds = %for.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5236

if.end6:                                          ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5237
  br label %cleanup, !dbg !5237

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr %d) #9, !dbg !5237
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5238

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %i, align 4, !dbg !5239
  %sub = sub i32 %8, 2, !dbg !5239
  store i32 %sub, ptr %i, align 4, !dbg !5239
  br label %for.cond, !dbg !5240, !llvm.loop !5241

for.end:                                          ; preds = %cleanup, %for.cond
  br label %out, !dbg !5242

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !5202), !dbg !5243
  %9 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5244
  call void @ps2_end_command(ptr noundef %9) #10, !dbg !5245
  %10 = load i32, ptr %retval1, align 4, !dbg !5246
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !5247
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !5247
  ret i32 %10, !dbg !5248

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ps2_init(ptr noundef %ps2dev, ptr noundef %serio, ptr noundef %pre_receive_handler, ptr noundef %receive_handler) #0 align 16 !dbg !174 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %serio.addr = alloca ptr, align 8
  %pre_receive_handler.addr = alloca ptr, align 8
  %receive_handler.addr = alloca ptr, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !4379, metadata !DIExpression()), !dbg !5249
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4380, metadata !DIExpression()), !dbg !5250
  store ptr %pre_receive_handler, ptr %pre_receive_handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pre_receive_handler.addr, metadata !4381, metadata !DIExpression()), !dbg !5251
  store ptr %receive_handler, ptr %receive_handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %receive_handler.addr, metadata !4382, metadata !DIExpression()), !dbg !5252
  %0 = load ptr, ptr %pre_receive_handler.addr, align 8, !dbg !5253
  %1 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5254
  %pre_receive_handler1 = getelementptr inbounds %struct.ps2dev, ptr %1, i32 0, i32 7, !dbg !5255
  store ptr %0, ptr %pre_receive_handler1, align 8, !dbg !5256
  %2 = load ptr, ptr %receive_handler.addr, align 8, !dbg !5257
  %3 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5258
  %receive_handler2 = getelementptr inbounds %struct.ps2dev, ptr %3, i32 0, i32 8, !dbg !5259
  store ptr %2, ptr %receive_handler2, align 8, !dbg !5260
  br label %do.body, !dbg !5261

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5262
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, ptr %4, i32 0, i32 1, !dbg !5262
  call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef @.str.1, ptr noundef @ps2_init.__key) #10, !dbg !5262
  br label %do.end, !dbg !5262

do.end:                                           ; preds = %do.body
  br label %do.body3, !dbg !5264

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5265

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !5267

do.body5:                                         ; preds = %do.end4
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5268
  %wait = getelementptr inbounds %struct.ps2dev, ptr %5, i32 0, i32 2, !dbg !5268
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef @.str.3, ptr noundef @ps2_init.__key.2) #10, !dbg !5268
  br label %do.end6, !dbg !5268

do.end6:                                          ; preds = %do.body5
  %6 = load ptr, ptr %serio.addr, align 8, !dbg !5270
  %7 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5271
  %serio7 = getelementptr inbounds %struct.ps2dev, ptr %7, i32 0, i32 0, !dbg !5272
  store ptr %6, ptr %serio7, align 8, !dbg !5273
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !5274
  %9 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5275
  call void @serio_set_drvdata(ptr noundef %8, ptr noundef %9) #10, !dbg !5276
  ret void, !dbg !5277
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5278 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5282 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_set_drvdata(ptr noundef %serio, ptr noundef %data) #3 align 16 !dbg !5285 {
entry:
  %serio.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !5293
  %dev = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, !dbg !5294
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5295
  call void @dev_set_drvdata(ptr noundef %dev, ptr noundef %1) #10, !dbg !5296
  ret void, !dbg !5297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ps2_interrupt(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %flags) #0 align 16 !dbg !5298 {
entry:
  %serio.addr = alloca ptr, align 8
  %data.addr = alloca i8, align 1
  %flags.addr = alloca i32, align 4
  %ps2dev = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !5302, metadata !DIExpression()), !dbg !5307
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5303, metadata !DIExpression()), !dbg !5308
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5304, metadata !DIExpression()), !dbg !5309
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #9, !dbg !5310
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !5305, metadata !DIExpression()), !dbg !5311
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !5312
  %call = call ptr @serio_get_drvdata(ptr noundef %0) #10, !dbg !5313
  store ptr %call, ptr %ps2dev, align 8, !dbg !5311
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5306, metadata !DIExpression()), !dbg !5315
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !5316
  %pre_receive_handler = getelementptr inbounds %struct.ps2dev, ptr %1, i32 0, i32 7, !dbg !5317
  %2 = load ptr, ptr %pre_receive_handler, align 8, !dbg !5317
  %3 = load ptr, ptr %ps2dev, align 8, !dbg !5318
  %4 = load i8, ptr %data.addr, align 1, !dbg !5319
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5320
  %call1 = call i32 %2(ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) #10, !dbg !5316
  store i32 %call1, ptr %rc, align 4, !dbg !5321
  %6 = load i32, ptr %rc, align 4, !dbg !5322
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.epilog
    i32 0, label %sw.bb2
  ], !dbg !5323

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr %ps2dev, align 8, !dbg !5324
  call void @ps2_cleanup(ptr noundef %7) #10, !dbg !5326
  br label %sw.epilog, !dbg !5327

sw.bb2:                                           ; preds = %entry
  %8 = load ptr, ptr %ps2dev, align 8, !dbg !5328
  %flags3 = getelementptr inbounds %struct.ps2dev, ptr %8, i32 0, i32 3, !dbg !5330
  %9 = load i64, ptr %flags3, align 8, !dbg !5330
  %and = and i64 %9, 1, !dbg !5331
  %tobool = icmp ne i64 %and, 0, !dbg !5331
  br i1 %tobool, label %if.then, label %if.else, !dbg !5332

if.then:                                          ; preds = %sw.bb2
  %10 = load ptr, ptr %ps2dev, align 8, !dbg !5333
  %11 = load i8, ptr %data.addr, align 1, !dbg !5334
  call void @ps2_handle_ack(ptr noundef %10, i8 noundef zeroext %11) #10, !dbg !5335
  br label %if.end9, !dbg !5335

if.else:                                          ; preds = %sw.bb2
  %12 = load ptr, ptr %ps2dev, align 8, !dbg !5336
  %flags4 = getelementptr inbounds %struct.ps2dev, ptr %12, i32 0, i32 3, !dbg !5338
  %13 = load i64, ptr %flags4, align 8, !dbg !5338
  %and5 = and i64 %13, 2, !dbg !5339
  %tobool6 = icmp ne i64 %and5, 0, !dbg !5339
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !5340

if.then7:                                         ; preds = %if.else
  %14 = load ptr, ptr %ps2dev, align 8, !dbg !5341
  %15 = load i8, ptr %data.addr, align 1, !dbg !5342
  call void @ps2_handle_response(ptr noundef %14, i8 noundef zeroext %15) #10, !dbg !5343
  br label %if.end, !dbg !5343

if.else8:                                         ; preds = %if.else
  %16 = load ptr, ptr %ps2dev, align 8, !dbg !5344
  %receive_handler = getelementptr inbounds %struct.ps2dev, ptr %16, i32 0, i32 8, !dbg !5345
  %17 = load ptr, ptr %receive_handler, align 8, !dbg !5345
  %18 = load ptr, ptr %ps2dev, align 8, !dbg !5346
  %19 = load i8, ptr %data.addr, align 1, !dbg !5347
  call void %17(ptr noundef %18, i8 noundef zeroext %19) #10, !dbg !5344
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %sw.epilog, !dbg !5348

sw.epilog:                                        ; preds = %entry, %if.end9, %entry, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !5349
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #9, !dbg !5349
  ret i32 1, !dbg !5350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @serio_get_drvdata(ptr noundef %serio) #3 align 16 !dbg !5351 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !5357
  %dev = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, !dbg !5358
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #10, !dbg !5359
  ret ptr %call, !dbg !5360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ps2_cleanup(ptr noundef %ps2dev) #0 align 16 !dbg !5361 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %old_flags = alloca i64, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5363, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_flags) #9, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %old_flags, metadata !5364, metadata !DIExpression()), !dbg !5367
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5368
  %flags = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3, !dbg !5369
  %1 = load i64, ptr %flags, align 8, !dbg !5369
  store i64 %1, ptr %old_flags, align 8, !dbg !5367
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5370
  %flags1 = getelementptr inbounds %struct.ps2dev, ptr %2, i32 0, i32 3, !dbg !5371
  %3 = load i64, ptr %flags1, align 8, !dbg !5372
  %and = and i64 %3, 16, !dbg !5372
  store i64 %and, ptr %flags1, align 8, !dbg !5372
  %4 = load i64, ptr %old_flags, align 8, !dbg !5373
  %and2 = and i64 %4, 1, !dbg !5375
  %tobool = icmp ne i64 %and2, 0, !dbg !5375
  br i1 %tobool, label %if.then, label %if.end, !dbg !5376

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5377
  %nak = getelementptr inbounds %struct.ps2dev, ptr %5, i32 0, i32 6, !dbg !5378
  store i8 1, ptr %nak, align 1, !dbg !5379
  br label %if.end, !dbg !5377

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %old_flags, align 8, !dbg !5380
  %and3 = and i64 %6, 3, !dbg !5382
  %tobool4 = icmp ne i64 %and3, 0, !dbg !5382
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5383

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5384
  %wait = getelementptr inbounds %struct.ps2dev, ptr %7, i32 0, i32 2, !dbg !5384
  %call = call i32 @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10, !dbg !5384
  br label %if.end6, !dbg !5384

if.end6:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_flags) #9, !dbg !5385
  ret void, !dbg !5385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ps2_handle_ack(ptr noundef %ps2dev, i8 noundef zeroext %data) #0 align 16 !dbg !5386 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %data.addr = alloca i8, align 1
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5388, metadata !DIExpression()), !dbg !5390
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5389, metadata !DIExpression()), !dbg !5391
  %0 = load i8, ptr %data.addr, align 1, !dbg !5392
  %conv = zext i8 %0 to i32, !dbg !5392
  switch i32 %conv, label %sw.default [
    i32 250, label %sw.bb
    i32 254, label %sw.bb1
    i32 252, label %sw.bb3
    i32 0, label %sw.bb8
    i32 3, label %sw.bb8
    i32 4, label %sw.bb8
  ], !dbg !5393

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5394
  %nak = getelementptr inbounds %struct.ps2dev, ptr %1, i32 0, i32 6, !dbg !5396
  store i8 0, ptr %nak, align 1, !dbg !5397
  br label %sw.epilog, !dbg !5398

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5399
  %flags = getelementptr inbounds %struct.ps2dev, ptr %2, i32 0, i32 3, !dbg !5400
  %3 = load i64, ptr %flags, align 8, !dbg !5401
  %or = or i64 %3, 16, !dbg !5401
  store i64 %or, ptr %flags, align 8, !dbg !5401
  %4 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5402
  %nak2 = getelementptr inbounds %struct.ps2dev, ptr %4, i32 0, i32 6, !dbg !5403
  store i8 -2, ptr %nak2, align 1, !dbg !5404
  br label %sw.epilog, !dbg !5405

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5406
  %flags4 = getelementptr inbounds %struct.ps2dev, ptr %5, i32 0, i32 3, !dbg !5408
  %6 = load i64, ptr %flags4, align 8, !dbg !5408
  %and = and i64 %6, 16, !dbg !5409
  %tobool = icmp ne i64 %and, 0, !dbg !5409
  br i1 %tobool, label %if.then, label %if.end, !dbg !5410

if.then:                                          ; preds = %sw.bb3
  %7 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5411
  %flags5 = getelementptr inbounds %struct.ps2dev, ptr %7, i32 0, i32 3, !dbg !5413
  %8 = load i64, ptr %flags5, align 8, !dbg !5414
  %and6 = and i64 %8, -17, !dbg !5414
  store i64 %and6, ptr %flags5, align 8, !dbg !5414
  %9 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5415
  %nak7 = getelementptr inbounds %struct.ps2dev, ptr %9, i32 0, i32 6, !dbg !5416
  store i8 -4, ptr %nak7, align 1, !dbg !5417
  br label %sw.epilog, !dbg !5418

if.end:                                           ; preds = %sw.bb3
  br label %sw.bb8, !dbg !5419

sw.bb8:                                           ; preds = %entry, %entry, %entry, %if.end
  %10 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5420
  %flags9 = getelementptr inbounds %struct.ps2dev, ptr %10, i32 0, i32 3, !dbg !5422
  %11 = load i64, ptr %flags9, align 8, !dbg !5422
  %and10 = and i64 %11, 8, !dbg !5423
  %tobool11 = icmp ne i64 %and10, 0, !dbg !5423
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5424

if.then12:                                        ; preds = %sw.bb8
  %12 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5425
  %nak13 = getelementptr inbounds %struct.ps2dev, ptr %12, i32 0, i32 6, !dbg !5427
  store i8 0, ptr %nak13, align 1, !dbg !5428
  br label %sw.epilog, !dbg !5429

if.end14:                                         ; preds = %sw.bb8
  br label %sw.default, !dbg !5430

sw.default:                                       ; preds = %entry, %if.end14
  %13 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5431
  %flags15 = getelementptr inbounds %struct.ps2dev, ptr %13, i32 0, i32 3, !dbg !5433
  %14 = load i64, ptr %flags15, align 8, !dbg !5433
  %and16 = and i64 %14, 32, !dbg !5434
  %tobool17 = icmp ne i64 %and16, 0, !dbg !5434
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5435

if.then18:                                        ; preds = %sw.default
  %15 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5436
  %receive_handler = getelementptr inbounds %struct.ps2dev, ptr %15, i32 0, i32 8, !dbg !5437
  %16 = load ptr, ptr %receive_handler, align 8, !dbg !5437
  %17 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5438
  %18 = load i8, ptr %data.addr, align 1, !dbg !5439
  call void %16(ptr noundef %17, i8 noundef zeroext %18) #10, !dbg !5436
  br label %if.end19, !dbg !5436

if.end19:                                         ; preds = %if.then18, %sw.default
  %19 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5440
  %flags20 = getelementptr inbounds %struct.ps2dev, ptr %19, i32 0, i32 3, !dbg !5441
  %20 = load i64, ptr %flags20, align 8, !dbg !5442
  %and21 = and i64 %20, -41, !dbg !5442
  store i64 %and21, ptr %flags20, align 8, !dbg !5442
  br label %if.end35, !dbg !5443

sw.epilog:                                        ; preds = %if.then12, %if.then, %sw.bb1, %sw.bb
  %21 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5444
  %nak22 = getelementptr inbounds %struct.ps2dev, ptr %21, i32 0, i32 6, !dbg !5446
  %22 = load i8, ptr %nak22, align 1, !dbg !5446
  %tobool23 = icmp ne i8 %22, 0, !dbg !5444
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !5447

if.then24:                                        ; preds = %sw.epilog
  %23 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5448
  %flags25 = getelementptr inbounds %struct.ps2dev, ptr %23, i32 0, i32 3, !dbg !5449
  %24 = load i64, ptr %flags25, align 8, !dbg !5450
  %and26 = and i64 %24, -17, !dbg !5450
  store i64 %and26, ptr %flags25, align 8, !dbg !5450
  br label %if.end27, !dbg !5448

if.end27:                                         ; preds = %if.then24, %sw.epilog
  %25 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5451
  %flags28 = getelementptr inbounds %struct.ps2dev, ptr %25, i32 0, i32 3, !dbg !5452
  %26 = load i64, ptr %flags28, align 8, !dbg !5453
  %and29 = and i64 %26, -2, !dbg !5453
  store i64 %and29, ptr %flags28, align 8, !dbg !5453
  %27 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5454
  %nak30 = getelementptr inbounds %struct.ps2dev, ptr %27, i32 0, i32 6, !dbg !5456
  %28 = load i8, ptr %nak30, align 1, !dbg !5456
  %tobool31 = icmp ne i8 %28, 0, !dbg !5454
  br i1 %tobool31, label %if.else, label %land.lhs.true, !dbg !5457

land.lhs.true:                                    ; preds = %if.end27
  %29 = load i8, ptr %data.addr, align 1, !dbg !5458
  %conv32 = zext i8 %29 to i32, !dbg !5458
  %cmp = icmp ne i32 %conv32, 250, !dbg !5459
  br i1 %cmp, label %if.then34, label %if.else, !dbg !5460

if.then34:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5461
  %31 = load i8, ptr %data.addr, align 1, !dbg !5462
  call void @ps2_handle_response(ptr noundef %30, i8 noundef zeroext %31) #10, !dbg !5463
  br label %if.end35, !dbg !5463

if.else:                                          ; preds = %land.lhs.true, %if.end27
  %32 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5464
  %wait = getelementptr inbounds %struct.ps2dev, ptr %32, i32 0, i32 2, !dbg !5464
  %call = call i32 @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10, !dbg !5464
  br label %if.end35

if.end35:                                         ; preds = %if.end19, %if.else, %if.then34
  ret void, !dbg !5465
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ps2_handle_response(ptr noundef %ps2dev, i8 noundef zeroext %data) #0 align 16 !dbg !5466 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %data.addr = alloca i8, align 1
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5468, metadata !DIExpression()), !dbg !5470
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5469, metadata !DIExpression()), !dbg !5471
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5472
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5, !dbg !5474
  %1 = load i8, ptr %cmdcnt, align 8, !dbg !5474
  %tobool = icmp ne i8 %1, 0, !dbg !5472
  br i1 %tobool, label %if.then, label %if.end, !dbg !5475

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %data.addr, align 1, !dbg !5476
  %3 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5477
  %cmdbuf = getelementptr inbounds %struct.ps2dev, ptr %3, i32 0, i32 4, !dbg !5478
  %4 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5479
  %cmdcnt1 = getelementptr inbounds %struct.ps2dev, ptr %4, i32 0, i32 5, !dbg !5480
  %5 = load i8, ptr %cmdcnt1, align 8, !dbg !5481
  %dec = add i8 %5, -1, !dbg !5481
  store i8 %dec, ptr %cmdcnt1, align 8, !dbg !5481
  %idxprom = zext i8 %dec to i64, !dbg !5477
  %arrayidx = getelementptr [8 x i8], ptr %cmdbuf, i64 0, i64 %idxprom, !dbg !5477
  store i8 %2, ptr %arrayidx, align 1, !dbg !5482
  br label %if.end, !dbg !5477

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5483
  %flags = getelementptr inbounds %struct.ps2dev, ptr %6, i32 0, i32 3, !dbg !5485
  %7 = load i64, ptr %flags, align 8, !dbg !5485
  %and = and i64 %7, 4, !dbg !5486
  %tobool2 = icmp ne i64 %and, 0, !dbg !5486
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !5487

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5488
  %flags4 = getelementptr inbounds %struct.ps2dev, ptr %8, i32 0, i32 3, !dbg !5490
  %9 = load i64, ptr %flags4, align 8, !dbg !5491
  %and5 = and i64 %9, -5, !dbg !5491
  store i64 %and5, ptr %flags4, align 8, !dbg !5491
  %10 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5492
  %cmdcnt6 = getelementptr inbounds %struct.ps2dev, ptr %10, i32 0, i32 5, !dbg !5494
  %11 = load i8, ptr %cmdcnt6, align 8, !dbg !5494
  %tobool7 = icmp ne i8 %11, 0, !dbg !5492
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5495

if.then8:                                         ; preds = %if.then3
  %12 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5496
  %wait = getelementptr inbounds %struct.ps2dev, ptr %12, i32 0, i32 2, !dbg !5496
  %call = call i32 @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10, !dbg !5496
  br label %if.end9, !dbg !5496

if.end9:                                          ; preds = %if.then8, %if.then3
  br label %if.end10, !dbg !5497

if.end10:                                         ; preds = %if.end9, %if.end
  %13 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5498
  %cmdcnt11 = getelementptr inbounds %struct.ps2dev, ptr %13, i32 0, i32 5, !dbg !5500
  %14 = load i8, ptr %cmdcnt11, align 8, !dbg !5500
  %tobool12 = icmp ne i8 %14, 0, !dbg !5498
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !5501

if.then13:                                        ; preds = %if.end10
  %15 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5502
  %flags14 = getelementptr inbounds %struct.ps2dev, ptr %15, i32 0, i32 3, !dbg !5504
  %16 = load i64, ptr %flags14, align 8, !dbg !5505
  %and15 = and i64 %16, -3, !dbg !5505
  store i64 %and15, ptr %flags14, align 8, !dbg !5505
  %17 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5506
  %wait16 = getelementptr inbounds %struct.ps2dev, ptr %17, i32 0, i32 2, !dbg !5506
  %call17 = call i32 @__wake_up(ptr noundef %wait16, i32 noundef 3, i32 noundef 1, ptr noundef null) #10, !dbg !5506
  br label %if.end18, !dbg !5507

if.end18:                                         ; preds = %if.then13, %if.end10
  ret void, !dbg !5508
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !5509 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5517
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5517
  call void @_raw_spin_lock_irq(ptr noundef %1) #10, !dbg !5517
  ret void, !dbg !5518
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5519 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_write(ptr noundef %serio, i8 noundef zeroext %data) #3 align 16 !dbg !5524 {
entry:
  %retval = alloca i32, align 4
  %serio.addr = alloca ptr, align 8
  %data.addr = alloca i8, align 1
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !5526, metadata !DIExpression()), !dbg !5528
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5527, metadata !DIExpression()), !dbg !5529
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !5530
  %write = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 7, !dbg !5532
  %1 = load ptr, ptr %write, align 8, !dbg !5532
  %tobool = icmp ne ptr %1, null, !dbg !5530
  br i1 %tobool, label %if.then, label %if.else, !dbg !5533

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !5534
  %write1 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 7, !dbg !5535
  %3 = load ptr, ptr %write1, align 8, !dbg !5535
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !5536
  %5 = load i8, ptr %data.addr, align 1, !dbg !5537
  %call = call i32 %3(ptr noundef %4, i8 noundef zeroext %5) #10, !dbg !5534
  store i32 %call, ptr %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.else:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5539
  br label %return, !dbg !5539

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !5540
  ret i32 %6, !dbg !5540
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !5541 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5545
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5545
  call void @_raw_spin_unlock_irq(ptr noundef %1) #10, !dbg !5545
  ret void, !dbg !5546
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5547 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #3 align 16 !dbg !5548 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  %0 = load i32, ptr %m.addr, align 4, !dbg !5552
  %conv = zext i32 %0 to i64, !dbg !5552
  %add = add i64 %conv, 1, !dbg !5553
  %sub = sub i64 %add, 1, !dbg !5554
  %div = sdiv i64 %sub, 1, !dbg !5555
  ret i64 %div, !dbg !5556
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5557 dso_local i64 @__msecs_to_jiffies(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #3 align 16 !dbg !5558 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5566
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5567
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !5568
  store ptr %0, ptr %driver_data, align 8, !dbg !5569
  ret void, !dbg !5570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #3 align 16 !dbg !5571 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5577
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !5578
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5578
  ret ptr %1, !dbg !5579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5580 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425}
!llvm.ident = !{!4426}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_sendbyte267", scope: !2, file: !3, line: 120, type: !130, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/serio/.libps2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/serio/libps2\22 -D KBUILD_BASENAME=\22libps2\22 -D KBUILD_MODNAME=\22libps2\22 -D __KBUILD_MODNAME=kmod_libps2 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/serio/libps2.ll drivers/input/serio/libps2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !129, globals: !132, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/serio/libps2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26976e575cadcb9f62f2395f5ee28322")
!4 = !{!5, !12, !18, !26, !33, !38, !44, !49, !55, !62, !69, !76, !84, !92, !101, !106, !111, !117, !123}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !13, line: 26, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !27, line: 312, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!30 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!31 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!32 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !34, line: 2052, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!37 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !39, line: 54, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "USRQUOTA", value: 0)
!42 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!43 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !45, line: 65, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!48 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !50, line: 16, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "TT_NONE", value: 0)
!53 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!54 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !56, line: 15, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!59 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!60 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!61 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !63, line: 51, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!66 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!67 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!68 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !118, line: 45, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!121 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!122 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ps2_disposition", file: !124, line: 24, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81c7f532c535ab7e59f124f9e08a3713")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "PS2_PROCESS", value: 0)
!127 = !DIEnumerator(name: "PS2_IGNORE", value: 1)
!128 = !DIEnumerator(name: "PS2_ERROR", value: 2)
!129 = !{!130, !85, !131}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!132 = !{!0, !133, !135, !137, !143, !145, !164, !166, !168, !170, !172, !4383, !4388, !4390, !4395, !4397, !4399, !4404, !4409, !4411, !4414}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_begin_command268", scope: !2, file: !3, line: 135, type: !130, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_end_command269", scope: !2, file: !3, line: 147, type: !130, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 232, elements: !141)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{!142}
!142 = !DISubrange(count: 29)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_drain270", scope: !2, file: !3, line: 176, type: !130, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "keyboard_ids", scope: !147, file: !3, line: 185, type: !160, isLocal: true, isDefinition: true)
!147 = distinct !DISubprogram(name: "ps2_is_keyboard_id", scope: !3, file: !3, line: 183, type: !148, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !153}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !151, line: 35, baseType: !152)
!151 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !154, line: 17, baseType: !155)
!154 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !156, line: 21, baseType: !157)
!156 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !{!159}
!159 = !DILocalVariable(name: "id_byte", arg: 1, scope: !147, file: !3, line: 183, type: !153)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 48, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!162 = !{!163}
!163 = !DISubrange(count: 6)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_is_keyboard_id271", scope: !2, file: !3, line: 196, type: !130, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ps2_command272", scope: !2, file: !3, line: 385, type: !130, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_command273", scope: !2, file: !3, line: 411, type: !130, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_sliced_command274", scope: !2, file: !3, line: 446, type: !130, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__key", scope: !174, file: !3, line: 464, type: !1531, isLocal: true, isDefinition: true)
!174 = distinct !DISubprogram(name: "ps2_init", scope: !3, file: !3, line: 457, type: !175, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4378)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !181, !4369, !4374}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !124, line: 48, size: 832, elements: !179)
!179 = !{!180, !4361, !4362, !4363, !4364, !4366, !4367, !4368, !4373}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !178, file: !124, line: 49, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !183, line: 21, size: 8768, elements: !184)
!183 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!184 = !{!185, !186, !190, !191, !195, !196, !204, !242, !246, !250, !254, !255, !256, !257, !263, !264, !265, !4356, !4357, !4358, !4359}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !182, file: !183, line: 22, baseType: !130, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 24, baseType: !187, size: 256, offset: 64)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !182, file: !183, line: 25, baseType: !187, size: 256, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !182, file: !183, line: 26, baseType: !192, size: 1024, offset: 576)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !182, file: !183, line: 28, baseType: !150, size: 8, offset: 1600)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !182, file: !183, line: 30, baseType: !197, size: 32, offset: 1608)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !198, line: 256, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!199 = !{!200, !201, !202, !203}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !197, file: !198, line: 257, baseType: !155, size: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !197, file: !198, line: 258, baseType: !155, size: 8, offset: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !197, file: !198, line: 259, baseType: !155, size: 8, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !197, file: !198, line: 260, baseType: !155, size: 8, offset: 24)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !182, file: !183, line: 33, baseType: !205, size: 32, offset: 1664)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !206, line: 29, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !206, line: 17, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 18, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 18, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !210, file: !206, line: 19, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !214, line: 14, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !213, file: !214, line: 15, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !218, line: 44, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !218, line: 14, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !218, line: 15, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !218, line: 15, size: 32, elements: !223)
!223 = !{!224, !229, !234}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !222, file: !218, line: 16, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !151, line: 174, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 172, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !226, file: !151, line: 173, baseType: !85, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 24, baseType: !230, size: 16)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 24, size: 16, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !230, file: !218, line: 25, baseType: !153, size: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !230, file: !218, line: 26, baseType: !153, size: 8, offset: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 28, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 28, size: 32, elements: !236)
!236 = !{!237, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !235, file: !218, line: 29, baseType: !238, size: 16)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !154, line: 19, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !156, line: 24, baseType: !240)
!240 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !235, file: !218, line: 30, baseType: !238, size: 16, offset: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !182, file: !183, line: 35, baseType: !243, size: 64, offset: 1728)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!85, !181, !157}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !182, file: !183, line: 36, baseType: !247, size: 64, offset: 1792)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!85, !181}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !182, file: !183, line: 37, baseType: !251, size: 64, offset: 1856)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !181}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !182, file: !183, line: 38, baseType: !247, size: 64, offset: 1920)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !182, file: !183, line: 39, baseType: !251, size: 64, offset: 1984)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !183, line: 41, baseType: !181, size: 64, offset: 2048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !182, file: !183, line: 43, baseType: !258, size: 128, offset: 2112)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !151, line: 190, size: 128, elements: !259)
!259 = !{!260, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !151, line: 191, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !151, line: 191, baseType: !261, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !182, file: !183, line: 44, baseType: !258, size: 128, offset: 2240)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !182, file: !183, line: 46, baseType: !7, size: 32, offset: 2368)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !182, file: !183, line: 52, baseType: !266, size: 64, offset: 2432)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !183, line: 68, size: 1792, elements: !268)
!268 = !{!269, !272, !275, !276, !277, !282, !286, !287, !288, !289, !290}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !267, file: !183, line: 69, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !267, file: !183, line: 71, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !267, file: !183, line: 72, baseType: !150, size: 8, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !267, file: !183, line: 74, baseType: !251, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !267, file: !183, line: 75, baseType: !278, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !181, !157, !7}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !267, file: !183, line: 76, baseType: !283, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!85, !181, !266}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !267, file: !183, line: 77, baseType: !247, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !267, file: !183, line: 78, baseType: !247, size: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !267, file: !183, line: 79, baseType: !251, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !267, file: !183, line: 80, baseType: !251, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !267, file: !183, line: 82, baseType: !291, size: 1152, offset: 640)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !118, line: 96, size: 1152, elements: !292)
!292 = !{!293, !294, !4320, !4321, !4322, !4323, !4324, !4333, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !118, line: 97, baseType: !270, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !291, file: !118, line: 98, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !298, line: 80, size: 1344, elements: !299)
!298 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!299 = !{!300, !301, !302, !4008, !4009, !4010, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4310, !4311, !4312, !4313, !4314, !4315, !4319}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !298, line: 81, baseType: !270, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !297, file: !298, line: 82, baseType: !270, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !297, file: !298, line: 83, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !307, line: 84, size: 320, elements: !308)
!307 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!308 = !{!309, !310, !3981, !4004, !4006}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 85, baseType: !270, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !306, file: !307, line: 86, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !315, !391, !85}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !151, line: 24, baseType: !240)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !317, line: 64, size: 512, elements: !318)
!317 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!318 = !{!319, !320, !321, !322, !369, !461, !3971, !3976, !3977, !3978, !3979, !3980}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !317, line: 65, baseType: !270, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !316, file: !317, line: 66, baseType: !258, size: 128, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !316, file: !317, line: 67, baseType: !315, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !316, file: !317, line: 68, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !317, line: 168, size: 768, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !324, file: !317, line: 169, baseType: !258, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !324, file: !317, line: 170, baseType: !205, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !324, file: !317, line: 171, baseType: !316, size: 512, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !324, file: !317, line: 172, baseType: !330, size: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !317, line: 133, size: 192, elements: !333)
!333 = !{!334, !341, !346}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !332, file: !317, line: 134, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!85, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !317, line: 135, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!270, !339}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !332, file: !317, line: 136, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!85, !339, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !317, line: 125, size: 20736, elements: !353)
!353 = !{!354, !359, !363, !364, !368}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !352, file: !317, line: 126, baseType: !355, size: 192)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 192, elements: !357)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!357 = !{!358}
!358 = !DISubrange(count: 3)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !352, file: !317, line: 127, baseType: !360, size: 4096, offset: 192)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 4096, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !352, file: !317, line: 128, baseType: !85, size: 32, offset: 4288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !352, file: !317, line: 129, baseType: !365, size: 16384, offset: 4320)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 16384, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 2048)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !352, file: !317, line: 130, baseType: !85, size: 32, offset: 20704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !316, file: !317, line: 69, baseType: !370, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !317, line: 116, size: 384, elements: !373)
!373 = !{!374, !378, !404, !405, !438, !442}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !372, file: !317, line: 117, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !315}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !372, file: !317, line: 118, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !307, line: 254, size: 128, elements: !382)
!382 = !{!383, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !381, file: !307, line: 255, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !315, !391, !356}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !151, line: 66, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !389, line: 73, baseType: !390)
!389 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !389, line: 15, baseType: !131)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !307, line: 30, size: 128, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !307, line: 31, baseType: !270, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !392, file: !307, line: 32, baseType: !314, size: 16, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !381, file: !307, line: 256, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!387, !315, !391, !270, !400}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 61, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !389, line: 72, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !389, line: 16, baseType: !403)
!403 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !372, file: !317, line: 119, baseType: !303, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !372, file: !317, line: 120, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !339}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !13, line: 39, size: 384, elements: !412)
!412 = !{!413, !414, !418, !422, !430, !434}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !13, line: 40, baseType: !12, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !411, file: !13, line: 41, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!150}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !411, file: !13, line: 42, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!130}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !411, file: !13, line: 43, baseType: !423, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !13, line: 19, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !411, file: !13, line: 44, baseType: !431, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!426}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !411, file: !13, line: 45, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !130}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !372, file: !317, line: 121, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!426, !339}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !372, file: !317, line: 122, baseType: !443, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !339, !446, !454}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !448, line: 23, baseType: !449)
!448 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 21, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !448, line: 22, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !151, line: 37, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !389, line: 49, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !448, line: 28, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 26, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !456, file: !448, line: 27, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !151, line: 38, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !389, line: 50, baseType: !7)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !316, file: !317, line: 70, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !464, line: 190, size: 1152, elements: !465)
!464 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!465 = !{!466, !467, !468, !469, !470, !478, !479, !480, !3963, !3964, !3965, !3966, !3967, !3970}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !464, line: 191, baseType: !225, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !463, file: !464, line: 192, baseType: !225, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !463, file: !464, line: 202, baseType: !462, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !464, line: 203, baseType: !270, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !463, file: !464, line: 205, baseType: !471, size: 192, align: 64, offset: 192)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !472, line: 5, size: 192, align: 64, elements: !473)
!472 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!473 = !{!474, !475, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !471, file: !472, line: 6, baseType: !403, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !471, file: !472, line: 7, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !471, file: !472, line: 8, baseType: !476, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !463, file: !464, line: 207, baseType: !426, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !463, file: !464, line: 208, baseType: !7, size: 32, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !464, line: 209, baseType: !481, size: 256, offset: 512)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !464, line: 209, size: 256, elements: !482)
!482 = !{!483, !495, !499}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !481, file: !464, line: 210, baseType: !484, size: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !464, line: 153, size: 256, elements: !485)
!485 = !{!486, !487, !491, !494}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !484, file: !464, line: 154, baseType: !403, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !484, file: !464, line: 156, baseType: !488, size: 64, offset: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !472, line: 12, size: 64, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !488, file: !472, line: 13, baseType: !476, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !484, file: !464, line: 162, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !464, line: 162, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !484, file: !464, line: 167, baseType: !403, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !481, file: !464, line: 211, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !464, line: 170, size: 64, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !496, file: !464, line: 171, baseType: !462, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !481, file: !464, line: 212, baseType: !500, size: 256)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !464, line: 174, size: 256, elements: !501)
!501 = !{!502, !3958, !3961, !3962}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !500, file: !464, line: 175, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !464, line: 271, size: 768, elements: !506)
!506 = !{!507, !3923, !3927, !3931, !3935, !3939, !3943, !3947, !3948, !3949, !3950, !3954}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !505, file: !464, line: 276, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!85, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !464, line: 251, size: 1216, elements: !513)
!513 = !{!514, !515, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !512, file: !464, line: 253, baseType: !462, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !512, file: !464, line: 254, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !34, line: 994, size: 1856, align: 64, elements: !518)
!518 = !{!519, !538, !539, !541, !551, !564, !567, !568, !640, !846, !855, !3902, !3903, !3904, !3905, !3906, !3907, !3909, !3910, !3911}
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !34, line: 995, baseType: !520, size: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !34, line: 995, size: 128, elements: !521)
!521 = !{!522, !528, !537}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !520, file: !34, line: 996, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !524, line: 60, size: 64, elements: !525)
!524 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !524, line: 61, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !520, file: !34, line: 997, baseType: !529, size: 128, align: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !151, line: 232, size: 128, align: 64, elements: !530)
!530 = !{!531, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !151, line: 233, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !529, file: !151, line: 234, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !532}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !520, file: !34, line: 998, baseType: !7, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !517, file: !34, line: 1005, baseType: !205, size: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !517, file: !34, line: 1006, baseType: !540, size: 32, offset: 160)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !151, line: 156, baseType: !7)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !517, file: !34, line: 1007, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !543, line: 13, baseType: !544)
!543 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !151, line: 181, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 179, size: 64, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !545, file: !151, line: 180, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !154, line: 22, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !156, line: 30, baseType: !550)
!550 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !517, file: !34, line: 1008, baseType: !552, size: 256, offset: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !553, line: 66, size: 256, elements: !554)
!553 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!554 = !{!555, !556, !558, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !552, file: !553, line: 67, baseType: !542, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !552, file: !553, line: 68, baseType: !557, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !214, line: 23, baseType: !213)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !552, file: !553, line: 70, baseType: !559, size: 32, offset: 96)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !560, line: 15, size: 32, elements: !561)
!560 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !559, file: !560, line: 20, baseType: !225, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !552, file: !553, line: 72, baseType: !258, size: 128, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !517, file: !34, line: 1009, baseType: !565, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !151, line: 52, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !389, line: 88, baseType: !550)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !517, file: !34, line: 1010, baseType: !7, size: 32, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !517, file: !34, line: 1011, baseType: !569, size: 256, offset: 640)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !34, line: 948, size: 256, elements: !570)
!570 = !{!571, !592, !636, !637, !638, !639}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !34, line: 949, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !573, line: 34, baseType: !574)
!573 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 25, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !574, file: !573, line: 26, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !578, line: 27, baseType: !579)
!578 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !578, line: 13, size: 64, elements: !580)
!580 = !{!581, !591}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !578, line: 14, baseType: !582, size: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !578, line: 14, size: 32, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !582, file: !578, line: 15, baseType: !225, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !578, line: 16, baseType: !586, size: 32)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !578, line: 16, size: 32, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !586, file: !578, line: 18, baseType: !153, size: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !586, file: !578, line: 19, baseType: !590, size: 24, offset: 8)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 24, elements: !357)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !579, file: !578, line: 26, baseType: !217, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !569, file: !34, line: 950, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !595)
!595 = !{!596, !602, !603, !604, !617, !618, !625, !626}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !594, file: !19, line: 61, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !598, line: 113, baseType: !599)
!598 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !598, line: 111, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !599, file: !598, line: 112, baseType: !225, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !594, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !594, file: !19, line: 63, baseType: !205, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !594, file: !19, line: 65, baseType: !605, size: 256, offset: 128)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 256, elements: !615)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !151, line: 194, size: 64, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !606, file: !151, line: 195, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !151, line: 198, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !151, line: 199, baseType: !609, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !610, file: !151, line: 199, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!615 = !{!616}
!616 = !DISubrange(count: 4)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !594, file: !19, line: 66, baseType: !606, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !594, file: !19, line: 68, baseType: !619, size: 192, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !620, line: 41, baseType: !621)
!620 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !620, line: 37, size: 192, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !621, file: !620, line: 38, baseType: !205, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !621, file: !620, line: 39, baseType: !258, size: 128, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !594, file: !19, line: 69, baseType: !529, size: 128, align: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !594, file: !19, line: 70, baseType: !627, offset: 768)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, elements: !634)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !628, file: !19, line: 55, baseType: !85, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !628, file: !19, line: 56, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!634 = !{!635}
!635 = !DISubrange(count: -1)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !569, file: !34, line: 951, baseType: !18, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !569, file: !34, line: 952, baseType: !447, size: 32, offset: 160)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !569, file: !34, line: 952, baseType: !447, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !569, file: !34, line: 953, baseType: !85, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !517, file: !34, line: 1012, baseType: !641, size: 64, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !644, line: 110, size: 1472, elements: !645)
!644 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !665, !666, !667, !668, !669, !670, !791, !792, !793, !794, !795, !826, !829, !833, !841}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !643, file: !644, line: 111, baseType: !542, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !643, file: !644, line: 112, baseType: !447, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !643, file: !644, line: 113, baseType: !455, size: 32, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !643, file: !644, line: 114, baseType: !447, size: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !643, file: !644, line: 115, baseType: !455, size: 32, offset: 160)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !643, file: !644, line: 116, baseType: !447, size: 32, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !643, file: !644, line: 117, baseType: !455, size: 32, offset: 224)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !643, file: !644, line: 118, baseType: !447, size: 32, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !643, file: !644, line: 119, baseType: !455, size: 32, offset: 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !643, file: !644, line: 120, baseType: !7, size: 32, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !643, file: !644, line: 121, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !658, line: 24, baseType: !659)
!658 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 24, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !659, file: !658, line: 24, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !154, line: 23, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !156, line: 31, baseType: !664)
!664 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !643, file: !644, line: 122, baseType: !657, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !643, file: !644, line: 123, baseType: !657, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !643, file: !644, line: 124, baseType: !657, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !643, file: !644, line: 125, baseType: !657, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !643, file: !644, line: 127, baseType: !157, size: 8, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !643, file: !644, line: 129, baseType: !671, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !673, line: 195, size: 1728, elements: !674)
!673 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!674 = !{!675, !676, !681, !686, !695, !698, !699, !706, !707, !708, !709, !714, !715, !716, !718, !719, !755, !776}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !672, file: !673, line: 196, baseType: !597, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !672, file: !673, line: 197, baseType: !677, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !673, line: 28, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !151, line: 104, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !154, line: 20, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !156, line: 26, baseType: !85)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 198, baseType: !682, size: 192, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 198, size: 192, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !682, file: !673, line: 199, baseType: !258, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !682, file: !673, line: 200, baseType: !471, size: 192, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !672, file: !673, line: 205, baseType: !687, size: 320, offset: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !688, line: 48, size: 320, elements: !689)
!688 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!689 = !{!690, !691, !692, !693, !694}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !687, file: !688, line: 49, baseType: !542, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !687, file: !688, line: 55, baseType: !542, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !687, file: !688, line: 57, baseType: !559, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !687, file: !688, line: 59, baseType: !557, size: 32, offset: 160)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !687, file: !688, line: 60, baseType: !258, size: 128, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !672, file: !673, line: 206, baseType: !696, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !673, line: 206, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !672, file: !673, line: 207, baseType: !130, size: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 208, baseType: !700, size: 64, offset: 704)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 208, size: 64, elements: !701)
!701 = !{!702, !705}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !700, file: !673, line: 209, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !704, line: 8, baseType: !549)
!704 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!705 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !700, file: !673, line: 210, baseType: !703, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !672, file: !673, line: 212, baseType: !703, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !672, file: !673, line: 213, baseType: !447, size: 32, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !672, file: !673, line: 214, baseType: !455, size: 32, offset: 864)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !672, file: !673, line: 215, baseType: !710, size: 32, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !673, line: 31, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !151, line: 110, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !154, line: 21, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !156, line: 27, baseType: !7)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !672, file: !673, line: 216, baseType: !240, size: 16, offset: 928)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !672, file: !673, line: 217, baseType: !240, size: 16, offset: 944)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !672, file: !673, line: 221, baseType: !717, size: 16, offset: 960)
!717 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !673, line: 228, baseType: !403, size: 64, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 245, baseType: !720, size: 320, offset: 1088)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 245, size: 320, elements: !721)
!721 = !{!722, !747}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !720, file: !673, line: 246, baseType: !723, size: 320)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !673, line: 114, size: 320, elements: !724)
!724 = !{!725, !726, !736, !739, !746}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !723, file: !673, line: 116, baseType: !403, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !673, line: 117, baseType: !727, size: 64, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !673, line: 117, size: 64, elements: !728)
!728 = !{!729, !735}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !673, line: 118, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !673, line: 118, size: 64, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !730, file: !673, line: 120, baseType: !238, size: 16)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !730, file: !673, line: 121, baseType: !734, size: 48, offset: 16)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 48, elements: !162)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !727, file: !673, line: 127, baseType: !403, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !673, line: 129, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !673, line: 102, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !723, file: !673, line: 130, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !673, line: 108, size: 192, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !741, file: !673, line: 109, baseType: !529, size: 128, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !741, file: !673, line: 110, baseType: !597, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !741, file: !673, line: 111, baseType: !150, size: 8, offset: 160)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !723, file: !673, line: 131, baseType: !270, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !673, line: 247, baseType: !748, size: 320)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !673, line: 247, size: 320, elements: !749)
!749 = !{!750, !751, !752, !753, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !748, file: !673, line: 248, baseType: !403, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !748, file: !673, line: 249, baseType: !403, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !673, line: 250, baseType: !737, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !748, file: !673, line: 251, baseType: !740, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !748, file: !673, line: 252, baseType: !356, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 260, baseType: !756, size: 256, offset: 1408)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 260, size: 256, elements: !757)
!757 = !{!758, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !756, file: !673, line: 261, baseType: !759, size: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !673, line: 134, size: 256, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !759, file: !673, line: 135, baseType: !130, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !759, file: !673, line: 136, baseType: !763, size: 256)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !615)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !673, line: 262, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !673, line: 262, size: 256, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !765, file: !673, line: 264, baseType: !258, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !765, file: !673, line: 265, baseType: !769, size: 128, offset: 128)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !770, line: 22, size: 128, elements: !771)
!770 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!771 = !{!772, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !769, file: !770, line: 23, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !770, line: 23, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !769, file: !770, line: 24, baseType: !403, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !672, file: !673, line: 280, baseType: !777, size: 64, offset: 1664)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !673, line: 176, size: 192, elements: !779)
!779 = !{!780, !789, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !778, file: !673, line: 177, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !673, line: 171, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!85, !671, !785, !787, !671}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !778, file: !673, line: 178, baseType: !671, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !778, file: !673, line: 179, baseType: !737, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !643, file: !644, line: 130, baseType: !671, size: 64, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !643, file: !644, line: 131, baseType: !671, size: 64, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !643, file: !644, line: 132, baseType: !671, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !643, file: !644, line: 135, baseType: !130, size: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !643, file: !644, line: 137, baseType: !796, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !798, line: 14, size: 1088, elements: !799)
!798 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!799 = !{!800, !801, !810, !811, !812, !813, !814, !815}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !797, file: !798, line: 15, baseType: !597, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !797, file: !798, line: 17, baseType: !802, size: 320, offset: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !803, line: 22, size: 320, elements: !804)
!803 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!804 = !{!805, !806, !807, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !803, line: 23, baseType: !557, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !802, file: !803, line: 24, baseType: !548, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !802, file: !803, line: 26, baseType: !258, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !802, file: !803, line: 28, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !797, file: !798, line: 19, baseType: !403, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !797, file: !798, line: 20, baseType: !542, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !797, file: !798, line: 23, baseType: !610, size: 128, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !797, file: !798, line: 24, baseType: !447, size: 32, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !797, file: !798, line: 29, baseType: !542, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !797, file: !798, line: 36, baseType: !816, size: 320, offset: 768)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !817, line: 15, size: 320, elements: !818)
!817 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!818 = !{!819, !820, !821, !822, !823, !824, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !817, line: 16, baseType: !557, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !816, file: !817, line: 18, baseType: !85, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !816, file: !817, line: 19, baseType: !85, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !816, file: !817, line: 20, baseType: !85, size: 32, offset: 96)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !816, file: !817, line: 21, baseType: !85, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !816, file: !817, line: 22, baseType: !403, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !817, line: 23, baseType: !403, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !643, file: !644, line: 138, baseType: !827, size: 64, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !448, line: 18, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !643, file: !644, line: 139, baseType: !830, size: 64, offset: 1216)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !832, line: 16, flags: DIFlagFwdDecl)
!832 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !643, file: !644, line: 140, baseType: !834, size: 64, offset: 1280)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !644, line: 25, size: 64, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !835, file: !644, line: 26, baseType: !225, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !835, file: !644, line: 27, baseType: !85, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !835, file: !644, line: 28, baseType: !840, offset: 64)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, elements: !634)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !644, line: 142, baseType: !842, size: 128, offset: 1344)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !644, line: 142, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !842, file: !644, line: 143, baseType: !85, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !842, file: !644, line: 144, baseType: !529, size: 128, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !517, file: !34, line: 1013, baseType: !847, size: 256, offset: 960)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !34, line: 970, size: 256, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !847, file: !34, line: 971, baseType: !403, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !847, file: !34, line: 972, baseType: !7, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !847, file: !34, line: 973, baseType: !7, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !847, file: !34, line: 974, baseType: !7, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !847, file: !34, line: 975, baseType: !7, size: 32, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !847, file: !34, line: 976, baseType: !565, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !517, file: !34, line: 1014, baseType: !856, size: 128, offset: 1216)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !857, line: 8, size: 128, elements: !858)
!857 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!858 = !{!859, !3901}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !856, file: !857, line: 9, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !862, line: 70, size: 256, elements: !863)
!862 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!863 = !{!864, !3898, !3899, !3900}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !861, file: !862, line: 71, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !867, line: 82, size: 1536, elements: !868)
!867 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!868 = !{!869, !870, !880, !888, !889, !904, !3865, !3867, !3880, !3881, !3882, !3883, !3884, !3890, !3891, !3892}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !866, file: !867, line: 84, baseType: !7, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !866, file: !867, line: 85, baseType: !871, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !872, line: 275, baseType: !873)
!872 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !872, line: 275, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !873, file: !872, line: 275, baseType: !876, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !872, line: 69, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !872, line: 64, size: 32, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !877, file: !872, line: 65, baseType: !7, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !866, file: !867, line: 86, baseType: !881, size: 128, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !882, line: 38, size: 128, elements: !883)
!882 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!883 = !{!884, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !882, line: 39, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !881, file: !882, line: 39, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !866, file: !867, line: 87, baseType: !865, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !866, file: !867, line: 88, baseType: !890, size: 128, offset: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !867, line: 49, size: 128, elements: !891)
!891 = !{!892, !901}
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !867, line: 50, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !867, line: 50, size: 64, elements: !894)
!894 = !{!895, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !867, line: 51, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !867, line: 51, size: 64, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !896, file: !867, line: 52, baseType: !712, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !896, file: !867, line: 52, baseType: !712, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !893, file: !867, line: 54, baseType: !662, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !890, file: !867, line: 56, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !866, file: !867, line: 89, baseType: !905, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !34, line: 641, size: 4800, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914, !917, !918, !1106, !3623, !3624, !3625, !3626, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3847, !3850, !3851, !3852, !3861, !3862, !3863, !3864}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !906, file: !34, line: 642, baseType: !314, size: 16)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !906, file: !34, line: 643, baseType: !240, size: 16, offset: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !906, file: !34, line: 644, baseType: !447, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !906, file: !34, line: 645, baseType: !258, size: 128, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !906, file: !34, line: 646, baseType: !455, size: 32, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !906, file: !34, line: 647, baseType: !7, size: 32, offset: 224)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !906, file: !34, line: 650, baseType: !915, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !34, line: 607, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !906, file: !34, line: 651, baseType: !915, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !906, file: !34, line: 654, baseType: !919, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !34, line: 1966, size: 2048, align: 512, elements: !922)
!922 = !{!923, !927, !937, !943, !947, !951, !955, !959, !963, !967, !971, !972, !978, !982, !1019, !1050, !1054, !1060, !1064, !1068, !1072, !1076, !1080, !1086, !1090}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !921, file: !34, line: 1967, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!865, !905, !865, !7}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !921, file: !34, line: 1968, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!270, !865, !905, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !933, line: 10, size: 128, elements: !934)
!933 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !932, file: !933, line: 11, baseType: !435, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !932, file: !933, line: 12, baseType: !130, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !921, file: !34, line: 1969, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!85, !941, !905, !85}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !658, line: 42, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !921, file: !34, line: 1970, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!915, !905, !85, !150}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !921, file: !34, line: 1972, baseType: !948, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!85, !865, !356, !85}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !921, file: !34, line: 1974, baseType: !952, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!85, !941, !905, !865, !314, !150}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !921, file: !34, line: 1976, baseType: !956, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!85, !865, !905, !865}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !921, file: !34, line: 1977, baseType: !960, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!85, !905, !865}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !921, file: !34, line: 1978, baseType: !964, size: 64, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!85, !941, !905, !865, !270}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !921, file: !34, line: 1980, baseType: !968, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!85, !941, !905, !865, !314}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !921, file: !34, line: 1982, baseType: !960, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !921, file: !34, line: 1983, baseType: !973, size: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!85, !941, !905, !865, !314, !976}
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !151, line: 21, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !151, line: 18, baseType: !712)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !921, file: !34, line: 1985, baseType: !979, size: 64, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!85, !941, !905, !865, !905, !865, !7}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !921, file: !34, line: 1987, baseType: !983, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!85, !941, !865, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !34, line: 226, size: 640, elements: !988)
!988 = !{!989, !990, !991, !1001, !1010, !1011, !1016, !1017, !1018}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !987, file: !34, line: 227, baseType: !7, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !987, file: !34, line: 228, baseType: !314, size: 16, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !34, line: 241, baseType: !992, size: 32, offset: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !34, line: 241, size: 32, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !992, file: !34, line: 242, baseType: !447, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !992, file: !34, line: 243, baseType: !996, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !997, line: 16, baseType: !998)
!997 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 14, size: 32, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !998, file: !997, line: 15, baseType: !452, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !34, line: 245, baseType: !1002, size: 32, offset: 96)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !34, line: 245, size: 32, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1002, file: !34, line: 246, baseType: !455, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1002, file: !34, line: 247, baseType: !1006, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !997, line: 20, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 18, size: 32, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1007, file: !997, line: 19, baseType: !459, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !987, file: !34, line: 249, baseType: !565, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !987, file: !34, line: 250, baseType: !1012, size: 128, offset: 192)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !704, line: 13, size: 128, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1012, file: !704, line: 14, baseType: !703, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1012, file: !704, line: 15, baseType: !131, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !987, file: !34, line: 251, baseType: !1012, size: 128, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !987, file: !34, line: 252, baseType: !1012, size: 128, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !987, file: !34, line: 259, baseType: !516, size: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !921, file: !34, line: 1988, baseType: !1020, size: 64, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!85, !941, !1023, !1025, !712, !7}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1027, line: 22, size: 1280, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1026, file: !1027, line: 23, baseType: !712, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1026, file: !1027, line: 24, baseType: !314, size: 16, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1026, file: !1027, line: 25, baseType: !7, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1026, file: !1027, line: 26, baseType: !711, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1026, file: !1027, line: 27, baseType: !662, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1026, file: !1027, line: 28, baseType: !662, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1026, file: !1027, line: 41, baseType: !662, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1026, file: !1027, line: 42, baseType: !976, size: 32, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1026, file: !1027, line: 43, baseType: !976, size: 32, offset: 352)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1026, file: !1027, line: 44, baseType: !447, size: 32, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1026, file: !1027, line: 45, baseType: !455, size: 32, offset: 416)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1026, file: !1027, line: 46, baseType: !565, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1026, file: !1027, line: 47, baseType: !1012, size: 128, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1026, file: !1027, line: 48, baseType: !1012, size: 128, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1026, file: !1027, line: 49, baseType: !1012, size: 128, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1026, file: !1027, line: 50, baseType: !1012, size: 128, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1026, file: !1027, line: 51, baseType: !662, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1026, file: !1027, line: 52, baseType: !662, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1026, file: !1027, line: 53, baseType: !712, size: 32, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1026, file: !1027, line: 54, baseType: !712, size: 32, offset: 1184)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1026, file: !1027, line: 55, baseType: !662, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !921, file: !34, line: 1990, baseType: !1051, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!387, !865, !356, !400}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !921, file: !34, line: 1991, baseType: !1055, size: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!85, !905, !1058, !662, !662}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !34, line: 55, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !921, file: !34, line: 1993, baseType: !1061, size: 64, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!85, !905, !85}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !921, file: !34, line: 1994, baseType: !1065, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!85, !905, !865, !516, !7, !314}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !921, file: !34, line: 1997, baseType: !1069, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!85, !941, !905, !516, !314}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !921, file: !34, line: 1999, baseType: !1073, size: 64, offset: 1280)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!915, !941, !865, !85}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !921, file: !34, line: 2001, baseType: !1077, size: 64, offset: 1344)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!85, !941, !865, !915, !85}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !921, file: !34, line: 2003, baseType: !1081, size: 64, offset: 1408)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!85, !941, !865, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !34, line: 76, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !921, file: !34, line: 2005, baseType: !1087, size: 64, offset: 1472)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!85, !865, !1084}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !921, file: !34, line: 2006, baseType: !1091, size: 64, offset: 1536)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1094, !905}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !34, line: 3192, size: 192, elements: !1096)
!1096 = !{!1097, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1095, file: !34, line: 3193, baseType: !1098, size: 128)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1099, line: 296, size: 128, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1100 = !{!1101, !1102, !1104}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1098, file: !1099, line: 297, baseType: !205, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1098, file: !1099, line: 299, baseType: !1103, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !151, line: 154, baseType: !7)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1098, file: !1099, line: 300, baseType: !130, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1095, file: !34, line: 3194, baseType: !712, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !906, file: !34, line: 655, baseType: !1107, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !34, line: 1190, size: 10752, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1540, !1678, !1718, !1801, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1818, !1822, !1823, !1826, !1829, !1832, !1835, !1836, !1837, !1878, !3499, !3500, !3501, !3502, !3503, !3504, !3507, !3508, !3515, !3516, !3517, !3518, !3577, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1108, file: !34, line: 1191, baseType: !258, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1108, file: !34, line: 1192, baseType: !976, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1108, file: !34, line: 1193, baseType: !157, size: 8, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1108, file: !34, line: 1194, baseType: !403, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1108, file: !34, line: 1195, baseType: !565, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1108, file: !34, line: 1196, baseType: !1116, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !34, line: 2366, size: 576, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1127, !1131, !1135, !1139, !1528, !1529, !1530, !1532, !1533, !1534, !1536, !1537, !1538, !1539}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1117, file: !34, line: 2367, baseType: !270, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1117, file: !34, line: 2368, baseType: !85, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1117, file: !34, line: 2376, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!85, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !464, line: 32, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1117, file: !34, line: 2377, baseType: !1128, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !34, line: 75, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1117, file: !34, line: 2378, baseType: !1132, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!865, !1116, !85, !270, !130}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1117, file: !34, line: 2380, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !1107}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1117, file: !34, line: 2381, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !27, line: 402, size: 9216, align: 512, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1149, !1170, !1196, !1197, !1198, !1199, !1203, !1206, !1207, !1208, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1276, !1280, !1300, !1320, !1321, !1322, !1323, !1332, !1355, !1356, !1359, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1373, !1374, !1486, !1494, !1495, !1496, !1498, !1502, !1503, !1507, !1508, !1509, !1510, !1512, !1513, !1514, !1521, !1522, !1523, !1527}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1141, file: !27, line: 403, baseType: !26, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1141, file: !27, line: 406, baseType: !258, size: 128, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1141, file: !27, line: 409, baseType: !1146, size: 448, offset: 192)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 448, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 56)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1141, file: !27, line: 417, baseType: !1150, size: 768, offset: 640)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !27, line: 45, size: 768, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1158}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1150, file: !27, line: 46, baseType: !316, size: 512)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1150, file: !27, line: 47, baseType: !1140, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1150, file: !27, line: 48, baseType: !315, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1150, file: !27, line: 49, baseType: !1156, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !27, line: 49, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1150, file: !27, line: 50, baseType: !1159, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1161, line: 26, size: 256, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1160, file: !1161, line: 27, baseType: !7, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1160, file: !1161, line: 28, baseType: !1165, size: 192, offset: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1166, line: 43, size: 192, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1165, file: !1166, line: 44, baseType: !557, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1165, file: !1166, line: 45, baseType: !258, size: 128, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1141, file: !27, line: 418, baseType: !1171, size: 64, offset: 1408)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !27, line: 53, size: 448, elements: !1173)
!1173 = !{!1174, !1175, !1180, !1184, !1188, !1192}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1172, file: !27, line: 54, baseType: !392, size: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1172, file: !27, line: 55, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!387, !1171, !1179, !356}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1172, file: !27, line: 57, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!387, !1171, !1179, !270, !400}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1172, file: !27, line: 59, baseType: !1185, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1140, !270}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1172, file: !27, line: 60, baseType: !1189, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!85, !1140}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1172, file: !27, line: 61, baseType: !1193, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1140}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1141, file: !27, line: 419, baseType: !270, size: 64, offset: 1472)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1141, file: !27, line: 420, baseType: !270, size: 64, offset: 1536)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1141, file: !27, line: 421, baseType: !315, size: 64, offset: 1600)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1141, file: !27, line: 424, baseType: !1200, size: 64, offset: 1664)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !27, line: 424, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1141, file: !27, line: 425, baseType: !1204, size: 64, offset: 1728)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1141, file: !27, line: 426, baseType: !7, size: 32, offset: 1792)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1141, file: !27, line: 435, baseType: !552, size: 256, offset: 1856)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1141, file: !27, line: 437, baseType: !1209, size: 64, offset: 2112)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1211, line: 69, size: 320, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1212 = !{!1213, !1214, !1215, !1232, !1234, !1238, !1239}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1210, file: !1211, line: 70, baseType: !270, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1210, file: !1211, line: 71, baseType: !1140, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1210, file: !1211, line: 72, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1211, line: 47, size: 256, elements: !1219)
!1219 = !{!1220, !1221, !1227, !1231}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1211, line: 49, baseType: !7, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1218, file: !1211, line: 51, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!85, !270, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1218, file: !1211, line: 53, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!85, !356, !1225}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1218, file: !1211, line: 55, baseType: !435, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1210, file: !1211, line: 73, baseType: !1233, size: 16, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1210, file: !1211, line: 74, baseType: !1235, size: 8, offset: 208)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !154, line: 16, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !156, line: 20, baseType: !1237)
!1237 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !1211, line: 75, baseType: !153, size: 8, offset: 216)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1211, line: 76, baseType: !1240, size: 64, offset: 256)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !1211, line: 76, size: 64, elements: !1241)
!1241 = !{!1242, !1243, !1250}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1240, file: !1211, line: 77, baseType: !130, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1240, file: !1211, line: 78, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1211, line: 86, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1246, file: !1211, line: 87, baseType: !7, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1246, file: !1211, line: 88, baseType: !356, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1240, file: !1211, line: 79, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1211, line: 92, size: 256, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1259, !1260}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1253, file: !1211, line: 94, baseType: !7, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1253, file: !1211, line: 95, baseType: !7, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1253, file: !1211, line: 96, baseType: !1258, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1253, file: !1211, line: 97, baseType: !1216, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1253, file: !1211, line: 98, baseType: !130, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1141, file: !27, line: 438, baseType: !7, size: 32, offset: 2176)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1141, file: !27, line: 441, baseType: !7, size: 32, offset: 2208)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1141, file: !27, line: 442, baseType: !1200, size: 64, offset: 2240)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1141, file: !27, line: 443, baseType: !1204, size: 64, offset: 2304)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1141, file: !27, line: 444, baseType: !150, size: 8, offset: 2368)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1141, file: !27, line: 451, baseType: !150, size: 8, offset: 2376)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1141, file: !27, line: 454, baseType: !7, size: 32, offset: 2400)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1141, file: !27, line: 455, baseType: !1269, size: 64, offset: 2432)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1271, line: 23, size: 96, elements: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1270, file: !1271, line: 24, baseType: !85, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1270, file: !1271, line: 24, baseType: !85, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1270, file: !1271, line: 24, baseType: !85, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1141, file: !27, line: 458, baseType: !1277, size: 64, offset: 2496)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!85}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1141, file: !27, line: 460, baseType: !1281, size: 4032, align: 512, offset: 2560)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 4032, elements: !1298)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !27, line: 362, size: 576, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1282, file: !27, line: 363, baseType: !130, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1282, file: !27, line: 364, baseType: !7, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1282, file: !27, line: 367, baseType: !1287, size: 448, offset: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !27, line: 319, size: 448, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1287, file: !27, line: 320, baseType: !1140, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1287, file: !27, line: 321, baseType: !1291, size: 384, offset: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1292, line: 40, size: 384, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1291, file: !1292, line: 41, baseType: !1295, size: 384, align: 64)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 384, align: 64, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 2)
!1298 = !{!1299}
!1299 = !DISubrange(count: 7)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1141, file: !27, line: 463, baseType: !1301, size: 192, offset: 6592)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1302, line: 8, size: 192, elements: !1303)
!1302 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1303 = !{!1304, !1305, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1301, file: !1302, line: 10, baseType: !7, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1301, file: !1302, line: 11, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1301, file: !1302, line: 12, baseType: !1308, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1310, line: 59, size: 48, elements: !1311)
!1310 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1311 = !{!1312, !1315, !1316, !1317, !1318, !1319}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1309, file: !1310, line: 60, baseType: !1313, size: 16)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !154, line: 18, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !156, line: 23, baseType: !717)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1309, file: !1310, line: 61, baseType: !1313, size: 16, offset: 16)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1309, file: !1310, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1309, file: !1310, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1309, file: !1310, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1309, file: !1310, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1141, file: !27, line: 465, baseType: !403, size: 64, offset: 6784)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1141, file: !27, line: 469, baseType: !7, size: 32, offset: 6848)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1141, file: !27, line: 470, baseType: !258, size: 128, offset: 6912)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1141, file: !27, line: 471, baseType: !1324, size: 64, offset: 7040)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1326, line: 33, size: 96, elements: !1327)
!1326 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1325, file: !1326, line: 37, baseType: !85, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1325, file: !1326, line: 43, baseType: !85, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1325, file: !1326, line: 45, baseType: !240, size: 16, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1325, file: !1326, line: 47, baseType: !240, size: 16, offset: 80)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1141, file: !27, line: 476, baseType: !1333, size: 64, offset: 7104)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !27, line: 378, size: 256, elements: !1335)
!1335 = !{!1336, !1352, !1353, !1354}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1334, file: !27, line: 379, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1339, line: 204, baseType: !1340)
!1339 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1339, line: 197, size: 192, elements: !1341)
!1341 = !{!1342, !1344, !1345, !1346, !1348, !1350}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1340, file: !1339, line: 198, baseType: !1343, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1339, line: 21, baseType: !713)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1340, file: !1339, line: 199, baseType: !157, size: 8, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1340, file: !1339, line: 200, baseType: !157, size: 8, offset: 40)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1340, file: !1339, line: 201, baseType: !1347, size: 16, offset: 48)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1339, line: 17, baseType: !239)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1340, file: !1339, line: 202, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1339, line: 16, baseType: !663)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1340, file: !1339, line: 203, baseType: !1351, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1339, line: 22, baseType: !663)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1334, file: !27, line: 380, baseType: !7, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1334, file: !27, line: 381, baseType: !356, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1334, file: !27, line: 382, baseType: !356, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1141, file: !27, line: 477, baseType: !1334, size: 256, offset: 7168)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1141, file: !27, line: 480, baseType: !1357, size: 64, offset: 7424)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !27, line: 480, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1141, file: !27, line: 483, baseType: !1360, size: 64, offset: 7488)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !27, line: 483, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1141, file: !27, line: 488, baseType: !356, size: 64, offset: 7552)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1141, file: !27, line: 492, baseType: !130, size: 64, offset: 7616)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1141, file: !27, line: 493, baseType: !7, size: 32, offset: 7680)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1141, file: !27, line: 495, baseType: !130, size: 64, offset: 7744)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1141, file: !27, line: 496, baseType: !7, size: 32, offset: 7808)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1141, file: !27, line: 499, baseType: !7, size: 32, offset: 7840)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1141, file: !27, line: 500, baseType: !1369, size: 64, offset: 7872)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1371, line: 45, baseType: !1372)
!1371 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1141, file: !27, line: 503, baseType: !7, size: 32, offset: 7936)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1141, file: !27, line: 504, baseType: !1375, size: 64, offset: 8000)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1378, line: 96, size: 192, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1379 = !{!1380, !1381, !1446, !1450}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1377, file: !1378, line: 97, baseType: !7, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1377, file: !1378, line: 98, baseType: !1382, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1378, line: 24, size: 3072, elements: !1384)
!1384 = !{!1385, !1387, !1388, !1389, !1390, !1404, !1405, !1406, !1407, !1419, !1431, !1432, !1443, !1444, !1445}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1383, file: !1378, line: 26, baseType: !1386, size: 128)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 128, elements: !1296)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1383, file: !1378, line: 27, baseType: !1386, size: 128, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1383, file: !1378, line: 28, baseType: !85, size: 32, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !1378, line: 31, baseType: !205, size: 32, align: 512, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1383, file: !1378, line: 32, baseType: !1391, size: 960, offset: 576)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1392, line: 206, size: 960, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1393 = !{!1394, !1395, !1398, !1400, !1401, !1403}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1391, file: !1392, line: 207, baseType: !532, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1391, file: !1392, line: 208, baseType: !1396, size: 256, offset: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1397, size: 256, elements: !615)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1391, file: !1392, line: 209, baseType: !1399, size: 256, offset: 320)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 256, elements: !615)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1391, file: !1392, line: 213, baseType: !131, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1391, file: !1392, line: 215, baseType: !1402, size: 256, offset: 640)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !615)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1391, file: !1392, line: 216, baseType: !153, size: 8, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1383, file: !1378, line: 33, baseType: !403, size: 64, offset: 1536)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1383, file: !1378, line: 34, baseType: !403, size: 64, offset: 1600)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1383, file: !1378, line: 35, baseType: !150, size: 8, offset: 1664)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1383, file: !1378, line: 36, baseType: !1408, size: 320, offset: 1728)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1409, line: 11, size: 320, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1410 = !{!1411, !1412, !1413, !1418}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1408, file: !1409, line: 16, baseType: !610, size: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1408, file: !1409, line: 17, baseType: !403, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1408, file: !1409, line: 18, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !1417}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1409, line: 19, baseType: !712, size: 32, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1383, file: !1378, line: 37, baseType: !1420, size: 256, offset: 2048)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1421, line: 98, size: 256, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1420, file: !1421, line: 99, baseType: !542, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1420, file: !1421, line: 100, baseType: !258, size: 128, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1420, file: !1421, line: 101, baseType: !1426, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1421, line: 21, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1383, file: !1378, line: 38, baseType: !529, size: 128, align: 64, offset: 2304)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1383, file: !1378, line: 39, baseType: !1433, size: 64, offset: 2432)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1378, line: 49, size: 768, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !1378, line: 50, baseType: !205, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1434, file: !1378, line: 51, baseType: !1399, size: 256, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1434, file: !1378, line: 53, baseType: !1399, size: 256, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1434, file: !1378, line: 54, baseType: !403, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1434, file: !1378, line: 55, baseType: !1433, size: 64, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1434, file: !1378, line: 56, baseType: !85, size: 32, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1434, file: !1378, line: 57, baseType: !85, size: 32, offset: 736)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1383, file: !1378, line: 40, baseType: !403, size: 64, offset: 2496)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1383, file: !1378, line: 42, baseType: !85, size: 32, offset: 2560)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1383, file: !1378, line: 43, baseType: !1376, size: 64, offset: 2624)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1377, file: !1378, line: 99, baseType: !1447, offset: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1448, line: 211, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1449 = !{}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1377, file: !1378, line: 100, baseType: !1451, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1378, line: 63, size: 3008, elements: !1453)
!1453 = !{!1454, !1455, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1485}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1452, file: !1378, line: 64, baseType: !1433, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1452, file: !1378, line: 65, baseType: !1456, size: 192, offset: 64)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1433, size: 192, elements: !357)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1452, file: !1378, line: 67, baseType: !85, size: 32, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1452, file: !1378, line: 68, baseType: !552, size: 256, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1378, line: 69, baseType: !205, size: 32, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1452, file: !1378, line: 70, baseType: !552, size: 256, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1452, file: !1378, line: 71, baseType: !403, size: 64, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1452, file: !1378, line: 72, baseType: !403, size: 64, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1452, file: !1378, line: 73, baseType: !403, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1452, file: !1378, line: 74, baseType: !403, size: 64, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1452, file: !1378, line: 75, baseType: !403, size: 64, offset: 1152)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1452, file: !1378, line: 76, baseType: !403, size: 64, offset: 1216)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1452, file: !1378, line: 77, baseType: !403, size: 64, offset: 1280)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1452, file: !1378, line: 78, baseType: !403, size: 64, offset: 1344)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1452, file: !1378, line: 79, baseType: !150, size: 8, offset: 1408)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1452, file: !1378, line: 80, baseType: !403, size: 64, offset: 1472)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1452, file: !1378, line: 81, baseType: !552, size: 256, offset: 1536)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1452, file: !1378, line: 82, baseType: !1160, size: 256, offset: 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1452, file: !1378, line: 84, baseType: !225, size: 32, offset: 2048)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1452, file: !1378, line: 87, baseType: !403, size: 64, offset: 2112)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1452, file: !1378, line: 88, baseType: !403, size: 64, offset: 2176)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1452, file: !1378, line: 89, baseType: !1477, size: 704, offset: 2240)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1421, line: 111, size: 704, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1484}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1477, file: !1421, line: 112, baseType: !1420, size: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1477, file: !1421, line: 113, baseType: !1408, size: 320, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1477, file: !1421, line: 116, baseType: !1482, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1421, line: 18, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1477, file: !1421, line: 117, baseType: !85, size: 32, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1452, file: !1378, line: 90, baseType: !1376, size: 64, offset: 2944)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1141, file: !27, line: 515, baseType: !1487, size: 64, offset: 8064)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1489, line: 117, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1488, file: !1489, line: 118, baseType: !679, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1488, file: !1489, line: 119, baseType: !679, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1488, file: !1489, line: 120, baseType: !131, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1141, file: !27, line: 516, baseType: !7, size: 32, offset: 8128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1141, file: !27, line: 519, baseType: !7, size: 32, offset: 8160)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1141, file: !27, line: 520, baseType: !1497, size: 64, offset: 8192)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1141, file: !27, line: 523, baseType: !1499, size: 64, offset: 8256)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !27, line: 523, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1141, file: !27, line: 524, baseType: !7, size: 32, offset: 8320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1141, file: !27, line: 525, baseType: !1504, size: 64, offset: 8384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !27, line: 525, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1141, file: !27, line: 526, baseType: !7, size: 32, offset: 8448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1141, file: !27, line: 533, baseType: !130, size: 64, offset: 8512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1141, file: !27, line: 534, baseType: !7, size: 32, offset: 8576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1141, file: !27, line: 535, baseType: !1511, size: 64, offset: 8640)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1141, file: !27, line: 536, baseType: !7, size: 32, offset: 8704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1141, file: !27, line: 539, baseType: !85, size: 32, offset: 8736)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1141, file: !27, line: 540, baseType: !1515, size: 64, offset: 8768)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1517, line: 32, size: 64, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1516, file: !1517, line: 33, baseType: !679, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1516, file: !1517, line: 34, baseType: !679, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1141, file: !27, line: 563, baseType: !258, size: 128, offset: 8832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1141, file: !27, line: 565, baseType: !258, size: 128, offset: 8960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1141, file: !27, line: 568, baseType: !1524, size: 64, offset: 9088)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1141, file: !27, line: 570, baseType: !225, size: 32, offset: 9152)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !34, line: 2382, baseType: !1116, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1117, file: !34, line: 2383, baseType: !606, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1117, file: !34, line: 2385, baseType: !1531, offset: 576)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1448, line: 206, elements: !1449)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1117, file: !34, line: 2386, baseType: !1531, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1117, file: !34, line: 2387, baseType: !1531, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1117, file: !34, line: 2388, baseType: !1535, offset: 576)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1531, elements: !357)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1117, file: !34, line: 2390, baseType: !1531, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1117, file: !34, line: 2391, baseType: !1531, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1117, file: !34, line: 2392, baseType: !1531, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1117, file: !34, line: 2393, baseType: !1531, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1108, file: !34, line: 1197, baseType: !1541, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !34, line: 2057, size: 1664, elements: !1544)
!1544 = !{!1545, !1549, !1553, !1554, !1558, !1564, !1568, !1569, !1570, !1574, !1578, !1582, !1583, !1584, !1590, !1594, !1595, !1602, !1603, !1604, !1605, !1609, !1613, !1660, !1676, !1677}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1543, file: !34, line: 2058, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!905, !1107}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1543, file: !34, line: 2059, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !905}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1543, file: !34, line: 2060, baseType: !1550, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1543, file: !34, line: 2062, baseType: !1555, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !905, !85}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1543, file: !34, line: 2063, baseType: !1559, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!85, !905, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !34, line: 309, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1543, file: !34, line: 2064, baseType: !1565, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!85, !905}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1543, file: !34, line: 2065, baseType: !1550, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1543, file: !34, line: 2066, baseType: !1136, size: 64, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1543, file: !34, line: 2067, baseType: !1571, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!85, !1107, !85}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1543, file: !34, line: 2068, baseType: !1575, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!85, !1107, !33}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1543, file: !34, line: 2069, baseType: !1579, size: 64, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!85, !1107}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1543, file: !34, line: 2070, baseType: !1575, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1543, file: !34, line: 2071, baseType: !1579, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1543, file: !34, line: 2072, baseType: !1585, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!85, !865, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !34, line: 62, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1543, file: !34, line: 2073, baseType: !1591, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!85, !1107, !1306, !356}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1543, file: !34, line: 2074, baseType: !1136, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1543, file: !34, line: 2076, baseType: !1596, size: 64, offset: 1024)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!85, !1599, !865}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1601, line: 66, flags: DIFlagFwdDecl)
!1601 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1543, file: !34, line: 2077, baseType: !1596, size: 64, offset: 1088)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1543, file: !34, line: 2078, baseType: !1596, size: 64, offset: 1152)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1543, file: !34, line: 2079, baseType: !1596, size: 64, offset: 1216)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1543, file: !34, line: 2081, baseType: !1606, size: 64, offset: 1280)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!387, !1107, !85, !356, !400, !565}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1543, file: !34, line: 2082, baseType: !1610, size: 64, offset: 1344)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!387, !1107, !85, !270, !400, !565}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1543, file: !34, line: 2083, baseType: !1614, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !905}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !39, line: 296, size: 1664, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1645, !1646, !1647}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1619, file: !39, line: 297, baseType: !610, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1619, file: !39, line: 298, baseType: !258, size: 128, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1619, file: !39, line: 299, baseType: !258, size: 128, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1619, file: !39, line: 300, baseType: !258, size: 128, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1619, file: !39, line: 301, baseType: !552, size: 256, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1619, file: !39, line: 302, baseType: !205, size: 32, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1619, file: !39, line: 303, baseType: !225, size: 32, offset: 800)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1619, file: !39, line: 304, baseType: !1107, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1619, file: !39, line: 305, baseType: !1630, size: 64, offset: 896)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !39, line: 68, size: 64, elements: !1631)
!1631 = !{!1632, !1644}
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !39, line: 69, baseType: !1633, size: 32)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !39, line: 69, size: 32, elements: !1634)
!1634 = !{!1635, !1636, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1633, file: !39, line: 70, baseType: !447, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1633, file: !39, line: 71, baseType: !455, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1633, file: !39, line: 72, baseType: !1638, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1639, line: 24, baseType: !1640)
!1639 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1639, line: 22, size: 32, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1640, file: !1639, line: 23, baseType: !1643, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1639, line: 20, baseType: !453)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1630, file: !39, line: 74, baseType: !38, size: 32, offset: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1619, file: !39, line: 306, baseType: !565, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1619, file: !39, line: 307, baseType: !403, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1619, file: !39, line: 308, baseType: !1648, size: 576, offset: 1088)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !39, line: 205, size: 576, elements: !1649)
!1649 = !{!1650, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1648, file: !39, line: 206, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !39, line: 66, baseType: !550)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1648, file: !39, line: 207, baseType: !1651, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1648, file: !39, line: 208, baseType: !1651, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1648, file: !39, line: 209, baseType: !1651, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1648, file: !39, line: 210, baseType: !1651, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1648, file: !39, line: 211, baseType: !1651, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1648, file: !39, line: 212, baseType: !1651, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1648, file: !39, line: 213, baseType: !703, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1648, file: !39, line: 214, baseType: !703, size: 64, offset: 512)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1543, file: !34, line: 2085, baseType: !1661, size: 64, offset: 1472)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!131, !1107, !1664}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1666, line: 15, size: 256, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1667 = !{!1668, !1669, !1670, !1671, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1665, file: !1666, line: 16, baseType: !1103, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1665, file: !1666, line: 19, baseType: !85, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1665, file: !1666, line: 26, baseType: !403, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1665, file: !1666, line: 33, baseType: !403, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1665, file: !1666, line: 36, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1675, line: 33, flags: DIFlagFwdDecl)
!1675 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1543, file: !34, line: 2087, baseType: !1661, size: 64, offset: 1536)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1543, file: !34, line: 2089, baseType: !1136, size: 64, offset: 1600)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1108, file: !34, line: 1198, baseType: !1679, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !39, line: 324, size: 704, elements: !1682)
!1682 = !{!1683, !1687, !1691, !1695, !1696, !1697, !1698, !1699, !1704, !1709, !1713}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1681, file: !39, line: 325, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!85, !1618}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1681, file: !39, line: 326, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1618, !1107, !85}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1681, file: !39, line: 327, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !1618}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1681, file: !39, line: 328, baseType: !1684, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1681, file: !39, line: 329, baseType: !1684, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1681, file: !39, line: 330, baseType: !1684, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1681, file: !39, line: 331, baseType: !1571, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1681, file: !39, line: 334, baseType: !1700, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1703, !905}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1681, file: !39, line: 335, baseType: !1705, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!85, !905, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1681, file: !39, line: 337, baseType: !1710, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!85, !905, !1703}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1681, file: !39, line: 339, baseType: !1714, size: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!85, !1107, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1108, file: !34, line: 1199, baseType: !1719, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !39, line: 430, size: 704, elements: !1722)
!1722 = !{!1723, !1727, !1728, !1732, !1733, !1734, !1749, !1772, !1776, !1777, !1800}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1721, file: !39, line: 431, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!85, !1107, !85, !85, !1023}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1721, file: !39, line: 432, baseType: !1571, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1721, file: !39, line: 433, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!85, !1107, !7}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1721, file: !39, line: 434, baseType: !1729, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1721, file: !39, line: 435, baseType: !1571, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1721, file: !39, line: 436, baseType: !1735, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!85, !1107, !85, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !39, line: 417, size: 256, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1739, file: !39, line: 418, baseType: !85, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1739, file: !39, line: 419, baseType: !7, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1739, file: !39, line: 420, baseType: !7, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1739, file: !39, line: 422, baseType: !7, size: 32, offset: 96)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1739, file: !39, line: 423, baseType: !7, size: 32, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1739, file: !39, line: 424, baseType: !7, size: 32, offset: 160)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1739, file: !39, line: 425, baseType: !7, size: 32, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1739, file: !39, line: 426, baseType: !7, size: 32, offset: 224)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1721, file: !39, line: 437, baseType: !1750, size: 64, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!85, !1107, !1630, !1753}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !39, line: 345, size: 960, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1754, file: !39, line: 346, baseType: !85, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1754, file: !39, line: 347, baseType: !662, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1754, file: !39, line: 348, baseType: !662, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1754, file: !39, line: 349, baseType: !662, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1754, file: !39, line: 350, baseType: !662, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1754, file: !39, line: 351, baseType: !662, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1754, file: !39, line: 352, baseType: !662, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1754, file: !39, line: 353, baseType: !548, size: 64, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1754, file: !39, line: 355, baseType: !548, size: 64, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1754, file: !39, line: 356, baseType: !85, size: 32, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1754, file: !39, line: 357, baseType: !85, size: 32, offset: 608)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1754, file: !39, line: 358, baseType: !662, size: 64, offset: 640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1754, file: !39, line: 359, baseType: !662, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1754, file: !39, line: 360, baseType: !662, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1754, file: !39, line: 361, baseType: !548, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1754, file: !39, line: 362, baseType: !85, size: 32, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1721, file: !39, line: 438, baseType: !1773, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!85, !1107, !1717, !1753}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1721, file: !39, line: 440, baseType: !1750, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1721, file: !39, line: 441, baseType: !1778, size: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!85, !1107, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !39, line: 411, size: 1408, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1782, file: !39, line: 412, baseType: !7, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1782, file: !39, line: 413, baseType: !1786, size: 1344, offset: 64)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1787, size: 1344, elements: !357)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !39, line: 397, size: 448, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1799}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1787, file: !39, line: 398, baseType: !7, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1787, file: !39, line: 399, baseType: !7, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1787, file: !39, line: 401, baseType: !7, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1787, file: !39, line: 402, baseType: !7, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1787, file: !39, line: 403, baseType: !7, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1787, file: !39, line: 404, baseType: !7, size: 32, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1787, file: !39, line: 405, baseType: !7, size: 32, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1787, file: !39, line: 406, baseType: !664, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1787, file: !39, line: 407, baseType: !1798, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !151, line: 132, baseType: !662)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1787, file: !39, line: 408, baseType: !1798, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1721, file: !39, line: 442, baseType: !1729, size: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1108, file: !34, line: 1200, baseType: !1802, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !34, line: 54, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1108, file: !34, line: 1201, baseType: !403, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1108, file: !34, line: 1202, baseType: !403, size: 64, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1108, file: !34, line: 1203, baseType: !403, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1108, file: !34, line: 1204, baseType: !865, size: 64, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1108, file: !34, line: 1205, baseType: !687, size: 320, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1108, file: !34, line: 1206, baseType: !85, size: 32, offset: 1216)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1108, file: !34, line: 1207, baseType: !225, size: 32, offset: 1248)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1108, file: !34, line: 1209, baseType: !130, size: 64, offset: 1280)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1108, file: !34, line: 1211, baseType: !1814, size: 64, offset: 1344)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !34, line: 1211, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1108, file: !34, line: 1223, baseType: !1819, size: 64, offset: 1408)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !882, line: 34, size: 64, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1819, file: !882, line: 35, baseType: !885, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1108, file: !34, line: 1224, baseType: !258, size: 128, offset: 1472)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1108, file: !34, line: 1225, baseType: !1824, size: 64, offset: 1600)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !34, line: 1225, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1108, file: !34, line: 1226, baseType: !1827, size: 64, offset: 1664)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !34, line: 1226, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1108, file: !34, line: 1227, baseType: !1830, size: 64, offset: 1728)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !34, line: 50, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1108, file: !34, line: 1228, baseType: !1833, size: 64, offset: 1792)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !34, line: 1228, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1108, file: !34, line: 1229, baseType: !610, size: 128, offset: 1856)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1108, file: !34, line: 1230, baseType: !7, size: 32, offset: 1984)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1108, file: !34, line: 1231, baseType: !1838, size: 2496, offset: 2048)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !39, line: 521, size: 2496, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1844, !1876}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !39, line: 522, baseType: !7, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1838, file: !39, line: 523, baseType: !687, size: 320, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1838, file: !39, line: 524, baseType: !1843, size: 192, offset: 384)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 192, elements: !357)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1838, file: !39, line: 525, baseType: !1845, size: 1728, offset: 576)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 1728, elements: !357)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !39, line: 222, size: 576, elements: !1847)
!1847 = !{!1848, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1846, file: !39, line: 223, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !39, line: 445, size: 256, elements: !1851)
!1851 = !{!1852, !1853, !1866, !1867}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1850, file: !39, line: 446, baseType: !85, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1850, file: !39, line: 447, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !39, line: 312, size: 512, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1856, file: !39, line: 313, baseType: !1571, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1856, file: !39, line: 314, baseType: !1571, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1856, file: !39, line: 315, baseType: !1571, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1856, file: !39, line: 316, baseType: !1571, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1856, file: !39, line: 317, baseType: !1684, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1856, file: !39, line: 318, baseType: !1684, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1856, file: !39, line: 319, baseType: !1684, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1856, file: !39, line: 320, baseType: !1714, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1850, file: !39, line: 448, baseType: !1140, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1850, file: !39, line: 449, baseType: !1849, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1846, file: !39, line: 224, baseType: !85, size: 32, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1846, file: !39, line: 226, baseType: !258, size: 128, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1846, file: !39, line: 227, baseType: !403, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1846, file: !39, line: 228, baseType: !7, size: 32, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1846, file: !39, line: 229, baseType: !7, size: 32, offset: 352)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1846, file: !39, line: 230, baseType: !1651, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1846, file: !39, line: 231, baseType: !1651, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1846, file: !39, line: 232, baseType: !130, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1838, file: !39, line: 526, baseType: !1877, size: 192, offset: 2304)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 192, elements: !357)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1108, file: !34, line: 1233, baseType: !1879, size: 2368, offset: 4544)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !34, line: 1184, size: 2368, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1879, file: !34, line: 1185, baseType: !240, size: 16)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1879, file: !34, line: 1186, baseType: !240, size: 16, offset: 16)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1879, file: !34, line: 1187, baseType: !1884, size: 2304, offset: 64)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1885, size: 2304, elements: !357)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1886, line: 12, size: 768, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1887 = !{!1888, !1896, !1897, !3497, !3498}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1885, file: !1886, line: 13, baseType: !1889, size: 384)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1890, line: 17, size: 384, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1889, file: !1890, line: 18, baseType: !85, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1889, file: !1890, line: 19, baseType: !85, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1889, file: !1890, line: 20, baseType: !619, size: 192, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1889, file: !1890, line: 22, baseType: !529, size: 128, align: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1885, file: !1886, line: 14, baseType: !1258, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1885, file: !1886, line: 15, baseType: !1898, size: 64, offset: 448)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1899, line: 16, size: 64, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1898, file: !1899, line: 17, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1601, line: 746, size: 58368, elements: !1904)
!1904 = !{!1905, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1985, !1996, !2088, !2092, !2095, !2126, !2127, !2128, !2129, !2140, !2142, !2143, !2144, !2145, !2146, !2147, !2158, !2159, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2176, !2177, !2184, !2185, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2417, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2465, !2471, !2472, !2473, !2474, !2475, !2479, !2482, !2489, !2494, !2497, !2500, !2503, !2506, !2644, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2682, !2683, !2684, !2693, !2701, !2702, !2703, !2704, !2705, !2710, !2711, !2712, !2715, !2716, !2719, !2722, !2725, !2733, !2736, !2737, !2823, !2824, !2825, !2826, !2827, !2833, !2834, !2835, !2836, !2839, !2840, !2843, !2846, !2847, !2850, !2851, !2852, !2855, !2856, !2857, !2860, !2861, !2862, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2894, !2897, !3166, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3178, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3274, !3275, !3276}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1903, file: !1601, line: 752, baseType: !1906, size: 192)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1907, line: 56, size: 192, elements: !1908)
!1907 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1908 = !{!1909, !1910, !1911, !1912}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1907, line: 57, baseType: !403, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1906, file: !1907, line: 58, baseType: !403, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1906, file: !1907, line: 59, baseType: !712, size: 32, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1906, file: !1907, line: 61, baseType: !712, size: 32, offset: 160)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1903, file: !1601, line: 754, baseType: !7, size: 32, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1903, file: !1601, line: 767, baseType: !130, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1903, file: !1601, line: 768, baseType: !597, size: 32, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1903, file: !1601, line: 770, baseType: !7, size: 32, offset: 352)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1903, file: !1601, line: 771, baseType: !7, size: 32, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1903, file: !1601, line: 774, baseType: !85, size: 32, offset: 416)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1903, file: !1601, line: 775, baseType: !1920, size: 128, offset: 448)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1921, line: 58, size: 128, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1922 = !{!1923, !1924, !1929, !1930}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1920, file: !1921, line: 59, baseType: !523, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !1921, line: 60, baseType: !1925, size: 32, offset: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !1921, line: 60, size: 32, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1925, file: !1921, line: 61, baseType: !7, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1925, file: !1921, line: 62, baseType: !225, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1920, file: !1921, line: 65, baseType: !238, size: 16, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1920, file: !1921, line: 65, baseType: !238, size: 16, offset: 112)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1903, file: !1601, line: 776, baseType: !7, size: 32, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1903, file: !1601, line: 777, baseType: !403, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1903, file: !1601, line: 778, baseType: !1902, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1903, file: !1601, line: 787, baseType: !85, size: 32, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1903, file: !1601, line: 788, baseType: !85, size: 32, offset: 800)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1903, file: !1601, line: 790, baseType: !85, size: 32, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1903, file: !1601, line: 792, baseType: !85, size: 32, offset: 864)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1903, file: !1601, line: 793, baseType: !85, size: 32, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1903, file: !1601, line: 794, baseType: !85, size: 32, offset: 928)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1903, file: !1601, line: 795, baseType: !7, size: 32, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1903, file: !1601, line: 797, baseType: !1942, size: 2048, offset: 1024)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1601, line: 551, size: 2048, elements: !1943)
!1943 = !{!1944, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1964, !1967, !1968, !1969}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1942, file: !1601, line: 553, baseType: !1945, size: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1601, line: 411, size: 128, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1945, file: !1601, line: 412, baseType: !403, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1945, file: !1601, line: 413, baseType: !712, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1942, file: !1601, line: 554, baseType: !471, size: 192, align: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1942, file: !1601, line: 555, baseType: !662, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1942, file: !1601, line: 556, baseType: !662, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1942, file: !1601, line: 558, baseType: !258, size: 128, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1942, file: !1601, line: 559, baseType: !7, size: 32, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1942, file: !1601, line: 561, baseType: !662, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1942, file: !1601, line: 562, baseType: !662, size: 64, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1942, file: !1601, line: 563, baseType: !662, size: 64, offset: 768)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1942, file: !1601, line: 564, baseType: !662, size: 64, offset: 832)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1942, file: !1601, line: 565, baseType: !548, size: 64, offset: 896)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1942, file: !1601, line: 566, baseType: !662, size: 64, offset: 960)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1942, file: !1601, line: 568, baseType: !662, size: 64, offset: 1024)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1942, file: !1601, line: 571, baseType: !85, size: 32, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1942, file: !1601, line: 572, baseType: !1963, size: 64, offset: 1152)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1942, file: !1601, line: 574, baseType: !1965, size: 64, offset: 1216)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1601, line: 49, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1942, file: !1601, line: 576, baseType: !1965, size: 64, offset: 1280)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1942, file: !1601, line: 578, baseType: !403, size: 64, offset: 1344)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1942, file: !1601, line: 588, baseType: !1970, size: 512, align: 512, offset: 1536)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1601, line: 497, size: 512, align: 512, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1970, file: !1601, line: 498, baseType: !662, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1970, file: !1601, line: 499, baseType: !662, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1970, file: !1601, line: 500, baseType: !662, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1970, file: !1601, line: 501, baseType: !712, size: 32, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1970, file: !1601, line: 502, baseType: !712, size: 32, offset: 224)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1970, file: !1601, line: 503, baseType: !403, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1970, file: !1601, line: 504, baseType: !403, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1970, file: !1601, line: 505, baseType: !403, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1970, file: !1601, line: 506, baseType: !1981, size: 64, align: 64, offset: 448)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1601, line: 445, size: 64, align: 64, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1981, file: !1601, line: 446, baseType: !7, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1981, file: !1601, line: 447, baseType: !7, size: 32, offset: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1903, file: !1601, line: 798, baseType: !1986, size: 384, offset: 3072)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1601, line: 592, size: 384, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1986, file: !1601, line: 593, baseType: !258, size: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1986, file: !1601, line: 594, baseType: !403, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1986, file: !1601, line: 595, baseType: !403, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1986, file: !1601, line: 596, baseType: !7, size: 32, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1986, file: !1601, line: 597, baseType: !240, size: 16, offset: 288)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1986, file: !1601, line: 598, baseType: !240, size: 16, offset: 304)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1986, file: !1601, line: 600, baseType: !1995, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1903, file: !1601, line: 799, baseType: !1997, size: 1792, offset: 3456)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1601, line: 610, size: 1792, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2085, !2086}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1997, file: !1601, line: 611, baseType: !471, size: 192, align: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1997, file: !1601, line: 618, baseType: !662, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1997, file: !1601, line: 619, baseType: !662, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1997, file: !1601, line: 620, baseType: !662, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1997, file: !1601, line: 621, baseType: !662, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1997, file: !1601, line: 622, baseType: !662, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1997, file: !1601, line: 629, baseType: !548, size: 64, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1997, file: !1601, line: 630, baseType: !662, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1997, file: !1601, line: 631, baseType: !7, size: 32, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1997, file: !1601, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1997, file: !1601, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1997, file: !1601, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1997, file: !1601, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1997, file: !1601, line: 662, baseType: !2013, size: 512, offset: 704)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !45, line: 118, size: 512, elements: !2014)
!2014 = !{!2015, !2023, !2024, !2029, !2081, !2082, !2083, !2084}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2013, file: !45, line: 119, baseType: !2016, size: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2017, line: 9, size: 256, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2016, file: !2017, line: 10, baseType: !471, size: 192, align: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2016, file: !2017, line: 11, baseType: !2021, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2022, line: 29, baseType: !548)
!2022 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2013, file: !45, line: 120, baseType: !2021, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2013, file: !45, line: 121, baseType: !2025, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!44, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2013, file: !45, line: 122, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !45, line: 159, size: 512, align: 512, elements: !2032)
!2032 = !{!2033, !2058, !2059, !2062, !2067, !2068, !2076, !2080}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2031, file: !45, line: 160, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !45, line: 215, size: 4608, align: 512, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2035, file: !45, line: 216, baseType: !557, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2035, file: !45, line: 217, baseType: !7, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2035, file: !45, line: 218, baseType: !7, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2035, file: !45, line: 219, baseType: !7, size: 32, offset: 96)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2035, file: !45, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2035, file: !45, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2035, file: !45, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2035, file: !45, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2035, file: !45, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2035, file: !45, line: 226, baseType: !7, size: 32, offset: 160)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2035, file: !45, line: 227, baseType: !240, size: 16, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2035, file: !45, line: 228, baseType: !240, size: 16, offset: 208)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2035, file: !45, line: 229, baseType: !7, size: 32, offset: 224)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2035, file: !45, line: 235, baseType: !2021, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2035, file: !45, line: 236, baseType: !2028, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2035, file: !45, line: 237, baseType: !2021, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2035, file: !45, line: 238, baseType: !2028, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2035, file: !45, line: 239, baseType: !2055, size: 4096, align: 512, offset: 512)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2031, size: 4096, align: 512, elements: !2056)
!2056 = !{!2057}
!2057 = !DISubrange(count: 8)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2031, file: !45, line: 161, baseType: !7, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2031, file: !45, line: 162, baseType: !2060, size: 32, offset: 96)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !151, line: 32, baseType: !2061)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !389, line: 96, baseType: !85)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2031, file: !45, line: 163, baseType: !2063, size: 32, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !872, line: 274, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !872, line: 274, size: 32, elements: !2065)
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2064, file: !872, line: 274, baseType: !876, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2031, file: !45, line: 164, baseType: !2028, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2031, file: !45, line: 165, baseType: !2069, size: 128, offset: 256)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2017, line: 14, size: 128, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2069, file: !2017, line: 15, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !472, line: 26, size: 128, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2072, file: !472, line: 27, baseType: !488, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2072, file: !472, line: 28, baseType: !476, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2031, file: !45, line: 166, baseType: !2077, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2021}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2031, file: !45, line: 167, baseType: !2021, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2013, file: !45, line: 123, baseType: !153, size: 8, offset: 448)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2013, file: !45, line: 124, baseType: !153, size: 8, offset: 456)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2013, file: !45, line: 125, baseType: !153, size: 8, offset: 464)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2013, file: !45, line: 126, baseType: !153, size: 8, offset: 472)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1997, file: !1601, line: 671, baseType: !2013, size: 512, offset: 1216)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1997, file: !1601, line: 679, baseType: !2087, size: 64, offset: 1728)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1903, file: !1601, line: 800, baseType: !2089, size: 64, offset: 5248)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1601, line: 800, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1903, file: !1601, line: 809, baseType: !2093, size: 64, offset: 5312)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1601, line: 70, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1903, file: !1601, line: 825, baseType: !2096, size: 2048, align: 512, offset: 5632)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1601, line: 509, size: 2048, align: 512, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2096, file: !1601, line: 511, baseType: !662, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2096, file: !1601, line: 512, baseType: !662, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2096, file: !1601, line: 513, baseType: !662, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2096, file: !1601, line: 514, baseType: !662, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2096, file: !1601, line: 515, baseType: !662, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2096, file: !1601, line: 516, baseType: !662, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2096, file: !1601, line: 518, baseType: !662, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2096, file: !1601, line: 519, baseType: !662, size: 64, offset: 448)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2096, file: !1601, line: 520, baseType: !548, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2096, file: !1601, line: 522, baseType: !662, size: 64, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2096, file: !1601, line: 523, baseType: !662, size: 64, offset: 640)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2096, file: !1601, line: 524, baseType: !548, size: 64, offset: 704)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2096, file: !1601, line: 526, baseType: !548, size: 64, offset: 768)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2096, file: !1601, line: 527, baseType: !662, size: 64, offset: 832)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2096, file: !1601, line: 529, baseType: !662, size: 64, offset: 896)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2096, file: !1601, line: 530, baseType: !662, size: 64, offset: 960)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2096, file: !1601, line: 531, baseType: !662, size: 64, offset: 1024)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2096, file: !1601, line: 532, baseType: !662, size: 64, offset: 1088)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2096, file: !1601, line: 533, baseType: !662, size: 64, offset: 1152)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2096, file: !1601, line: 535, baseType: !662, size: 64, offset: 1216)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2096, file: !1601, line: 536, baseType: !662, size: 64, offset: 1280)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2096, file: !1601, line: 537, baseType: !662, size: 64, offset: 1344)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2096, file: !1601, line: 538, baseType: !662, size: 64, offset: 1408)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2096, file: !1601, line: 539, baseType: !662, size: 64, offset: 1472)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2096, file: !1601, line: 540, baseType: !662, size: 64, offset: 1536)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2096, file: !1601, line: 541, baseType: !662, size: 64, offset: 1600)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2096, file: !1601, line: 542, baseType: !662, size: 64, offset: 1664)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2096, file: !1601, line: 543, baseType: !662, size: 64, offset: 1728)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1903, file: !1601, line: 833, baseType: !7, size: 32, offset: 7680)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1903, file: !1601, line: 836, baseType: !7, size: 32, offset: 7712)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1903, file: !1601, line: 837, baseType: !85, size: 32, offset: 7744)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1903, file: !1601, line: 838, baseType: !2130, size: 64, offset: 7808)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2133, line: 19, baseType: !2134)
!2133 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2133, line: 19, size: 64, elements: !2135)
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2134, file: !2133, line: 19, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 64, elements: !2138)
!2138 = !{!2139}
!2139 = !DISubrange(count: 1)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1903, file: !1601, line: 839, baseType: !2141, size: 64, offset: 7872)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1903, file: !1601, line: 840, baseType: !2132, size: 64, offset: 7936)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1903, file: !1601, line: 841, baseType: !130, size: 64, offset: 8000)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1903, file: !1601, line: 843, baseType: !240, size: 16, offset: 8064)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1903, file: !1601, line: 845, baseType: !240, size: 16, offset: 8080)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1903, file: !1601, line: 848, baseType: !85, size: 32, offset: 8096)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1903, file: !1601, line: 849, baseType: !2148, size: 32, offset: 8128)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1601, line: 718, size: 32, elements: !2149)
!2149 = !{!2150, !2157}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2148, file: !1601, line: 724, baseType: !2151, size: 32)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !1601, line: 719, size: 32, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2156}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2151, file: !1601, line: 720, baseType: !153, size: 8)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2151, file: !1601, line: 721, baseType: !153, size: 8, offset: 8)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2151, file: !1601, line: 722, baseType: !153, size: 8, offset: 16)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2151, file: !1601, line: 723, baseType: !153, size: 8, offset: 24)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2148, file: !1601, line: 725, baseType: !712, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1903, file: !1601, line: 850, baseType: !258, size: 128, offset: 8192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1903, file: !1601, line: 851, baseType: !2160, size: 64, offset: 8320)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1601, line: 60, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1903, file: !1601, line: 855, baseType: !403, size: 64, offset: 8384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1903, file: !1601, line: 856, baseType: !153, size: 8, offset: 8448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1903, file: !1601, line: 857, baseType: !153, size: 8, offset: 8456)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1903, file: !1601, line: 858, baseType: !85, size: 32, offset: 8480)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1903, file: !1601, line: 859, baseType: !258, size: 128, offset: 8512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1903, file: !1601, line: 860, baseType: !85, size: 32, offset: 8640)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1903, file: !1601, line: 861, baseType: !258, size: 128, offset: 8704)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1903, file: !1601, line: 873, baseType: !2170, size: 256, offset: 8832)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1601, line: 376, size: 256, elements: !2171)
!2171 = !{!2172, !2173, !2174, !2175}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2170, file: !1601, line: 381, baseType: !403, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2170, file: !1601, line: 384, baseType: !664, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2170, file: !1601, line: 389, baseType: !664, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2170, file: !1601, line: 392, baseType: !664, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1903, file: !1601, line: 875, baseType: !258, size: 128, offset: 9088)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1903, file: !1601, line: 877, baseType: !2178, size: 320, offset: 9216)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2179, line: 86, size: 320, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2180 = !{!2181, !2182, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2178, file: !2179, line: 87, baseType: !85, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2178, file: !2179, line: 88, baseType: !258, size: 128, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2178, file: !2179, line: 89, baseType: !258, size: 128, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1903, file: !1601, line: 878, baseType: !471, size: 192, align: 64, offset: 9536)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1903, file: !1601, line: 881, baseType: !2186, size: 64, offset: 9728)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1675, line: 733, size: 10240, elements: !2188)
!2188 = !{!2189, !2336}
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !1675, line: 734, baseType: !2190, size: 10240)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2187, file: !1675, line: 734, size: 10240, elements: !2191)
!2191 = !{!2192, !2196, !2209, !2213, !2214, !2215, !2216, !2217, !2218, !2227, !2228, !2229, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2268, !2270, !2273, !2316, !2317, !2318, !2321, !2322, !2323, !2326, !2327, !2328, !2334, !2335}
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1675, line: 739, baseType: !2193, size: 512, align: 512)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1675, line: 739, size: 512, align: 512, elements: !2194)
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2193, file: !1675, line: 747, baseType: !225, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2190, file: !1675, line: 750, baseType: !2197, size: 128, offset: 512)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2198, line: 218, size: 128, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2199 = !{!2200, !2207, !2208}
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2198, line: 219, baseType: !2201, size: 32)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2198, line: 219, size: 32, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2201, file: !2198, line: 220, baseType: !205, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2201, file: !2198, line: 221, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2198, line: 197, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2198, line: 197, elements: !1449)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2197, file: !2198, line: 223, baseType: !7, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2197, file: !2198, line: 224, baseType: !130, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2190, file: !1675, line: 752, baseType: !2210, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!403, !516, !403, !403, !403, !403}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2190, file: !1675, line: 756, baseType: !403, size: 64, offset: 704)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2190, file: !1675, line: 757, baseType: !403, size: 64, offset: 768)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2190, file: !1675, line: 760, baseType: !403, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2190, file: !1675, line: 761, baseType: !403, size: 64, offset: 896)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2190, file: !1675, line: 763, baseType: !403, size: 64, offset: 960)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2190, file: !1675, line: 764, baseType: !2219, size: 64, offset: 1024)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2221, line: 299, baseType: !2222)
!2221 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2221, line: 299, size: 64, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2222, file: !2221, line: 299, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2226, line: 18, baseType: !403)
!2226 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2190, file: !1675, line: 773, baseType: !225, size: 32, offset: 1088)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2190, file: !1675, line: 785, baseType: !225, size: 32, offset: 1120)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2190, file: !1675, line: 795, baseType: !2230, size: 64, offset: 1152)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1675, line: 726, size: 128, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2231, file: !1675, line: 727, baseType: !662, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2231, file: !1675, line: 728, baseType: !85, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2190, file: !1675, line: 801, baseType: !403, size: 64, offset: 1216)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2190, file: !1675, line: 804, baseType: !542, size: 64, offset: 1280)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2190, file: !1675, line: 806, baseType: !85, size: 32, offset: 1344)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2190, file: !1675, line: 808, baseType: !205, size: 32, offset: 1376)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2190, file: !1675, line: 823, baseType: !687, size: 320, offset: 1408)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2190, file: !1675, line: 825, baseType: !258, size: 128, offset: 1728)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2190, file: !1675, line: 845, baseType: !85, size: 32, offset: 1856)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2190, file: !1675, line: 849, baseType: !403, size: 64, offset: 1920)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2190, file: !1675, line: 850, baseType: !403, size: 64, offset: 1984)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2190, file: !1675, line: 852, baseType: !403, size: 64, offset: 2048)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2190, file: !1675, line: 853, baseType: !403, size: 64, offset: 2112)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2190, file: !1675, line: 854, baseType: !544, size: 64, offset: 2176)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2190, file: !1675, line: 855, baseType: !403, size: 64, offset: 2240)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2190, file: !1675, line: 856, baseType: !403, size: 64, offset: 2304)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2190, file: !1675, line: 857, baseType: !403, size: 64, offset: 2368)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2190, file: !1675, line: 858, baseType: !403, size: 64, offset: 2432)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2190, file: !1675, line: 865, baseType: !876, size: 32, offset: 2496)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2190, file: !1675, line: 867, baseType: !205, size: 32, offset: 2528)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2190, file: !1675, line: 869, baseType: !403, size: 64, offset: 2560)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2190, file: !1675, line: 869, baseType: !403, size: 64, offset: 2624)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2190, file: !1675, line: 869, baseType: !403, size: 64, offset: 2688)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2190, file: !1675, line: 869, baseType: !403, size: 64, offset: 2752)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2190, file: !1675, line: 870, baseType: !403, size: 64, offset: 2816)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2190, file: !1675, line: 870, baseType: !403, size: 64, offset: 2880)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2190, file: !1675, line: 870, baseType: !403, size: 64, offset: 2944)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2190, file: !1675, line: 871, baseType: !403, size: 64, offset: 3008)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2190, file: !1675, line: 871, baseType: !403, size: 64, offset: 3072)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2190, file: !1675, line: 871, baseType: !403, size: 64, offset: 3136)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2190, file: !1675, line: 871, baseType: !403, size: 64, offset: 3200)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2190, file: !1675, line: 873, baseType: !2265, size: 3328, offset: 3264)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 3328, elements: !2266)
!2266 = !{!2267}
!2267 = !DISubrange(count: 52)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2190, file: !1675, line: 875, baseType: !2269, size: 1280, offset: 6592)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 1280, elements: !615)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2190, file: !1675, line: 877, baseType: !2271, size: 64, offset: 7872)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1675, line: 877, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2190, file: !1675, line: 880, baseType: !2274, size: 1088, offset: 7936)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2275, line: 72, baseType: !2276)
!2275 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2275, line: 23, size: 1088, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2285, !2286, !2287, !2288, !2313, !2314, !2315}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2276, file: !2275, line: 28, baseType: !662, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2276, file: !2275, line: 38, baseType: !544, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2276, file: !2275, line: 40, baseType: !403, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2276, file: !2275, line: 43, baseType: !687, size: 320, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2276, file: !2275, line: 44, baseType: !2283, size: 64, offset: 512)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2275, line: 44, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !2275, line: 48, baseType: !403, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2276, file: !2275, line: 59, baseType: !552, size: 256, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2276, file: !2275, line: 60, baseType: !130, size: 64, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2276, file: !2275, line: 61, baseType: !2289, size: 64, offset: 960)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2292, line: 13, size: 1216, elements: !2293)
!2292 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2291, file: !2292, line: 14, baseType: !130, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2291, file: !2292, line: 15, baseType: !403, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2291, file: !2292, line: 17, baseType: !403, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2291, file: !2292, line: 17, baseType: !403, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2291, file: !2292, line: 18, baseType: !403, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2291, file: !2292, line: 18, baseType: !403, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2291, file: !2292, line: 19, baseType: !426, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2291, file: !2292, line: 21, baseType: !131, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2291, file: !2292, line: 23, baseType: !131, size: 64, offset: 512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2291, file: !2292, line: 24, baseType: !131, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2291, file: !2292, line: 25, baseType: !131, size: 64, offset: 640)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2291, file: !2292, line: 26, baseType: !131, size: 64, offset: 704)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2291, file: !2292, line: 27, baseType: !131, size: 64, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2291, file: !2292, line: 28, baseType: !131, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2291, file: !2292, line: 29, baseType: !131, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2291, file: !2292, line: 30, baseType: !131, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2291, file: !2292, line: 31, baseType: !131, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2291, file: !2292, line: 32, baseType: !131, size: 64, offset: 1088)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2291, file: !2292, line: 33, baseType: !131, size: 64, offset: 1152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2276, file: !2275, line: 63, baseType: !225, size: 32, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2276, file: !2275, line: 69, baseType: !238, size: 16, offset: 1056)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2276, file: !2275, line: 70, baseType: !1313, size: 16, offset: 1072)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !1675, line: 882, baseType: !403, size: 64, offset: 9024)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2190, file: !1675, line: 885, baseType: !205, size: 32, offset: 9088)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2190, file: !1675, line: 886, baseType: !2319, size: 64, offset: 9152)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1675, line: 732, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2190, file: !1675, line: 901, baseType: !827, size: 64, offset: 9216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2190, file: !1675, line: 904, baseType: !516, size: 64, offset: 9280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2190, file: !1675, line: 906, baseType: !2324, size: 64, offset: 9344)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1675, line: 906, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2190, file: !1675, line: 930, baseType: !225, size: 32, offset: 9408)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2190, file: !1675, line: 933, baseType: !225, size: 32, offset: 9440)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2190, file: !1675, line: 935, baseType: !2329, size: 64, offset: 9472)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !63, line: 103, size: 64, elements: !2330)
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2329, file: !63, line: 104, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !63, line: 101, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2190, file: !1675, line: 940, baseType: !542, size: 64, offset: 9536)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2190, file: !1675, line: 942, baseType: !1420, size: 256, offset: 9600)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2187, file: !1675, line: 986, baseType: !2337, offset: 10240)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, elements: !634)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1903, file: !1601, line: 882, baseType: !2186, size: 64, offset: 9792)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1903, file: !1601, line: 884, baseType: !85, size: 32, offset: 9856)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1903, file: !1601, line: 885, baseType: !85, size: 32, offset: 9888)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1903, file: !1601, line: 886, baseType: !85, size: 32, offset: 9920)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1903, file: !1601, line: 888, baseType: !85, size: 32, offset: 9952)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1903, file: !1601, line: 890, baseType: !403, size: 64, offset: 9984)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1903, file: !1601, line: 893, baseType: !7, size: 32, offset: 10048)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1903, file: !1601, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1903, file: !1601, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1903, file: !1601, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1903, file: !1601, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1903, file: !1601, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1903, file: !1601, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1903, file: !1601, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1903, file: !1601, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1903, file: !1601, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1903, file: !1601, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1903, file: !1601, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1903, file: !1601, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1903, file: !1601, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1903, file: !1601, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1903, file: !1601, line: 969, baseType: !403, size: 64, offset: 10176)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1903, file: !1601, line: 971, baseType: !2361, size: 448, offset: 10240)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !50, line: 25, size: 448, elements: !2362)
!2362 = !{!2363, !2364, !2369}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2361, file: !50, line: 26, baseType: !403, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2361, file: !50, line: 27, baseType: !2365, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!131, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !2361, file: !50, line: 28, baseType: !2370, size: 320, offset: 128)
!2370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2361, file: !50, line: 28, size: 320, elements: !2371)
!2371 = !{!2372, !2382, !2407}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2370, file: !50, line: 37, baseType: !2373, size: 320)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2370, file: !50, line: 30, size: 320, elements: !2374)
!2374 = !{!2375, !2377, !2378, !2379, !2380, !2381}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2373, file: !50, line: 31, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2373, file: !50, line: 32, baseType: !712, size: 32, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2373, file: !50, line: 33, baseType: !712, size: 32, offset: 96)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2373, file: !50, line: 34, baseType: !712, size: 32, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2373, file: !50, line: 35, baseType: !662, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2373, file: !50, line: 36, baseType: !2376, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2370, file: !50, line: 47, baseType: !2383, size: 192)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2370, file: !50, line: 39, size: 192, elements: !2384)
!2384 = !{!2385, !2386, !2387, !2406}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2383, file: !50, line: 40, baseType: !2060, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2383, file: !50, line: 41, baseType: !49, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2383, file: !50, line: 42, baseType: !2388, size: 64, offset: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2383, file: !50, line: 42, size: 64, elements: !2389)
!2389 = !{!2390, !2398}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2388, file: !50, line: 43, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2393, line: 7, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2394 = !{!2395, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2392, file: !2393, line: 8, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !389, line: 93, baseType: !550)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2392, file: !2393, line: 9, baseType: !550, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2388, file: !50, line: 44, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2401, line: 7, size: 64, elements: !2402)
!2401 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2402 = !{!2403, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2400, file: !2401, line: 8, baseType: !2404, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2401, line: 5, baseType: !679)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2400, file: !2401, line: 9, baseType: !679, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2383, file: !50, line: 46, baseType: !662, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2370, file: !50, line: 55, baseType: !2408, size: 256)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2370, file: !50, line: 49, size: 256, elements: !2409)
!2409 = !{!2410, !2413, !2414, !2415, !2416}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2408, file: !50, line: 50, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !50, line: 14, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2408, file: !50, line: 51, baseType: !85, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2408, file: !50, line: 52, baseType: !85, size: 32, offset: 96)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2408, file: !50, line: 53, baseType: !403, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2408, file: !50, line: 54, baseType: !403, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1903, file: !1601, line: 973, baseType: !2418, size: 32, offset: 10688)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !151, line: 27, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !389, line: 28, baseType: !85)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1903, file: !1601, line: 974, baseType: !2418, size: 32, offset: 10720)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1903, file: !1601, line: 978, baseType: !403, size: 64, offset: 10752)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1903, file: !1601, line: 987, baseType: !1902, size: 64, offset: 10816)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1903, file: !1601, line: 990, baseType: !1902, size: 64, offset: 10880)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1903, file: !1601, line: 995, baseType: !258, size: 128, offset: 10944)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1903, file: !1601, line: 996, baseType: !258, size: 128, offset: 11072)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1903, file: !1601, line: 997, baseType: !1902, size: 64, offset: 11200)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1903, file: !1601, line: 1005, baseType: !258, size: 128, offset: 11264)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1903, file: !1601, line: 1006, baseType: !258, size: 128, offset: 11392)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1903, file: !1601, line: 1009, baseType: !593, size: 64, offset: 11520)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1903, file: !1601, line: 1010, baseType: !2431, size: 512, offset: 11584)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !615)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1903, file: !1601, line: 1011, baseType: !258, size: 128, offset: 12096)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1903, file: !1601, line: 1012, baseType: !258, size: 128, offset: 12224)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1903, file: !1601, line: 1014, baseType: !1159, size: 64, offset: 12352)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1903, file: !1601, line: 1017, baseType: !1306, size: 64, offset: 12416)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1903, file: !1601, line: 1020, baseType: !1306, size: 64, offset: 12480)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1903, file: !1601, line: 1023, baseType: !130, size: 64, offset: 12544)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1903, file: !1601, line: 1025, baseType: !662, size: 64, offset: 12608)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1903, file: !1601, line: 1026, baseType: !662, size: 64, offset: 12672)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1903, file: !1601, line: 1031, baseType: !662, size: 64, offset: 12736)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1903, file: !1601, line: 1032, baseType: !2442, size: 192, offset: 12800)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1601, line: 324, size: 192, elements: !2443)
!2443 = !{!2444, !2445, !2446}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2442, file: !1601, line: 326, baseType: !662, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2442, file: !1601, line: 327, baseType: !662, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2442, file: !1601, line: 328, baseType: !557, size: 32, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1903, file: !1601, line: 1041, baseType: !403, size: 64, offset: 12992)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1903, file: !1601, line: 1042, baseType: !403, size: 64, offset: 13056)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1903, file: !1601, line: 1045, baseType: !662, size: 64, offset: 13120)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1903, file: !1601, line: 1048, baseType: !662, size: 64, offset: 13184)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1903, file: !1601, line: 1051, baseType: !403, size: 64, offset: 13248)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1903, file: !1601, line: 1052, baseType: !403, size: 64, offset: 13312)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1903, file: !1601, line: 1055, baseType: !2454, size: 640, offset: 13376)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2455, line: 132, size: 640, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2456 = !{!2457, !2463, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2454, file: !2455, line: 133, baseType: !2458, size: 576)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2459, size: 576, elements: !357)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2455, line: 117, size: 192, elements: !2460)
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2459, file: !2455, line: 118, baseType: !662, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2459, file: !2455, line: 119, baseType: !2069, size: 128, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2454, file: !2455, line: 134, baseType: !7, size: 32, offset: 576)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2454, file: !2455, line: 135, baseType: !7, size: 32, offset: 608)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1903, file: !1601, line: 1058, baseType: !2466, size: 448, offset: 14016)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2455, line: 144, size: 448, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2466, file: !2455, line: 145, baseType: !529, size: 128, align: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2466, file: !2455, line: 146, baseType: !552, size: 256, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2466, file: !2455, line: 147, baseType: !7, size: 32, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1903, file: !1601, line: 1064, baseType: !641, size: 64, offset: 14464)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1903, file: !1601, line: 1067, baseType: !641, size: 64, offset: 14528)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1903, file: !1601, line: 1070, baseType: !641, size: 64, offset: 14592)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1903, file: !1601, line: 1074, baseType: !671, size: 64, offset: 14656)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1903, file: !1601, line: 1084, baseType: !2476, size: 128, offset: 14720)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !2477)
!2477 = !{!2478}
!2478 = !DISubrange(count: 16)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1903, file: !1601, line: 1086, baseType: !2480, size: 64, offset: 14848)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1601, line: 55, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1903, file: !1601, line: 1089, baseType: !2483, size: 64, offset: 14912)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2484, line: 12, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2483, file: !2484, line: 13, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2484, line: 8, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1903, file: !1601, line: 1090, baseType: !2490, size: 128, offset: 14976)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2491, line: 13, size: 128, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2490, file: !2491, line: 14, baseType: !258, size: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1903, file: !1601, line: 1097, baseType: !2495, size: 64, offset: 15104)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1601, line: 50, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1903, file: !1601, line: 1100, baseType: !2498, size: 64, offset: 15168)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1601, line: 1100, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1903, file: !1601, line: 1103, baseType: !2501, size: 64, offset: 15232)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1601, line: 53, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1903, file: !1601, line: 1107, baseType: !2504, size: 64, offset: 15296)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1601, line: 56, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1903, file: !1601, line: 1110, baseType: !2507, size: 64, offset: 15360)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2509, line: 93, size: 8768, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2558, !2567, !2568, !2570, !2571, !2572, !2575, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2613, !2614, !2621, !2631, !2634, !2635, !2638, !2639, !2640, !2641, !2642, !2643}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2508, file: !2509, line: 94, baseType: !597, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2508, file: !2509, line: 95, baseType: !225, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2508, file: !2509, line: 96, baseType: !85, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2508, file: !2509, line: 97, baseType: !85, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2508, file: !2509, line: 98, baseType: !258, size: 128, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2508, file: !2509, line: 100, baseType: !619, size: 192, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2508, file: !2509, line: 103, baseType: !1902, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2508, file: !2509, line: 106, baseType: !2519, size: 192, offset: 512)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !832, line: 32, size: 192, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2519, file: !832, line: 33, baseType: !258, size: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2519, file: !832, line: 34, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2524, line: 25, baseType: !2525)
!2524 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2524, line: 23, size: 64, elements: !2526)
!2526 = !{!2527}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2525, file: !2524, line: 24, baseType: !2137, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2508, file: !2509, line: 109, baseType: !606, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2508, file: !2509, line: 112, baseType: !85, size: 32, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2508, file: !2509, line: 114, baseType: !85, size: 32, offset: 800)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2508, file: !2509, line: 115, baseType: !1902, size: 64, offset: 832)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2508, file: !2509, line: 118, baseType: !85, size: 32, offset: 896)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2508, file: !2509, line: 119, baseType: !7, size: 32, offset: 928)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2508, file: !2509, line: 121, baseType: !2535, size: 64, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2509, line: 80, size: 448, elements: !2537)
!2537 = !{!2538, !2539, !2545}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2536, file: !2509, line: 81, baseType: !225, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2536, file: !2509, line: 82, baseType: !2540, size: 128, offset: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2509, line: 75, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2540, file: !2509, line: 76, baseType: !1902, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2540, file: !2509, line: 77, baseType: !2544, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2536, file: !2509, line: 83, baseType: !1160, size: 256, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2508, file: !2509, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2508, file: !2509, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2508, file: !2509, line: 138, baseType: !7, size: 32, offset: 1056)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2508, file: !2509, line: 139, baseType: !258, size: 128, offset: 1088)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2508, file: !2509, line: 142, baseType: !2013, size: 512, offset: 1216)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2508, file: !2509, line: 143, baseType: !2021, size: 64, offset: 1728)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2508, file: !2509, line: 150, baseType: !2553, size: 256, offset: 1792)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2554, size: 256, elements: !1296)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2509, line: 38, size: 128, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2554, file: !2509, line: 39, baseType: !662, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2554, file: !2509, line: 40, baseType: !662, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2508, file: !2509, line: 156, baseType: !2559, size: 192, offset: 2048)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2509, line: 66, size: 192, elements: !2560)
!2560 = !{!2561}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2559, file: !2509, line: 67, baseType: !2562, size: 192)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2509, line: 47, size: 192, elements: !2563)
!2563 = !{!2564, !2565, !2566}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2562, file: !2509, line: 48, baseType: !544, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2562, file: !2509, line: 49, baseType: !544, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2562, file: !2509, line: 50, baseType: !544, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2508, file: !2509, line: 160, baseType: !2454, size: 640, offset: 2240)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2508, file: !2509, line: 163, baseType: !2569, size: 256, offset: 2880)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 256, elements: !615)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2508, file: !2509, line: 169, baseType: !593, size: 64, offset: 3136)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2508, file: !2509, line: 172, baseType: !85, size: 32, offset: 3200)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2508, file: !2509, line: 174, baseType: !2573, size: 64, offset: 3264)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2509, line: 174, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2508, file: !2509, line: 185, baseType: !2576, size: 64, offset: 3328)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !872, line: 860, baseType: !2577)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !872, line: 853, size: 64, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2577, file: !872, line: 858, baseType: !871, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2577, file: !872, line: 859, baseType: !205, size: 32, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2508, file: !2509, line: 186, baseType: !662, size: 64, offset: 3392)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2508, file: !2509, line: 186, baseType: !662, size: 64, offset: 3456)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2508, file: !2509, line: 186, baseType: !662, size: 64, offset: 3520)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2508, file: !2509, line: 186, baseType: !662, size: 64, offset: 3584)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2508, file: !2509, line: 187, baseType: !662, size: 64, offset: 3648)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2508, file: !2509, line: 188, baseType: !662, size: 64, offset: 3712)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2508, file: !2509, line: 189, baseType: !2442, size: 192, offset: 3776)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2508, file: !2509, line: 190, baseType: !403, size: 64, offset: 3968)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2508, file: !2509, line: 190, baseType: !403, size: 64, offset: 4032)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2508, file: !2509, line: 190, baseType: !403, size: 64, offset: 4096)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2508, file: !2509, line: 190, baseType: !403, size: 64, offset: 4160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2508, file: !2509, line: 191, baseType: !403, size: 64, offset: 4224)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2508, file: !2509, line: 191, baseType: !403, size: 64, offset: 4288)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2508, file: !2509, line: 191, baseType: !403, size: 64, offset: 4352)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2508, file: !2509, line: 191, baseType: !403, size: 64, offset: 4416)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2508, file: !2509, line: 192, baseType: !403, size: 64, offset: 4480)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2508, file: !2509, line: 192, baseType: !403, size: 64, offset: 4544)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2508, file: !2509, line: 192, baseType: !403, size: 64, offset: 4608)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2508, file: !2509, line: 192, baseType: !403, size: 64, offset: 4672)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2508, file: !2509, line: 193, baseType: !403, size: 64, offset: 4736)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2508, file: !2509, line: 193, baseType: !403, size: 64, offset: 4800)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2508, file: !2509, line: 194, baseType: !2603, size: 448, offset: 4864)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2604, line: 12, size: 448, elements: !2605)
!2604 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2603, file: !2604, line: 15, baseType: !662, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2603, file: !2604, line: 17, baseType: !662, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2603, file: !2604, line: 19, baseType: !662, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2603, file: !2604, line: 21, baseType: !662, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2603, file: !2604, line: 29, baseType: !662, size: 64, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2603, file: !2604, line: 35, baseType: !662, size: 64, offset: 320)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2603, file: !2604, line: 44, baseType: !662, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2508, file: !2509, line: 202, baseType: !664, size: 64, offset: 5312)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2508, file: !2509, line: 213, baseType: !2615, size: 2048, offset: 5376)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 2048, elements: !2477)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2617, line: 43, size: 128, elements: !2618)
!2617 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2616, file: !2617, line: 44, baseType: !402, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2616, file: !2617, line: 45, baseType: !402, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2508, file: !2509, line: 216, baseType: !2622, size: 448, offset: 7424)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2509, line: 30, size: 448, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2622, file: !2509, line: 31, baseType: !85, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2622, file: !2509, line: 32, baseType: !131, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2622, file: !2509, line: 33, baseType: !403, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2622, file: !2509, line: 34, baseType: !662, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2622, file: !2509, line: 34, baseType: !662, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2622, file: !2509, line: 35, baseType: !403, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2622, file: !2509, line: 35, baseType: !403, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2508, file: !2509, line: 219, baseType: !2632, size: 64, offset: 7872)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2509, line: 219, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2508, file: !2509, line: 222, baseType: !7, size: 32, offset: 7936)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2508, file: !2509, line: 223, baseType: !2636, size: 64, offset: 8000)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2509, line: 223, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2508, file: !2509, line: 230, baseType: !150, size: 8, offset: 8064)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2508, file: !2509, line: 231, baseType: !717, size: 16, offset: 8080)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2508, file: !2509, line: 232, baseType: !717, size: 16, offset: 8096)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2508, file: !2509, line: 234, baseType: !2186, size: 64, offset: 8128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2508, file: !2509, line: 237, baseType: !552, size: 256, offset: 8192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2508, file: !2509, line: 243, baseType: !687, size: 320, offset: 8448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1903, file: !1601, line: 1111, baseType: !2645, size: 64, offset: 15424)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2509, line: 20, size: 16640, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2646, file: !2509, line: 21, baseType: !205, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2646, file: !2509, line: 22, baseType: !597, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2646, file: !2509, line: 23, baseType: !619, size: 192, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2646, file: !2509, line: 24, baseType: !2652, size: 16384, offset: 256)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2653, size: 16384, elements: !361)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !832, line: 51, size: 256, elements: !2654)
!2654 = !{!2655}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2653, file: !832, line: 52, baseType: !2656, size: 256)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !832, line: 37, size: 256, elements: !2657)
!2657 = !{!2658, !2665, !2666, !2670}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2656, file: !832, line: 39, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2660, line: 83, baseType: !2661)
!2660 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2660, line: 82, baseType: !2663)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !85}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2656, file: !832, line: 40, baseType: !403, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2656, file: !832, line: 46, baseType: !2667, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2660, line: 86, baseType: !2668)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2660, line: 85, baseType: !1525)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2656, file: !832, line: 48, baseType: !2523, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1903, file: !1601, line: 1112, baseType: !2523, size: 64, offset: 15488)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1903, file: !1601, line: 1113, baseType: !2523, size: 64, offset: 15552)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1903, file: !1601, line: 1115, baseType: !2523, size: 64, offset: 15616)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1903, file: !1601, line: 1116, baseType: !2519, size: 192, offset: 15680)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1903, file: !1601, line: 1117, baseType: !403, size: 64, offset: 15872)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1903, file: !1601, line: 1118, baseType: !400, size: 64, offset: 15936)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1903, file: !1601, line: 1119, baseType: !7, size: 32, offset: 16000)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1903, file: !1601, line: 1121, baseType: !532, size: 64, offset: 16064)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1903, file: !1601, line: 1125, baseType: !2680, size: 64, offset: 16128)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1601, line: 43, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1903, file: !1601, line: 1127, baseType: !447, size: 32, offset: 16192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1903, file: !1601, line: 1128, baseType: !7, size: 32, offset: 16224)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1903, file: !1601, line: 1130, baseType: !2685, size: 128, offset: 16256)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2686, line: 37, size: 128, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2687 = !{!2688, !2689, !2690}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2685, file: !2686, line: 38, baseType: !85, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2685, file: !2686, line: 39, baseType: !225, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2685, file: !2686, line: 40, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2686, line: 24, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1903, file: !1601, line: 1131, baseType: !2694, size: 256, offset: 16384)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2695, line: 12, size: 256, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2694, file: !2695, line: 13, baseType: !356, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2694, file: !2695, line: 14, baseType: !403, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2694, file: !2695, line: 15, baseType: !403, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2694, file: !2695, line: 16, baseType: !150, size: 8, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1903, file: !1601, line: 1134, baseType: !662, size: 64, offset: 16640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1903, file: !1601, line: 1135, baseType: !662, size: 64, offset: 16704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1903, file: !1601, line: 1138, baseType: !205, size: 32, offset: 16768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1903, file: !1601, line: 1141, baseType: !557, size: 32, offset: 16800)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1903, file: !1601, line: 1143, baseType: !2706, size: 64, offset: 16832)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1601, line: 735, size: 64, elements: !2707)
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2706, file: !1601, line: 736, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1903, file: !1601, line: 1147, baseType: !2072, size: 128, offset: 16896)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1903, file: !1601, line: 1149, baseType: !1902, size: 64, offset: 17024)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1903, file: !1601, line: 1151, baseType: !2713, size: 64, offset: 17088)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1601, line: 1151, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1903, file: !1601, line: 1188, baseType: !130, size: 64, offset: 17152)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1903, file: !1601, line: 1191, baseType: !2717, size: 64, offset: 17216)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1601, line: 44, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1903, file: !1601, line: 1194, baseType: !2720, size: 64, offset: 17280)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1601, line: 45, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1903, file: !1601, line: 1197, baseType: !2723, size: 64, offset: 17344)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1601, line: 61, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1903, file: !1601, line: 1199, baseType: !2726, size: 64, offset: 17408)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2728, line: 99, size: 128, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2729 = !{!2730, !2731, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2727, file: !2728, line: 100, baseType: !542, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2727, file: !2728, line: 101, baseType: !225, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2727, file: !2728, line: 103, baseType: !240, size: 16, offset: 96)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1903, file: !1601, line: 1202, baseType: !2734, size: 64, offset: 17472)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1601, line: 48, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1903, file: !1601, line: 1205, baseType: !403, size: 64, offset: 17536)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1903, file: !1601, line: 1206, baseType: !2738, size: 64, offset: 17600)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !832, line: 14, baseType: !2740)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !832, line: 12, size: 384, elements: !2741)
!2741 = !{!2742}
!2742 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !832, line: 13, baseType: !2743, size: 384)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !832, line: 13, size: 384, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2743, file: !832, line: 13, baseType: !85, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2743, file: !832, line: 13, baseType: !85, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2743, file: !832, line: 13, baseType: !85, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2743, file: !832, line: 13, baseType: !2749, size: 256, offset: 128)
!2749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2750, line: 37, size: 256, elements: !2751)
!2750 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2751 = !{!2752, !2757, !2770, !2776, !2785, !2812, !2817}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2749, file: !2750, line: 42, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 39, size: 64, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2753, file: !2750, line: 40, baseType: !2419, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2753, file: !2750, line: 41, baseType: !453, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2749, file: !2750, line: 50, baseType: !2758, size: 192)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 45, size: 192, elements: !2759)
!2759 = !{!2760, !2762, !2763, !2769}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2758, file: !2750, line: 46, baseType: !2761, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !389, line: 95, baseType: !85)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2758, file: !2750, line: 47, baseType: !85, size: 32, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2758, file: !2750, line: 48, baseType: !2764, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2750, line: 11, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2750, line: 8, size: 64, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2765, file: !2750, line: 9, baseType: !85, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2765, file: !2750, line: 10, baseType: !130, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2758, file: !2750, line: 49, baseType: !85, size: 32, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2749, file: !2750, line: 57, baseType: !2771, size: 128)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 53, size: 128, elements: !2772)
!2772 = !{!2773, !2774, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2771, file: !2750, line: 54, baseType: !2419, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2771, file: !2750, line: 55, baseType: !453, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2771, file: !2750, line: 56, baseType: !2764, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2749, file: !2750, line: 66, baseType: !2777, size: 256)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 60, size: 256, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2784}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2777, file: !2750, line: 61, baseType: !2419, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2777, file: !2750, line: 62, baseType: !453, size: 32, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2777, file: !2750, line: 63, baseType: !85, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2777, file: !2750, line: 64, baseType: !2783, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !389, line: 94, baseType: !390)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2777, file: !2750, line: 65, baseType: !2783, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2749, file: !2750, line: 105, baseType: !2786, size: 256)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 69, size: 256, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2786, file: !2750, line: 70, baseType: !130, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, scope: !2786, file: !2750, line: 79, baseType: !2790, size: 192, offset: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2786, file: !2750, line: 79, size: 192, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2801, !2806}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2790, file: !2750, line: 81, baseType: !85, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2790, file: !2750, line: 86, baseType: !717, size: 16)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2790, file: !2750, line: 92, baseType: !2795, size: 192)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2790, file: !2750, line: 88, size: 192, elements: !2796)
!2796 = !{!2797, !2799, !2800}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2795, file: !2750, line: 89, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !2056)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2795, file: !2750, line: 90, baseType: !130, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2795, file: !2750, line: 91, baseType: !130, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2790, file: !2750, line: 97, baseType: !2802, size: 96)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2790, file: !2750, line: 94, size: 96, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2802, file: !2750, line: 95, baseType: !2798, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2802, file: !2750, line: 96, baseType: !713, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2790, file: !2750, line: 103, baseType: !2807, size: 128)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2790, file: !2750, line: 99, size: 128, elements: !2808)
!2808 = !{!2809, !2810, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2807, file: !2750, line: 100, baseType: !403, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2807, file: !2750, line: 101, baseType: !713, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2807, file: !2750, line: 102, baseType: !713, size: 32, offset: 96)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2749, file: !2750, line: 111, baseType: !2813, size: 128)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 108, size: 128, elements: !2814)
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2813, file: !2750, line: 109, baseType: !131, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2813, file: !2750, line: 110, baseType: !85, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2749, file: !2750, line: 118, baseType: !2818, size: 128)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2750, line: 114, size: 128, elements: !2819)
!2819 = !{!2820, !2821, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2818, file: !2750, line: 115, baseType: !130, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2818, file: !2750, line: 116, baseType: !85, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2818, file: !2750, line: 117, baseType: !7, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1903, file: !1601, line: 1208, baseType: !2603, size: 448, offset: 17664)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1903, file: !1601, line: 1215, baseType: !662, size: 64, offset: 18112)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1903, file: !1601, line: 1217, baseType: !662, size: 64, offset: 18176)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1903, file: !1601, line: 1219, baseType: !662, size: 64, offset: 18240)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1903, file: !1601, line: 1223, baseType: !2828, size: 64, offset: 18304)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2829, line: 99, baseType: !2830)
!2829 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2829, line: 99, size: 64, elements: !2831)
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2830, file: !2829, line: 99, baseType: !2137, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1903, file: !1601, line: 1225, baseType: !871, size: 32, offset: 18368)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1903, file: !1601, line: 1226, baseType: !85, size: 32, offset: 18400)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1903, file: !1601, line: 1227, baseType: !85, size: 32, offset: 18432)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1903, file: !1601, line: 1231, baseType: !2837, size: 64, offset: 18496)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1601, line: 1231, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1903, file: !1601, line: 1233, baseType: !258, size: 128, offset: 18560)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1903, file: !1601, line: 1240, baseType: !2841, size: 64, offset: 18688)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1601, line: 62, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1903, file: !1601, line: 1242, baseType: !2844, size: 64, offset: 18752)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1601, line: 1242, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1903, file: !1601, line: 1244, baseType: !258, size: 128, offset: 18816)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1903, file: !1601, line: 1245, baseType: !2848, size: 64, offset: 18944)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1601, line: 51, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1903, file: !1601, line: 1246, baseType: !552, size: 256, offset: 19008)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1903, file: !1601, line: 1247, baseType: !7, size: 32, offset: 19264)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1903, file: !1601, line: 1250, baseType: !2853, size: 64, offset: 19328)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1601, line: 57, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1903, file: !1601, line: 1251, baseType: !552, size: 256, offset: 19392)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1903, file: !1601, line: 1252, baseType: !258, size: 128, offset: 19648)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1903, file: !1601, line: 1259, baseType: !2858, size: 64, offset: 19776)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1601, line: 54, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1903, file: !1601, line: 1260, baseType: !717, size: 16, offset: 19840)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1903, file: !1601, line: 1261, baseType: !717, size: 16, offset: 19856)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1903, file: !1601, line: 1314, baseType: !2863, size: 64, offset: 19904)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2865, line: 62, size: 256, align: 256, elements: !2866)
!2865 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2864, file: !2865, line: 75, baseType: !713, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2864, file: !2865, line: 90, baseType: !713, size: 32, offset: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2864, file: !2865, line: 112, baseType: !663, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2864, file: !2865, line: 132, baseType: !713, size: 32, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2864, file: !2865, line: 140, baseType: !713, size: 32, offset: 160)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2864, file: !2865, line: 149, baseType: !713, size: 32, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2864, file: !2865, line: 154, baseType: !2874, offset: 224)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, elements: !634)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1903, file: !1601, line: 1315, baseType: !712, size: 32, offset: 19968)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1903, file: !1601, line: 1316, baseType: !712, size: 32, offset: 20000)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1903, file: !1601, line: 1321, baseType: !403, size: 64, offset: 20032)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1903, file: !1601, line: 1325, baseType: !85, size: 32, offset: 20096)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1903, file: !1601, line: 1326, baseType: !85, size: 32, offset: 20128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1903, file: !1601, line: 1327, baseType: !85, size: 32, offset: 20160)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1903, file: !1601, line: 1328, baseType: !85, size: 32, offset: 20192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1903, file: !1601, line: 1329, baseType: !529, size: 128, align: 64, offset: 20224)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1903, file: !1601, line: 1332, baseType: !2884, size: 128, offset: 20352)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2885, line: 51, size: 128, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2886 = !{!2887, !2892, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2884, file: !2885, line: 60, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2889, line: 7, size: 64, elements: !2890)
!2889 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2888, file: !2889, line: 12, baseType: !2134, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2884, file: !2885, line: 63, baseType: !150, size: 8, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2884, file: !2885, line: 70, baseType: !150, size: 8, offset: 72)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1903, file: !1601, line: 1335, baseType: !2895, size: 64, offset: 20480)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1601, line: 59, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1903, file: !1601, line: 1337, baseType: !2898, size: 128, offset: 20544)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2885, line: 39, size: 128, elements: !2899)
!2899 = !{!2900, !3164, !3165}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2898, file: !2885, line: 40, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1675, line: 74, size: 512, align: 128, elements: !2903)
!2903 = !{!2904, !2905, !3158, !3163}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2902, file: !1675, line: 75, baseType: !403, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !1675, line: 83, baseType: !2906, size: 320, offset: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2902, file: !1675, line: 83, size: 320, elements: !2907)
!2907 = !{!2908, !3132, !3146, !3150, !3157}
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1675, line: 84, baseType: !2909, size: 320)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !1675, line: 84, size: 320, elements: !2910)
!2910 = !{!2911, !2922, !3126, !3131}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !1675, line: 90, baseType: !2912, size: 128)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2909, file: !1675, line: 90, size: 128, elements: !2913)
!2913 = !{!2914, !2915, !2920, !2921}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2912, file: !1675, line: 91, baseType: !258, size: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !1675, line: 94, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !1675, line: 94, size: 128, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2916, file: !1675, line: 96, baseType: !130, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2916, file: !1675, line: 98, baseType: !7, size: 32, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2912, file: !1675, line: 102, baseType: !258, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2912, file: !1675, line: 103, baseType: !258, size: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2909, file: !1675, line: 106, baseType: !2923, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !34, line: 472, size: 1536, align: 64, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !3118, !3119, !3120, !3123, !3124, !3125}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2924, file: !34, line: 473, baseType: !905, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2924, file: !34, line: 474, baseType: !1098, size: 128, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2924, file: !34, line: 475, baseType: !687, size: 320, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2924, file: !34, line: 476, baseType: !1103, size: 32, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2924, file: !34, line: 477, baseType: !225, size: 32, offset: 544)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2924, file: !34, line: 482, baseType: !2072, size: 128, offset: 576)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2924, file: !34, line: 483, baseType: !403, size: 64, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2924, file: !34, line: 484, baseType: !403, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2924, file: !34, line: 485, baseType: !2935, size: 64, offset: 832)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !34, line: 404, size: 1280, elements: !2938)
!2938 = !{!2939, !2943, !3013, !3017, !3021, !3027, !3033, !3037, !3042, !3046, !3050, !3054, !3082, !3086, !3090, !3094, !3099, !3103, !3110, !3114}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2937, file: !34, line: 405, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!85, !2901, !1562}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2937, file: !34, line: 406, baseType: !2944, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!85, !516, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1675, line: 293, size: 1536, elements: !2949)
!2949 = !{!2950, !2980, !2994}
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !1675, line: 295, baseType: !2951, size: 512)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !1675, line: 295, size: 512, elements: !2952)
!2952 = !{!2953, !2979}
!2953 = !DIDerivedType(tag: DW_TAG_member, scope: !2951, file: !1675, line: 296, baseType: !2954, size: 448)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2951, file: !1675, line: 296, size: 448, elements: !2955)
!2955 = !{!2956, !2957, !2966, !2967, !2968, !2977, !2978}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !1675, line: 298, baseType: !403, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2954, file: !1675, line: 299, baseType: !2958, size: 128, offset: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2954, file: !1675, line: 299, size: 128, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2958, file: !1675, line: 300, baseType: !258, size: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !1675, line: 302, baseType: !2962, size: 128)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !1675, line: 302, size: 128, elements: !2963)
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2962, file: !1675, line: 303, baseType: !130, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2962, file: !1675, line: 305, baseType: !7, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2954, file: !1675, line: 310, baseType: !2923, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2954, file: !1675, line: 311, baseType: !403, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, scope: !2954, file: !1675, line: 312, baseType: !2969, size: 64, offset: 320)
!2969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2954, file: !1675, line: 312, size: 64, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2969, file: !1675, line: 313, baseType: !130, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2969, file: !1675, line: 314, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1675, line: 257, baseType: !2974)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1675, line: 255, size: 64, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2974, file: !1675, line: 256, baseType: !403, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2954, file: !1675, line: 316, baseType: !225, size: 32, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2954, file: !1675, line: 317, baseType: !225, size: 32, offset: 416)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2951, file: !1675, line: 323, baseType: !2902, size: 512, align: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !1675, line: 325, baseType: !2981, size: 512, offset: 512)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !1675, line: 325, size: 512, elements: !2982)
!2982 = !{!2983, !2993}
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !1675, line: 326, baseType: !2984, size: 320)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2981, file: !1675, line: 326, size: 320, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2991, !2992}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2984, file: !1675, line: 327, baseType: !403, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2984, file: !1675, line: 328, baseType: !403, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2984, file: !1675, line: 329, baseType: !403, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2984, file: !1675, line: 331, baseType: !225, size: 32, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2984, file: !1675, line: 332, baseType: !225, size: 32, offset: 224)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2984, file: !1675, line: 333, baseType: !225, size: 32, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2984, file: !1675, line: 335, baseType: !7, size: 32, offset: 288)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2981, file: !1675, line: 339, baseType: !2902, size: 512, align: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !1675, line: 341, baseType: !2995, size: 512, offset: 1024)
!2995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !1675, line: 341, size: 512, elements: !2996)
!2996 = !{!2997, !3006, !3012}
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2995, file: !1675, line: 342, baseType: !2998, size: 384)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2995, file: !1675, line: 342, size: 384, elements: !2999)
!2999 = !{!3000, !3001, !3002, !3003, !3004, !3005}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2998, file: !1675, line: 343, baseType: !403, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2998, file: !1675, line: 344, baseType: !403, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2998, file: !1675, line: 346, baseType: !130, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2998, file: !1675, line: 347, baseType: !130, size: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2998, file: !1675, line: 348, baseType: !130, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2998, file: !1675, line: 349, baseType: !130, size: 64, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !2995, file: !1675, line: 352, baseType: !3007, size: 256)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2995, file: !1675, line: 352, size: 256, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3007, file: !1675, line: 353, baseType: !403, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3007, file: !1675, line: 354, baseType: !403, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3007, file: !1675, line: 356, baseType: !258, size: 128, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2995, file: !1675, line: 359, baseType: !2902, size: 512, align: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2937, file: !34, line: 409, baseType: !3014, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!85, !2923, !1562}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2937, file: !34, line: 412, baseType: !3018, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!150, !2923, !2947}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2937, file: !34, line: 414, baseType: !3022, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !3025}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !34, line: 310, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2937, file: !34, line: 416, baseType: !3028, size: 64, offset: 320)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!85, !516, !2923, !565, !7, !3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2937, file: !34, line: 419, baseType: !3034, size: 64, offset: 384)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!85, !516, !2923, !565, !7, !7, !2901, !130}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2937, file: !34, line: 424, baseType: !3038, size: 64, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!3041, !2923, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !151, line: 131, baseType: !662)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2937, file: !34, line: 425, baseType: !3043, size: 64, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !2947, !400, !400}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2937, file: !34, line: 426, baseType: !3047, size: 64, offset: 576)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!150, !2947, !1103}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2937, file: !34, line: 427, baseType: !3051, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2947}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2937, file: !34, line: 428, baseType: !3055, size: 64, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!387, !3058, !3080}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !34, line: 373, size: 384, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3067, !3068, !3069, !3070}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3059, file: !34, line: 374, baseType: !516, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3059, file: !34, line: 375, baseType: !565, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3059, file: !34, line: 376, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !3058, !131}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3059, file: !34, line: 377, baseType: !130, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3059, file: !34, line: 378, baseType: !85, size: 32, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3059, file: !34, line: 379, baseType: !238, size: 16, offset: 288)
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !3059, file: !34, line: 380, baseType: !3071, size: 64, offset: 320)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3059, file: !34, line: 380, size: 64, elements: !3072)
!3072 = !{!3073, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3071, file: !34, line: 386, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !34, line: 386, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3071, file: !34, line: 395, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!387, !130}
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !34, line: 69, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2937, file: !34, line: 433, baseType: !3083, size: 64, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!85, !2923, !2947, !2947, !55}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2937, file: !34, line: 435, baseType: !3087, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!85, !2947}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2937, file: !34, line: 436, baseType: !3091, size: 64, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!150, !2947, !400, !400}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2937, file: !34, line: 438, baseType: !3095, size: 64, offset: 960)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !2947, !3098, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2937, file: !34, line: 439, baseType: !3100, size: 64, offset: 1024)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!85, !2923, !2901}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2937, file: !34, line: 442, baseType: !3104, size: 64, offset: 1088)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!85, !3107, !516, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !34, line: 66, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2937, file: !34, line: 444, baseType: !3111, size: 64, offset: 1152)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !516}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2937, file: !34, line: 445, baseType: !3115, size: 64, offset: 1216)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!85, !3058, !3080}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2924, file: !34, line: 486, baseType: !403, size: 64, offset: 896)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2924, file: !34, line: 487, baseType: !687, size: 320, offset: 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2924, file: !34, line: 488, baseType: !3121, size: 32, offset: 1280)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3122, line: 8, baseType: !712)
!3122 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2924, file: !34, line: 489, baseType: !205, size: 32, offset: 1312)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2924, file: !34, line: 490, baseType: !258, size: 128, offset: 1344)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2924, file: !34, line: 491, baseType: !130, size: 64, offset: 1472)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !1675, line: 107, baseType: !3127, size: 64, offset: 192)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2909, file: !1675, line: 107, size: 64, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3127, file: !1675, line: 108, baseType: !403, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3127, file: !1675, line: 109, baseType: !403, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2909, file: !1675, line: 117, baseType: !403, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1675, line: 119, baseType: !3133, size: 320)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !1675, line: 119, size: 320, elements: !3134)
!3134 = !{!3135, !3136, !3139, !3140, !3141}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3133, file: !1675, line: 124, baseType: !403, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3133, file: !1675, line: 125, baseType: !3137, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1675, line: 125, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3133, file: !1675, line: 126, baseType: !403, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3133, file: !1675, line: 127, baseType: !403, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !1675, line: 128, baseType: !3142, size: 64, offset: 256)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !1675, line: 128, size: 64, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3142, file: !1675, line: 133, baseType: !403, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3142, file: !1675, line: 138, baseType: !542, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1675, line: 141, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !1675, line: 141, size: 64, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3147, file: !1675, line: 142, baseType: !403, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1675, line: 144, baseType: !3151, size: 128)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !1675, line: 144, size: 128, elements: !3152)
!3152 = !{!3153, !3156}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3151, file: !1675, line: 146, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1675, line: 146, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3151, file: !1675, line: 147, baseType: !130, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2906, file: !1675, line: 161, baseType: !529, size: 128, align: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !1675, line: 164, baseType: !3159, size: 32, offset: 384)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2902, file: !1675, line: 164, size: 32, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3159, file: !1675, line: 169, baseType: !225, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3159, file: !1675, line: 177, baseType: !7, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2902, file: !1675, line: 181, baseType: !225, size: 32, offset: 416)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2898, file: !2885, line: 42, baseType: !713, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2898, file: !2885, line: 43, baseType: !713, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1903, file: !1601, line: 1340, baseType: !3167, size: 64, offset: 20672)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1601, line: 69, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1903, file: !1601, line: 1351, baseType: !85, size: 32, offset: 20736)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1903, file: !1601, line: 1352, baseType: !85, size: 32, offset: 20768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1903, file: !1601, line: 1354, baseType: !403, size: 64, offset: 20800)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1903, file: !1601, line: 1364, baseType: !662, size: 64, offset: 20864)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1903, file: !1601, line: 1365, baseType: !662, size: 64, offset: 20928)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1903, file: !1601, line: 1412, baseType: !403, size: 64, offset: 20992)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1903, file: !1601, line: 1453, baseType: !3176, size: 64, offset: 21056)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1601, line: 1453, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1903, file: !1601, line: 1457, baseType: !3179, size: 64, offset: 21120)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !63, line: 61, size: 576, elements: !3181)
!3181 = !{!3182, !3183, !3202, !3205, !3206, !3239, !3249}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3180, file: !63, line: 62, baseType: !62, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !63, line: 64, baseType: !3184, size: 192, offset: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3180, file: !63, line: 64, size: 192, elements: !3185)
!3185 = !{!3186, !3197}
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !63, line: 65, baseType: !3187, size: 192)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !63, line: 65, size: 192, elements: !3188)
!3188 = !{!3189, !3196}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3187, file: !63, line: 66, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3191, line: 50, size: 128, elements: !3192)
!3191 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3190, file: !3191, line: 52, baseType: !403, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3190, file: !3191, line: 54, baseType: !7, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3190, file: !3191, line: 55, baseType: !7, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3187, file: !63, line: 67, baseType: !403, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !63, line: 70, baseType: !3198, size: 192)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !63, line: 70, size: 192, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3198, file: !63, line: 71, baseType: !529, size: 128, align: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3198, file: !63, line: 72, baseType: !403, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3180, file: !63, line: 76, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !63, line: 76, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3180, file: !63, line: 77, baseType: !403, size: 64, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3180, file: !63, line: 79, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3191, line: 25, size: 256, elements: !3209)
!3209 = !{!3210, !3216, !3220}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3191, line: 26, baseType: !3211, size: 128)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !3191, line: 26, size: 128, elements: !3212)
!3212 = !{!3213, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3211, file: !3191, line: 27, baseType: !3214, size: 128)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !2477)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3211, file: !3191, line: 28, baseType: !3214, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3208, file: !3191, line: 31, baseType: !3217, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3191, line: 23, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3191, line: 33, baseType: !3221, size: 64, offset: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !3191, line: 33, size: 64, elements: !3222)
!3222 = !{!3223, !3229, !3234}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3221, file: !3191, line: 38, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 34, size: 64, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3224, file: !3191, line: 35, baseType: !679, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3224, file: !3191, line: 36, baseType: !153, size: 8, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3224, file: !3191, line: 37, baseType: !153, size: 8, offset: 40)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3221, file: !3191, line: 42, baseType: !3230, size: 16)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 39, size: 16, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3230, file: !3191, line: 40, baseType: !153, size: 8)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3230, file: !3191, line: 41, baseType: !153, size: 8, offset: 8)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3221, file: !3191, line: 46, baseType: !3235, size: 16)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 43, size: 16, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3235, file: !3191, line: 44, baseType: !153, size: 8)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3235, file: !3191, line: 45, baseType: !153, size: 8, offset: 8)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3180, file: !63, line: 81, baseType: !3240, size: 64, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !63, line: 85, size: 384, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3241, file: !63, line: 86, baseType: !3203, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3241, file: !63, line: 87, baseType: !403, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3241, file: !63, line: 88, baseType: !403, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3241, file: !63, line: 89, baseType: !403, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3241, file: !63, line: 90, baseType: !150, size: 8, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3241, file: !63, line: 92, baseType: !3240, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3180, file: !63, line: 82, baseType: !7, size: 32, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1903, file: !1601, line: 1463, baseType: !3251, offset: 21184)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1601, line: 739, elements: !1449)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1903, file: !1601, line: 1470, baseType: !529, size: 128, align: 64, offset: 21184)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1903, file: !1601, line: 1471, baseType: !597, size: 32, offset: 21312)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1903, file: !1601, line: 1472, baseType: !85, size: 32, offset: 21344)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1903, file: !1601, line: 1474, baseType: !1902, size: 64, offset: 21376)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1903, file: !1601, line: 1475, baseType: !1408, size: 320, offset: 21440)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1903, file: !1601, line: 1478, baseType: !3258, size: 64, offset: 21760)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1601, line: 1478, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1903, file: !1601, line: 1482, baseType: !597, size: 32, offset: 21824)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1903, file: !1601, line: 1489, baseType: !130, size: 64, offset: 21888)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1903, file: !1601, line: 1504, baseType: !130, size: 64, offset: 21952)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1903, file: !1601, line: 1505, baseType: !663, size: 64, offset: 22016)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1903, file: !1601, line: 1506, baseType: !662, size: 64, offset: 22080)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1903, file: !1601, line: 1507, baseType: !663, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1903, file: !1601, line: 1508, baseType: !663, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1903, file: !1601, line: 1509, baseType: !663, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1903, file: !1601, line: 1510, baseType: !529, size: 128, align: 64, offset: 22208)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1903, file: !1601, line: 1511, baseType: !85, size: 32, offset: 22336)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1903, file: !1601, line: 1515, baseType: !3271, size: 64, offset: 22400)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !524, line: 56, size: 64, elements: !3272)
!3272 = !{!3273}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3271, file: !524, line: 57, baseType: !527, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1903, file: !1601, line: 1518, baseType: !3271, size: 64, offset: 22464)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1903, file: !1601, line: 1528, baseType: !529, size: 128, align: 64, offset: 22528)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1903, file: !1601, line: 1552, baseType: !3277, size: 35328, offset: 23040)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3278, line: 430, size: 35328, elements: !3279)
!3278 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3279 = !{!3280, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3309, !3310, !3311, !3312, !3313, !3314, !3317, !3318, !3319, !3320}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3277, file: !3278, line: 432, baseType: !3281, size: 192)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3282, size: 192, elements: !357)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3283, line: 16, size: 64, elements: !3284)
!3283 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3282, file: !3283, line: 17, baseType: !238, size: 16)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3282, file: !3283, line: 18, baseType: !238, size: 16, offset: 16)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3282, file: !3283, line: 19, baseType: !238, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3282, file: !3283, line: 19, baseType: !238, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3282, file: !3283, line: 19, baseType: !238, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3282, file: !3283, line: 19, baseType: !238, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3282, file: !3283, line: 19, baseType: !238, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3282, file: !3283, line: 20, baseType: !238, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3282, file: !3283, line: 20, baseType: !238, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3282, file: !3283, line: 20, baseType: !238, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3282, file: !3283, line: 20, baseType: !238, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3282, file: !3283, line: 20, baseType: !238, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3282, file: !3283, line: 20, baseType: !238, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3277, file: !3278, line: 436, baseType: !403, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3277, file: !3278, line: 440, baseType: !240, size: 16, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3277, file: !3278, line: 441, baseType: !240, size: 16, offset: 272)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3277, file: !3278, line: 442, baseType: !240, size: 16, offset: 288)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3277, file: !3278, line: 443, baseType: !240, size: 16, offset: 304)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3277, file: !3278, line: 447, baseType: !403, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3277, file: !3278, line: 448, baseType: !403, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3277, file: !3278, line: 459, baseType: !3306, size: 256, offset: 448)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 256, elements: !615)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3278, line: 428, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3277, file: !3278, line: 461, baseType: !403, size: 64, offset: 704)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3277, file: !3278, line: 463, baseType: !403, size: 64, offset: 768)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3277, file: !3278, line: 465, baseType: !403, size: 64, offset: 832)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3277, file: !3278, line: 466, baseType: !403, size: 64, offset: 896)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3277, file: !3278, line: 467, baseType: !403, size: 64, offset: 960)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3277, file: !3278, line: 473, baseType: !3315, size: 64, offset: 1024)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3278, line: 10, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3277, file: !3278, line: 480, baseType: !403, size: 64, offset: 1088)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3277, file: !3278, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3277, file: !3278, line: 491, baseType: !712, size: 32, offset: 1184)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3277, file: !3278, line: 501, baseType: !3321, size: 33792, offset: 1536)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3322, line: 448, size: 33792, elements: !3323)
!3322 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3323 = !{!3324, !3325, !3326, !3488, !3489, !3495, !3496}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3321, file: !3322, line: 461, baseType: !7, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3321, file: !3322, line: 468, baseType: !403, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3321, file: !3322, line: 476, baseType: !3327, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3322, line: 356, size: 33280, align: 512, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3328, file: !3322, line: 358, baseType: !7, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3328, file: !3322, line: 361, baseType: !7, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3328, file: !3322, line: 364, baseType: !662, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3328, file: !3322, line: 367, baseType: !662, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3328, file: !3322, line: 370, baseType: !662, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3328, file: !3322, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3328, file: !3322, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3328, file: !3322, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3328, file: !3322, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3328, file: !3322, line: 397, baseType: !3340, size: 32768, offset: 512)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3322, line: 348, size: 32768, elements: !3341)
!3341 = !{!3342, !3357, !3394, !3471, !3484}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3340, file: !3322, line: 349, baseType: !3343, size: 896)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3322, line: 12, size: 896, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3356}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3343, file: !3322, line: 13, baseType: !712, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3343, file: !3322, line: 14, baseType: !712, size: 32, offset: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3343, file: !3322, line: 15, baseType: !712, size: 32, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3343, file: !3322, line: 16, baseType: !712, size: 32, offset: 96)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3343, file: !3322, line: 17, baseType: !712, size: 32, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3343, file: !3322, line: 18, baseType: !712, size: 32, offset: 160)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3343, file: !3322, line: 19, baseType: !712, size: 32, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3343, file: !3322, line: 22, baseType: !3353, size: 640, offset: 224)
!3353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 640, elements: !3354)
!3354 = !{!3355}
!3355 = !DISubrange(count: 20)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3343, file: !3322, line: 25, baseType: !712, size: 32, offset: 864)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3340, file: !3322, line: 350, baseType: !3358, size: 4096, align: 128)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3322, line: 34, size: 4096, align: 128, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3379, !3380, !3381, !3383, !3385, !3389}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3358, file: !3322, line: 35, baseType: !238, size: 16)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3358, file: !3322, line: 36, baseType: !238, size: 16, offset: 16)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3358, file: !3322, line: 37, baseType: !238, size: 16, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3358, file: !3322, line: 38, baseType: !238, size: 16, offset: 48)
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !3322, line: 39, baseType: !3365, size: 128, offset: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3358, file: !3322, line: 39, size: 128, elements: !3366)
!3366 = !{!3367, !3372}
!3367 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !3322, line: 40, baseType: !3368, size: 128)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !3322, line: 40, size: 128, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3368, file: !3322, line: 41, baseType: !662, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3368, file: !3322, line: 42, baseType: !662, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !3322, line: 44, baseType: !3373, size: 128)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !3322, line: 44, size: 128, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3373, file: !3322, line: 45, baseType: !712, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3373, file: !3322, line: 46, baseType: !712, size: 32, offset: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3373, file: !3322, line: 47, baseType: !712, size: 32, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3373, file: !3322, line: 48, baseType: !712, size: 32, offset: 96)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3358, file: !3322, line: 51, baseType: !712, size: 32, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3358, file: !3322, line: 52, baseType: !712, size: 32, offset: 224)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3358, file: !3322, line: 55, baseType: !3382, size: 1024, offset: 256)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 1024, elements: !188)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3358, file: !3322, line: 58, baseType: !3384, size: 2048, offset: 1280)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 2048, elements: !361)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3358, file: !3322, line: 60, baseType: !3386, size: 384, offset: 3328)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 384, elements: !3387)
!3387 = !{!3388}
!3388 = !DISubrange(count: 12)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !3322, line: 62, baseType: !3390, size: 384, offset: 3712)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3358, file: !3322, line: 62, size: 384, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3390, file: !3322, line: 63, baseType: !3386, size: 384)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3390, file: !3322, line: 64, baseType: !3386, size: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3340, file: !3322, line: 351, baseType: !3395, size: 1088)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3322, line: 79, size: 1088, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3470}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3395, file: !3322, line: 80, baseType: !712, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3395, file: !3322, line: 81, baseType: !712, size: 32, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3395, file: !3322, line: 82, baseType: !712, size: 32, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3395, file: !3322, line: 83, baseType: !712, size: 32, offset: 96)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3395, file: !3322, line: 84, baseType: !712, size: 32, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3395, file: !3322, line: 85, baseType: !712, size: 32, offset: 160)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3395, file: !3322, line: 86, baseType: !712, size: 32, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3395, file: !3322, line: 88, baseType: !3353, size: 640, offset: 224)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3395, file: !3322, line: 89, baseType: !153, size: 8, offset: 864)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3395, file: !3322, line: 90, baseType: !153, size: 8, offset: 872)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3395, file: !3322, line: 91, baseType: !153, size: 8, offset: 880)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3395, file: !3322, line: 92, baseType: !153, size: 8, offset: 888)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3395, file: !3322, line: 93, baseType: !153, size: 8, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3395, file: !3322, line: 94, baseType: !153, size: 8, offset: 904)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3395, file: !3322, line: 95, baseType: !3412, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3414, line: 11, size: 128, elements: !3415)
!3414 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3415 = !{!3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3413, file: !3414, line: 12, baseType: !131, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3413, file: !3414, line: 13, baseType: !3418, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3420, line: 103, size: 1344, elements: !3421)
!3420 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3450, !3451, !3452}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3419, file: !3420, line: 109, baseType: !403, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3419, file: !3420, line: 110, baseType: !403, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3419, file: !3420, line: 111, baseType: !403, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3419, file: !3420, line: 112, baseType: !403, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3419, file: !3420, line: 113, baseType: !403, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3419, file: !3420, line: 114, baseType: !403, size: 64, offset: 320)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3419, file: !3420, line: 117, baseType: !403, size: 64, offset: 384)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3419, file: !3420, line: 118, baseType: !403, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3419, file: !3420, line: 119, baseType: !403, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3419, file: !3420, line: 120, baseType: !403, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3419, file: !3420, line: 121, baseType: !403, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3419, file: !3420, line: 122, baseType: !403, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3419, file: !3420, line: 123, baseType: !403, size: 64, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3419, file: !3420, line: 124, baseType: !403, size: 64, offset: 832)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3419, file: !3420, line: 125, baseType: !403, size: 64, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3419, file: !3420, line: 139, baseType: !403, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3419, file: !3420, line: 142, baseType: !403, size: 64, offset: 1024)
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !3419, file: !3420, line: 144, baseType: !3440, size: 64, offset: 1088)
!3440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3419, file: !3420, line: 144, size: 64, elements: !3441)
!3441 = !{!3442, !3443, !3444}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3440, file: !3420, line: 146, baseType: !238, size: 16)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3440, file: !3420, line: 148, baseType: !662, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3440, file: !3420, line: 150, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3420, line: 59, size: 64, elements: !3446)
!3446 = !{!3447, !3448, !3449}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3445, file: !3420, line: 61, baseType: !662, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3445, file: !3420, line: 63, baseType: !662, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3445, file: !3420, line: 65, baseType: !662, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3419, file: !3420, line: 153, baseType: !403, size: 64, offset: 1152)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3419, file: !3420, line: 154, baseType: !403, size: 64, offset: 1216)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3419, file: !3420, line: 156, baseType: !3453, size: 64, offset: 1280)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3419, file: !3420, line: 156, size: 64, elements: !3454)
!3454 = !{!3455, !3456, !3457}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3453, file: !3420, line: 158, baseType: !238, size: 16)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3453, file: !3420, line: 160, baseType: !662, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3453, file: !3420, line: 162, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3420, line: 69, size: 64, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3458, file: !3420, line: 71, baseType: !662, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3458, file: !3420, line: 73, baseType: !662, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3458, file: !3420, line: 75, baseType: !662, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3458, file: !3420, line: 77, baseType: !662, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3458, file: !3420, line: 80, baseType: !662, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3458, file: !3420, line: 83, baseType: !662, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3458, file: !3420, line: 86, baseType: !662, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3458, file: !3420, line: 88, baseType: !662, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3458, file: !3420, line: 93, baseType: !662, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3458, file: !3420, line: 100, baseType: !662, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3395, file: !3322, line: 96, baseType: !712, size: 32, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3340, file: !3322, line: 352, baseType: !3472, size: 4608, align: 512)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3322, line: 333, size: 4608, align: 512, elements: !3473)
!3473 = !{!3474, !3475, !3482}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3472, file: !3322, line: 334, baseType: !3358, size: 4096, align: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3472, file: !3322, line: 335, baseType: !3476, size: 512, offset: 4096)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3322, line: 312, size: 512, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3476, file: !3322, line: 313, baseType: !662, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3476, file: !3322, line: 314, baseType: !662, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3476, file: !3322, line: 315, baseType: !3481, size: 384, offset: 128)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 384, elements: !162)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3472, file: !3322, line: 336, baseType: !3483, offset: 4608)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !634)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3340, file: !3322, line: 353, baseType: !3485, size: 32768)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 32768, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 4096)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3321, file: !3322, line: 484, baseType: !3327, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3321, file: !3322, line: 491, baseType: !3490, size: 128, offset: 256)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3322, line: 404, size: 128, elements: !3491)
!3491 = !{!3492, !3493, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3490, file: !3322, line: 424, baseType: !662, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3490, file: !3322, line: 432, baseType: !7, size: 32, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3490, file: !3322, line: 440, baseType: !7, size: 32, offset: 96)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3321, file: !3322, line: 498, baseType: !3490, size: 128, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3321, file: !3322, line: 508, baseType: !3328, size: 33280, align: 512, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1885, file: !1886, line: 16, baseType: !619, size: 192, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1885, file: !1886, line: 17, baseType: !225, size: 32, offset: 704)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1108, file: !34, line: 1240, baseType: !130, size: 64, offset: 6912)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1108, file: !34, line: 1243, baseType: !712, size: 32, offset: 6976)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1108, file: !34, line: 1245, baseType: !703, size: 64, offset: 7040)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1108, file: !34, line: 1246, baseType: !703, size: 64, offset: 7104)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1108, file: !34, line: 1248, baseType: !713, size: 32, offset: 7168)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1108, file: !34, line: 1249, baseType: !3505, size: 64, offset: 7232)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !34, line: 634, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1108, file: !34, line: 1252, baseType: !187, size: 256, offset: 7296)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1108, file: !34, line: 1253, baseType: !3509, size: 128, offset: 7552)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3510, line: 21, baseType: !3511)
!3510 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3510, line: 19, size: 128, elements: !3512)
!3512 = !{!3513}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3511, file: !3510, line: 20, baseType: !3514, size: 128)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !2477)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1108, file: !34, line: 1255, baseType: !7, size: 32, offset: 7680)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1108, file: !34, line: 1261, baseType: !552, size: 256, offset: 7744)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1108, file: !34, line: 1267, baseType: !270, size: 64, offset: 8000)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1108, file: !34, line: 1269, baseType: !3519, size: 64, offset: 8064)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3521)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !867, line: 128, size: 1024, align: 512, elements: !3522)
!3522 = !{!3523, !3527, !3528, !3535, !3541, !3545, !3549, !3553, !3554, !3558, !3562, !3567, !3571}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3521, file: !867, line: 129, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!85, !865, !7}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3521, file: !867, line: 130, baseType: !3524, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3521, file: !867, line: 131, baseType: !3529, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!85, !3532, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3521, file: !867, line: 132, baseType: !3536, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!85, !3532, !7, !270, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3521, file: !867, line: 134, baseType: !3542, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!85, !3532}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3521, file: !867, line: 135, baseType: !3546, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!85, !865}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3521, file: !867, line: 136, baseType: !3550, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !865}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3521, file: !867, line: 137, baseType: !3550, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3521, file: !867, line: 138, baseType: !3555, size: 64, offset: 512)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !865, !905}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3521, file: !867, line: 139, baseType: !3559, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!356, !865, !356, !85}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3521, file: !867, line: 140, baseType: !3563, size: 64, offset: 640)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!860, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3521, file: !867, line: 141, baseType: !3568, size: 64, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!85, !1023, !150}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3521, file: !867, line: 142, baseType: !3572, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!865, !865, !3575}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1108, file: !34, line: 1271, baseType: !3578, size: 448, offset: 8128)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1666, line: 63, size: 448, elements: !3579)
!3579 = !{!3580, !3585, !3586, !3587, !3588, !3589, !3590}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3578, file: !1666, line: 64, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!403, !3584, !1664}
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3578, file: !1666, line: 66, baseType: !3581, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3578, file: !1666, line: 69, baseType: !131, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3578, file: !1666, line: 70, baseType: !85, size: 32, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3578, file: !1666, line: 71, baseType: !7, size: 32, offset: 224)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3578, file: !1666, line: 74, baseType: !258, size: 128, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3578, file: !1666, line: 85, baseType: !3591, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1108, file: !34, line: 1274, baseType: !542, size: 64, offset: 8576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1108, file: !34, line: 1280, baseType: !542, size: 64, offset: 8640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1108, file: !34, line: 1283, baseType: !85, size: 32, offset: 8704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1108, file: !34, line: 1286, baseType: !3121, size: 32, offset: 8736)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1108, file: !34, line: 1289, baseType: !1482, size: 64, offset: 8768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1108, file: !34, line: 1290, baseType: !606, size: 64, offset: 8832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1108, file: !34, line: 1297, baseType: !827, size: 64, offset: 8896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1108, file: !34, line: 1304, baseType: !3600, size: 64, offset: 8960)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3601, line: 49, size: 64, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3602 = !{!3603}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3600, file: !3601, line: 50, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3601, line: 41, size: 512, align: 512, elements: !3606)
!3606 = !{!3607, !3608, !3613}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3605, file: !3601, line: 43, baseType: !205, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3605, file: !3601, line: 45, baseType: !3609, size: 192, offset: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3601, line: 29, size: 192, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3609, file: !3601, line: 30, baseType: !258, size: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3609, file: !3601, line: 32, baseType: !131, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3605, file: !3601, line: 46, baseType: !131, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1108, file: !34, line: 1305, baseType: !3600, size: 64, offset: 9024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1108, file: !34, line: 1306, baseType: !529, size: 128, align: 64, offset: 9088)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1108, file: !34, line: 1307, baseType: !1420, size: 256, offset: 9216)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1108, file: !34, line: 1309, baseType: !552, size: 256, offset: 9472)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1108, file: !34, line: 1314, baseType: !85, size: 32, offset: 9728)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1108, file: !34, line: 1317, baseType: !205, size: 32, align: 512, offset: 10240)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1108, file: !34, line: 1318, baseType: !258, size: 128, offset: 10304)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1108, file: !34, line: 1320, baseType: !205, size: 32, offset: 10432)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1108, file: !34, line: 1321, baseType: !258, size: 128, offset: 10496)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !906, file: !34, line: 656, baseType: !2923, size: 64, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !906, file: !34, line: 659, baseType: !130, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !906, file: !34, line: 663, baseType: !403, size: 64, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !34, line: 671, baseType: !3627, size: 32, offset: 704)
!3627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !34, line: 671, size: 32, elements: !3628)
!3628 = !{!3629, !3631}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3627, file: !34, line: 672, baseType: !3630, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3627, file: !34, line: 673, baseType: !7, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !906, file: !34, line: 675, baseType: !976, size: 32, offset: 736)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !906, file: !34, line: 676, baseType: !565, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !906, file: !34, line: 677, baseType: !1012, size: 128, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !906, file: !34, line: 678, baseType: !1012, size: 128, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !906, file: !34, line: 679, baseType: !1012, size: 128, offset: 1088)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !906, file: !34, line: 680, baseType: !205, size: 32, offset: 1216)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !906, file: !34, line: 681, baseType: !240, size: 16, offset: 1248)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !906, file: !34, line: 682, baseType: !153, size: 8, offset: 1264)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !906, file: !34, line: 683, baseType: !153, size: 8, offset: 1272)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !906, file: !34, line: 684, baseType: !1798, size: 64, offset: 1280)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !906, file: !34, line: 691, baseType: !403, size: 64, offset: 1344)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !906, file: !34, line: 692, baseType: !687, size: 320, offset: 1408)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !906, file: !34, line: 694, baseType: !403, size: 64, offset: 1728)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !906, file: !34, line: 695, baseType: !403, size: 64, offset: 1792)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !906, file: !34, line: 697, baseType: !610, size: 128, offset: 1856)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !906, file: !34, line: 698, baseType: !258, size: 128, offset: 1984)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !906, file: !34, line: 707, baseType: !258, size: 128, offset: 2112)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !906, file: !34, line: 708, baseType: !258, size: 128, offset: 2240)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !34, line: 709, baseType: !3651, size: 128, offset: 2368)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !34, line: 709, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3651, file: !34, line: 710, baseType: !606, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3651, file: !34, line: 711, baseType: !529, size: 128, align: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !906, file: !34, line: 713, baseType: !544, size: 64, offset: 2496)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !906, file: !34, line: 714, baseType: !544, size: 64, offset: 2560)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !906, file: !34, line: 715, baseType: !225, size: 32, offset: 2624)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !906, file: !34, line: 716, baseType: !225, size: 32, offset: 2656)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !906, file: !34, line: 717, baseType: !225, size: 32, offset: 2688)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !906, file: !34, line: 719, baseType: !225, size: 32, offset: 2720)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !34, line: 721, baseType: !3662, size: 64, offset: 2752)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !34, line: 721, size: 64, elements: !3663)
!3663 = !{!3664, !3846}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3662, file: !34, line: 722, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !34, line: 1914, size: 2112, elements: !3668)
!3668 = !{!3669, !3670, !3674, !3679, !3683, !3684, !3685, !3691, !3704, !3712, !3716, !3717, !3774, !3775, !3779, !3784, !3785, !3789, !3793, !3799, !3800, !3804, !3805, !3809, !3813, !3814, !3819, !3823, !3827, !3831, !3835, !3836, !3842}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3667, file: !34, line: 1915, baseType: !1140, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3667, file: !34, line: 1916, baseType: !3671, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!565, !516, !565, !85}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3667, file: !34, line: 1917, baseType: !3675, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!387, !516, !356, !400, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3667, file: !34, line: 1918, baseType: !3680, size: 64, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!387, !516, !270, !400, !3678}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3667, file: !34, line: 1919, baseType: !3055, size: 64, offset: 256)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3667, file: !34, line: 1920, baseType: !3055, size: 64, offset: 320)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3667, file: !34, line: 1921, baseType: !3686, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!85, !3058, !3689, !7}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !34, line: 53, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3667, file: !34, line: 1923, baseType: !3692, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!85, !516, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !34, line: 1858, size: 128, elements: !3697)
!3697 = !{!3698, !3703}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3696, file: !34, line: 1859, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !34, line: 1855, baseType: !3700)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!150, !3695, !270, !85, !565, !662, !7}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3696, file: !34, line: 1860, baseType: !565, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3667, file: !34, line: 1924, baseType: !3705, size: 64, offset: 512)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3708, !516, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3709, line: 59, baseType: !7)
!3709 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !464, line: 31, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3667, file: !34, line: 1925, baseType: !3713, size: 64, offset: 576)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!131, !516, !7, !403}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3667, file: !34, line: 1926, baseType: !3713, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3667, file: !34, line: 1927, baseType: !3718, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!85, !516, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1675, line: 625, size: 1344, elements: !3723)
!3723 = !{!3724, !3733, !3734, !3740, !3747, !3748, !3753, !3754, !3759, !3760, !3763, !3767, !3768, !3769, !3770, !3771, !3772}
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !1675, line: 628, baseType: !3725, size: 128)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !1675, line: 628, size: 128, elements: !3726)
!3726 = !{!3727, !3732}
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !1675, line: 629, baseType: !3728, size: 128)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !1675, line: 629, size: 128, elements: !3729)
!3729 = !{!3730, !3731}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3728, file: !1675, line: 631, baseType: !403, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3728, file: !1675, line: 632, baseType: !403, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3725, file: !1675, line: 635, baseType: !529, size: 128, align: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3722, file: !1675, line: 639, baseType: !2186, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3722, file: !1675, line: 640, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2221, line: 297, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2221, line: 297, size: 64, elements: !3737)
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3736, file: !2221, line: 297, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2226, line: 19, baseType: !403)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !1675, line: 646, baseType: !3741, size: 64, offset: 256)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !1675, line: 646, size: 64, elements: !3742)
!3742 = !{!3743, !3746}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3741, file: !1675, line: 647, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1675, line: 542, baseType: !403)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3741, file: !1675, line: 648, baseType: !3745, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3722, file: !1675, line: 666, baseType: !85, size: 32, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3722, file: !1675, line: 667, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1675, line: 579, size: 320, elements: !3751)
!3751 = !{!3752}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3750, file: !1675, line: 580, baseType: !687, size: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3722, file: !1675, line: 670, baseType: !150, size: 8, offset: 448)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3722, file: !1675, line: 681, baseType: !3755, size: 256, offset: 512)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3722, file: !1675, line: 678, size: 256, elements: !3756)
!3756 = !{!3757, !3758}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3755, file: !1675, line: 679, baseType: !471, size: 192, align: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3755, file: !1675, line: 680, baseType: !403, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3722, file: !1675, line: 689, baseType: !258, size: 128, offset: 768)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3722, file: !1675, line: 691, baseType: !3761, size: 64, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1675, line: 691, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3722, file: !1675, line: 694, baseType: !3764, size: 64, offset: 960)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3766)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1675, line: 694, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3722, file: !1675, line: 697, baseType: !403, size: 64, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3722, file: !1675, line: 699, baseType: !516, size: 64, offset: 1088)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3722, file: !1675, line: 700, baseType: !130, size: 64, offset: 1152)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3722, file: !1675, line: 711, baseType: !542, size: 64, offset: 1216)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3722, file: !1675, line: 717, baseType: !2858, size: 64, offset: 1280)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3722, file: !1675, line: 722, baseType: !3773, offset: 1344)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1675, line: 570, elements: !1449)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3667, file: !34, line: 1928, baseType: !403, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3667, file: !34, line: 1929, baseType: !3776, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!85, !905, !516}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3667, file: !34, line: 1930, baseType: !3780, size: 64, offset: 896)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!85, !516, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !34, line: 1061, baseType: !130)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3667, file: !34, line: 1931, baseType: !3776, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3667, file: !34, line: 1932, baseType: !3786, size: 64, offset: 1024)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!85, !516, !565, !565, !85}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3667, file: !34, line: 1933, baseType: !3790, size: 64, offset: 1088)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!85, !85, !516, !85}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3667, file: !34, line: 1934, baseType: !3794, size: 64, offset: 1152)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!85, !516, !85, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !34, line: 1063, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3667, file: !34, line: 1935, baseType: !2210, size: 64, offset: 1216)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3667, file: !34, line: 1936, baseType: !3801, size: 64, offset: 1280)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!85, !85}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3667, file: !34, line: 1937, baseType: !3794, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3667, file: !34, line: 1938, baseType: !3806, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!387, !2895, !516, !3678, !400, !7}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3667, file: !34, line: 1939, baseType: !3810, size: 64, offset: 1472)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!387, !516, !3678, !2895, !400, !7}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3667, file: !34, line: 1940, baseType: !3111, size: 64, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3667, file: !34, line: 1941, baseType: !3815, size: 64, offset: 1600)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!85, !516, !85, !3818, !3032}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3667, file: !34, line: 1942, baseType: !3820, size: 64, offset: 1664)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!131, !516, !85, !565, !565}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3667, file: !34, line: 1944, baseType: !3824, size: 64, offset: 1728)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !1599, !516}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3667, file: !34, line: 1948, baseType: !3828, size: 64, offset: 1792)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!387, !516, !565, !516, !565, !400, !7}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3667, file: !34, line: 1950, baseType: !3832, size: 64, offset: 1856)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!565, !516, !565, !516, !565, !565, !7}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3667, file: !34, line: 1953, baseType: !3786, size: 64, offset: 1920)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3667, file: !34, line: 1954, baseType: !3837, size: 64, offset: 1984)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!85, !3840, !7}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !34, line: 1911, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3667, file: !34, line: 1955, baseType: !3843, size: 64, offset: 2048)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!85, !3840, !3689, !7}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3662, file: !34, line: 723, baseType: !1550, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !906, file: !34, line: 725, baseType: !3848, size: 64, offset: 2816)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !34, line: 725, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !906, file: !34, line: 726, baseType: !2924, size: 1536, align: 64, offset: 2880)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !906, file: !34, line: 727, baseType: !258, size: 128, offset: 4416)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !34, line: 728, baseType: !3853, size: 64, offset: 4544)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !34, line: 728, size: 64, elements: !3854)
!3854 = !{!3855, !3856, !3859, !3860}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3853, file: !34, line: 729, baseType: !2895, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3853, file: !34, line: 730, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !34, line: 730, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3853, file: !34, line: 731, baseType: !356, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3853, file: !34, line: 732, baseType: !7, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !906, file: !34, line: 735, baseType: !713, size: 32, offset: 4608)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !906, file: !34, line: 738, baseType: !713, size: 32, offset: 4640)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !906, file: !34, line: 739, baseType: !3505, size: 64, offset: 4672)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !906, file: !34, line: 750, baseType: !130, size: 64, offset: 4736)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !866, file: !867, line: 91, baseType: !3866, size: 256, offset: 448)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !188)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !866, file: !867, line: 94, baseType: !3868, size: 64, offset: 704)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3869, line: 25, size: 64, elements: !3870)
!3869 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3870 = !{!3871}
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3869, line: 26, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3868, file: !3869, line: 26, size: 64, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3872, file: !3869, line: 28, baseType: !663, size: 64, align: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3869, line: 30, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !3869, line: 30, size: 64, elements: !3877)
!3877 = !{!3878, !3879}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3876, file: !3869, line: 31, baseType: !205, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3876, file: !3869, line: 32, baseType: !85, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !866, file: !867, line: 95, baseType: !3519, size: 64, offset: 768)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !866, file: !867, line: 96, baseType: !1107, size: 64, offset: 832)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !866, file: !867, line: 97, baseType: !403, size: 64, offset: 896)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !866, file: !867, line: 98, baseType: !130, size: 64, offset: 960)
!3884 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !867, line: 100, baseType: !3885, size: 128, offset: 1024)
!3885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 100, size: 128, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3885, file: !867, line: 101, baseType: !258, size: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3885, file: !867, line: 102, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !866, file: !867, line: 104, baseType: !258, size: 128, offset: 1152)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !866, file: !867, line: 105, baseType: !258, size: 128, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !866, file: !867, line: 113, baseType: !3893, size: 128, offset: 1408)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 109, size: 128, elements: !3894)
!3894 = !{!3895, !3896, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3893, file: !867, line: 110, baseType: !610, size: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3893, file: !867, line: 111, baseType: !881, size: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3893, file: !867, line: 112, baseType: !529, size: 128, align: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !861, file: !862, line: 72, baseType: !1107, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !861, file: !862, line: 73, baseType: !85, size: 32, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !861, file: !862, line: 74, baseType: !941, size: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !856, file: !857, line: 10, baseType: !865, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !517, file: !34, line: 1015, baseType: !905, size: 64, offset: 1344)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !517, file: !34, line: 1016, baseType: !3665, size: 64, offset: 1408)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !517, file: !34, line: 1018, baseType: !662, size: 64, offset: 1472)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !517, file: !34, line: 1020, baseType: !130, size: 64, offset: 1536)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !517, file: !34, line: 1023, baseType: !130, size: 64, offset: 1600)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !517, file: !34, line: 1027, baseType: !3908, size: 64, offset: 1664)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !517, file: !34, line: 1029, baseType: !2923, size: 64, offset: 1728)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !517, file: !34, line: 1030, baseType: !3121, size: 32, offset: 1792)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !517, file: !34, line: 1031, baseType: !3121, size: 32, offset: 1824)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !512, file: !464, line: 255, baseType: !1599, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !512, file: !464, line: 256, baseType: !130, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !512, file: !464, line: 259, baseType: !552, size: 256, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !512, file: !464, line: 260, baseType: !552, size: 256, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !512, file: !464, line: 261, baseType: !85, size: 32, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !512, file: !464, line: 262, baseType: !258, size: 128, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !512, file: !464, line: 263, baseType: !356, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !512, file: !464, line: 265, baseType: !400, size: 64, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !512, file: !464, line: 266, baseType: !150, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !512, file: !464, line: 267, baseType: !150, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !512, file: !464, line: 268, baseType: !3764, size: 64, offset: 1152)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !505, file: !464, line: 277, baseType: !3924, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !511}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !505, file: !464, line: 290, baseType: !3928, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!85, !1599, !130}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !505, file: !464, line: 292, baseType: !3932, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!130, !1599, !3678}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !505, file: !464, line: 293, baseType: !3936, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!130, !1599, !130, !3678}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !505, file: !464, line: 294, baseType: !3940, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !1599, !130}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !505, file: !464, line: 296, baseType: !3944, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!387, !511, !356, !400, !565}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !505, file: !464, line: 306, baseType: !400, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !505, file: !464, line: 313, baseType: !150, size: 8, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !505, file: !464, line: 314, baseType: !3944, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !505, file: !464, line: 317, baseType: !3951, size: 64, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!3708, !511, !3710}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !505, file: !464, line: 320, baseType: !3955, size: 64, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!85, !511, !3721}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !500, file: !464, line: 176, baseType: !3959, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !464, line: 35, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !500, file: !464, line: 177, baseType: !565, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !500, file: !464, line: 178, baseType: !462, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !463, file: !464, line: 215, baseType: !130, size: 64, offset: 768)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !463, file: !464, line: 221, baseType: !662, size: 64, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !464, line: 223, baseType: !240, size: 16, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !463, file: !464, line: 224, baseType: !314, size: 16, offset: 912)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !463, file: !464, line: 225, baseType: !3968, size: 64, offset: 960)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !464, line: 36, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !463, file: !464, line: 227, baseType: !529, size: 128, align: 64, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !316, file: !317, line: 71, baseType: !3972, size: 32, offset: 448)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3973, line: 19, size: 32, elements: !3974)
!3973 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3974 = !{!3975}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3972, file: !3973, line: 20, baseType: !597, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !316, file: !317, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !316, file: !317, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !316, file: !317, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !316, file: !317, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !316, file: !317, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !306, file: !307, line: 88, baseType: !3982, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!314, !315, !3985, !85}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !307, line: 175, size: 512, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3995, !3999, !4000}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3986, file: !307, line: 176, baseType: !392, size: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3986, file: !307, line: 177, baseType: !400, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3986, file: !307, line: 178, baseType: !130, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !3986, file: !307, line: 179, baseType: !3992, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!2923}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3986, file: !307, line: 180, baseType: !3996, size: 64, offset: 320)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!387, !516, !315, !3985, !356, !565, !400}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3986, file: !307, line: 182, baseType: !3996, size: 64, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3986, file: !307, line: 184, baseType: !4001, size: 64, offset: 448)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!85, !516, !315, !3985, !3721}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !306, file: !307, line: 90, baseType: !4005, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !306, file: !307, line: 91, baseType: !4007, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !297, file: !298, line: 84, baseType: !303, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !297, file: !298, line: 85, baseType: !303, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !297, file: !298, line: 87, baseType: !4011, size: 64, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!85, !4014, !4078}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4022, !4023, !4076, !4077, !4079, !4080, !4081, !4082, !4089, !4185, !4198, !4208, !4212, !4214, !4215, !4216, !4220, !4227, !4228, !4231, !4234, !4238, !4241, !4242, !4243, !4244, !4245, !4246, !4276, !4277, !4278, !4281, !4284, !4293, !4294, !4295, !4296, !4297, !4298}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4015, file: !70, line: 706, baseType: !316, size: 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4015, file: !70, line: 707, baseType: !4014, size: 64, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4015, file: !70, line: 709, baseType: !4020, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4015, file: !70, line: 711, baseType: !270, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4015, file: !70, line: 712, baseType: !4024, size: 64, offset: 704)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4026)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4036, !4041, !4045}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4026, file: !70, line: 90, baseType: !270, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4026, file: !70, line: 91, baseType: !303, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4026, file: !70, line: 92, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!85, !4034, !351}
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4026, file: !70, line: 93, baseType: !4037, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!356, !4034, !4040, !446, !454}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4026, file: !70, line: 95, baseType: !4042, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !4014}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4026, file: !70, line: 97, baseType: !4046, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4049)
!4049 = !{!4050, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4048, file: !77, line: 287, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!85, !4014}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4048, file: !77, line: 288, baseType: !4042, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4048, file: !77, line: 289, baseType: !4051, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4048, file: !77, line: 290, baseType: !4051, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4048, file: !77, line: 291, baseType: !4051, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4048, file: !77, line: 292, baseType: !4051, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4048, file: !77, line: 293, baseType: !4051, size: 64, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4048, file: !77, line: 294, baseType: !4051, size: 64, offset: 448)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4048, file: !77, line: 295, baseType: !4051, size: 64, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4048, file: !77, line: 296, baseType: !4051, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4048, file: !77, line: 297, baseType: !4051, size: 64, offset: 640)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4048, file: !77, line: 298, baseType: !4051, size: 64, offset: 704)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4048, file: !77, line: 299, baseType: !4051, size: 64, offset: 768)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4048, file: !77, line: 300, baseType: !4051, size: 64, offset: 832)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4048, file: !77, line: 301, baseType: !4051, size: 64, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4048, file: !77, line: 302, baseType: !4051, size: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4048, file: !77, line: 303, baseType: !4051, size: 64, offset: 1024)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4048, file: !77, line: 304, baseType: !4051, size: 64, offset: 1088)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4048, file: !77, line: 305, baseType: !4051, size: 64, offset: 1152)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4048, file: !77, line: 306, baseType: !4051, size: 64, offset: 1216)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4048, file: !77, line: 307, baseType: !4051, size: 64, offset: 1280)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4048, file: !77, line: 308, baseType: !4051, size: 64, offset: 1344)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4048, file: !77, line: 309, baseType: !4051, size: 64, offset: 1408)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4015, file: !70, line: 714, baseType: !295, size: 64, offset: 768)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4015, file: !70, line: 715, baseType: !4078, size: 64, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4015, file: !70, line: 717, baseType: !130, size: 64, offset: 896)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4015, file: !70, line: 719, baseType: !130, size: 64, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4015, file: !70, line: 721, baseType: !552, size: 256, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4015, file: !70, line: 725, baseType: !4083, size: 448, offset: 1280)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4084)
!4084 = !{!4085, !4086, !4087, !4088}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4083, file: !70, line: 518, baseType: !258, size: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4083, file: !70, line: 519, baseType: !258, size: 128, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4083, file: !70, line: 520, baseType: !258, size: 128, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4083, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4015, file: !70, line: 726, baseType: !4090, size: 2496, offset: 1728)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4091)
!4091 = !{!4092, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4178, !4182}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4090, file: !77, line: 664, baseType: !4093, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4095)
!4095 = !{!4096}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4094, file: !77, line: 59, baseType: !85, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4090, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4090, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4090, file: !77, line: 667, baseType: !150, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4090, file: !77, line: 668, baseType: !150, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4090, file: !77, line: 669, baseType: !150, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4090, file: !77, line: 670, baseType: !150, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4090, file: !77, line: 671, baseType: !150, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4090, file: !77, line: 672, baseType: !150, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4090, file: !77, line: 673, baseType: !150, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4090, file: !77, line: 674, baseType: !150, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4090, file: !77, line: 675, baseType: !712, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4090, file: !77, line: 676, baseType: !205, size: 32, offset: 96)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4090, file: !77, line: 678, baseType: !258, size: 128, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4090, file: !77, line: 679, baseType: !1160, size: 256, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4090, file: !77, line: 680, baseType: !4112, size: 64, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4114, line: 43, size: 1536, elements: !4115)
!4114 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4113, file: !4114, line: 44, baseType: !270, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4113, file: !4114, line: 45, baseType: !85, size: 32, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4113, file: !4114, line: 46, baseType: !258, size: 128, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4113, file: !4114, line: 47, baseType: !205, size: 32, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4113, file: !4114, line: 48, baseType: !4121, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4113, file: !4114, line: 49, baseType: !1408, size: 320, offset: 384)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4113, file: !4114, line: 50, baseType: !403, size: 64, offset: 704)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4113, file: !4114, line: 51, baseType: !2021, size: 64, offset: 768)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4113, file: !4114, line: 52, baseType: !2021, size: 64, offset: 832)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4113, file: !4114, line: 53, baseType: !2021, size: 64, offset: 896)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4113, file: !4114, line: 54, baseType: !2021, size: 64, offset: 960)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4113, file: !4114, line: 55, baseType: !2021, size: 64, offset: 1024)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4113, file: !4114, line: 56, baseType: !403, size: 64, offset: 1088)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4113, file: !4114, line: 57, baseType: !403, size: 64, offset: 1152)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4113, file: !4114, line: 58, baseType: !403, size: 64, offset: 1216)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4113, file: !4114, line: 59, baseType: !403, size: 64, offset: 1280)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4113, file: !4114, line: 60, baseType: !403, size: 64, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4113, file: !4114, line: 61, baseType: !4014, size: 64, offset: 1408)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4113, file: !4114, line: 62, baseType: !150, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4113, file: !4114, line: 63, baseType: !150, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4090, file: !77, line: 681, baseType: !150, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4090, file: !77, line: 682, baseType: !150, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4090, file: !77, line: 683, baseType: !150, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4090, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4090, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4090, file: !77, line: 690, baseType: !2013, size: 512, offset: 640)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4090, file: !77, line: 691, baseType: !662, size: 64, offset: 1152)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4090, file: !77, line: 692, baseType: !1420, size: 256, offset: 1216)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4090, file: !77, line: 693, baseType: !619, size: 192, offset: 1472)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4090, file: !77, line: 694, baseType: !4121, size: 64, offset: 1664)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4090, file: !77, line: 695, baseType: !225, size: 32, offset: 1728)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4090, file: !77, line: 696, baseType: !225, size: 32, offset: 1760)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4090, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4090, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4090, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4090, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4090, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4090, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4090, file: !77, line: 703, baseType: !150, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4090, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4090, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4090, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4090, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4090, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4090, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4090, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4090, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4090, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4090, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4090, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4090, file: !77, line: 715, baseType: !662, size: 64, offset: 2048)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4090, file: !77, line: 716, baseType: !662, size: 64, offset: 2112)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4090, file: !77, line: 717, baseType: !662, size: 64, offset: 2176)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4090, file: !77, line: 718, baseType: !662, size: 64, offset: 2240)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4090, file: !77, line: 720, baseType: !4173, size: 64, offset: 2304)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4174, file: !77, line: 633, baseType: !205, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4174, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4090, file: !77, line: 721, baseType: !4179, size: 64, offset: 2368)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{null, !4014, !679}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4090, file: !77, line: 722, baseType: !4183, size: 64, offset: 2432)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4015, file: !70, line: 727, baseType: !4186, size: 64, offset: 4224)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4195, !4196, !4197}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4187, file: !77, line: 743, baseType: !4048, size: 1472)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4187, file: !77, line: 744, baseType: !4051, size: 64, offset: 1472)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4187, file: !77, line: 745, baseType: !4192, size: 64, offset: 1536)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4014, !150}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4187, file: !77, line: 746, baseType: !4051, size: 64, offset: 1600)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4187, file: !77, line: 747, baseType: !4042, size: 64, offset: 1664)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4187, file: !77, line: 748, baseType: !4042, size: 64, offset: 1728)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4015, file: !70, line: 736, baseType: !4199, size: 128, offset: 4288)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4200)
!4200 = !{!4201, !4205}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4199, file: !70, line: 531, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4204, line: 13, flags: DIFlagFwdDecl)
!4204 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4199, file: !70, line: 532, baseType: !4206, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4015, file: !70, line: 738, baseType: !4209, size: 64, offset: 4416)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4211)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4015, file: !70, line: 740, baseType: !4213, size: 64, offset: 4480)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4015, file: !70, line: 741, baseType: !662, size: 64, offset: 4544)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4015, file: !70, line: 746, baseType: !662, size: 64, offset: 4608)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4015, file: !70, line: 747, baseType: !4217, size: 64, offset: 4672)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4219)
!4219 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4015, file: !70, line: 749, baseType: !4221, size: 64, offset: 4736)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4223)
!4223 = !{!4224, !4225, !4226}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4222, file: !70, line: 433, baseType: !7, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4222, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4222, file: !70, line: 435, baseType: !403, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4015, file: !70, line: 751, baseType: !258, size: 128, offset: 4800)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4015, file: !70, line: 762, baseType: !4229, size: 64, offset: 4928)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4015, file: !70, line: 770, baseType: !4232, offset: 4992)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4233, line: 5, elements: !1449)
!4233 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4015, file: !70, line: 772, baseType: !4235, size: 64, offset: 4992)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4237, line: 18, flags: DIFlagFwdDecl)
!4237 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4015, file: !70, line: 773, baseType: !4239, size: 64, offset: 5056)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !298, line: 22, flags: DIFlagFwdDecl)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4015, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4015, file: !70, line: 778, baseType: !976, size: 32, offset: 5152)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4015, file: !70, line: 779, baseType: !712, size: 32, offset: 5184)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4015, file: !70, line: 781, baseType: !205, size: 32, offset: 5216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4015, file: !70, line: 782, baseType: !258, size: 128, offset: 5248)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4015, file: !70, line: 784, baseType: !4247, size: 64, offset: 5376)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4249)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4250, line: 52, size: 768, elements: !4251)
!4250 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4260, !4264, !4265, !4266, !4267, !4271, !4275}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4249, file: !4250, line: 53, baseType: !270, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4249, file: !4250, line: 55, baseType: !303, size: 64, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4249, file: !4250, line: 56, baseType: !303, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4249, file: !4250, line: 58, baseType: !4031, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4249, file: !4250, line: 59, baseType: !4257, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!356, !4034, !4040}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4249, file: !4250, line: 61, baseType: !4261, size: 64, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !4247}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4249, file: !4250, line: 62, baseType: !4042, size: 64, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4249, file: !4250, line: 64, baseType: !4051, size: 64, offset: 448)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4249, file: !4250, line: 66, baseType: !409, size: 64, offset: 512)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4249, file: !4250, line: 67, baseType: !4268, size: 64, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!426, !4034}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4249, file: !4250, line: 69, baseType: !4272, size: 64, offset: 640)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{null, !4034, !446, !454}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4249, file: !4250, line: 71, baseType: !4046, size: 64, offset: 704)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4015, file: !70, line: 785, baseType: !303, size: 64, offset: 5440)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4015, file: !70, line: 787, baseType: !4042, size: 64, offset: 5504)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4015, file: !70, line: 788, baseType: !4279, size: 64, offset: 5568)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4015, file: !70, line: 789, baseType: !4282, size: 64, offset: 5632)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4015, file: !70, line: 791, baseType: !4285, size: 64, offset: 5696)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4287)
!4287 = !{!4288, !4289, !4290, !4291, !4292}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4286, file: !70, line: 598, baseType: !92, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4286, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4286, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4286, file: !70, line: 601, baseType: !150, size: 8, offset: 96)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4286, file: !70, line: 602, baseType: !150, size: 8, offset: 104)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4015, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4015, file: !70, line: 795, baseType: !150, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4015, file: !70, line: 796, baseType: !150, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4015, file: !70, line: 797, baseType: !150, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4015, file: !70, line: 798, baseType: !150, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4015, file: !70, line: 799, baseType: !150, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !297, file: !298, line: 88, baseType: !4031, size: 64, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !297, file: !298, line: 89, baseType: !4051, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !297, file: !298, line: 90, baseType: !4042, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !297, file: !298, line: 91, baseType: !4042, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !297, file: !298, line: 92, baseType: !4042, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !297, file: !298, line: 94, baseType: !4051, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !297, file: !298, line: 95, baseType: !4051, size: 64, offset: 768)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !297, file: !298, line: 97, baseType: !4307, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!85, !4014, !4093}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !297, file: !298, line: 98, baseType: !4051, size: 64, offset: 896)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !297, file: !298, line: 100, baseType: !4051, size: 64, offset: 960)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !297, file: !298, line: 102, baseType: !4051, size: 64, offset: 1024)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !297, file: !298, line: 103, baseType: !4042, size: 64, offset: 1088)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !297, file: !298, line: 105, baseType: !4046, size: 64, offset: 1152)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !297, file: !298, line: 107, baseType: !4316, size: 64, offset: 1216)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !298, line: 107, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !297, file: !298, line: 109, baseType: !150, size: 8, offset: 1280)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !291, file: !118, line: 100, baseType: !1140, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !291, file: !118, line: 101, baseType: !270, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !291, file: !118, line: 103, baseType: !150, size: 8, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !291, file: !118, line: 104, baseType: !117, size: 32, offset: 288)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !291, file: !118, line: 106, baseType: !4325, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !198, line: 282, size: 1600, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4327, file: !198, line: 283, baseType: !187, size: 256)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4327, file: !198, line: 284, baseType: !187, size: 256, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4327, file: !198, line: 285, baseType: !192, size: 1024, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4327, file: !198, line: 286, baseType: !426, size: 64, offset: 1536)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !291, file: !118, line: 107, baseType: !4334, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4336)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !198, line: 217, size: 256, elements: !4337)
!4337 = !{!4338, !4339, !4341, !4342}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4336, file: !198, line: 218, baseType: !3514, size: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4336, file: !198, line: 219, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !198, line: 15, baseType: !403)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4336, file: !198, line: 220, baseType: !713, size: 32, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4336, file: !198, line: 221, baseType: !713, size: 32, offset: 224)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !291, file: !118, line: 109, baseType: !4051, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !291, file: !118, line: 110, baseType: !4042, size: 64, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !291, file: !118, line: 111, baseType: !4051, size: 64, offset: 576)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !291, file: !118, line: 112, baseType: !4042, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !291, file: !118, line: 113, baseType: !4307, size: 64, offset: 704)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !291, file: !118, line: 114, baseType: !4051, size: 64, offset: 768)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !291, file: !118, line: 115, baseType: !303, size: 64, offset: 832)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !291, file: !118, line: 116, baseType: !303, size: 64, offset: 896)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !291, file: !118, line: 118, baseType: !4046, size: 64, offset: 960)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !291, file: !118, line: 119, baseType: !4042, size: 64, offset: 1024)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !291, file: !118, line: 121, baseType: !4354, size: 64, offset: 1088)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !118, line: 121, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !182, file: !183, line: 54, baseType: !552, size: 256, offset: 2496)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !182, file: !183, line: 56, baseType: !4015, size: 5824, offset: 2752)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !183, line: 58, baseType: !258, size: 128, offset: 8576)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !182, file: !183, line: 64, baseType: !4360, size: 64, offset: 8704)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !178, file: !124, line: 50, baseType: !552, size: 256, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !178, file: !124, line: 51, baseType: !619, size: 192, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !124, line: 52, baseType: !403, size: 64, offset: 512)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !178, file: !124, line: 53, baseType: !4365, size: 64, offset: 576)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !2056)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !178, file: !124, line: 54, baseType: !153, size: 8, offset: 640)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !178, file: !124, line: 55, baseType: !153, size: 8, offset: 648)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !178, file: !124, line: 57, baseType: !4369, size: 64, offset: 704)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !124, line: 30, baseType: !4370)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!123, !177, !153, !7}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !178, file: !124, line: 58, baseType: !4374, size: 64, offset: 768)
!4374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !124, line: 32, baseType: !4375)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !177, !153}
!4378 = !{!4379, !4380, !4381, !4382}
!4379 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !174, file: !3, line: 457, type: !177)
!4380 = !DILocalVariable(name: "serio", arg: 2, scope: !174, file: !3, line: 457, type: !181)
!4381 = !DILocalVariable(name: "pre_receive_handler", arg: 3, scope: !174, file: !3, line: 458, type: !4369)
!4382 = !DILocalVariable(name: "receive_handler", arg: 4, scope: !174, file: !3, line: 459, type: !4374)
!4383 = !DIGlobalVariableExpression(var: !4384, expr: !DIExpression())
!4384 = distinct !DIGlobalVariable(scope: null, file: !3, line: 464, type: !4385, isLocal: true, isDefinition: true)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 152, elements: !4386)
!4386 = !{!4387}
!4387 = !DISubrange(count: 19)
!4388 = !DIGlobalVariableExpression(var: !4389, expr: !DIExpression())
!4389 = distinct !DIGlobalVariable(name: "__key", scope: !174, file: !3, line: 466, type: !1531, isLocal: true, isDefinition: true)
!4390 = !DIGlobalVariableExpression(var: !4391, expr: !DIExpression())
!4391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 466, type: !4392, isLocal: true, isDefinition: true)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 112, elements: !4393)
!4393 = !{!4394}
!4394 = !DISubrange(count: 14)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_init275", scope: !2, file: !3, line: 470, type: !130, isLocal: true, isDefinition: true)
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ps2_interrupt276", scope: !2, file: !3, line: 619, type: !130, isLocal: true, isDefinition: true)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author277", scope: !2, file: !3, line: 621, type: !4401, isLocal: true, isDefinition: true, align: 8)
!4401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 360, elements: !4402)
!4402 = !{!4403}
!4403 = !DISubrange(count: 45)
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description278", scope: !2, file: !3, line: 622, type: !4406, isLocal: true, isDefinition: true, align: 8)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 312, elements: !4407)
!4407 = !{!4408}
!4408 = !DISubrange(count: 39)
!4409 = !DIGlobalVariableExpression(var: !4410, expr: !DIExpression())
!4410 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file279", scope: !2, file: !3, line: 623, type: !4406, isLocal: true, isDefinition: true, align: 8)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license280", scope: !2, file: !3, line: 623, type: !4413, isLocal: true, isDefinition: true, align: 8)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 152, elements: !4386)
!4414 = !DIGlobalVariableExpression(var: !4415, expr: !DIExpression())
!4415 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !4416, file: !4417, line: 112, type: !130, isLocal: true, isDefinition: true)
!4416 = distinct !DISubprogram(name: "might_resched", scope: !4417, file: !4417, line: 110, type: !1525, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4417 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4418 = !{i32 7, !"Dwarf Version", i32 5}
!4419 = !{i32 2, !"Debug Info Version", i32 3}
!4420 = !{i32 1, !"wchar_size", i32 2}
!4421 = !{i32 8, !"cf-protection-branch", i32 1}
!4422 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4423 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4424 = !{i32 1, !"Code Model", i32 2}
!4425 = !{i32 1, !"override-stack-alignment", i32 8}
!4426 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4427 = distinct !DISubprogram(name: "ps2_sendbyte", scope: !3, file: !3, line: 107, type: !4428, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!85, !177, !153, !7}
!4430 = !{!4431, !4432, !4433, !4434}
!4431 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4427, file: !3, line: 107, type: !177)
!4432 = !DILocalVariable(name: "byte", arg: 2, scope: !4427, file: !3, line: 107, type: !153)
!4433 = !DILocalVariable(name: "timeout", arg: 3, scope: !4427, file: !3, line: 107, type: !7)
!4434 = !DILocalVariable(name: "retval", scope: !4427, file: !3, line: 109, type: !85)
!4435 = !DILocation(line: 107, column: 33, scope: !4427)
!4436 = !DILocation(line: 107, column: 44, scope: !4427)
!4437 = !DILocation(line: 107, column: 63, scope: !4427)
!4438 = !DILocation(line: 109, column: 2, scope: !4427)
!4439 = !DILocation(line: 109, column: 6, scope: !4427)
!4440 = !DILocation(line: 111, column: 17, scope: !4427)
!4441 = !DILocation(line: 111, column: 25, scope: !4427)
!4442 = !DILocation(line: 111, column: 2, scope: !4427)
!4443 = !DILocation(line: 113, column: 27, scope: !4427)
!4444 = !DILocation(line: 113, column: 35, scope: !4427)
!4445 = !DILocation(line: 113, column: 41, scope: !4427)
!4446 = !DILocation(line: 113, column: 11, scope: !4427)
!4447 = !DILocation(line: 113, column: 9, scope: !4427)
!4448 = !DILocation(line: 116, column: 20, scope: !4427)
!4449 = !DILocation(line: 116, column: 28, scope: !4427)
!4450 = !DILocation(line: 116, column: 2, scope: !4427)
!4451 = !DILocation(line: 118, column: 9, scope: !4427)
!4452 = !DILocation(line: 119, column: 1, scope: !4427)
!4453 = !DILocation(line: 118, column: 2, scope: !4427)
!4454 = distinct !DISubprogram(name: "serio_pause_rx", scope: !183, file: !183, line: 155, type: !252, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4455)
!4455 = !{!4456}
!4456 = !DILocalVariable(name: "serio", arg: 1, scope: !4454, file: !183, line: 155, type: !181)
!4457 = !DILocation(line: 155, column: 49, scope: !4454)
!4458 = !DILocation(line: 157, column: 17, scope: !4454)
!4459 = !DILocation(line: 157, column: 24, scope: !4454)
!4460 = !DILocation(line: 157, column: 2, scope: !4454)
!4461 = !DILocation(line: 158, column: 1, scope: !4454)
!4462 = distinct !DISubprogram(name: "ps2_do_sendbyte", scope: !3, file: !3, line: 43, type: !4463, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!85, !177, !153, !7, !7}
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4471, !4472, !4476, !4479, !4492, !4493, !4497, !4500}
!4466 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4462, file: !3, line: 43, type: !177)
!4467 = !DILocalVariable(name: "byte", arg: 2, scope: !4462, file: !3, line: 43, type: !153)
!4468 = !DILocalVariable(name: "timeout", arg: 3, scope: !4462, file: !3, line: 44, type: !7)
!4469 = !DILocalVariable(name: "max_attempts", arg: 4, scope: !4462, file: !3, line: 44, type: !7)
!4470 = !DILocalVariable(name: "attempt", scope: !4462, file: !3, line: 47, type: !85)
!4471 = !DILocalVariable(name: "error", scope: !4462, file: !3, line: 48, type: !85)
!4472 = !DILocalVariable(name: "__ret", scope: !4473, file: !3, line: 63, type: !131)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 63, column: 4)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 59, column: 7)
!4475 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 52, column: 5)
!4476 = !DILocalVariable(name: "__cond", scope: !4477, file: !3, line: 63, type: !150)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 63, column: 4)
!4478 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 63, column: 4)
!4479 = !DILocalVariable(name: "__wq_entry", scope: !4480, file: !3, line: 63, type: !4481)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 63, column: 4)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !620, line: 30, size: 320, elements: !4482)
!4482 = !{!4483, !4484, !4485, !4491}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4481, file: !620, line: 31, baseType: !7, size: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4481, file: !620, line: 32, baseType: !130, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4481, file: !620, line: 33, baseType: !4486, size: 64, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !620, line: 16, baseType: !4487)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!85, !4490, !7, !85, !130}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4481, file: !620, line: 34, baseType: !258, size: 128, offset: 192)
!4492 = !DILocalVariable(name: "__ret", scope: !4480, file: !3, line: 63, type: !131)
!4493 = !DILocalVariable(name: "__int", scope: !4494, file: !3, line: 63, type: !131)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 63, column: 4)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 63, column: 4)
!4496 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 63, column: 4)
!4497 = !DILocalVariable(name: "__cond", scope: !4498, file: !3, line: 63, type: !150)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 63, column: 4)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 63, column: 4)
!4500 = !DILabel(scope: !4480, name: "__out", file: !3, line: 63)
!4501 = !DILocation(line: 43, column: 43, scope: !4462)
!4502 = !DILocation(line: 43, column: 54, scope: !4462)
!4503 = !DILocation(line: 44, column: 20, scope: !4462)
!4504 = !DILocation(line: 44, column: 42, scope: !4462)
!4505 = !DILocation(line: 47, column: 2, scope: !4462)
!4506 = !DILocation(line: 47, column: 6, scope: !4462)
!4507 = !DILocation(line: 48, column: 2, scope: !4462)
!4508 = !DILocation(line: 48, column: 6, scope: !4462)
!4509 = !DILocation(line: 50, column: 2, scope: !4462)
!4510 = !DILocation(line: 50, column: 2, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 50, column: 2)
!4512 = !DILocation(line: 52, column: 2, scope: !4462)
!4513 = !DILocation(line: 53, column: 3, scope: !4475)
!4514 = !DILocation(line: 53, column: 11, scope: !4475)
!4515 = !DILocation(line: 53, column: 15, scope: !4475)
!4516 = !DILocation(line: 54, column: 3, scope: !4475)
!4517 = !DILocation(line: 54, column: 11, scope: !4475)
!4518 = !DILocation(line: 54, column: 17, scope: !4475)
!4519 = !DILocation(line: 56, column: 21, scope: !4475)
!4520 = !DILocation(line: 56, column: 29, scope: !4475)
!4521 = !DILocation(line: 56, column: 3, scope: !4475)
!4522 = !DILocation(line: 58, column: 23, scope: !4475)
!4523 = !DILocation(line: 58, column: 31, scope: !4475)
!4524 = !DILocation(line: 58, column: 38, scope: !4475)
!4525 = !DILocation(line: 58, column: 11, scope: !4475)
!4526 = !DILocation(line: 58, column: 9, scope: !4475)
!4527 = !DILocation(line: 59, column: 7, scope: !4474)
!4528 = !DILocation(line: 59, column: 7, scope: !4475)
!4529 = !DILocation(line: 60, column: 4, scope: !4474)
!4530 = !DILocation(line: 63, column: 4, scope: !4473)
!4531 = !DILocation(line: 63, column: 4, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 63, column: 4)
!4533 = !DILocation(line: 63, column: 4, scope: !4477)
!4534 = !DILocation(line: 63, column: 4, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 63, column: 4)
!4536 = !{i8 0, i8 2}
!4537 = !DILocation(line: 63, column: 4, scope: !4478)
!4538 = !DILocation(line: 63, column: 4, scope: !4480)
!4539 = !DILocation(line: 63, column: 4, scope: !4494)
!4540 = !DILocation(line: 63, column: 4, scope: !4498)
!4541 = !DILocation(line: 63, column: 4, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 63, column: 4)
!4543 = !DILocation(line: 63, column: 4, scope: !4499)
!4544 = !DILocation(line: 63, column: 4, scope: !4495)
!4545 = distinct !{!4545, !4546, !4546, !4547}
!4546 = !DILocation(line: 63, column: 4, scope: !4496)
!4547 = !{!"llvm.loop.unroll.disable"}
!4548 = !DILocation(line: 63, column: 4, scope: !4474)
!4549 = !DILocation(line: 67, column: 18, scope: !4475)
!4550 = !DILocation(line: 67, column: 26, scope: !4475)
!4551 = !DILocation(line: 67, column: 3, scope: !4475)
!4552 = !DILocation(line: 68, column: 2, scope: !4475)
!4553 = !DILocation(line: 68, column: 11, scope: !4462)
!4554 = !DILocation(line: 68, column: 19, scope: !4462)
!4555 = !DILocation(line: 68, column: 23, scope: !4462)
!4556 = !DILocation(line: 68, column: 38, scope: !4462)
!4557 = !DILocation(line: 68, column: 41, scope: !4462)
!4558 = !DILocation(line: 68, column: 53, scope: !4462)
!4559 = !DILocation(line: 68, column: 51, scope: !4462)
!4560 = !DILocation(line: 0, scope: !4462)
!4561 = distinct !{!4561, !4512, !4562, !4563, !4547}
!4562 = !DILocation(line: 68, column: 65, scope: !4462)
!4563 = !{!"llvm.loop.mustprogress"}
!4564 = !DILocation(line: 70, column: 2, scope: !4462)
!4565 = !DILocation(line: 70, column: 10, scope: !4462)
!4566 = !DILocation(line: 70, column: 16, scope: !4462)
!4567 = !DILocation(line: 72, column: 7, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 72, column: 6)
!4569 = !DILocation(line: 72, column: 6, scope: !4462)
!4570 = !DILocation(line: 73, column: 11, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 72, column: 14)
!4572 = !DILocation(line: 73, column: 19, scope: !4571)
!4573 = !DILocation(line: 73, column: 3, scope: !4571)
!4574 = !DILocation(line: 77, column: 10, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 73, column: 24)
!4576 = !DILocation(line: 78, column: 4, scope: !4575)
!4577 = !DILocation(line: 80, column: 10, scope: !4575)
!4578 = !DILocation(line: 81, column: 4, scope: !4575)
!4579 = !DILocation(line: 83, column: 10, scope: !4575)
!4580 = !DILocation(line: 84, column: 4, scope: !4575)
!4581 = !DILocation(line: 86, column: 2, scope: !4571)
!4582 = !DILocation(line: 88, column: 6, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 88, column: 6)
!4584 = !DILocation(line: 88, column: 12, scope: !4583)
!4585 = !DILocation(line: 88, column: 15, scope: !4583)
!4586 = !DILocation(line: 88, column: 23, scope: !4583)
!4587 = !DILocation(line: 88, column: 6, scope: !4462)
!4588 = !DILocation(line: 89, column: 3, scope: !4583)
!4589 = !DILocation(line: 93, column: 9, scope: !4462)
!4590 = !DILocation(line: 94, column: 1, scope: !4462)
!4591 = !DILocation(line: 93, column: 2, scope: !4462)
!4592 = distinct !DISubprogram(name: "serio_continue_rx", scope: !183, file: !183, line: 160, type: !252, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4593)
!4593 = !{!4594}
!4594 = !DILocalVariable(name: "serio", arg: 1, scope: !4592, file: !183, line: 160, type: !181)
!4595 = !DILocation(line: 160, column: 52, scope: !4592)
!4596 = !DILocation(line: 162, column: 19, scope: !4592)
!4597 = !DILocation(line: 162, column: 26, scope: !4592)
!4598 = !DILocation(line: 162, column: 2, scope: !4592)
!4599 = !DILocation(line: 163, column: 1, scope: !4592)
!4600 = distinct !DISubprogram(name: "ps2_begin_command", scope: !3, file: !3, line: 129, type: !4601, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4603)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{null, !177}
!4603 = !{!4604, !4605}
!4604 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4600, file: !3, line: 129, type: !177)
!4605 = !DILocalVariable(name: "m", scope: !4600, file: !3, line: 131, type: !4360)
!4606 = !DILocation(line: 129, column: 39, scope: !4600)
!4607 = !DILocation(line: 131, column: 2, scope: !4600)
!4608 = !DILocation(line: 131, column: 16, scope: !4600)
!4609 = !DILocation(line: 131, column: 20, scope: !4600)
!4610 = !DILocation(line: 131, column: 28, scope: !4600)
!4611 = !DILocation(line: 131, column: 35, scope: !4600)
!4612 = !DILocation(line: 131, column: 53, scope: !4600)
!4613 = !DILocation(line: 131, column: 61, scope: !4600)
!4614 = !DILocation(line: 133, column: 13, scope: !4600)
!4615 = !DILocation(line: 133, column: 2, scope: !4600)
!4616 = !DILocation(line: 134, column: 1, scope: !4600)
!4617 = !DISubprogram(name: "mutex_lock", scope: !553, file: !553, line: 227, type: !4618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !4360}
!4620 = distinct !DISubprogram(name: "ps2_end_command", scope: !3, file: !3, line: 141, type: !4601, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4621)
!4621 = !{!4622, !4623}
!4622 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4620, file: !3, line: 141, type: !177)
!4623 = !DILocalVariable(name: "m", scope: !4620, file: !3, line: 143, type: !4360)
!4624 = !DILocation(line: 141, column: 37, scope: !4620)
!4625 = !DILocation(line: 143, column: 2, scope: !4620)
!4626 = !DILocation(line: 143, column: 16, scope: !4620)
!4627 = !DILocation(line: 143, column: 20, scope: !4620)
!4628 = !DILocation(line: 143, column: 28, scope: !4620)
!4629 = !DILocation(line: 143, column: 35, scope: !4620)
!4630 = !DILocation(line: 143, column: 53, scope: !4620)
!4631 = !DILocation(line: 143, column: 61, scope: !4620)
!4632 = !DILocation(line: 145, column: 15, scope: !4620)
!4633 = !DILocation(line: 145, column: 2, scope: !4620)
!4634 = !DILocation(line: 146, column: 1, scope: !4620)
!4635 = !DISubprogram(name: "mutex_unlock", scope: !553, file: !553, line: 246, type: !4618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4636 = distinct !DISubprogram(name: "ps2_drain", scope: !3, file: !3, line: 156, type: !4637, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !177, !400, !7}
!4639 = !{!4640, !4641, !4642, !4643, !4647, !4650, !4652, !4655, !4657, !4658, !4662, !4665}
!4640 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4636, file: !3, line: 156, type: !177)
!4641 = !DILocalVariable(name: "maxbytes", arg: 2, scope: !4636, file: !3, line: 156, type: !400)
!4642 = !DILocalVariable(name: "timeout", arg: 3, scope: !4636, file: !3, line: 156, type: !7)
!4643 = !DILocalVariable(name: "__ret_warn_on", scope: !4644, file: !3, line: 159, type: !85)
!4644 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 159, column: 3)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 158, column: 41)
!4646 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 158, column: 6)
!4647 = !DILocalVariable(name: "__flags", scope: !4648, file: !3, line: 159, type: !85)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 159, column: 3)
!4649 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 159, column: 3)
!4650 = !DILocalVariable(name: "__ret", scope: !4651, file: !3, line: 170, type: !131)
!4651 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 170, column: 2)
!4652 = !DILocalVariable(name: "__cond", scope: !4653, file: !3, line: 170, type: !150)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 170, column: 2)
!4654 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 170, column: 2)
!4655 = !DILocalVariable(name: "__wq_entry", scope: !4656, file: !3, line: 170, type: !4481)
!4656 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 170, column: 2)
!4657 = !DILocalVariable(name: "__ret", scope: !4656, file: !3, line: 170, type: !131)
!4658 = !DILocalVariable(name: "__int", scope: !4659, file: !3, line: 170, type: !131)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 170, column: 2)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 170, column: 2)
!4661 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 170, column: 2)
!4662 = !DILocalVariable(name: "__cond", scope: !4663, file: !3, line: 170, type: !150)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 170, column: 2)
!4664 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 170, column: 2)
!4665 = !DILabel(scope: !4656, name: "__out", file: !3, line: 170)
!4666 = !DILocation(line: 156, column: 31, scope: !4636)
!4667 = !DILocation(line: 156, column: 46, scope: !4636)
!4668 = !DILocation(line: 156, column: 69, scope: !4636)
!4669 = !DILocation(line: 158, column: 6, scope: !4646)
!4670 = !DILocation(line: 158, column: 15, scope: !4646)
!4671 = !DILocation(line: 158, column: 6, scope: !4636)
!4672 = !DILocation(line: 159, column: 3, scope: !4644)
!4673 = !DILocation(line: 159, column: 3, scope: !4649)
!4674 = !DILocation(line: 159, column: 3, scope: !4648)
!4675 = !DILocation(line: 159, column: 3, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 159, column: 3)
!4677 = !DILocation(line: 159, column: 3, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 159, column: 3)
!4679 = !{i64 2154115022, i64 2154115051, i64 2154115097, i64 2154115155, i64 2154115209, i64 2154115263, i64 2154115318, i64 2154115349, i64 2154115657, i64 2154115663, i64 2154115710, i64 2154115733, i64 2154115759}
!4680 = !DILocation(line: 159, column: 3, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 159, column: 3)
!4682 = !DILocation(line: 159, column: 3, scope: !4645)
!4683 = !DILocation(line: 160, column: 12, scope: !4645)
!4684 = !DILocation(line: 161, column: 2, scope: !4645)
!4685 = !DILocation(line: 163, column: 20, scope: !4636)
!4686 = !DILocation(line: 163, column: 2, scope: !4636)
!4687 = !DILocation(line: 165, column: 17, scope: !4636)
!4688 = !DILocation(line: 165, column: 25, scope: !4636)
!4689 = !DILocation(line: 165, column: 2, scope: !4636)
!4690 = !DILocation(line: 166, column: 2, scope: !4636)
!4691 = !DILocation(line: 166, column: 10, scope: !4636)
!4692 = !DILocation(line: 166, column: 16, scope: !4636)
!4693 = !DILocation(line: 167, column: 19, scope: !4636)
!4694 = !DILocation(line: 167, column: 2, scope: !4636)
!4695 = !DILocation(line: 167, column: 10, scope: !4636)
!4696 = !DILocation(line: 167, column: 17, scope: !4636)
!4697 = !DILocation(line: 168, column: 20, scope: !4636)
!4698 = !DILocation(line: 168, column: 28, scope: !4636)
!4699 = !DILocation(line: 168, column: 2, scope: !4636)
!4700 = !DILocation(line: 170, column: 2, scope: !4651)
!4701 = !DILocation(line: 170, column: 2, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 170, column: 2)
!4703 = !DILocation(line: 170, column: 2, scope: !4653)
!4704 = !DILocation(line: 170, column: 2, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 170, column: 2)
!4706 = !DILocation(line: 170, column: 2, scope: !4654)
!4707 = !DILocation(line: 170, column: 2, scope: !4656)
!4708 = !DILocation(line: 170, column: 2, scope: !4659)
!4709 = !DILocation(line: 170, column: 2, scope: !4663)
!4710 = !DILocation(line: 170, column: 2, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 170, column: 2)
!4712 = !DILocation(line: 170, column: 2, scope: !4664)
!4713 = !DILocation(line: 170, column: 2, scope: !4660)
!4714 = distinct !{!4714, !4715, !4715, !4547}
!4715 = !DILocation(line: 170, column: 2, scope: !4661)
!4716 = !DILocation(line: 170, column: 2, scope: !4636)
!4717 = !DILocation(line: 174, column: 18, scope: !4636)
!4718 = !DILocation(line: 174, column: 2, scope: !4636)
!4719 = !DILocation(line: 175, column: 1, scope: !4636)
!4720 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4721, file: !4721, line: 515, type: !4722, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4724)
!4721 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!403, !3630}
!4724 = !{!4725}
!4725 = !DILocalVariable(name: "m", arg: 1, scope: !4720, file: !4721, line: 515, type: !3630)
!4726 = !DILocation(line: 515, column: 74, scope: !4720)
!4727 = !DILocation(line: 517, column: 27, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4720, file: !4721, line: 517, column: 6)
!4729 = !DILocation(line: 517, column: 6, scope: !4728)
!4730 = !DILocation(line: 517, column: 6, scope: !4720)
!4731 = !DILocation(line: 518, column: 12, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !4721, line: 518, column: 7)
!4733 = distinct !DILexicalBlock(scope: !4728, file: !4721, line: 517, column: 31)
!4734 = !DILocation(line: 518, column: 14, scope: !4732)
!4735 = !DILocation(line: 518, column: 7, scope: !4733)
!4736 = !DILocation(line: 519, column: 4, scope: !4732)
!4737 = !DILocation(line: 520, column: 28, scope: !4733)
!4738 = !DILocation(line: 520, column: 10, scope: !4733)
!4739 = !DILocation(line: 520, column: 3, scope: !4733)
!4740 = !DILocation(line: 522, column: 29, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4728, file: !4721, line: 521, column: 9)
!4742 = !DILocation(line: 522, column: 10, scope: !4741)
!4743 = !DILocation(line: 522, column: 3, scope: !4741)
!4744 = !DILocation(line: 524, column: 1, scope: !4720)
!4745 = !DILocation(line: 112, column: 2, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4416, file: !4417, line: 112, column: 2)
!4747 = !DILocation(line: 112, column: 2, scope: !4416)
!4748 = !DILocation(line: 113, column: 1, scope: !4416)
!4749 = !DISubprogram(name: "init_wait_entry", scope: !620, file: !620, line: 290, type: !4750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !4490, !85}
!4752 = !DISubprogram(name: "prepare_to_wait_event", scope: !620, file: !620, line: 1199, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!131, !4755, !4490, !85}
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!4756 = !DISubprogram(name: "schedule_timeout", scope: !1601, file: !1601, line: 298, type: !4757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!131, !131}
!4759 = !DISubprogram(name: "finish_wait", scope: !620, file: !620, line: 1200, type: !4760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{null, !4755, !4490}
!4762 = !DILocation(line: 183, column: 28, scope: !147)
!4763 = !DILocation(line: 194, column: 30, scope: !147)
!4764 = !DILocation(line: 194, column: 9, scope: !147)
!4765 = !DILocation(line: 194, column: 61, scope: !147)
!4766 = !DILocation(line: 194, column: 2, scope: !147)
!4767 = !DISubprogram(name: "memchr", scope: !4768, file: !4768, line: 202, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4768 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!130, !426, !85, !401}
!4771 = distinct !DISubprogram(name: "__ps2_command", scope: !3, file: !3, line: 265, type: !4772, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4775)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!85, !177, !4774, !7}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!4775 = !{!4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4789, !4792, !4796, !4799, !4801, !4804, !4806, !4807, !4811, !4814, !4815, !4819, !4822, !4824, !4825, !4829, !4832, !4833}
!4776 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4771, file: !3, line: 265, type: !177)
!4777 = !DILocalVariable(name: "param", arg: 2, scope: !4771, file: !3, line: 265, type: !4774)
!4778 = !DILocalVariable(name: "command", arg: 3, scope: !4771, file: !3, line: 265, type: !7)
!4779 = !DILocalVariable(name: "timeout", scope: !4771, file: !3, line: 267, type: !7)
!4780 = !DILocalVariable(name: "send", scope: !4771, file: !3, line: 268, type: !7)
!4781 = !DILocalVariable(name: "receive", scope: !4771, file: !3, line: 269, type: !7)
!4782 = !DILocalVariable(name: "rc", scope: !4771, file: !3, line: 270, type: !85)
!4783 = !DILocalVariable(name: "i", scope: !4771, file: !3, line: 271, type: !85)
!4784 = !DILocalVariable(name: "send_param", scope: !4771, file: !3, line: 272, type: !3214)
!4785 = !DILocalVariable(name: "__ret_warn_on", scope: !4786, file: !3, line: 275, type: !85)
!4786 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 275, column: 3)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 274, column: 40)
!4788 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 274, column: 6)
!4789 = !DILocalVariable(name: "__flags", scope: !4790, file: !3, line: 275, type: !85)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 275, column: 3)
!4791 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 275, column: 3)
!4792 = !DILocalVariable(name: "__ret_warn_on", scope: !4793, file: !3, line: 280, type: !85)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 280, column: 3)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 279, column: 22)
!4795 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 279, column: 6)
!4796 = !DILocalVariable(name: "__flags", scope: !4797, file: !3, line: 280, type: !85)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 280, column: 3)
!4798 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 280, column: 3)
!4799 = !DILocalVariable(name: "__ret", scope: !4800, file: !3, line: 343, type: !131)
!4800 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 343, column: 12)
!4801 = !DILocalVariable(name: "__cond", scope: !4802, file: !3, line: 343, type: !150)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 343, column: 12)
!4803 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 343, column: 12)
!4804 = !DILocalVariable(name: "__wq_entry", scope: !4805, file: !3, line: 343, type: !4481)
!4805 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 343, column: 12)
!4806 = !DILocalVariable(name: "__ret", scope: !4805, file: !3, line: 343, type: !131)
!4807 = !DILocalVariable(name: "__int", scope: !4808, file: !3, line: 343, type: !131)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 343, column: 12)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 343, column: 12)
!4810 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 343, column: 12)
!4811 = !DILocalVariable(name: "__cond", scope: !4812, file: !3, line: 343, type: !150)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 343, column: 12)
!4813 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 343, column: 12)
!4814 = !DILabel(scope: !4805, name: "__out", file: !3, line: 343)
!4815 = !DILocalVariable(name: "__ret", scope: !4816, file: !3, line: 349, type: !131)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 349, column: 3)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 346, column: 58)
!4818 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 346, column: 6)
!4819 = !DILocalVariable(name: "__cond", scope: !4820, file: !3, line: 349, type: !150)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 349, column: 3)
!4821 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 349, column: 3)
!4822 = !DILocalVariable(name: "__wq_entry", scope: !4823, file: !3, line: 349, type: !4481)
!4823 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 349, column: 3)
!4824 = !DILocalVariable(name: "__ret", scope: !4823, file: !3, line: 349, type: !131)
!4825 = !DILocalVariable(name: "__int", scope: !4826, file: !3, line: 349, type: !131)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 349, column: 3)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 349, column: 3)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 349, column: 3)
!4829 = !DILocalVariable(name: "__cond", scope: !4830, file: !3, line: 349, type: !150)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 349, column: 3)
!4831 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 349, column: 3)
!4832 = !DILabel(scope: !4823, name: "__out", file: !3, line: 349)
!4833 = !DILabel(scope: !4771, name: "out_reset_flags", file: !3, line: 369)
!4834 = !DILocation(line: 265, column: 34, scope: !4771)
!4835 = !DILocation(line: 265, column: 46, scope: !4771)
!4836 = !DILocation(line: 265, column: 66, scope: !4771)
!4837 = !DILocation(line: 267, column: 2, scope: !4771)
!4838 = !DILocation(line: 267, column: 15, scope: !4771)
!4839 = !DILocation(line: 268, column: 2, scope: !4771)
!4840 = !DILocation(line: 268, column: 15, scope: !4771)
!4841 = !DILocation(line: 268, column: 23, scope: !4771)
!4842 = !DILocation(line: 268, column: 31, scope: !4771)
!4843 = !DILocation(line: 268, column: 38, scope: !4771)
!4844 = !DILocation(line: 269, column: 2, scope: !4771)
!4845 = !DILocation(line: 269, column: 15, scope: !4771)
!4846 = !DILocation(line: 269, column: 26, scope: !4771)
!4847 = !DILocation(line: 269, column: 34, scope: !4771)
!4848 = !DILocation(line: 269, column: 40, scope: !4771)
!4849 = !DILocation(line: 270, column: 2, scope: !4771)
!4850 = !DILocation(line: 270, column: 6, scope: !4771)
!4851 = !DILocation(line: 271, column: 2, scope: !4771)
!4852 = !DILocation(line: 271, column: 6, scope: !4771)
!4853 = !DILocation(line: 272, column: 2, scope: !4771)
!4854 = !DILocation(line: 272, column: 5, scope: !4771)
!4855 = !DILocation(line: 274, column: 6, scope: !4788)
!4856 = !DILocation(line: 274, column: 14, scope: !4788)
!4857 = !DILocation(line: 274, column: 6, scope: !4771)
!4858 = !DILocation(line: 275, column: 3, scope: !4786)
!4859 = !DILocation(line: 275, column: 3, scope: !4791)
!4860 = !DILocation(line: 275, column: 3, scope: !4790)
!4861 = !DILocation(line: 275, column: 3, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 275, column: 3)
!4863 = !DILocation(line: 275, column: 3, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 275, column: 3)
!4865 = !{i64 2154126145, i64 2154126174, i64 2154126220, i64 2154126278, i64 2154126332, i64 2154126386, i64 2154126441, i64 2154126472, i64 2154126780, i64 2154126786, i64 2154126833, i64 2154126856, i64 2154126882}
!4866 = !DILocation(line: 275, column: 3, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 275, column: 3)
!4868 = !DILocation(line: 275, column: 3, scope: !4787)
!4869 = !DILocation(line: 276, column: 3, scope: !4787)
!4870 = !DILocation(line: 279, column: 6, scope: !4795)
!4871 = !DILocation(line: 279, column: 11, scope: !4795)
!4872 = !DILocation(line: 279, column: 15, scope: !4795)
!4873 = !DILocation(line: 279, column: 6, scope: !4771)
!4874 = !DILocation(line: 280, column: 3, scope: !4793)
!4875 = !DILocation(line: 280, column: 3, scope: !4798)
!4876 = !DILocation(line: 280, column: 3, scope: !4797)
!4877 = !DILocation(line: 280, column: 3, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 280, column: 3)
!4879 = !DILocation(line: 280, column: 3, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 280, column: 3)
!4881 = !{i64 2154127641, i64 2154127670, i64 2154127716, i64 2154127774, i64 2154127828, i64 2154127882, i64 2154127937, i64 2154127968, i64 2154128276, i64 2154128282, i64 2154128329, i64 2154128352, i64 2154128378}
!4882 = !DILocation(line: 280, column: 3, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 280, column: 3)
!4884 = !DILocation(line: 280, column: 3, scope: !4794)
!4885 = !DILocation(line: 281, column: 3, scope: !4794)
!4886 = !DILocation(line: 284, column: 2, scope: !4771)
!4887 = !DILocation(line: 284, column: 21, scope: !4771)
!4888 = !DILocation(line: 284, column: 28, scope: !4771)
!4889 = !DILocation(line: 286, column: 17, scope: !4771)
!4890 = !DILocation(line: 286, column: 25, scope: !4771)
!4891 = !DILocation(line: 286, column: 2, scope: !4771)
!4892 = !DILocation(line: 288, column: 19, scope: !4771)
!4893 = !DILocation(line: 288, column: 2, scope: !4771)
!4894 = !DILocation(line: 288, column: 10, scope: !4771)
!4895 = !DILocation(line: 288, column: 17, scope: !4771)
!4896 = !DILocation(line: 290, column: 10, scope: !4771)
!4897 = !DILocation(line: 290, column: 2, scope: !4771)
!4898 = !DILocation(line: 296, column: 3, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 290, column: 19)
!4900 = !DILocation(line: 296, column: 11, scope: !4899)
!4901 = !DILocation(line: 296, column: 17, scope: !4899)
!4902 = !DILocation(line: 297, column: 3, scope: !4899)
!4903 = !DILocation(line: 302, column: 3, scope: !4899)
!4904 = !DILocation(line: 302, column: 11, scope: !4899)
!4905 = !DILocation(line: 302, column: 17, scope: !4899)
!4906 = !DILocation(line: 303, column: 3, scope: !4899)
!4907 = !DILocation(line: 306, column: 3, scope: !4899)
!4908 = !DILocation(line: 306, column: 11, scope: !4899)
!4909 = !DILocation(line: 306, column: 17, scope: !4899)
!4910 = !DILocation(line: 307, column: 3, scope: !4899)
!4911 = !DILocation(line: 310, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 310, column: 6)
!4913 = !DILocation(line: 310, column: 6, scope: !4771)
!4914 = !DILocation(line: 312, column: 3, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 310, column: 15)
!4916 = !DILocation(line: 312, column: 11, scope: !4915)
!4917 = !DILocation(line: 312, column: 17, scope: !4915)
!4918 = !DILocation(line: 313, column: 7, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 313, column: 7)
!4920 = !DILocation(line: 313, column: 7, scope: !4915)
!4921 = !DILocation(line: 314, column: 11, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 314, column: 4)
!4923 = !DILocation(line: 314, column: 9, scope: !4922)
!4924 = !DILocation(line: 314, column: 16, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 314, column: 4)
!4926 = !DILocation(line: 314, column: 20, scope: !4925)
!4927 = !DILocation(line: 314, column: 18, scope: !4925)
!4928 = !DILocation(line: 314, column: 4, scope: !4922)
!4929 = !DILocation(line: 315, column: 41, scope: !4925)
!4930 = !DILocation(line: 315, column: 47, scope: !4925)
!4931 = !DILocation(line: 315, column: 5, scope: !4925)
!4932 = !DILocation(line: 315, column: 13, scope: !4925)
!4933 = !DILocation(line: 315, column: 21, scope: !4925)
!4934 = !DILocation(line: 315, column: 29, scope: !4925)
!4935 = !DILocation(line: 315, column: 36, scope: !4925)
!4936 = !DILocation(line: 315, column: 34, scope: !4925)
!4937 = !DILocation(line: 315, column: 39, scope: !4925)
!4938 = !DILocation(line: 314, column: 30, scope: !4925)
!4939 = !DILocation(line: 314, column: 4, scope: !4925)
!4940 = distinct !{!4940, !4928, !4941, !4563, !4547}
!4941 = !DILocation(line: 315, column: 48, scope: !4922)
!4942 = !DILocation(line: 316, column: 2, scope: !4915)
!4943 = !DILocation(line: 323, column: 12, scope: !4771)
!4944 = !DILocation(line: 323, column: 20, scope: !4771)
!4945 = !DILocation(line: 323, column: 10, scope: !4771)
!4946 = !DILocation(line: 325, column: 23, scope: !4771)
!4947 = !DILocation(line: 325, column: 31, scope: !4771)
!4948 = !DILocation(line: 325, column: 39, scope: !4771)
!4949 = !DILocation(line: 325, column: 47, scope: !4771)
!4950 = !DILocation(line: 325, column: 7, scope: !4771)
!4951 = !DILocation(line: 325, column: 5, scope: !4771)
!4952 = !DILocation(line: 326, column: 6, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 326, column: 6)
!4954 = !DILocation(line: 326, column: 6, scope: !4771)
!4955 = !DILocation(line: 327, column: 3, scope: !4953)
!4956 = !DILocation(line: 330, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 330, column: 2)
!4958 = !DILocation(line: 330, column: 7, scope: !4957)
!4959 = !DILocation(line: 330, column: 14, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 330, column: 2)
!4961 = !DILocation(line: 330, column: 18, scope: !4960)
!4962 = !DILocation(line: 330, column: 16, scope: !4960)
!4963 = !DILocation(line: 330, column: 2, scope: !4957)
!4964 = !DILocation(line: 331, column: 24, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 330, column: 29)
!4966 = !DILocation(line: 331, column: 32, scope: !4965)
!4967 = !DILocation(line: 331, column: 38, scope: !4965)
!4968 = !DILocation(line: 331, column: 8, scope: !4965)
!4969 = !DILocation(line: 331, column: 6, scope: !4965)
!4970 = !DILocation(line: 332, column: 7, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 332, column: 7)
!4972 = !DILocation(line: 332, column: 7, scope: !4965)
!4973 = !DILocation(line: 333, column: 4, scope: !4971)
!4974 = !DILocation(line: 334, column: 2, scope: !4965)
!4975 = !DILocation(line: 330, column: 25, scope: !4960)
!4976 = !DILocation(line: 330, column: 2, scope: !4960)
!4977 = distinct !{!4977, !4963, !4978, !4563, !4547}
!4978 = !DILocation(line: 334, column: 2, scope: !4957)
!4979 = !DILocation(line: 336, column: 20, scope: !4771)
!4980 = !DILocation(line: 336, column: 28, scope: !4771)
!4981 = !DILocation(line: 336, column: 2, scope: !4771)
!4982 = !DILocation(line: 341, column: 29, scope: !4771)
!4983 = !DILocation(line: 341, column: 37, scope: !4771)
!4984 = !DILocation(line: 341, column: 12, scope: !4771)
!4985 = !DILocation(line: 341, column: 10, scope: !4771)
!4986 = !DILocation(line: 343, column: 12, scope: !4800)
!4987 = !DILocation(line: 343, column: 12, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 343, column: 12)
!4989 = !DILocation(line: 343, column: 12, scope: !4802)
!4990 = !DILocation(line: 343, column: 12, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 343, column: 12)
!4992 = !DILocation(line: 343, column: 12, scope: !4803)
!4993 = !DILocation(line: 343, column: 12, scope: !4805)
!4994 = !DILocation(line: 343, column: 12, scope: !4808)
!4995 = !DILocation(line: 343, column: 12, scope: !4812)
!4996 = !DILocation(line: 343, column: 12, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 343, column: 12)
!4998 = !DILocation(line: 343, column: 12, scope: !4813)
!4999 = !DILocation(line: 343, column: 12, scope: !4809)
!5000 = distinct !{!5000, !5001, !5001, !4547}
!5001 = !DILocation(line: 343, column: 12, scope: !4810)
!5002 = !DILocation(line: 343, column: 12, scope: !4771)
!5003 = !DILocation(line: 343, column: 10, scope: !4771)
!5004 = !DILocation(line: 346, column: 6, scope: !4818)
!5005 = !DILocation(line: 346, column: 14, scope: !4818)
!5006 = !DILocation(line: 346, column: 21, scope: !4818)
!5007 = !DILocation(line: 346, column: 26, scope: !4818)
!5008 = !DILocation(line: 346, column: 34, scope: !4818)
!5009 = !DILocation(line: 346, column: 40, scope: !4818)
!5010 = !DILocation(line: 346, column: 6, scope: !4771)
!5011 = !DILocation(line: 348, column: 32, scope: !4817)
!5012 = !DILocation(line: 348, column: 40, scope: !4817)
!5013 = !DILocation(line: 348, column: 49, scope: !4817)
!5014 = !DILocation(line: 348, column: 13, scope: !4817)
!5015 = !DILocation(line: 348, column: 11, scope: !4817)
!5016 = !DILocation(line: 349, column: 3, scope: !4816)
!5017 = !DILocation(line: 349, column: 3, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 349, column: 3)
!5019 = !DILocation(line: 349, column: 3, scope: !4820)
!5020 = !DILocation(line: 349, column: 3, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 349, column: 3)
!5022 = !DILocation(line: 349, column: 3, scope: !4821)
!5023 = !DILocation(line: 349, column: 3, scope: !4823)
!5024 = !DILocation(line: 349, column: 3, scope: !4826)
!5025 = !DILocation(line: 349, column: 3, scope: !4830)
!5026 = !DILocation(line: 349, column: 3, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 349, column: 3)
!5028 = !DILocation(line: 349, column: 3, scope: !4831)
!5029 = !DILocation(line: 349, column: 3, scope: !4827)
!5030 = distinct !{!5030, !5031, !5031, !4547}
!5031 = !DILocation(line: 349, column: 3, scope: !4828)
!5032 = !DILocation(line: 349, column: 3, scope: !4817)
!5033 = !DILocation(line: 351, column: 2, scope: !4817)
!5034 = !DILocation(line: 353, column: 17, scope: !4771)
!5035 = !DILocation(line: 353, column: 25, scope: !4771)
!5036 = !DILocation(line: 353, column: 2, scope: !4771)
!5037 = !DILocation(line: 355, column: 6, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 355, column: 6)
!5039 = !DILocation(line: 355, column: 6, scope: !4771)
!5040 = !DILocation(line: 356, column: 10, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 356, column: 3)
!5042 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 355, column: 13)
!5043 = !DILocation(line: 356, column: 8, scope: !5041)
!5044 = !DILocation(line: 356, column: 15, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 356, column: 3)
!5046 = !DILocation(line: 356, column: 19, scope: !5045)
!5047 = !DILocation(line: 356, column: 17, scope: !5045)
!5048 = !DILocation(line: 356, column: 3, scope: !5041)
!5049 = !DILocation(line: 357, column: 15, scope: !5045)
!5050 = !DILocation(line: 357, column: 23, scope: !5045)
!5051 = !DILocation(line: 357, column: 31, scope: !5045)
!5052 = !DILocation(line: 357, column: 39, scope: !5045)
!5053 = !DILocation(line: 357, column: 46, scope: !5045)
!5054 = !DILocation(line: 357, column: 44, scope: !5045)
!5055 = !DILocation(line: 357, column: 4, scope: !5045)
!5056 = !DILocation(line: 357, column: 10, scope: !5045)
!5057 = !DILocation(line: 357, column: 13, scope: !5045)
!5058 = !DILocation(line: 356, column: 29, scope: !5045)
!5059 = !DILocation(line: 356, column: 3, scope: !5045)
!5060 = distinct !{!5060, !5048, !5061, !4563, !4547}
!5061 = !DILocation(line: 357, column: 47, scope: !5041)
!5062 = !DILocation(line: 358, column: 25, scope: !5042)
!5063 = !DILocation(line: 358, column: 32, scope: !5042)
!5064 = !DILocation(line: 358, column: 3, scope: !5042)
!5065 = !DILocation(line: 359, column: 2, scope: !5042)
!5066 = !DILocation(line: 361, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 361, column: 6)
!5068 = !DILocation(line: 361, column: 14, scope: !5067)
!5069 = !DILocation(line: 361, column: 21, scope: !5067)
!5070 = !DILocation(line: 362, column: 7, scope: !5067)
!5071 = !DILocation(line: 362, column: 15, scope: !5067)
!5072 = !DILocation(line: 362, column: 36, scope: !5067)
!5073 = !DILocation(line: 362, column: 39, scope: !5067)
!5074 = !DILocation(line: 362, column: 47, scope: !5067)
!5075 = !DILocation(line: 362, column: 54, scope: !5067)
!5076 = !DILocation(line: 361, column: 6, scope: !4771)
!5077 = !DILocation(line: 363, column: 6, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 362, column: 61)
!5079 = !DILocation(line: 364, column: 3, scope: !5078)
!5080 = !DILocation(line: 367, column: 5, scope: !4771)
!5081 = !DILocation(line: 367, column: 2, scope: !4771)
!5082 = !DILocation(line: 369, column: 2, scope: !4771)
!5083 = !DILocation(line: 370, column: 2, scope: !4771)
!5084 = !DILocation(line: 370, column: 10, scope: !4771)
!5085 = !DILocation(line: 370, column: 16, scope: !4771)
!5086 = !DILocation(line: 371, column: 20, scope: !4771)
!5087 = !DILocation(line: 371, column: 28, scope: !4771)
!5088 = !DILocation(line: 371, column: 2, scope: !4771)
!5089 = !DILocation(line: 383, column: 9, scope: !4771)
!5090 = !DILocation(line: 383, column: 12, scope: !4771)
!5091 = !DILocation(line: 383, column: 25, scope: !4771)
!5092 = !DILocation(line: 383, column: 2, scope: !4771)
!5093 = !DILocation(line: 384, column: 1, scope: !4771)
!5094 = distinct !DISubprogram(name: "ps2_adjust_timeout", scope: !3, file: !3, line: 203, type: !5095, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!85, !177, !7, !7}
!5097 = !{!5098, !5099, !5100}
!5098 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5094, file: !3, line: 203, type: !177)
!5099 = !DILocalVariable(name: "command", arg: 2, scope: !5094, file: !3, line: 204, type: !7)
!5100 = !DILocalVariable(name: "timeout", arg: 3, scope: !5094, file: !3, line: 204, type: !7)
!5101 = !DILocation(line: 203, column: 46, scope: !5094)
!5102 = !DILocation(line: 204, column: 23, scope: !5094)
!5103 = !DILocation(line: 204, column: 45, scope: !5094)
!5104 = !DILocation(line: 206, column: 10, scope: !5094)
!5105 = !DILocation(line: 206, column: 2, scope: !5094)
!5106 = !DILocation(line: 215, column: 7, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 215, column: 7)
!5108 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 206, column: 19)
!5109 = !DILocation(line: 215, column: 17, scope: !5107)
!5110 = !DILocation(line: 215, column: 15, scope: !5107)
!5111 = !DILocation(line: 215, column: 7, scope: !5108)
!5112 = !DILocation(line: 216, column: 14, scope: !5107)
!5113 = !DILocation(line: 216, column: 12, scope: !5107)
!5114 = !DILocation(line: 216, column: 4, scope: !5107)
!5115 = !DILocation(line: 217, column: 3, scope: !5108)
!5116 = !DILocation(line: 226, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 226, column: 7)
!5118 = !DILocation(line: 226, column: 15, scope: !5117)
!5119 = !DILocation(line: 226, column: 25, scope: !5117)
!5120 = !DILocation(line: 226, column: 7, scope: !5108)
!5121 = !DILocation(line: 227, column: 19, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 226, column: 34)
!5123 = !DILocation(line: 227, column: 27, scope: !5122)
!5124 = !DILocation(line: 227, column: 4, scope: !5122)
!5125 = !DILocation(line: 228, column: 4, scope: !5122)
!5126 = !DILocation(line: 228, column: 12, scope: !5122)
!5127 = !DILocation(line: 228, column: 18, scope: !5122)
!5128 = !DILocation(line: 229, column: 22, scope: !5122)
!5129 = !DILocation(line: 229, column: 30, scope: !5122)
!5130 = !DILocation(line: 229, column: 4, scope: !5122)
!5131 = !DILocation(line: 230, column: 12, scope: !5122)
!5132 = !DILocation(line: 231, column: 3, scope: !5122)
!5133 = !DILocation(line: 237, column: 27, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 237, column: 7)
!5135 = !DILocation(line: 237, column: 35, scope: !5134)
!5136 = !DILocation(line: 237, column: 8, scope: !5134)
!5137 = !DILocation(line: 237, column: 7, scope: !5108)
!5138 = !DILocation(line: 238, column: 19, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 237, column: 47)
!5140 = !DILocation(line: 238, column: 27, scope: !5139)
!5141 = !DILocation(line: 238, column: 4, scope: !5139)
!5142 = !DILocation(line: 239, column: 20, scope: !5139)
!5143 = !DILocation(line: 239, column: 28, scope: !5139)
!5144 = !DILocation(line: 239, column: 35, scope: !5139)
!5145 = !DILocation(line: 239, column: 4, scope: !5139)
!5146 = !DILocation(line: 239, column: 12, scope: !5139)
!5147 = !DILocation(line: 239, column: 18, scope: !5139)
!5148 = !DILocation(line: 240, column: 22, scope: !5139)
!5149 = !DILocation(line: 240, column: 30, scope: !5139)
!5150 = !DILocation(line: 240, column: 4, scope: !5139)
!5151 = !DILocation(line: 241, column: 12, scope: !5139)
!5152 = !DILocation(line: 242, column: 3, scope: !5139)
!5153 = !DILocation(line: 243, column: 3, scope: !5108)
!5154 = !DILocation(line: 246, column: 3, scope: !5108)
!5155 = !DILocation(line: 249, column: 9, scope: !5094)
!5156 = !DILocation(line: 249, column: 2, scope: !5094)
!5157 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !5158, file: !5158, line: 70, type: !5159, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5158 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5159 = !DISubroutineType(types: !5160)
!5160 = !{null, !426, !400}
!5161 = !{!5162, !5163}
!5162 = !DILocalVariable(name: "address", arg: 1, scope: !5157, file: !5158, line: 70, type: !426)
!5163 = !DILocalVariable(name: "size", arg: 2, scope: !5157, file: !5158, line: 70, type: !400)
!5164 = !DILocation(line: 70, column: 54, scope: !5157)
!5165 = !DILocation(line: 70, column: 70, scope: !5157)
!5166 = !DILocation(line: 72, column: 1, scope: !5157)
!5167 = distinct !DISubprogram(name: "ps2_command", scope: !3, file: !3, line: 401, type: !4772, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5168)
!5168 = !{!5169, !5170, !5171, !5172}
!5169 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5167, file: !3, line: 401, type: !177)
!5170 = !DILocalVariable(name: "param", arg: 2, scope: !5167, file: !3, line: 401, type: !4774)
!5171 = !DILocalVariable(name: "command", arg: 3, scope: !5167, file: !3, line: 401, type: !7)
!5172 = !DILocalVariable(name: "rc", scope: !5167, file: !3, line: 403, type: !85)
!5173 = !DILocation(line: 401, column: 32, scope: !5167)
!5174 = !DILocation(line: 401, column: 44, scope: !5167)
!5175 = !DILocation(line: 401, column: 64, scope: !5167)
!5176 = !DILocation(line: 403, column: 2, scope: !5167)
!5177 = !DILocation(line: 403, column: 6, scope: !5167)
!5178 = !DILocation(line: 405, column: 20, scope: !5167)
!5179 = !DILocation(line: 405, column: 2, scope: !5167)
!5180 = !DILocation(line: 406, column: 21, scope: !5167)
!5181 = !DILocation(line: 406, column: 29, scope: !5167)
!5182 = !DILocation(line: 406, column: 36, scope: !5167)
!5183 = !DILocation(line: 406, column: 7, scope: !5167)
!5184 = !DILocation(line: 406, column: 5, scope: !5167)
!5185 = !DILocation(line: 407, column: 18, scope: !5167)
!5186 = !DILocation(line: 407, column: 2, scope: !5167)
!5187 = !DILocation(line: 409, column: 9, scope: !5167)
!5188 = !DILocation(line: 410, column: 1, scope: !5167)
!5189 = !DILocation(line: 409, column: 2, scope: !5167)
!5190 = distinct !DISubprogram(name: "ps2_sliced_command", scope: !3, file: !3, line: 423, type: !5191, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5193)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!85, !177, !153}
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5202}
!5194 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5190, file: !3, line: 423, type: !177)
!5195 = !DILocalVariable(name: "command", arg: 2, scope: !5190, file: !3, line: 423, type: !153)
!5196 = !DILocalVariable(name: "i", scope: !5190, file: !3, line: 425, type: !85)
!5197 = !DILocalVariable(name: "retval", scope: !5190, file: !3, line: 426, type: !85)
!5198 = !DILocalVariable(name: "d", scope: !5199, file: !3, line: 435, type: !153)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 434, column: 30)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 434, column: 2)
!5201 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 434, column: 2)
!5202 = !DILabel(scope: !5190, name: "out", file: !3, line: 441)
!5203 = !DILocation(line: 423, column: 39, scope: !5190)
!5204 = !DILocation(line: 423, column: 50, scope: !5190)
!5205 = !DILocation(line: 425, column: 2, scope: !5190)
!5206 = !DILocation(line: 425, column: 6, scope: !5190)
!5207 = !DILocation(line: 426, column: 2, scope: !5190)
!5208 = !DILocation(line: 426, column: 6, scope: !5190)
!5209 = !DILocation(line: 428, column: 20, scope: !5190)
!5210 = !DILocation(line: 428, column: 2, scope: !5190)
!5211 = !DILocation(line: 430, column: 25, scope: !5190)
!5212 = !DILocation(line: 430, column: 11, scope: !5190)
!5213 = !DILocation(line: 430, column: 9, scope: !5190)
!5214 = !DILocation(line: 431, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 431, column: 6)
!5216 = !DILocation(line: 431, column: 6, scope: !5190)
!5217 = !DILocation(line: 432, column: 3, scope: !5215)
!5218 = !DILocation(line: 434, column: 9, scope: !5201)
!5219 = !DILocation(line: 434, column: 7, scope: !5201)
!5220 = !DILocation(line: 434, column: 14, scope: !5200)
!5221 = !DILocation(line: 434, column: 16, scope: !5200)
!5222 = !DILocation(line: 434, column: 2, scope: !5201)
!5223 = !DILocation(line: 435, column: 3, scope: !5199)
!5224 = !DILocation(line: 435, column: 6, scope: !5199)
!5225 = !DILocation(line: 435, column: 11, scope: !5199)
!5226 = !DILocation(line: 435, column: 22, scope: !5199)
!5227 = !DILocation(line: 435, column: 19, scope: !5199)
!5228 = !DILocation(line: 435, column: 25, scope: !5199)
!5229 = !DILocation(line: 435, column: 10, scope: !5199)
!5230 = !DILocation(line: 436, column: 26, scope: !5199)
!5231 = !DILocation(line: 436, column: 12, scope: !5199)
!5232 = !DILocation(line: 436, column: 10, scope: !5199)
!5233 = !DILocation(line: 437, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 437, column: 7)
!5235 = !DILocation(line: 437, column: 7, scope: !5199)
!5236 = !DILocation(line: 438, column: 4, scope: !5234)
!5237 = !DILocation(line: 439, column: 2, scope: !5200)
!5238 = !DILocation(line: 439, column: 2, scope: !5199)
!5239 = !DILocation(line: 434, column: 24, scope: !5200)
!5240 = !DILocation(line: 434, column: 2, scope: !5200)
!5241 = distinct !{!5241, !5222, !5242, !4563, !4547}
!5242 = !DILocation(line: 439, column: 2, scope: !5201)
!5243 = !DILocation(line: 441, column: 1, scope: !5190)
!5244 = !DILocation(line: 443, column: 18, scope: !5190)
!5245 = !DILocation(line: 443, column: 2, scope: !5190)
!5246 = !DILocation(line: 444, column: 9, scope: !5190)
!5247 = !DILocation(line: 445, column: 1, scope: !5190)
!5248 = !DILocation(line: 444, column: 2, scope: !5190)
!5249 = !DILocation(line: 457, column: 30, scope: !174)
!5250 = !DILocation(line: 457, column: 52, scope: !174)
!5251 = !DILocation(line: 458, column: 34, scope: !174)
!5252 = !DILocation(line: 459, column: 30, scope: !174)
!5253 = !DILocation(line: 461, column: 32, scope: !174)
!5254 = !DILocation(line: 461, column: 2, scope: !174)
!5255 = !DILocation(line: 461, column: 10, scope: !174)
!5256 = !DILocation(line: 461, column: 30, scope: !174)
!5257 = !DILocation(line: 462, column: 28, scope: !174)
!5258 = !DILocation(line: 462, column: 2, scope: !174)
!5259 = !DILocation(line: 462, column: 10, scope: !174)
!5260 = !DILocation(line: 462, column: 26, scope: !174)
!5261 = !DILocation(line: 464, column: 2, scope: !174)
!5262 = !DILocation(line: 464, column: 2, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !174, file: !3, line: 464, column: 2)
!5264 = !DILocation(line: 465, column: 2, scope: !174)
!5265 = !DILocation(line: 465, column: 2, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !174, file: !3, line: 465, column: 2)
!5267 = !DILocation(line: 466, column: 2, scope: !174)
!5268 = !DILocation(line: 466, column: 2, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !174, file: !3, line: 466, column: 2)
!5270 = !DILocation(line: 467, column: 18, scope: !174)
!5271 = !DILocation(line: 467, column: 2, scope: !174)
!5272 = !DILocation(line: 467, column: 10, scope: !174)
!5273 = !DILocation(line: 467, column: 16, scope: !174)
!5274 = !DILocation(line: 468, column: 20, scope: !174)
!5275 = !DILocation(line: 468, column: 27, scope: !174)
!5276 = !DILocation(line: 468, column: 2, scope: !174)
!5277 = !DILocation(line: 469, column: 1, scope: !174)
!5278 = !DISubprogram(name: "__mutex_init", scope: !553, file: !553, line: 121, type: !5279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{null, !4360, !270, !5281}
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!5282 = !DISubprogram(name: "__init_waitqueue_head", scope: !620, file: !620, line: 64, type: !5283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !4755, !270, !5281}
!5285 = distinct !DISubprogram(name: "serio_set_drvdata", scope: !183, file: !183, line: 146, type: !5286, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{null, !181, !130}
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "serio", arg: 1, scope: !5285, file: !183, line: 146, type: !181)
!5290 = !DILocalVariable(name: "data", arg: 2, scope: !5285, file: !183, line: 146, type: !130)
!5291 = !DILocation(line: 146, column: 52, scope: !5285)
!5292 = !DILocation(line: 146, column: 65, scope: !5285)
!5293 = !DILocation(line: 148, column: 19, scope: !5285)
!5294 = !DILocation(line: 148, column: 26, scope: !5285)
!5295 = !DILocation(line: 148, column: 31, scope: !5285)
!5296 = !DILocation(line: 148, column: 2, scope: !5285)
!5297 = !DILocation(line: 149, column: 1, scope: !5285)
!5298 = distinct !DISubprogram(name: "ps2_interrupt", scope: !3, file: !3, line: 594, type: !5299, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5301)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!281, !181, !153, !7}
!5301 = !{!5302, !5303, !5304, !5305, !5306}
!5302 = !DILocalVariable(name: "serio", arg: 1, scope: !5298, file: !3, line: 594, type: !181)
!5303 = !DILocalVariable(name: "data", arg: 2, scope: !5298, file: !3, line: 594, type: !153)
!5304 = !DILocalVariable(name: "flags", arg: 3, scope: !5298, file: !3, line: 594, type: !7)
!5305 = !DILocalVariable(name: "ps2dev", scope: !5298, file: !3, line: 595, type: !177)
!5306 = !DILocalVariable(name: "rc", scope: !5298, file: !3, line: 596, type: !123)
!5307 = !DILocation(line: 594, column: 41, scope: !5298)
!5308 = !DILocation(line: 594, column: 51, scope: !5298)
!5309 = !DILocation(line: 594, column: 70, scope: !5298)
!5310 = !DILocation(line: 595, column: 2, scope: !5298)
!5311 = !DILocation(line: 595, column: 17, scope: !5298)
!5312 = !DILocation(line: 595, column: 44, scope: !5298)
!5313 = !DILocation(line: 595, column: 26, scope: !5298)
!5314 = !DILocation(line: 596, column: 2, scope: !5298)
!5315 = !DILocation(line: 596, column: 23, scope: !5298)
!5316 = !DILocation(line: 598, column: 7, scope: !5298)
!5317 = !DILocation(line: 598, column: 15, scope: !5298)
!5318 = !DILocation(line: 598, column: 35, scope: !5298)
!5319 = !DILocation(line: 598, column: 43, scope: !5298)
!5320 = !DILocation(line: 598, column: 49, scope: !5298)
!5321 = !DILocation(line: 598, column: 5, scope: !5298)
!5322 = !DILocation(line: 599, column: 10, scope: !5298)
!5323 = !DILocation(line: 599, column: 2, scope: !5298)
!5324 = !DILocation(line: 601, column: 15, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 599, column: 14)
!5326 = !DILocation(line: 601, column: 3, scope: !5325)
!5327 = !DILocation(line: 602, column: 3, scope: !5325)
!5328 = !DILocation(line: 608, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 608, column: 7)
!5330 = !DILocation(line: 608, column: 15, scope: !5329)
!5331 = !DILocation(line: 608, column: 21, scope: !5329)
!5332 = !DILocation(line: 608, column: 7, scope: !5325)
!5333 = !DILocation(line: 609, column: 19, scope: !5329)
!5334 = !DILocation(line: 609, column: 27, scope: !5329)
!5335 = !DILocation(line: 609, column: 4, scope: !5329)
!5336 = !DILocation(line: 610, column: 12, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 610, column: 12)
!5338 = !DILocation(line: 610, column: 20, scope: !5337)
!5339 = !DILocation(line: 610, column: 26, scope: !5337)
!5340 = !DILocation(line: 610, column: 12, scope: !5329)
!5341 = !DILocation(line: 611, column: 24, scope: !5337)
!5342 = !DILocation(line: 611, column: 32, scope: !5337)
!5343 = !DILocation(line: 611, column: 4, scope: !5337)
!5344 = !DILocation(line: 613, column: 4, scope: !5337)
!5345 = !DILocation(line: 613, column: 12, scope: !5337)
!5346 = !DILocation(line: 613, column: 28, scope: !5337)
!5347 = !DILocation(line: 613, column: 36, scope: !5337)
!5348 = !DILocation(line: 614, column: 3, scope: !5325)
!5349 = !DILocation(line: 618, column: 1, scope: !5298)
!5350 = !DILocation(line: 617, column: 2, scope: !5298)
!5351 = distinct !DISubprogram(name: "serio_get_drvdata", scope: !183, file: !183, line: 141, type: !5352, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5354)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!130, !181}
!5354 = !{!5355}
!5355 = !DILocalVariable(name: "serio", arg: 1, scope: !5351, file: !183, line: 141, type: !181)
!5356 = !DILocation(line: 141, column: 53, scope: !5351)
!5357 = !DILocation(line: 143, column: 26, scope: !5351)
!5358 = !DILocation(line: 143, column: 33, scope: !5351)
!5359 = !DILocation(line: 143, column: 9, scope: !5351)
!5360 = !DILocation(line: 143, column: 2, scope: !5351)
!5361 = distinct !DISubprogram(name: "ps2_cleanup", scope: !3, file: !3, line: 569, type: !4601, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5362)
!5362 = !{!5363, !5364}
!5363 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5361, file: !3, line: 569, type: !177)
!5364 = !DILocalVariable(name: "old_flags", scope: !5361, file: !3, line: 571, type: !403)
!5365 = !DILocation(line: 569, column: 40, scope: !5361)
!5366 = !DILocation(line: 571, column: 2, scope: !5361)
!5367 = !DILocation(line: 571, column: 16, scope: !5361)
!5368 = !DILocation(line: 571, column: 28, scope: !5361)
!5369 = !DILocation(line: 571, column: 36, scope: !5361)
!5370 = !DILocation(line: 574, column: 2, scope: !5361)
!5371 = !DILocation(line: 574, column: 10, scope: !5361)
!5372 = !DILocation(line: 574, column: 16, scope: !5361)
!5373 = !DILocation(line: 576, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 576, column: 6)
!5375 = !DILocation(line: 576, column: 16, scope: !5374)
!5376 = !DILocation(line: 576, column: 6, scope: !5361)
!5377 = !DILocation(line: 577, column: 3, scope: !5374)
!5378 = !DILocation(line: 577, column: 11, scope: !5374)
!5379 = !DILocation(line: 577, column: 15, scope: !5374)
!5380 = !DILocation(line: 579, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 579, column: 6)
!5382 = !DILocation(line: 579, column: 16, scope: !5381)
!5383 = !DILocation(line: 579, column: 6, scope: !5361)
!5384 = !DILocation(line: 580, column: 3, scope: !5381)
!5385 = !DILocation(line: 581, column: 1, scope: !5361)
!5386 = distinct !DISubprogram(name: "ps2_handle_ack", scope: !3, file: !3, line: 501, type: !4376, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5387)
!5387 = !{!5388, !5389}
!5388 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5386, file: !3, line: 501, type: !177)
!5389 = !DILocalVariable(name: "data", arg: 2, scope: !5386, file: !3, line: 501, type: !153)
!5390 = !DILocation(line: 501, column: 43, scope: !5386)
!5391 = !DILocation(line: 501, column: 54, scope: !5386)
!5392 = !DILocation(line: 503, column: 10, scope: !5386)
!5393 = !DILocation(line: 503, column: 2, scope: !5386)
!5394 = !DILocation(line: 505, column: 3, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 503, column: 16)
!5396 = !DILocation(line: 505, column: 11, scope: !5395)
!5397 = !DILocation(line: 505, column: 15, scope: !5395)
!5398 = !DILocation(line: 506, column: 3, scope: !5395)
!5399 = !DILocation(line: 509, column: 3, scope: !5395)
!5400 = !DILocation(line: 509, column: 11, scope: !5395)
!5401 = !DILocation(line: 509, column: 17, scope: !5395)
!5402 = !DILocation(line: 510, column: 3, scope: !5395)
!5403 = !DILocation(line: 510, column: 11, scope: !5395)
!5404 = !DILocation(line: 510, column: 15, scope: !5395)
!5405 = !DILocation(line: 511, column: 3, scope: !5395)
!5406 = !DILocation(line: 514, column: 7, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 514, column: 7)
!5408 = !DILocation(line: 514, column: 15, scope: !5407)
!5409 = !DILocation(line: 514, column: 21, scope: !5407)
!5410 = !DILocation(line: 514, column: 7, scope: !5395)
!5411 = !DILocation(line: 515, column: 4, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 514, column: 37)
!5413 = !DILocation(line: 515, column: 12, scope: !5412)
!5414 = !DILocation(line: 515, column: 18, scope: !5412)
!5415 = !DILocation(line: 516, column: 4, scope: !5412)
!5416 = !DILocation(line: 516, column: 12, scope: !5412)
!5417 = !DILocation(line: 516, column: 16, scope: !5412)
!5418 = !DILocation(line: 517, column: 4, scope: !5412)
!5419 = !DILocation(line: 514, column: 23, scope: !5407)
!5420 = !DILocation(line: 528, column: 7, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 528, column: 7)
!5422 = !DILocation(line: 528, column: 15, scope: !5421)
!5423 = !DILocation(line: 528, column: 21, scope: !5421)
!5424 = !DILocation(line: 528, column: 7, scope: !5395)
!5425 = !DILocation(line: 529, column: 4, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 528, column: 40)
!5427 = !DILocation(line: 529, column: 12, scope: !5426)
!5428 = !DILocation(line: 529, column: 16, scope: !5426)
!5429 = !DILocation(line: 530, column: 4, scope: !5426)
!5430 = !DILocation(line: 528, column: 23, scope: !5421)
!5431 = !DILocation(line: 548, column: 7, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 548, column: 7)
!5433 = !DILocation(line: 548, column: 15, scope: !5432)
!5434 = !DILocation(line: 548, column: 21, scope: !5432)
!5435 = !DILocation(line: 548, column: 7, scope: !5395)
!5436 = !DILocation(line: 549, column: 4, scope: !5432)
!5437 = !DILocation(line: 549, column: 12, scope: !5432)
!5438 = !DILocation(line: 549, column: 28, scope: !5432)
!5439 = !DILocation(line: 549, column: 36, scope: !5432)
!5440 = !DILocation(line: 550, column: 3, scope: !5395)
!5441 = !DILocation(line: 550, column: 11, scope: !5395)
!5442 = !DILocation(line: 550, column: 17, scope: !5395)
!5443 = !DILocation(line: 551, column: 3, scope: !5395)
!5444 = !DILocation(line: 554, column: 7, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 554, column: 6)
!5446 = !DILocation(line: 554, column: 15, scope: !5445)
!5447 = !DILocation(line: 554, column: 6, scope: !5386)
!5448 = !DILocation(line: 555, column: 3, scope: !5445)
!5449 = !DILocation(line: 555, column: 11, scope: !5445)
!5450 = !DILocation(line: 555, column: 17, scope: !5445)
!5451 = !DILocation(line: 557, column: 2, scope: !5386)
!5452 = !DILocation(line: 557, column: 10, scope: !5386)
!5453 = !DILocation(line: 557, column: 16, scope: !5386)
!5454 = !DILocation(line: 559, column: 7, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 559, column: 6)
!5456 = !DILocation(line: 559, column: 15, scope: !5455)
!5457 = !DILocation(line: 559, column: 19, scope: !5455)
!5458 = !DILocation(line: 559, column: 22, scope: !5455)
!5459 = !DILocation(line: 559, column: 27, scope: !5455)
!5460 = !DILocation(line: 559, column: 6, scope: !5386)
!5461 = !DILocation(line: 560, column: 23, scope: !5455)
!5462 = !DILocation(line: 560, column: 31, scope: !5455)
!5463 = !DILocation(line: 560, column: 3, scope: !5455)
!5464 = !DILocation(line: 562, column: 3, scope: !5455)
!5465 = !DILocation(line: 563, column: 1, scope: !5386)
!5466 = distinct !DISubprogram(name: "ps2_handle_response", scope: !3, file: !3, line: 479, type: !4376, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5467)
!5467 = !{!5468, !5469}
!5468 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5466, file: !3, line: 479, type: !177)
!5469 = !DILocalVariable(name: "data", arg: 2, scope: !5466, file: !3, line: 479, type: !153)
!5470 = !DILocation(line: 479, column: 48, scope: !5466)
!5471 = !DILocation(line: 479, column: 59, scope: !5466)
!5472 = !DILocation(line: 481, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 481, column: 6)
!5474 = !DILocation(line: 481, column: 14, scope: !5473)
!5475 = !DILocation(line: 481, column: 6, scope: !5466)
!5476 = !DILocation(line: 482, column: 38, scope: !5473)
!5477 = !DILocation(line: 482, column: 3, scope: !5473)
!5478 = !DILocation(line: 482, column: 11, scope: !5473)
!5479 = !DILocation(line: 482, column: 20, scope: !5473)
!5480 = !DILocation(line: 482, column: 28, scope: !5473)
!5481 = !DILocation(line: 482, column: 18, scope: !5473)
!5482 = !DILocation(line: 482, column: 36, scope: !5473)
!5483 = !DILocation(line: 484, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 484, column: 6)
!5485 = !DILocation(line: 484, column: 14, scope: !5484)
!5486 = !DILocation(line: 484, column: 20, scope: !5484)
!5487 = !DILocation(line: 484, column: 6, scope: !5466)
!5488 = !DILocation(line: 485, column: 3, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 484, column: 37)
!5490 = !DILocation(line: 485, column: 11, scope: !5489)
!5491 = !DILocation(line: 485, column: 17, scope: !5489)
!5492 = !DILocation(line: 486, column: 7, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 486, column: 7)
!5494 = !DILocation(line: 486, column: 15, scope: !5493)
!5495 = !DILocation(line: 486, column: 7, scope: !5489)
!5496 = !DILocation(line: 487, column: 4, scope: !5493)
!5497 = !DILocation(line: 488, column: 2, scope: !5489)
!5498 = !DILocation(line: 490, column: 7, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 490, column: 6)
!5500 = !DILocation(line: 490, column: 15, scope: !5499)
!5501 = !DILocation(line: 490, column: 6, scope: !5466)
!5502 = !DILocation(line: 491, column: 3, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 490, column: 23)
!5504 = !DILocation(line: 491, column: 11, scope: !5503)
!5505 = !DILocation(line: 491, column: 17, scope: !5503)
!5506 = !DILocation(line: 492, column: 3, scope: !5503)
!5507 = !DILocation(line: 493, column: 2, scope: !5503)
!5508 = !DILocation(line: 494, column: 1, scope: !5466)
!5509 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5510, file: !5510, line: 374, type: !5511, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5510 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !5513}
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!5514 = !{!5515}
!5515 = !DILocalVariable(name: "lock", arg: 1, scope: !5509, file: !5510, line: 374, type: !5513)
!5516 = !DILocation(line: 374, column: 55, scope: !5509)
!5517 = !DILocation(line: 376, column: 2, scope: !5509)
!5518 = !DILocation(line: 377, column: 1, scope: !5509)
!5519 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5520, file: !5520, line: 29, type: !5521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5520 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5521 = !DISubroutineType(types: !5522)
!5522 = !{null, !5523}
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!5524 = distinct !DISubprogram(name: "serio_write", scope: !183, file: !183, line: 123, type: !244, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5525)
!5525 = !{!5526, !5527}
!5526 = !DILocalVariable(name: "serio", arg: 1, scope: !5524, file: !183, line: 123, type: !181)
!5527 = !DILocalVariable(name: "data", arg: 2, scope: !5524, file: !183, line: 123, type: !157)
!5528 = !DILocation(line: 123, column: 45, scope: !5524)
!5529 = !DILocation(line: 123, column: 66, scope: !5524)
!5530 = !DILocation(line: 125, column: 6, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5524, file: !183, line: 125, column: 6)
!5532 = !DILocation(line: 125, column: 13, scope: !5531)
!5533 = !DILocation(line: 125, column: 6, scope: !5524)
!5534 = !DILocation(line: 126, column: 10, scope: !5531)
!5535 = !DILocation(line: 126, column: 17, scope: !5531)
!5536 = !DILocation(line: 126, column: 23, scope: !5531)
!5537 = !DILocation(line: 126, column: 30, scope: !5531)
!5538 = !DILocation(line: 126, column: 3, scope: !5531)
!5539 = !DILocation(line: 128, column: 3, scope: !5531)
!5540 = !DILocation(line: 129, column: 1, scope: !5524)
!5541 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5510, file: !5510, line: 399, type: !5511, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5542)
!5542 = !{!5543}
!5543 = !DILocalVariable(name: "lock", arg: 1, scope: !5541, file: !5510, line: 399, type: !5513)
!5544 = !DILocation(line: 399, column: 57, scope: !5541)
!5545 = !DILocation(line: 401, column: 2, scope: !5541)
!5546 = !DILocation(line: 402, column: 1, scope: !5541)
!5547 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5520, file: !5520, line: 41, type: !5521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5548 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4721, file: !4721, line: 458, type: !4722, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5549 = !{!5550}
!5550 = !DILocalVariable(name: "m", arg: 1, scope: !5548, file: !4721, line: 458, type: !3630)
!5551 = !DILocation(line: 458, column: 66, scope: !5548)
!5552 = !DILocation(line: 460, column: 10, scope: !5548)
!5553 = !DILocation(line: 460, column: 12, scope: !5548)
!5554 = !DILocation(line: 460, column: 34, scope: !5548)
!5555 = !DILocation(line: 460, column: 39, scope: !5548)
!5556 = !DILocation(line: 460, column: 2, scope: !5548)
!5557 = !DISubprogram(name: "__msecs_to_jiffies", scope: !4721, file: !4721, line: 451, type: !4722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5558 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !70, file: !70, line: 921, type: !5559, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5561)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{null, !4014, !130}
!5561 = !{!5562, !5563}
!5562 = !DILocalVariable(name: "dev", arg: 1, scope: !5558, file: !70, line: 921, type: !4014)
!5563 = !DILocalVariable(name: "data", arg: 2, scope: !5558, file: !70, line: 921, type: !130)
!5564 = !DILocation(line: 921, column: 51, scope: !5558)
!5565 = !DILocation(line: 921, column: 62, scope: !5558)
!5566 = !DILocation(line: 923, column: 21, scope: !5558)
!5567 = !DILocation(line: 923, column: 2, scope: !5558)
!5568 = !DILocation(line: 923, column: 7, scope: !5558)
!5569 = !DILocation(line: 923, column: 19, scope: !5558)
!5570 = !DILocation(line: 924, column: 1, scope: !5558)
!5571 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !70, file: !70, line: 916, type: !5572, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5574)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!130, !4034}
!5574 = !{!5575}
!5575 = !DILocalVariable(name: "dev", arg: 1, scope: !5571, file: !70, line: 916, type: !4034)
!5576 = !DILocation(line: 916, column: 58, scope: !5571)
!5577 = !DILocation(line: 918, column: 9, scope: !5571)
!5578 = !DILocation(line: 918, column: 14, scope: !5571)
!5579 = !DILocation(line: 918, column: 2, scope: !5571)
!5580 = !DISubprogram(name: "__wake_up", scope: !620, file: !620, line: 212, type: !5581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!85, !4755, !7, !85, !130}
