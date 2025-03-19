; ModuleID = 'drivers/input/ff-core.c'
source_filename = "drivers/input/ff-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_upload: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_upload ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_erase: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_erase ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_flush: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_event: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_create: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_destroy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_destroy ; .previous"

%struct.lock_class_key = type {}
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.13 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.13 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i64], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.ff_rumble_effect = type { i16, i16 }

@__UNIQUE_ID___addressable_input_ff_upload267 = internal global ptr @input_ff_upload, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_input_ff_erase268 = internal global ptr @input_ff_erase, section ".discard.addressable", align 8, !dbg !149
@__UNIQUE_ID___addressable_input_ff_flush269 = internal global ptr @input_ff_flush, section ".discard.addressable", align 8, !dbg !151
@__UNIQUE_ID___addressable_input_ff_event270 = internal global ptr @input_ff_event, section ".discard.addressable", align 8, !dbg !153
@.str = private unnamed_addr constant [44 x i8] c"cannot allocate device without any effects\0A\00", align 1, !dbg !155
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot allocate more than FF_MAX_EFFECTS effects\0A\00", align 1, !dbg !161
@input_ff_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !166
@.str.2 = private unnamed_addr constant [11 x i8] c"&ff->mutex\00", align 1, !dbg !4571
@__UNIQUE_ID___addressable_input_ff_create271 = internal global ptr @input_ff_create, section ".discard.addressable", align 8, !dbg !4576
@__UNIQUE_ID___addressable_input_ff_destroy272 = internal global ptr @input_ff_destroy, section ".discard.addressable", align 8, !dbg !4578
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4580
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_input_ff_upload267, ptr @__UNIQUE_ID___addressable_input_ff_erase268, ptr @__UNIQUE_ID___addressable_input_ff_flush269, ptr @__UNIQUE_ID___addressable_input_ff_event270, ptr @__UNIQUE_ID___addressable_input_ff_create271, ptr @__UNIQUE_ID___addressable_input_ff_destroy272], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_ff_upload(ptr noundef %dev, ptr noundef %effect, ptr noundef %file) #0 align 16 !dbg !4594 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %effect.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ff = alloca ptr, align 8
  %old = alloca ptr, align 8
  %ret = alloca i32, align 4
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4598, metadata !DIExpression()), !dbg !4606
  store ptr %effect, ptr %effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %effect.addr, metadata !4599, metadata !DIExpression()), !dbg !4607
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4600, metadata !DIExpression()), !dbg !4608
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !4609
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !4601, metadata !DIExpression()), !dbg !4610
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4611
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !4612
  %1 = load ptr, ptr %ff1, align 8, !dbg !4612
  store ptr %1, ptr %ff, align 8, !dbg !4610
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #17, !dbg !4613
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4602, metadata !DIExpression()), !dbg !4614
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4615
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4603, metadata !DIExpression()), !dbg !4616
  store i32 0, ptr %ret, align 4, !dbg !4616
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #17, !dbg !4617
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4604, metadata !DIExpression()), !dbg !4618
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4619
  %evbit = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 5, !dbg !4619
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4619
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !4619
  %cmp = icmp ne i64 %3, 0, !dbg !4619
  %conv = zext i1 %cmp to i32, !dbg !4619
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4619
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !4619

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !4619
  %evbit2 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5, !dbg !4619
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %evbit2, i64 0, i64 0, !dbg !4619
  %6 = ptrtoint ptr %arraydecay3 to i64, !dbg !4619
  %cmp4 = icmp ne i64 %6, 0, !dbg !4619
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !4619

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !4619
  %evbit7 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !4619
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %evbit7, i64 0, i64 0, !dbg !4619
  %8 = load i64, ptr %arraydecay8, align 8, !dbg !4619
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4619
  br i1 %9, label %cond.true, label %cond.false, !dbg !4621

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !4619
  %evbit9 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5, !dbg !4619
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %evbit9, i64 0, i64 0, !dbg !4619
  %call = call zeroext i1 @const_test_bit(i64 noundef 21, ptr noundef %arraydecay10) #18, !dbg !4619
  br i1 %call, label %if.end, label %if.then, !dbg !4619

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !4619
  %evbit12 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 5, !dbg !4619
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %evbit12, i64 0, i64 0, !dbg !4619
  %call14 = call zeroext i1 @_test_bit(i64 noundef 21, ptr noundef %arraydecay13) #18, !dbg !4619
  br i1 %call14, label %if.end, label %if.then, !dbg !4621

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -38, ptr %retval, align 4, !dbg !4622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4622

if.end:                                           ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %effect.addr, align 8, !dbg !4623
  %type = getelementptr inbounds %struct.ff_effect, ptr %12, i32 0, i32 0, !dbg !4625
  %13 = load i16, ptr %type, align 8, !dbg !4625
  %conv16 = zext i16 %13 to i32, !dbg !4623
  %cmp17 = icmp slt i32 %conv16, 80, !dbg !4626
  br i1 %cmp17, label %if.then51, label %lor.lhs.false, !dbg !4627

lor.lhs.false:                                    ; preds = %if.end
  %14 = load ptr, ptr %effect.addr, align 8, !dbg !4628
  %type19 = getelementptr inbounds %struct.ff_effect, ptr %14, i32 0, i32 0, !dbg !4629
  %15 = load i16, ptr %type19, align 8, !dbg !4629
  %conv20 = zext i16 %15 to i32, !dbg !4628
  %cmp21 = icmp sgt i32 %conv20, 87, !dbg !4630
  br i1 %cmp21, label %if.then51, label %lor.lhs.false23, !dbg !4631

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %16 = load ptr, ptr %effect.addr, align 8, !dbg !4632
  %type24 = getelementptr inbounds %struct.ff_effect, ptr %16, i32 0, i32 0, !dbg !4632
  %17 = load i16, ptr %type24, align 8, !dbg !4632
  %18 = call i1 @llvm.is.constant.i16(i16 %17), !dbg !4632
  br i1 %18, label %land.lhs.true25, label %cond.false44, !dbg !4632

land.lhs.true25:                                  ; preds = %lor.lhs.false23
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !4632
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 12, !dbg !4632
  %arraydecay26 = getelementptr inbounds [2 x i64], ptr %ffbit, i64 0, i64 0, !dbg !4632
  %20 = ptrtoint ptr %arraydecay26 to i64, !dbg !4632
  %cmp27 = icmp ne i64 %20, 0, !dbg !4632
  %conv28 = zext i1 %cmp27 to i32, !dbg !4632
  %21 = call i1 @llvm.is.constant.i32(i32 %conv28), !dbg !4632
  br i1 %21, label %land.lhs.true29, label %cond.false44, !dbg !4632

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !4632
  %ffbit30 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 12, !dbg !4632
  %arraydecay31 = getelementptr inbounds [2 x i64], ptr %ffbit30, i64 0, i64 0, !dbg !4632
  %23 = ptrtoint ptr %arraydecay31 to i64, !dbg !4632
  %cmp32 = icmp ne i64 %23, 0, !dbg !4632
  br i1 %cmp32, label %land.lhs.true34, label %cond.false44, !dbg !4632

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !4632
  %ffbit35 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 12, !dbg !4632
  %arraydecay36 = getelementptr inbounds [2 x i64], ptr %ffbit35, i64 0, i64 0, !dbg !4632
  %25 = load i64, ptr %arraydecay36, align 8, !dbg !4632
  %26 = call i1 @llvm.is.constant.i64(i64 %25), !dbg !4632
  br i1 %26, label %cond.true37, label %cond.false44, !dbg !4633

cond.true37:                                      ; preds = %land.lhs.true34
  %27 = load ptr, ptr %effect.addr, align 8, !dbg !4632
  %type38 = getelementptr inbounds %struct.ff_effect, ptr %27, i32 0, i32 0, !dbg !4632
  %28 = load i16, ptr %type38, align 8, !dbg !4632
  %conv39 = zext i16 %28 to i64, !dbg !4632
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !4632
  %ffbit40 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 12, !dbg !4632
  %arraydecay41 = getelementptr inbounds [2 x i64], ptr %ffbit40, i64 0, i64 0, !dbg !4632
  %call42 = call zeroext i1 @const_test_bit(i64 noundef %conv39, ptr noundef %arraydecay41) #18, !dbg !4632
  br i1 %call42, label %if.end52, label %if.then51, !dbg !4632

cond.false44:                                     ; preds = %land.lhs.true34, %land.lhs.true29, %land.lhs.true25, %lor.lhs.false23
  %30 = load ptr, ptr %effect.addr, align 8, !dbg !4632
  %type45 = getelementptr inbounds %struct.ff_effect, ptr %30, i32 0, i32 0, !dbg !4632
  %31 = load i16, ptr %type45, align 8, !dbg !4632
  %conv46 = zext i16 %31 to i64, !dbg !4632
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !4632
  %ffbit47 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 12, !dbg !4632
  %arraydecay48 = getelementptr inbounds [2 x i64], ptr %ffbit47, i64 0, i64 0, !dbg !4632
  %call49 = call zeroext i1 @_test_bit(i64 noundef %conv46, ptr noundef %arraydecay48) #18, !dbg !4632
  br i1 %call49, label %if.end52, label %if.then51, !dbg !4633

if.then51:                                        ; preds = %cond.false44, %cond.true37, %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4634

if.end52:                                         ; preds = %cond.false44, %cond.true37
  %33 = load ptr, ptr %effect.addr, align 8, !dbg !4636
  %type53 = getelementptr inbounds %struct.ff_effect, ptr %33, i32 0, i32 0, !dbg !4638
  %34 = load i16, ptr %type53, align 8, !dbg !4638
  %conv54 = zext i16 %34 to i32, !dbg !4636
  %cmp55 = icmp eq i32 %conv54, 81, !dbg !4639
  br i1 %cmp55, label %land.lhs.true57, label %if.end100, !dbg !4640

land.lhs.true57:                                  ; preds = %if.end52
  %35 = load ptr, ptr %effect.addr, align 8, !dbg !4641
  %u = getelementptr inbounds %struct.ff_effect, ptr %35, i32 0, i32 5, !dbg !4642
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, ptr %u, i32 0, i32 0, !dbg !4643
  %36 = load i16, ptr %waveform, align 8, !dbg !4643
  %conv58 = zext i16 %36 to i32, !dbg !4641
  %cmp59 = icmp slt i32 %conv58, 88, !dbg !4644
  br i1 %cmp59, label %if.then99, label %lor.lhs.false61, !dbg !4645

lor.lhs.false61:                                  ; preds = %land.lhs.true57
  %37 = load ptr, ptr %effect.addr, align 8, !dbg !4646
  %u62 = getelementptr inbounds %struct.ff_effect, ptr %37, i32 0, i32 5, !dbg !4647
  %waveform63 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u62, i32 0, i32 0, !dbg !4648
  %38 = load i16, ptr %waveform63, align 8, !dbg !4648
  %conv64 = zext i16 %38 to i32, !dbg !4646
  %cmp65 = icmp sgt i32 %conv64, 93, !dbg !4649
  br i1 %cmp65, label %if.then99, label %lor.lhs.false67, !dbg !4650

lor.lhs.false67:                                  ; preds = %lor.lhs.false61
  %39 = load ptr, ptr %effect.addr, align 8, !dbg !4651
  %u68 = getelementptr inbounds %struct.ff_effect, ptr %39, i32 0, i32 5, !dbg !4651
  %waveform69 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u68, i32 0, i32 0, !dbg !4651
  %40 = load i16, ptr %waveform69, align 8, !dbg !4651
  %41 = call i1 @llvm.is.constant.i16(i16 %40), !dbg !4651
  br i1 %41, label %land.lhs.true70, label %cond.false91, !dbg !4651

land.lhs.true70:                                  ; preds = %lor.lhs.false67
  %42 = load ptr, ptr %dev.addr, align 8, !dbg !4651
  %ffbit71 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 12, !dbg !4651
  %arraydecay72 = getelementptr inbounds [2 x i64], ptr %ffbit71, i64 0, i64 0, !dbg !4651
  %43 = ptrtoint ptr %arraydecay72 to i64, !dbg !4651
  %cmp73 = icmp ne i64 %43, 0, !dbg !4651
  %conv74 = zext i1 %cmp73 to i32, !dbg !4651
  %44 = call i1 @llvm.is.constant.i32(i32 %conv74), !dbg !4651
  br i1 %44, label %land.lhs.true75, label %cond.false91, !dbg !4651

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !4651
  %ffbit76 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 12, !dbg !4651
  %arraydecay77 = getelementptr inbounds [2 x i64], ptr %ffbit76, i64 0, i64 0, !dbg !4651
  %46 = ptrtoint ptr %arraydecay77 to i64, !dbg !4651
  %cmp78 = icmp ne i64 %46, 0, !dbg !4651
  br i1 %cmp78, label %land.lhs.true80, label %cond.false91, !dbg !4651

land.lhs.true80:                                  ; preds = %land.lhs.true75
  %47 = load ptr, ptr %dev.addr, align 8, !dbg !4651
  %ffbit81 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 12, !dbg !4651
  %arraydecay82 = getelementptr inbounds [2 x i64], ptr %ffbit81, i64 0, i64 0, !dbg !4651
  %48 = load i64, ptr %arraydecay82, align 8, !dbg !4651
  %49 = call i1 @llvm.is.constant.i64(i64 %48), !dbg !4651
  br i1 %49, label %cond.true83, label %cond.false91, !dbg !4652

cond.true83:                                      ; preds = %land.lhs.true80
  %50 = load ptr, ptr %effect.addr, align 8, !dbg !4651
  %u84 = getelementptr inbounds %struct.ff_effect, ptr %50, i32 0, i32 5, !dbg !4651
  %waveform85 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u84, i32 0, i32 0, !dbg !4651
  %51 = load i16, ptr %waveform85, align 8, !dbg !4651
  %conv86 = zext i16 %51 to i64, !dbg !4651
  %52 = load ptr, ptr %dev.addr, align 8, !dbg !4651
  %ffbit87 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 12, !dbg !4651
  %arraydecay88 = getelementptr inbounds [2 x i64], ptr %ffbit87, i64 0, i64 0, !dbg !4651
  %call89 = call zeroext i1 @const_test_bit(i64 noundef %conv86, ptr noundef %arraydecay88) #18, !dbg !4651
  br i1 %call89, label %if.end100, label %if.then99, !dbg !4651

cond.false91:                                     ; preds = %land.lhs.true80, %land.lhs.true75, %land.lhs.true70, %lor.lhs.false67
  %53 = load ptr, ptr %effect.addr, align 8, !dbg !4651
  %u92 = getelementptr inbounds %struct.ff_effect, ptr %53, i32 0, i32 5, !dbg !4651
  %waveform93 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u92, i32 0, i32 0, !dbg !4651
  %54 = load i16, ptr %waveform93, align 8, !dbg !4651
  %conv94 = zext i16 %54 to i64, !dbg !4651
  %55 = load ptr, ptr %dev.addr, align 8, !dbg !4651
  %ffbit95 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 12, !dbg !4651
  %arraydecay96 = getelementptr inbounds [2 x i64], ptr %ffbit95, i64 0, i64 0, !dbg !4651
  %call97 = call zeroext i1 @_test_bit(i64 noundef %conv94, ptr noundef %arraydecay96) #18, !dbg !4651
  br i1 %call97, label %if.end100, label %if.then99, !dbg !4652

if.then99:                                        ; preds = %cond.false91, %cond.true83, %lor.lhs.false61, %land.lhs.true57
  store i32 -22, ptr %retval, align 4, !dbg !4653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4653

if.end100:                                        ; preds = %cond.false91, %cond.true83, %if.end52
  %56 = load ptr, ptr %effect.addr, align 8, !dbg !4655
  %type101 = getelementptr inbounds %struct.ff_effect, ptr %56, i32 0, i32 0, !dbg !4655
  %57 = load i16, ptr %type101, align 8, !dbg !4655
  %58 = call i1 @llvm.is.constant.i16(i16 %57), !dbg !4655
  br i1 %58, label %land.lhs.true102, label %cond.false122, !dbg !4655

land.lhs.true102:                                 ; preds = %if.end100
  %59 = load ptr, ptr %ff, align 8, !dbg !4655
  %ffbit103 = getelementptr inbounds %struct.ff_device, ptr %59, i32 0, i32 7, !dbg !4655
  %arraydecay104 = getelementptr inbounds [2 x i64], ptr %ffbit103, i64 0, i64 0, !dbg !4655
  %60 = ptrtoint ptr %arraydecay104 to i64, !dbg !4655
  %cmp105 = icmp ne i64 %60, 0, !dbg !4655
  %conv106 = zext i1 %cmp105 to i32, !dbg !4655
  %61 = call i1 @llvm.is.constant.i32(i32 %conv106), !dbg !4655
  br i1 %61, label %land.lhs.true107, label %cond.false122, !dbg !4655

land.lhs.true107:                                 ; preds = %land.lhs.true102
  %62 = load ptr, ptr %ff, align 8, !dbg !4655
  %ffbit108 = getelementptr inbounds %struct.ff_device, ptr %62, i32 0, i32 7, !dbg !4655
  %arraydecay109 = getelementptr inbounds [2 x i64], ptr %ffbit108, i64 0, i64 0, !dbg !4655
  %63 = ptrtoint ptr %arraydecay109 to i64, !dbg !4655
  %cmp110 = icmp ne i64 %63, 0, !dbg !4655
  br i1 %cmp110, label %land.lhs.true112, label %cond.false122, !dbg !4655

land.lhs.true112:                                 ; preds = %land.lhs.true107
  %64 = load ptr, ptr %ff, align 8, !dbg !4655
  %ffbit113 = getelementptr inbounds %struct.ff_device, ptr %64, i32 0, i32 7, !dbg !4655
  %arraydecay114 = getelementptr inbounds [2 x i64], ptr %ffbit113, i64 0, i64 0, !dbg !4655
  %65 = load i64, ptr %arraydecay114, align 8, !dbg !4655
  %66 = call i1 @llvm.is.constant.i64(i64 %65), !dbg !4655
  br i1 %66, label %cond.true115, label %cond.false122, !dbg !4657

cond.true115:                                     ; preds = %land.lhs.true112
  %67 = load ptr, ptr %effect.addr, align 8, !dbg !4655
  %type116 = getelementptr inbounds %struct.ff_effect, ptr %67, i32 0, i32 0, !dbg !4655
  %68 = load i16, ptr %type116, align 8, !dbg !4655
  %conv117 = zext i16 %68 to i64, !dbg !4655
  %69 = load ptr, ptr %ff, align 8, !dbg !4655
  %ffbit118 = getelementptr inbounds %struct.ff_device, ptr %69, i32 0, i32 7, !dbg !4655
  %arraydecay119 = getelementptr inbounds [2 x i64], ptr %ffbit118, i64 0, i64 0, !dbg !4655
  %call120 = call zeroext i1 @const_test_bit(i64 noundef %conv117, ptr noundef %arraydecay119) #18, !dbg !4655
  br i1 %call120, label %if.end133, label %if.then129, !dbg !4655

cond.false122:                                    ; preds = %land.lhs.true112, %land.lhs.true107, %land.lhs.true102, %if.end100
  %70 = load ptr, ptr %effect.addr, align 8, !dbg !4655
  %type123 = getelementptr inbounds %struct.ff_effect, ptr %70, i32 0, i32 0, !dbg !4655
  %71 = load i16, ptr %type123, align 8, !dbg !4655
  %conv124 = zext i16 %71 to i64, !dbg !4655
  %72 = load ptr, ptr %ff, align 8, !dbg !4655
  %ffbit125 = getelementptr inbounds %struct.ff_device, ptr %72, i32 0, i32 7, !dbg !4655
  %arraydecay126 = getelementptr inbounds [2 x i64], ptr %ffbit125, i64 0, i64 0, !dbg !4655
  %call127 = call zeroext i1 @_test_bit(i64 noundef %conv124, ptr noundef %arraydecay126) #18, !dbg !4655
  br i1 %call127, label %if.end133, label %if.then129, !dbg !4657

if.then129:                                       ; preds = %cond.false122, %cond.true115
  %73 = load ptr, ptr %ff, align 8, !dbg !4658
  %74 = load ptr, ptr %effect.addr, align 8, !dbg !4660
  %call130 = call i32 @compat_effect(ptr noundef %73, ptr noundef %74) #18, !dbg !4661
  store i32 %call130, ptr %ret, align 4, !dbg !4662
  %75 = load i32, ptr %ret, align 4, !dbg !4663
  %tobool = icmp ne i32 %75, 0, !dbg !4663
  br i1 %tobool, label %if.then131, label %if.end132, !dbg !4665

if.then131:                                       ; preds = %if.then129
  %76 = load i32, ptr %ret, align 4, !dbg !4666
  store i32 %76, ptr %retval, align 4, !dbg !4667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4667

if.end132:                                        ; preds = %if.then129
  br label %if.end133, !dbg !4668

if.end133:                                        ; preds = %if.end132, %cond.false122, %cond.true115
  %77 = load ptr, ptr %ff, align 8, !dbg !4669
  %mutex = getelementptr inbounds %struct.ff_device, ptr %77, i32 0, i32 8, !dbg !4670
  call void @mutex_lock(ptr noundef %mutex) #18, !dbg !4671
  %78 = load ptr, ptr %effect.addr, align 8, !dbg !4672
  %id134 = getelementptr inbounds %struct.ff_effect, ptr %78, i32 0, i32 1, !dbg !4674
  %79 = load i16, ptr %id134, align 2, !dbg !4674
  %conv135 = sext i16 %79 to i32, !dbg !4672
  %cmp136 = icmp eq i32 %conv135, -1, !dbg !4675
  br i1 %cmp136, label %if.then138, label %if.else, !dbg !4676

if.then138:                                       ; preds = %if.end133
  store i32 0, ptr %id, align 4, !dbg !4677
  br label %for.cond, !dbg !4680

for.cond:                                         ; preds = %for.inc, %if.then138
  %80 = load i32, ptr %id, align 4, !dbg !4681
  %81 = load ptr, ptr %ff, align 8, !dbg !4683
  %max_effects = getelementptr inbounds %struct.ff_device, ptr %81, i32 0, i32 9, !dbg !4684
  %82 = load i32, ptr %max_effects, align 8, !dbg !4684
  %cmp139 = icmp slt i32 %80, %82, !dbg !4685
  br i1 %cmp139, label %for.body, label %for.end, !dbg !4686

for.body:                                         ; preds = %for.cond
  %83 = load ptr, ptr %ff, align 8, !dbg !4687
  %effect_owners = getelementptr inbounds %struct.ff_device, ptr %83, i32 0, i32 11, !dbg !4689
  %84 = load i32, ptr %id, align 4, !dbg !4690
  %idxprom = sext i32 %84 to i64, !dbg !4687
  %arrayidx = getelementptr [0 x ptr], ptr %effect_owners, i64 0, i64 %idxprom, !dbg !4687
  %85 = load ptr, ptr %arrayidx, align 8, !dbg !4687
  %tobool141 = icmp ne ptr %85, null, !dbg !4687
  br i1 %tobool141, label %if.end143, label %if.then142, !dbg !4691

if.then142:                                       ; preds = %for.body
  br label %for.end, !dbg !4692

if.end143:                                        ; preds = %for.body
  br label %for.inc, !dbg !4693

for.inc:                                          ; preds = %if.end143
  %86 = load i32, ptr %id, align 4, !dbg !4694
  %inc = add i32 %86, 1, !dbg !4694
  store i32 %inc, ptr %id, align 4, !dbg !4694
  br label %for.cond, !dbg !4695, !llvm.loop !4696

for.end:                                          ; preds = %if.then142, %for.cond
  %87 = load i32, ptr %id, align 4, !dbg !4700
  %88 = load ptr, ptr %ff, align 8, !dbg !4702
  %max_effects144 = getelementptr inbounds %struct.ff_device, ptr %88, i32 0, i32 9, !dbg !4703
  %89 = load i32, ptr %max_effects144, align 8, !dbg !4703
  %cmp145 = icmp sge i32 %87, %89, !dbg !4704
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !4705

if.then147:                                       ; preds = %for.end
  store i32 -28, ptr %ret, align 4, !dbg !4706
  br label %out, !dbg !4708

if.end148:                                        ; preds = %for.end
  %90 = load i32, ptr %id, align 4, !dbg !4709
  %conv149 = trunc i32 %90 to i16, !dbg !4709
  %91 = load ptr, ptr %effect.addr, align 8, !dbg !4710
  %id150 = getelementptr inbounds %struct.ff_effect, ptr %91, i32 0, i32 1, !dbg !4711
  store i16 %conv149, ptr %id150, align 2, !dbg !4712
  store ptr null, ptr %old, align 8, !dbg !4713
  br label %if.end163, !dbg !4714

if.else:                                          ; preds = %if.end133
  %92 = load ptr, ptr %effect.addr, align 8, !dbg !4715
  %id151 = getelementptr inbounds %struct.ff_effect, ptr %92, i32 0, i32 1, !dbg !4717
  %93 = load i16, ptr %id151, align 2, !dbg !4717
  %conv152 = sext i16 %93 to i32, !dbg !4715
  store i32 %conv152, ptr %id, align 4, !dbg !4718
  %94 = load ptr, ptr %ff, align 8, !dbg !4719
  %95 = load i32, ptr %id, align 4, !dbg !4720
  %96 = load ptr, ptr %file.addr, align 8, !dbg !4721
  %call153 = call i32 @check_effect_access(ptr noundef %94, i32 noundef %95, ptr noundef %96) #18, !dbg !4722
  store i32 %call153, ptr %ret, align 4, !dbg !4723
  %97 = load i32, ptr %ret, align 4, !dbg !4724
  %tobool154 = icmp ne i32 %97, 0, !dbg !4724
  br i1 %tobool154, label %if.then155, label %if.end156, !dbg !4726

if.then155:                                       ; preds = %if.else
  br label %out, !dbg !4727

if.end156:                                        ; preds = %if.else
  %98 = load ptr, ptr %ff, align 8, !dbg !4728
  %effects = getelementptr inbounds %struct.ff_device, ptr %98, i32 0, i32 10, !dbg !4729
  %99 = load ptr, ptr %effects, align 8, !dbg !4729
  %100 = load i32, ptr %id, align 4, !dbg !4730
  %idxprom157 = sext i32 %100 to i64, !dbg !4728
  %arrayidx158 = getelementptr %struct.ff_effect, ptr %99, i64 %idxprom157, !dbg !4728
  store ptr %arrayidx158, ptr %old, align 8, !dbg !4731
  %101 = load ptr, ptr %effect.addr, align 8, !dbg !4732
  %102 = load ptr, ptr %old, align 8, !dbg !4734
  %call159 = call i32 @check_effects_compatible(ptr noundef %101, ptr noundef %102) #18, !dbg !4735
  %tobool160 = icmp ne i32 %call159, 0, !dbg !4735
  br i1 %tobool160, label %if.end162, label %if.then161, !dbg !4736

if.then161:                                       ; preds = %if.end156
  store i32 -22, ptr %ret, align 4, !dbg !4737
  br label %out, !dbg !4739

if.end162:                                        ; preds = %if.end156
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end148
  %103 = load ptr, ptr %ff, align 8, !dbg !4740
  %upload = getelementptr inbounds %struct.ff_device, ptr %103, i32 0, i32 0, !dbg !4741
  %104 = load ptr, ptr %upload, align 8, !dbg !4741
  %105 = load ptr, ptr %dev.addr, align 8, !dbg !4742
  %106 = load ptr, ptr %effect.addr, align 8, !dbg !4743
  %107 = load ptr, ptr %old, align 8, !dbg !4744
  %call164 = call i32 %104(ptr noundef %105, ptr noundef %106, ptr noundef %107) #18, !dbg !4740
  store i32 %call164, ptr %ret, align 4, !dbg !4745
  %108 = load i32, ptr %ret, align 4, !dbg !4746
  %tobool165 = icmp ne i32 %108, 0, !dbg !4746
  br i1 %tobool165, label %if.then166, label %if.end167, !dbg !4748

if.then166:                                       ; preds = %if.end163
  br label %out, !dbg !4749

if.end167:                                        ; preds = %if.end163
  %109 = load ptr, ptr %dev.addr, align 8, !dbg !4750
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 36, !dbg !4751
  call void @spin_lock_irq(ptr noundef %event_lock) #18, !dbg !4752
  %110 = load ptr, ptr %ff, align 8, !dbg !4753
  %effects168 = getelementptr inbounds %struct.ff_device, ptr %110, i32 0, i32 10, !dbg !4754
  %111 = load ptr, ptr %effects168, align 8, !dbg !4754
  %112 = load i32, ptr %id, align 4, !dbg !4755
  %idxprom169 = sext i32 %112 to i64, !dbg !4753
  %arrayidx170 = getelementptr %struct.ff_effect, ptr %111, i64 %idxprom169, !dbg !4753
  %113 = load ptr, ptr %effect.addr, align 8, !dbg !4756
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx170, ptr align 8 %113, i64 48, i1 false), !dbg !4757
  %114 = load ptr, ptr %file.addr, align 8, !dbg !4758
  %115 = load ptr, ptr %ff, align 8, !dbg !4759
  %effect_owners171 = getelementptr inbounds %struct.ff_device, ptr %115, i32 0, i32 11, !dbg !4760
  %116 = load i32, ptr %id, align 4, !dbg !4761
  %idxprom172 = sext i32 %116 to i64, !dbg !4759
  %arrayidx173 = getelementptr [0 x ptr], ptr %effect_owners171, i64 0, i64 %idxprom172, !dbg !4759
  store ptr %114, ptr %arrayidx173, align 8, !dbg !4762
  %117 = load ptr, ptr %dev.addr, align 8, !dbg !4763
  %event_lock174 = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 36, !dbg !4764
  call void @spin_unlock_irq(ptr noundef %event_lock174) #18, !dbg !4765
  br label %out, !dbg !4765

out:                                              ; preds = %if.end167, %if.then166, %if.then161, %if.then155, %if.then147
  call void @llvm.dbg.label(metadata !4605), !dbg !4766
  %118 = load ptr, ptr %ff, align 8, !dbg !4767
  %mutex175 = getelementptr inbounds %struct.ff_device, ptr %118, i32 0, i32 8, !dbg !4768
  call void @mutex_unlock(ptr noundef %mutex175) #18, !dbg !4769
  %119 = load i32, ptr %ret, align 4, !dbg !4770
  store i32 %119, ptr %retval, align 4, !dbg !4771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4771

cleanup:                                          ; preds = %out, %if.then131, %if.then99, %if.then51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #17, !dbg !4772
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4772
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #17, !dbg !4772
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !4772
  %120 = load i32, ptr %retval, align 4, !dbg !4772
  ret i32 %120, !dbg !4772
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4773 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4781, metadata !DIExpression()), !dbg !4786
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4782, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4788
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4783, metadata !DIExpression()), !dbg !4789
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4790
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4791
  %div = udiv i64 %1, 64, !dbg !4791
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4792
  store ptr %add.ptr, ptr %p, align 8, !dbg !4789
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4784, metadata !DIExpression()), !dbg !4794
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4795
  %rem = urem i64 %2, 64, !dbg !4795
  %shl = shl i64 1, %rem, !dbg !4795
  store i64 %shl, ptr %mask, align 8, !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4785, metadata !DIExpression()), !dbg !4797
  %3 = load ptr, ptr %p, align 8, !dbg !4798
  %4 = load i64, ptr %3, align 8, !dbg !4799
  store i64 %4, ptr %val, align 8, !dbg !4797
  %5 = load i64, ptr %val, align 8, !dbg !4800
  %6 = load i64, ptr %mask, align 8, !dbg !4801
  %and = and i64 %5, %6, !dbg !4802
  %tobool = icmp ne i64 %and, 0, !dbg !4803
  %lnot = xor i1 %tobool, true, !dbg !4803
  %lnot1 = xor i1 %lnot, true, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4805
  ret i1 %lnot1, !dbg !4806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4807 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4810, metadata !DIExpression()), !dbg !4812
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4811, metadata !DIExpression()), !dbg !4813
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4814
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4815
  %div = udiv i64 %1, 64, !dbg !4815
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4816
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !4817
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4818
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4819
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4820
  ret i1 %call, !dbg !4821
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_effect(ptr noundef %ff, ptr noundef %effect) #0 align 16 !dbg !4822 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca ptr, align 8
  %effect.addr = alloca ptr, align 8
  %magnitude = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ff, ptr %ff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ff.addr, metadata !4826, metadata !DIExpression()), !dbg !4829
  store ptr %effect, ptr %effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %effect.addr, metadata !4827, metadata !DIExpression()), !dbg !4830
  call void @llvm.lifetime.start.p0(i64 4, ptr %magnitude) #17, !dbg !4831
  call void @llvm.dbg.declare(metadata ptr %magnitude, metadata !4828, metadata !DIExpression()), !dbg !4832
  %0 = load ptr, ptr %effect.addr, align 8, !dbg !4833
  %type = getelementptr inbounds %struct.ff_effect, ptr %0, i32 0, i32 0, !dbg !4834
  %1 = load i16, ptr %type, align 8, !dbg !4834
  %conv = zext i16 %1 to i32, !dbg !4833
  switch i32 %conv, label %sw.default [
    i32 80, label %sw.bb
  ], !dbg !4835

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ff.addr, align 8, !dbg !4836
  %ffbit = getelementptr inbounds %struct.ff_device, ptr %2, i32 0, i32 7, !dbg !4836
  %arraydecay = getelementptr inbounds [2 x i64], ptr %ffbit, i64 0, i64 0, !dbg !4836
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !4836
  %cmp = icmp ne i64 %3, 0, !dbg !4836
  %conv1 = zext i1 %cmp to i32, !dbg !4836
  %4 = call i1 @llvm.is.constant.i32(i32 %conv1), !dbg !4836
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !4836

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load ptr, ptr %ff.addr, align 8, !dbg !4836
  %ffbit2 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 7, !dbg !4836
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %ffbit2, i64 0, i64 0, !dbg !4836
  %6 = ptrtoint ptr %arraydecay3 to i64, !dbg !4836
  %cmp4 = icmp ne i64 %6, 0, !dbg !4836
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !4836

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %ff.addr, align 8, !dbg !4836
  %ffbit7 = getelementptr inbounds %struct.ff_device, ptr %7, i32 0, i32 7, !dbg !4836
  %arraydecay8 = getelementptr inbounds [2 x i64], ptr %ffbit7, i64 0, i64 0, !dbg !4836
  %8 = load i64, ptr %arraydecay8, align 8, !dbg !4836
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4836
  br i1 %9, label %cond.true, label %cond.false, !dbg !4839

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load ptr, ptr %ff.addr, align 8, !dbg !4836
  %ffbit9 = getelementptr inbounds %struct.ff_device, ptr %10, i32 0, i32 7, !dbg !4836
  %arraydecay10 = getelementptr inbounds [2 x i64], ptr %ffbit9, i64 0, i64 0, !dbg !4836
  %call = call zeroext i1 @const_test_bit(i64 noundef 81, ptr noundef %arraydecay10) #18, !dbg !4836
  br i1 %call, label %if.end, label %if.then, !dbg !4836

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %sw.bb
  %11 = load ptr, ptr %ff.addr, align 8, !dbg !4836
  %ffbit12 = getelementptr inbounds %struct.ff_device, ptr %11, i32 0, i32 7, !dbg !4836
  %arraydecay13 = getelementptr inbounds [2 x i64], ptr %ffbit12, i64 0, i64 0, !dbg !4836
  %call14 = call zeroext i1 @_test_bit(i64 noundef 81, ptr noundef %arraydecay13) #18, !dbg !4836
  br i1 %call14, label %if.end, label %if.then, !dbg !4839

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -22, ptr %retval, align 4, !dbg !4840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4840

if.end:                                           ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %effect.addr, align 8, !dbg !4841
  %u = getelementptr inbounds %struct.ff_effect, ptr %12, i32 0, i32 5, !dbg !4842
  %strong_magnitude = getelementptr inbounds %struct.ff_rumble_effect, ptr %u, i32 0, i32 0, !dbg !4843
  %13 = load i16, ptr %strong_magnitude, align 8, !dbg !4843
  %conv16 = zext i16 %13 to i32, !dbg !4841
  %div = sdiv i32 %conv16, 3, !dbg !4844
  %14 = load ptr, ptr %effect.addr, align 8, !dbg !4845
  %u17 = getelementptr inbounds %struct.ff_effect, ptr %14, i32 0, i32 5, !dbg !4846
  %weak_magnitude = getelementptr inbounds %struct.ff_rumble_effect, ptr %u17, i32 0, i32 1, !dbg !4847
  %15 = load i16, ptr %weak_magnitude, align 2, !dbg !4847
  %conv18 = zext i16 %15 to i32, !dbg !4845
  %div19 = sdiv i32 %conv18, 6, !dbg !4848
  %add = add i32 %div, %div19, !dbg !4849
  store i32 %add, ptr %magnitude, align 4, !dbg !4850
  %16 = load ptr, ptr %effect.addr, align 8, !dbg !4851
  %type20 = getelementptr inbounds %struct.ff_effect, ptr %16, i32 0, i32 0, !dbg !4852
  store i16 81, ptr %type20, align 8, !dbg !4853
  %17 = load ptr, ptr %effect.addr, align 8, !dbg !4854
  %u21 = getelementptr inbounds %struct.ff_effect, ptr %17, i32 0, i32 5, !dbg !4855
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, ptr %u21, i32 0, i32 0, !dbg !4856
  store i16 90, ptr %waveform, align 8, !dbg !4857
  %18 = load ptr, ptr %effect.addr, align 8, !dbg !4858
  %u22 = getelementptr inbounds %struct.ff_effect, ptr %18, i32 0, i32 5, !dbg !4859
  %period = getelementptr inbounds %struct.ff_periodic_effect, ptr %u22, i32 0, i32 1, !dbg !4860
  store i16 50, ptr %period, align 2, !dbg !4861
  %19 = load i32, ptr %magnitude, align 4, !dbg !4862
  %conv23 = trunc i32 %19 to i16, !dbg !4862
  %20 = load ptr, ptr %effect.addr, align 8, !dbg !4863
  %u24 = getelementptr inbounds %struct.ff_effect, ptr %20, i32 0, i32 5, !dbg !4864
  %magnitude25 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u24, i32 0, i32 2, !dbg !4865
  store i16 %conv23, ptr %magnitude25, align 4, !dbg !4866
  %21 = load ptr, ptr %effect.addr, align 8, !dbg !4867
  %u26 = getelementptr inbounds %struct.ff_effect, ptr %21, i32 0, i32 5, !dbg !4868
  %offset = getelementptr inbounds %struct.ff_periodic_effect, ptr %u26, i32 0, i32 3, !dbg !4869
  store i16 0, ptr %offset, align 2, !dbg !4870
  %22 = load ptr, ptr %effect.addr, align 8, !dbg !4871
  %u27 = getelementptr inbounds %struct.ff_effect, ptr %22, i32 0, i32 5, !dbg !4872
  %phase = getelementptr inbounds %struct.ff_periodic_effect, ptr %u27, i32 0, i32 4, !dbg !4873
  store i16 0, ptr %phase, align 8, !dbg !4874
  %23 = load ptr, ptr %effect.addr, align 8, !dbg !4875
  %u28 = getelementptr inbounds %struct.ff_effect, ptr %23, i32 0, i32 5, !dbg !4876
  %envelope = getelementptr inbounds %struct.ff_periodic_effect, ptr %u28, i32 0, i32 5, !dbg !4877
  %attack_length = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 0, !dbg !4878
  store i16 0, ptr %attack_length, align 2, !dbg !4879
  %24 = load ptr, ptr %effect.addr, align 8, !dbg !4880
  %u29 = getelementptr inbounds %struct.ff_effect, ptr %24, i32 0, i32 5, !dbg !4881
  %envelope30 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u29, i32 0, i32 5, !dbg !4882
  %attack_level = getelementptr inbounds %struct.ff_envelope, ptr %envelope30, i32 0, i32 1, !dbg !4883
  store i16 0, ptr %attack_level, align 2, !dbg !4884
  %25 = load ptr, ptr %effect.addr, align 8, !dbg !4885
  %u31 = getelementptr inbounds %struct.ff_effect, ptr %25, i32 0, i32 5, !dbg !4886
  %envelope32 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u31, i32 0, i32 5, !dbg !4887
  %fade_length = getelementptr inbounds %struct.ff_envelope, ptr %envelope32, i32 0, i32 2, !dbg !4888
  store i16 0, ptr %fade_length, align 2, !dbg !4889
  %26 = load ptr, ptr %effect.addr, align 8, !dbg !4890
  %u33 = getelementptr inbounds %struct.ff_effect, ptr %26, i32 0, i32 5, !dbg !4891
  %envelope34 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u33, i32 0, i32 5, !dbg !4892
  %fade_level = getelementptr inbounds %struct.ff_envelope, ptr %envelope34, i32 0, i32 3, !dbg !4893
  store i16 0, ptr %fade_level, align 2, !dbg !4894
  store i32 0, ptr %retval, align 4, !dbg !4895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4895

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4896

cleanup:                                          ; preds = %sw.default, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %magnitude) #17, !dbg !4897
  %27 = load i32, ptr %retval, align 4, !dbg !4897
  ret i32 %27, !dbg !4897
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4898 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_effect_access(ptr noundef %ff, i32 noundef %effect_id, ptr noundef %file) #0 align 16 !dbg !4902 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca ptr, align 8
  %effect_id.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  store ptr %ff, ptr %ff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ff.addr, metadata !4906, metadata !DIExpression()), !dbg !4909
  store i32 %effect_id, ptr %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %effect_id.addr, metadata !4907, metadata !DIExpression()), !dbg !4910
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4908, metadata !DIExpression()), !dbg !4911
  %0 = load i32, ptr %effect_id.addr, align 4, !dbg !4912
  %cmp = icmp slt i32 %0, 0, !dbg !4914
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4915

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %effect_id.addr, align 4, !dbg !4916
  %2 = load ptr, ptr %ff.addr, align 8, !dbg !4917
  %max_effects = getelementptr inbounds %struct.ff_device, ptr %2, i32 0, i32 9, !dbg !4918
  %3 = load i32, ptr %max_effects, align 8, !dbg !4918
  %cmp1 = icmp sge i32 %1, %3, !dbg !4919
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4920

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ff.addr, align 8, !dbg !4921
  %effect_owners = getelementptr inbounds %struct.ff_device, ptr %4, i32 0, i32 11, !dbg !4922
  %5 = load i32, ptr %effect_id.addr, align 4, !dbg !4923
  %idxprom = sext i32 %5 to i64, !dbg !4921
  %arrayidx = getelementptr [0 x ptr], ptr %effect_owners, i64 0, i64 %idxprom, !dbg !4921
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !4921
  %tobool = icmp ne ptr %6, null, !dbg !4921
  br i1 %tobool, label %if.end, label %if.then, !dbg !4924

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %file.addr, align 8, !dbg !4926
  %tobool3 = icmp ne ptr %7, null, !dbg !4926
  br i1 %tobool3, label %land.lhs.true, label %if.end9, !dbg !4928

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %ff.addr, align 8, !dbg !4929
  %effect_owners4 = getelementptr inbounds %struct.ff_device, ptr %8, i32 0, i32 11, !dbg !4930
  %9 = load i32, ptr %effect_id.addr, align 4, !dbg !4931
  %idxprom5 = sext i32 %9 to i64, !dbg !4929
  %arrayidx6 = getelementptr [0 x ptr], ptr %effect_owners4, i64 0, i64 %idxprom5, !dbg !4929
  %10 = load ptr, ptr %arrayidx6, align 8, !dbg !4929
  %11 = load ptr, ptr %file.addr, align 8, !dbg !4932
  %cmp7 = icmp ne ptr %10, %11, !dbg !4933
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4934

if.then8:                                         ; preds = %land.lhs.true
  store i32 -13, ptr %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end9:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %retval, align 4, !dbg !4936
  br label %return, !dbg !4936

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !4937
  ret i32 %12, !dbg !4937
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_effects_compatible(ptr noundef %e1, ptr noundef %e2) #6 align 16 !dbg !4938 {
entry:
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !4943, metadata !DIExpression()), !dbg !4945
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !4946
  %type = getelementptr inbounds %struct.ff_effect, ptr %0, i32 0, i32 0, !dbg !4947
  %1 = load i16, ptr %type, align 8, !dbg !4947
  %conv = zext i16 %1 to i32, !dbg !4946
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !4948
  %type1 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 0, !dbg !4949
  %3 = load i16, ptr %type1, align 8, !dbg !4949
  %conv2 = zext i16 %3 to i32, !dbg !4948
  %cmp = icmp eq i32 %conv, %conv2, !dbg !4950
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4951

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %e1.addr, align 8, !dbg !4952
  %type4 = getelementptr inbounds %struct.ff_effect, ptr %4, i32 0, i32 0, !dbg !4953
  %5 = load i16, ptr %type4, align 8, !dbg !4953
  %conv5 = zext i16 %5 to i32, !dbg !4952
  %cmp6 = icmp ne i32 %conv5, 81, !dbg !4954
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !4955

lor.rhs:                                          ; preds = %land.rhs
  %6 = load ptr, ptr %e1.addr, align 8, !dbg !4956
  %u = getelementptr inbounds %struct.ff_effect, ptr %6, i32 0, i32 5, !dbg !4957
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, ptr %u, i32 0, i32 0, !dbg !4958
  %7 = load i16, ptr %waveform, align 8, !dbg !4958
  %conv8 = zext i16 %7 to i32, !dbg !4956
  %8 = load ptr, ptr %e2.addr, align 8, !dbg !4959
  %u9 = getelementptr inbounds %struct.ff_effect, ptr %8, i32 0, i32 5, !dbg !4960
  %waveform10 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u9, i32 0, i32 0, !dbg !4961
  %9 = load i16, ptr %waveform10, align 8, !dbg !4961
  %conv11 = zext i16 %9 to i32, !dbg !4959
  %cmp12 = icmp eq i32 %conv8, %conv11, !dbg !4962
  br label %lor.end, !dbg !4955

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %cmp12, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %11 = phi i1 [ false, %entry ], [ %10, %lor.end ], !dbg !4963
  %land.ext = zext i1 %11 to i32, !dbg !4951
  ret i32 %land.ext, !dbg !4964
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !4965 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4973
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4973
  call void @_raw_spin_lock_irq(ptr noundef %1) #18, !dbg !4973
  ret void, !dbg !4974
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !4975 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4979
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4979
  call void @_raw_spin_unlock_irq(ptr noundef %1) #18, !dbg !4979
  ret void, !dbg !4980
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4981 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_ff_erase(ptr noundef %dev, i32 noundef %effect_id, ptr noundef %file) #0 align 16 !dbg !4982 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %effect_id.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ff = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4986, metadata !DIExpression()), !dbg !4991
  store i32 %effect_id, ptr %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %effect_id.addr, metadata !4987, metadata !DIExpression()), !dbg !4992
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4988, metadata !DIExpression()), !dbg !4993
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !4989, metadata !DIExpression()), !dbg !4995
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4996
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !4997
  %1 = load ptr, ptr %ff1, align 8, !dbg !4997
  store ptr %1, ptr %ff, align 8, !dbg !4995
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4990, metadata !DIExpression()), !dbg !4999
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %evbit = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 5, !dbg !5000
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5000
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !5000
  %cmp = icmp ne i64 %3, 0, !dbg !5000
  %conv = zext i1 %cmp to i32, !dbg !5000
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5000
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !5000

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %evbit2 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5, !dbg !5000
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %evbit2, i64 0, i64 0, !dbg !5000
  %6 = ptrtoint ptr %arraydecay3 to i64, !dbg !5000
  %cmp4 = icmp ne i64 %6, 0, !dbg !5000
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !5000

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %evbit7 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !5000
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %evbit7, i64 0, i64 0, !dbg !5000
  %8 = load i64, ptr %arraydecay8, align 8, !dbg !5000
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5000
  br i1 %9, label %cond.true, label %cond.false, !dbg !5002

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %evbit9 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5, !dbg !5000
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %evbit9, i64 0, i64 0, !dbg !5000
  %call = call zeroext i1 @const_test_bit(i64 noundef 21, ptr noundef %arraydecay10) #18, !dbg !5000
  br i1 %call, label %if.end, label %if.then, !dbg !5000

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %evbit12 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 5, !dbg !5000
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %evbit12, i64 0, i64 0, !dbg !5000
  %call14 = call zeroext i1 @_test_bit(i64 noundef 21, ptr noundef %arraydecay13) #18, !dbg !5000
  br i1 %call14, label %if.end, label %if.then, !dbg !5002

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -38, ptr %retval, align 4, !dbg !5003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5003

if.end:                                           ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %ff, align 8, !dbg !5004
  %mutex = getelementptr inbounds %struct.ff_device, ptr %12, i32 0, i32 8, !dbg !5005
  call void @mutex_lock(ptr noundef %mutex) #18, !dbg !5006
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5007
  %14 = load i32, ptr %effect_id.addr, align 4, !dbg !5008
  %15 = load ptr, ptr %file.addr, align 8, !dbg !5009
  %call16 = call i32 @erase_effect(ptr noundef %13, i32 noundef %14, ptr noundef %15) #18, !dbg !5010
  store i32 %call16, ptr %ret, align 4, !dbg !5011
  %16 = load ptr, ptr %ff, align 8, !dbg !5012
  %mutex17 = getelementptr inbounds %struct.ff_device, ptr %16, i32 0, i32 8, !dbg !5013
  call void @mutex_unlock(ptr noundef %mutex17) #18, !dbg !5014
  %17 = load i32, ptr %ret, align 4, !dbg !5015
  store i32 %17, ptr %retval, align 4, !dbg !5016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5016

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5017
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !5017
  %18 = load i32, ptr %retval, align 4, !dbg !5017
  ret i32 %18, !dbg !5017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @erase_effect(ptr noundef %dev, i32 noundef %effect_id, ptr noundef %file) #0 align 16 !dbg !5018 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %effect_id.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ff = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5020, metadata !DIExpression()), !dbg !5025
  store i32 %effect_id, ptr %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %effect_id.addr, metadata !5021, metadata !DIExpression()), !dbg !5026
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5022, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !5023, metadata !DIExpression()), !dbg !5029
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5030
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !5031
  %1 = load ptr, ptr %ff1, align 8, !dbg !5031
  store ptr %1, ptr %ff, align 8, !dbg !5029
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !5032
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5024, metadata !DIExpression()), !dbg !5033
  %2 = load ptr, ptr %ff, align 8, !dbg !5034
  %3 = load i32, ptr %effect_id.addr, align 4, !dbg !5035
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5036
  %call = call i32 @check_effect_access(ptr noundef %2, i32 noundef %3, ptr noundef %4) #18, !dbg !5037
  store i32 %call, ptr %error, align 4, !dbg !5038
  %5 = load i32, ptr %error, align 4, !dbg !5039
  %tobool = icmp ne i32 %5, 0, !dbg !5039
  br i1 %tobool, label %if.then, label %if.end, !dbg !5041

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %error, align 4, !dbg !5042
  store i32 %6, ptr %retval, align 4, !dbg !5043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5043

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5044
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 36, !dbg !5045
  call void @spin_lock_irq(ptr noundef %event_lock) #18, !dbg !5046
  %8 = load ptr, ptr %ff, align 8, !dbg !5047
  %playback = getelementptr inbounds %struct.ff_device, ptr %8, i32 0, i32 2, !dbg !5048
  %9 = load ptr, ptr %playback, align 8, !dbg !5048
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5049
  %11 = load i32, ptr %effect_id.addr, align 4, !dbg !5050
  %call2 = call i32 %9(ptr noundef %10, i32 noundef %11, i32 noundef 0) #18, !dbg !5047
  %12 = load ptr, ptr %ff, align 8, !dbg !5051
  %effect_owners = getelementptr inbounds %struct.ff_device, ptr %12, i32 0, i32 11, !dbg !5052
  %13 = load i32, ptr %effect_id.addr, align 4, !dbg !5053
  %idxprom = sext i32 %13 to i64, !dbg !5051
  %arrayidx = getelementptr [0 x ptr], ptr %effect_owners, i64 0, i64 %idxprom, !dbg !5051
  store ptr null, ptr %arrayidx, align 8, !dbg !5054
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5055
  %event_lock3 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 36, !dbg !5056
  call void @spin_unlock_irq(ptr noundef %event_lock3) #18, !dbg !5057
  %15 = load ptr, ptr %ff, align 8, !dbg !5058
  %erase = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 1, !dbg !5060
  %16 = load ptr, ptr %erase, align 8, !dbg !5060
  %tobool4 = icmp ne ptr %16, null, !dbg !5058
  br i1 %tobool4, label %if.then5, label %if.end16, !dbg !5061

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %ff, align 8, !dbg !5062
  %erase6 = getelementptr inbounds %struct.ff_device, ptr %17, i32 0, i32 1, !dbg !5064
  %18 = load ptr, ptr %erase6, align 8, !dbg !5064
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5065
  %20 = load i32, ptr %effect_id.addr, align 4, !dbg !5066
  %call7 = call i32 %18(ptr noundef %19, i32 noundef %20) #18, !dbg !5062
  store i32 %call7, ptr %error, align 4, !dbg !5067
  %21 = load i32, ptr %error, align 4, !dbg !5068
  %tobool8 = icmp ne i32 %21, 0, !dbg !5068
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !5070

if.then9:                                         ; preds = %if.then5
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5071
  %event_lock10 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 36, !dbg !5073
  call void @spin_lock_irq(ptr noundef %event_lock10) #18, !dbg !5074
  %23 = load ptr, ptr %file.addr, align 8, !dbg !5075
  %24 = load ptr, ptr %ff, align 8, !dbg !5076
  %effect_owners11 = getelementptr inbounds %struct.ff_device, ptr %24, i32 0, i32 11, !dbg !5077
  %25 = load i32, ptr %effect_id.addr, align 4, !dbg !5078
  %idxprom12 = sext i32 %25 to i64, !dbg !5076
  %arrayidx13 = getelementptr [0 x ptr], ptr %effect_owners11, i64 0, i64 %idxprom12, !dbg !5076
  store ptr %23, ptr %arrayidx13, align 8, !dbg !5079
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5080
  %event_lock14 = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 36, !dbg !5081
  call void @spin_unlock_irq(ptr noundef %event_lock14) #18, !dbg !5082
  %27 = load i32, ptr %error, align 4, !dbg !5083
  store i32 %27, ptr %retval, align 4, !dbg !5084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5084

if.end15:                                         ; preds = %if.then5
  br label %if.end16, !dbg !5085

if.end16:                                         ; preds = %if.end15, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5086

cleanup:                                          ; preds = %if.end16, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !5087
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !5087
  %28 = load i32, ptr %retval, align 4, !dbg !5087
  ret i32 %28, !dbg !5087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_ff_flush(ptr noundef %dev, ptr noundef %file) #0 align 16 !dbg !5088 {
entry:
  %dev.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ff = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5090, metadata !DIExpression()), !dbg !5094
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5091, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !5092, metadata !DIExpression()), !dbg !5097
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5098
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !5099
  %1 = load ptr, ptr %ff1, align 8, !dbg !5099
  store ptr %1, ptr %ff, align 8, !dbg !5097
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5093, metadata !DIExpression()), !dbg !5101
  %2 = load ptr, ptr %ff, align 8, !dbg !5102
  %mutex = getelementptr inbounds %struct.ff_device, ptr %2, i32 0, i32 8, !dbg !5103
  call void @mutex_lock(ptr noundef %mutex) #18, !dbg !5104
  store i32 0, ptr %i, align 4, !dbg !5105
  br label %for.cond, !dbg !5107

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !5108
  %4 = load ptr, ptr %ff, align 8, !dbg !5110
  %max_effects = getelementptr inbounds %struct.ff_device, ptr %4, i32 0, i32 9, !dbg !5111
  %5 = load i32, ptr %max_effects, align 8, !dbg !5111
  %cmp = icmp slt i32 %3, %5, !dbg !5112
  br i1 %cmp, label %for.body, label %for.end, !dbg !5113

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5114
  %7 = load i32, ptr %i, align 4, !dbg !5115
  %8 = load ptr, ptr %file.addr, align 8, !dbg !5116
  %call = call i32 @erase_effect(ptr noundef %6, i32 noundef %7, ptr noundef %8) #18, !dbg !5117
  br label %for.inc, !dbg !5117

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !5118
  %inc = add i32 %9, 1, !dbg !5118
  store i32 %inc, ptr %i, align 4, !dbg !5118
  br label %for.cond, !dbg !5119, !llvm.loop !5120

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %ff, align 8, !dbg !5122
  %mutex2 = getelementptr inbounds %struct.ff_device, ptr %10, i32 0, i32 8, !dbg !5123
  call void @mutex_unlock(ptr noundef %mutex2) #18, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !5125
  ret i32 0, !dbg !5126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_ff_event(ptr noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #0 align 16 !dbg !5127 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ff = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5129, metadata !DIExpression()), !dbg !5134
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5130, metadata !DIExpression()), !dbg !5135
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5131, metadata !DIExpression()), !dbg !5136
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5132, metadata !DIExpression()), !dbg !5137
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !5133, metadata !DIExpression()), !dbg !5139
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5140
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !5141
  %1 = load ptr, ptr %ff1, align 8, !dbg !5141
  store ptr %1, ptr %ff, align 8, !dbg !5139
  %2 = load i32, ptr %type.addr, align 4, !dbg !5142
  %cmp = icmp ne i32 %2, 21, !dbg !5144
  br i1 %cmp, label %if.then, label %if.end, !dbg !5145

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5146

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %code.addr, align 4, !dbg !5147
  switch i32 %3, label %sw.default [
    i32 96, label %sw.bb
    i32 97, label %sw.bb22
  ], !dbg !5148

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 12, !dbg !5149
  %arraydecay = getelementptr inbounds [2 x i64], ptr %ffbit, i64 0, i64 0, !dbg !5149
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !5149
  %cmp2 = icmp ne i64 %5, 0, !dbg !5149
  %conv = zext i1 %cmp2 to i32, !dbg !5149
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5149
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !5149

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %ffbit3 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 12, !dbg !5149
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %ffbit3, i64 0, i64 0, !dbg !5149
  %8 = ptrtoint ptr %arraydecay4 to i64, !dbg !5149
  %cmp5 = icmp ne i64 %8, 0, !dbg !5149
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !5149

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %ffbit8 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 12, !dbg !5149
  %arraydecay9 = getelementptr inbounds [2 x i64], ptr %ffbit8, i64 0, i64 0, !dbg !5149
  %10 = load i64, ptr %arraydecay9, align 8, !dbg !5149
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5149
  br i1 %11, label %cond.true, label %cond.false, !dbg !5152

cond.true:                                        ; preds = %land.lhs.true7
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %ffbit10 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 12, !dbg !5149
  %arraydecay11 = getelementptr inbounds [2 x i64], ptr %ffbit10, i64 0, i64 0, !dbg !5149
  %call = call zeroext i1 @const_test_bit(i64 noundef 96, ptr noundef %arraydecay11) #18, !dbg !5149
  br i1 %call, label %lor.lhs.false, label %if.then19, !dbg !5149

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %sw.bb
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %ffbit13 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 12, !dbg !5149
  %arraydecay14 = getelementptr inbounds [2 x i64], ptr %ffbit13, i64 0, i64 0, !dbg !5149
  %call15 = call zeroext i1 @_test_bit(i64 noundef 96, ptr noundef %arraydecay14) #18, !dbg !5149
  br i1 %call15, label %lor.lhs.false, label %if.then19, !dbg !5152

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %14 = load i32, ptr %value.addr, align 4, !dbg !5153
  %cmp17 = icmp ugt i32 %14, 65535, !dbg !5154
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5155

if.then19:                                        ; preds = %lor.lhs.false, %cond.false, %cond.true
  br label %sw.epilog, !dbg !5156

if.end20:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %ff, align 8, !dbg !5157
  %set_gain = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 3, !dbg !5158
  %16 = load ptr, ptr %set_gain, align 8, !dbg !5158
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5159
  %18 = load i32, ptr %value.addr, align 4, !dbg !5160
  %conv21 = trunc i32 %18 to i16, !dbg !5160
  call void %16(ptr noundef %17, i16 noundef zeroext %conv21) #18, !dbg !5157
  br label %sw.epilog, !dbg !5161

sw.bb22:                                          ; preds = %if.end
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5162
  %ffbit23 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 12, !dbg !5162
  %arraydecay24 = getelementptr inbounds [2 x i64], ptr %ffbit23, i64 0, i64 0, !dbg !5162
  %20 = ptrtoint ptr %arraydecay24 to i64, !dbg !5162
  %cmp25 = icmp ne i64 %20, 0, !dbg !5162
  %conv26 = zext i1 %cmp25 to i32, !dbg !5162
  %21 = call i1 @llvm.is.constant.i32(i32 %conv26), !dbg !5162
  br i1 %21, label %land.lhs.true27, label %cond.false40, !dbg !5162

land.lhs.true27:                                  ; preds = %sw.bb22
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5162
  %ffbit28 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 12, !dbg !5162
  %arraydecay29 = getelementptr inbounds [2 x i64], ptr %ffbit28, i64 0, i64 0, !dbg !5162
  %23 = ptrtoint ptr %arraydecay29 to i64, !dbg !5162
  %cmp30 = icmp ne i64 %23, 0, !dbg !5162
  br i1 %cmp30, label %land.lhs.true32, label %cond.false40, !dbg !5162

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5162
  %ffbit33 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 12, !dbg !5162
  %arraydecay34 = getelementptr inbounds [2 x i64], ptr %ffbit33, i64 0, i64 0, !dbg !5162
  %25 = load i64, ptr %arraydecay34, align 8, !dbg !5162
  %26 = call i1 @llvm.is.constant.i64(i64 %25), !dbg !5162
  br i1 %26, label %cond.true35, label %cond.false40, !dbg !5164

cond.true35:                                      ; preds = %land.lhs.true32
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5162
  %ffbit36 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 12, !dbg !5162
  %arraydecay37 = getelementptr inbounds [2 x i64], ptr %ffbit36, i64 0, i64 0, !dbg !5162
  %call38 = call zeroext i1 @const_test_bit(i64 noundef 97, ptr noundef %arraydecay37) #18, !dbg !5162
  br i1 %call38, label %lor.lhs.false45, label %if.then48, !dbg !5162

cond.false40:                                     ; preds = %land.lhs.true32, %land.lhs.true27, %sw.bb22
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5162
  %ffbit41 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 12, !dbg !5162
  %arraydecay42 = getelementptr inbounds [2 x i64], ptr %ffbit41, i64 0, i64 0, !dbg !5162
  %call43 = call zeroext i1 @_test_bit(i64 noundef 97, ptr noundef %arraydecay42) #18, !dbg !5162
  br i1 %call43, label %lor.lhs.false45, label %if.then48, !dbg !5164

lor.lhs.false45:                                  ; preds = %cond.false40, %cond.true35
  %29 = load i32, ptr %value.addr, align 4, !dbg !5165
  %cmp46 = icmp ugt i32 %29, 65535, !dbg !5166
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !5167

if.then48:                                        ; preds = %lor.lhs.false45, %cond.false40, %cond.true35
  br label %sw.epilog, !dbg !5168

if.end49:                                         ; preds = %lor.lhs.false45
  %30 = load ptr, ptr %ff, align 8, !dbg !5169
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %30, i32 0, i32 4, !dbg !5170
  %31 = load ptr, ptr %set_autocenter, align 8, !dbg !5170
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !5171
  %33 = load i32, ptr %value.addr, align 4, !dbg !5172
  %conv50 = trunc i32 %33 to i16, !dbg !5172
  call void %31(ptr noundef %32, i16 noundef zeroext %conv50) #18, !dbg !5169
  br label %sw.epilog, !dbg !5173

sw.default:                                       ; preds = %if.end
  %34 = load ptr, ptr %ff, align 8, !dbg !5174
  %35 = load i32, ptr %code.addr, align 4, !dbg !5176
  %call51 = call i32 @check_effect_access(ptr noundef %34, i32 noundef %35, ptr noundef null) #18, !dbg !5177
  %cmp52 = icmp eq i32 %call51, 0, !dbg !5178
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !5179

if.then54:                                        ; preds = %sw.default
  %36 = load ptr, ptr %ff, align 8, !dbg !5180
  %playback = getelementptr inbounds %struct.ff_device, ptr %36, i32 0, i32 2, !dbg !5181
  %37 = load ptr, ptr %playback, align 8, !dbg !5181
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !5182
  %39 = load i32, ptr %code.addr, align 4, !dbg !5183
  %40 = load i32, ptr %value.addr, align 4, !dbg !5184
  %call55 = call i32 %37(ptr noundef %38, i32 noundef %39, i32 noundef %40) #18, !dbg !5180
  br label %if.end56, !dbg !5180

if.end56:                                         ; preds = %if.then54, %sw.default
  br label %sw.epilog, !dbg !5185

sw.epilog:                                        ; preds = %if.end56, %if.end49, %if.then48, %if.end20, %if.then19
  store i32 0, ptr %retval, align 4, !dbg !5186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5186

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !5187
  %41 = load i32, ptr %retval, align 4, !dbg !5187
  ret i32 %41, !dbg !5187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_ff_create(ptr noundef %dev, i32 noundef %max_effects) #0 align 16 !dbg !168 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %max_effects.addr = alloca i32, align 4
  %ff = alloca ptr, align 8
  %ff_dev_size = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4566, metadata !DIExpression()), !dbg !5188
  store i32 %max_effects, ptr %max_effects.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_effects.addr, metadata !4567, metadata !DIExpression()), !dbg !5189
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !4568, metadata !DIExpression()), !dbg !5191
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff_dev_size) #17, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %ff_dev_size, metadata !4569, metadata !DIExpression()), !dbg !5193
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4570, metadata !DIExpression()), !dbg !5195
  %0 = load i32, ptr %max_effects.addr, align 4, !dbg !5196
  %tobool = icmp ne i32 %0, 0, !dbg !5196
  br i1 %tobool, label %if.end, label %if.then, !dbg !5198

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5199

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5202

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5202

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5199
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, !dbg !5199
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef @.str) #19, !dbg !5199
  store i32 -22, ptr %retval, align 4, !dbg !5204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5204

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %max_effects.addr, align 4, !dbg !5205
  %cmp = icmp ugt i32 %2, 96, !dbg !5207
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !5208

if.then2:                                         ; preds = %if.end
  br label %do.body3, !dbg !5209

do.body3:                                         ; preds = %if.then2
  br label %do.cond4, !dbg !5212

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5212

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5209
  %dev6 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, !dbg !5209
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef @.str.1) #19, !dbg !5209
  store i32 -22, ptr %retval, align 4, !dbg !5214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5214

if.end7:                                          ; preds = %if.end
  %4 = load i32, ptr %max_effects.addr, align 4, !dbg !5215
  %conv = zext i32 %4 to i64, !dbg !5215
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 8) #18, !dbg !5215
  %call8 = call i64 @size_add(i64 noundef 120, i64 noundef %call) #18, !dbg !5215
  store i64 %call8, ptr %ff_dev_size, align 8, !dbg !5216
  %5 = load i64, ptr %ff_dev_size, align 8, !dbg !5217
  %cmp9 = icmp eq i64 %5, -1, !dbg !5219
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5220

if.then11:                                        ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !5221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5221

if.end12:                                         ; preds = %if.end7
  %6 = load i64, ptr %ff_dev_size, align 8, !dbg !5222
  %call13 = call noalias ptr @kzalloc(i64 noundef %6, i32 noundef 3264) #20, !dbg !5223
  store ptr %call13, ptr %ff, align 8, !dbg !5224
  %7 = load ptr, ptr %ff, align 8, !dbg !5225
  %tobool14 = icmp ne ptr %7, null, !dbg !5225
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5227

if.then15:                                        ; preds = %if.end12
  store i32 -12, ptr %retval, align 4, !dbg !5228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5228

if.end16:                                         ; preds = %if.end12
  %8 = load i32, ptr %max_effects.addr, align 4, !dbg !5229
  %conv17 = zext i32 %8 to i64, !dbg !5229
  %call18 = call noalias ptr @kcalloc(i64 noundef %conv17, i64 noundef 48, i32 noundef 3264) #21, !dbg !5230
  %9 = load ptr, ptr %ff, align 8, !dbg !5231
  %effects = getelementptr inbounds %struct.ff_device, ptr %9, i32 0, i32 10, !dbg !5232
  store ptr %call18, ptr %effects, align 8, !dbg !5233
  %10 = load ptr, ptr %ff, align 8, !dbg !5234
  %effects19 = getelementptr inbounds %struct.ff_device, ptr %10, i32 0, i32 10, !dbg !5236
  %11 = load ptr, ptr %effects19, align 8, !dbg !5236
  %tobool20 = icmp ne ptr %11, null, !dbg !5234
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !5237

if.then21:                                        ; preds = %if.end16
  %12 = load ptr, ptr %ff, align 8, !dbg !5238
  call void @kfree(ptr noundef %12) #18, !dbg !5240
  store i32 -12, ptr %retval, align 4, !dbg !5241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5241

if.end22:                                         ; preds = %if.end16
  %13 = load i32, ptr %max_effects.addr, align 4, !dbg !5242
  %14 = load ptr, ptr %ff, align 8, !dbg !5243
  %max_effects23 = getelementptr inbounds %struct.ff_device, ptr %14, i32 0, i32 9, !dbg !5244
  store i32 %13, ptr %max_effects23, align 8, !dbg !5245
  br label %do.body24, !dbg !5246

do.body24:                                        ; preds = %if.end22
  %15 = load ptr, ptr %ff, align 8, !dbg !5247
  %mutex = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 8, !dbg !5247
  call void @__mutex_init(ptr noundef %mutex, ptr noundef @.str.2, ptr noundef @input_ff_create.__key) #18, !dbg !5247
  br label %do.cond25, !dbg !5247

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5247

do.end26:                                         ; preds = %do.cond25
  %16 = load ptr, ptr %ff, align 8, !dbg !5249
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5250
  %ff27 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 20, !dbg !5251
  store ptr %16, ptr %ff27, align 8, !dbg !5252
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5253
  %flush = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 33, !dbg !5254
  store ptr @input_ff_flush, ptr %flush, align 8, !dbg !5255
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5256
  %event = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 34, !dbg !5257
  store ptr @input_ff_event, ptr %event, align 8, !dbg !5258
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5259
  %evbit = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 5, !dbg !5259
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5259
  %21 = ptrtoint ptr %arraydecay to i64, !dbg !5259
  %cmp28 = icmp ne i64 %21, 0, !dbg !5259
  %conv29 = zext i1 %cmp28 to i32, !dbg !5259
  %22 = call i1 @llvm.is.constant.i32(i32 %conv29), !dbg !5259
  br i1 %22, label %land.lhs.true, label %cond.false, !dbg !5259

land.lhs.true:                                    ; preds = %do.end26
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5259
  %evbit30 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 5, !dbg !5259
  %arraydecay31 = getelementptr inbounds [1 x i64], ptr %evbit30, i64 0, i64 0, !dbg !5259
  %24 = ptrtoint ptr %arraydecay31 to i64, !dbg !5259
  %cmp32 = icmp ne i64 %24, 0, !dbg !5259
  br i1 %cmp32, label %land.lhs.true34, label %cond.false, !dbg !5259

land.lhs.true34:                                  ; preds = %land.lhs.true
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !5259
  %evbit35 = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 5, !dbg !5259
  %arraydecay36 = getelementptr inbounds [1 x i64], ptr %evbit35, i64 0, i64 0, !dbg !5259
  %26 = load i64, ptr %arraydecay36, align 8, !dbg !5259
  %27 = call i1 @llvm.is.constant.i64(i64 %26), !dbg !5259
  br i1 %27, label %cond.true, label %cond.false, !dbg !5259

cond.true:                                        ; preds = %land.lhs.true34
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5259
  %evbit37 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 5, !dbg !5259
  %arraydecay38 = getelementptr inbounds [1 x i64], ptr %evbit37, i64 0, i64 0, !dbg !5259
  call void @generic___set_bit(i64 noundef 21, ptr noundef %arraydecay38) #18, !dbg !5259
  br label %cond.end, !dbg !5259

cond.false:                                       ; preds = %land.lhs.true34, %land.lhs.true, %do.end26
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !5259
  %evbit39 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 5, !dbg !5259
  %arraydecay40 = getelementptr inbounds [1 x i64], ptr %evbit39, i64 0, i64 0, !dbg !5259
  call void @___set_bit(i64 noundef 21, ptr noundef %arraydecay40) #18, !dbg !5259
  br label %cond.end, !dbg !5259

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, ptr %i, align 4, !dbg !5260
  br label %for.cond, !dbg !5260

for.cond:                                         ; preds = %for.inc, %cond.end
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !5262
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 12, !dbg !5262
  %arraydecay41 = getelementptr inbounds [2 x i64], ptr %ffbit, i64 0, i64 0, !dbg !5262
  %31 = load i32, ptr %i, align 4, !dbg !5262
  %conv42 = sext i32 %31 to i64, !dbg !5262
  %call43 = call i64 @find_next_bit(ptr noundef %arraydecay41, i64 noundef 128, i64 noundef %conv42) #18, !dbg !5262
  %conv44 = trunc i64 %call43 to i32, !dbg !5262
  store i32 %conv44, ptr %i, align 4, !dbg !5262
  %32 = load i32, ptr %i, align 4, !dbg !5262
  %cmp45 = icmp slt i32 %32, 128, !dbg !5262
  br i1 %cmp45, label %for.body, label %for.end, !dbg !5260

for.body:                                         ; preds = %for.cond
  %33 = load i32, ptr %i, align 4, !dbg !5264
  %34 = call i1 @llvm.is.constant.i32(i32 %33), !dbg !5264
  br i1 %34, label %land.lhs.true47, label %cond.false64, !dbg !5264

land.lhs.true47:                                  ; preds = %for.body
  %35 = load ptr, ptr %ff, align 8, !dbg !5264
  %ffbit48 = getelementptr inbounds %struct.ff_device, ptr %35, i32 0, i32 7, !dbg !5264
  %arraydecay49 = getelementptr inbounds [2 x i64], ptr %ffbit48, i64 0, i64 0, !dbg !5264
  %36 = ptrtoint ptr %arraydecay49 to i64, !dbg !5264
  %cmp50 = icmp ne i64 %36, 0, !dbg !5264
  %conv51 = zext i1 %cmp50 to i32, !dbg !5264
  %37 = call i1 @llvm.is.constant.i32(i32 %conv51), !dbg !5264
  br i1 %37, label %land.lhs.true52, label %cond.false64, !dbg !5264

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %38 = load ptr, ptr %ff, align 8, !dbg !5264
  %ffbit53 = getelementptr inbounds %struct.ff_device, ptr %38, i32 0, i32 7, !dbg !5264
  %arraydecay54 = getelementptr inbounds [2 x i64], ptr %ffbit53, i64 0, i64 0, !dbg !5264
  %39 = ptrtoint ptr %arraydecay54 to i64, !dbg !5264
  %cmp55 = icmp ne i64 %39, 0, !dbg !5264
  br i1 %cmp55, label %land.lhs.true57, label %cond.false64, !dbg !5264

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %40 = load ptr, ptr %ff, align 8, !dbg !5264
  %ffbit58 = getelementptr inbounds %struct.ff_device, ptr %40, i32 0, i32 7, !dbg !5264
  %arraydecay59 = getelementptr inbounds [2 x i64], ptr %ffbit58, i64 0, i64 0, !dbg !5264
  %41 = load i64, ptr %arraydecay59, align 8, !dbg !5264
  %42 = call i1 @llvm.is.constant.i64(i64 %41), !dbg !5264
  br i1 %42, label %cond.true60, label %cond.false64, !dbg !5264

cond.true60:                                      ; preds = %land.lhs.true57
  %43 = load i32, ptr %i, align 4, !dbg !5264
  %conv61 = sext i32 %43 to i64, !dbg !5264
  %44 = load ptr, ptr %ff, align 8, !dbg !5264
  %ffbit62 = getelementptr inbounds %struct.ff_device, ptr %44, i32 0, i32 7, !dbg !5264
  %arraydecay63 = getelementptr inbounds [2 x i64], ptr %ffbit62, i64 0, i64 0, !dbg !5264
  call void @generic___set_bit(i64 noundef %conv61, ptr noundef %arraydecay63) #18, !dbg !5264
  br label %cond.end68, !dbg !5264

cond.false64:                                     ; preds = %land.lhs.true57, %land.lhs.true52, %land.lhs.true47, %for.body
  %45 = load i32, ptr %i, align 4, !dbg !5264
  %conv65 = sext i32 %45 to i64, !dbg !5264
  %46 = load ptr, ptr %ff, align 8, !dbg !5264
  %ffbit66 = getelementptr inbounds %struct.ff_device, ptr %46, i32 0, i32 7, !dbg !5264
  %arraydecay67 = getelementptr inbounds [2 x i64], ptr %ffbit66, i64 0, i64 0, !dbg !5264
  call void @___set_bit(i64 noundef %conv65, ptr noundef %arraydecay67) #18, !dbg !5264
  br label %cond.end68, !dbg !5264

cond.end68:                                       ; preds = %cond.false64, %cond.true60
  br label %for.inc, !dbg !5264

for.inc:                                          ; preds = %cond.end68
  %47 = load i32, ptr %i, align 4, !dbg !5262
  %inc = add i32 %47, 1, !dbg !5262
  store i32 %inc, ptr %i, align 4, !dbg !5262
  br label %for.cond, !dbg !5262, !llvm.loop !5265

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %ff, align 8, !dbg !5267
  %ffbit69 = getelementptr inbounds %struct.ff_device, ptr %48, i32 0, i32 7, !dbg !5267
  %arraydecay70 = getelementptr inbounds [2 x i64], ptr %ffbit69, i64 0, i64 0, !dbg !5267
  %49 = ptrtoint ptr %arraydecay70 to i64, !dbg !5267
  %cmp71 = icmp ne i64 %49, 0, !dbg !5267
  %conv72 = zext i1 %cmp71 to i32, !dbg !5267
  %50 = call i1 @llvm.is.constant.i32(i32 %conv72), !dbg !5267
  br i1 %50, label %land.lhs.true73, label %cond.false86, !dbg !5267

land.lhs.true73:                                  ; preds = %for.end
  %51 = load ptr, ptr %ff, align 8, !dbg !5267
  %ffbit74 = getelementptr inbounds %struct.ff_device, ptr %51, i32 0, i32 7, !dbg !5267
  %arraydecay75 = getelementptr inbounds [2 x i64], ptr %ffbit74, i64 0, i64 0, !dbg !5267
  %52 = ptrtoint ptr %arraydecay75 to i64, !dbg !5267
  %cmp76 = icmp ne i64 %52, 0, !dbg !5267
  br i1 %cmp76, label %land.lhs.true78, label %cond.false86, !dbg !5267

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %53 = load ptr, ptr %ff, align 8, !dbg !5267
  %ffbit79 = getelementptr inbounds %struct.ff_device, ptr %53, i32 0, i32 7, !dbg !5267
  %arraydecay80 = getelementptr inbounds [2 x i64], ptr %ffbit79, i64 0, i64 0, !dbg !5267
  %54 = load i64, ptr %arraydecay80, align 8, !dbg !5267
  %55 = call i1 @llvm.is.constant.i64(i64 %54), !dbg !5267
  br i1 %55, label %cond.true81, label %cond.false86, !dbg !5269

cond.true81:                                      ; preds = %land.lhs.true78
  %56 = load ptr, ptr %ff, align 8, !dbg !5267
  %ffbit82 = getelementptr inbounds %struct.ff_device, ptr %56, i32 0, i32 7, !dbg !5267
  %arraydecay83 = getelementptr inbounds [2 x i64], ptr %ffbit82, i64 0, i64 0, !dbg !5267
  %call84 = call zeroext i1 @const_test_bit(i64 noundef 81, ptr noundef %arraydecay83) #18, !dbg !5267
  br i1 %call84, label %if.then91, label %if.end111, !dbg !5267

cond.false86:                                     ; preds = %land.lhs.true78, %land.lhs.true73, %for.end
  %57 = load ptr, ptr %ff, align 8, !dbg !5267
  %ffbit87 = getelementptr inbounds %struct.ff_device, ptr %57, i32 0, i32 7, !dbg !5267
  %arraydecay88 = getelementptr inbounds [2 x i64], ptr %ffbit87, i64 0, i64 0, !dbg !5267
  %call89 = call zeroext i1 @_test_bit(i64 noundef 81, ptr noundef %arraydecay88) #18, !dbg !5267
  br i1 %call89, label %if.then91, label %if.end111, !dbg !5269

if.then91:                                        ; preds = %cond.false86, %cond.true81
  %58 = load ptr, ptr %dev.addr, align 8, !dbg !5270
  %ffbit92 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 12, !dbg !5270
  %arraydecay93 = getelementptr inbounds [2 x i64], ptr %ffbit92, i64 0, i64 0, !dbg !5270
  %59 = ptrtoint ptr %arraydecay93 to i64, !dbg !5270
  %cmp94 = icmp ne i64 %59, 0, !dbg !5270
  %conv95 = zext i1 %cmp94 to i32, !dbg !5270
  %60 = call i1 @llvm.is.constant.i32(i32 %conv95), !dbg !5270
  br i1 %60, label %land.lhs.true96, label %cond.false107, !dbg !5270

land.lhs.true96:                                  ; preds = %if.then91
  %61 = load ptr, ptr %dev.addr, align 8, !dbg !5270
  %ffbit97 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 12, !dbg !5270
  %arraydecay98 = getelementptr inbounds [2 x i64], ptr %ffbit97, i64 0, i64 0, !dbg !5270
  %62 = ptrtoint ptr %arraydecay98 to i64, !dbg !5270
  %cmp99 = icmp ne i64 %62, 0, !dbg !5270
  br i1 %cmp99, label %land.lhs.true101, label %cond.false107, !dbg !5270

land.lhs.true101:                                 ; preds = %land.lhs.true96
  %63 = load ptr, ptr %dev.addr, align 8, !dbg !5270
  %ffbit102 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 12, !dbg !5270
  %arraydecay103 = getelementptr inbounds [2 x i64], ptr %ffbit102, i64 0, i64 0, !dbg !5270
  %64 = load i64, ptr %arraydecay103, align 8, !dbg !5270
  %65 = call i1 @llvm.is.constant.i64(i64 %64), !dbg !5270
  br i1 %65, label %cond.true104, label %cond.false107, !dbg !5270

cond.true104:                                     ; preds = %land.lhs.true101
  %66 = load ptr, ptr %dev.addr, align 8, !dbg !5270
  %ffbit105 = getelementptr inbounds %struct.input_dev, ptr %66, i32 0, i32 12, !dbg !5270
  %arraydecay106 = getelementptr inbounds [2 x i64], ptr %ffbit105, i64 0, i64 0, !dbg !5270
  call void @generic___set_bit(i64 noundef 80, ptr noundef %arraydecay106) #18, !dbg !5270
  br label %cond.end110, !dbg !5270

cond.false107:                                    ; preds = %land.lhs.true101, %land.lhs.true96, %if.then91
  %67 = load ptr, ptr %dev.addr, align 8, !dbg !5270
  %ffbit108 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 12, !dbg !5270
  %arraydecay109 = getelementptr inbounds [2 x i64], ptr %ffbit108, i64 0, i64 0, !dbg !5270
  call void @___set_bit(i64 noundef 80, ptr noundef %arraydecay109) #18, !dbg !5270
  br label %cond.end110, !dbg !5270

cond.end110:                                      ; preds = %cond.false107, %cond.true104
  br label %if.end111, !dbg !5270

if.end111:                                        ; preds = %cond.end110, %cond.false86, %cond.true81
  store i32 0, ptr %retval, align 4, !dbg !5271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5271

cleanup:                                          ; preds = %if.end111, %if.then21, %if.then15, %if.then11, %do.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff_dev_size) #17, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !5272
  %68 = load i32, ptr %retval, align 4, !dbg !5272
  ret i32 %68, !dbg !5272
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5273 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #6 align 16 !dbg !5277 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !5282, metadata !DIExpression()), !dbg !5285
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !5283, metadata !DIExpression()), !dbg !5286
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5287
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5284, metadata !DIExpression()), !dbg !5288
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !5289
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !5289
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !5289
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5289
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5289
  store i64 %4, ptr %bytes, align 8, !dbg !5289
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5289
  br i1 %call, label %if.then, label %if.end, !dbg !5291

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5293
  store i64 %5, ptr %retval, align 8, !dbg !5294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5294

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5295
  %6 = load i64, ptr %retval, align 8, !dbg !5295
  ret i64 %6, !dbg !5295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #6 align 16 !dbg !5296 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !5298, metadata !DIExpression()), !dbg !5301
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !5299, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5300, metadata !DIExpression()), !dbg !5304
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !5305
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !5305
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5305
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5305
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5305
  store i64 %4, ptr %bytes, align 8, !dbg !5305
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5305
  br i1 %call, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5308

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5309
  store i64 %5, ptr %retval, align 8, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5310

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5311
  %6 = load i64, ptr %retval, align 8, !dbg !5311
  ret i64 %6, !dbg !5311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5312 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5316, metadata !DIExpression()), !dbg !5318
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5317, metadata !DIExpression()), !dbg !5319
  %0 = load i64, ptr %size.addr, align 8, !dbg !5320
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5321
  %or = or i32 %1, 256, !dbg !5322
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !5323
  ret ptr %call, !dbg !5324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5325 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5329, metadata !DIExpression()), !dbg !5332
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5330, metadata !DIExpression()), !dbg !5333
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5331, metadata !DIExpression()), !dbg !5334
  %0 = load i64, ptr %n.addr, align 8, !dbg !5335
  %1 = load i64, ptr %size.addr, align 8, !dbg !5336
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5337
  %or = or i32 %2, 256, !dbg !5338
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #21, !dbg !5339
  ret ptr %call, !dbg !5340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5341 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5344 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5348 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5353, metadata !DIExpression()), !dbg !5357
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5354, metadata !DIExpression()), !dbg !5358
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5359
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5355, metadata !DIExpression()), !dbg !5360
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5361
  %rem = urem i64 %0, 64, !dbg !5361
  %shl = shl i64 1, %rem, !dbg !5361
  store i64 %shl, ptr %mask, align 8, !dbg !5360
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5356, metadata !DIExpression()), !dbg !5363
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5364
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5365
  %div = udiv i64 %2, 64, !dbg !5365
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5366
  store ptr %add.ptr, ptr %p, align 8, !dbg !5363
  %3 = load i64, ptr %mask, align 8, !dbg !5367
  %4 = load ptr, ptr %p, align 8, !dbg !5368
  %5 = load i64, ptr %4, align 8, !dbg !5369
  %or = or i64 %5, %3, !dbg !5369
  store i64 %or, ptr %4, align 8, !dbg !5369
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5370
  ret void, !dbg !5370
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5371 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5373, metadata !DIExpression()), !dbg !5375
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5374, metadata !DIExpression()), !dbg !5376
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5377
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5378
  %div = udiv i64 %1, 64, !dbg !5378
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5379
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5380
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5381
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5382
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5383
  ret void, !dbg !5384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !5385 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5390, metadata !DIExpression()), !dbg !5396
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5391, metadata !DIExpression()), !dbg !5397
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5392, metadata !DIExpression()), !dbg !5398
  %0 = load i64, ptr %size.addr, align 8, !dbg !5399
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5399
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5399

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5399
  %cmp = icmp ule i64 %2, 64, !dbg !5399
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5399

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5399
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5399
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5400

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5393, metadata !DIExpression()), !dbg !5402
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5403
  %5 = load i64, ptr %size.addr, align 8, !dbg !5403
  %cmp3 = icmp uge i64 %4, %5, !dbg !5403
  %lnot = xor i1 %cmp3, true, !dbg !5403
  %lnot4 = xor i1 %lnot, true, !dbg !5403
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5403
  %conv = sext i32 %lnot.ext to i64, !dbg !5403
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5403
  %tobool = icmp ne i64 %expval, 0, !dbg !5403
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5405

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5406
  store i64 %6, ptr %retval, align 8, !dbg !5407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5407

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5408
  %8 = load i64, ptr %7, align 8, !dbg !5409
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5410
  %shl = shl i64 1, %9, !dbg !5410
  %sub = sub i64 -1, %shl, !dbg !5410
  %add = add i64 %sub, 1, !dbg !5410
  %10 = load i64, ptr %size.addr, align 8, !dbg !5410
  %sub6 = sub i64 %10, 1, !dbg !5410
  %sub7 = sub i64 63, %sub6, !dbg !5410
  %shr = lshr i64 -1, %sub7, !dbg !5410
  %and = and i64 %add, %shr, !dbg !5410
  %add8 = add i64 0, %and, !dbg !5410
  %and9 = and i64 %8, %add8, !dbg !5411
  store i64 %and9, ptr %val, align 8, !dbg !5412
  %11 = load i64, ptr %val, align 8, !dbg !5413
  %tobool10 = icmp ne i64 %11, 0, !dbg !5413
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5413

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5414
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5414
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5414

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5414
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5414
  %cast = trunc i64 %15 to i32, !dbg !5414
  %conv12 = sext i32 %cast to i64, !dbg !5414
  br label %cond.end, !dbg !5414

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5414
  %call = call i64 @variable__ffs(i64 noundef %16) #18, !dbg !5414
  br label %cond.end, !dbg !5414

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5414
  br label %cond.end14, !dbg !5413

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5415
  br label %cond.end14, !dbg !5413

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5413
  store i64 %cond15, ptr %retval, align 8, !dbg !5416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5416

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5417
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5418
  %19 = load i64, ptr %size.addr, align 8, !dbg !5419
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5420
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #18, !dbg !5421
  store i64 %call17, ptr %retval, align 8, !dbg !5422
  br label %return, !dbg !5422

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5423
  ret i64 %21, !dbg !5423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_ff_destroy(ptr noundef %dev) #0 align 16 !dbg !5424 {
entry:
  %dev.addr = alloca ptr, align 8
  %ff = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5426, metadata !DIExpression()), !dbg !5428
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #17, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !5427, metadata !DIExpression()), !dbg !5430
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5431
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !5432
  %1 = load ptr, ptr %ff1, align 8, !dbg !5432
  store ptr %1, ptr %ff, align 8, !dbg !5430
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5433
  %evbit = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 5, !dbg !5433
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5433
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !5433
  %cmp = icmp ne i64 %3, 0, !dbg !5433
  %conv = zext i1 %cmp to i32, !dbg !5433
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5433
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !5433

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5433
  %evbit2 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5, !dbg !5433
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %evbit2, i64 0, i64 0, !dbg !5433
  %6 = ptrtoint ptr %arraydecay3 to i64, !dbg !5433
  %cmp4 = icmp ne i64 %6, 0, !dbg !5433
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !5433

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5433
  %evbit7 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !5433
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %evbit7, i64 0, i64 0, !dbg !5433
  %8 = load i64, ptr %arraydecay8, align 8, !dbg !5433
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5433
  br i1 %9, label %cond.true, label %cond.false, !dbg !5433

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5433
  %evbit9 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5, !dbg !5433
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %evbit9, i64 0, i64 0, !dbg !5433
  call void @generic___clear_bit(i64 noundef 21, ptr noundef %arraydecay10) #18, !dbg !5433
  br label %cond.end, !dbg !5433

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5433
  %evbit11 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 5, !dbg !5433
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %evbit11, i64 0, i64 0, !dbg !5433
  call void @___clear_bit(i64 noundef 21, ptr noundef %arraydecay12) #18, !dbg !5433
  br label %cond.end, !dbg !5433

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %ff, align 8, !dbg !5434
  %tobool = icmp ne ptr %12, null, !dbg !5434
  br i1 %tobool, label %if.then, label %if.end17, !dbg !5436

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %ff, align 8, !dbg !5437
  %destroy = getelementptr inbounds %struct.ff_device, ptr %13, i32 0, i32 5, !dbg !5440
  %14 = load ptr, ptr %destroy, align 8, !dbg !5440
  %tobool13 = icmp ne ptr %14, null, !dbg !5437
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !5441

if.then14:                                        ; preds = %if.then
  %15 = load ptr, ptr %ff, align 8, !dbg !5442
  %destroy15 = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 5, !dbg !5443
  %16 = load ptr, ptr %destroy15, align 8, !dbg !5443
  %17 = load ptr, ptr %ff, align 8, !dbg !5444
  call void %16(ptr noundef %17) #18, !dbg !5442
  br label %if.end, !dbg !5442

if.end:                                           ; preds = %if.then14, %if.then
  %18 = load ptr, ptr %ff, align 8, !dbg !5445
  %private = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 6, !dbg !5446
  %19 = load ptr, ptr %private, align 8, !dbg !5446
  call void @kfree(ptr noundef %19) #18, !dbg !5447
  %20 = load ptr, ptr %ff, align 8, !dbg !5448
  %effects = getelementptr inbounds %struct.ff_device, ptr %20, i32 0, i32 10, !dbg !5449
  %21 = load ptr, ptr %effects, align 8, !dbg !5449
  call void @kfree(ptr noundef %21) #18, !dbg !5450
  %22 = load ptr, ptr %ff, align 8, !dbg !5451
  call void @kfree(ptr noundef %22) #18, !dbg !5452
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5453
  %ff16 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 20, !dbg !5454
  store ptr null, ptr %ff16, align 8, !dbg !5455
  br label %if.end17, !dbg !5456

if.end17:                                         ; preds = %if.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #17, !dbg !5457
  ret void, !dbg !5457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5458 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5460, metadata !DIExpression()), !dbg !5464
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5461, metadata !DIExpression()), !dbg !5465
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5466
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5462, metadata !DIExpression()), !dbg !5467
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5468
  %rem = urem i64 %0, 64, !dbg !5468
  %shl = shl i64 1, %rem, !dbg !5468
  store i64 %shl, ptr %mask, align 8, !dbg !5467
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5463, metadata !DIExpression()), !dbg !5470
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5471
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5472
  %div = udiv i64 %2, 64, !dbg !5472
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5473
  store ptr %add.ptr, ptr %p, align 8, !dbg !5470
  %3 = load i64, ptr %mask, align 8, !dbg !5474
  %not = xor i64 %3, -1, !dbg !5475
  %4 = load ptr, ptr %p, align 8, !dbg !5476
  %5 = load i64, ptr %4, align 8, !dbg !5477
  %and = and i64 %5, %not, !dbg !5477
  store i64 %and, ptr %4, align 8, !dbg !5477
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5478
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5478
  ret void, !dbg !5478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5479 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5481, metadata !DIExpression()), !dbg !5483
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5482, metadata !DIExpression()), !dbg !5484
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5485
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5486
  %div = udiv i64 %1, 64, !dbg !5486
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5487
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5488
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5489
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5490
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5493 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5501, metadata !DIExpression()), !dbg !5503
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5502, metadata !DIExpression()), !dbg !5504
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5505
  %1 = load i64, ptr %size.addr, align 8, !dbg !5506
  %conv = trunc i64 %1 to i32, !dbg !5506
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !5507
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5508
  %3 = load i64, ptr %size.addr, align 8, !dbg !5508
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !5508
  ret void, !dbg !5509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5510 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5513, metadata !DIExpression()), !dbg !5515
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5514, metadata !DIExpression()), !dbg !5516
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5517
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5518
  br i1 %1, label %cond.true, label %cond.false, !dbg !5518

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5519
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5520
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5521
  %conv = zext i1 %call to i32, !dbg !5521
  br label %cond.end, !dbg !5518

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5522
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5523
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !5524
  %conv2 = zext i1 %call1 to i32, !dbg !5524
  br label %cond.end, !dbg !5518

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5518
  %tobool = icmp ne i32 %cond, 0, !dbg !5518
  ret i1 %tobool, !dbg !5525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5526 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5531, metadata !DIExpression()), !dbg !5533
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5532, metadata !DIExpression()), !dbg !5534
  ret i1 true, !dbg !5535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5536 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5541, metadata !DIExpression()), !dbg !5544
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5542, metadata !DIExpression()), !dbg !5545
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5543, metadata !DIExpression()), !dbg !5546
  ret void, !dbg !5547
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5548 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5552, metadata !DIExpression()), !dbg !5554
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5553, metadata !DIExpression()), !dbg !5555
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5556
  %and = and i64 %0, 63, !dbg !5557
  %shl = shl i64 1, %and, !dbg !5558
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5559
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5560
  %shr = ashr i64 %2, 6, !dbg !5561
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5559
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5559
  %and1 = and i64 %shl, %3, !dbg !5562
  %cmp = icmp ne i64 %and1, 0, !dbg !5563
  ret i1 %cmp, !dbg !5564
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5565 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5567, metadata !DIExpression()), !dbg !5570
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5568, metadata !DIExpression()), !dbg !5571
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5569, metadata !DIExpression()), !dbg !5573
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5574
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5575
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5576, !srcloc !5577
  %3 = icmp ult i8 %2, 2, !dbg !5576
  call void @llvm.assume(i1 %3), !dbg !5576
  store i8 %2, ptr %oldbit, align 1, !dbg !5576
  %4 = load i8, ptr %oldbit, align 1, !dbg !5578, !range !5579, !noundef !1467
  %tobool = trunc i8 %4 to i1, !dbg !5578
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5580
  ret i1 %tobool, !dbg !5581
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5582 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5587 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !5588 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5594, !range !5579, !noundef !1467
  %tobool = trunc i8 %0 to i1, !dbg !5594
  %lnot = xor i1 %tobool, true, !dbg !5594
  %lnot1 = xor i1 %lnot, true, !dbg !5594
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5594
  %conv = sext i32 %lnot.ext to i64, !dbg !5594
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5594
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5594
  ret i1 %tobool2, !dbg !5595
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !5596 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5598, metadata !DIExpression()), !dbg !5603
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5599, metadata !DIExpression()), !dbg !5604
  %0 = load i64, ptr %size.addr, align 8, !dbg !5605
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5606
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5607

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5608
  %tobool = icmp ne i64 %2, 0, !dbg !5608
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5609

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5600, metadata !DIExpression()), !dbg !5611
  %3 = load i64, ptr %size.addr, align 8, !dbg !5612
  %cmp = icmp ugt i64 %3, 8192, !dbg !5614
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5615

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5616
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5617
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5618
  store ptr %call, ptr %retval, align 8, !dbg !5619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5619

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5620
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5620
  store i32 %call2, ptr %index, align 4, !dbg !5621
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5622
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5623
  %9 = ptrtoint ptr %8 to i64, !dbg !5623
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5624
  %idxprom = zext i32 %call3 to i64, !dbg !5625
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5625
  %10 = load i32, ptr %index, align 4, !dbg !5626
  %idxprom4 = zext i32 %10 to i64, !dbg !5625
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5625
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5625
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5627
  %13 = load i64, ptr %size.addr, align 8, !dbg !5628
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !5629
  store ptr %call6, ptr %retval, align 8, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5631
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5632
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5633
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5634
  store ptr %call8, ptr %retval, align 8, !dbg !5635
  br label %return, !dbg !5635

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5636
  ret ptr %16, !dbg !5636
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5637 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !5638 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5642, metadata !DIExpression()), !dbg !5644
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5643, metadata !DIExpression()), !dbg !5645
  %0 = load i64, ptr %size.addr, align 8, !dbg !5646
  %tobool = icmp ne i64 %0, 0, !dbg !5646
  br i1 %tobool, label %if.end, label %if.then, !dbg !5648

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5649
  br label %return, !dbg !5649

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5650
  %cmp = icmp ule i64 %1, 8, !dbg !5652
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5653

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5654
  br label %return, !dbg !5654

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5655
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5657
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5658

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5659
  %cmp4 = icmp ule i64 %3, 96, !dbg !5660
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5661

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5662
  br label %return, !dbg !5662

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5663
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5665
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5666

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5667
  %cmp9 = icmp ule i64 %5, 192, !dbg !5668
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5669

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5670
  br label %return, !dbg !5670

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5671
  %cmp12 = icmp ule i64 %6, 8, !dbg !5673
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5674

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5675
  br label %return, !dbg !5675

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5676
  %cmp15 = icmp ule i64 %7, 16, !dbg !5678
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5679

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5680
  br label %return, !dbg !5680

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5681
  %cmp18 = icmp ule i64 %8, 32, !dbg !5683
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5684

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5686
  %cmp21 = icmp ule i64 %9, 64, !dbg !5688
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5689

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5690
  br label %return, !dbg !5690

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5691
  %cmp24 = icmp ule i64 %10, 128, !dbg !5693
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5694

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5695
  br label %return, !dbg !5695

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5696
  %cmp27 = icmp ule i64 %11, 256, !dbg !5698
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5699

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5701
  %cmp30 = icmp ule i64 %12, 512, !dbg !5703
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5704

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5705
  br label %return, !dbg !5705

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5706
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5708
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5709

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5710
  br label %return, !dbg !5710

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5711
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5713
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5714

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5716
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5718
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5719

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5720
  br label %return, !dbg !5720

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5721
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5723
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5724

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5725
  br label %return, !dbg !5725

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5726
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5728
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5729

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5730
  br label %return, !dbg !5730

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5731
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5733
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5734

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5735
  br label %return, !dbg !5735

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5736
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5738
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5739

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5741
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5743
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5744

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5745
  br label %return, !dbg !5745

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5746
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5748
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5749

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5751
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5753
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5754

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5755
  br label %return, !dbg !5755

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5756
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5758
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5759

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5760
  br label %return, !dbg !5760

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5761
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5763
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5764

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5765
  br label %return, !dbg !5765

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5766, !range !5579, !noundef !1467
  %tobool69 = trunc i8 %25 to i1, !dbg !5766
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5768

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5769

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #23, !dbg !5770, !srcloc !5773
  unreachable, !dbg !5770

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5774

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5775

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5776

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5778

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5776

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #17, !dbg !5780, !srcloc !5782
  br label %do.end75, !dbg !5780

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5776

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5783
  br label %return, !dbg !5783

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5784
  ret i32 %26, !dbg !5784
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5785 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !5791 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5795, metadata !DIExpression()), !dbg !5797
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5796, metadata !DIExpression()), !dbg !5798
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5799
  %and = and i32 %0, 17, !dbg !5799
  %cmp = icmp eq i32 %and, 0, !dbg !5799
  %lnot = xor i1 %cmp, true, !dbg !5799
  %lnot1 = xor i1 %lnot, true, !dbg !5799
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5799
  %conv = sext i32 %lnot.ext to i64, !dbg !5799
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5799
  %tobool = icmp ne i64 %expval, 0, !dbg !5799
  br i1 %tobool, label %if.then, label %if.end, !dbg !5801

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5803
  %and2 = and i32 %1, 1, !dbg !5805
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5805
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5806

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5808
  br label %return, !dbg !5808

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5810
  ret i32 %2, !dbg !5810
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5811 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5812 dso_local void @__compiletime_assert_263() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5813 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5815, metadata !DIExpression()), !dbg !5819
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5816, metadata !DIExpression()), !dbg !5820
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5817, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5818, metadata !DIExpression()), !dbg !5823
  %0 = load i64, ptr %n.addr, align 8, !dbg !5824
  %1 = load i64, ptr %size.addr, align 8, !dbg !5824
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5824
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5824
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5824
  store i64 %4, ptr %bytes, align 8, !dbg !5824
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5824
  %lnot = xor i1 %call, true, !dbg !5824
  %lnot1 = xor i1 %lnot, true, !dbg !5824
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5824
  %conv = sext i32 %lnot.ext to i64, !dbg !5824
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5824
  %tobool = icmp ne i64 %expval, 0, !dbg !5824
  br i1 %tobool, label %if.then, label %if.end, !dbg !5826

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5827

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5828
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5830
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5831

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5832
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5833
  br i1 %8, label %if.then2, label %if.end4, !dbg !5834

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5835
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5836
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !5837
  store ptr %call3, ptr %retval, align 8, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5839
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5840
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !5841
  store ptr %call5, ptr %retval, align 8, !dbg !5842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5843
  %13 = load ptr, ptr %retval, align 8, !dbg !5843
  ret ptr %13, !dbg !5843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5844 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5846, metadata !DIExpression()), !dbg !5848
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5847, metadata !DIExpression()), !dbg !5849
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5850
  %1 = load i64, ptr %size.addr, align 8, !dbg !5851
  %conv = trunc i64 %1 to i32, !dbg !5851
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5852
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5853
  %3 = load i64, ptr %size.addr, align 8, !dbg !5853
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #18, !dbg !5853
  ret void, !dbg !5854
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5855 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5857, metadata !DIExpression()), !dbg !5859
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5858, metadata !DIExpression()), !dbg !5860
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5861
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5862
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5863, !srcloc !5864
  ret void, !dbg !5865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5866 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5868, metadata !DIExpression()), !dbg !5870
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  ret i1 true, !dbg !5872
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !5873 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  %0 = load i64, ptr %word.addr, align 8, !dbg !5879
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #24, !dbg !5880, !srcloc !5881
  store i64 %1, ptr %word.addr, align 8, !dbg !5880
  %2 = load i64, ptr %word.addr, align 8, !dbg !5882
  ret i64 %2, !dbg !5883
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5884 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5885 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5887, metadata !DIExpression()), !dbg !5889
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5888, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5891
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5892
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5893, !srcloc !5894
  ret void, !dbg !5895
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }
attributes #24 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592}
!llvm.ident = !{!4593}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_upload267", scope: !2, file: !3, line: 165, type: !136, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.ff-core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/input-core\22 -D KBUILD_BASENAME=\22ff_core\22 -D KBUILD_MODNAME=\22input_core\22 -D __KBUILD_MODNAME=kmod_input_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/ff-core.ll drivers/input/ff-core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !148, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/ff-core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c17611036ab99bab8e5b01adf9a2f0bc")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117, !122}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
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
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !123, line: 364, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!126 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!127 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!128 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!129 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!130 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!131 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!132 = !{!133, !136, !137, !85, !139, !143, !144, !135, !145}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !134, line: 42, baseType: !135)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!135 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 61, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !141, line: 72, baseType: !142)
!141 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !141, line: 16, baseType: !135)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !134, line: 154, baseType: !7)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!147 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!148 = !{!0, !149, !151, !153, !155, !161, !166, !4571, !4576, !4578, !4580}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_erase268", scope: !2, file: !3, line: 224, type: !136, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_flush269", scope: !2, file: !3, line: 251, type: !136, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_event270", scope: !2, file: !3, line: 291, type: !136, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 311, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 352, elements: !159)
!158 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!159 = !{!160}
!160 = !DISubrange(count: 44)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 400, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 50)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__key", scope: !168, file: !3, line: 336, type: !2178, isLocal: true, isDefinition: true)
!168 = distinct !DISubprogram(name: "input_ff_create", scope: !3, file: !3, line: 304, type: !169, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4565)
!169 = !DISubroutineType(types: !170)
!170 = !{!85, !171, !7}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !173, line: 137, size: 10880, elements: !174)
!173 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!174 = !{!175, !178, !179, !180, !191, !195, !196, !200, !201, !202, !203, !204, !205, !209, !210, !211, !212, !213, !214, !234, !239, !4070, !4073, !4074, !4075, !4077, !4080, !4090, !4091, !4092, !4093, !4094, !4098, !4102, !4106, !4110, !4188, !4189, !4190, !4191, !4192, !4555, !4556, !4557, !4558, !4559, !4561, !4562, !4564}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 138, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !172, file: !173, line: 139, baseType: !176, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !172, file: !173, line: 140, baseType: !176, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !173, line: 141, baseType: !181, size: 64, offset: 192)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !182, line: 59, size: 64, elements: !183)
!182 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!183 = !{!184, !188, !189, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !181, file: !182, line: 60, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !186, line: 24, baseType: !187)
!186 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !181, file: !182, line: 61, baseType: !185, size: 16, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !181, file: !182, line: 62, baseType: !185, size: 16, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !181, file: !182, line: 63, baseType: !185, size: 16, offset: 48)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !172, file: !173, line: 143, baseType: !192, size: 64, offset: 256)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 1)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !172, file: !173, line: 145, baseType: !192, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !172, file: !173, line: 146, baseType: !197, size: 768, offset: 384)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 768, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 12)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !172, file: !173, line: 147, baseType: !192, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !172, file: !173, line: 148, baseType: !192, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !172, file: !173, line: 149, baseType: !192, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !172, file: !173, line: 150, baseType: !192, size: 64, offset: 1344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !172, file: !173, line: 151, baseType: !192, size: 64, offset: 1408)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !172, file: !173, line: 152, baseType: !206, size: 128, offset: 1472)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 2)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !172, file: !173, line: 153, baseType: !192, size: 64, offset: 1600)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !172, file: !173, line: 155, baseType: !7, size: 32, offset: 1664)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !172, file: !173, line: 157, baseType: !7, size: 32, offset: 1696)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !172, file: !173, line: 158, baseType: !7, size: 32, offset: 1728)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !172, file: !173, line: 159, baseType: !136, size: 64, offset: 1792)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !172, file: !173, line: 161, baseType: !215, size: 64, offset: 1856)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!85, !171, !218, !233}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !182, line: 117, size: 320, elements: !221)
!221 = !{!222, !225, !226, !227, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !182, line: 119, baseType: !223, size: 8)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !186, line: 21, baseType: !224)
!224 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !220, file: !182, line: 120, baseType: !223, size: 8, offset: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !220, file: !182, line: 121, baseType: !185, size: 16, offset: 16)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !220, file: !182, line: 122, baseType: !228, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !186, line: 27, baseType: !7)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !220, file: !182, line: 123, baseType: !230, size: 256, offset: 64)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 32)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !172, file: !173, line: 164, baseType: !235, size: 64, offset: 1920)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!85, !171, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !172, file: !173, line: 167, baseType: !240, size: 64, offset: 1984)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !173, line: 546, size: 960, elements: !242)
!242 = !{!243, !312, !316, !320, !326, !327, !331, !332, !333, !387, !388, !389}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !241, file: !173, line: 547, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!85, !171, !247, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !182, line: 454, size: 384, elements: !249)
!249 = !{!250, !251, !254, !255, !260, !265}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !182, line: 455, baseType: !185, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !248, file: !182, line: 456, baseType: !252, size: 16, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !186, line: 23, baseType: !253)
!253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !248, file: !182, line: 457, baseType: !185, size: 16, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !248, file: !182, line: 458, baseType: !256, size: 32, offset: 48)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !182, line: 320, size: 32, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !256, file: !182, line: 321, baseType: !185, size: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !256, file: !182, line: 322, baseType: !185, size: 16, offset: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !248, file: !182, line: 459, baseType: !261, size: 32, offset: 80)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !182, line: 310, size: 32, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !261, file: !182, line: 311, baseType: !185, size: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !261, file: !182, line: 312, baseType: !185, size: 16, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !248, file: !182, line: 467, baseType: !266, size: 256, offset: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !182, line: 461, size: 256, elements: !267)
!267 = !{!268, !279, !285, !297, !307}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !266, file: !182, line: 462, baseType: !269, size: 80)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !182, line: 349, size: 80, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !269, file: !182, line: 350, baseType: !252, size: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !269, file: !182, line: 351, baseType: !273, size: 64, offset: 16)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !182, line: 337, size: 64, elements: !274)
!274 = !{!275, !276, !277, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !273, file: !182, line: 338, baseType: !185, size: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !273, file: !182, line: 339, baseType: !185, size: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !273, file: !182, line: 340, baseType: !185, size: 16, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !273, file: !182, line: 341, baseType: !185, size: 16, offset: 48)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !266, file: !182, line: 463, baseType: !280, size: 96)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !182, line: 360, size: 96, elements: !281)
!281 = !{!282, !283, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !280, file: !182, line: 361, baseType: !252, size: 16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !280, file: !182, line: 362, baseType: !252, size: 16, offset: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !280, file: !182, line: 363, baseType: !273, size: 64, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !266, file: !182, line: 464, baseType: !286, size: 256)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !182, line: 405, size: 256, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !286, file: !182, line: 406, baseType: !185, size: 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !182, line: 407, baseType: !185, size: 16, offset: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !286, file: !182, line: 408, baseType: !252, size: 16, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !286, file: !182, line: 409, baseType: !252, size: 16, offset: 48)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !286, file: !182, line: 410, baseType: !185, size: 16, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !286, file: !182, line: 412, baseType: !273, size: 64, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !286, file: !182, line: 414, baseType: !228, size: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !286, file: !182, line: 415, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !266, file: !182, line: 465, baseType: !298, size: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 192, elements: !207)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !182, line: 376, size: 96, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !299, file: !182, line: 377, baseType: !185, size: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !299, file: !182, line: 378, baseType: !185, size: 16, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !299, file: !182, line: 380, baseType: !252, size: 16, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !299, file: !182, line: 381, baseType: !252, size: 16, offset: 48)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !299, file: !182, line: 383, baseType: !185, size: 16, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !299, file: !182, line: 384, baseType: !252, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !266, file: !182, line: 466, baseType: !308, size: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !182, line: 426, size: 32, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !308, file: !182, line: 427, baseType: !185, size: 16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !308, file: !182, line: 428, baseType: !185, size: 16, offset: 16)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !241, file: !173, line: 549, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!85, !171, !85}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !241, file: !173, line: 551, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!85, !171, !85, !85}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !241, file: !173, line: 552, baseType: !321, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !171, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !325, line: 19, baseType: !185)
!325 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !241, file: !173, line: 553, baseType: !321, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !241, file: !173, line: 555, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !240}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !241, file: !173, line: 557, baseType: !136, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !241, file: !173, line: 559, baseType: !206, size: 128, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !241, file: !173, line: 561, baseType: !334, size: 256, offset: 576)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !335, line: 66, size: 256, elements: !336)
!335 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!336 = !{!337, !347, !376, !381}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !334, file: !335, line: 67, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !339, line: 13, baseType: !340)
!339 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 181, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 179, size: 64, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !341, file: !134, line: 180, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !325, line: 22, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !186, line: 30, baseType: !346)
!346 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !334, file: !335, line: 68, baseType: !348, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !349, line: 23, baseType: !350)
!349 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !349, line: 14, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !350, file: !349, line: 15, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !354, line: 44, baseType: !355)
!354 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !354, line: 14, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !354, line: 15, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !354, line: 15, size: 32, elements: !359)
!359 = !{!360, !365, !371}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !358, file: !354, line: 16, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 174, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 172, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !362, file: !134, line: 173, baseType: !85, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !354, line: 24, baseType: !366, size: 16)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !354, line: 24, size: 16, elements: !367)
!367 = !{!368, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !366, file: !354, line: 25, baseType: !369, size: 8)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !325, line: 17, baseType: !223)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !366, file: !354, line: 26, baseType: !369, size: 8, offset: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !354, line: 28, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !354, line: 28, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !372, file: !354, line: 29, baseType: !324, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !372, file: !354, line: 30, baseType: !324, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !334, file: !335, line: 70, baseType: !377, size: 32, offset: 96)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !378, line: 15, size: 32, elements: !379)
!378 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !377, file: !378, line: 20, baseType: !361, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !334, file: !335, line: 72, baseType: !382, size: 128, offset: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 190, size: 128, elements: !383)
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !134, line: 191, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !382, file: !134, line: 191, baseType: !385, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !241, file: !173, line: 563, baseType: !85, size: 32, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !241, file: !173, line: 564, baseType: !247, size: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !241, file: !173, line: 565, baseType: !390, offset: 960)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !498)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !393)
!393 = !{!394, !413, !422, !424, !425, !426, !429, !430, !511, !733, !742, !4060, !4061, !4062, !4063, !4064, !4065, !4067, !4068, !4069}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !35, line: 995, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !35, line: 995, size: 128, elements: !396)
!396 = !{!397, !403, !412}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !395, file: !35, line: 996, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !399, line: 60, size: 64, elements: !400)
!399 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !399, line: 61, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !395, file: !35, line: 997, baseType: !404, size: 128, align: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 232, size: 128, align: 64, elements: !405)
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !134, line: 233, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !404, file: !134, line: 234, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !407}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !395, file: !35, line: 998, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !392, file: !35, line: 1005, baseType: !414, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !415, line: 29, baseType: !416)
!415 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !415, line: 17, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !415, line: 18, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !415, line: 18, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !419, file: !415, line: 19, baseType: !350, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !392, file: !35, line: 1006, baseType: !423, size: 32, offset: 160)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !134, line: 156, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !392, file: !35, line: 1007, baseType: !338, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !392, file: !35, line: 1008, baseType: !334, size: 256, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !392, file: !35, line: 1009, baseType: !427, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 52, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !141, line: 88, baseType: !346)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !392, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !392, file: !35, line: 1011, baseType: !431, size: 256, offset: 640)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !432)
!432 = !{!433, !456, !500, !501, !509, !510}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !35, line: 949, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !435, line: 34, baseType: !436)
!435 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 25, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !436, file: !435, line: 26, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !440, line: 27, baseType: !441)
!440 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !440, line: 13, size: 64, elements: !442)
!442 = !{!443, !455}
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !440, line: 14, baseType: !444, size: 32)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !440, line: 14, size: 32, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !444, file: !440, line: 15, baseType: !361, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !440, line: 16, baseType: !448, size: 32)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !440, line: 16, size: 32, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !448, file: !440, line: 18, baseType: !369, size: 8)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !448, file: !440, line: 19, baseType: !452, size: 24, offset: 8)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 24, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 3)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !441, file: !440, line: 26, baseType: !353, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !431, file: !35, line: 950, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !459)
!459 = !{!460, !466, !467, !468, !481, !482, !489, !490}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !458, file: !6, line: 61, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !462, line: 113, baseType: !463)
!462 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !462, line: 111, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !463, file: !462, line: 112, baseType: !361, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !458, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !6, line: 63, baseType: !414, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !458, file: !6, line: 65, baseType: !469, size: 256, offset: 128)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !479)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !134, line: 194, size: 64, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !470, file: !134, line: 195, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 198, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !134, line: 199, baseType: !473, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !474, file: !134, line: 199, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!479 = !{!480}
!480 = !DISubrange(count: 4)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !458, file: !6, line: 66, baseType: !470, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !458, file: !6, line: 68, baseType: !483, size: 192, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !484, line: 41, baseType: !485)
!484 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !484, line: 37, size: 192, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !485, file: !484, line: 38, baseType: !414, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !485, file: !484, line: 39, baseType: !382, size: 128, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !458, file: !6, line: 69, baseType: !404, size: 128, align: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !458, file: !6, line: 70, baseType: !491, offset: 768)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, elements: !498)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !492, file: !6, line: 55, baseType: !85, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !492, file: !6, line: 56, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!498 = !{!499}
!499 = !DISubrange(count: -1)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !431, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !431, file: !35, line: 952, baseType: !502, size: 32, offset: 160)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !503, line: 23, baseType: !504)
!503 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 21, size: 32, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !504, file: !503, line: 22, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 37, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !141, line: 49, baseType: !7)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !431, file: !35, line: 952, baseType: !502, size: 32, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !431, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !392, file: !35, line: 1012, baseType: !512, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !515, line: 110, size: 1472, elements: !516)
!515 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!516 = !{!517, !518, !519, !526, !527, !528, !529, !530, !531, !532, !533, !542, !543, !544, !545, !546, !547, !678, !679, !680, !681, !682, !713, !716, !720, !728}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !514, file: !515, line: 111, baseType: !338, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !514, file: !515, line: 112, baseType: !502, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !514, file: !515, line: 113, baseType: !520, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !503, line: 28, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 26, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !521, file: !503, line: 27, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 38, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !141, line: 50, baseType: !7)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !514, file: !515, line: 114, baseType: !502, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !514, file: !515, line: 115, baseType: !520, size: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !514, file: !515, line: 116, baseType: !502, size: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !514, file: !515, line: 117, baseType: !520, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !514, file: !515, line: 118, baseType: !502, size: 32, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !514, file: !515, line: 119, baseType: !520, size: 32, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !514, file: !515, line: 120, baseType: !7, size: 32, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !514, file: !515, line: 121, baseType: !534, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !535, line: 24, baseType: !536)
!535 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 24, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !536, file: !535, line: 24, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !325, line: 23, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !186, line: 31, baseType: !541)
!541 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !514, file: !515, line: 122, baseType: !534, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !514, file: !515, line: 123, baseType: !534, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !514, file: !515, line: 124, baseType: !534, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !514, file: !515, line: 125, baseType: !534, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !514, file: !515, line: 127, baseType: !224, size: 8, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !514, file: !515, line: 129, baseType: !548, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !550, line: 195, size: 1728, elements: !551)
!550 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!551 = !{!552, !553, !558, !570, !579, !582, !583, !590, !591, !592, !593, !597, !598, !599, !600, !601, !642, !663}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !549, file: !550, line: 196, baseType: !461, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !549, file: !550, line: 197, baseType: !554, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !550, line: 28, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !134, line: 104, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !325, line: 20, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !186, line: 26, baseType: !85)
!558 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !550, line: 198, baseType: !559, size: 192, offset: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !550, line: 198, size: 192, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !559, file: !550, line: 199, baseType: !382, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !559, file: !550, line: 200, baseType: !563, size: 192, align: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !564, line: 5, size: 192, align: 64, elements: !565)
!564 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!565 = !{!566, !567, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !563, file: !564, line: 6, baseType: !135, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !563, file: !564, line: 7, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !563, file: !564, line: 8, baseType: !568, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !549, file: !550, line: 205, baseType: !571, size: 320, offset: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !572, line: 48, size: 320, elements: !573)
!572 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!573 = !{!574, !575, !576, !577, !578}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !571, file: !572, line: 49, baseType: !338, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !571, file: !572, line: 55, baseType: !338, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !571, file: !572, line: 57, baseType: !377, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !571, file: !572, line: 59, baseType: !348, size: 32, offset: 160)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !571, file: !572, line: 60, baseType: !382, size: 128, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !549, file: !550, line: 206, baseType: !580, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !550, line: 206, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !549, file: !550, line: 207, baseType: !136, size: 64, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !550, line: 208, baseType: !584, size: 64, offset: 704)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !550, line: 208, size: 64, elements: !585)
!585 = !{!586, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !584, file: !550, line: 209, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !588, line: 8, baseType: !345)
!588 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!589 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !584, file: !550, line: 210, baseType: !587, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !549, file: !550, line: 212, baseType: !587, size: 64, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !550, line: 213, baseType: !502, size: 32, offset: 832)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !549, file: !550, line: 214, baseType: !520, size: 32, offset: 864)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !549, file: !550, line: 215, baseType: !594, size: 32, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !550, line: 31, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 110, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !325, line: 21, baseType: !228)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !549, file: !550, line: 216, baseType: !187, size: 16, offset: 928)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !549, file: !550, line: 217, baseType: !187, size: 16, offset: 944)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !549, file: !550, line: 221, baseType: !253, size: 16, offset: 960)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !550, line: 228, baseType: !135, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !550, line: 245, baseType: !602, size: 320, offset: 1088)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !550, line: 245, size: 320, elements: !603)
!603 = !{!604, !633}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !602, file: !550, line: 246, baseType: !605, size: 320)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !550, line: 114, size: 320, elements: !606)
!606 = !{!607, !608, !620, !623, !632}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !605, file: !550, line: 116, baseType: !135, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !550, line: 117, baseType: !609, size: 64, offset: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !550, line: 117, size: 64, elements: !610)
!610 = !{!611, !619}
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !550, line: 118, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !550, line: 118, size: 64, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !612, file: !550, line: 120, baseType: !324, size: 16)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !612, file: !550, line: 121, baseType: !616, size: 48, offset: 16)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 48, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 6)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !609, file: !550, line: 127, baseType: !135, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !550, line: 129, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !550, line: 102, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !605, file: !550, line: 130, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !550, line: 108, size: 192, elements: !626)
!626 = !{!627, !628, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !625, file: !550, line: 109, baseType: !404, size: 128, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !625, file: !550, line: 110, baseType: !461, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !625, file: !550, line: 111, baseType: !630, size: 8, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 35, baseType: !631)
!631 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !605, file: !550, line: 131, baseType: !176, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !550, line: 247, baseType: !634, size: 320)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !550, line: 247, size: 320, elements: !635)
!635 = !{!636, !637, !638, !639, !640}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !634, file: !550, line: 248, baseType: !135, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !634, file: !550, line: 249, baseType: !135, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !550, line: 250, baseType: !621, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !634, file: !550, line: 251, baseType: !624, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !634, file: !550, line: 252, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !550, line: 260, baseType: !643, size: 256, offset: 1408)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !550, line: 260, size: 256, elements: !644)
!644 = !{!645, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !643, file: !550, line: 261, baseType: !646, size: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !550, line: 134, size: 256, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !646, file: !550, line: 135, baseType: !136, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !646, file: !550, line: 136, baseType: !650, size: 256)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !479)
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !550, line: 262, baseType: !652, size: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !550, line: 262, size: 256, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !652, file: !550, line: 264, baseType: !382, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !652, file: !550, line: 265, baseType: !656, size: 128, offset: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !657, line: 22, size: 128, elements: !658)
!657 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!658 = !{!659, !662}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !656, file: !657, line: 23, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !657, line: 23, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !656, file: !657, line: 24, baseType: !135, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !549, file: !550, line: 280, baseType: !664, size: 64, offset: 1664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !550, line: 176, size: 192, elements: !666)
!666 = !{!667, !676, !677}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !665, file: !550, line: 177, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !550, line: 171, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!85, !548, !672, !674, !548}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !665, file: !550, line: 178, baseType: !548, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !665, file: !550, line: 179, baseType: !621, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !514, file: !515, line: 130, baseType: !548, size: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !514, file: !515, line: 131, baseType: !548, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !514, file: !515, line: 132, baseType: !548, size: 64, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !514, file: !515, line: 135, baseType: !136, size: 64, offset: 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !514, file: !515, line: 137, baseType: !683, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !685, line: 14, size: 1088, elements: !686)
!685 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!686 = !{!687, !688, !697, !698, !699, !700, !701, !702}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !684, file: !685, line: 15, baseType: !461, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !684, file: !685, line: 17, baseType: !689, size: 320, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !690, line: 22, size: 320, elements: !691)
!690 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!691 = !{!692, !693, !694, !695}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !689, file: !690, line: 23, baseType: !348, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !689, file: !690, line: 24, baseType: !344, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !689, file: !690, line: 26, baseType: !382, size: 128, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !689, file: !690, line: 28, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !684, file: !685, line: 19, baseType: !135, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !684, file: !685, line: 20, baseType: !338, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !684, file: !685, line: 23, baseType: !474, size: 128, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !684, file: !685, line: 24, baseType: !502, size: 32, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !684, file: !685, line: 29, baseType: !338, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !684, file: !685, line: 36, baseType: !703, size: 320, offset: 768)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !704, line: 15, size: 320, elements: !705)
!704 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!705 = !{!706, !707, !708, !709, !710, !711, !712}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !704, line: 16, baseType: !348, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !703, file: !704, line: 18, baseType: !85, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !703, file: !704, line: 19, baseType: !85, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !703, file: !704, line: 20, baseType: !85, size: 32, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !703, file: !704, line: 21, baseType: !85, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !703, file: !704, line: 22, baseType: !135, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !704, line: 23, baseType: !135, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !514, file: !515, line: 138, baseType: !714, size: 64, offset: 1152)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !503, line: 18, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !514, file: !515, line: 139, baseType: !717, size: 64, offset: 1216)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !719, line: 16, flags: DIFlagFwdDecl)
!719 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!720 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !514, file: !515, line: 140, baseType: !721, size: 64, offset: 1280)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !515, line: 25, size: 64, elements: !723)
!723 = !{!724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !722, file: !515, line: 26, baseType: !361, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !722, file: !515, line: 27, baseType: !85, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !722, file: !515, line: 28, baseType: !727, offset: 64)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, elements: !498)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !515, line: 142, baseType: !729, size: 128, offset: 1344)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !515, line: 142, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !729, file: !515, line: 143, baseType: !85, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !729, file: !515, line: 144, baseType: !404, size: 128, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !392, file: !35, line: 1013, baseType: !734, size: 256, offset: 960)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !734, file: !35, line: 971, baseType: !135, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !734, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !734, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !734, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !734, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !734, file: !35, line: 976, baseType: !427, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !392, file: !35, line: 1014, baseType: !743, size: 128, offset: 1216)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !744, line: 8, size: 128, elements: !745)
!744 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!745 = !{!746, !4059}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !743, file: !744, line: 9, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !749, line: 70, size: 256, elements: !750)
!749 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!750 = !{!751, !4056, !4057, !4058}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !748, file: !749, line: 71, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !754, line: 82, size: 1536, elements: !755)
!754 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!755 = !{!756, !757, !767, !775, !776, !791, !4023, !4025, !4038, !4039, !4040, !4041, !4042, !4048, !4049, !4050}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !753, file: !754, line: 84, baseType: !7, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !753, file: !754, line: 85, baseType: !758, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !759, line: 275, baseType: !760)
!759 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !759, line: 275, size: 32, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !760, file: !759, line: 275, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !759, line: 69, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !759, line: 64, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !764, file: !759, line: 65, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !753, file: !754, line: 86, baseType: !768, size: 128, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !769, line: 38, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!770 = !{!771, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !768, file: !769, line: 39, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !768, file: !769, line: 39, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !753, file: !754, line: 87, baseType: !752, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !753, file: !754, line: 88, baseType: !777, size: 128, offset: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !754, line: 49, size: 128, elements: !778)
!778 = !{!779, !788}
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !754, line: 50, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !754, line: 50, size: 64, elements: !781)
!781 = !{!782, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !754, line: 51, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !754, line: 51, size: 64, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !783, file: !754, line: 52, baseType: !596, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !783, file: !754, line: 52, baseType: !596, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !780, file: !754, line: 54, baseType: !539, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !777, file: !754, line: 56, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !753, file: !754, line: 89, baseType: !792, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !794)
!794 = !{!795, !797, !798, !799, !800, !801, !802, !805, !806, !999, !3839, !3840, !3841, !3842, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !4005, !4008, !4009, !4010, !4019, !4020, !4021, !4022}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !793, file: !35, line: 642, baseType: !796, size: 16)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 24, baseType: !187)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !793, file: !35, line: 643, baseType: !187, size: 16, offset: 16)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !793, file: !35, line: 644, baseType: !502, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !793, file: !35, line: 645, baseType: !382, size: 128, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !793, file: !35, line: 646, baseType: !520, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !793, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !793, file: !35, line: 650, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !793, file: !35, line: 651, baseType: !803, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !793, file: !35, line: 654, baseType: !807, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !810)
!810 = !{!811, !815, !828, !834, !838, !842, !846, !850, !854, !858, !862, !863, !869, !873, !910, !941, !948, !954, !958, !962, !966, !970, !974, !980, !984}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !809, file: !35, line: 1967, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!752, !792, !752, !7}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !809, file: !35, line: 1968, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!176, !752, !792, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !821, line: 10, size: 128, elements: !822)
!821 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!822 = !{!823, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !820, file: !821, line: 11, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !136}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !820, file: !821, line: 12, baseType: !136, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !809, file: !35, line: 1969, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!85, !832, !792, !85}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !535, line: 42, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !809, file: !35, line: 1970, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!803, !792, !85, !630}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !809, file: !35, line: 1972, baseType: !839, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!85, !752, !641, !85}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !809, file: !35, line: 1974, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!85, !832, !792, !752, !796, !630}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !809, file: !35, line: 1976, baseType: !847, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!85, !752, !792, !752}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !809, file: !35, line: 1977, baseType: !851, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!85, !792, !752}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !809, file: !35, line: 1978, baseType: !855, size: 64, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!85, !832, !792, !752, !176}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !809, file: !35, line: 1980, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!85, !832, !792, !752, !796}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !809, file: !35, line: 1982, baseType: !851, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !809, file: !35, line: 1983, baseType: !864, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!85, !832, !792, !752, !796, !867}
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !134, line: 21, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !134, line: 18, baseType: !596)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !809, file: !35, line: 1985, baseType: !870, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!85, !832, !792, !752, !792, !752, !7}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !809, file: !35, line: 1987, baseType: !874, size: 64, offset: 832)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!85, !832, !752, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !879)
!879 = !{!880, !881, !882, !892, !901, !902, !907, !908, !909}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !878, file: !35, line: 227, baseType: !7, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !878, file: !35, line: 228, baseType: !796, size: 16, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !35, line: 241, baseType: !883, size: 32, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !35, line: 241, size: 32, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !883, file: !35, line: 242, baseType: !502, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !883, file: !35, line: 243, baseType: !887, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !888, line: 16, baseType: !889)
!888 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 14, size: 32, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !889, file: !888, line: 15, baseType: !507, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !35, line: 245, baseType: !893, size: 32, offset: 96)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !35, line: 245, size: 32, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !893, file: !35, line: 246, baseType: !520, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !893, file: !35, line: 247, baseType: !897, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !888, line: 20, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 18, size: 32, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !898, file: !888, line: 19, baseType: !524, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !878, file: !35, line: 249, baseType: !427, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !878, file: !35, line: 250, baseType: !903, size: 128, offset: 192)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !588, line: 13, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !903, file: !588, line: 14, baseType: !587, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !903, file: !588, line: 15, baseType: !147, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !878, file: !35, line: 251, baseType: !903, size: 128, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !878, file: !35, line: 252, baseType: !903, size: 128, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !878, file: !35, line: 259, baseType: !391, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !809, file: !35, line: 1988, baseType: !911, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!85, !832, !914, !916, !596, !7}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !918, line: 22, size: 1280, elements: !919)
!918 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !917, file: !918, line: 23, baseType: !596, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !917, file: !918, line: 24, baseType: !796, size: 16, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !917, file: !918, line: 25, baseType: !7, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !917, file: !918, line: 26, baseType: !595, size: 32, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !917, file: !918, line: 27, baseType: !539, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !917, file: !918, line: 28, baseType: !539, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !917, file: !918, line: 41, baseType: !539, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !917, file: !918, line: 42, baseType: !867, size: 32, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !917, file: !918, line: 43, baseType: !867, size: 32, offset: 352)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !917, file: !918, line: 44, baseType: !502, size: 32, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !917, file: !918, line: 45, baseType: !520, size: 32, offset: 416)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !917, file: !918, line: 46, baseType: !427, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !917, file: !918, line: 47, baseType: !903, size: 128, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !917, file: !918, line: 48, baseType: !903, size: 128, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !917, file: !918, line: 49, baseType: !903, size: 128, offset: 768)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !917, file: !918, line: 50, baseType: !903, size: 128, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !917, file: !918, line: 51, baseType: !539, size: 64, offset: 1024)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !917, file: !918, line: 52, baseType: !539, size: 64, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !917, file: !918, line: 53, baseType: !596, size: 32, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !917, file: !918, line: 54, baseType: !596, size: 32, offset: 1184)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !917, file: !918, line: 55, baseType: !539, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !809, file: !35, line: 1990, baseType: !942, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!945, !752, !641, !139}
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 66, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !141, line: 73, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !141, line: 15, baseType: !147)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !809, file: !35, line: 1991, baseType: !949, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!85, !792, !952, !539, !539}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !809, file: !35, line: 1993, baseType: !955, size: 64, offset: 1088)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!85, !792, !85}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !809, file: !35, line: 1994, baseType: !959, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!85, !792, !752, !391, !7, !796}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !809, file: !35, line: 1997, baseType: !963, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!85, !832, !792, !391, !796}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !809, file: !35, line: 1999, baseType: !967, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!803, !832, !752, !85}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !809, file: !35, line: 2001, baseType: !971, size: 64, offset: 1344)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!85, !832, !752, !803, !85}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !809, file: !35, line: 2003, baseType: !975, size: 64, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!85, !832, !752, !978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !809, file: !35, line: 2005, baseType: !981, size: 64, offset: 1472)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!85, !752, !978}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !809, file: !35, line: 2006, baseType: !985, size: 64, offset: 1536)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!988, !792}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !990)
!990 = !{!991, !998}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !989, file: !35, line: 3193, baseType: !992, size: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !993, line: 296, size: 128, elements: !994)
!993 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !992, file: !993, line: 297, baseType: !414, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !992, file: !993, line: 299, baseType: !143, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !992, file: !993, line: 300, baseType: !136, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !989, file: !35, line: 3194, baseType: !596, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !793, file: !35, line: 655, baseType: !1000, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !2187, !2319, !2359, !2442, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2459, !2463, !2464, !2467, !2470, !2473, !2476, !2477, !2478, !2519, !3714, !3715, !3716, !3717, !3718, !3719, !3722, !3724, !3731, !3732, !3733, !3734, !3793, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1001, file: !35, line: 1191, baseType: !382, size: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1001, file: !35, line: 1192, baseType: !867, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1001, file: !35, line: 1193, baseType: !224, size: 8, offset: 160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1001, file: !35, line: 1194, baseType: !135, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1001, file: !35, line: 1195, baseType: !427, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1001, file: !35, line: 1196, baseType: !1009, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1021, !1025, !1029, !1033, !2175, !2176, !2177, !2179, !2180, !2181, !2183, !2184, !2185, !2186}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1010, file: !35, line: 2367, baseType: !176, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1010, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1010, file: !35, line: 2376, baseType: !1015, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!85, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1020, line: 32, flags: DIFlagFwdDecl)
!1020 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1010, file: !35, line: 2377, baseType: !1022, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1010, file: !35, line: 2378, baseType: !1026, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!752, !1009, !85, !176, !136}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1010, file: !35, line: 2380, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !1000}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1010, file: !35, line: 2381, baseType: !1034, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1043, !1835, !1861, !1862, !1863, !1864, !1868, !1871, !1872, !1873, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1940, !1944, !1962, !1980, !1981, !1982, !1983, !1992, !2015, !2016, !2019, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2033, !2034, !2134, !2142, !2143, !2144, !2146, !2150, !2151, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2168, !2169, !2170, !2174}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1035, file: !15, line: 403, baseType: !14, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1035, file: !15, line: 406, baseType: !382, size: 128, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1035, file: !15, line: 409, baseType: !1040, size: 448, offset: 192)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 448, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 56)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1035, file: !15, line: 417, baseType: !1044, size: 768, offset: 640)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1045)
!1045 = !{!1046, !1818, !1819, !1820, !1823}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1044, file: !15, line: 46, baseType: !1047, size: 512)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1048, line: 64, size: 512, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1049 = !{!1050, !1051, !1052, !1054, !1098, !1698, !1808, !1813, !1814, !1815, !1816, !1817}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !1048, line: 65, baseType: !176, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1047, file: !1048, line: 66, baseType: !382, size: 128, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1047, file: !1048, line: 67, baseType: !1053, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1047, file: !1048, line: 68, baseType: !1055, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1048, line: 168, size: 768, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1056, file: !1048, line: 169, baseType: !382, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1056, file: !1048, line: 170, baseType: !414, size: 32, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1056, file: !1048, line: 171, baseType: !1047, size: 512, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1056, file: !1048, line: 172, baseType: !1062, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1048, line: 133, size: 192, elements: !1065)
!1065 = !{!1066, !1073, !1078}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1064, file: !1048, line: 134, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!85, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1064, file: !1048, line: 135, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!176, !1071}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1064, file: !1048, line: 136, baseType: !1079, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!85, !1071, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1048, line: 125, size: 20736, elements: !1085)
!1085 = !{!1086, !1088, !1092, !1093, !1097}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1084, file: !1048, line: 126, baseType: !1087, size: 192)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 192, elements: !453)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1084, file: !1048, line: 127, baseType: !1089, size: 4096, offset: 192)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 4096, elements: !1090)
!1090 = !{!1091}
!1091 = !DISubrange(count: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1084, file: !1048, line: 128, baseType: !85, size: 32, offset: 4288)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1084, file: !1048, line: 129, baseType: !1094, size: 16384, offset: 4320)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 16384, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 2048)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1084, file: !1048, line: 130, baseType: !85, size: 32, offset: 20704)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1047, file: !1048, line: 69, baseType: !1099, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1048, line: 116, size: 384, elements: !1102)
!1102 = !{!1103, !1107, !1126, !1660, !1688, !1692}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1101, file: !1048, line: 117, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1053}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1101, file: !1048, line: 118, baseType: !1108, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1111, line: 254, size: 128, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1112 = !{!1113, !1122}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1110, file: !1111, line: 255, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!945, !1053, !1117, !641}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1111, line: 30, size: 128, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1118, file: !1111, line: 31, baseType: !176, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1118, file: !1111, line: 32, baseType: !796, size: 16, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1110, file: !1111, line: 256, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!945, !1053, !1117, !176, !139}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1101, file: !1048, line: 119, baseType: !1127, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1111, line: 84, size: 320, elements: !1131)
!1131 = !{!1132, !1133, !1137, !1656, !1658}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1130, file: !1111, line: 85, baseType: !176, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1130, file: !1111, line: 86, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!796, !1053, !1117, !85}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1130, file: !1111, line: 88, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!796, !1053, !1141, !85}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1111, line: 175, size: 512, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1424, !1428, !1429}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1142, file: !1111, line: 176, baseType: !1118, size: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1142, file: !1111, line: 177, baseType: !139, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1142, file: !1111, line: 178, baseType: !136, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1142, file: !1111, line: 179, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1167, !1168, !1169, !1416, !1417, !1418, !1421, !1422, !1423}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1152, file: !35, line: 473, baseType: !792, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1152, file: !35, line: 474, baseType: !992, size: 128, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1152, file: !35, line: 475, baseType: !571, size: 320, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1152, file: !35, line: 476, baseType: !143, size: 32, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1152, file: !35, line: 477, baseType: !361, size: 32, offset: 544)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1152, file: !35, line: 482, baseType: !1160, size: 128, offset: 576)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !564, line: 26, size: 128, elements: !1161)
!1161 = !{!1162, !1166}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1160, file: !564, line: 27, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !564, line: 12, size: 64, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1163, file: !564, line: 13, baseType: !568, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1160, file: !564, line: 28, baseType: !568, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1152, file: !35, line: 483, baseType: !135, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1152, file: !35, line: 484, baseType: !135, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1152, file: !35, line: 485, baseType: !1170, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1173)
!1173 = !{!1174, !1241, !1311, !1315, !1319, !1325, !1331, !1335, !1340, !1344, !1348, !1352, !1380, !1384, !1388, !1392, !1397, !1401, !1408, !1412}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1172, file: !35, line: 405, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!85, !1178, !1239}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1180, line: 74, size: 512, align: 128, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1181 = !{!1182, !1183, !1233, !1238}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !1180, line: 75, baseType: !135, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1180, line: 83, baseType: !1184, size: 320, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1180, line: 83, size: 320, elements: !1185)
!1185 = !{!1186, !1207, !1221, !1225, !1232}
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1180, line: 84, baseType: !1187, size: 320)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1180, line: 84, size: 320, elements: !1188)
!1188 = !{!1189, !1200, !1201, !1206}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1180, line: 90, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1180, line: 90, size: 128, elements: !1191)
!1191 = !{!1192, !1193, !1198, !1199}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1190, file: !1180, line: 91, baseType: !382, size: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1180, line: 94, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !1180, line: 94, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1194, file: !1180, line: 96, baseType: !136, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1194, file: !1180, line: 98, baseType: !7, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1190, file: !1180, line: 102, baseType: !382, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1190, file: !1180, line: 103, baseType: !382, size: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1187, file: !1180, line: 106, baseType: !1151, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1180, line: 107, baseType: !1202, size: 64, offset: 192)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1180, line: 107, size: 64, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1202, file: !1180, line: 108, baseType: !135, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1202, file: !1180, line: 109, baseType: !135, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1187, file: !1180, line: 117, baseType: !135, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1180, line: 119, baseType: !1208, size: 320)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1180, line: 119, size: 320, elements: !1209)
!1209 = !{!1210, !1211, !1214, !1215, !1216}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1208, file: !1180, line: 124, baseType: !135, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1208, file: !1180, line: 125, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1180, line: 125, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1208, file: !1180, line: 126, baseType: !135, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1208, file: !1180, line: 127, baseType: !135, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !1180, line: 128, baseType: !1217, size: 64, offset: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1208, file: !1180, line: 128, size: 64, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1217, file: !1180, line: 133, baseType: !135, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1217, file: !1180, line: 138, baseType: !338, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1180, line: 141, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1180, line: 141, size: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1222, file: !1180, line: 142, baseType: !135, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1180, line: 144, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1180, line: 144, size: 128, elements: !1227)
!1227 = !{!1228, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1226, file: !1180, line: 146, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1180, line: 146, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1226, file: !1180, line: 147, baseType: !136, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1184, file: !1180, line: 161, baseType: !404, size: 128, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1180, line: 164, baseType: !1234, size: 32, offset: 384)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1180, line: 164, size: 32, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1234, file: !1180, line: 169, baseType: !361, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1234, file: !1180, line: 177, baseType: !7, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1179, file: !1180, line: 181, baseType: !361, size: 32, offset: 416)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1172, file: !35, line: 406, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!85, !391, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1180, line: 293, size: 1536, elements: !1247)
!1247 = !{!1248, !1278, !1292}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1180, line: 295, baseType: !1249, size: 512)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1180, line: 295, size: 512, elements: !1250)
!1250 = !{!1251, !1277}
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !1180, line: 296, baseType: !1252, size: 448)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1249, file: !1180, line: 296, size: 448, elements: !1253)
!1253 = !{!1254, !1255, !1264, !1265, !1266, !1275, !1276}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !1180, line: 298, baseType: !135, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !1180, line: 299, baseType: !1256, size: 128, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1252, file: !1180, line: 299, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1256, file: !1180, line: 300, baseType: !382, size: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !1180, line: 302, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !1180, line: 302, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1260, file: !1180, line: 303, baseType: !136, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1260, file: !1180, line: 305, baseType: !7, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1252, file: !1180, line: 310, baseType: !1151, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1252, file: !1180, line: 311, baseType: !135, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !1180, line: 312, baseType: !1267, size: 64, offset: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1252, file: !1180, line: 312, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1267, file: !1180, line: 313, baseType: !136, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1267, file: !1180, line: 314, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1180, line: 257, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 255, size: 64, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1272, file: !1180, line: 256, baseType: !135, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1252, file: !1180, line: 316, baseType: !361, size: 32, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1252, file: !1180, line: 317, baseType: !361, size: 32, offset: 416)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1249, file: !1180, line: 323, baseType: !1179, size: 512, align: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1180, line: 325, baseType: !1279, size: 512, offset: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1180, line: 325, size: 512, elements: !1280)
!1280 = !{!1281, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !1180, line: 326, baseType: !1282, size: 320)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1180, line: 326, size: 320, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1282, file: !1180, line: 327, baseType: !135, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1282, file: !1180, line: 328, baseType: !135, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1282, file: !1180, line: 329, baseType: !135, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1282, file: !1180, line: 331, baseType: !361, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1282, file: !1180, line: 332, baseType: !361, size: 32, offset: 224)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1282, file: !1180, line: 333, baseType: !361, size: 32, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1282, file: !1180, line: 335, baseType: !7, size: 32, offset: 288)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1279, file: !1180, line: 339, baseType: !1179, size: 512, align: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1180, line: 341, baseType: !1293, size: 512, offset: 1024)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1180, line: 341, size: 512, elements: !1294)
!1294 = !{!1295, !1304, !1310}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1180, line: 342, baseType: !1296, size: 384)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !1180, line: 342, size: 384, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1296, file: !1180, line: 343, baseType: !135, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1296, file: !1180, line: 344, baseType: !135, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1296, file: !1180, line: 346, baseType: !136, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1296, file: !1180, line: 347, baseType: !136, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1296, file: !1180, line: 348, baseType: !136, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1296, file: !1180, line: 349, baseType: !136, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1180, line: 352, baseType: !1305, size: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !1180, line: 352, size: 256, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1305, file: !1180, line: 353, baseType: !135, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1305, file: !1180, line: 354, baseType: !135, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1305, file: !1180, line: 356, baseType: !382, size: 128, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1293, file: !1180, line: 359, baseType: !1179, size: 512, align: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1172, file: !35, line: 409, baseType: !1312, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!85, !1151, !1239}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1172, file: !35, line: 412, baseType: !1316, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!630, !1151, !1245}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1172, file: !35, line: 414, baseType: !1320, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1172, file: !35, line: 416, baseType: !1326, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!85, !391, !1151, !427, !7, !1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1172, file: !35, line: 419, baseType: !1332, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!85, !391, !1151, !427, !7, !7, !1178, !136}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1172, file: !35, line: 424, baseType: !1336, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1339, !1151, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !134, line: 131, baseType: !539)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1172, file: !35, line: 425, baseType: !1341, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !1245, !139, !139}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1172, file: !35, line: 426, baseType: !1345, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!630, !1245, !143}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1172, file: !35, line: 427, baseType: !1349, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1245}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1172, file: !35, line: 428, baseType: !1353, size: 64, offset: 704)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!945, !1356, !1378}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1365, !1366, !1367, !1368}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1357, file: !35, line: 374, baseType: !391, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1357, file: !35, line: 375, baseType: !427, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1357, file: !35, line: 376, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1356, !147}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1357, file: !35, line: 377, baseType: !136, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1357, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1357, file: !35, line: 379, baseType: !324, size: 16, offset: 288)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !35, line: 380, baseType: !1369, size: 64, offset: 320)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !35, line: 380, size: 64, elements: !1370)
!1370 = !{!1371, !1374}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1369, file: !35, line: 386, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1369, file: !35, line: 395, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!945, !136}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1172, file: !35, line: 433, baseType: !1381, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!85, !1151, !1245, !1245, !21}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1172, file: !35, line: 435, baseType: !1385, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!85, !1245}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1172, file: !35, line: 436, baseType: !1389, size: 64, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!630, !1245, !139, !139}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1172, file: !35, line: 438, baseType: !1393, size: 64, offset: 960)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1245, !1396, !1396}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1172, file: !35, line: 439, baseType: !1398, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!85, !1151, !1178}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1172, file: !35, line: 442, baseType: !1402, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!85, !1405, !391, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1172, file: !35, line: 444, baseType: !1409, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !391}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1172, file: !35, line: 445, baseType: !1413, size: 64, offset: 1216)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!85, !1356, !1378}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !35, line: 486, baseType: !135, size: 64, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1152, file: !35, line: 487, baseType: !571, size: 320, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1152, file: !35, line: 488, baseType: !1419, size: 32, offset: 1280)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1420, line: 8, baseType: !596)
!1420 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1152, file: !35, line: 489, baseType: !414, size: 32, offset: 1312)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1152, file: !35, line: 490, baseType: !382, size: 128, offset: 1344)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1152, file: !35, line: 491, baseType: !136, size: 64, offset: 1472)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1142, file: !1111, line: 180, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!945, !391, !1053, !1141, !641, !427, !139}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1142, file: !1111, line: 182, baseType: !1425, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1142, file: !1111, line: 184, baseType: !1430, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!85, !391, !1053, !1141, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1180, line: 625, size: 1344, elements: !1435)
!1435 = !{!1436, !1445, !1613, !1619, !1626, !1627, !1632, !1633, !1638, !1639, !1642, !1646, !1647, !1648, !1649, !1650, !1654}
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1180, line: 628, baseType: !1437, size: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !1180, line: 628, size: 128, elements: !1438)
!1438 = !{!1439, !1444}
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1180, line: 629, baseType: !1440, size: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1180, line: 629, size: 128, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1440, file: !1180, line: 631, baseType: !135, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1440, file: !1180, line: 632, baseType: !135, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1437, file: !1180, line: 635, baseType: !404, size: 128, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1434, file: !1180, line: 639, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1180, line: 733, size: 10240, elements: !1448)
!1448 = !{!1449, !1611}
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1180, line: 734, baseType: !1450, size: 10240)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !1180, line: 734, size: 10240, elements: !1451)
!1451 = !{!1452, !1456, !1470, !1474, !1475, !1476, !1477, !1478, !1479, !1488, !1489, !1490, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1529, !1531, !1534, !1580, !1581, !1582, !1585, !1586, !1587, !1590, !1591, !1592, !1598, !1599}
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1180, line: 739, baseType: !1453, size: 512, align: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1180, line: 739, size: 512, align: 512, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1453, file: !1180, line: 747, baseType: !361, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1450, file: !1180, line: 750, baseType: !1457, size: 128, offset: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1458, line: 218, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1459 = !{!1460, !1468, !1469}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 219, baseType: !1461, size: 32)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 219, size: 32, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1461, file: !1458, line: 220, baseType: !414, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1461, file: !1458, line: 221, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1458, line: 197, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 197, elements: !1467)
!1467 = !{}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1457, file: !1458, line: 223, baseType: !7, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1457, file: !1458, line: 224, baseType: !136, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1450, file: !1180, line: 752, baseType: !1471, size: 64, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!135, !391, !135, !135, !135, !135}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1450, file: !1180, line: 756, baseType: !135, size: 64, offset: 704)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1450, file: !1180, line: 757, baseType: !135, size: 64, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1450, file: !1180, line: 760, baseType: !135, size: 64, offset: 832)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1450, file: !1180, line: 761, baseType: !135, size: 64, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1450, file: !1180, line: 763, baseType: !135, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1450, file: !1180, line: 764, baseType: !1480, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1482, line: 299, baseType: !1483)
!1482 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1482, line: 299, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1483, file: !1482, line: 299, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1487, line: 18, baseType: !135)
!1487 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1450, file: !1180, line: 773, baseType: !361, size: 32, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1450, file: !1180, line: 785, baseType: !361, size: 32, offset: 1120)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1450, file: !1180, line: 795, baseType: !1491, size: 64, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1180, line: 726, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1492, file: !1180, line: 727, baseType: !539, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1492, file: !1180, line: 728, baseType: !85, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1450, file: !1180, line: 801, baseType: !135, size: 64, offset: 1216)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1450, file: !1180, line: 804, baseType: !338, size: 64, offset: 1280)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1450, file: !1180, line: 806, baseType: !85, size: 32, offset: 1344)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1450, file: !1180, line: 808, baseType: !414, size: 32, offset: 1376)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1450, file: !1180, line: 823, baseType: !571, size: 320, offset: 1408)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1450, file: !1180, line: 825, baseType: !382, size: 128, offset: 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1450, file: !1180, line: 845, baseType: !85, size: 32, offset: 1856)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1450, file: !1180, line: 849, baseType: !135, size: 64, offset: 1920)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1450, file: !1180, line: 850, baseType: !135, size: 64, offset: 1984)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1450, file: !1180, line: 852, baseType: !135, size: 64, offset: 2048)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1450, file: !1180, line: 853, baseType: !135, size: 64, offset: 2112)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1450, file: !1180, line: 854, baseType: !340, size: 64, offset: 2176)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1450, file: !1180, line: 855, baseType: !135, size: 64, offset: 2240)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1450, file: !1180, line: 856, baseType: !135, size: 64, offset: 2304)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1450, file: !1180, line: 857, baseType: !135, size: 64, offset: 2368)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1450, file: !1180, line: 858, baseType: !135, size: 64, offset: 2432)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1450, file: !1180, line: 865, baseType: !763, size: 32, offset: 2496)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1450, file: !1180, line: 867, baseType: !414, size: 32, offset: 2528)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1450, file: !1180, line: 869, baseType: !135, size: 64, offset: 2560)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1450, file: !1180, line: 869, baseType: !135, size: 64, offset: 2624)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1450, file: !1180, line: 869, baseType: !135, size: 64, offset: 2688)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1450, file: !1180, line: 869, baseType: !135, size: 64, offset: 2752)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1450, file: !1180, line: 870, baseType: !135, size: 64, offset: 2816)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1450, file: !1180, line: 870, baseType: !135, size: 64, offset: 2880)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1450, file: !1180, line: 870, baseType: !135, size: 64, offset: 2944)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1450, file: !1180, line: 871, baseType: !135, size: 64, offset: 3008)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1450, file: !1180, line: 871, baseType: !135, size: 64, offset: 3072)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1450, file: !1180, line: 871, baseType: !135, size: 64, offset: 3136)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1450, file: !1180, line: 871, baseType: !135, size: 64, offset: 3200)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1450, file: !1180, line: 873, baseType: !1526, size: 3328, offset: 3264)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 3328, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 52)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1450, file: !1180, line: 875, baseType: !1530, size: 1280, offset: 6592)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 1280, elements: !479)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1450, file: !1180, line: 877, baseType: !1532, size: 64, offset: 7872)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1180, line: 877, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1450, file: !1180, line: 880, baseType: !1535, size: 1088, offset: 7936)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1536, line: 72, baseType: !1537)
!1536 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 23, size: 1088, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1546, !1547, !1548, !1549, !1576, !1577, !1578}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1537, file: !1536, line: 28, baseType: !539, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1537, file: !1536, line: 38, baseType: !340, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1537, file: !1536, line: 40, baseType: !135, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1537, file: !1536, line: 43, baseType: !571, size: 320, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1537, file: !1536, line: 44, baseType: !1544, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1536, line: 44, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !1536, line: 48, baseType: !135, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !1536, line: 59, baseType: !334, size: 256, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1537, file: !1536, line: 60, baseType: !136, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1537, file: !1536, line: 61, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1553, line: 13, size: 1216, elements: !1554)
!1553 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1552, file: !1553, line: 14, baseType: !136, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1552, file: !1553, line: 15, baseType: !135, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1552, file: !1553, line: 17, baseType: !135, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1552, file: !1553, line: 17, baseType: !135, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1552, file: !1553, line: 18, baseType: !135, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1552, file: !1553, line: 18, baseType: !135, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1552, file: !1553, line: 19, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1552, file: !1553, line: 21, baseType: !147, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1552, file: !1553, line: 23, baseType: !147, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1552, file: !1553, line: 24, baseType: !147, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1552, file: !1553, line: 25, baseType: !147, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1552, file: !1553, line: 26, baseType: !147, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1552, file: !1553, line: 27, baseType: !147, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1552, file: !1553, line: 28, baseType: !147, size: 64, offset: 832)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1552, file: !1553, line: 29, baseType: !147, size: 64, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1552, file: !1553, line: 30, baseType: !147, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1552, file: !1553, line: 31, baseType: !147, size: 64, offset: 1024)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1552, file: !1553, line: 32, baseType: !147, size: 64, offset: 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1552, file: !1553, line: 33, baseType: !147, size: 64, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1537, file: !1536, line: 63, baseType: !361, size: 32, offset: 1024)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1537, file: !1536, line: 69, baseType: !324, size: 16, offset: 1056)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1537, file: !1536, line: 70, baseType: !1579, size: 16, offset: 1072)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !325, line: 18, baseType: !252)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1180, line: 882, baseType: !135, size: 64, offset: 9024)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1450, file: !1180, line: 885, baseType: !414, size: 32, offset: 9088)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1450, file: !1180, line: 886, baseType: !1583, size: 64, offset: 9152)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1180, line: 732, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1450, file: !1180, line: 901, baseType: !714, size: 64, offset: 9216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1450, file: !1180, line: 904, baseType: !391, size: 64, offset: 9280)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1450, file: !1180, line: 906, baseType: !1588, size: 64, offset: 9344)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1180, line: 906, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1450, file: !1180, line: 930, baseType: !361, size: 32, offset: 9408)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1450, file: !1180, line: 933, baseType: !361, size: 32, offset: 9440)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1450, file: !1180, line: 935, baseType: !1593, size: 64, offset: 9472)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1594)
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1593, file: !57, line: 104, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1450, file: !1180, line: 940, baseType: !338, size: 64, offset: 9536)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1450, file: !1180, line: 942, baseType: !1600, size: 256, offset: 9600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1601, line: 98, size: 256, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1600, file: !1601, line: 99, baseType: !338, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1600, file: !1601, line: 100, baseType: !382, size: 128, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1600, file: !1601, line: 101, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1601, line: 21, baseType: !1607)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1447, file: !1180, line: 986, baseType: !1612, offset: 10240)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, elements: !498)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1434, file: !1180, line: 640, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1482, line: 297, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1482, line: 297, size: 64, elements: !1616)
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1615, file: !1482, line: 297, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1487, line: 19, baseType: !135)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1180, line: 646, baseType: !1620, size: 64, offset: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !1180, line: 646, size: 64, elements: !1621)
!1621 = !{!1622, !1625}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1620, file: !1180, line: 647, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1180, line: 542, baseType: !135)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1620, file: !1180, line: 648, baseType: !1624, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1434, file: !1180, line: 666, baseType: !85, size: 32, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1434, file: !1180, line: 667, baseType: !1628, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1180, line: 579, size: 320, elements: !1630)
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1629, file: !1180, line: 580, baseType: !571, size: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1434, file: !1180, line: 670, baseType: !630, size: 8, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1434, file: !1180, line: 681, baseType: !1634, size: 256, offset: 512)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1434, file: !1180, line: 678, size: 256, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1634, file: !1180, line: 679, baseType: !563, size: 192, align: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1634, file: !1180, line: 680, baseType: !135, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1434, file: !1180, line: 689, baseType: !382, size: 128, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1434, file: !1180, line: 691, baseType: !1640, size: 64, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1180, line: 691, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1434, file: !1180, line: 694, baseType: !1643, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1180, line: 694, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1434, file: !1180, line: 697, baseType: !135, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1434, file: !1180, line: 699, baseType: !391, size: 64, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1434, file: !1180, line: 700, baseType: !136, size: 64, offset: 1152)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1434, file: !1180, line: 711, baseType: !338, size: 64, offset: 1216)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1434, file: !1180, line: 717, baseType: !1651, size: 64, offset: 1280)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1653, line: 54, flags: DIFlagFwdDecl)
!1653 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1434, file: !1180, line: 722, baseType: !1655, offset: 1344)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1180, line: 570, elements: !1467)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1130, file: !1111, line: 90, baseType: !1657, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1130, file: !1111, line: 91, baseType: !1659, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1101, file: !1048, line: 120, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1664, !1071}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1667)
!1667 = !{!1668, !1669, !1673, !1677, !1683, !1687}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !29, line: 40, baseType: !28, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1666, file: !29, line: 41, baseType: !1670, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!630}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1666, file: !29, line: 42, baseType: !1674, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!136}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1666, file: !29, line: 43, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1562, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1666, file: !29, line: 44, baseType: !1684, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!1562}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1666, file: !29, line: 45, baseType: !824, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1101, file: !1048, line: 121, baseType: !1689, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1562, !1071}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1101, file: !1048, line: 122, baseType: !1693, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1071, !1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1047, file: !1048, line: 70, baseType: !1699, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1020, line: 190, size: 1152, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1800, !1801, !1802, !1803, !1804, !1807}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1700, file: !1020, line: 191, baseType: !361, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1700, file: !1020, line: 192, baseType: !361, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1700, file: !1020, line: 202, baseType: !1699, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1700, file: !1020, line: 203, baseType: !176, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1700, file: !1020, line: 205, baseType: !563, size: 192, align: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1700, file: !1020, line: 207, baseType: !1562, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1700, file: !1020, line: 208, baseType: !7, size: 32, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1020, line: 209, baseType: !1710, size: 256, offset: 512)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !1020, line: 209, size: 256, elements: !1711)
!1711 = !{!1712, !1721, !1725}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1710, file: !1020, line: 210, baseType: !1713, size: 256)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1020, line: 153, size: 256, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1720}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1713, file: !1020, line: 154, baseType: !135, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1713, file: !1020, line: 156, baseType: !1163, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1713, file: !1020, line: 162, baseType: !1718, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1020, line: 162, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1713, file: !1020, line: 167, baseType: !135, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1710, file: !1020, line: 211, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1020, line: 170, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1722, file: !1020, line: 171, baseType: !1699, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1710, file: !1020, line: 212, baseType: !1726, size: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1020, line: 174, size: 256, elements: !1727)
!1727 = !{!1728, !1795, !1798, !1799}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1726, file: !1020, line: 175, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1020, line: 271, size: 768, elements: !1732)
!1732 = !{!1733, !1755, !1759, !1763, !1768, !1772, !1776, !1780, !1781, !1782, !1783, !1791}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1731, file: !1020, line: 276, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!85, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1020, line: 251, size: 1216, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1738, file: !1020, line: 253, baseType: !1699, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1738, file: !1020, line: 254, baseType: !391, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1738, file: !1020, line: 255, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1653, line: 66, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1738, file: !1020, line: 256, baseType: !136, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1738, file: !1020, line: 259, baseType: !334, size: 256, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1738, file: !1020, line: 260, baseType: !334, size: 256, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1738, file: !1020, line: 261, baseType: !85, size: 32, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1738, file: !1020, line: 262, baseType: !382, size: 128, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1738, file: !1020, line: 263, baseType: !641, size: 64, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1738, file: !1020, line: 265, baseType: !139, size: 64, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1738, file: !1020, line: 266, baseType: !630, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1738, file: !1020, line: 267, baseType: !630, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1738, file: !1020, line: 268, baseType: !1643, size: 64, offset: 1152)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1731, file: !1020, line: 277, baseType: !1756, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1737}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1731, file: !1020, line: 290, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!85, !1743, !136}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1731, file: !1020, line: 292, baseType: !1764, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!136, !1743, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1731, file: !1020, line: 293, baseType: !1769, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!136, !1743, !136, !1767}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1731, file: !1020, line: 294, baseType: !1773, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1743, !136}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1731, file: !1020, line: 296, baseType: !1777, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!945, !1737, !641, !139, !427}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1731, file: !1020, line: 306, baseType: !139, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1731, file: !1020, line: 313, baseType: !630, size: 8, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1731, file: !1020, line: 314, baseType: !1777, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1731, file: !1020, line: 317, baseType: !1784, size: 64, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!1787, !1737, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1788, line: 59, baseType: !7)
!1788 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1020, line: 31, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1731, file: !1020, line: 320, baseType: !1792, size: 64, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!85, !1737, !1433}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1726, file: !1020, line: 176, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1020, line: 35, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1726, file: !1020, line: 177, baseType: !427, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1726, file: !1020, line: 178, baseType: !1699, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1700, file: !1020, line: 215, baseType: !136, size: 64, offset: 768)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1700, file: !1020, line: 221, baseType: !539, size: 64, offset: 832)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !1020, line: 223, baseType: !187, size: 16, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1700, file: !1020, line: 224, baseType: !796, size: 16, offset: 912)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1700, file: !1020, line: 225, baseType: !1805, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1020, line: 36, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1700, file: !1020, line: 227, baseType: !404, size: 128, align: 64, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1047, file: !1048, line: 71, baseType: !1809, size: 32, offset: 448)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1810, line: 19, size: 32, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1809, file: !1810, line: 20, baseType: !461, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1047, file: !1048, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1047, file: !1048, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1047, file: !1048, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1047, file: !1048, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1047, file: !1048, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1044, file: !15, line: 47, baseType: !1034, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1044, file: !15, line: 48, baseType: !1053, size: 64, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1044, file: !15, line: 49, baseType: !1821, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1044, file: !15, line: 50, baseType: !1824, size: 64, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1826, line: 26, size: 256, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1825, file: !1826, line: 27, baseType: !7, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1825, file: !1826, line: 28, baseType: !1830, size: 192, offset: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1831, line: 43, size: 192, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1830, file: !1831, line: 44, baseType: !348, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1830, file: !1831, line: 45, baseType: !382, size: 128, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1035, file: !15, line: 418, baseType: !1836, size: 64, offset: 1408)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1838)
!1838 = !{!1839, !1840, !1845, !1849, !1853, !1857}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1837, file: !15, line: 54, baseType: !1118, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1837, file: !15, line: 55, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!945, !1836, !1844, !641}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1837, file: !15, line: 57, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!945, !1836, !1844, !176, !139}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1837, file: !15, line: 59, baseType: !1850, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1034, !176}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1837, file: !15, line: 60, baseType: !1854, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!85, !1034}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1837, file: !15, line: 61, baseType: !1858, size: 64, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1034}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1035, file: !15, line: 419, baseType: !176, size: 64, offset: 1472)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1035, file: !15, line: 420, baseType: !176, size: 64, offset: 1536)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1035, file: !15, line: 421, baseType: !1053, size: 64, offset: 1600)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1035, file: !15, line: 424, baseType: !1865, size: 64, offset: 1664)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1035, file: !15, line: 425, baseType: !1869, size: 64, offset: 1728)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1035, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1035, file: !15, line: 435, baseType: !334, size: 256, offset: 1856)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1035, file: !15, line: 437, baseType: !1874, size: 64, offset: 2112)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1876, line: 69, size: 320, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1877 = !{!1878, !1879, !1880, !1897, !1899, !1903, !1904}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1875, file: !1876, line: 70, baseType: !176, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1875, file: !1876, line: 71, baseType: !1034, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1875, file: !1876, line: 72, baseType: !1881, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1876, line: 47, size: 256, elements: !1884)
!1884 = !{!1885, !1886, !1892, !1896}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !1876, line: 49, baseType: !7, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1883, file: !1876, line: 51, baseType: !1887, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!85, !176, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1883, file: !1876, line: 53, baseType: !1893, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!85, !641, !1890}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1883, file: !1876, line: 55, baseType: !824, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1875, file: !1876, line: 73, baseType: !1898, size: 16, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1875, file: !1876, line: 74, baseType: !1900, size: 8, offset: 208)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !325, line: 16, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !186, line: 20, baseType: !1902)
!1902 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1876, line: 75, baseType: !369, size: 8, offset: 216)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1876, line: 76, baseType: !1905, size: 64, offset: 256)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1876, line: 76, size: 64, elements: !1906)
!1906 = !{!1907, !1908, !1915}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1905, file: !1876, line: 77, baseType: !136, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1905, file: !1876, line: 78, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1876, line: 86, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1911, file: !1876, line: 87, baseType: !7, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1911, file: !1876, line: 88, baseType: !641, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1905, file: !1876, line: 79, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1876, line: 92, size: 256, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1918, file: !1876, line: 94, baseType: !7, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1918, file: !1876, line: 95, baseType: !7, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1918, file: !1876, line: 96, baseType: !233, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1918, file: !1876, line: 97, baseType: !1881, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1918, file: !1876, line: 98, baseType: !136, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1035, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1035, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1035, file: !15, line: 442, baseType: !1865, size: 64, offset: 2240)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1035, file: !15, line: 443, baseType: !1869, size: 64, offset: 2304)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1035, file: !15, line: 444, baseType: !630, size: 8, offset: 2368)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1035, file: !15, line: 451, baseType: !630, size: 8, offset: 2376)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1035, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1035, file: !15, line: 455, baseType: !1933, size: 64, offset: 2432)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1935, line: 23, size: 96, elements: !1936)
!1935 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1934, file: !1935, line: 24, baseType: !85, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1934, file: !1935, line: 24, baseType: !85, size: 32, offset: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1934, file: !1935, line: 24, baseType: !85, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1035, file: !15, line: 458, baseType: !1941, size: 64, offset: 2496)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!85}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1035, file: !15, line: 460, baseType: !1945, size: 4032, align: 512, offset: 2560)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, size: 4032, elements: !1960)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1947)
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1946, file: !15, line: 363, baseType: !136, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1946, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1946, file: !15, line: 367, baseType: !1951, size: 448, offset: 128)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1951, file: !15, line: 320, baseType: !1034, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1951, file: !15, line: 321, baseType: !1955, size: 384, offset: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1956, line: 40, size: 384, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1957 = !{!1958}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1955, file: !1956, line: 41, baseType: !1959, size: 384, align: 64)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 384, align: 64, elements: !207)
!1960 = !{!1961}
!1961 = !DISubrange(count: 7)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1035, file: !15, line: 463, baseType: !1963, size: 192, offset: 6592)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1964, line: 8, size: 192, elements: !1965)
!1964 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1965 = !{!1966, !1967, !1969}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1963, file: !1964, line: 10, baseType: !7, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1963, file: !1964, line: 11, baseType: !1968, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1963, file: !1964, line: 12, baseType: !1970, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1972, line: 59, size: 48, elements: !1973)
!1972 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1971, file: !1972, line: 60, baseType: !1579, size: 16)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1971, file: !1972, line: 61, baseType: !1579, size: 16, offset: 16)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1971, file: !1972, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1971, file: !1972, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1971, file: !1972, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1971, file: !1972, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1035, file: !15, line: 465, baseType: !135, size: 64, offset: 6784)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1035, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1035, file: !15, line: 470, baseType: !382, size: 128, offset: 6912)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1035, file: !15, line: 471, baseType: !1984, size: 64, offset: 7040)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1986, line: 33, size: 96, elements: !1987)
!1986 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1985, file: !1986, line: 37, baseType: !85, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1985, file: !1986, line: 43, baseType: !85, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1985, file: !1986, line: 45, baseType: !187, size: 16, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1986, line: 47, baseType: !187, size: 16, offset: 80)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1035, file: !15, line: 476, baseType: !1993, size: 64, offset: 7104)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !1995)
!1995 = !{!1996, !2012, !2013, !2014}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1994, file: !15, line: 379, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1999, line: 204, baseType: !2000)
!1999 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1999, line: 197, size: 192, elements: !2001)
!2001 = !{!2002, !2004, !2005, !2006, !2008, !2010}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2000, file: !1999, line: 198, baseType: !2003, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1999, line: 21, baseType: !228)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2000, file: !1999, line: 199, baseType: !224, size: 8, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2000, file: !1999, line: 200, baseType: !224, size: 8, offset: 40)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2000, file: !1999, line: 201, baseType: !2007, size: 16, offset: 48)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1999, line: 17, baseType: !185)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2000, file: !1999, line: 202, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1999, line: 16, baseType: !540)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2000, file: !1999, line: 203, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1999, line: 22, baseType: !540)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1994, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1994, file: !15, line: 381, baseType: !641, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1994, file: !15, line: 382, baseType: !641, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1035, file: !15, line: 477, baseType: !1994, size: 256, offset: 7168)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1035, file: !15, line: 480, baseType: !2017, size: 64, offset: 7424)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1035, file: !15, line: 483, baseType: !2020, size: 64, offset: 7488)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1035, file: !15, line: 488, baseType: !641, size: 64, offset: 7552)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1035, file: !15, line: 492, baseType: !136, size: 64, offset: 7616)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1035, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1035, file: !15, line: 495, baseType: !136, size: 64, offset: 7744)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1035, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1035, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1035, file: !15, line: 500, baseType: !2029, size: 64, offset: 7872)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2031, line: 45, baseType: !2032)
!2031 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1035, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1035, file: !15, line: 504, baseType: !2035, size: 64, offset: 8000)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2038, line: 96, size: 192, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2039 = !{!2040, !2041, !2095, !2098}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2037, file: !2038, line: 97, baseType: !7, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2037, file: !2038, line: 98, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2038, line: 24, size: 3072, elements: !2044)
!2044 = !{!2045, !2047, !2048, !2049, !2050, !2064, !2065, !2066, !2067, !2079, !2080, !2081, !2092, !2093, !2094}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2043, file: !2038, line: 26, baseType: !2046, size: 128)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 128, elements: !207)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2043, file: !2038, line: 27, baseType: !2046, size: 128, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2043, file: !2038, line: 28, baseType: !85, size: 32, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2043, file: !2038, line: 31, baseType: !414, size: 32, align: 512, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2043, file: !2038, line: 32, baseType: !2051, size: 960, offset: 576)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2052, line: 206, size: 960, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2053 = !{!2054, !2055, !2058, !2060, !2061, !2063}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2051, file: !2052, line: 207, baseType: !407, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2051, file: !2052, line: 208, baseType: !2056, size: 256, offset: 64)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2057, size: 256, elements: !479)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2051, file: !2052, line: 209, baseType: !2059, size: 256, offset: 320)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !479)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2051, file: !2052, line: 213, baseType: !147, size: 64, offset: 576)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2051, file: !2052, line: 215, baseType: !2062, size: 256, offset: 640)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !479)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2051, file: !2052, line: 216, baseType: !369, size: 8, offset: 896)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2043, file: !2038, line: 33, baseType: !135, size: 64, offset: 1536)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2043, file: !2038, line: 34, baseType: !135, size: 64, offset: 1600)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2043, file: !2038, line: 35, baseType: !630, size: 8, offset: 1664)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2043, file: !2038, line: 36, baseType: !2068, size: 320, offset: 1728)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2069, line: 11, size: 320, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2070 = !{!2071, !2072, !2073, !2078}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2068, file: !2069, line: 16, baseType: !474, size: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2068, file: !2069, line: 17, baseType: !135, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2068, file: !2069, line: 18, baseType: !2074, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !2069, line: 19, baseType: !596, size: 32, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2043, file: !2038, line: 37, baseType: !1600, size: 256, offset: 2048)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2043, file: !2038, line: 38, baseType: !404, size: 128, align: 64, offset: 2304)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2043, file: !2038, line: 39, baseType: !2082, size: 64, offset: 2432)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2038, line: 49, size: 768, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2083, file: !2038, line: 50, baseType: !414, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2083, file: !2038, line: 51, baseType: !2059, size: 256, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2083, file: !2038, line: 53, baseType: !2059, size: 256, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2083, file: !2038, line: 54, baseType: !135, size: 64, offset: 576)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2083, file: !2038, line: 55, baseType: !2082, size: 64, offset: 640)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2083, file: !2038, line: 56, baseType: !85, size: 32, offset: 704)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2083, file: !2038, line: 57, baseType: !85, size: 32, offset: 736)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2043, file: !2038, line: 40, baseType: !135, size: 64, offset: 2496)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2043, file: !2038, line: 42, baseType: !85, size: 32, offset: 2560)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2043, file: !2038, line: 43, baseType: !2036, size: 64, offset: 2624)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2037, file: !2038, line: 99, baseType: !2096, offset: 128)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2097, line: 211, elements: !1467)
!2097 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2037, file: !2038, line: 100, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2038, line: 63, size: 3008, elements: !2101)
!2101 = !{!2102, !2103, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2133}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2100, file: !2038, line: 64, baseType: !2082, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2100, file: !2038, line: 65, baseType: !2104, size: 192, offset: 64)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2082, size: 192, elements: !453)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2100, file: !2038, line: 67, baseType: !85, size: 32, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2100, file: !2038, line: 68, baseType: !334, size: 256, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2100, file: !2038, line: 69, baseType: !414, size: 32, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2100, file: !2038, line: 70, baseType: !334, size: 256, offset: 640)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2100, file: !2038, line: 71, baseType: !135, size: 64, offset: 896)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2100, file: !2038, line: 72, baseType: !135, size: 64, offset: 960)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2100, file: !2038, line: 73, baseType: !135, size: 64, offset: 1024)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2100, file: !2038, line: 74, baseType: !135, size: 64, offset: 1088)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2100, file: !2038, line: 75, baseType: !135, size: 64, offset: 1152)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2100, file: !2038, line: 76, baseType: !135, size: 64, offset: 1216)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2100, file: !2038, line: 77, baseType: !135, size: 64, offset: 1280)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2100, file: !2038, line: 78, baseType: !135, size: 64, offset: 1344)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2100, file: !2038, line: 79, baseType: !630, size: 8, offset: 1408)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2100, file: !2038, line: 80, baseType: !135, size: 64, offset: 1472)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2100, file: !2038, line: 81, baseType: !334, size: 256, offset: 1536)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2100, file: !2038, line: 82, baseType: !1825, size: 256, offset: 1792)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2100, file: !2038, line: 84, baseType: !361, size: 32, offset: 2048)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2100, file: !2038, line: 87, baseType: !135, size: 64, offset: 2112)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2100, file: !2038, line: 88, baseType: !135, size: 64, offset: 2176)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2100, file: !2038, line: 89, baseType: !2125, size: 704, offset: 2240)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1601, line: 111, size: 704, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2132}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2125, file: !1601, line: 112, baseType: !1600, size: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2125, file: !1601, line: 113, baseType: !2068, size: 320, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2125, file: !1601, line: 116, baseType: !2130, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1601, line: 18, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2125, file: !1601, line: 117, baseType: !85, size: 32, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2100, file: !2038, line: 90, baseType: !2036, size: 64, offset: 2944)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1035, file: !15, line: 515, baseType: !2135, size: 64, offset: 8064)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2137, line: 117, size: 128, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2138 = !{!2139, !2140, !2141}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2136, file: !2137, line: 118, baseType: !556, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2136, file: !2137, line: 119, baseType: !556, size: 32, offset: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2136, file: !2137, line: 120, baseType: !147, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1035, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1035, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1035, file: !15, line: 520, baseType: !2145, size: 64, offset: 8192)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1035, file: !15, line: 523, baseType: !2147, size: 64, offset: 8256)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1035, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1035, file: !15, line: 525, baseType: !2152, size: 64, offset: 8384)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1035, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1035, file: !15, line: 533, baseType: !136, size: 64, offset: 8512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1035, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1035, file: !15, line: 535, baseType: !144, size: 64, offset: 8640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1035, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1035, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1035, file: !15, line: 540, baseType: !2162, size: 64, offset: 8768)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2164, line: 32, size: 64, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2163, file: !2164, line: 33, baseType: !556, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2163, file: !2164, line: 34, baseType: !556, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1035, file: !15, line: 563, baseType: !382, size: 128, offset: 8832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1035, file: !15, line: 565, baseType: !382, size: 128, offset: 8960)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1035, file: !15, line: 568, baseType: !2171, size: 64, offset: 9088)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1035, file: !15, line: 570, baseType: !361, size: 32, offset: 9152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1010, file: !35, line: 2382, baseType: !1009, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1010, file: !35, line: 2383, baseType: !470, size: 64, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1010, file: !35, line: 2385, baseType: !2178, offset: 576)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2097, line: 206, elements: !1467)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1010, file: !35, line: 2386, baseType: !2178, offset: 576)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1010, file: !35, line: 2387, baseType: !2178, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1010, file: !35, line: 2388, baseType: !2182, offset: 576)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2178, elements: !453)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1010, file: !35, line: 2390, baseType: !2178, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1010, file: !35, line: 2391, baseType: !2178, offset: 576)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1010, file: !35, line: 2392, baseType: !2178, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1010, file: !35, line: 2393, baseType: !2178, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1001, file: !35, line: 1197, baseType: !2188, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2191)
!2191 = !{!2192, !2196, !2200, !2201, !2205, !2209, !2213, !2214, !2215, !2219, !2223, !2227, !2228, !2229, !2235, !2239, !2240, !2244, !2245, !2246, !2247, !2251, !2255, !2302, !2317, !2318}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2190, file: !35, line: 2058, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!792, !1000}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2190, file: !35, line: 2059, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !792}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2190, file: !35, line: 2060, baseType: !2197, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2190, file: !35, line: 2062, baseType: !2202, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !792, !85}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2190, file: !35, line: 2063, baseType: !2206, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!85, !792, !1239}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2190, file: !35, line: 2064, baseType: !2210, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!85, !792}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2190, file: !35, line: 2065, baseType: !2197, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2190, file: !35, line: 2066, baseType: !1030, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2190, file: !35, line: 2067, baseType: !2216, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!85, !1000, !85}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2190, file: !35, line: 2068, baseType: !2220, size: 64, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!85, !1000, !34}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2190, file: !35, line: 2069, baseType: !2224, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!85, !1000}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2190, file: !35, line: 2070, baseType: !2220, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2190, file: !35, line: 2071, baseType: !2224, size: 64, offset: 768)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2190, file: !35, line: 2072, baseType: !2230, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!85, !752, !2233}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2190, file: !35, line: 2073, baseType: !2236, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!85, !1000, !1968, !641}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2190, file: !35, line: 2074, baseType: !1030, size: 64, offset: 960)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2190, file: !35, line: 2076, baseType: !2241, size: 64, offset: 1024)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!85, !1743, !752}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2190, file: !35, line: 2077, baseType: !2241, size: 64, offset: 1088)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2190, file: !35, line: 2078, baseType: !2241, size: 64, offset: 1152)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2190, file: !35, line: 2079, baseType: !2241, size: 64, offset: 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2190, file: !35, line: 2081, baseType: !2248, size: 64, offset: 1280)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!945, !1000, !85, !641, !139, !427}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2190, file: !35, line: 2082, baseType: !2252, size: 64, offset: 1344)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!945, !1000, !85, !176, !139, !427}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2190, file: !35, line: 2083, baseType: !2256, size: 64, offset: 1408)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!2259, !792}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2287, !2288, !2289}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2261, file: !40, line: 297, baseType: !474, size: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2261, file: !40, line: 298, baseType: !382, size: 128, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2261, file: !40, line: 299, baseType: !382, size: 128, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2261, file: !40, line: 300, baseType: !382, size: 128, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2261, file: !40, line: 301, baseType: !334, size: 256, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2261, file: !40, line: 302, baseType: !414, size: 32, offset: 768)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2261, file: !40, line: 303, baseType: !361, size: 32, offset: 800)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2261, file: !40, line: 304, baseType: !1000, size: 64, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2261, file: !40, line: 305, baseType: !2272, size: 64, offset: 896)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2273)
!2273 = !{!2274, !2286}
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !40, line: 69, baseType: !2275, size: 32)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2272, file: !40, line: 69, size: 32, elements: !2276)
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2275, file: !40, line: 70, baseType: !502, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2275, file: !40, line: 71, baseType: !520, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2275, file: !40, line: 72, baseType: !2280, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2281, line: 24, baseType: !2282)
!2281 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2281, line: 22, size: 32, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2282, file: !2281, line: 23, baseType: !2285, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2281, line: 20, baseType: !508)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2272, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2261, file: !40, line: 306, baseType: !427, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2261, file: !40, line: 307, baseType: !135, size: 64, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2261, file: !40, line: 308, baseType: !2290, size: 576, offset: 1088)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2291)
!2291 = !{!2292, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2290, file: !40, line: 206, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !346)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2290, file: !40, line: 207, baseType: !2293, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2290, file: !40, line: 208, baseType: !2293, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2290, file: !40, line: 209, baseType: !2293, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2290, file: !40, line: 210, baseType: !2293, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2290, file: !40, line: 211, baseType: !2293, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2290, file: !40, line: 212, baseType: !2293, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2290, file: !40, line: 213, baseType: !587, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2290, file: !40, line: 214, baseType: !587, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2190, file: !35, line: 2085, baseType: !2303, size: 64, offset: 1472)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!147, !1000, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2308, line: 15, size: 256, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2309 = !{!2310, !2311, !2312, !2313, !2314}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2307, file: !2308, line: 16, baseType: !143, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2307, file: !2308, line: 19, baseType: !85, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2307, file: !2308, line: 26, baseType: !135, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2307, file: !2308, line: 33, baseType: !135, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2307, file: !2308, line: 36, baseType: !2315, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1180, line: 33, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2190, file: !35, line: 2087, baseType: !2303, size: 64, offset: 1536)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2190, file: !35, line: 2089, baseType: !1030, size: 64, offset: 1600)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1001, file: !35, line: 1198, baseType: !2320, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2323)
!2323 = !{!2324, !2328, !2332, !2336, !2337, !2338, !2339, !2340, !2345, !2350, !2354}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2322, file: !40, line: 325, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!85, !2260}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2322, file: !40, line: 326, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!2260, !1000, !85}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2322, file: !40, line: 327, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2260}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2322, file: !40, line: 328, baseType: !2325, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2322, file: !40, line: 329, baseType: !2325, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2322, file: !40, line: 330, baseType: !2325, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2322, file: !40, line: 331, baseType: !2216, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2322, file: !40, line: 334, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2344, !792}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2322, file: !40, line: 335, baseType: !2346, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!85, !792, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2322, file: !40, line: 337, baseType: !2351, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!85, !792, !2344}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2322, file: !40, line: 339, baseType: !2355, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!85, !1000, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1001, file: !35, line: 1199, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2363)
!2363 = !{!2364, !2368, !2369, !2373, !2374, !2375, !2390, !2413, !2417, !2418, !2441}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2362, file: !40, line: 431, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!85, !1000, !85, !85, !914}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2362, file: !40, line: 432, baseType: !2216, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2362, file: !40, line: 433, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!85, !1000, !7}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2362, file: !40, line: 434, baseType: !2370, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2362, file: !40, line: 435, baseType: !2216, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2362, file: !40, line: 436, baseType: !2376, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!85, !1000, !85, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2380, file: !40, line: 418, baseType: !85, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2380, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2380, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2380, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2380, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2380, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2380, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2380, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2362, file: !40, line: 437, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!85, !1000, !2272, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2395, file: !40, line: 346, baseType: !85, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2395, file: !40, line: 347, baseType: !539, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2395, file: !40, line: 348, baseType: !539, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2395, file: !40, line: 349, baseType: !539, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2395, file: !40, line: 350, baseType: !539, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2395, file: !40, line: 351, baseType: !539, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2395, file: !40, line: 352, baseType: !539, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2395, file: !40, line: 353, baseType: !344, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2395, file: !40, line: 355, baseType: !344, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2395, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2395, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2395, file: !40, line: 358, baseType: !539, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2395, file: !40, line: 359, baseType: !539, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2395, file: !40, line: 360, baseType: !539, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2395, file: !40, line: 361, baseType: !344, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2395, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2362, file: !40, line: 438, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!85, !1000, !2358, !2394}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2362, file: !40, line: 440, baseType: !2391, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2362, file: !40, line: 441, baseType: !2419, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!85, !1000, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2423, file: !40, line: 412, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2423, file: !40, line: 413, baseType: !2427, size: 1344, offset: 64)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 1344, elements: !453)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !40, line: 398, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2428, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2428, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2428, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2428, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2428, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2428, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2428, file: !40, line: 406, baseType: !541, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2428, file: !40, line: 407, baseType: !2439, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !134, line: 132, baseType: !539)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2428, file: !40, line: 408, baseType: !2439, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2362, file: !40, line: 442, baseType: !2370, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1001, file: !35, line: 1200, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1001, file: !35, line: 1201, baseType: !135, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1001, file: !35, line: 1202, baseType: !135, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1001, file: !35, line: 1203, baseType: !135, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1001, file: !35, line: 1204, baseType: !752, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1001, file: !35, line: 1205, baseType: !571, size: 320, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1001, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1001, file: !35, line: 1207, baseType: !361, size: 32, offset: 1248)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1001, file: !35, line: 1209, baseType: !136, size: 64, offset: 1280)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1001, file: !35, line: 1211, baseType: !2455, size: 64, offset: 1344)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2458)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1001, file: !35, line: 1223, baseType: !2460, size: 64, offset: 1408)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !769, line: 34, size: 64, elements: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2460, file: !769, line: 35, baseType: !772, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1001, file: !35, line: 1224, baseType: !382, size: 128, offset: 1472)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1001, file: !35, line: 1225, baseType: !2465, size: 64, offset: 1600)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1001, file: !35, line: 1226, baseType: !2468, size: 64, offset: 1664)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1001, file: !35, line: 1227, baseType: !2471, size: 64, offset: 1728)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1001, file: !35, line: 1228, baseType: !2474, size: 64, offset: 1792)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1001, file: !35, line: 1229, baseType: !474, size: 128, offset: 1856)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1001, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1001, file: !35, line: 1231, baseType: !2479, size: 2496, offset: 2048)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2480)
!2480 = !{!2481, !2482, !2483, !2485, !2517}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2479, file: !40, line: 522, baseType: !7, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2479, file: !40, line: 523, baseType: !571, size: 320, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2479, file: !40, line: 524, baseType: !2484, size: 192, offset: 384)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 192, elements: !453)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2479, file: !40, line: 525, baseType: !2486, size: 1728, offset: 576)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2487, size: 1728, elements: !453)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2488)
!2488 = !{!2489, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2487, file: !40, line: 223, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2492)
!2492 = !{!2493, !2494, !2507, !2508}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2491, file: !40, line: 446, baseType: !85, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2491, file: !40, line: 447, baseType: !2495, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2497)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2497, file: !40, line: 313, baseType: !2216, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2497, file: !40, line: 314, baseType: !2216, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2497, file: !40, line: 315, baseType: !2216, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2497, file: !40, line: 316, baseType: !2216, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2497, file: !40, line: 317, baseType: !2325, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2497, file: !40, line: 318, baseType: !2325, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2497, file: !40, line: 319, baseType: !2325, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2497, file: !40, line: 320, baseType: !2355, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2491, file: !40, line: 448, baseType: !1034, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2491, file: !40, line: 449, baseType: !2490, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2487, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2487, file: !40, line: 226, baseType: !382, size: 128, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2487, file: !40, line: 227, baseType: !135, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2487, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2487, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2487, file: !40, line: 230, baseType: !2293, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2487, file: !40, line: 231, baseType: !2293, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2487, file: !40, line: 232, baseType: !136, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2479, file: !40, line: 526, baseType: !2518, size: 192, offset: 2304)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 192, elements: !453)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1001, file: !35, line: 1233, baseType: !2520, size: 2368, offset: 4544)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2521)
!2521 = !{!2522, !2523, !2524}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2520, file: !35, line: 1185, baseType: !187, size: 16)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2520, file: !35, line: 1186, baseType: !187, size: 16, offset: 16)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2520, file: !35, line: 1187, baseType: !2525, size: 2304, offset: 64)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 2304, elements: !453)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2527, line: 12, size: 768, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2528 = !{!2529, !2537, !2538, !3712, !3713}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2526, file: !2527, line: 13, baseType: !2530, size: 384)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2531, line: 17, size: 384, elements: !2532)
!2531 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2530, file: !2531, line: 18, baseType: !85, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2530, file: !2531, line: 19, baseType: !85, size: 32, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2530, file: !2531, line: 20, baseType: !483, size: 192, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2530, file: !2531, line: 22, baseType: !404, size: 128, align: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2526, file: !2527, line: 14, baseType: !233, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2526, file: !2527, line: 15, baseType: !2539, size: 64, offset: 448)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2540, line: 16, size: 64, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2541 = !{!2542}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2539, file: !2540, line: 17, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1653, line: 746, size: 58368, elements: !2545)
!2545 = !{!2546, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2626, !2637, !2725, !2729, !2732, !2763, !2764, !2765, !2766, !2774, !2776, !2777, !2778, !2779, !2780, !2781, !2792, !2793, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2810, !2811, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2899, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2947, !2953, !2954, !2955, !2956, !2957, !2961, !2964, !2971, !2976, !2979, !2982, !2985, !2988, !3126, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3164, !3165, !3166, !3175, !3183, !3184, !3185, !3186, !3187, !3192, !3193, !3194, !3197, !3198, !3201, !3204, !3207, !3215, !3218, !3219, !3305, !3306, !3307, !3308, !3309, !3315, !3316, !3317, !3318, !3321, !3322, !3325, !3328, !3329, !3332, !3333, !3334, !3337, !3338, !3339, !3340, !3341, !3342, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3374, !3377, !3383, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3395, !3467, !3469, !3470, !3471, !3472, !3473, !3474, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3491, !3492, !3493}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2544, file: !1653, line: 752, baseType: !2547, size: 192)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2548, line: 56, size: 192, elements: !2549)
!2548 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2549 = !{!2550, !2551, !2552, !2553}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !2548, line: 57, baseType: !135, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2547, file: !2548, line: 58, baseType: !135, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2547, file: !2548, line: 59, baseType: !596, size: 32, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2547, file: !2548, line: 61, baseType: !596, size: 32, offset: 160)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2544, file: !1653, line: 754, baseType: !7, size: 32, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2544, file: !1653, line: 767, baseType: !136, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2544, file: !1653, line: 768, baseType: !461, size: 32, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !1653, line: 770, baseType: !7, size: 32, offset: 352)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2544, file: !1653, line: 771, baseType: !7, size: 32, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2544, file: !1653, line: 774, baseType: !85, size: 32, offset: 416)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2544, file: !1653, line: 775, baseType: !2561, size: 128, offset: 448)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2562, line: 58, size: 128, elements: !2563)
!2562 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2563 = !{!2564, !2565, !2570, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2561, file: !2562, line: 59, baseType: !398, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !2562, line: 60, baseType: !2566, size: 32, offset: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2561, file: !2562, line: 60, size: 32, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2566, file: !2562, line: 61, baseType: !7, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2566, file: !2562, line: 62, baseType: !361, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2561, file: !2562, line: 65, baseType: !324, size: 16, offset: 96)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2561, file: !2562, line: 65, baseType: !324, size: 16, offset: 112)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2544, file: !1653, line: 776, baseType: !7, size: 32, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2544, file: !1653, line: 777, baseType: !135, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2544, file: !1653, line: 778, baseType: !2543, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2544, file: !1653, line: 787, baseType: !85, size: 32, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2544, file: !1653, line: 788, baseType: !85, size: 32, offset: 800)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2544, file: !1653, line: 790, baseType: !85, size: 32, offset: 832)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2544, file: !1653, line: 792, baseType: !85, size: 32, offset: 864)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2544, file: !1653, line: 793, baseType: !85, size: 32, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2544, file: !1653, line: 794, baseType: !85, size: 32, offset: 928)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2544, file: !1653, line: 795, baseType: !7, size: 32, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2544, file: !1653, line: 797, baseType: !2583, size: 2048, offset: 1024)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1653, line: 551, size: 2048, elements: !2584)
!2584 = !{!2585, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2605, !2608, !2609, !2610}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2583, file: !1653, line: 553, baseType: !2586, size: 128)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1653, line: 411, size: 128, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2586, file: !1653, line: 412, baseType: !135, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2586, file: !1653, line: 413, baseType: !596, size: 32, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2583, file: !1653, line: 554, baseType: !563, size: 192, align: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2583, file: !1653, line: 555, baseType: !539, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2583, file: !1653, line: 556, baseType: !539, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2583, file: !1653, line: 558, baseType: !382, size: 128, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2583, file: !1653, line: 559, baseType: !7, size: 32, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2583, file: !1653, line: 561, baseType: !539, size: 64, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2583, file: !1653, line: 562, baseType: !539, size: 64, offset: 704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2583, file: !1653, line: 563, baseType: !539, size: 64, offset: 768)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2583, file: !1653, line: 564, baseType: !539, size: 64, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2583, file: !1653, line: 565, baseType: !344, size: 64, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2583, file: !1653, line: 566, baseType: !539, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2583, file: !1653, line: 568, baseType: !539, size: 64, offset: 1024)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2583, file: !1653, line: 571, baseType: !85, size: 32, offset: 1088)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2583, file: !1653, line: 572, baseType: !2604, size: 64, offset: 1152)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2583, file: !1653, line: 574, baseType: !2606, size: 64, offset: 1216)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1653, line: 49, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2583, file: !1653, line: 576, baseType: !2606, size: 64, offset: 1280)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2583, file: !1653, line: 578, baseType: !135, size: 64, offset: 1344)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2583, file: !1653, line: 588, baseType: !2611, size: 512, align: 512, offset: 1536)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1653, line: 497, size: 512, align: 512, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2611, file: !1653, line: 498, baseType: !539, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2611, file: !1653, line: 499, baseType: !539, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2611, file: !1653, line: 500, baseType: !539, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2611, file: !1653, line: 501, baseType: !596, size: 32, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2611, file: !1653, line: 502, baseType: !596, size: 32, offset: 224)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2611, file: !1653, line: 503, baseType: !135, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2611, file: !1653, line: 504, baseType: !135, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2611, file: !1653, line: 505, baseType: !135, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2611, file: !1653, line: 506, baseType: !2622, size: 64, align: 64, offset: 448)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1653, line: 445, size: 64, align: 64, elements: !2623)
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2622, file: !1653, line: 446, baseType: !7, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2622, file: !1653, line: 447, baseType: !7, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2544, file: !1653, line: 798, baseType: !2627, size: 384, offset: 3072)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1653, line: 592, size: 384, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2627, file: !1653, line: 593, baseType: !382, size: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2627, file: !1653, line: 594, baseType: !135, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2627, file: !1653, line: 595, baseType: !135, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2627, file: !1653, line: 596, baseType: !7, size: 32, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2627, file: !1653, line: 597, baseType: !187, size: 16, offset: 288)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2627, file: !1653, line: 598, baseType: !187, size: 16, offset: 304)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2627, file: !1653, line: 600, baseType: !2636, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2544, file: !1653, line: 799, baseType: !2638, size: 1792, offset: 3456)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1653, line: 610, size: 1792, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2722, !2723}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2638, file: !1653, line: 611, baseType: !563, size: 192, align: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2638, file: !1653, line: 618, baseType: !539, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2638, file: !1653, line: 619, baseType: !539, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2638, file: !1653, line: 620, baseType: !539, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2638, file: !1653, line: 621, baseType: !539, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2638, file: !1653, line: 622, baseType: !539, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2638, file: !1653, line: 629, baseType: !344, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2638, file: !1653, line: 630, baseType: !539, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2638, file: !1653, line: 631, baseType: !7, size: 32, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2638, file: !1653, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2638, file: !1653, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2638, file: !1653, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2638, file: !1653, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2638, file: !1653, line: 662, baseType: !2654, size: 512, offset: 704)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2655)
!2655 = !{!2656, !2664, !2665, !2670, !2718, !2719, !2720, !2721}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2654, file: !46, line: 119, baseType: !2657, size: 256)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2658, line: 9, size: 256, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2657, file: !2658, line: 10, baseType: !563, size: 192, align: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2657, file: !2658, line: 11, baseType: !2662, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2663, line: 29, baseType: !344)
!2663 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2654, file: !46, line: 120, baseType: !2662, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2654, file: !46, line: 121, baseType: !2666, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!45, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2654, file: !46, line: 122, baseType: !2671, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2673)
!2673 = !{!2674, !2699, !2700, !2703, !2708, !2709, !2713, !2717}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2672, file: !46, line: 160, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2676, file: !46, line: 216, baseType: !348, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2676, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2676, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2676, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2676, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2676, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2676, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2676, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2676, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2676, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2676, file: !46, line: 227, baseType: !187, size: 16, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2676, file: !46, line: 228, baseType: !187, size: 16, offset: 208)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2676, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2676, file: !46, line: 235, baseType: !2662, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2676, file: !46, line: 236, baseType: !2669, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2676, file: !46, line: 237, baseType: !2662, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2676, file: !46, line: 238, baseType: !2669, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2676, file: !46, line: 239, baseType: !2696, size: 4096, align: 512, offset: 512)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2672, size: 4096, align: 512, elements: !2697)
!2697 = !{!2698}
!2698 = !DISubrange(count: 8)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2672, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2672, file: !46, line: 162, baseType: !2701, size: 32, offset: 96)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !134, line: 32, baseType: !2702)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !141, line: 96, baseType: !85)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2672, file: !46, line: 163, baseType: !2704, size: 32, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !759, line: 274, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !759, line: 274, size: 32, elements: !2706)
!2706 = !{!2707}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2705, file: !759, line: 274, baseType: !763, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2672, file: !46, line: 164, baseType: !2669, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2672, file: !46, line: 165, baseType: !2710, size: 128, offset: 256)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2658, line: 14, size: 128, elements: !2711)
!2711 = !{!2712}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2710, file: !2658, line: 15, baseType: !1160, size: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2672, file: !46, line: 166, baseType: !2714, size: 64, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!2662}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2672, file: !46, line: 167, baseType: !2662, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2654, file: !46, line: 123, baseType: !369, size: 8, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2654, file: !46, line: 124, baseType: !369, size: 8, offset: 456)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2654, file: !46, line: 125, baseType: !369, size: 8, offset: 464)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2654, file: !46, line: 126, baseType: !369, size: 8, offset: 472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2638, file: !1653, line: 671, baseType: !2654, size: 512, offset: 1216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2638, file: !1653, line: 679, baseType: !2724, size: 64, offset: 1728)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2544, file: !1653, line: 800, baseType: !2726, size: 64, offset: 5248)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1653, line: 800, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2544, file: !1653, line: 809, baseType: !2730, size: 64, offset: 5312)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1653, line: 70, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2544, file: !1653, line: 825, baseType: !2733, size: 2048, align: 512, offset: 5632)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1653, line: 509, size: 2048, align: 512, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2733, file: !1653, line: 511, baseType: !539, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2733, file: !1653, line: 512, baseType: !539, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2733, file: !1653, line: 513, baseType: !539, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2733, file: !1653, line: 514, baseType: !539, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2733, file: !1653, line: 515, baseType: !539, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2733, file: !1653, line: 516, baseType: !539, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2733, file: !1653, line: 518, baseType: !539, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2733, file: !1653, line: 519, baseType: !539, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2733, file: !1653, line: 520, baseType: !344, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2733, file: !1653, line: 522, baseType: !539, size: 64, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2733, file: !1653, line: 523, baseType: !539, size: 64, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2733, file: !1653, line: 524, baseType: !344, size: 64, offset: 704)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2733, file: !1653, line: 526, baseType: !344, size: 64, offset: 768)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2733, file: !1653, line: 527, baseType: !539, size: 64, offset: 832)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2733, file: !1653, line: 529, baseType: !539, size: 64, offset: 896)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2733, file: !1653, line: 530, baseType: !539, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2733, file: !1653, line: 531, baseType: !539, size: 64, offset: 1024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2733, file: !1653, line: 532, baseType: !539, size: 64, offset: 1088)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2733, file: !1653, line: 533, baseType: !539, size: 64, offset: 1152)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2733, file: !1653, line: 535, baseType: !539, size: 64, offset: 1216)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2733, file: !1653, line: 536, baseType: !539, size: 64, offset: 1280)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2733, file: !1653, line: 537, baseType: !539, size: 64, offset: 1344)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2733, file: !1653, line: 538, baseType: !539, size: 64, offset: 1408)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2733, file: !1653, line: 539, baseType: !539, size: 64, offset: 1472)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2733, file: !1653, line: 540, baseType: !539, size: 64, offset: 1536)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2733, file: !1653, line: 541, baseType: !539, size: 64, offset: 1600)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2733, file: !1653, line: 542, baseType: !539, size: 64, offset: 1664)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2733, file: !1653, line: 543, baseType: !539, size: 64, offset: 1728)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2544, file: !1653, line: 833, baseType: !7, size: 32, offset: 7680)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2544, file: !1653, line: 836, baseType: !7, size: 32, offset: 7712)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2544, file: !1653, line: 837, baseType: !85, size: 32, offset: 7744)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2544, file: !1653, line: 838, baseType: !2767, size: 64, offset: 7808)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2769)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2770, line: 19, baseType: !2771)
!2770 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2770, line: 19, size: 64, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2771, file: !2770, line: 19, baseType: !192, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2544, file: !1653, line: 839, baseType: !2775, size: 64, offset: 7872)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2544, file: !1653, line: 840, baseType: !2769, size: 64, offset: 7936)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2544, file: !1653, line: 841, baseType: !136, size: 64, offset: 8000)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2544, file: !1653, line: 843, baseType: !187, size: 16, offset: 8064)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2544, file: !1653, line: 845, baseType: !187, size: 16, offset: 8080)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2544, file: !1653, line: 848, baseType: !85, size: 32, offset: 8096)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2544, file: !1653, line: 849, baseType: !2782, size: 32, offset: 8128)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1653, line: 718, size: 32, elements: !2783)
!2783 = !{!2784, !2791}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2782, file: !1653, line: 724, baseType: !2785, size: 32)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !1653, line: 719, size: 32, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2785, file: !1653, line: 720, baseType: !369, size: 8)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2785, file: !1653, line: 721, baseType: !369, size: 8, offset: 8)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2785, file: !1653, line: 722, baseType: !369, size: 8, offset: 16)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2785, file: !1653, line: 723, baseType: !369, size: 8, offset: 24)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2782, file: !1653, line: 725, baseType: !596, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2544, file: !1653, line: 850, baseType: !382, size: 128, offset: 8192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2544, file: !1653, line: 851, baseType: !2794, size: 64, offset: 8320)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1653, line: 60, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2544, file: !1653, line: 855, baseType: !135, size: 64, offset: 8384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2544, file: !1653, line: 856, baseType: !369, size: 8, offset: 8448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2544, file: !1653, line: 857, baseType: !369, size: 8, offset: 8456)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2544, file: !1653, line: 858, baseType: !85, size: 32, offset: 8480)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2544, file: !1653, line: 859, baseType: !382, size: 128, offset: 8512)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2544, file: !1653, line: 860, baseType: !85, size: 32, offset: 8640)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2544, file: !1653, line: 861, baseType: !382, size: 128, offset: 8704)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2544, file: !1653, line: 873, baseType: !2804, size: 256, offset: 8832)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1653, line: 376, size: 256, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2804, file: !1653, line: 381, baseType: !135, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2804, file: !1653, line: 384, baseType: !541, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2804, file: !1653, line: 389, baseType: !541, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2804, file: !1653, line: 392, baseType: !541, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2544, file: !1653, line: 875, baseType: !382, size: 128, offset: 9088)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2544, file: !1653, line: 877, baseType: !2812, size: 320, offset: 9216)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2813, line: 86, size: 320, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2812, file: !2813, line: 87, baseType: !85, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2812, file: !2813, line: 88, baseType: !382, size: 128, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2812, file: !2813, line: 89, baseType: !382, size: 128, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2544, file: !1653, line: 878, baseType: !563, size: 192, align: 64, offset: 9536)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2544, file: !1653, line: 881, baseType: !1446, size: 64, offset: 9728)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2544, file: !1653, line: 882, baseType: !1446, size: 64, offset: 9792)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2544, file: !1653, line: 884, baseType: !85, size: 32, offset: 9856)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2544, file: !1653, line: 885, baseType: !85, size: 32, offset: 9888)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2544, file: !1653, line: 886, baseType: !85, size: 32, offset: 9920)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2544, file: !1653, line: 888, baseType: !85, size: 32, offset: 9952)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2544, file: !1653, line: 890, baseType: !135, size: 64, offset: 9984)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2544, file: !1653, line: 893, baseType: !7, size: 32, offset: 10048)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2544, file: !1653, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2544, file: !1653, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2544, file: !1653, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2544, file: !1653, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2544, file: !1653, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2544, file: !1653, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2544, file: !1653, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2544, file: !1653, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2544, file: !1653, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2544, file: !1653, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2544, file: !1653, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2544, file: !1653, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2544, file: !1653, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2544, file: !1653, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2544, file: !1653, line: 969, baseType: !135, size: 64, offset: 10176)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2544, file: !1653, line: 971, baseType: !2843, size: 448, offset: 10240)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2844)
!2844 = !{!2845, !2846, !2851}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2843, file: !51, line: 26, baseType: !135, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2843, file: !51, line: 27, baseType: !2847, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!147, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2843, file: !51, line: 28, baseType: !2852, size: 320, offset: 128)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2843, file: !51, line: 28, size: 320, elements: !2853)
!2853 = !{!2854, !2864, !2889}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2852, file: !51, line: 37, baseType: !2855, size: 320)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !51, line: 30, size: 320, elements: !2856)
!2856 = !{!2857, !2859, !2860, !2861, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2855, file: !51, line: 31, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2855, file: !51, line: 32, baseType: !596, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2855, file: !51, line: 33, baseType: !596, size: 32, offset: 96)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2855, file: !51, line: 34, baseType: !596, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2855, file: !51, line: 35, baseType: !539, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2855, file: !51, line: 36, baseType: !2858, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2852, file: !51, line: 47, baseType: !2865, size: 192)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !51, line: 39, size: 192, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2888}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2865, file: !51, line: 40, baseType: !2701, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2865, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !51, line: 42, baseType: !2870, size: 64, offset: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !51, line: 42, size: 64, elements: !2871)
!2871 = !{!2872, !2880}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2870, file: !51, line: 43, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2875, line: 7, size: 128, elements: !2876)
!2875 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2876 = !{!2877, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2874, file: !2875, line: 8, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !141, line: 93, baseType: !346)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2874, file: !2875, line: 9, baseType: !346, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2870, file: !51, line: 44, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2883, line: 7, size: 64, elements: !2884)
!2883 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2884 = !{!2885, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2882, file: !2883, line: 8, baseType: !2886, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2883, line: 5, baseType: !556)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2882, file: !2883, line: 9, baseType: !556, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2865, file: !51, line: 46, baseType: !539, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2852, file: !51, line: 55, baseType: !2890, size: 256)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !51, line: 49, size: 256, elements: !2891)
!2891 = !{!2892, !2895, !2896, !2897, !2898}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2890, file: !51, line: 50, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2890, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2890, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2890, file: !51, line: 53, baseType: !135, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2890, file: !51, line: 54, baseType: !135, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2544, file: !1653, line: 973, baseType: !2900, size: 32, offset: 10688)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !134, line: 27, baseType: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !141, line: 28, baseType: !85)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2544, file: !1653, line: 974, baseType: !2900, size: 32, offset: 10720)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2544, file: !1653, line: 978, baseType: !135, size: 64, offset: 10752)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2544, file: !1653, line: 987, baseType: !2543, size: 64, offset: 10816)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2544, file: !1653, line: 990, baseType: !2543, size: 64, offset: 10880)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2544, file: !1653, line: 995, baseType: !382, size: 128, offset: 10944)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2544, file: !1653, line: 996, baseType: !382, size: 128, offset: 11072)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2544, file: !1653, line: 997, baseType: !2543, size: 64, offset: 11200)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2544, file: !1653, line: 1005, baseType: !382, size: 128, offset: 11264)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2544, file: !1653, line: 1006, baseType: !382, size: 128, offset: 11392)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2544, file: !1653, line: 1009, baseType: !457, size: 64, offset: 11520)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2544, file: !1653, line: 1010, baseType: !2913, size: 512, offset: 11584)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 512, elements: !479)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2544, file: !1653, line: 1011, baseType: !382, size: 128, offset: 12096)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2544, file: !1653, line: 1012, baseType: !382, size: 128, offset: 12224)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2544, file: !1653, line: 1014, baseType: !1824, size: 64, offset: 12352)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2544, file: !1653, line: 1017, baseType: !1968, size: 64, offset: 12416)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2544, file: !1653, line: 1020, baseType: !1968, size: 64, offset: 12480)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2544, file: !1653, line: 1023, baseType: !136, size: 64, offset: 12544)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2544, file: !1653, line: 1025, baseType: !539, size: 64, offset: 12608)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2544, file: !1653, line: 1026, baseType: !539, size: 64, offset: 12672)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2544, file: !1653, line: 1031, baseType: !539, size: 64, offset: 12736)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2544, file: !1653, line: 1032, baseType: !2924, size: 192, offset: 12800)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1653, line: 324, size: 192, elements: !2925)
!2925 = !{!2926, !2927, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2924, file: !1653, line: 326, baseType: !539, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2924, file: !1653, line: 327, baseType: !539, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2924, file: !1653, line: 328, baseType: !348, size: 32, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2544, file: !1653, line: 1041, baseType: !135, size: 64, offset: 12992)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2544, file: !1653, line: 1042, baseType: !135, size: 64, offset: 13056)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2544, file: !1653, line: 1045, baseType: !539, size: 64, offset: 13120)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2544, file: !1653, line: 1048, baseType: !539, size: 64, offset: 13184)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2544, file: !1653, line: 1051, baseType: !135, size: 64, offset: 13248)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2544, file: !1653, line: 1052, baseType: !135, size: 64, offset: 13312)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2544, file: !1653, line: 1055, baseType: !2936, size: 640, offset: 13376)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2937, line: 132, size: 640, elements: !2938)
!2937 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2938 = !{!2939, !2945, !2946}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2936, file: !2937, line: 133, baseType: !2940, size: 576)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2941, size: 576, elements: !453)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2937, line: 117, size: 192, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2941, file: !2937, line: 118, baseType: !539, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2941, file: !2937, line: 119, baseType: !2710, size: 128, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2936, file: !2937, line: 134, baseType: !7, size: 32, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2936, file: !2937, line: 135, baseType: !7, size: 32, offset: 608)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2544, file: !1653, line: 1058, baseType: !2948, size: 448, offset: 14016)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2937, line: 144, size: 448, elements: !2949)
!2949 = !{!2950, !2951, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2948, file: !2937, line: 145, baseType: !404, size: 128, align: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2948, file: !2937, line: 146, baseType: !334, size: 256, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2948, file: !2937, line: 147, baseType: !7, size: 32, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2544, file: !1653, line: 1064, baseType: !512, size: 64, offset: 14464)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2544, file: !1653, line: 1067, baseType: !512, size: 64, offset: 14528)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2544, file: !1653, line: 1070, baseType: !512, size: 64, offset: 14592)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2544, file: !1653, line: 1074, baseType: !548, size: 64, offset: 14656)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2544, file: !1653, line: 1084, baseType: !2958, size: 128, offset: 14720)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !2959)
!2959 = !{!2960}
!2960 = !DISubrange(count: 16)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2544, file: !1653, line: 1086, baseType: !2962, size: 64, offset: 14848)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1653, line: 55, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2544, file: !1653, line: 1089, baseType: !2965, size: 64, offset: 14912)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2966, line: 12, size: 64, elements: !2967)
!2966 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2967 = !{!2968}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2965, file: !2966, line: 13, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2966, line: 8, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2544, file: !1653, line: 1090, baseType: !2972, size: 128, offset: 14976)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2973, line: 13, size: 128, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2972, file: !2973, line: 14, baseType: !382, size: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2544, file: !1653, line: 1097, baseType: !2977, size: 64, offset: 15104)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1653, line: 50, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2544, file: !1653, line: 1100, baseType: !2980, size: 64, offset: 15168)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1653, line: 1100, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2544, file: !1653, line: 1103, baseType: !2983, size: 64, offset: 15232)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1653, line: 53, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2544, file: !1653, line: 1107, baseType: !2986, size: 64, offset: 15296)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1653, line: 56, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2544, file: !1653, line: 1110, baseType: !2989, size: 64, offset: 15360)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2991, line: 93, size: 8768, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3040, !3049, !3050, !3052, !3053, !3054, !3057, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3095, !3096, !3103, !3113, !3116, !3117, !3120, !3121, !3122, !3123, !3124, !3125}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2990, file: !2991, line: 94, baseType: !461, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2990, file: !2991, line: 95, baseType: !361, size: 32, offset: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2990, file: !2991, line: 96, baseType: !85, size: 32, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2990, file: !2991, line: 97, baseType: !85, size: 32, offset: 96)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2990, file: !2991, line: 98, baseType: !382, size: 128, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2990, file: !2991, line: 100, baseType: !483, size: 192, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2990, file: !2991, line: 103, baseType: !2543, size: 64, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2990, file: !2991, line: 106, baseType: !3001, size: 192, offset: 512)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !719, line: 32, size: 192, elements: !3002)
!3002 = !{!3003, !3004}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3001, file: !719, line: 33, baseType: !382, size: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3001, file: !719, line: 34, baseType: !3005, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3006, line: 25, baseType: !3007)
!3006 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3006, line: 23, size: 64, elements: !3008)
!3008 = !{!3009}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3007, file: !3006, line: 24, baseType: !192, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2990, file: !2991, line: 109, baseType: !470, size: 64, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2990, file: !2991, line: 112, baseType: !85, size: 32, offset: 768)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2990, file: !2991, line: 114, baseType: !85, size: 32, offset: 800)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2990, file: !2991, line: 115, baseType: !2543, size: 64, offset: 832)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2990, file: !2991, line: 118, baseType: !85, size: 32, offset: 896)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2990, file: !2991, line: 119, baseType: !7, size: 32, offset: 928)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2990, file: !2991, line: 121, baseType: !3017, size: 64, offset: 960)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2991, line: 80, size: 448, elements: !3019)
!3019 = !{!3020, !3021, !3027}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3018, file: !2991, line: 81, baseType: !361, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3018, file: !2991, line: 82, baseType: !3022, size: 128, offset: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2991, line: 75, size: 128, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3022, file: !2991, line: 76, baseType: !2543, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3022, file: !2991, line: 77, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3018, file: !2991, line: 83, baseType: !1825, size: 256, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2990, file: !2991, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2990, file: !2991, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2990, file: !2991, line: 138, baseType: !7, size: 32, offset: 1056)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2990, file: !2991, line: 139, baseType: !382, size: 128, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2990, file: !2991, line: 142, baseType: !2654, size: 512, offset: 1216)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2990, file: !2991, line: 143, baseType: !2662, size: 64, offset: 1728)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2990, file: !2991, line: 150, baseType: !3035, size: 256, offset: 1792)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3036, size: 256, elements: !207)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2991, line: 38, size: 128, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3036, file: !2991, line: 39, baseType: !539, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3036, file: !2991, line: 40, baseType: !539, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2990, file: !2991, line: 156, baseType: !3041, size: 192, offset: 2048)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2991, line: 66, size: 192, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3041, file: !2991, line: 67, baseType: !3044, size: 192)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2991, line: 47, size: 192, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3044, file: !2991, line: 48, baseType: !340, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3044, file: !2991, line: 49, baseType: !340, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3044, file: !2991, line: 50, baseType: !340, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2990, file: !2991, line: 160, baseType: !2936, size: 640, offset: 2240)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2990, file: !2991, line: 163, baseType: !3051, size: 256, offset: 2880)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 256, elements: !479)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2990, file: !2991, line: 169, baseType: !457, size: 64, offset: 3136)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2990, file: !2991, line: 172, baseType: !85, size: 32, offset: 3200)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2990, file: !2991, line: 174, baseType: !3055, size: 64, offset: 3264)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2991, line: 174, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2990, file: !2991, line: 185, baseType: !3058, size: 64, offset: 3328)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !759, line: 860, baseType: !3059)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 853, size: 64, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3059, file: !759, line: 858, baseType: !758, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3059, file: !759, line: 859, baseType: !414, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2990, file: !2991, line: 186, baseType: !539, size: 64, offset: 3392)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2990, file: !2991, line: 186, baseType: !539, size: 64, offset: 3456)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2990, file: !2991, line: 186, baseType: !539, size: 64, offset: 3520)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2990, file: !2991, line: 186, baseType: !539, size: 64, offset: 3584)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2990, file: !2991, line: 187, baseType: !539, size: 64, offset: 3648)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2990, file: !2991, line: 188, baseType: !539, size: 64, offset: 3712)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2990, file: !2991, line: 189, baseType: !2924, size: 192, offset: 3776)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2990, file: !2991, line: 190, baseType: !135, size: 64, offset: 3968)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2990, file: !2991, line: 190, baseType: !135, size: 64, offset: 4032)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2990, file: !2991, line: 190, baseType: !135, size: 64, offset: 4096)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2990, file: !2991, line: 190, baseType: !135, size: 64, offset: 4160)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2990, file: !2991, line: 191, baseType: !135, size: 64, offset: 4224)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2990, file: !2991, line: 191, baseType: !135, size: 64, offset: 4288)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2990, file: !2991, line: 191, baseType: !135, size: 64, offset: 4352)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2990, file: !2991, line: 191, baseType: !135, size: 64, offset: 4416)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2990, file: !2991, line: 192, baseType: !135, size: 64, offset: 4480)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2990, file: !2991, line: 192, baseType: !135, size: 64, offset: 4544)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2990, file: !2991, line: 192, baseType: !135, size: 64, offset: 4608)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2990, file: !2991, line: 192, baseType: !135, size: 64, offset: 4672)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2990, file: !2991, line: 193, baseType: !135, size: 64, offset: 4736)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2990, file: !2991, line: 193, baseType: !135, size: 64, offset: 4800)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2990, file: !2991, line: 194, baseType: !3085, size: 448, offset: 4864)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3086, line: 12, size: 448, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3085, file: !3086, line: 15, baseType: !539, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3085, file: !3086, line: 17, baseType: !539, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3085, file: !3086, line: 19, baseType: !539, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3085, file: !3086, line: 21, baseType: !539, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3085, file: !3086, line: 29, baseType: !539, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3085, file: !3086, line: 35, baseType: !539, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3085, file: !3086, line: 44, baseType: !539, size: 64, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2990, file: !2991, line: 202, baseType: !541, size: 64, offset: 5312)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2990, file: !2991, line: 213, baseType: !3097, size: 2048, offset: 5376)
!3097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3098, size: 2048, elements: !2959)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3099, line: 43, size: 128, elements: !3100)
!3099 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3098, file: !3099, line: 44, baseType: !142, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3098, file: !3099, line: 45, baseType: !142, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2990, file: !2991, line: 216, baseType: !3104, size: 448, offset: 7424)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2991, line: 30, size: 448, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111, !3112}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3104, file: !2991, line: 31, baseType: !85, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3104, file: !2991, line: 32, baseType: !147, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3104, file: !2991, line: 33, baseType: !135, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3104, file: !2991, line: 34, baseType: !539, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3104, file: !2991, line: 34, baseType: !539, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3104, file: !2991, line: 35, baseType: !135, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3104, file: !2991, line: 35, baseType: !135, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2990, file: !2991, line: 219, baseType: !3114, size: 64, offset: 7872)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2991, line: 219, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2990, file: !2991, line: 222, baseType: !7, size: 32, offset: 7936)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2990, file: !2991, line: 223, baseType: !3118, size: 64, offset: 8000)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2991, line: 223, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2990, file: !2991, line: 230, baseType: !630, size: 8, offset: 8064)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2990, file: !2991, line: 231, baseType: !253, size: 16, offset: 8080)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2990, file: !2991, line: 232, baseType: !253, size: 16, offset: 8096)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2990, file: !2991, line: 234, baseType: !1446, size: 64, offset: 8128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2990, file: !2991, line: 237, baseType: !334, size: 256, offset: 8192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2990, file: !2991, line: 243, baseType: !571, size: 320, offset: 8448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2544, file: !1653, line: 1111, baseType: !3127, size: 64, offset: 15424)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2991, line: 20, size: 16640, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3128, file: !2991, line: 21, baseType: !414, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3128, file: !2991, line: 22, baseType: !461, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3128, file: !2991, line: 23, baseType: !483, size: 192, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3128, file: !2991, line: 24, baseType: !3134, size: 16384, offset: 256)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3135, size: 16384, elements: !1090)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !719, line: 51, size: 256, elements: !3136)
!3136 = !{!3137}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3135, file: !719, line: 52, baseType: !3138, size: 256)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !719, line: 37, size: 256, elements: !3139)
!3139 = !{!3140, !3147, !3148, !3152}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3138, file: !719, line: 39, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3142, line: 83, baseType: !3143)
!3142 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3142, line: 82, baseType: !3145)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !85}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3138, file: !719, line: 40, baseType: !135, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3138, file: !719, line: 46, baseType: !3149, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3142, line: 86, baseType: !3150)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3142, line: 85, baseType: !2172)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3138, file: !719, line: 48, baseType: !3005, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2544, file: !1653, line: 1112, baseType: !3005, size: 64, offset: 15488)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2544, file: !1653, line: 1113, baseType: !3005, size: 64, offset: 15552)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2544, file: !1653, line: 1115, baseType: !3005, size: 64, offset: 15616)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2544, file: !1653, line: 1116, baseType: !3001, size: 192, offset: 15680)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2544, file: !1653, line: 1117, baseType: !135, size: 64, offset: 15872)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2544, file: !1653, line: 1118, baseType: !139, size: 64, offset: 15936)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2544, file: !1653, line: 1119, baseType: !7, size: 32, offset: 16000)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2544, file: !1653, line: 1121, baseType: !407, size: 64, offset: 16064)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2544, file: !1653, line: 1125, baseType: !3162, size: 64, offset: 16128)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1653, line: 43, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2544, file: !1653, line: 1127, baseType: !502, size: 32, offset: 16192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2544, file: !1653, line: 1128, baseType: !7, size: 32, offset: 16224)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2544, file: !1653, line: 1130, baseType: !3167, size: 128, offset: 16256)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3168, line: 37, size: 128, elements: !3169)
!3168 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3167, file: !3168, line: 38, baseType: !85, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3167, file: !3168, line: 39, baseType: !361, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3167, file: !3168, line: 40, baseType: !3173, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3168, line: 24, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2544, file: !1653, line: 1131, baseType: !3176, size: 256, offset: 16384)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3177, line: 12, size: 256, elements: !3178)
!3177 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3176, file: !3177, line: 13, baseType: !641, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3176, file: !3177, line: 14, baseType: !135, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3176, file: !3177, line: 15, baseType: !135, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3176, file: !3177, line: 16, baseType: !630, size: 8, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2544, file: !1653, line: 1134, baseType: !539, size: 64, offset: 16640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2544, file: !1653, line: 1135, baseType: !539, size: 64, offset: 16704)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2544, file: !1653, line: 1138, baseType: !414, size: 32, offset: 16768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2544, file: !1653, line: 1141, baseType: !348, size: 32, offset: 16800)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2544, file: !1653, line: 1143, baseType: !3188, size: 64, offset: 16832)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1653, line: 735, size: 64, elements: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3188, file: !1653, line: 736, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2544, file: !1653, line: 1147, baseType: !1160, size: 128, offset: 16896)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2544, file: !1653, line: 1149, baseType: !2543, size: 64, offset: 17024)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2544, file: !1653, line: 1151, baseType: !3195, size: 64, offset: 17088)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1653, line: 1151, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2544, file: !1653, line: 1188, baseType: !136, size: 64, offset: 17152)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2544, file: !1653, line: 1191, baseType: !3199, size: 64, offset: 17216)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1653, line: 44, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2544, file: !1653, line: 1194, baseType: !3202, size: 64, offset: 17280)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1653, line: 45, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2544, file: !1653, line: 1197, baseType: !3205, size: 64, offset: 17344)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1653, line: 61, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2544, file: !1653, line: 1199, baseType: !3208, size: 64, offset: 17408)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3210, line: 99, size: 128, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3209, file: !3210, line: 100, baseType: !338, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3209, file: !3210, line: 101, baseType: !361, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3209, file: !3210, line: 103, baseType: !187, size: 16, offset: 96)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2544, file: !1653, line: 1202, baseType: !3216, size: 64, offset: 17472)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1653, line: 48, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2544, file: !1653, line: 1205, baseType: !135, size: 64, offset: 17536)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2544, file: !1653, line: 1206, baseType: !3220, size: 64, offset: 17600)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !719, line: 14, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !719, line: 12, size: 384, elements: !3223)
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !719, line: 13, baseType: !3225, size: 384)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3222, file: !719, line: 13, size: 384, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3225, file: !719, line: 13, baseType: !85, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3225, file: !719, line: 13, baseType: !85, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3225, file: !719, line: 13, baseType: !85, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3225, file: !719, line: 13, baseType: !3231, size: 256, offset: 128)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3232, line: 37, size: 256, elements: !3233)
!3232 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3233 = !{!3234, !3239, !3252, !3258, !3267, !3294, !3299}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3231, file: !3232, line: 42, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 39, size: 64, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3235, file: !3232, line: 40, baseType: !2901, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3235, file: !3232, line: 41, baseType: !508, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3231, file: !3232, line: 50, baseType: !3240, size: 192)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 45, size: 192, elements: !3241)
!3241 = !{!3242, !3244, !3245, !3251}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3240, file: !3232, line: 46, baseType: !3243, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !141, line: 95, baseType: !85)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3240, file: !3232, line: 47, baseType: !85, size: 32, offset: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3240, file: !3232, line: 48, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3232, line: 11, baseType: !3247)
!3247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3232, line: 8, size: 64, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3247, file: !3232, line: 9, baseType: !85, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3247, file: !3232, line: 10, baseType: !136, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3240, file: !3232, line: 49, baseType: !85, size: 32, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3231, file: !3232, line: 57, baseType: !3253, size: 128)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 53, size: 128, elements: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3253, file: !3232, line: 54, baseType: !2901, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3253, file: !3232, line: 55, baseType: !508, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3253, file: !3232, line: 56, baseType: !3246, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3231, file: !3232, line: 66, baseType: !3259, size: 256)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 60, size: 256, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3266}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3259, file: !3232, line: 61, baseType: !2901, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3259, file: !3232, line: 62, baseType: !508, size: 32, offset: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3259, file: !3232, line: 63, baseType: !85, size: 32, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3259, file: !3232, line: 64, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !141, line: 94, baseType: !947)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3259, file: !3232, line: 65, baseType: !3265, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3231, file: !3232, line: 105, baseType: !3268, size: 256)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 69, size: 256, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3268, file: !3232, line: 70, baseType: !136, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !3232, line: 79, baseType: !3272, size: 192, offset: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !3232, line: 79, size: 192, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3283, !3288}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3272, file: !3232, line: 81, baseType: !85, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3272, file: !3232, line: 86, baseType: !253, size: 16)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3272, file: !3232, line: 92, baseType: !3277, size: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3272, file: !3232, line: 88, size: 192, elements: !3278)
!3278 = !{!3279, !3281, !3282}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3277, file: !3232, line: 89, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !2697)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3277, file: !3232, line: 90, baseType: !136, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3277, file: !3232, line: 91, baseType: !136, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3272, file: !3232, line: 97, baseType: !3284, size: 96)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3272, file: !3232, line: 94, size: 96, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3284, file: !3232, line: 95, baseType: !3280, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3284, file: !3232, line: 96, baseType: !228, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3272, file: !3232, line: 103, baseType: !3289, size: 128)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3272, file: !3232, line: 99, size: 128, elements: !3290)
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3289, file: !3232, line: 100, baseType: !135, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3289, file: !3232, line: 101, baseType: !228, size: 32, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3289, file: !3232, line: 102, baseType: !228, size: 32, offset: 96)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3231, file: !3232, line: 111, baseType: !3295, size: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 108, size: 128, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3295, file: !3232, line: 109, baseType: !147, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3295, file: !3232, line: 110, baseType: !85, size: 32, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3231, file: !3232, line: 118, baseType: !3300, size: 128)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3232, line: 114, size: 128, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3300, file: !3232, line: 115, baseType: !136, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3300, file: !3232, line: 116, baseType: !85, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3300, file: !3232, line: 117, baseType: !7, size: 32, offset: 96)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2544, file: !1653, line: 1208, baseType: !3085, size: 448, offset: 17664)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2544, file: !1653, line: 1215, baseType: !539, size: 64, offset: 18112)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2544, file: !1653, line: 1217, baseType: !539, size: 64, offset: 18176)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2544, file: !1653, line: 1219, baseType: !539, size: 64, offset: 18240)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2544, file: !1653, line: 1223, baseType: !3310, size: 64, offset: 18304)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3311, line: 99, baseType: !3312)
!3311 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3311, line: 99, size: 64, elements: !3313)
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3312, file: !3311, line: 99, baseType: !192, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2544, file: !1653, line: 1225, baseType: !758, size: 32, offset: 18368)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2544, file: !1653, line: 1226, baseType: !85, size: 32, offset: 18400)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2544, file: !1653, line: 1227, baseType: !85, size: 32, offset: 18432)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2544, file: !1653, line: 1231, baseType: !3319, size: 64, offset: 18496)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1653, line: 1231, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2544, file: !1653, line: 1233, baseType: !382, size: 128, offset: 18560)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2544, file: !1653, line: 1240, baseType: !3323, size: 64, offset: 18688)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1653, line: 62, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2544, file: !1653, line: 1242, baseType: !3326, size: 64, offset: 18752)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1653, line: 1242, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2544, file: !1653, line: 1244, baseType: !382, size: 128, offset: 18816)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2544, file: !1653, line: 1245, baseType: !3330, size: 64, offset: 18944)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1653, line: 51, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2544, file: !1653, line: 1246, baseType: !334, size: 256, offset: 19008)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2544, file: !1653, line: 1247, baseType: !7, size: 32, offset: 19264)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2544, file: !1653, line: 1250, baseType: !3335, size: 64, offset: 19328)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1653, line: 57, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2544, file: !1653, line: 1251, baseType: !334, size: 256, offset: 19392)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2544, file: !1653, line: 1252, baseType: !382, size: 128, offset: 19648)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2544, file: !1653, line: 1259, baseType: !1651, size: 64, offset: 19776)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2544, file: !1653, line: 1260, baseType: !253, size: 16, offset: 19840)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2544, file: !1653, line: 1261, baseType: !253, size: 16, offset: 19856)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2544, file: !1653, line: 1314, baseType: !3343, size: 64, offset: 19904)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3345, line: 62, size: 256, align: 256, elements: !3346)
!3345 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3344, file: !3345, line: 75, baseType: !228, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3344, file: !3345, line: 90, baseType: !228, size: 32, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3344, file: !3345, line: 112, baseType: !540, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3344, file: !3345, line: 132, baseType: !228, size: 32, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3344, file: !3345, line: 140, baseType: !228, size: 32, offset: 160)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3344, file: !3345, line: 149, baseType: !228, size: 32, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3344, file: !3345, line: 154, baseType: !3354, offset: 224)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, elements: !498)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2544, file: !1653, line: 1315, baseType: !596, size: 32, offset: 19968)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2544, file: !1653, line: 1316, baseType: !596, size: 32, offset: 20000)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2544, file: !1653, line: 1321, baseType: !135, size: 64, offset: 20032)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2544, file: !1653, line: 1325, baseType: !85, size: 32, offset: 20096)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2544, file: !1653, line: 1326, baseType: !85, size: 32, offset: 20128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2544, file: !1653, line: 1327, baseType: !85, size: 32, offset: 20160)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2544, file: !1653, line: 1328, baseType: !85, size: 32, offset: 20192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2544, file: !1653, line: 1329, baseType: !404, size: 128, align: 64, offset: 20224)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2544, file: !1653, line: 1332, baseType: !3364, size: 128, offset: 20352)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3365, line: 51, size: 128, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3366 = !{!3367, !3372, !3373}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3364, file: !3365, line: 60, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3369, line: 7, size: 64, elements: !3370)
!3369 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3368, file: !3369, line: 12, baseType: !2771, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3364, file: !3365, line: 63, baseType: !630, size: 8, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3364, file: !3365, line: 70, baseType: !630, size: 8, offset: 72)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2544, file: !1653, line: 1335, baseType: !3375, size: 64, offset: 20480)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1653, line: 59, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2544, file: !1653, line: 1337, baseType: !3378, size: 128, offset: 20544)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3365, line: 39, size: 128, elements: !3379)
!3379 = !{!3380, !3381, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3378, file: !3365, line: 40, baseType: !1178, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3378, file: !3365, line: 42, baseType: !228, size: 32, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3378, file: !3365, line: 43, baseType: !228, size: 32, offset: 96)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2544, file: !1653, line: 1340, baseType: !3384, size: 64, offset: 20672)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1653, line: 69, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2544, file: !1653, line: 1351, baseType: !85, size: 32, offset: 20736)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2544, file: !1653, line: 1352, baseType: !85, size: 32, offset: 20768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2544, file: !1653, line: 1354, baseType: !135, size: 64, offset: 20800)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2544, file: !1653, line: 1364, baseType: !539, size: 64, offset: 20864)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2544, file: !1653, line: 1365, baseType: !539, size: 64, offset: 20928)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2544, file: !1653, line: 1412, baseType: !135, size: 64, offset: 20992)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2544, file: !1653, line: 1453, baseType: !3393, size: 64, offset: 21056)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1653, line: 1453, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2544, file: !1653, line: 1457, baseType: !3396, size: 64, offset: 21120)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3398)
!3398 = !{!3399, !3400, !3419, !3422, !3423, !3456, !3466}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3397, file: !57, line: 62, baseType: !56, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, scope: !3397, file: !57, line: 64, baseType: !3401, size: 192, offset: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3397, file: !57, line: 64, size: 192, elements: !3402)
!3402 = !{!3403, !3414}
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !57, line: 65, baseType: !3404, size: 192)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3401, file: !57, line: 65, size: 192, elements: !3405)
!3405 = !{!3406, !3413}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3404, file: !57, line: 66, baseType: !3407, size: 128)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3408, line: 50, size: 128, elements: !3409)
!3408 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3409 = !{!3410, !3411, !3412}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3407, file: !3408, line: 52, baseType: !135, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3407, file: !3408, line: 54, baseType: !7, size: 32, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3407, file: !3408, line: 55, baseType: !7, size: 32, offset: 96)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3404, file: !57, line: 67, baseType: !135, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !57, line: 70, baseType: !3415, size: 192)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3401, file: !57, line: 70, size: 192, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3415, file: !57, line: 71, baseType: !404, size: 128, align: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3415, file: !57, line: 72, baseType: !135, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3397, file: !57, line: 76, baseType: !3420, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3397, file: !57, line: 77, baseType: !135, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3397, file: !57, line: 79, baseType: !3424, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3408, line: 25, size: 256, elements: !3426)
!3426 = !{!3427, !3433, !3437}
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !3408, line: 26, baseType: !3428, size: 128)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3425, file: !3408, line: 26, size: 128, elements: !3429)
!3429 = !{!3430, !3432}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3428, file: !3408, line: 27, baseType: !3431, size: 128)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 128, elements: !2959)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3428, file: !3408, line: 28, baseType: !3431, size: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3425, file: !3408, line: 31, baseType: !3434, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3436)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3408, line: 23, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !3408, line: 33, baseType: !3438, size: 64, offset: 192)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3425, file: !3408, line: 33, size: 64, elements: !3439)
!3439 = !{!3440, !3446, !3451}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3438, file: !3408, line: 38, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3408, line: 34, size: 64, elements: !3442)
!3442 = !{!3443, !3444, !3445}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3441, file: !3408, line: 35, baseType: !556, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3441, file: !3408, line: 36, baseType: !369, size: 8, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3441, file: !3408, line: 37, baseType: !369, size: 8, offset: 40)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3438, file: !3408, line: 42, baseType: !3447, size: 16)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3408, line: 39, size: 16, elements: !3448)
!3448 = !{!3449, !3450}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3447, file: !3408, line: 40, baseType: !369, size: 8)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3447, file: !3408, line: 41, baseType: !369, size: 8, offset: 8)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3438, file: !3408, line: 46, baseType: !3452, size: 16)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3408, line: 43, size: 16, elements: !3453)
!3453 = !{!3454, !3455}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3452, file: !3408, line: 44, baseType: !369, size: 8)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3452, file: !3408, line: 45, baseType: !369, size: 8, offset: 8)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3397, file: !57, line: 81, baseType: !3457, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3458, file: !57, line: 86, baseType: !3420, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3458, file: !57, line: 87, baseType: !135, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3458, file: !57, line: 88, baseType: !135, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3458, file: !57, line: 89, baseType: !135, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3458, file: !57, line: 90, baseType: !630, size: 8, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3458, file: !57, line: 92, baseType: !3457, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3397, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2544, file: !1653, line: 1463, baseType: !3468, offset: 21184)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1653, line: 739, elements: !1467)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2544, file: !1653, line: 1470, baseType: !404, size: 128, align: 64, offset: 21184)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2544, file: !1653, line: 1471, baseType: !461, size: 32, offset: 21312)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2544, file: !1653, line: 1472, baseType: !85, size: 32, offset: 21344)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2544, file: !1653, line: 1474, baseType: !2543, size: 64, offset: 21376)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2544, file: !1653, line: 1475, baseType: !2068, size: 320, offset: 21440)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2544, file: !1653, line: 1478, baseType: !3475, size: 64, offset: 21760)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1653, line: 1478, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2544, file: !1653, line: 1482, baseType: !461, size: 32, offset: 21824)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2544, file: !1653, line: 1489, baseType: !136, size: 64, offset: 21888)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2544, file: !1653, line: 1504, baseType: !136, size: 64, offset: 21952)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2544, file: !1653, line: 1505, baseType: !540, size: 64, offset: 22016)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2544, file: !1653, line: 1506, baseType: !539, size: 64, offset: 22080)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2544, file: !1653, line: 1507, baseType: !540, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2544, file: !1653, line: 1508, baseType: !540, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2544, file: !1653, line: 1509, baseType: !540, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2544, file: !1653, line: 1510, baseType: !404, size: 128, align: 64, offset: 22208)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2544, file: !1653, line: 1511, baseType: !85, size: 32, offset: 22336)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2544, file: !1653, line: 1515, baseType: !3488, size: 64, offset: 22400)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !399, line: 56, size: 64, elements: !3489)
!3489 = !{!3490}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3488, file: !399, line: 57, baseType: !402, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2544, file: !1653, line: 1518, baseType: !3488, size: 64, offset: 22464)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2544, file: !1653, line: 1528, baseType: !404, size: 128, align: 64, offset: 22528)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2544, file: !1653, line: 1552, baseType: !3494, size: 35328, offset: 23040)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3495, line: 430, size: 35328, elements: !3496)
!3495 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3496 = !{!3497, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3526, !3527, !3528, !3529, !3530, !3531, !3534, !3535, !3536, !3537}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3494, file: !3495, line: 432, baseType: !3498, size: 192)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3499, size: 192, elements: !453)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3500, line: 16, size: 64, elements: !3501)
!3500 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3499, file: !3500, line: 17, baseType: !324, size: 16)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3499, file: !3500, line: 18, baseType: !324, size: 16, offset: 16)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3499, file: !3500, line: 19, baseType: !324, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3499, file: !3500, line: 19, baseType: !324, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3499, file: !3500, line: 19, baseType: !324, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3499, file: !3500, line: 19, baseType: !324, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3499, file: !3500, line: 19, baseType: !324, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3499, file: !3500, line: 20, baseType: !324, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3499, file: !3500, line: 20, baseType: !324, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3499, file: !3500, line: 20, baseType: !324, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3499, file: !3500, line: 20, baseType: !324, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3499, file: !3500, line: 20, baseType: !324, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3499, file: !3500, line: 20, baseType: !324, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3494, file: !3495, line: 436, baseType: !135, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3494, file: !3495, line: 440, baseType: !187, size: 16, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3494, file: !3495, line: 441, baseType: !187, size: 16, offset: 272)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3494, file: !3495, line: 442, baseType: !187, size: 16, offset: 288)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3494, file: !3495, line: 443, baseType: !187, size: 16, offset: 304)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3494, file: !3495, line: 447, baseType: !135, size: 64, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3494, file: !3495, line: 448, baseType: !135, size: 64, offset: 384)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3494, file: !3495, line: 459, baseType: !3523, size: 256, offset: 448)
!3523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3524, size: 256, elements: !479)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3495, line: 428, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3494, file: !3495, line: 461, baseType: !135, size: 64, offset: 704)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3494, file: !3495, line: 463, baseType: !135, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3494, file: !3495, line: 465, baseType: !135, size: 64, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3494, file: !3495, line: 466, baseType: !135, size: 64, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3494, file: !3495, line: 467, baseType: !135, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3494, file: !3495, line: 473, baseType: !3532, size: 64, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3495, line: 10, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3494, file: !3495, line: 480, baseType: !135, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3494, file: !3495, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3494, file: !3495, line: 491, baseType: !596, size: 32, offset: 1184)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3494, file: !3495, line: 501, baseType: !3538, size: 33792, offset: 1536)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3539, line: 448, size: 33792, elements: !3540)
!3539 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3540 = !{!3541, !3542, !3543, !3703, !3704, !3710, !3711}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3538, file: !3539, line: 461, baseType: !7, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3538, file: !3539, line: 468, baseType: !135, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3538, file: !3539, line: 476, baseType: !3544, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3539, line: 356, size: 33280, align: 512, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3545, file: !3539, line: 358, baseType: !7, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3545, file: !3539, line: 361, baseType: !7, size: 32, offset: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3545, file: !3539, line: 364, baseType: !539, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3545, file: !3539, line: 367, baseType: !539, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3545, file: !3539, line: 370, baseType: !539, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3545, file: !3539, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3545, file: !3539, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3545, file: !3539, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3545, file: !3539, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3545, file: !3539, line: 397, baseType: !3557, size: 32768, offset: 512)
!3557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3539, line: 348, size: 32768, elements: !3558)
!3558 = !{!3559, !3574, !3609, !3686, !3699}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3557, file: !3539, line: 349, baseType: !3560, size: 896)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3539, line: 12, size: 896, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3573}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3560, file: !3539, line: 13, baseType: !596, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3560, file: !3539, line: 14, baseType: !596, size: 32, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3560, file: !3539, line: 15, baseType: !596, size: 32, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3560, file: !3539, line: 16, baseType: !596, size: 32, offset: 96)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3560, file: !3539, line: 17, baseType: !596, size: 32, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3560, file: !3539, line: 18, baseType: !596, size: 32, offset: 160)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3560, file: !3539, line: 19, baseType: !596, size: 32, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3560, file: !3539, line: 22, baseType: !3570, size: 640, offset: 224)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 640, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 20)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3560, file: !3539, line: 25, baseType: !596, size: 32, offset: 864)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3557, file: !3539, line: 350, baseType: !3575, size: 4096, align: 128)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3539, line: 34, size: 4096, align: 128, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3596, !3597, !3598, !3600, !3602, !3604}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3575, file: !3539, line: 35, baseType: !324, size: 16)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3575, file: !3539, line: 36, baseType: !324, size: 16, offset: 16)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3575, file: !3539, line: 37, baseType: !324, size: 16, offset: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3575, file: !3539, line: 38, baseType: !324, size: 16, offset: 48)
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !3539, line: 39, baseType: !3582, size: 128, offset: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3575, file: !3539, line: 39, size: 128, elements: !3583)
!3583 = !{!3584, !3589}
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !3539, line: 40, baseType: !3585, size: 128)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !3539, line: 40, size: 128, elements: !3586)
!3586 = !{!3587, !3588}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3585, file: !3539, line: 41, baseType: !539, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3585, file: !3539, line: 42, baseType: !539, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !3539, line: 44, baseType: !3590, size: 128)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !3539, line: 44, size: 128, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3590, file: !3539, line: 45, baseType: !596, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3590, file: !3539, line: 46, baseType: !596, size: 32, offset: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3590, file: !3539, line: 47, baseType: !596, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3590, file: !3539, line: 48, baseType: !596, size: 32, offset: 96)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3575, file: !3539, line: 51, baseType: !596, size: 32, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3575, file: !3539, line: 52, baseType: !596, size: 32, offset: 224)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3575, file: !3539, line: 55, baseType: !3599, size: 1024, offset: 256)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 1024, elements: !231)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3575, file: !3539, line: 58, baseType: !3601, size: 2048, offset: 1280)
!3601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 2048, elements: !1090)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3575, file: !3539, line: 60, baseType: !3603, size: 384, offset: 3328)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 384, elements: !198)
!3604 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !3539, line: 62, baseType: !3605, size: 384, offset: 3712)
!3605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3575, file: !3539, line: 62, size: 384, elements: !3606)
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3605, file: !3539, line: 63, baseType: !3603, size: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3605, file: !3539, line: 64, baseType: !3603, size: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3557, file: !3539, line: 351, baseType: !3610, size: 1088)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3539, line: 79, size: 1088, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3685}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3610, file: !3539, line: 80, baseType: !596, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3610, file: !3539, line: 81, baseType: !596, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3610, file: !3539, line: 82, baseType: !596, size: 32, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3610, file: !3539, line: 83, baseType: !596, size: 32, offset: 96)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3610, file: !3539, line: 84, baseType: !596, size: 32, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3610, file: !3539, line: 85, baseType: !596, size: 32, offset: 160)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3610, file: !3539, line: 86, baseType: !596, size: 32, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3610, file: !3539, line: 88, baseType: !3570, size: 640, offset: 224)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3610, file: !3539, line: 89, baseType: !369, size: 8, offset: 864)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3610, file: !3539, line: 90, baseType: !369, size: 8, offset: 872)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3610, file: !3539, line: 91, baseType: !369, size: 8, offset: 880)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3610, file: !3539, line: 92, baseType: !369, size: 8, offset: 888)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3610, file: !3539, line: 93, baseType: !369, size: 8, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3610, file: !3539, line: 94, baseType: !369, size: 8, offset: 904)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3610, file: !3539, line: 95, baseType: !3627, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3629, line: 11, size: 128, elements: !3630)
!3629 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3628, file: !3629, line: 12, baseType: !147, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3628, file: !3629, line: 13, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3635, line: 103, size: 1344, elements: !3636)
!3635 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3665, !3666, !3667}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3634, file: !3635, line: 109, baseType: !135, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3634, file: !3635, line: 110, baseType: !135, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3634, file: !3635, line: 111, baseType: !135, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3634, file: !3635, line: 112, baseType: !135, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3634, file: !3635, line: 113, baseType: !135, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3634, file: !3635, line: 114, baseType: !135, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3634, file: !3635, line: 117, baseType: !135, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3634, file: !3635, line: 118, baseType: !135, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3634, file: !3635, line: 119, baseType: !135, size: 64, offset: 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3634, file: !3635, line: 120, baseType: !135, size: 64, offset: 576)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3634, file: !3635, line: 121, baseType: !135, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3634, file: !3635, line: 122, baseType: !135, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3634, file: !3635, line: 123, baseType: !135, size: 64, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3634, file: !3635, line: 124, baseType: !135, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3634, file: !3635, line: 125, baseType: !135, size: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3634, file: !3635, line: 139, baseType: !135, size: 64, offset: 960)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3634, file: !3635, line: 142, baseType: !135, size: 64, offset: 1024)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3634, file: !3635, line: 144, baseType: !3655, size: 64, offset: 1088)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3634, file: !3635, line: 144, size: 64, elements: !3656)
!3656 = !{!3657, !3658, !3659}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3655, file: !3635, line: 146, baseType: !324, size: 16)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3655, file: !3635, line: 148, baseType: !539, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3655, file: !3635, line: 150, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3635, line: 59, size: 64, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3660, file: !3635, line: 61, baseType: !539, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3660, file: !3635, line: 63, baseType: !539, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3660, file: !3635, line: 65, baseType: !539, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3634, file: !3635, line: 153, baseType: !135, size: 64, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3634, file: !3635, line: 154, baseType: !135, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !3634, file: !3635, line: 156, baseType: !3668, size: 64, offset: 1280)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3634, file: !3635, line: 156, size: 64, elements: !3669)
!3669 = !{!3670, !3671, !3672}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3668, file: !3635, line: 158, baseType: !324, size: 16)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3668, file: !3635, line: 160, baseType: !539, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3668, file: !3635, line: 162, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3635, line: 69, size: 64, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3673, file: !3635, line: 71, baseType: !539, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3673, file: !3635, line: 73, baseType: !539, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3673, file: !3635, line: 75, baseType: !539, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3673, file: !3635, line: 77, baseType: !539, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3673, file: !3635, line: 80, baseType: !539, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3673, file: !3635, line: 83, baseType: !539, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3673, file: !3635, line: 86, baseType: !539, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3673, file: !3635, line: 88, baseType: !539, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3673, file: !3635, line: 93, baseType: !539, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3673, file: !3635, line: 100, baseType: !539, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3610, file: !3539, line: 96, baseType: !596, size: 32, offset: 1024)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3557, file: !3539, line: 352, baseType: !3687, size: 4608, align: 512)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3539, line: 333, size: 4608, align: 512, elements: !3688)
!3688 = !{!3689, !3690, !3697}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3687, file: !3539, line: 334, baseType: !3575, size: 4096, align: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3687, file: !3539, line: 335, baseType: !3691, size: 512, offset: 4096)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3539, line: 312, size: 512, elements: !3692)
!3692 = !{!3693, !3694, !3695}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3691, file: !3539, line: 313, baseType: !539, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3691, file: !3539, line: 314, baseType: !539, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3691, file: !3539, line: 315, baseType: !3696, size: 384, offset: 128)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 384, elements: !617)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3687, file: !3539, line: 336, baseType: !3698, offset: 4608)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, elements: !498)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3557, file: !3539, line: 353, baseType: !3700, size: 32768)
!3700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 32768, elements: !3701)
!3701 = !{!3702}
!3702 = !DISubrange(count: 4096)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3538, file: !3539, line: 484, baseType: !3544, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3538, file: !3539, line: 491, baseType: !3705, size: 128, offset: 256)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3539, line: 404, size: 128, elements: !3706)
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3705, file: !3539, line: 424, baseType: !539, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3705, file: !3539, line: 432, baseType: !7, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3705, file: !3539, line: 440, baseType: !7, size: 32, offset: 96)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3538, file: !3539, line: 498, baseType: !3705, size: 128, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3538, file: !3539, line: 508, baseType: !3545, size: 33280, align: 512, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2526, file: !2527, line: 16, baseType: !483, size: 192, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2526, file: !2527, line: 17, baseType: !361, size: 32, offset: 704)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1001, file: !35, line: 1240, baseType: !136, size: 64, offset: 6912)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1001, file: !35, line: 1243, baseType: !596, size: 32, offset: 6976)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1001, file: !35, line: 1245, baseType: !587, size: 64, offset: 7040)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1001, file: !35, line: 1246, baseType: !587, size: 64, offset: 7104)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1001, file: !35, line: 1248, baseType: !228, size: 32, offset: 7168)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1001, file: !35, line: 1249, baseType: !3720, size: 64, offset: 7232)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1001, file: !35, line: 1252, baseType: !3723, size: 256, offset: 7296)
!3723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !231)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1001, file: !35, line: 1253, baseType: !3725, size: 128, offset: 7552)
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3726, line: 21, baseType: !3727)
!3726 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3726, line: 19, size: 128, elements: !3728)
!3728 = !{!3729}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3727, file: !3726, line: 20, baseType: !3730, size: 128)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !2959)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1001, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1001, file: !35, line: 1261, baseType: !334, size: 256, offset: 7744)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1001, file: !35, line: 1267, baseType: !176, size: 64, offset: 8000)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1001, file: !35, line: 1269, baseType: !3735, size: 64, offset: 8064)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3737)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !754, line: 128, size: 1024, align: 512, elements: !3738)
!3738 = !{!3739, !3743, !3744, !3751, !3757, !3761, !3765, !3769, !3770, !3774, !3778, !3783, !3787}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3737, file: !754, line: 129, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!85, !752, !7}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3737, file: !754, line: 130, baseType: !3740, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3737, file: !754, line: 131, baseType: !3745, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!85, !3748, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3737, file: !754, line: 132, baseType: !3752, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!85, !3748, !7, !176, !3755}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3737, file: !754, line: 134, baseType: !3758, size: 64, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!85, !3748}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3737, file: !754, line: 135, baseType: !3762, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!85, !752}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3737, file: !754, line: 136, baseType: !3766, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !752}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3737, file: !754, line: 137, baseType: !3766, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3737, file: !754, line: 138, baseType: !3771, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !752, !792}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3737, file: !754, line: 139, baseType: !3775, size: 64, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!641, !752, !641, !85}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3737, file: !754, line: 140, baseType: !3779, size: 64, offset: 640)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!747, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3737, file: !754, line: 141, baseType: !3784, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!85, !914, !630}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3737, file: !754, line: 142, baseType: !3788, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!752, !752, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1001, file: !35, line: 1271, baseType: !3794, size: 448, offset: 8128)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2308, line: 63, size: 448, elements: !3795)
!3795 = !{!3796, !3801, !3802, !3803, !3804, !3805, !3806}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3794, file: !2308, line: 64, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!135, !3800, !2306}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3794, file: !2308, line: 66, baseType: !3797, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3794, file: !2308, line: 69, baseType: !147, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3794, file: !2308, line: 70, baseType: !85, size: 32, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3794, file: !2308, line: 71, baseType: !7, size: 32, offset: 224)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3794, file: !2308, line: 74, baseType: !382, size: 128, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3794, file: !2308, line: 85, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1001, file: !35, line: 1274, baseType: !338, size: 64, offset: 8576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1001, file: !35, line: 1280, baseType: !338, size: 64, offset: 8640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1001, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1001, file: !35, line: 1286, baseType: !1419, size: 32, offset: 8736)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1001, file: !35, line: 1289, baseType: !2130, size: 64, offset: 8768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1001, file: !35, line: 1290, baseType: !470, size: 64, offset: 8832)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1001, file: !35, line: 1297, baseType: !714, size: 64, offset: 8896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1001, file: !35, line: 1304, baseType: !3816, size: 64, offset: 8960)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3817, line: 49, size: 64, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3818 = !{!3819}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3816, file: !3817, line: 50, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3817, line: 41, size: 512, align: 512, elements: !3822)
!3822 = !{!3823, !3824, !3829}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3821, file: !3817, line: 43, baseType: !414, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3821, file: !3817, line: 45, baseType: !3825, size: 192, offset: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3817, line: 29, size: 192, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3825, file: !3817, line: 30, baseType: !382, size: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3825, file: !3817, line: 32, baseType: !147, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3821, file: !3817, line: 46, baseType: !147, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1001, file: !35, line: 1305, baseType: !3816, size: 64, offset: 9024)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1001, file: !35, line: 1306, baseType: !404, size: 128, align: 64, offset: 9088)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1001, file: !35, line: 1307, baseType: !1600, size: 256, offset: 9216)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1001, file: !35, line: 1309, baseType: !334, size: 256, offset: 9472)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1001, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1001, file: !35, line: 1317, baseType: !414, size: 32, align: 512, offset: 10240)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1001, file: !35, line: 1318, baseType: !382, size: 128, offset: 10304)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1001, file: !35, line: 1320, baseType: !414, size: 32, offset: 10432)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1001, file: !35, line: 1321, baseType: !382, size: 128, offset: 10496)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !793, file: !35, line: 656, baseType: !1151, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !793, file: !35, line: 659, baseType: !136, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !793, file: !35, line: 663, baseType: !135, size: 64, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !35, line: 671, baseType: !3843, size: 32, offset: 704)
!3843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !35, line: 671, size: 32, elements: !3844)
!3844 = !{!3845, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3843, file: !35, line: 672, baseType: !3846, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3843, file: !35, line: 673, baseType: !7, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !793, file: !35, line: 675, baseType: !867, size: 32, offset: 736)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !793, file: !35, line: 676, baseType: !427, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !793, file: !35, line: 677, baseType: !903, size: 128, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !793, file: !35, line: 678, baseType: !903, size: 128, offset: 960)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !793, file: !35, line: 679, baseType: !903, size: 128, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !793, file: !35, line: 680, baseType: !414, size: 32, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !793, file: !35, line: 681, baseType: !187, size: 16, offset: 1248)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !793, file: !35, line: 682, baseType: !369, size: 8, offset: 1264)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !793, file: !35, line: 683, baseType: !369, size: 8, offset: 1272)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !793, file: !35, line: 684, baseType: !2439, size: 64, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !793, file: !35, line: 691, baseType: !135, size: 64, offset: 1344)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !793, file: !35, line: 692, baseType: !571, size: 320, offset: 1408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !793, file: !35, line: 694, baseType: !135, size: 64, offset: 1728)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !793, file: !35, line: 695, baseType: !135, size: 64, offset: 1792)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !793, file: !35, line: 697, baseType: !474, size: 128, offset: 1856)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !793, file: !35, line: 698, baseType: !382, size: 128, offset: 1984)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !793, file: !35, line: 707, baseType: !382, size: 128, offset: 2112)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !793, file: !35, line: 708, baseType: !382, size: 128, offset: 2240)
!3866 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !35, line: 709, baseType: !3867, size: 128, offset: 2368)
!3867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !35, line: 709, size: 128, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3867, file: !35, line: 710, baseType: !470, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3867, file: !35, line: 711, baseType: !404, size: 128, align: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !793, file: !35, line: 713, baseType: !340, size: 64, offset: 2496)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !793, file: !35, line: 714, baseType: !340, size: 64, offset: 2560)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !793, file: !35, line: 715, baseType: !361, size: 32, offset: 2624)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !793, file: !35, line: 716, baseType: !361, size: 32, offset: 2656)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !793, file: !35, line: 717, baseType: !361, size: 32, offset: 2688)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !793, file: !35, line: 719, baseType: !361, size: 32, offset: 2720)
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !35, line: 721, baseType: !3878, size: 64, offset: 2752)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !35, line: 721, size: 64, elements: !3879)
!3879 = !{!3880, !4004}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3878, file: !35, line: 722, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3883)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3884)
!3884 = !{!3885, !3886, !3890, !3894, !3898, !3899, !3900, !3906, !3919, !3923, !3927, !3928, !3932, !3933, !3937, !3942, !3943, !3947, !3951, !3957, !3958, !3962, !3963, !3967, !3971, !3972, !3977, !3981, !3985, !3989, !3993, !3994, !4000}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3883, file: !35, line: 1915, baseType: !1034, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3883, file: !35, line: 1916, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!427, !391, !427, !85}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3883, file: !35, line: 1917, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!945, !391, !641, !139, !1767}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3883, file: !35, line: 1918, baseType: !3895, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!945, !391, !176, !139, !1767}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3883, file: !35, line: 1919, baseType: !1353, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3883, file: !35, line: 1920, baseType: !1353, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3883, file: !35, line: 1921, baseType: !3901, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!85, !1356, !3904, !7}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3883, file: !35, line: 1923, baseType: !3907, size: 64, offset: 448)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!85, !391, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3912)
!3912 = !{!3913, !3918}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3911, file: !35, line: 1859, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3915)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!630, !3910, !176, !85, !427, !539, !7}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3911, file: !35, line: 1860, baseType: !427, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3883, file: !35, line: 1924, baseType: !3920, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!1787, !391, !1789}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3883, file: !35, line: 1925, baseType: !3924, size: 64, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!147, !391, !7, !135}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3883, file: !35, line: 1926, baseType: !3924, size: 64, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3883, file: !35, line: 1927, baseType: !3929, size: 64, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!85, !391, !1433}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3883, file: !35, line: 1928, baseType: !135, size: 64, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3883, file: !35, line: 1929, baseType: !3934, size: 64, offset: 832)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!85, !792, !391}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3883, file: !35, line: 1930, baseType: !3938, size: 64, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!85, !391, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !136)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3883, file: !35, line: 1931, baseType: !3934, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3883, file: !35, line: 1932, baseType: !3944, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!85, !391, !427, !427, !85}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3883, file: !35, line: 1933, baseType: !3948, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!85, !85, !391, !85}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3883, file: !35, line: 1934, baseType: !3952, size: 64, offset: 1152)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!85, !391, !85, !3955}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3883, file: !35, line: 1935, baseType: !1471, size: 64, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3883, file: !35, line: 1936, baseType: !3959, size: 64, offset: 1280)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!85, !85}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3883, file: !35, line: 1937, baseType: !3952, size: 64, offset: 1344)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3883, file: !35, line: 1938, baseType: !3964, size: 64, offset: 1408)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!945, !3375, !391, !1767, !139, !7}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3883, file: !35, line: 1939, baseType: !3968, size: 64, offset: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!945, !391, !1767, !3375, !139, !7}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3883, file: !35, line: 1940, baseType: !1409, size: 64, offset: 1536)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3883, file: !35, line: 1941, baseType: !3973, size: 64, offset: 1600)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!85, !391, !85, !3976, !1330}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3883, file: !35, line: 1942, baseType: !3978, size: 64, offset: 1664)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!147, !391, !85, !427, !427}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3883, file: !35, line: 1944, baseType: !3982, size: 64, offset: 1728)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !1743, !391}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3883, file: !35, line: 1948, baseType: !3986, size: 64, offset: 1792)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!945, !391, !427, !391, !427, !139, !7}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3883, file: !35, line: 1950, baseType: !3990, size: 64, offset: 1856)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!427, !391, !427, !391, !427, !427, !7}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3883, file: !35, line: 1953, baseType: !3944, size: 64, offset: 1920)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3883, file: !35, line: 1954, baseType: !3995, size: 64, offset: 1984)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!85, !3998, !7}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3883, file: !35, line: 1955, baseType: !4001, size: 64, offset: 2048)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!85, !3998, !3904, !7}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3878, file: !35, line: 723, baseType: !2197, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !793, file: !35, line: 725, baseType: !4006, size: 64, offset: 2816)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !793, file: !35, line: 726, baseType: !1152, size: 1536, align: 64, offset: 2880)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !793, file: !35, line: 727, baseType: !382, size: 128, offset: 4416)
!4010 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !35, line: 728, baseType: !4011, size: 64, offset: 4544)
!4011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !35, line: 728, size: 64, elements: !4012)
!4012 = !{!4013, !4014, !4017, !4018}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4011, file: !35, line: 729, baseType: !3375, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4011, file: !35, line: 730, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4011, file: !35, line: 731, baseType: !641, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4011, file: !35, line: 732, baseType: !7, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !793, file: !35, line: 735, baseType: !228, size: 32, offset: 4608)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !793, file: !35, line: 738, baseType: !228, size: 32, offset: 4640)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !793, file: !35, line: 739, baseType: !3720, size: 64, offset: 4672)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !793, file: !35, line: 750, baseType: !136, size: 64, offset: 4736)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !753, file: !754, line: 91, baseType: !4024, size: 256, offset: 448)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !231)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !753, file: !754, line: 94, baseType: !4026, size: 64, offset: 704)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4027, line: 25, size: 64, elements: !4028)
!4027 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4028 = !{!4029}
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4026, file: !4027, line: 26, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4026, file: !4027, line: 26, size: 64, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4030, file: !4027, line: 28, baseType: !540, size: 64, align: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, scope: !4030, file: !4027, line: 30, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !4027, line: 30, size: 64, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4034, file: !4027, line: 31, baseType: !414, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4034, file: !4027, line: 32, baseType: !85, size: 32, offset: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !753, file: !754, line: 95, baseType: !3735, size: 64, offset: 768)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !753, file: !754, line: 96, baseType: !1000, size: 64, offset: 832)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !753, file: !754, line: 97, baseType: !135, size: 64, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !753, file: !754, line: 98, baseType: !136, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_member, scope: !753, file: !754, line: 100, baseType: !4043, size: 128, offset: 1024)
!4043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !754, line: 100, size: 128, elements: !4044)
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4043, file: !754, line: 101, baseType: !382, size: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4043, file: !754, line: 102, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !753, file: !754, line: 104, baseType: !382, size: 128, offset: 1152)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !753, file: !754, line: 105, baseType: !382, size: 128, offset: 1280)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !753, file: !754, line: 113, baseType: !4051, size: 128, offset: 1408)
!4051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !754, line: 109, size: 128, elements: !4052)
!4052 = !{!4053, !4054, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4051, file: !754, line: 110, baseType: !474, size: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4051, file: !754, line: 111, baseType: !768, size: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4051, file: !754, line: 112, baseType: !404, size: 128, align: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !748, file: !749, line: 72, baseType: !1000, size: 64, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !748, file: !749, line: 73, baseType: !85, size: 32, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !748, file: !749, line: 74, baseType: !832, size: 64, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !743, file: !744, line: 10, baseType: !752, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !392, file: !35, line: 1015, baseType: !792, size: 64, offset: 1344)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !392, file: !35, line: 1016, baseType: !3881, size: 64, offset: 1408)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !392, file: !35, line: 1018, baseType: !539, size: 64, offset: 1472)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !392, file: !35, line: 1020, baseType: !136, size: 64, offset: 1536)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !392, file: !35, line: 1023, baseType: !136, size: 64, offset: 1600)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !392, file: !35, line: 1027, baseType: !4066, size: 64, offset: 1664)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !392, file: !35, line: 1029, baseType: !1151, size: 64, offset: 1728)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !392, file: !35, line: 1030, baseType: !1419, size: 32, offset: 1792)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !392, file: !35, line: 1031, baseType: !1419, size: 32, offset: 1824)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !172, file: !173, line: 169, baseType: !4071, size: 64, offset: 2048)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !173, line: 24, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !172, file: !173, line: 171, baseType: !7, size: 32, offset: 2112)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !172, file: !173, line: 172, baseType: !2068, size: 320, offset: 2176)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !172, file: !173, line: 174, baseType: !4076, size: 64, offset: 2496)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !207)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !172, file: !173, line: 176, baseType: !4078, size: 64, offset: 2560)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !173, line: 176, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !172, file: !173, line: 178, baseType: !4081, size: 64, offset: 2624)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !182, line: 93, size: 192, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4082, file: !182, line: 94, baseType: !557, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4082, file: !182, line: 95, baseType: !557, size: 32, offset: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4082, file: !182, line: 96, baseType: !557, size: 32, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4082, file: !182, line: 97, baseType: !557, size: 32, offset: 96)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4082, file: !182, line: 98, baseType: !557, size: 32, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4082, file: !182, line: 99, baseType: !557, size: 32, offset: 160)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !172, file: !173, line: 180, baseType: !197, size: 768, offset: 2688)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !172, file: !173, line: 181, baseType: !192, size: 64, offset: 3456)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !172, file: !173, line: 182, baseType: !192, size: 64, offset: 3520)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !172, file: !173, line: 183, baseType: !192, size: 64, offset: 3584)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !172, file: !173, line: 185, baseType: !4095, size: 64, offset: 3648)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!85, !171}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !172, file: !173, line: 186, baseType: !4099, size: 64, offset: 3712)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !171}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !172, file: !173, line: 187, baseType: !4103, size: 64, offset: 3776)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!85, !171, !391}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !172, file: !173, line: 188, baseType: !4107, size: 64, offset: 3840)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!85, !171, !7, !7, !85}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !172, file: !173, line: 190, baseType: !4111, size: 64, offset: 3904)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !173, line: 345, size: 576, elements: !4113)
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4186, !4187}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4112, file: !173, line: 347, baseType: !136, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4112, file: !173, line: 349, baseType: !85, size: 32, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4112, file: !173, line: 350, baseType: !176, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4112, file: !173, line: 352, baseType: !171, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4112, file: !173, line: 353, baseType: !4119, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !173, line: 310, size: 960, elements: !4121)
!4121 = !{!4122, !4123, !4127, !4138, !4142, !4146, !4175, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4120, file: !173, line: 312, baseType: !136, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4120, file: !173, line: 314, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !4111, !7, !7, !85}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4120, file: !173, line: 315, baseType: !4128, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !4111, !4131, !7}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4133)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !173, line: 32, size: 64, elements: !4134)
!4134 = !{!4135, !4136, !4137}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4133, file: !173, line: 33, baseType: !185, size: 16)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4133, file: !173, line: 34, baseType: !185, size: 16, offset: 16)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4133, file: !173, line: 35, baseType: !557, size: 32, offset: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4120, file: !173, line: 317, baseType: !4139, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!630, !4111, !7, !7, !85}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4120, file: !173, line: 318, baseType: !4143, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!630, !4119, !171}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4120, file: !173, line: 319, baseType: !4147, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!85, !4119, !171, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4152)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4153, line: 362, size: 1600, elements: !4154)
!4153 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4154 = !{!4155, !4157, !4158, !4159, !4160, !4161, !4163, !4165, !4166, !4167, !4168, !4169, !4170, !4172, !4173, !4174}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4152, file: !4153, line: 364, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4153, line: 15, baseType: !135)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4152, file: !4153, line: 366, baseType: !185, size: 16, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4152, file: !4153, line: 367, baseType: !185, size: 16, offset: 80)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4152, file: !4153, line: 368, baseType: !185, size: 16, offset: 96)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4152, file: !4153, line: 369, baseType: !185, size: 16, offset: 112)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4152, file: !4153, line: 371, baseType: !4162, size: 64, offset: 128)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4156, size: 64, elements: !193)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4152, file: !4153, line: 372, baseType: !4164, size: 768, offset: 192)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4156, size: 768, elements: !198)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4152, file: !4153, line: 373, baseType: !4162, size: 64, offset: 960)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4152, file: !4153, line: 374, baseType: !4162, size: 64, offset: 1024)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4152, file: !4153, line: 375, baseType: !4162, size: 64, offset: 1088)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4152, file: !4153, line: 376, baseType: !4162, size: 64, offset: 1152)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4152, file: !4153, line: 377, baseType: !4162, size: 64, offset: 1216)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4152, file: !4153, line: 378, baseType: !4171, size: 128, offset: 1280)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4156, size: 128, elements: !207)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4152, file: !4153, line: 379, baseType: !4162, size: 64, offset: 1408)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4152, file: !4153, line: 380, baseType: !4162, size: 64, offset: 1472)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4152, file: !4153, line: 382, baseType: !4156, size: 64, offset: 1536)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4120, file: !173, line: 320, baseType: !4176, size: 64, offset: 384)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !4111}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4120, file: !173, line: 321, baseType: !4176, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4120, file: !173, line: 323, baseType: !630, size: 8, offset: 512)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4120, file: !173, line: 324, baseType: !85, size: 32, offset: 544)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4120, file: !173, line: 325, baseType: !176, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4120, file: !173, line: 327, baseType: !4150, size: 64, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4120, file: !173, line: 329, baseType: !382, size: 128, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4120, file: !173, line: 330, baseType: !382, size: 128, offset: 832)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4112, file: !173, line: 355, baseType: !382, size: 128, offset: 320)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4112, file: !173, line: 356, baseType: !382, size: 128, offset: 448)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !172, file: !173, line: 192, baseType: !414, size: 32, offset: 3968)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !172, file: !173, line: 193, baseType: !334, size: 256, offset: 4032)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !172, file: !173, line: 195, baseType: !7, size: 32, offset: 4288)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !172, file: !173, line: 196, baseType: !630, size: 8, offset: 4320)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !173, line: 198, baseType: !4193, size: 5824, offset: 4352)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4194)
!4194 = !{!4195, !4196, !4198, !4201, !4202, !4255, !4338, !4339, !4340, !4341, !4342, !4349, !4441, !4454, !4464, !4468, !4470, !4471, !4472, !4476, !4483, !4484, !4487, !4490, !4494, !4497, !4498, !4499, !4500, !4501, !4502, !4532, !4533, !4534, !4537, !4540, !4549, !4550, !4551, !4552, !4553, !4554}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4193, file: !70, line: 706, baseType: !1047, size: 512)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4193, file: !70, line: 707, baseType: !4197, size: 64, offset: 512)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4193, file: !70, line: 709, baseType: !4199, size: 64, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4193, file: !70, line: 711, baseType: !176, size: 64, offset: 640)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4193, file: !70, line: 712, baseType: !4203, size: 64, offset: 704)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4215, !4220, !4224}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !70, line: 90, baseType: !176, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4205, file: !70, line: 91, baseType: !1127, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4205, file: !70, line: 92, baseType: !4210, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!85, !4213, !1083}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4193)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4205, file: !70, line: 93, baseType: !4216, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!641, !4213, !4219, !1696, !1697}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4205, file: !70, line: 95, baseType: !4221, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !4197}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4205, file: !70, line: 97, baseType: !4225, size: 64, offset: 320)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4227)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4228)
!4228 = !{!4229, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4227, file: !77, line: 287, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!85, !4197}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4227, file: !77, line: 288, baseType: !4221, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4227, file: !77, line: 289, baseType: !4230, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4227, file: !77, line: 290, baseType: !4230, size: 64, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4227, file: !77, line: 291, baseType: !4230, size: 64, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4227, file: !77, line: 292, baseType: !4230, size: 64, offset: 320)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4227, file: !77, line: 293, baseType: !4230, size: 64, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4227, file: !77, line: 294, baseType: !4230, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4227, file: !77, line: 295, baseType: !4230, size: 64, offset: 512)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4227, file: !77, line: 296, baseType: !4230, size: 64, offset: 576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4227, file: !77, line: 297, baseType: !4230, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4227, file: !77, line: 298, baseType: !4230, size: 64, offset: 704)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4227, file: !77, line: 299, baseType: !4230, size: 64, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4227, file: !77, line: 300, baseType: !4230, size: 64, offset: 832)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4227, file: !77, line: 301, baseType: !4230, size: 64, offset: 896)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4227, file: !77, line: 302, baseType: !4230, size: 64, offset: 960)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4227, file: !77, line: 303, baseType: !4230, size: 64, offset: 1024)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4227, file: !77, line: 304, baseType: !4230, size: 64, offset: 1088)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4227, file: !77, line: 305, baseType: !4230, size: 64, offset: 1152)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4227, file: !77, line: 306, baseType: !4230, size: 64, offset: 1216)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4227, file: !77, line: 307, baseType: !4230, size: 64, offset: 1280)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4227, file: !77, line: 308, baseType: !4230, size: 64, offset: 1344)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4227, file: !77, line: 309, baseType: !4230, size: 64, offset: 1408)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4193, file: !70, line: 714, baseType: !4256, size: 64, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4259, line: 80, size: 1344, elements: !4260)
!4259 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4337}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4258, file: !4259, line: 81, baseType: !176, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4258, file: !4259, line: 82, baseType: !176, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4258, file: !4259, line: 83, baseType: !1127, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4258, file: !4259, line: 84, baseType: !1127, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4258, file: !4259, line: 85, baseType: !1127, size: 64, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4258, file: !4259, line: 87, baseType: !4267, size: 64, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!85, !4197, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4291, !4300, !4301, !4302, !4303, !4304, !4312, !4313, !4314, !4315, !4316, !4317}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !64, line: 97, baseType: !176, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4271, file: !64, line: 98, baseType: !4256, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4271, file: !64, line: 100, baseType: !1034, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4271, file: !64, line: 101, baseType: !176, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4271, file: !64, line: 103, baseType: !630, size: 8, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4271, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4271, file: !64, line: 106, baseType: !4280, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4153, line: 282, size: 1600, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4290}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !4153, line: 283, baseType: !3723, size: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4282, file: !4153, line: 284, baseType: !3723, size: 256, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4282, file: !4153, line: 285, baseType: !4287, size: 1024, offset: 512)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !4288)
!4288 = !{!4289}
!4289 = !DISubrange(count: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4282, file: !4153, line: 286, baseType: !1562, size: 64, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4271, file: !64, line: 107, baseType: !4292, size: 64, offset: 384)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4153, line: 217, size: 256, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4299}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4294, file: !4153, line: 218, baseType: !3730, size: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4294, file: !4153, line: 219, baseType: !4156, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4294, file: !4153, line: 220, baseType: !228, size: 32, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4294, file: !4153, line: 221, baseType: !228, size: 32, offset: 224)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4271, file: !64, line: 109, baseType: !4230, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4271, file: !64, line: 110, baseType: !4221, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4271, file: !64, line: 111, baseType: !4230, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4271, file: !64, line: 112, baseType: !4221, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4271, file: !64, line: 113, baseType: !4305, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!85, !4197, !4308}
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4310)
!4310 = !{!4311}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4309, file: !77, line: 59, baseType: !85, size: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4271, file: !64, line: 114, baseType: !4230, size: 64, offset: 768)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4271, file: !64, line: 115, baseType: !1127, size: 64, offset: 832)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4271, file: !64, line: 116, baseType: !1127, size: 64, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4271, file: !64, line: 118, baseType: !4225, size: 64, offset: 960)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4271, file: !64, line: 119, baseType: !4221, size: 64, offset: 1024)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4271, file: !64, line: 121, baseType: !4318, size: 64, offset: 1088)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4258, file: !4259, line: 88, baseType: !4210, size: 64, offset: 384)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4258, file: !4259, line: 89, baseType: !4230, size: 64, offset: 448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4258, file: !4259, line: 90, baseType: !4221, size: 64, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4258, file: !4259, line: 91, baseType: !4221, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4258, file: !4259, line: 92, baseType: !4221, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4258, file: !4259, line: 94, baseType: !4230, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4258, file: !4259, line: 95, baseType: !4230, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4258, file: !4259, line: 97, baseType: !4305, size: 64, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4258, file: !4259, line: 98, baseType: !4230, size: 64, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4258, file: !4259, line: 100, baseType: !4230, size: 64, offset: 960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4258, file: !4259, line: 102, baseType: !4230, size: 64, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4258, file: !4259, line: 103, baseType: !4221, size: 64, offset: 1088)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4258, file: !4259, line: 105, baseType: !4225, size: 64, offset: 1152)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4258, file: !4259, line: 107, baseType: !4334, size: 64, offset: 1216)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4336)
!4336 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4259, line: 107, flags: DIFlagFwdDecl)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4258, file: !4259, line: 109, baseType: !630, size: 8, offset: 1280)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4193, file: !70, line: 715, baseType: !4270, size: 64, offset: 832)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4193, file: !70, line: 717, baseType: !136, size: 64, offset: 896)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4193, file: !70, line: 719, baseType: !136, size: 64, offset: 960)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4193, file: !70, line: 721, baseType: !334, size: 256, offset: 1024)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4193, file: !70, line: 725, baseType: !4343, size: 448, offset: 1280)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4344)
!4344 = !{!4345, !4346, !4347, !4348}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4343, file: !70, line: 518, baseType: !382, size: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4343, file: !70, line: 519, baseType: !382, size: 128, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4343, file: !70, line: 520, baseType: !382, size: 128, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4343, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4193, file: !70, line: 726, baseType: !4350, size: 2496, offset: 1728)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4434, !4438}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4350, file: !77, line: 664, baseType: !4308, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4350, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4350, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4350, file: !77, line: 667, baseType: !630, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4350, file: !77, line: 668, baseType: !630, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4350, file: !77, line: 669, baseType: !630, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4350, file: !77, line: 670, baseType: !630, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4350, file: !77, line: 671, baseType: !630, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4350, file: !77, line: 672, baseType: !630, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4350, file: !77, line: 673, baseType: !630, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4350, file: !77, line: 674, baseType: !630, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4350, file: !77, line: 675, baseType: !596, size: 32, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4350, file: !77, line: 676, baseType: !414, size: 32, offset: 96)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4350, file: !77, line: 678, baseType: !382, size: 128, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4350, file: !77, line: 679, baseType: !1825, size: 256, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4350, file: !77, line: 680, baseType: !4368, size: 64, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4370, line: 43, size: 1536, elements: !4371)
!4370 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4369, file: !4370, line: 44, baseType: !176, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4369, file: !4370, line: 45, baseType: !85, size: 32, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4369, file: !4370, line: 46, baseType: !382, size: 128, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4369, file: !4370, line: 47, baseType: !414, size: 32, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4369, file: !4370, line: 48, baseType: !4377, size: 64, offset: 320)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4369, file: !4370, line: 49, baseType: !2068, size: 320, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4369, file: !4370, line: 50, baseType: !135, size: 64, offset: 704)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4369, file: !4370, line: 51, baseType: !2662, size: 64, offset: 768)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4369, file: !4370, line: 52, baseType: !2662, size: 64, offset: 832)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4369, file: !4370, line: 53, baseType: !2662, size: 64, offset: 896)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4369, file: !4370, line: 54, baseType: !2662, size: 64, offset: 960)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4369, file: !4370, line: 55, baseType: !2662, size: 64, offset: 1024)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4369, file: !4370, line: 56, baseType: !135, size: 64, offset: 1088)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4369, file: !4370, line: 57, baseType: !135, size: 64, offset: 1152)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4369, file: !4370, line: 58, baseType: !135, size: 64, offset: 1216)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4369, file: !4370, line: 59, baseType: !135, size: 64, offset: 1280)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4369, file: !4370, line: 60, baseType: !135, size: 64, offset: 1344)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4369, file: !4370, line: 61, baseType: !4197, size: 64, offset: 1408)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4369, file: !4370, line: 62, baseType: !630, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4369, file: !4370, line: 63, baseType: !630, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4350, file: !77, line: 681, baseType: !630, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4350, file: !77, line: 682, baseType: !630, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4350, file: !77, line: 683, baseType: !630, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4350, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4350, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4350, file: !77, line: 690, baseType: !2654, size: 512, offset: 640)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4350, file: !77, line: 691, baseType: !539, size: 64, offset: 1152)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4350, file: !77, line: 692, baseType: !1600, size: 256, offset: 1216)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4350, file: !77, line: 693, baseType: !483, size: 192, offset: 1472)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4350, file: !77, line: 694, baseType: !4377, size: 64, offset: 1664)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4350, file: !77, line: 695, baseType: !361, size: 32, offset: 1728)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4350, file: !77, line: 696, baseType: !361, size: 32, offset: 1760)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4350, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4350, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4350, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4350, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4350, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4350, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4350, file: !77, line: 703, baseType: !630, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4350, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4350, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4350, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4350, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4350, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4350, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4350, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4350, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4350, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4350, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4350, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4350, file: !77, line: 715, baseType: !539, size: 64, offset: 2048)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4350, file: !77, line: 716, baseType: !539, size: 64, offset: 2112)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4350, file: !77, line: 717, baseType: !539, size: 64, offset: 2176)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4350, file: !77, line: 718, baseType: !539, size: 64, offset: 2240)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4350, file: !77, line: 720, baseType: !4429, size: 64, offset: 2304)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4431)
!4431 = !{!4432, !4433}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4430, file: !77, line: 633, baseType: !414, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4430, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4350, file: !77, line: 721, baseType: !4435, size: 64, offset: 2368)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !4197, !556}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4350, file: !77, line: 722, baseType: !4439, size: 64, offset: 2432)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4193, file: !70, line: 727, baseType: !4442, size: 64, offset: 4224)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4444)
!4444 = !{!4445, !4446, !4447, !4451, !4452, !4453}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4443, file: !77, line: 743, baseType: !4227, size: 1472)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4443, file: !77, line: 744, baseType: !4230, size: 64, offset: 1472)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4443, file: !77, line: 745, baseType: !4448, size: 64, offset: 1536)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !4197, !630}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4443, file: !77, line: 746, baseType: !4230, size: 64, offset: 1600)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4443, file: !77, line: 747, baseType: !4221, size: 64, offset: 1664)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4443, file: !77, line: 748, baseType: !4221, size: 64, offset: 1728)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4193, file: !70, line: 736, baseType: !4455, size: 128, offset: 4288)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4456)
!4456 = !{!4457, !4461}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4455, file: !70, line: 531, baseType: !4458, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4460, line: 13, flags: DIFlagFwdDecl)
!4460 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4455, file: !70, line: 532, baseType: !4462, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4193, file: !70, line: 738, baseType: !4465, size: 64, offset: 4416)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4467)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4193, file: !70, line: 740, baseType: !4469, size: 64, offset: 4480)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4193, file: !70, line: 741, baseType: !539, size: 64, offset: 4544)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4193, file: !70, line: 746, baseType: !539, size: 64, offset: 4608)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4193, file: !70, line: 747, baseType: !4473, size: 64, offset: 4672)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4193, file: !70, line: 749, baseType: !4477, size: 64, offset: 4736)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4479)
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4478, file: !70, line: 433, baseType: !7, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4478, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4478, file: !70, line: 435, baseType: !135, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4193, file: !70, line: 751, baseType: !382, size: 128, offset: 4800)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4193, file: !70, line: 762, baseType: !4485, size: 64, offset: 4928)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4193, file: !70, line: 770, baseType: !4488, offset: 4992)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4489, line: 5, elements: !1467)
!4489 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4193, file: !70, line: 772, baseType: !4491, size: 64, offset: 4992)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4493, line: 18, flags: DIFlagFwdDecl)
!4493 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4193, file: !70, line: 773, baseType: !4495, size: 64, offset: 5056)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4259, line: 22, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4193, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4193, file: !70, line: 778, baseType: !867, size: 32, offset: 5152)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4193, file: !70, line: 779, baseType: !596, size: 32, offset: 5184)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4193, file: !70, line: 781, baseType: !414, size: 32, offset: 5216)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4193, file: !70, line: 782, baseType: !382, size: 128, offset: 5248)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4193, file: !70, line: 784, baseType: !4503, size: 64, offset: 5376)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4505)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4506, line: 52, size: 768, elements: !4507)
!4506 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4516, !4520, !4521, !4522, !4523, !4527, !4531}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4505, file: !4506, line: 53, baseType: !176, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4505, file: !4506, line: 55, baseType: !1127, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4505, file: !4506, line: 56, baseType: !1127, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4505, file: !4506, line: 58, baseType: !4210, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4505, file: !4506, line: 59, baseType: !4513, size: 64, offset: 256)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!641, !4213, !4219}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4505, file: !4506, line: 61, baseType: !4517, size: 64, offset: 320)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !4503}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4505, file: !4506, line: 62, baseType: !4221, size: 64, offset: 384)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4505, file: !4506, line: 64, baseType: !4230, size: 64, offset: 448)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4505, file: !4506, line: 66, baseType: !1664, size: 64, offset: 512)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4505, file: !4506, line: 67, baseType: !4524, size: 64, offset: 576)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!1562, !4213}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4505, file: !4506, line: 69, baseType: !4528, size: 64, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !4213, !1696, !1697}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4505, file: !4506, line: 71, baseType: !4225, size: 64, offset: 704)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4193, file: !70, line: 785, baseType: !1127, size: 64, offset: 5440)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4193, file: !70, line: 787, baseType: !4221, size: 64, offset: 5504)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4193, file: !70, line: 788, baseType: !4535, size: 64, offset: 5568)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4193, file: !70, line: 789, baseType: !4538, size: 64, offset: 5632)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4193, file: !70, line: 791, baseType: !4541, size: 64, offset: 5696)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4543)
!4543 = !{!4544, !4545, !4546, !4547, !4548}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4542, file: !70, line: 598, baseType: !92, size: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4542, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4542, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4542, file: !70, line: 601, baseType: !630, size: 8, offset: 96)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4542, file: !70, line: 602, baseType: !630, size: 8, offset: 104)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4193, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4193, file: !70, line: 795, baseType: !630, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4193, file: !70, line: 796, baseType: !630, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4193, file: !70, line: 797, baseType: !630, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4193, file: !70, line: 798, baseType: !630, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4193, file: !70, line: 799, baseType: !630, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !172, file: !173, line: 200, baseType: !382, size: 128, offset: 10176)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !173, line: 201, baseType: !382, size: 128, offset: 10304)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !172, file: !173, line: 203, baseType: !7, size: 32, offset: 10432)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !172, file: !173, line: 204, baseType: !7, size: 32, offset: 10464)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !172, file: !173, line: 205, baseType: !4560, size: 64, offset: 10496)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !172, file: !173, line: 207, baseType: !630, size: 8, offset: 10560)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !172, file: !173, line: 209, baseType: !4563, size: 192, offset: 10624)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2662, size: 192, elements: !453)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !172, file: !173, line: 211, baseType: !630, size: 8, offset: 10816)
!4565 = !{!4566, !4567, !4568, !4569, !4570}
!4566 = !DILocalVariable(name: "dev", arg: 1, scope: !168, file: !3, line: 304, type: !171)
!4567 = !DILocalVariable(name: "max_effects", arg: 2, scope: !168, file: !3, line: 304, type: !7)
!4568 = !DILocalVariable(name: "ff", scope: !168, file: !3, line: 306, type: !240)
!4569 = !DILocalVariable(name: "ff_dev_size", scope: !168, file: !3, line: 307, type: !139)
!4570 = !DILocalVariable(name: "i", scope: !168, file: !3, line: 308, type: !85)
!4571 = !DIGlobalVariableExpression(var: !4572, expr: !DIExpression())
!4572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !4573, isLocal: true, isDefinition: true)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 88, elements: !4574)
!4574 = !{!4575}
!4575 = !DISubrange(count: 11)
!4576 = !DIGlobalVariableExpression(var: !4577, expr: !DIExpression())
!4577 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_create271", scope: !2, file: !3, line: 353, type: !136, isLocal: true, isDefinition: true)
!4578 = !DIGlobalVariableExpression(var: !4579, expr: !DIExpression())
!4579 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_destroy272", scope: !2, file: !3, line: 377, type: !136, isLocal: true, isDefinition: true)
!4580 = !DIGlobalVariableExpression(var: !4581, expr: !DIExpression())
!4581 = distinct !DIGlobalVariable(scope: null, file: !123, line: 480, type: !4582, isLocal: true, isDefinition: true)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 168, elements: !4583)
!4583 = !{!4584}
!4584 = !DISubrange(count: 21)
!4585 = !{i32 7, !"Dwarf Version", i32 5}
!4586 = !{i32 2, !"Debug Info Version", i32 3}
!4587 = !{i32 1, !"wchar_size", i32 2}
!4588 = !{i32 8, !"cf-protection-branch", i32 1}
!4589 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4590 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4591 = !{i32 1, !"Code Model", i32 2}
!4592 = !{i32 1, !"override-stack-alignment", i32 8}
!4593 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4594 = distinct !DISubprogram(name: "input_ff_upload", scope: !3, file: !3, line: 91, type: !4595, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4597)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!85, !171, !247, !391}
!4597 = !{!4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605}
!4598 = !DILocalVariable(name: "dev", arg: 1, scope: !4594, file: !3, line: 91, type: !171)
!4599 = !DILocalVariable(name: "effect", arg: 2, scope: !4594, file: !3, line: 91, type: !247)
!4600 = !DILocalVariable(name: "file", arg: 3, scope: !4594, file: !3, line: 92, type: !391)
!4601 = !DILocalVariable(name: "ff", scope: !4594, file: !3, line: 94, type: !240)
!4602 = !DILocalVariable(name: "old", scope: !4594, file: !3, line: 95, type: !247)
!4603 = !DILocalVariable(name: "ret", scope: !4594, file: !3, line: 96, type: !85)
!4604 = !DILocalVariable(name: "id", scope: !4594, file: !3, line: 97, type: !85)
!4605 = !DILabel(scope: !4594, name: "out", file: !3, line: 161)
!4606 = !DILocation(line: 91, column: 39, scope: !4594)
!4607 = !DILocation(line: 91, column: 62, scope: !4594)
!4608 = !DILocation(line: 92, column: 20, scope: !4594)
!4609 = !DILocation(line: 94, column: 2, scope: !4594)
!4610 = !DILocation(line: 94, column: 20, scope: !4594)
!4611 = !DILocation(line: 94, column: 25, scope: !4594)
!4612 = !DILocation(line: 94, column: 30, scope: !4594)
!4613 = !DILocation(line: 95, column: 2, scope: !4594)
!4614 = !DILocation(line: 95, column: 20, scope: !4594)
!4615 = !DILocation(line: 96, column: 2, scope: !4594)
!4616 = !DILocation(line: 96, column: 6, scope: !4594)
!4617 = !DILocation(line: 97, column: 2, scope: !4594)
!4618 = !DILocation(line: 97, column: 6, scope: !4594)
!4619 = !DILocation(line: 99, column: 7, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 99, column: 6)
!4621 = !DILocation(line: 99, column: 6, scope: !4594)
!4622 = !DILocation(line: 100, column: 3, scope: !4620)
!4623 = !DILocation(line: 102, column: 6, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 102, column: 6)
!4625 = !DILocation(line: 102, column: 14, scope: !4624)
!4626 = !DILocation(line: 102, column: 19, scope: !4624)
!4627 = !DILocation(line: 102, column: 35, scope: !4624)
!4628 = !DILocation(line: 102, column: 38, scope: !4624)
!4629 = !DILocation(line: 102, column: 46, scope: !4624)
!4630 = !DILocation(line: 102, column: 51, scope: !4624)
!4631 = !DILocation(line: 102, column: 67, scope: !4624)
!4632 = !DILocation(line: 103, column: 7, scope: !4624)
!4633 = !DILocation(line: 102, column: 6, scope: !4594)
!4634 = !DILocation(line: 105, column: 3, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 103, column: 43)
!4636 = !DILocation(line: 108, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 108, column: 6)
!4638 = !DILocation(line: 108, column: 14, scope: !4637)
!4639 = !DILocation(line: 108, column: 19, scope: !4637)
!4640 = !DILocation(line: 108, column: 34, scope: !4637)
!4641 = !DILocation(line: 109, column: 7, scope: !4637)
!4642 = !DILocation(line: 109, column: 15, scope: !4637)
!4643 = !DILocation(line: 109, column: 26, scope: !4637)
!4644 = !DILocation(line: 109, column: 35, scope: !4637)
!4645 = !DILocation(line: 109, column: 53, scope: !4637)
!4646 = !DILocation(line: 110, column: 7, scope: !4637)
!4647 = !DILocation(line: 110, column: 15, scope: !4637)
!4648 = !DILocation(line: 110, column: 26, scope: !4637)
!4649 = !DILocation(line: 110, column: 35, scope: !4637)
!4650 = !DILocation(line: 110, column: 53, scope: !4637)
!4651 = !DILocation(line: 111, column: 8, scope: !4637)
!4652 = !DILocation(line: 108, column: 6, scope: !4594)
!4653 = !DILocation(line: 113, column: 3, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 111, column: 60)
!4655 = !DILocation(line: 116, column: 7, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 116, column: 6)
!4657 = !DILocation(line: 116, column: 6, scope: !4594)
!4658 = !DILocation(line: 117, column: 23, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 116, column: 42)
!4660 = !DILocation(line: 117, column: 27, scope: !4659)
!4661 = !DILocation(line: 117, column: 9, scope: !4659)
!4662 = !DILocation(line: 117, column: 7, scope: !4659)
!4663 = !DILocation(line: 118, column: 7, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 118, column: 7)
!4665 = !DILocation(line: 118, column: 7, scope: !4659)
!4666 = !DILocation(line: 119, column: 11, scope: !4664)
!4667 = !DILocation(line: 119, column: 4, scope: !4664)
!4668 = !DILocation(line: 120, column: 2, scope: !4659)
!4669 = !DILocation(line: 122, column: 14, scope: !4594)
!4670 = !DILocation(line: 122, column: 18, scope: !4594)
!4671 = !DILocation(line: 122, column: 2, scope: !4594)
!4672 = !DILocation(line: 124, column: 6, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 124, column: 6)
!4674 = !DILocation(line: 124, column: 14, scope: !4673)
!4675 = !DILocation(line: 124, column: 17, scope: !4673)
!4676 = !DILocation(line: 124, column: 6, scope: !4594)
!4677 = !DILocation(line: 125, column: 11, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 125, column: 3)
!4679 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 124, column: 24)
!4680 = !DILocation(line: 125, column: 8, scope: !4678)
!4681 = !DILocation(line: 125, column: 16, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 125, column: 3)
!4683 = !DILocation(line: 125, column: 21, scope: !4682)
!4684 = !DILocation(line: 125, column: 25, scope: !4682)
!4685 = !DILocation(line: 125, column: 19, scope: !4682)
!4686 = !DILocation(line: 125, column: 3, scope: !4678)
!4687 = !DILocation(line: 126, column: 9, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 126, column: 8)
!4689 = !DILocation(line: 126, column: 13, scope: !4688)
!4690 = !DILocation(line: 126, column: 27, scope: !4688)
!4691 = !DILocation(line: 126, column: 8, scope: !4682)
!4692 = !DILocation(line: 127, column: 5, scope: !4688)
!4693 = !DILocation(line: 126, column: 29, scope: !4688)
!4694 = !DILocation(line: 125, column: 40, scope: !4682)
!4695 = !DILocation(line: 125, column: 3, scope: !4682)
!4696 = distinct !{!4696, !4686, !4697, !4698, !4699}
!4697 = !DILocation(line: 127, column: 5, scope: !4678)
!4698 = !{!"llvm.loop.mustprogress"}
!4699 = !{!"llvm.loop.unroll.disable"}
!4700 = !DILocation(line: 129, column: 7, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 129, column: 7)
!4702 = !DILocation(line: 129, column: 13, scope: !4701)
!4703 = !DILocation(line: 129, column: 17, scope: !4701)
!4704 = !DILocation(line: 129, column: 10, scope: !4701)
!4705 = !DILocation(line: 129, column: 7, scope: !4679)
!4706 = !DILocation(line: 130, column: 8, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 129, column: 30)
!4708 = !DILocation(line: 131, column: 4, scope: !4707)
!4709 = !DILocation(line: 134, column: 16, scope: !4679)
!4710 = !DILocation(line: 134, column: 3, scope: !4679)
!4711 = !DILocation(line: 134, column: 11, scope: !4679)
!4712 = !DILocation(line: 134, column: 14, scope: !4679)
!4713 = !DILocation(line: 135, column: 7, scope: !4679)
!4714 = !DILocation(line: 137, column: 2, scope: !4679)
!4715 = !DILocation(line: 138, column: 8, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 137, column: 9)
!4717 = !DILocation(line: 138, column: 16, scope: !4716)
!4718 = !DILocation(line: 138, column: 6, scope: !4716)
!4719 = !DILocation(line: 140, column: 29, scope: !4716)
!4720 = !DILocation(line: 140, column: 33, scope: !4716)
!4721 = !DILocation(line: 140, column: 37, scope: !4716)
!4722 = !DILocation(line: 140, column: 9, scope: !4716)
!4723 = !DILocation(line: 140, column: 7, scope: !4716)
!4724 = !DILocation(line: 141, column: 7, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 141, column: 7)
!4726 = !DILocation(line: 141, column: 7, scope: !4716)
!4727 = !DILocation(line: 142, column: 4, scope: !4725)
!4728 = !DILocation(line: 144, column: 10, scope: !4716)
!4729 = !DILocation(line: 144, column: 14, scope: !4716)
!4730 = !DILocation(line: 144, column: 22, scope: !4716)
!4731 = !DILocation(line: 144, column: 7, scope: !4716)
!4732 = !DILocation(line: 146, column: 33, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 146, column: 7)
!4734 = !DILocation(line: 146, column: 41, scope: !4733)
!4735 = !DILocation(line: 146, column: 8, scope: !4733)
!4736 = !DILocation(line: 146, column: 7, scope: !4716)
!4737 = !DILocation(line: 147, column: 8, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 146, column: 47)
!4739 = !DILocation(line: 148, column: 4, scope: !4738)
!4740 = !DILocation(line: 152, column: 8, scope: !4594)
!4741 = !DILocation(line: 152, column: 12, scope: !4594)
!4742 = !DILocation(line: 152, column: 19, scope: !4594)
!4743 = !DILocation(line: 152, column: 24, scope: !4594)
!4744 = !DILocation(line: 152, column: 32, scope: !4594)
!4745 = !DILocation(line: 152, column: 6, scope: !4594)
!4746 = !DILocation(line: 153, column: 6, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 153, column: 6)
!4748 = !DILocation(line: 153, column: 6, scope: !4594)
!4749 = !DILocation(line: 154, column: 3, scope: !4747)
!4750 = !DILocation(line: 156, column: 17, scope: !4594)
!4751 = !DILocation(line: 156, column: 22, scope: !4594)
!4752 = !DILocation(line: 156, column: 2, scope: !4594)
!4753 = !DILocation(line: 157, column: 2, scope: !4594)
!4754 = !DILocation(line: 157, column: 6, scope: !4594)
!4755 = !DILocation(line: 157, column: 14, scope: !4594)
!4756 = !DILocation(line: 157, column: 21, scope: !4594)
!4757 = !DILocation(line: 157, column: 20, scope: !4594)
!4758 = !DILocation(line: 158, column: 26, scope: !4594)
!4759 = !DILocation(line: 158, column: 2, scope: !4594)
!4760 = !DILocation(line: 158, column: 6, scope: !4594)
!4761 = !DILocation(line: 158, column: 20, scope: !4594)
!4762 = !DILocation(line: 158, column: 24, scope: !4594)
!4763 = !DILocation(line: 159, column: 19, scope: !4594)
!4764 = !DILocation(line: 159, column: 24, scope: !4594)
!4765 = !DILocation(line: 159, column: 2, scope: !4594)
!4766 = !DILocation(line: 161, column: 2, scope: !4594)
!4767 = !DILocation(line: 162, column: 16, scope: !4594)
!4768 = !DILocation(line: 162, column: 20, scope: !4594)
!4769 = !DILocation(line: 162, column: 2, scope: !4594)
!4770 = !DILocation(line: 163, column: 9, scope: !4594)
!4771 = !DILocation(line: 163, column: 2, scope: !4594)
!4772 = !DILocation(line: 164, column: 1, scope: !4594)
!4773 = distinct !DISubprogram(name: "const_test_bit", scope: !4774, file: !4774, line: 166, type: !4775, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4780)
!4774 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!630, !135, !4777}
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4779)
!4779 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!4780 = !{!4781, !4782, !4783, !4784, !4785}
!4781 = !DILocalVariable(name: "nr", arg: 1, scope: !4773, file: !4774, line: 166, type: !135)
!4782 = !DILocalVariable(name: "addr", arg: 2, scope: !4773, file: !4774, line: 166, type: !4777)
!4783 = !DILocalVariable(name: "p", scope: !4773, file: !4774, line: 168, type: !137)
!4784 = !DILocalVariable(name: "mask", scope: !4773, file: !4774, line: 169, type: !135)
!4785 = !DILocalVariable(name: "val", scope: !4773, file: !4774, line: 170, type: !135)
!4786 = !DILocation(line: 166, column: 30, scope: !4773)
!4787 = !DILocation(line: 166, column: 64, scope: !4773)
!4788 = !DILocation(line: 168, column: 2, scope: !4773)
!4789 = !DILocation(line: 168, column: 23, scope: !4773)
!4790 = !DILocation(line: 168, column: 50, scope: !4773)
!4791 = !DILocation(line: 168, column: 57, scope: !4773)
!4792 = !DILocation(line: 168, column: 55, scope: !4773)
!4793 = !DILocation(line: 169, column: 2, scope: !4773)
!4794 = !DILocation(line: 169, column: 16, scope: !4773)
!4795 = !DILocation(line: 169, column: 23, scope: !4773)
!4796 = !DILocation(line: 170, column: 2, scope: !4773)
!4797 = !DILocation(line: 170, column: 16, scope: !4773)
!4798 = !DILocation(line: 170, column: 23, scope: !4773)
!4799 = !DILocation(line: 170, column: 22, scope: !4773)
!4800 = !DILocation(line: 172, column: 12, scope: !4773)
!4801 = !DILocation(line: 172, column: 18, scope: !4773)
!4802 = !DILocation(line: 172, column: 16, scope: !4773)
!4803 = !DILocation(line: 172, column: 10, scope: !4773)
!4804 = !DILocation(line: 172, column: 9, scope: !4773)
!4805 = !DILocation(line: 173, column: 1, scope: !4773)
!4806 = !DILocation(line: 172, column: 2, scope: !4773)
!4807 = distinct !DISubprogram(name: "_test_bit", scope: !4808, file: !4808, line: 139, type: !4775, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4808 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4809 = !{!4810, !4811}
!4810 = !DILocalVariable(name: "nr", arg: 1, scope: !4807, file: !4808, line: 139, type: !135)
!4811 = !DILocalVariable(name: "addr", arg: 2, scope: !4807, file: !4808, line: 139, type: !4777)
!4812 = !DILocation(line: 139, column: 25, scope: !4807)
!4813 = !DILocation(line: 139, column: 59, scope: !4807)
!4814 = !DILocation(line: 141, column: 25, scope: !4807)
!4815 = !DILocation(line: 141, column: 32, scope: !4807)
!4816 = !DILocation(line: 141, column: 30, scope: !4807)
!4817 = !DILocation(line: 141, column: 2, scope: !4807)
!4818 = !DILocation(line: 142, column: 23, scope: !4807)
!4819 = !DILocation(line: 142, column: 27, scope: !4807)
!4820 = !DILocation(line: 142, column: 9, scope: !4807)
!4821 = !DILocation(line: 142, column: 2, scope: !4807)
!4822 = distinct !DISubprogram(name: "compat_effect", scope: !3, file: !3, line: 50, type: !4823, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4825)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!85, !240, !247}
!4825 = !{!4826, !4827, !4828}
!4826 = !DILocalVariable(name: "ff", arg: 1, scope: !4822, file: !3, line: 50, type: !240)
!4827 = !DILocalVariable(name: "effect", arg: 2, scope: !4822, file: !3, line: 50, type: !247)
!4828 = !DILocalVariable(name: "magnitude", scope: !4822, file: !3, line: 52, type: !85)
!4829 = !DILocation(line: 50, column: 44, scope: !4822)
!4830 = !DILocation(line: 50, column: 66, scope: !4822)
!4831 = !DILocation(line: 52, column: 2, scope: !4822)
!4832 = !DILocation(line: 52, column: 6, scope: !4822)
!4833 = !DILocation(line: 54, column: 10, scope: !4822)
!4834 = !DILocation(line: 54, column: 18, scope: !4822)
!4835 = !DILocation(line: 54, column: 2, scope: !4822)
!4836 = !DILocation(line: 56, column: 8, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 56, column: 7)
!4838 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 54, column: 24)
!4839 = !DILocation(line: 56, column: 7, scope: !4838)
!4840 = !DILocation(line: 57, column: 4, scope: !4837)
!4841 = !DILocation(line: 63, column: 15, scope: !4838)
!4842 = !DILocation(line: 63, column: 23, scope: !4838)
!4843 = !DILocation(line: 63, column: 32, scope: !4838)
!4844 = !DILocation(line: 63, column: 49, scope: !4838)
!4845 = !DILocation(line: 64, column: 8, scope: !4838)
!4846 = !DILocation(line: 64, column: 16, scope: !4838)
!4847 = !DILocation(line: 64, column: 25, scope: !4838)
!4848 = !DILocation(line: 64, column: 40, scope: !4838)
!4849 = !DILocation(line: 63, column: 53, scope: !4838)
!4850 = !DILocation(line: 63, column: 13, scope: !4838)
!4851 = !DILocation(line: 66, column: 3, scope: !4838)
!4852 = !DILocation(line: 66, column: 11, scope: !4838)
!4853 = !DILocation(line: 66, column: 16, scope: !4838)
!4854 = !DILocation(line: 67, column: 3, scope: !4838)
!4855 = !DILocation(line: 67, column: 11, scope: !4838)
!4856 = !DILocation(line: 67, column: 22, scope: !4838)
!4857 = !DILocation(line: 67, column: 31, scope: !4838)
!4858 = !DILocation(line: 68, column: 3, scope: !4838)
!4859 = !DILocation(line: 68, column: 11, scope: !4838)
!4860 = !DILocation(line: 68, column: 22, scope: !4838)
!4861 = !DILocation(line: 68, column: 29, scope: !4838)
!4862 = !DILocation(line: 69, column: 34, scope: !4838)
!4863 = !DILocation(line: 69, column: 3, scope: !4838)
!4864 = !DILocation(line: 69, column: 11, scope: !4838)
!4865 = !DILocation(line: 69, column: 22, scope: !4838)
!4866 = !DILocation(line: 69, column: 32, scope: !4838)
!4867 = !DILocation(line: 70, column: 3, scope: !4838)
!4868 = !DILocation(line: 70, column: 11, scope: !4838)
!4869 = !DILocation(line: 70, column: 22, scope: !4838)
!4870 = !DILocation(line: 70, column: 29, scope: !4838)
!4871 = !DILocation(line: 71, column: 3, scope: !4838)
!4872 = !DILocation(line: 71, column: 11, scope: !4838)
!4873 = !DILocation(line: 71, column: 22, scope: !4838)
!4874 = !DILocation(line: 71, column: 28, scope: !4838)
!4875 = !DILocation(line: 72, column: 3, scope: !4838)
!4876 = !DILocation(line: 72, column: 11, scope: !4838)
!4877 = !DILocation(line: 72, column: 22, scope: !4838)
!4878 = !DILocation(line: 72, column: 31, scope: !4838)
!4879 = !DILocation(line: 72, column: 45, scope: !4838)
!4880 = !DILocation(line: 73, column: 3, scope: !4838)
!4881 = !DILocation(line: 73, column: 11, scope: !4838)
!4882 = !DILocation(line: 73, column: 22, scope: !4838)
!4883 = !DILocation(line: 73, column: 31, scope: !4838)
!4884 = !DILocation(line: 73, column: 44, scope: !4838)
!4885 = !DILocation(line: 74, column: 3, scope: !4838)
!4886 = !DILocation(line: 74, column: 11, scope: !4838)
!4887 = !DILocation(line: 74, column: 22, scope: !4838)
!4888 = !DILocation(line: 74, column: 31, scope: !4838)
!4889 = !DILocation(line: 74, column: 43, scope: !4838)
!4890 = !DILocation(line: 75, column: 3, scope: !4838)
!4891 = !DILocation(line: 75, column: 11, scope: !4838)
!4892 = !DILocation(line: 75, column: 22, scope: !4838)
!4893 = !DILocation(line: 75, column: 31, scope: !4838)
!4894 = !DILocation(line: 75, column: 42, scope: !4838)
!4895 = !DILocation(line: 77, column: 3, scope: !4838)
!4896 = !DILocation(line: 81, column: 3, scope: !4838)
!4897 = !DILocation(line: 83, column: 1, scope: !4822)
!4898 = !DISubprogram(name: "mutex_lock", scope: !335, file: !335, line: 227, type: !4899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{null, !4901}
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!4902 = distinct !DISubprogram(name: "check_effect_access", scope: !3, file: !3, line: 23, type: !4903, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4905)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!85, !240, !85, !391}
!4905 = !{!4906, !4907, !4908}
!4906 = !DILocalVariable(name: "ff", arg: 1, scope: !4902, file: !3, line: 23, type: !240)
!4907 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4902, file: !3, line: 23, type: !85)
!4908 = !DILocalVariable(name: "file", arg: 3, scope: !4902, file: !3, line: 24, type: !391)
!4909 = !DILocation(line: 23, column: 50, scope: !4902)
!4910 = !DILocation(line: 23, column: 58, scope: !4902)
!4911 = !DILocation(line: 24, column: 18, scope: !4902)
!4912 = !DILocation(line: 26, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 26, column: 6)
!4914 = !DILocation(line: 26, column: 16, scope: !4913)
!4915 = !DILocation(line: 26, column: 20, scope: !4913)
!4916 = !DILocation(line: 26, column: 23, scope: !4913)
!4917 = !DILocation(line: 26, column: 36, scope: !4913)
!4918 = !DILocation(line: 26, column: 40, scope: !4913)
!4919 = !DILocation(line: 26, column: 33, scope: !4913)
!4920 = !DILocation(line: 26, column: 52, scope: !4913)
!4921 = !DILocation(line: 27, column: 7, scope: !4913)
!4922 = !DILocation(line: 27, column: 11, scope: !4913)
!4923 = !DILocation(line: 27, column: 25, scope: !4913)
!4924 = !DILocation(line: 26, column: 6, scope: !4902)
!4925 = !DILocation(line: 28, column: 3, scope: !4913)
!4926 = !DILocation(line: 30, column: 6, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 30, column: 6)
!4928 = !DILocation(line: 30, column: 11, scope: !4927)
!4929 = !DILocation(line: 30, column: 14, scope: !4927)
!4930 = !DILocation(line: 30, column: 18, scope: !4927)
!4931 = !DILocation(line: 30, column: 32, scope: !4927)
!4932 = !DILocation(line: 30, column: 46, scope: !4927)
!4933 = !DILocation(line: 30, column: 43, scope: !4927)
!4934 = !DILocation(line: 30, column: 6, scope: !4902)
!4935 = !DILocation(line: 31, column: 3, scope: !4927)
!4936 = !DILocation(line: 33, column: 2, scope: !4902)
!4937 = !DILocation(line: 34, column: 1, scope: !4902)
!4938 = distinct !DISubprogram(name: "check_effects_compatible", scope: !3, file: !3, line: 39, type: !4939, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4941)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!85, !247, !247}
!4941 = !{!4942, !4943}
!4942 = !DILocalVariable(name: "e1", arg: 1, scope: !4938, file: !3, line: 39, type: !247)
!4943 = !DILocalVariable(name: "e2", arg: 2, scope: !4938, file: !3, line: 40, type: !247)
!4944 = !DILocation(line: 39, column: 62, scope: !4938)
!4945 = !DILocation(line: 40, column: 27, scope: !4938)
!4946 = !DILocation(line: 42, column: 9, scope: !4938)
!4947 = !DILocation(line: 42, column: 13, scope: !4938)
!4948 = !DILocation(line: 42, column: 21, scope: !4938)
!4949 = !DILocation(line: 42, column: 25, scope: !4938)
!4950 = !DILocation(line: 42, column: 18, scope: !4938)
!4951 = !DILocation(line: 42, column: 30, scope: !4938)
!4952 = !DILocation(line: 43, column: 10, scope: !4938)
!4953 = !DILocation(line: 43, column: 14, scope: !4938)
!4954 = !DILocation(line: 43, column: 19, scope: !4938)
!4955 = !DILocation(line: 43, column: 34, scope: !4938)
!4956 = !DILocation(line: 44, column: 3, scope: !4938)
!4957 = !DILocation(line: 44, column: 7, scope: !4938)
!4958 = !DILocation(line: 44, column: 18, scope: !4938)
!4959 = !DILocation(line: 44, column: 30, scope: !4938)
!4960 = !DILocation(line: 44, column: 34, scope: !4938)
!4961 = !DILocation(line: 44, column: 45, scope: !4938)
!4962 = !DILocation(line: 44, column: 27, scope: !4938)
!4963 = !DILocation(line: 0, scope: !4938)
!4964 = !DILocation(line: 42, column: 2, scope: !4938)
!4965 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4966, file: !4966, line: 374, type: !4967, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4970)
!4966 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4967 = !DISubroutineType(types: !4968)
!4968 = !{null, !4969}
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "lock", arg: 1, scope: !4965, file: !4966, line: 374, type: !4969)
!4972 = !DILocation(line: 374, column: 55, scope: !4965)
!4973 = !DILocation(line: 376, column: 2, scope: !4965)
!4974 = !DILocation(line: 377, column: 1, scope: !4965)
!4975 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4966, file: !4966, line: 399, type: !4967, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4976)
!4976 = !{!4977}
!4977 = !DILocalVariable(name: "lock", arg: 1, scope: !4975, file: !4966, line: 399, type: !4969)
!4978 = !DILocation(line: 399, column: 57, scope: !4975)
!4979 = !DILocation(line: 401, column: 2, scope: !4975)
!4980 = !DILocation(line: 402, column: 1, scope: !4975)
!4981 = !DISubprogram(name: "mutex_unlock", scope: !335, file: !335, line: 246, type: !4899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4982 = distinct !DISubprogram(name: "input_ff_erase", scope: !3, file: !3, line: 210, type: !4983, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!85, !171, !85, !391}
!4985 = !{!4986, !4987, !4988, !4989, !4990}
!4986 = !DILocalVariable(name: "dev", arg: 1, scope: !4982, file: !3, line: 210, type: !171)
!4987 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4982, file: !3, line: 210, type: !85)
!4988 = !DILocalVariable(name: "file", arg: 3, scope: !4982, file: !3, line: 210, type: !391)
!4989 = !DILocalVariable(name: "ff", scope: !4982, file: !3, line: 212, type: !240)
!4990 = !DILocalVariable(name: "ret", scope: !4982, file: !3, line: 213, type: !85)
!4991 = !DILocation(line: 210, column: 38, scope: !4982)
!4992 = !DILocation(line: 210, column: 47, scope: !4982)
!4993 = !DILocation(line: 210, column: 71, scope: !4982)
!4994 = !DILocation(line: 212, column: 2, scope: !4982)
!4995 = !DILocation(line: 212, column: 20, scope: !4982)
!4996 = !DILocation(line: 212, column: 25, scope: !4982)
!4997 = !DILocation(line: 212, column: 30, scope: !4982)
!4998 = !DILocation(line: 213, column: 2, scope: !4982)
!4999 = !DILocation(line: 213, column: 6, scope: !4982)
!5000 = !DILocation(line: 215, column: 7, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 215, column: 6)
!5002 = !DILocation(line: 215, column: 6, scope: !4982)
!5003 = !DILocation(line: 216, column: 3, scope: !5001)
!5004 = !DILocation(line: 218, column: 14, scope: !4982)
!5005 = !DILocation(line: 218, column: 18, scope: !4982)
!5006 = !DILocation(line: 218, column: 2, scope: !4982)
!5007 = !DILocation(line: 219, column: 21, scope: !4982)
!5008 = !DILocation(line: 219, column: 26, scope: !4982)
!5009 = !DILocation(line: 219, column: 37, scope: !4982)
!5010 = !DILocation(line: 219, column: 8, scope: !4982)
!5011 = !DILocation(line: 219, column: 6, scope: !4982)
!5012 = !DILocation(line: 220, column: 16, scope: !4982)
!5013 = !DILocation(line: 220, column: 20, scope: !4982)
!5014 = !DILocation(line: 220, column: 2, scope: !4982)
!5015 = !DILocation(line: 222, column: 9, scope: !4982)
!5016 = !DILocation(line: 222, column: 2, scope: !4982)
!5017 = !DILocation(line: 223, column: 1, scope: !4982)
!5018 = distinct !DISubprogram(name: "erase_effect", scope: !3, file: !3, line: 171, type: !4983, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5019)
!5019 = !{!5020, !5021, !5022, !5023, !5024}
!5020 = !DILocalVariable(name: "dev", arg: 1, scope: !5018, file: !3, line: 171, type: !171)
!5021 = !DILocalVariable(name: "effect_id", arg: 2, scope: !5018, file: !3, line: 171, type: !85)
!5022 = !DILocalVariable(name: "file", arg: 3, scope: !5018, file: !3, line: 172, type: !391)
!5023 = !DILocalVariable(name: "ff", scope: !5018, file: !3, line: 174, type: !240)
!5024 = !DILocalVariable(name: "error", scope: !5018, file: !3, line: 175, type: !85)
!5025 = !DILocation(line: 171, column: 43, scope: !5018)
!5026 = !DILocation(line: 171, column: 52, scope: !5018)
!5027 = !DILocation(line: 172, column: 17, scope: !5018)
!5028 = !DILocation(line: 174, column: 2, scope: !5018)
!5029 = !DILocation(line: 174, column: 20, scope: !5018)
!5030 = !DILocation(line: 174, column: 25, scope: !5018)
!5031 = !DILocation(line: 174, column: 30, scope: !5018)
!5032 = !DILocation(line: 175, column: 2, scope: !5018)
!5033 = !DILocation(line: 175, column: 6, scope: !5018)
!5034 = !DILocation(line: 177, column: 30, scope: !5018)
!5035 = !DILocation(line: 177, column: 34, scope: !5018)
!5036 = !DILocation(line: 177, column: 45, scope: !5018)
!5037 = !DILocation(line: 177, column: 10, scope: !5018)
!5038 = !DILocation(line: 177, column: 8, scope: !5018)
!5039 = !DILocation(line: 178, column: 6, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 178, column: 6)
!5041 = !DILocation(line: 178, column: 6, scope: !5018)
!5042 = !DILocation(line: 179, column: 10, scope: !5040)
!5043 = !DILocation(line: 179, column: 3, scope: !5040)
!5044 = !DILocation(line: 181, column: 17, scope: !5018)
!5045 = !DILocation(line: 181, column: 22, scope: !5018)
!5046 = !DILocation(line: 181, column: 2, scope: !5018)
!5047 = !DILocation(line: 182, column: 2, scope: !5018)
!5048 = !DILocation(line: 182, column: 6, scope: !5018)
!5049 = !DILocation(line: 182, column: 15, scope: !5018)
!5050 = !DILocation(line: 182, column: 20, scope: !5018)
!5051 = !DILocation(line: 183, column: 2, scope: !5018)
!5052 = !DILocation(line: 183, column: 6, scope: !5018)
!5053 = !DILocation(line: 183, column: 20, scope: !5018)
!5054 = !DILocation(line: 183, column: 31, scope: !5018)
!5055 = !DILocation(line: 184, column: 19, scope: !5018)
!5056 = !DILocation(line: 184, column: 24, scope: !5018)
!5057 = !DILocation(line: 184, column: 2, scope: !5018)
!5058 = !DILocation(line: 186, column: 6, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 186, column: 6)
!5060 = !DILocation(line: 186, column: 10, scope: !5059)
!5061 = !DILocation(line: 186, column: 6, scope: !5018)
!5062 = !DILocation(line: 187, column: 11, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 186, column: 17)
!5064 = !DILocation(line: 187, column: 15, scope: !5063)
!5065 = !DILocation(line: 187, column: 21, scope: !5063)
!5066 = !DILocation(line: 187, column: 26, scope: !5063)
!5067 = !DILocation(line: 187, column: 9, scope: !5063)
!5068 = !DILocation(line: 188, column: 7, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 188, column: 7)
!5070 = !DILocation(line: 188, column: 7, scope: !5063)
!5071 = !DILocation(line: 189, column: 19, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 188, column: 14)
!5073 = !DILocation(line: 189, column: 24, scope: !5072)
!5074 = !DILocation(line: 189, column: 4, scope: !5072)
!5075 = !DILocation(line: 190, column: 35, scope: !5072)
!5076 = !DILocation(line: 190, column: 4, scope: !5072)
!5077 = !DILocation(line: 190, column: 8, scope: !5072)
!5078 = !DILocation(line: 190, column: 22, scope: !5072)
!5079 = !DILocation(line: 190, column: 33, scope: !5072)
!5080 = !DILocation(line: 191, column: 21, scope: !5072)
!5081 = !DILocation(line: 191, column: 26, scope: !5072)
!5082 = !DILocation(line: 191, column: 4, scope: !5072)
!5083 = !DILocation(line: 193, column: 11, scope: !5072)
!5084 = !DILocation(line: 193, column: 4, scope: !5072)
!5085 = !DILocation(line: 195, column: 2, scope: !5063)
!5086 = !DILocation(line: 197, column: 2, scope: !5018)
!5087 = !DILocation(line: 198, column: 1, scope: !5018)
!5088 = distinct !DISubprogram(name: "input_ff_flush", scope: !3, file: !3, line: 235, type: !4104, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5089)
!5089 = !{!5090, !5091, !5092, !5093}
!5090 = !DILocalVariable(name: "dev", arg: 1, scope: !5088, file: !3, line: 235, type: !171)
!5091 = !DILocalVariable(name: "file", arg: 2, scope: !5088, file: !3, line: 235, type: !391)
!5092 = !DILocalVariable(name: "ff", scope: !5088, file: !3, line: 237, type: !240)
!5093 = !DILocalVariable(name: "i", scope: !5088, file: !3, line: 238, type: !85)
!5094 = !DILocation(line: 235, column: 38, scope: !5088)
!5095 = !DILocation(line: 235, column: 56, scope: !5088)
!5096 = !DILocation(line: 237, column: 2, scope: !5088)
!5097 = !DILocation(line: 237, column: 20, scope: !5088)
!5098 = !DILocation(line: 237, column: 25, scope: !5088)
!5099 = !DILocation(line: 237, column: 30, scope: !5088)
!5100 = !DILocation(line: 238, column: 2, scope: !5088)
!5101 = !DILocation(line: 238, column: 6, scope: !5088)
!5102 = !DILocation(line: 242, column: 14, scope: !5088)
!5103 = !DILocation(line: 242, column: 18, scope: !5088)
!5104 = !DILocation(line: 242, column: 2, scope: !5088)
!5105 = !DILocation(line: 244, column: 9, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 244, column: 2)
!5107 = !DILocation(line: 244, column: 7, scope: !5106)
!5108 = !DILocation(line: 244, column: 14, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 244, column: 2)
!5110 = !DILocation(line: 244, column: 18, scope: !5109)
!5111 = !DILocation(line: 244, column: 22, scope: !5109)
!5112 = !DILocation(line: 244, column: 16, scope: !5109)
!5113 = !DILocation(line: 244, column: 2, scope: !5106)
!5114 = !DILocation(line: 245, column: 16, scope: !5109)
!5115 = !DILocation(line: 245, column: 21, scope: !5109)
!5116 = !DILocation(line: 245, column: 24, scope: !5109)
!5117 = !DILocation(line: 245, column: 3, scope: !5109)
!5118 = !DILocation(line: 244, column: 36, scope: !5109)
!5119 = !DILocation(line: 244, column: 2, scope: !5109)
!5120 = distinct !{!5120, !5113, !5121, !4698, !4699}
!5121 = !DILocation(line: 245, column: 28, scope: !5106)
!5122 = !DILocation(line: 247, column: 16, scope: !5088)
!5123 = !DILocation(line: 247, column: 20, scope: !5088)
!5124 = !DILocation(line: 247, column: 2, scope: !5088)
!5125 = !DILocation(line: 250, column: 1, scope: !5088)
!5126 = !DILocation(line: 249, column: 2, scope: !5088)
!5127 = distinct !DISubprogram(name: "input_ff_event", scope: !3, file: !3, line: 260, type: !4108, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5128)
!5128 = !{!5129, !5130, !5131, !5132, !5133}
!5129 = !DILocalVariable(name: "dev", arg: 1, scope: !5127, file: !3, line: 260, type: !171)
!5130 = !DILocalVariable(name: "type", arg: 2, scope: !5127, file: !3, line: 260, type: !7)
!5131 = !DILocalVariable(name: "code", arg: 3, scope: !5127, file: !3, line: 261, type: !7)
!5132 = !DILocalVariable(name: "value", arg: 4, scope: !5127, file: !3, line: 261, type: !85)
!5133 = !DILocalVariable(name: "ff", scope: !5127, file: !3, line: 263, type: !240)
!5134 = !DILocation(line: 260, column: 38, scope: !5127)
!5135 = !DILocation(line: 260, column: 56, scope: !5127)
!5136 = !DILocation(line: 261, column: 19, scope: !5127)
!5137 = !DILocation(line: 261, column: 29, scope: !5127)
!5138 = !DILocation(line: 263, column: 2, scope: !5127)
!5139 = !DILocation(line: 263, column: 20, scope: !5127)
!5140 = !DILocation(line: 263, column: 25, scope: !5127)
!5141 = !DILocation(line: 263, column: 30, scope: !5127)
!5142 = !DILocation(line: 265, column: 6, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 265, column: 6)
!5144 = !DILocation(line: 265, column: 11, scope: !5143)
!5145 = !DILocation(line: 265, column: 6, scope: !5127)
!5146 = !DILocation(line: 266, column: 3, scope: !5143)
!5147 = !DILocation(line: 268, column: 10, scope: !5127)
!5148 = !DILocation(line: 268, column: 2, scope: !5127)
!5149 = !DILocation(line: 270, column: 8, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 270, column: 7)
!5151 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 268, column: 16)
!5152 = !DILocation(line: 270, column: 38, scope: !5150)
!5153 = !DILocation(line: 270, column: 41, scope: !5150)
!5154 = !DILocation(line: 270, column: 47, scope: !5150)
!5155 = !DILocation(line: 270, column: 7, scope: !5151)
!5156 = !DILocation(line: 271, column: 4, scope: !5150)
!5157 = !DILocation(line: 273, column: 3, scope: !5151)
!5158 = !DILocation(line: 273, column: 7, scope: !5151)
!5159 = !DILocation(line: 273, column: 16, scope: !5151)
!5160 = !DILocation(line: 273, column: 21, scope: !5151)
!5161 = !DILocation(line: 274, column: 3, scope: !5151)
!5162 = !DILocation(line: 277, column: 8, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 277, column: 7)
!5164 = !DILocation(line: 277, column: 44, scope: !5163)
!5165 = !DILocation(line: 277, column: 47, scope: !5163)
!5166 = !DILocation(line: 277, column: 53, scope: !5163)
!5167 = !DILocation(line: 277, column: 7, scope: !5151)
!5168 = !DILocation(line: 278, column: 4, scope: !5163)
!5169 = !DILocation(line: 280, column: 3, scope: !5151)
!5170 = !DILocation(line: 280, column: 7, scope: !5151)
!5171 = !DILocation(line: 280, column: 22, scope: !5151)
!5172 = !DILocation(line: 280, column: 27, scope: !5151)
!5173 = !DILocation(line: 281, column: 3, scope: !5151)
!5174 = !DILocation(line: 284, column: 27, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 284, column: 7)
!5176 = !DILocation(line: 284, column: 31, scope: !5175)
!5177 = !DILocation(line: 284, column: 7, scope: !5175)
!5178 = !DILocation(line: 284, column: 43, scope: !5175)
!5179 = !DILocation(line: 284, column: 7, scope: !5151)
!5180 = !DILocation(line: 285, column: 4, scope: !5175)
!5181 = !DILocation(line: 285, column: 8, scope: !5175)
!5182 = !DILocation(line: 285, column: 17, scope: !5175)
!5183 = !DILocation(line: 285, column: 22, scope: !5175)
!5184 = !DILocation(line: 285, column: 28, scope: !5175)
!5185 = !DILocation(line: 286, column: 3, scope: !5151)
!5186 = !DILocation(line: 289, column: 2, scope: !5127)
!5187 = !DILocation(line: 290, column: 1, scope: !5127)
!5188 = !DILocation(line: 304, column: 39, scope: !168)
!5189 = !DILocation(line: 304, column: 57, scope: !168)
!5190 = !DILocation(line: 306, column: 2, scope: !168)
!5191 = !DILocation(line: 306, column: 20, scope: !168)
!5192 = !DILocation(line: 307, column: 2, scope: !168)
!5193 = !DILocation(line: 307, column: 9, scope: !168)
!5194 = !DILocation(line: 308, column: 2, scope: !168)
!5195 = !DILocation(line: 308, column: 6, scope: !168)
!5196 = !DILocation(line: 310, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !168, file: !3, line: 310, column: 6)
!5198 = !DILocation(line: 310, column: 6, scope: !168)
!5199 = !DILocation(line: 311, column: 3, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 311, column: 3)
!5201 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 310, column: 20)
!5202 = !DILocation(line: 311, column: 3, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 311, column: 3)
!5204 = !DILocation(line: 312, column: 3, scope: !5201)
!5205 = !DILocation(line: 315, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !168, file: !3, line: 315, column: 6)
!5207 = !DILocation(line: 315, column: 18, scope: !5206)
!5208 = !DILocation(line: 315, column: 6, scope: !168)
!5209 = !DILocation(line: 316, column: 3, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 316, column: 3)
!5211 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 315, column: 36)
!5212 = !DILocation(line: 316, column: 3, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 316, column: 3)
!5214 = !DILocation(line: 317, column: 3, scope: !5211)
!5215 = !DILocation(line: 320, column: 16, scope: !168)
!5216 = !DILocation(line: 320, column: 14, scope: !168)
!5217 = !DILocation(line: 321, column: 6, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !168, file: !3, line: 321, column: 6)
!5219 = !DILocation(line: 321, column: 18, scope: !5218)
!5220 = !DILocation(line: 321, column: 6, scope: !168)
!5221 = !DILocation(line: 322, column: 3, scope: !5218)
!5222 = !DILocation(line: 324, column: 15, scope: !168)
!5223 = !DILocation(line: 324, column: 7, scope: !168)
!5224 = !DILocation(line: 324, column: 5, scope: !168)
!5225 = !DILocation(line: 325, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !168, file: !3, line: 325, column: 6)
!5227 = !DILocation(line: 325, column: 6, scope: !168)
!5228 = !DILocation(line: 326, column: 3, scope: !5226)
!5229 = !DILocation(line: 328, column: 24, scope: !168)
!5230 = !DILocation(line: 328, column: 16, scope: !168)
!5231 = !DILocation(line: 328, column: 2, scope: !168)
!5232 = !DILocation(line: 328, column: 6, scope: !168)
!5233 = !DILocation(line: 328, column: 14, scope: !168)
!5234 = !DILocation(line: 330, column: 7, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !168, file: !3, line: 330, column: 6)
!5236 = !DILocation(line: 330, column: 11, scope: !5235)
!5237 = !DILocation(line: 330, column: 6, scope: !168)
!5238 = !DILocation(line: 331, column: 9, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 330, column: 20)
!5240 = !DILocation(line: 331, column: 3, scope: !5239)
!5241 = !DILocation(line: 332, column: 3, scope: !5239)
!5242 = !DILocation(line: 335, column: 20, scope: !168)
!5243 = !DILocation(line: 335, column: 2, scope: !168)
!5244 = !DILocation(line: 335, column: 6, scope: !168)
!5245 = !DILocation(line: 335, column: 18, scope: !168)
!5246 = !DILocation(line: 336, column: 2, scope: !168)
!5247 = !DILocation(line: 336, column: 2, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !168, file: !3, line: 336, column: 2)
!5249 = !DILocation(line: 338, column: 12, scope: !168)
!5250 = !DILocation(line: 338, column: 2, scope: !168)
!5251 = !DILocation(line: 338, column: 7, scope: !168)
!5252 = !DILocation(line: 338, column: 10, scope: !168)
!5253 = !DILocation(line: 339, column: 2, scope: !168)
!5254 = !DILocation(line: 339, column: 7, scope: !168)
!5255 = !DILocation(line: 339, column: 13, scope: !168)
!5256 = !DILocation(line: 340, column: 2, scope: !168)
!5257 = !DILocation(line: 340, column: 7, scope: !168)
!5258 = !DILocation(line: 340, column: 13, scope: !168)
!5259 = !DILocation(line: 341, column: 2, scope: !168)
!5260 = !DILocation(line: 344, column: 2, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !168, file: !3, line: 344, column: 2)
!5262 = !DILocation(line: 344, column: 2, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 344, column: 2)
!5264 = !DILocation(line: 345, column: 3, scope: !5263)
!5265 = distinct !{!5265, !5260, !5266, !4698, !4699}
!5266 = !DILocation(line: 345, column: 3, scope: !5261)
!5267 = !DILocation(line: 348, column: 6, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !168, file: !3, line: 348, column: 6)
!5269 = !DILocation(line: 348, column: 6, scope: !168)
!5270 = !DILocation(line: 349, column: 3, scope: !5268)
!5271 = !DILocation(line: 351, column: 2, scope: !168)
!5272 = !DILocation(line: 352, column: 1, scope: !168)
!5273 = !DISubprogram(name: "_dev_err", scope: !5274, file: !5274, line: 50, type: !5275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5274 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !4213, !176, null}
!5277 = distinct !DISubprogram(name: "size_add", scope: !5278, file: !5278, line: 208, type: !5279, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5278 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!139, !139, !139}
!5281 = !{!5282, !5283, !5284}
!5282 = !DILocalVariable(name: "addend1", arg: 1, scope: !5277, file: !5278, line: 208, type: !139)
!5283 = !DILocalVariable(name: "addend2", arg: 2, scope: !5277, file: !5278, line: 208, type: !139)
!5284 = !DILocalVariable(name: "bytes", scope: !5277, file: !5278, line: 210, type: !139)
!5285 = !DILocation(line: 208, column: 51, scope: !5277)
!5286 = !DILocation(line: 208, column: 67, scope: !5277)
!5287 = !DILocation(line: 210, column: 2, scope: !5277)
!5288 = !DILocation(line: 210, column: 9, scope: !5277)
!5289 = !DILocation(line: 212, column: 6, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5277, file: !5278, line: 212, column: 6)
!5291 = !DILocation(line: 212, column: 6, scope: !5277)
!5292 = !DILocation(line: 213, column: 3, scope: !5290)
!5293 = !DILocation(line: 215, column: 9, scope: !5277)
!5294 = !DILocation(line: 215, column: 2, scope: !5277)
!5295 = !DILocation(line: 216, column: 1, scope: !5277)
!5296 = distinct !DISubprogram(name: "size_mul", scope: !5278, file: !5278, line: 189, type: !5279, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5297 = !{!5298, !5299, !5300}
!5298 = !DILocalVariable(name: "factor1", arg: 1, scope: !5296, file: !5278, line: 189, type: !139)
!5299 = !DILocalVariable(name: "factor2", arg: 2, scope: !5296, file: !5278, line: 189, type: !139)
!5300 = !DILocalVariable(name: "bytes", scope: !5296, file: !5278, line: 191, type: !139)
!5301 = !DILocation(line: 189, column: 51, scope: !5296)
!5302 = !DILocation(line: 189, column: 67, scope: !5296)
!5303 = !DILocation(line: 191, column: 2, scope: !5296)
!5304 = !DILocation(line: 191, column: 9, scope: !5296)
!5305 = !DILocation(line: 193, column: 6, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5296, file: !5278, line: 193, column: 6)
!5307 = !DILocation(line: 193, column: 6, scope: !5296)
!5308 = !DILocation(line: 194, column: 3, scope: !5306)
!5309 = !DILocation(line: 196, column: 9, scope: !5296)
!5310 = !DILocation(line: 196, column: 2, scope: !5296)
!5311 = !DILocation(line: 197, column: 1, scope: !5296)
!5312 = distinct !DISubprogram(name: "kzalloc", scope: !123, file: !123, line: 719, type: !5313, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5315)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!136, !139, !143}
!5315 = !{!5316, !5317}
!5316 = !DILocalVariable(name: "size", arg: 1, scope: !5312, file: !123, line: 719, type: !139)
!5317 = !DILocalVariable(name: "flags", arg: 2, scope: !5312, file: !123, line: 719, type: !143)
!5318 = !DILocation(line: 719, column: 52, scope: !5312)
!5319 = !DILocation(line: 719, column: 64, scope: !5312)
!5320 = !DILocation(line: 721, column: 17, scope: !5312)
!5321 = !DILocation(line: 721, column: 23, scope: !5312)
!5322 = !DILocation(line: 721, column: 29, scope: !5312)
!5323 = !DILocation(line: 721, column: 9, scope: !5312)
!5324 = !DILocation(line: 721, column: 2, scope: !5312)
!5325 = distinct !DISubprogram(name: "kcalloc", scope: !123, file: !123, line: 666, type: !5326, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5328)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!136, !139, !139, !143}
!5328 = !{!5329, !5330, !5331}
!5329 = !DILocalVariable(name: "n", arg: 1, scope: !5325, file: !123, line: 666, type: !139)
!5330 = !DILocalVariable(name: "size", arg: 2, scope: !5325, file: !123, line: 666, type: !139)
!5331 = !DILocalVariable(name: "flags", arg: 3, scope: !5325, file: !123, line: 666, type: !143)
!5332 = !DILocation(line: 666, column: 55, scope: !5325)
!5333 = !DILocation(line: 666, column: 65, scope: !5325)
!5334 = !DILocation(line: 666, column: 77, scope: !5325)
!5335 = !DILocation(line: 668, column: 23, scope: !5325)
!5336 = !DILocation(line: 668, column: 26, scope: !5325)
!5337 = !DILocation(line: 668, column: 32, scope: !5325)
!5338 = !DILocation(line: 668, column: 38, scope: !5325)
!5339 = !DILocation(line: 668, column: 9, scope: !5325)
!5340 = !DILocation(line: 668, column: 2, scope: !5325)
!5341 = !DISubprogram(name: "kfree", scope: !123, file: !123, line: 227, type: !5342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{null, !1562}
!5344 = !DISubprogram(name: "__mutex_init", scope: !335, file: !335, line: 121, type: !5345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !4901, !176, !5347}
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!5348 = distinct !DISubprogram(name: "generic___set_bit", scope: !4774, file: !4774, line: 28, type: !5349, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5352)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{null, !135, !5351}
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!5352 = !{!5353, !5354, !5355, !5356}
!5353 = !DILocalVariable(name: "nr", arg: 1, scope: !5348, file: !4774, line: 28, type: !135)
!5354 = !DILocalVariable(name: "addr", arg: 2, scope: !5348, file: !4774, line: 28, type: !5351)
!5355 = !DILocalVariable(name: "mask", scope: !5348, file: !4774, line: 30, type: !135)
!5356 = !DILocalVariable(name: "p", scope: !5348, file: !4774, line: 31, type: !144)
!5357 = !DILocation(line: 28, column: 33, scope: !5348)
!5358 = !DILocation(line: 28, column: 61, scope: !5348)
!5359 = !DILocation(line: 30, column: 2, scope: !5348)
!5360 = !DILocation(line: 30, column: 16, scope: !5348)
!5361 = !DILocation(line: 30, column: 23, scope: !5348)
!5362 = !DILocation(line: 31, column: 2, scope: !5348)
!5363 = !DILocation(line: 31, column: 17, scope: !5348)
!5364 = !DILocation(line: 31, column: 39, scope: !5348)
!5365 = !DILocation(line: 31, column: 47, scope: !5348)
!5366 = !DILocation(line: 31, column: 45, scope: !5348)
!5367 = !DILocation(line: 33, column: 9, scope: !5348)
!5368 = !DILocation(line: 33, column: 3, scope: !5348)
!5369 = !DILocation(line: 33, column: 6, scope: !5348)
!5370 = !DILocation(line: 34, column: 1, scope: !5348)
!5371 = distinct !DISubprogram(name: "___set_bit", scope: !4808, file: !4808, line: 26, type: !5349, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5372)
!5372 = !{!5373, !5374}
!5373 = !DILocalVariable(name: "nr", arg: 1, scope: !5371, file: !4808, line: 26, type: !135)
!5374 = !DILocalVariable(name: "addr", arg: 2, scope: !5371, file: !4808, line: 26, type: !5351)
!5375 = !DILocation(line: 26, column: 26, scope: !5371)
!5376 = !DILocation(line: 26, column: 54, scope: !5371)
!5377 = !DILocation(line: 28, column: 19, scope: !5371)
!5378 = !DILocation(line: 28, column: 26, scope: !5371)
!5379 = !DILocation(line: 28, column: 24, scope: !5371)
!5380 = !DILocation(line: 28, column: 2, scope: !5371)
!5381 = !DILocation(line: 29, column: 17, scope: !5371)
!5382 = !DILocation(line: 29, column: 21, scope: !5371)
!5383 = !DILocation(line: 29, column: 2, scope: !5371)
!5384 = !DILocation(line: 30, column: 1, scope: !5371)
!5385 = distinct !DISubprogram(name: "find_next_bit", scope: !5386, file: !5386, line: 54, type: !5387, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5386 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!135, !137, !135, !135}
!5389 = !{!5390, !5391, !5392, !5393}
!5390 = !DILocalVariable(name: "addr", arg: 1, scope: !5385, file: !5386, line: 54, type: !137)
!5391 = !DILocalVariable(name: "size", arg: 2, scope: !5385, file: !5386, line: 54, type: !135)
!5392 = !DILocalVariable(name: "offset", arg: 3, scope: !5385, file: !5386, line: 55, type: !135)
!5393 = !DILocalVariable(name: "val", scope: !5394, file: !5386, line: 58, type: !135)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !5386, line: 57, column: 31)
!5395 = distinct !DILexicalBlock(scope: !5385, file: !5386, line: 57, column: 6)
!5396 = !DILocation(line: 54, column: 50, scope: !5385)
!5397 = !DILocation(line: 54, column: 70, scope: !5385)
!5398 = !DILocation(line: 55, column: 22, scope: !5385)
!5399 = !DILocation(line: 57, column: 6, scope: !5395)
!5400 = !DILocation(line: 57, column: 6, scope: !5385)
!5401 = !DILocation(line: 58, column: 3, scope: !5394)
!5402 = !DILocation(line: 58, column: 17, scope: !5394)
!5403 = !DILocation(line: 60, column: 7, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5394, file: !5386, line: 60, column: 7)
!5405 = !DILocation(line: 60, column: 7, scope: !5394)
!5406 = !DILocation(line: 61, column: 11, scope: !5404)
!5407 = !DILocation(line: 61, column: 4, scope: !5404)
!5408 = !DILocation(line: 63, column: 10, scope: !5394)
!5409 = !DILocation(line: 63, column: 9, scope: !5394)
!5410 = !DILocation(line: 63, column: 17, scope: !5394)
!5411 = !DILocation(line: 63, column: 15, scope: !5394)
!5412 = !DILocation(line: 63, column: 7, scope: !5394)
!5413 = !DILocation(line: 64, column: 10, scope: !5394)
!5414 = !DILocation(line: 64, column: 16, scope: !5394)
!5415 = !DILocation(line: 64, column: 29, scope: !5394)
!5416 = !DILocation(line: 64, column: 3, scope: !5394)
!5417 = !DILocation(line: 65, column: 2, scope: !5395)
!5418 = !DILocation(line: 67, column: 24, scope: !5385)
!5419 = !DILocation(line: 67, column: 30, scope: !5385)
!5420 = !DILocation(line: 67, column: 36, scope: !5385)
!5421 = !DILocation(line: 67, column: 9, scope: !5385)
!5422 = !DILocation(line: 67, column: 2, scope: !5385)
!5423 = !DILocation(line: 68, column: 1, scope: !5385)
!5424 = distinct !DISubprogram(name: "input_ff_destroy", scope: !3, file: !3, line: 363, type: !4100, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5425 = !{!5426, !5427}
!5426 = !DILocalVariable(name: "dev", arg: 1, scope: !5424, file: !3, line: 363, type: !171)
!5427 = !DILocalVariable(name: "ff", scope: !5424, file: !3, line: 365, type: !240)
!5428 = !DILocation(line: 363, column: 41, scope: !5424)
!5429 = !DILocation(line: 365, column: 2, scope: !5424)
!5430 = !DILocation(line: 365, column: 20, scope: !5424)
!5431 = !DILocation(line: 365, column: 25, scope: !5424)
!5432 = !DILocation(line: 365, column: 30, scope: !5424)
!5433 = !DILocation(line: 367, column: 2, scope: !5424)
!5434 = !DILocation(line: 368, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 368, column: 6)
!5436 = !DILocation(line: 368, column: 6, scope: !5424)
!5437 = !DILocation(line: 369, column: 7, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 369, column: 7)
!5439 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 368, column: 10)
!5440 = !DILocation(line: 369, column: 11, scope: !5438)
!5441 = !DILocation(line: 369, column: 7, scope: !5439)
!5442 = !DILocation(line: 370, column: 4, scope: !5438)
!5443 = !DILocation(line: 370, column: 8, scope: !5438)
!5444 = !DILocation(line: 370, column: 16, scope: !5438)
!5445 = !DILocation(line: 371, column: 9, scope: !5439)
!5446 = !DILocation(line: 371, column: 13, scope: !5439)
!5447 = !DILocation(line: 371, column: 3, scope: !5439)
!5448 = !DILocation(line: 372, column: 9, scope: !5439)
!5449 = !DILocation(line: 372, column: 13, scope: !5439)
!5450 = !DILocation(line: 372, column: 3, scope: !5439)
!5451 = !DILocation(line: 373, column: 9, scope: !5439)
!5452 = !DILocation(line: 373, column: 3, scope: !5439)
!5453 = !DILocation(line: 374, column: 3, scope: !5439)
!5454 = !DILocation(line: 374, column: 8, scope: !5439)
!5455 = !DILocation(line: 374, column: 11, scope: !5439)
!5456 = !DILocation(line: 375, column: 2, scope: !5439)
!5457 = !DILocation(line: 376, column: 1, scope: !5424)
!5458 = distinct !DISubprogram(name: "generic___clear_bit", scope: !4774, file: !4774, line: 37, type: !5349, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5459 = !{!5460, !5461, !5462, !5463}
!5460 = !DILocalVariable(name: "nr", arg: 1, scope: !5458, file: !4774, line: 37, type: !135)
!5461 = !DILocalVariable(name: "addr", arg: 2, scope: !5458, file: !4774, line: 37, type: !5351)
!5462 = !DILocalVariable(name: "mask", scope: !5458, file: !4774, line: 39, type: !135)
!5463 = !DILocalVariable(name: "p", scope: !5458, file: !4774, line: 40, type: !144)
!5464 = !DILocation(line: 37, column: 35, scope: !5458)
!5465 = !DILocation(line: 37, column: 63, scope: !5458)
!5466 = !DILocation(line: 39, column: 2, scope: !5458)
!5467 = !DILocation(line: 39, column: 16, scope: !5458)
!5468 = !DILocation(line: 39, column: 23, scope: !5458)
!5469 = !DILocation(line: 40, column: 2, scope: !5458)
!5470 = !DILocation(line: 40, column: 17, scope: !5458)
!5471 = !DILocation(line: 40, column: 39, scope: !5458)
!5472 = !DILocation(line: 40, column: 47, scope: !5458)
!5473 = !DILocation(line: 40, column: 45, scope: !5458)
!5474 = !DILocation(line: 42, column: 9, scope: !5458)
!5475 = !DILocation(line: 42, column: 8, scope: !5458)
!5476 = !DILocation(line: 42, column: 3, scope: !5458)
!5477 = !DILocation(line: 42, column: 5, scope: !5458)
!5478 = !DILocation(line: 43, column: 1, scope: !5458)
!5479 = distinct !DISubprogram(name: "___clear_bit", scope: !4808, file: !4808, line: 42, type: !5349, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5480)
!5480 = !{!5481, !5482}
!5481 = !DILocalVariable(name: "nr", arg: 1, scope: !5479, file: !4808, line: 42, type: !135)
!5482 = !DILocalVariable(name: "addr", arg: 2, scope: !5479, file: !4808, line: 42, type: !5351)
!5483 = !DILocation(line: 42, column: 28, scope: !5479)
!5484 = !DILocation(line: 42, column: 56, scope: !5479)
!5485 = !DILocation(line: 44, column: 19, scope: !5479)
!5486 = !DILocation(line: 44, column: 26, scope: !5479)
!5487 = !DILocation(line: 44, column: 24, scope: !5479)
!5488 = !DILocation(line: 44, column: 2, scope: !5479)
!5489 = !DILocation(line: 45, column: 19, scope: !5479)
!5490 = !DILocation(line: 45, column: 23, scope: !5479)
!5491 = !DILocation(line: 45, column: 2, scope: !5479)
!5492 = !DILocation(line: 46, column: 1, scope: !5479)
!5493 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5494, file: !5494, line: 66, type: !5495, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5500)
!5494 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5495 = !DISubroutineType(types: !5496)
!5496 = !{null, !5497, !139}
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5499)
!5499 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5500 = !{!5501, !5502}
!5501 = !DILocalVariable(name: "v", arg: 1, scope: !5493, file: !5494, line: 66, type: !5497)
!5502 = !DILocalVariable(name: "size", arg: 2, scope: !5493, file: !5494, line: 66, type: !139)
!5503 = !DILocation(line: 66, column: 73, scope: !5493)
!5504 = !DILocation(line: 66, column: 83, scope: !5493)
!5505 = !DILocation(line: 68, column: 19, scope: !5493)
!5506 = !DILocation(line: 68, column: 22, scope: !5493)
!5507 = !DILocation(line: 68, column: 2, scope: !5493)
!5508 = !DILocation(line: 69, column: 2, scope: !5493)
!5509 = !DILocation(line: 70, column: 1, scope: !5493)
!5510 = distinct !DISubprogram(name: "arch_test_bit", scope: !5511, file: !5511, line: 237, type: !4775, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5512)
!5511 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5512 = !{!5513, !5514}
!5513 = !DILocalVariable(name: "nr", arg: 1, scope: !5510, file: !5511, line: 237, type: !135)
!5514 = !DILocalVariable(name: "addr", arg: 2, scope: !5510, file: !5511, line: 237, type: !4777)
!5515 = !DILocation(line: 237, column: 29, scope: !5510)
!5516 = !DILocation(line: 237, column: 63, scope: !5510)
!5517 = !DILocation(line: 239, column: 30, scope: !5510)
!5518 = !DILocation(line: 239, column: 9, scope: !5510)
!5519 = !DILocation(line: 239, column: 54, scope: !5510)
!5520 = !DILocation(line: 239, column: 58, scope: !5510)
!5521 = !DILocation(line: 239, column: 36, scope: !5510)
!5522 = !DILocation(line: 240, column: 26, scope: !5510)
!5523 = !DILocation(line: 240, column: 30, scope: !5510)
!5524 = !DILocation(line: 240, column: 8, scope: !5510)
!5525 = !DILocation(line: 239, column: 2, scope: !5510)
!5526 = distinct !DISubprogram(name: "kasan_check_read", scope: !5527, file: !5527, line: 40, type: !5528, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5530)
!5527 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!630, !5497, !7}
!5530 = !{!5531, !5532}
!5531 = !DILocalVariable(name: "p", arg: 1, scope: !5526, file: !5527, line: 40, type: !5497)
!5532 = !DILocalVariable(name: "size", arg: 2, scope: !5526, file: !5527, line: 40, type: !7)
!5533 = !DILocation(line: 40, column: 58, scope: !5526)
!5534 = !DILocation(line: 40, column: 74, scope: !5526)
!5535 = !DILocation(line: 42, column: 2, scope: !5526)
!5536 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5537, file: !5537, line: 229, type: !5538, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5537 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !5497, !139, !85}
!5540 = !{!5541, !5542, !5543}
!5541 = !DILocalVariable(name: "ptr", arg: 1, scope: !5536, file: !5537, line: 229, type: !5497)
!5542 = !DILocalVariable(name: "size", arg: 2, scope: !5536, file: !5537, line: 229, type: !139)
!5543 = !DILocalVariable(name: "type", arg: 3, scope: !5536, file: !5537, line: 230, type: !85)
!5544 = !DILocation(line: 229, column: 60, scope: !5536)
!5545 = !DILocation(line: 229, column: 72, scope: !5536)
!5546 = !DILocation(line: 230, column: 15, scope: !5536)
!5547 = !DILocation(line: 230, column: 23, scope: !5536)
!5548 = distinct !DISubprogram(name: "constant_test_bit", scope: !5511, file: !5511, line: 204, type: !5549, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5551)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!630, !147, !4777}
!5551 = !{!5552, !5553}
!5552 = !DILocalVariable(name: "nr", arg: 1, scope: !5548, file: !5511, line: 204, type: !147)
!5553 = !DILocalVariable(name: "addr", arg: 2, scope: !5548, file: !5511, line: 204, type: !4777)
!5554 = !DILocation(line: 204, column: 52, scope: !5548)
!5555 = !DILocation(line: 204, column: 86, scope: !5548)
!5556 = !DILocation(line: 206, column: 19, scope: !5548)
!5557 = !DILocation(line: 206, column: 22, scope: !5548)
!5558 = !DILocation(line: 206, column: 15, scope: !5548)
!5559 = !DILocation(line: 207, column: 4, scope: !5548)
!5560 = !DILocation(line: 207, column: 9, scope: !5548)
!5561 = !DILocation(line: 207, column: 12, scope: !5548)
!5562 = !DILocation(line: 206, column: 44, scope: !5548)
!5563 = !DILocation(line: 207, column: 37, scope: !5548)
!5564 = !DILocation(line: 206, column: 2, scope: !5548)
!5565 = distinct !DISubprogram(name: "variable_test_bit", scope: !5511, file: !5511, line: 224, type: !5549, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5566 = !{!5567, !5568, !5569}
!5567 = !DILocalVariable(name: "nr", arg: 1, scope: !5565, file: !5511, line: 224, type: !147)
!5568 = !DILocalVariable(name: "addr", arg: 2, scope: !5565, file: !5511, line: 224, type: !4777)
!5569 = !DILocalVariable(name: "oldbit", scope: !5565, file: !5511, line: 226, type: !630)
!5570 = !DILocation(line: 224, column: 52, scope: !5565)
!5571 = !DILocation(line: 224, column: 86, scope: !5565)
!5572 = !DILocation(line: 226, column: 2, scope: !5565)
!5573 = !DILocation(line: 226, column: 7, scope: !5565)
!5574 = !DILocation(line: 231, column: 33, scope: !5565)
!5575 = !DILocation(line: 231, column: 46, scope: !5565)
!5576 = !DILocation(line: 228, column: 2, scope: !5565)
!5577 = !{i64 2148225013, i64 2148225087}
!5578 = !DILocation(line: 233, column: 9, scope: !5565)
!5579 = !{i8 0, i8 2}
!5580 = !DILocation(line: 234, column: 1, scope: !5565)
!5581 = !DILocation(line: 233, column: 2, scope: !5565)
!5582 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5583, file: !5583, line: 29, type: !5584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5583 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !5586}
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!5587 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5583, file: !5583, line: 41, type: !5584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5588 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5278, file: !5278, line: 51, type: !5589, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5591)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!630, !630}
!5591 = !{!5592}
!5592 = !DILocalVariable(name: "overflow", arg: 1, scope: !5588, file: !5278, line: 51, type: !630)
!5593 = !DILocation(line: 51, column: 60, scope: !5588)
!5594 = !DILocation(line: 53, column: 9, scope: !5588)
!5595 = !DILocation(line: 53, column: 2, scope: !5588)
!5596 = distinct !DISubprogram(name: "kmalloc", scope: !123, file: !123, line: 591, type: !5313, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5597)
!5597 = !{!5598, !5599, !5600}
!5598 = !DILocalVariable(name: "size", arg: 1, scope: !5596, file: !123, line: 591, type: !139)
!5599 = !DILocalVariable(name: "flags", arg: 2, scope: !5596, file: !123, line: 591, type: !143)
!5600 = !DILocalVariable(name: "index", scope: !5601, file: !123, line: 594, type: !7)
!5601 = distinct !DILexicalBlock(scope: !5602, file: !123, line: 593, column: 42)
!5602 = distinct !DILexicalBlock(scope: !5596, file: !123, line: 593, column: 6)
!5603 = !DILocation(line: 591, column: 61, scope: !5596)
!5604 = !DILocation(line: 591, column: 73, scope: !5596)
!5605 = !DILocation(line: 593, column: 27, scope: !5602)
!5606 = !DILocation(line: 593, column: 6, scope: !5602)
!5607 = !DILocation(line: 593, column: 33, scope: !5602)
!5608 = !DILocation(line: 593, column: 36, scope: !5602)
!5609 = !DILocation(line: 593, column: 6, scope: !5596)
!5610 = !DILocation(line: 594, column: 3, scope: !5601)
!5611 = !DILocation(line: 594, column: 16, scope: !5601)
!5612 = !DILocation(line: 596, column: 7, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5601, file: !123, line: 596, column: 7)
!5614 = !DILocation(line: 596, column: 12, scope: !5613)
!5615 = !DILocation(line: 596, column: 7, scope: !5601)
!5616 = !DILocation(line: 597, column: 25, scope: !5613)
!5617 = !DILocation(line: 597, column: 31, scope: !5613)
!5618 = !DILocation(line: 597, column: 11, scope: !5613)
!5619 = !DILocation(line: 597, column: 4, scope: !5613)
!5620 = !DILocation(line: 599, column: 11, scope: !5601)
!5621 = !DILocation(line: 599, column: 9, scope: !5601)
!5622 = !DILocation(line: 601, column: 33, scope: !5601)
!5623 = !DILocation(line: 601, column: 40, scope: !5601)
!5624 = !DILocation(line: 601, column: 20, scope: !5601)
!5625 = !DILocation(line: 601, column: 5, scope: !5601)
!5626 = !DILocation(line: 601, column: 51, scope: !5601)
!5627 = !DILocation(line: 602, column: 5, scope: !5601)
!5628 = !DILocation(line: 602, column: 12, scope: !5601)
!5629 = !DILocation(line: 600, column: 10, scope: !5601)
!5630 = !DILocation(line: 600, column: 3, scope: !5601)
!5631 = !DILocation(line: 603, column: 2, scope: !5602)
!5632 = !DILocation(line: 604, column: 19, scope: !5596)
!5633 = !DILocation(line: 604, column: 25, scope: !5596)
!5634 = !DILocation(line: 604, column: 9, scope: !5596)
!5635 = !DILocation(line: 604, column: 2, scope: !5596)
!5636 = !DILocation(line: 605, column: 1, scope: !5596)
!5637 = !DISubprogram(name: "kmalloc_large", scope: !123, file: !123, line: 531, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5638 = distinct !DISubprogram(name: "__kmalloc_index", scope: !123, file: !123, line: 444, type: !5639, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5641)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!7, !139, !630}
!5641 = !{!5642, !5643}
!5642 = !DILocalVariable(name: "size", arg: 1, scope: !5638, file: !123, line: 444, type: !139)
!5643 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5638, file: !123, line: 445, type: !630)
!5644 = !DILocation(line: 444, column: 60, scope: !5638)
!5645 = !DILocation(line: 445, column: 16, scope: !5638)
!5646 = !DILocation(line: 447, column: 7, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 447, column: 6)
!5648 = !DILocation(line: 447, column: 6, scope: !5638)
!5649 = !DILocation(line: 448, column: 3, scope: !5647)
!5650 = !DILocation(line: 450, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 450, column: 6)
!5652 = !DILocation(line: 450, column: 11, scope: !5651)
!5653 = !DILocation(line: 450, column: 6, scope: !5638)
!5654 = !DILocation(line: 451, column: 3, scope: !5651)
!5655 = !DILocation(line: 453, column: 32, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 453, column: 6)
!5657 = !DILocation(line: 453, column: 37, scope: !5656)
!5658 = !DILocation(line: 453, column: 42, scope: !5656)
!5659 = !DILocation(line: 453, column: 45, scope: !5656)
!5660 = !DILocation(line: 453, column: 50, scope: !5656)
!5661 = !DILocation(line: 453, column: 6, scope: !5638)
!5662 = !DILocation(line: 454, column: 3, scope: !5656)
!5663 = !DILocation(line: 455, column: 32, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 455, column: 6)
!5665 = !DILocation(line: 455, column: 37, scope: !5664)
!5666 = !DILocation(line: 455, column: 43, scope: !5664)
!5667 = !DILocation(line: 455, column: 46, scope: !5664)
!5668 = !DILocation(line: 455, column: 51, scope: !5664)
!5669 = !DILocation(line: 455, column: 6, scope: !5638)
!5670 = !DILocation(line: 456, column: 3, scope: !5664)
!5671 = !DILocation(line: 457, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 457, column: 6)
!5673 = !DILocation(line: 457, column: 11, scope: !5672)
!5674 = !DILocation(line: 457, column: 6, scope: !5638)
!5675 = !DILocation(line: 457, column: 26, scope: !5672)
!5676 = !DILocation(line: 458, column: 6, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 458, column: 6)
!5678 = !DILocation(line: 458, column: 11, scope: !5677)
!5679 = !DILocation(line: 458, column: 6, scope: !5638)
!5680 = !DILocation(line: 458, column: 26, scope: !5677)
!5681 = !DILocation(line: 459, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 459, column: 6)
!5683 = !DILocation(line: 459, column: 11, scope: !5682)
!5684 = !DILocation(line: 459, column: 6, scope: !5638)
!5685 = !DILocation(line: 459, column: 26, scope: !5682)
!5686 = !DILocation(line: 460, column: 6, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 460, column: 6)
!5688 = !DILocation(line: 460, column: 11, scope: !5687)
!5689 = !DILocation(line: 460, column: 6, scope: !5638)
!5690 = !DILocation(line: 460, column: 26, scope: !5687)
!5691 = !DILocation(line: 461, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 461, column: 6)
!5693 = !DILocation(line: 461, column: 11, scope: !5692)
!5694 = !DILocation(line: 461, column: 6, scope: !5638)
!5695 = !DILocation(line: 461, column: 26, scope: !5692)
!5696 = !DILocation(line: 462, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 462, column: 6)
!5698 = !DILocation(line: 462, column: 11, scope: !5697)
!5699 = !DILocation(line: 462, column: 6, scope: !5638)
!5700 = !DILocation(line: 462, column: 26, scope: !5697)
!5701 = !DILocation(line: 463, column: 6, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 463, column: 6)
!5703 = !DILocation(line: 463, column: 11, scope: !5702)
!5704 = !DILocation(line: 463, column: 6, scope: !5638)
!5705 = !DILocation(line: 463, column: 26, scope: !5702)
!5706 = !DILocation(line: 464, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 464, column: 6)
!5708 = !DILocation(line: 464, column: 11, scope: !5707)
!5709 = !DILocation(line: 464, column: 6, scope: !5638)
!5710 = !DILocation(line: 464, column: 26, scope: !5707)
!5711 = !DILocation(line: 465, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 465, column: 6)
!5713 = !DILocation(line: 465, column: 11, scope: !5712)
!5714 = !DILocation(line: 465, column: 6, scope: !5638)
!5715 = !DILocation(line: 465, column: 26, scope: !5712)
!5716 = !DILocation(line: 466, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 466, column: 6)
!5718 = !DILocation(line: 466, column: 11, scope: !5717)
!5719 = !DILocation(line: 466, column: 6, scope: !5638)
!5720 = !DILocation(line: 466, column: 26, scope: !5717)
!5721 = !DILocation(line: 467, column: 6, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 467, column: 6)
!5723 = !DILocation(line: 467, column: 11, scope: !5722)
!5724 = !DILocation(line: 467, column: 6, scope: !5638)
!5725 = !DILocation(line: 467, column: 26, scope: !5722)
!5726 = !DILocation(line: 468, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 468, column: 6)
!5728 = !DILocation(line: 468, column: 11, scope: !5727)
!5729 = !DILocation(line: 468, column: 6, scope: !5638)
!5730 = !DILocation(line: 468, column: 26, scope: !5727)
!5731 = !DILocation(line: 469, column: 6, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 469, column: 6)
!5733 = !DILocation(line: 469, column: 11, scope: !5732)
!5734 = !DILocation(line: 469, column: 6, scope: !5638)
!5735 = !DILocation(line: 469, column: 26, scope: !5732)
!5736 = !DILocation(line: 470, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 470, column: 6)
!5738 = !DILocation(line: 470, column: 11, scope: !5737)
!5739 = !DILocation(line: 470, column: 6, scope: !5638)
!5740 = !DILocation(line: 470, column: 26, scope: !5737)
!5741 = !DILocation(line: 471, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 471, column: 6)
!5743 = !DILocation(line: 471, column: 11, scope: !5742)
!5744 = !DILocation(line: 471, column: 6, scope: !5638)
!5745 = !DILocation(line: 471, column: 26, scope: !5742)
!5746 = !DILocation(line: 472, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 472, column: 6)
!5748 = !DILocation(line: 472, column: 11, scope: !5747)
!5749 = !DILocation(line: 472, column: 6, scope: !5638)
!5750 = !DILocation(line: 472, column: 26, scope: !5747)
!5751 = !DILocation(line: 473, column: 6, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 473, column: 6)
!5753 = !DILocation(line: 473, column: 11, scope: !5752)
!5754 = !DILocation(line: 473, column: 6, scope: !5638)
!5755 = !DILocation(line: 473, column: 26, scope: !5752)
!5756 = !DILocation(line: 474, column: 6, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 474, column: 6)
!5758 = !DILocation(line: 474, column: 11, scope: !5757)
!5759 = !DILocation(line: 474, column: 6, scope: !5638)
!5760 = !DILocation(line: 474, column: 27, scope: !5757)
!5761 = !DILocation(line: 475, column: 6, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 475, column: 6)
!5763 = !DILocation(line: 475, column: 11, scope: !5762)
!5764 = !DILocation(line: 475, column: 6, scope: !5638)
!5765 = !DILocation(line: 475, column: 32, scope: !5762)
!5766 = !DILocation(line: 477, column: 50, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5638, file: !123, line: 477, column: 6)
!5768 = !DILocation(line: 477, column: 6, scope: !5638)
!5769 = !DILocation(line: 478, column: 3, scope: !5767)
!5770 = !DILocation(line: 478, column: 3, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !123, line: 478, column: 3)
!5772 = distinct !DILexicalBlock(scope: !5767, file: !123, line: 478, column: 3)
!5773 = !{i32 -2141132417}
!5774 = !DILocation(line: 478, column: 3, scope: !5772)
!5775 = !DILocation(line: 480, column: 3, scope: !5767)
!5776 = !DILocation(line: 480, column: 3, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5767, file: !123, line: 480, column: 3)
!5778 = !DILocation(line: 480, column: 3, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5777, file: !123, line: 480, column: 3)
!5780 = !DILocation(line: 480, column: 3, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5777, file: !123, line: 480, column: 3)
!5782 = !{i64 2153835082, i64 2153835111, i64 2153835157, i64 2153835215, i64 2153835269, i64 2153835323, i64 2153835378, i64 2153835409}
!5783 = !DILocation(line: 483, column: 2, scope: !5638)
!5784 = !DILocation(line: 484, column: 1, scope: !5638)
!5785 = !DISubprogram(name: "kmalloc_trace", scope: !123, file: !123, line: 525, type: !5786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!136, !5788, !143, !139}
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5790, line: 325, flags: DIFlagFwdDecl)
!5790 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5791 = distinct !DISubprogram(name: "kmalloc_type", scope: !123, file: !123, line: 401, type: !5792, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!122, !143, !135}
!5794 = !{!5795, !5796}
!5795 = !DILocalVariable(name: "flags", arg: 1, scope: !5791, file: !123, line: 401, type: !143)
!5796 = !DILocalVariable(name: "caller", arg: 2, scope: !5791, file: !123, line: 401, type: !135)
!5797 = !DILocation(line: 401, column: 67, scope: !5791)
!5798 = !DILocation(line: 401, column: 88, scope: !5791)
!5799 = !DILocation(line: 407, column: 6, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5791, file: !123, line: 407, column: 6)
!5801 = !DILocation(line: 407, column: 6, scope: !5791)
!5802 = !DILocation(line: 413, column: 3, scope: !5800)
!5803 = !DILocation(line: 423, column: 38, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5791, file: !123, line: 423, column: 6)
!5805 = !DILocation(line: 423, column: 44, scope: !5804)
!5806 = !DILocation(line: 423, column: 6, scope: !5791)
!5807 = !DILocation(line: 424, column: 3, scope: !5804)
!5808 = !DILocation(line: 426, column: 3, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5791, file: !123, line: 425, column: 6)
!5810 = !DILocation(line: 429, column: 1, scope: !5791)
!5811 = !DISubprogram(name: "__kmalloc", scope: !123, file: !123, line: 488, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5812 = !DISubprogram(name: "__compiletime_assert_263", scope: !123, file: !123, line: 478, type: !2172, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5813 = distinct !DISubprogram(name: "kmalloc_array", scope: !123, file: !123, line: 629, type: !5326, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5814)
!5814 = !{!5815, !5816, !5817, !5818}
!5815 = !DILocalVariable(name: "n", arg: 1, scope: !5813, file: !123, line: 629, type: !139)
!5816 = !DILocalVariable(name: "size", arg: 2, scope: !5813, file: !123, line: 629, type: !139)
!5817 = !DILocalVariable(name: "flags", arg: 3, scope: !5813, file: !123, line: 629, type: !143)
!5818 = !DILocalVariable(name: "bytes", scope: !5813, file: !123, line: 631, type: !139)
!5819 = !DILocation(line: 629, column: 61, scope: !5813)
!5820 = !DILocation(line: 629, column: 71, scope: !5813)
!5821 = !DILocation(line: 629, column: 83, scope: !5813)
!5822 = !DILocation(line: 631, column: 2, scope: !5813)
!5823 = !DILocation(line: 631, column: 9, scope: !5813)
!5824 = !DILocation(line: 633, column: 6, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5813, file: !123, line: 633, column: 6)
!5826 = !DILocation(line: 633, column: 6, scope: !5813)
!5827 = !DILocation(line: 634, column: 3, scope: !5825)
!5828 = !DILocation(line: 635, column: 27, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5813, file: !123, line: 635, column: 6)
!5830 = !DILocation(line: 635, column: 6, scope: !5829)
!5831 = !DILocation(line: 635, column: 30, scope: !5829)
!5832 = !DILocation(line: 635, column: 54, scope: !5829)
!5833 = !DILocation(line: 635, column: 33, scope: !5829)
!5834 = !DILocation(line: 635, column: 6, scope: !5813)
!5835 = !DILocation(line: 636, column: 18, scope: !5829)
!5836 = !DILocation(line: 636, column: 25, scope: !5829)
!5837 = !DILocation(line: 636, column: 10, scope: !5829)
!5838 = !DILocation(line: 636, column: 3, scope: !5829)
!5839 = !DILocation(line: 637, column: 19, scope: !5813)
!5840 = !DILocation(line: 637, column: 26, scope: !5813)
!5841 = !DILocation(line: 637, column: 9, scope: !5813)
!5842 = !DILocation(line: 637, column: 2, scope: !5813)
!5843 = !DILocation(line: 638, column: 1, scope: !5813)
!5844 = distinct !DISubprogram(name: "instrument_write", scope: !5494, file: !5494, line: 38, type: !5495, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5845)
!5845 = !{!5846, !5847}
!5846 = !DILocalVariable(name: "v", arg: 1, scope: !5844, file: !5494, line: 38, type: !5497)
!5847 = !DILocalVariable(name: "size", arg: 2, scope: !5844, file: !5494, line: 38, type: !139)
!5848 = !DILocation(line: 38, column: 67, scope: !5844)
!5849 = !DILocation(line: 38, column: 77, scope: !5844)
!5850 = !DILocation(line: 40, column: 20, scope: !5844)
!5851 = !DILocation(line: 40, column: 23, scope: !5844)
!5852 = !DILocation(line: 40, column: 2, scope: !5844)
!5853 = !DILocation(line: 41, column: 2, scope: !5844)
!5854 = !DILocation(line: 42, column: 1, scope: !5844)
!5855 = distinct !DISubprogram(name: "arch___set_bit", scope: !5511, file: !5511, line: 66, type: !5349, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5856 = !{!5857, !5858}
!5857 = !DILocalVariable(name: "nr", arg: 1, scope: !5855, file: !5511, line: 66, type: !135)
!5858 = !DILocalVariable(name: "addr", arg: 2, scope: !5855, file: !5511, line: 66, type: !5351)
!5859 = !DILocation(line: 66, column: 30, scope: !5855)
!5860 = !DILocation(line: 66, column: 58, scope: !5855)
!5861 = !DILocation(line: 68, column: 44, scope: !5855)
!5862 = !DILocation(line: 68, column: 56, scope: !5855)
!5863 = !DILocation(line: 68, column: 2, scope: !5855)
!5864 = !{i64 2148212327}
!5865 = !DILocation(line: 69, column: 1, scope: !5855)
!5866 = distinct !DISubprogram(name: "kasan_check_write", scope: !5527, file: !5527, line: 44, type: !5528, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5867)
!5867 = !{!5868, !5869}
!5868 = !DILocalVariable(name: "p", arg: 1, scope: !5866, file: !5527, line: 44, type: !5497)
!5869 = !DILocalVariable(name: "size", arg: 2, scope: !5866, file: !5527, line: 44, type: !7)
!5870 = !DILocation(line: 44, column: 59, scope: !5866)
!5871 = !DILocation(line: 44, column: 75, scope: !5866)
!5872 = !DILocation(line: 46, column: 2, scope: !5866)
!5873 = distinct !DISubprogram(name: "variable__ffs", scope: !5511, file: !5511, line: 250, type: !5874, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5876)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{!135, !135}
!5876 = !{!5877}
!5877 = !DILocalVariable(name: "word", arg: 1, scope: !5873, file: !5511, line: 250, type: !135)
!5878 = !DILocation(line: 250, column: 66, scope: !5873)
!5879 = !DILocation(line: 254, column: 11, scope: !5873)
!5880 = !DILocation(line: 252, column: 2, scope: !5873)
!5881 = !{i64 720088}
!5882 = !DILocation(line: 255, column: 9, scope: !5873)
!5883 = !DILocation(line: 255, column: 2, scope: !5873)
!5884 = !DISubprogram(name: "_find_next_bit", scope: !5386, file: !5386, line: 11, type: !5387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5885 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5511, file: !5511, line: 92, type: !5349, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5886)
!5886 = !{!5887, !5888}
!5887 = !DILocalVariable(name: "nr", arg: 1, scope: !5885, file: !5511, line: 92, type: !135)
!5888 = !DILocalVariable(name: "addr", arg: 2, scope: !5885, file: !5511, line: 92, type: !5351)
!5889 = !DILocation(line: 92, column: 32, scope: !5885)
!5890 = !DILocation(line: 92, column: 60, scope: !5885)
!5891 = !DILocation(line: 94, column: 44, scope: !5885)
!5892 = !DILocation(line: 94, column: 56, scope: !5885)
!5893 = !DILocation(line: 94, column: 2, scope: !5885)
!5894 = !{i64 2148213860}
!5895 = !DILocation(line: 95, column: 1, scope: !5885)
