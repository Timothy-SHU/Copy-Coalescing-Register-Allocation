; ModuleID = 'drivers/input/input-mt.c'
source_filename = "drivers/input/input-mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_init_slots: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_init_slots ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_destroy_slots: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_destroy_slots ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_report_slot_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_report_slot_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_report_finger_count: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_report_finger_count ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_report_pointer_emulation: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_report_pointer_emulation ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_drop_unused: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_drop_unused ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_sync_frame: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_sync_frame ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_assign_slots: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_assign_slots ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_mt_get_slot_by_key: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_mt_get_slot_by_key ; .previous"

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
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@__UNIQUE_ID___addressable_input_mt_init_slots267 = internal global ptr @input_mt_init_slots, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_input_mt_destroy_slots268 = internal global ptr @input_mt_destroy_slots, section ".discard.addressable", align 8, !dbg !149
@__UNIQUE_ID___addressable_input_mt_report_slot_state269 = internal global ptr @input_mt_report_slot_state, section ".discard.addressable", align 8, !dbg !151
@__UNIQUE_ID___addressable_input_mt_report_finger_count270 = internal global ptr @input_mt_report_finger_count, section ".discard.addressable", align 8, !dbg !153
@__UNIQUE_ID___addressable_input_mt_report_pointer_emulation271 = internal global ptr @input_mt_report_pointer_emulation, section ".discard.addressable", align 8, !dbg !155
@__UNIQUE_ID___addressable_input_mt_drop_unused272 = internal global ptr @input_mt_drop_unused, section ".discard.addressable", align 8, !dbg !157
@__UNIQUE_ID___addressable_input_mt_sync_frame273 = internal global ptr @input_mt_sync_frame, section ".discard.addressable", align 8, !dbg !159
@__UNIQUE_ID___addressable_input_mt_assign_slots274 = internal global ptr @input_mt_assign_slots, section ".discard.addressable", align 8, !dbg !161
@__UNIQUE_ID___addressable_input_mt_get_slot_by_key275 = internal global ptr @input_mt_get_slot_by_key, section ".discard.addressable", align 8, !dbg !163
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !165
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_input_mt_init_slots267, ptr @__UNIQUE_ID___addressable_input_mt_destroy_slots268, ptr @__UNIQUE_ID___addressable_input_mt_report_slot_state269, ptr @__UNIQUE_ID___addressable_input_mt_report_finger_count270, ptr @__UNIQUE_ID___addressable_input_mt_report_pointer_emulation271, ptr @__UNIQUE_ID___addressable_input_mt_drop_unused272, ptr @__UNIQUE_ID___addressable_input_mt_sync_frame273, ptr @__UNIQUE_ID___addressable_input_mt_assign_slots274, ptr @__UNIQUE_ID___addressable_input_mt_get_slot_by_key275], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_mt_init_slots(ptr noundef %dev, i32 noundef %num_slots, i32 noundef %flags) #0 align 16 !dbg !180 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %num_slots.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %mt = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n2 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4596, metadata !DIExpression()), !dbg !4605
  store i32 %num_slots, ptr %num_slots.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_slots.addr, metadata !4597, metadata !DIExpression()), !dbg !4606
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4598, metadata !DIExpression()), !dbg !4607
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !4608
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !4599, metadata !DIExpression()), !dbg !4609
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4610
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !4611
  %1 = load ptr, ptr %mt1, align 8, !dbg !4611
  store ptr %1, ptr %mt, align 8, !dbg !4609
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4612
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4600, metadata !DIExpression()), !dbg !4613
  %2 = load i32, ptr %num_slots.addr, align 4, !dbg !4614
  %tobool = icmp ne i32 %2, 0, !dbg !4614
  br i1 %tobool, label %if.end, label %if.then, !dbg !4616

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !4617

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mt, align 8, !dbg !4618
  %tobool2 = icmp ne ptr %3, null, !dbg !4618
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4620

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %mt, align 8, !dbg !4621
  %num_slots4 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 1, !dbg !4622
  %5 = load i32, ptr %num_slots4, align 4, !dbg !4622
  %6 = load i32, ptr %num_slots.addr, align 4, !dbg !4623
  %cmp = icmp ne i32 %5, %6, !dbg !4624
  %7 = zext i1 %cmp to i64, !dbg !4621
  %cond = select i1 %cmp, i32 -22, i32 0, !dbg !4621
  store i32 %cond, ptr %retval, align 4, !dbg !4625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !4625

if.end5:                                          ; preds = %if.end
  %8 = load i32, ptr %num_slots.addr, align 4, !dbg !4626
  %cmp6 = icmp ugt i32 %8, 1024, !dbg !4628
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4629

if.then7:                                         ; preds = %if.end5
  store i32 -22, ptr %retval, align 4, !dbg !4630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !4630

if.end8:                                          ; preds = %if.end5
  %9 = load i32, ptr %num_slots.addr, align 4, !dbg !4631
  %conv = zext i32 %9 to i64, !dbg !4631
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 64) #17, !dbg !4631
  %call9 = call i64 @size_add(i64 noundef 32, i64 noundef %call) #17, !dbg !4631
  %call10 = call noalias ptr @kzalloc(i64 noundef %call9, i32 noundef 3264) #18, !dbg !4632
  store ptr %call10, ptr %mt, align 8, !dbg !4633
  %10 = load ptr, ptr %mt, align 8, !dbg !4634
  %tobool11 = icmp ne ptr %10, null, !dbg !4634
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4636

if.then12:                                        ; preds = %if.end8
  br label %err_mem, !dbg !4637

if.end13:                                         ; preds = %if.end8
  %11 = load i32, ptr %num_slots.addr, align 4, !dbg !4638
  %12 = load ptr, ptr %mt, align 8, !dbg !4639
  %num_slots14 = getelementptr inbounds %struct.input_mt, ptr %12, i32 0, i32 1, !dbg !4640
  store i32 %11, ptr %num_slots14, align 4, !dbg !4641
  %13 = load i32, ptr %flags.addr, align 4, !dbg !4642
  %14 = load ptr, ptr %mt, align 8, !dbg !4643
  %flags15 = getelementptr inbounds %struct.input_mt, ptr %14, i32 0, i32 3, !dbg !4644
  store i32 %13, ptr %flags15, align 4, !dbg !4645
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !4646
  %16 = load i32, ptr %num_slots.addr, align 4, !dbg !4647
  %sub = sub i32 %16, 1, !dbg !4648
  call void @input_set_abs_params(ptr noundef %15, i32 noundef 47, i32 noundef 0, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #17, !dbg !4649
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !4650
  call void @input_set_abs_params(ptr noundef %17, i32 noundef 57, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #17, !dbg !4651
  %18 = load i32, ptr %flags.addr, align 4, !dbg !4652
  %and = and i32 %18, 3, !dbg !4654
  %tobool16 = icmp ne i32 %and, 0, !dbg !4654
  br i1 %tobool16, label %if.then17, label %if.end49, !dbg !4655

if.then17:                                        ; preds = %if.end13
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !4656
  %evbit = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 5, !dbg !4656
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4656
  %20 = ptrtoint ptr %arraydecay to i64, !dbg !4656
  %cmp18 = icmp ne i64 %20, 0, !dbg !4656
  %conv19 = zext i1 %cmp18 to i32, !dbg !4656
  %21 = call i1 @llvm.is.constant.i32(i32 %conv19), !dbg !4656
  br i1 %21, label %land.lhs.true, label %cond.false, !dbg !4656

land.lhs.true:                                    ; preds = %if.then17
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !4656
  %evbit20 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 5, !dbg !4656
  %arraydecay21 = getelementptr inbounds [1 x i64], ptr %evbit20, i64 0, i64 0, !dbg !4656
  %23 = ptrtoint ptr %arraydecay21 to i64, !dbg !4656
  %cmp22 = icmp ne i64 %23, 0, !dbg !4656
  br i1 %cmp22, label %land.lhs.true24, label %cond.false, !dbg !4656

land.lhs.true24:                                  ; preds = %land.lhs.true
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !4656
  %evbit25 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 5, !dbg !4656
  %arraydecay26 = getelementptr inbounds [1 x i64], ptr %evbit25, i64 0, i64 0, !dbg !4656
  %25 = load i64, ptr %arraydecay26, align 8, !dbg !4656
  %26 = call i1 @llvm.is.constant.i64(i64 %25), !dbg !4656
  br i1 %26, label %cond.true, label %cond.false, !dbg !4656

cond.true:                                        ; preds = %land.lhs.true24
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !4656
  %evbit27 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 5, !dbg !4656
  %arraydecay28 = getelementptr inbounds [1 x i64], ptr %evbit27, i64 0, i64 0, !dbg !4656
  call void @generic___set_bit(i64 noundef 1, ptr noundef %arraydecay28) #17, !dbg !4656
  br label %cond.end, !dbg !4656

cond.false:                                       ; preds = %land.lhs.true24, %land.lhs.true, %if.then17
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !4656
  %evbit29 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 5, !dbg !4656
  %arraydecay30 = getelementptr inbounds [1 x i64], ptr %evbit29, i64 0, i64 0, !dbg !4656
  call void @___set_bit(i64 noundef 1, ptr noundef %arraydecay30) #17, !dbg !4656
  br label %cond.end, !dbg !4656

cond.end:                                         ; preds = %cond.false, %cond.true
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !4658
  %keybit = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 6, !dbg !4658
  %arraydecay31 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !4658
  %30 = ptrtoint ptr %arraydecay31 to i64, !dbg !4658
  %cmp32 = icmp ne i64 %30, 0, !dbg !4658
  %conv33 = zext i1 %cmp32 to i32, !dbg !4658
  %31 = call i1 @llvm.is.constant.i32(i32 %conv33), !dbg !4658
  br i1 %31, label %land.lhs.true34, label %cond.false45, !dbg !4658

land.lhs.true34:                                  ; preds = %cond.end
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !4658
  %keybit35 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6, !dbg !4658
  %arraydecay36 = getelementptr inbounds [12 x i64], ptr %keybit35, i64 0, i64 0, !dbg !4658
  %33 = ptrtoint ptr %arraydecay36 to i64, !dbg !4658
  %cmp37 = icmp ne i64 %33, 0, !dbg !4658
  br i1 %cmp37, label %land.lhs.true39, label %cond.false45, !dbg !4658

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !4658
  %keybit40 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 6, !dbg !4658
  %arraydecay41 = getelementptr inbounds [12 x i64], ptr %keybit40, i64 0, i64 0, !dbg !4658
  %35 = load i64, ptr %arraydecay41, align 8, !dbg !4658
  %36 = call i1 @llvm.is.constant.i64(i64 %35), !dbg !4658
  br i1 %36, label %cond.true42, label %cond.false45, !dbg !4658

cond.true42:                                      ; preds = %land.lhs.true39
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !4658
  %keybit43 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6, !dbg !4658
  %arraydecay44 = getelementptr inbounds [12 x i64], ptr %keybit43, i64 0, i64 0, !dbg !4658
  call void @generic___set_bit(i64 noundef 330, ptr noundef %arraydecay44) #17, !dbg !4658
  br label %cond.end48, !dbg !4658

cond.false45:                                     ; preds = %land.lhs.true39, %land.lhs.true34, %cond.end
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !4658
  %keybit46 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 6, !dbg !4658
  %arraydecay47 = getelementptr inbounds [12 x i64], ptr %keybit46, i64 0, i64 0, !dbg !4658
  call void @___set_bit(i64 noundef 330, ptr noundef %arraydecay47) #17, !dbg !4658
  br label %cond.end48, !dbg !4658

cond.end48:                                       ; preds = %cond.false45, %cond.true42
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !4659
  call void @copy_abs(ptr noundef %39, i32 noundef 0, i32 noundef 53) #17, !dbg !4660
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !4661
  call void @copy_abs(ptr noundef %40, i32 noundef 1, i32 noundef 54) #17, !dbg !4662
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !4663
  call void @copy_abs(ptr noundef %41, i32 noundef 24, i32 noundef 58) #17, !dbg !4664
  br label %if.end49, !dbg !4665

if.end49:                                         ; preds = %cond.end48, %if.end13
  %42 = load i32, ptr %flags.addr, align 4, !dbg !4666
  %and50 = and i32 %42, 1, !dbg !4668
  %tobool51 = icmp ne i32 %and50, 0, !dbg !4668
  br i1 %tobool51, label %if.then52, label %if.end178, !dbg !4669

if.then52:                                        ; preds = %if.end49
  %43 = load ptr, ptr %dev.addr, align 8, !dbg !4670
  %keybit53 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6, !dbg !4670
  %arraydecay54 = getelementptr inbounds [12 x i64], ptr %keybit53, i64 0, i64 0, !dbg !4670
  %44 = ptrtoint ptr %arraydecay54 to i64, !dbg !4670
  %cmp55 = icmp ne i64 %44, 0, !dbg !4670
  %conv56 = zext i1 %cmp55 to i32, !dbg !4670
  %45 = call i1 @llvm.is.constant.i32(i32 %conv56), !dbg !4670
  br i1 %45, label %land.lhs.true57, label %cond.false68, !dbg !4670

land.lhs.true57:                                  ; preds = %if.then52
  %46 = load ptr, ptr %dev.addr, align 8, !dbg !4670
  %keybit58 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 6, !dbg !4670
  %arraydecay59 = getelementptr inbounds [12 x i64], ptr %keybit58, i64 0, i64 0, !dbg !4670
  %47 = ptrtoint ptr %arraydecay59 to i64, !dbg !4670
  %cmp60 = icmp ne i64 %47, 0, !dbg !4670
  br i1 %cmp60, label %land.lhs.true62, label %cond.false68, !dbg !4670

land.lhs.true62:                                  ; preds = %land.lhs.true57
  %48 = load ptr, ptr %dev.addr, align 8, !dbg !4670
  %keybit63 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6, !dbg !4670
  %arraydecay64 = getelementptr inbounds [12 x i64], ptr %keybit63, i64 0, i64 0, !dbg !4670
  %49 = load i64, ptr %arraydecay64, align 8, !dbg !4670
  %50 = call i1 @llvm.is.constant.i64(i64 %49), !dbg !4670
  br i1 %50, label %cond.true65, label %cond.false68, !dbg !4670

cond.true65:                                      ; preds = %land.lhs.true62
  %51 = load ptr, ptr %dev.addr, align 8, !dbg !4670
  %keybit66 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 6, !dbg !4670
  %arraydecay67 = getelementptr inbounds [12 x i64], ptr %keybit66, i64 0, i64 0, !dbg !4670
  call void @generic___set_bit(i64 noundef 325, ptr noundef %arraydecay67) #17, !dbg !4670
  br label %cond.end71, !dbg !4670

cond.false68:                                     ; preds = %land.lhs.true62, %land.lhs.true57, %if.then52
  %52 = load ptr, ptr %dev.addr, align 8, !dbg !4670
  %keybit69 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6, !dbg !4670
  %arraydecay70 = getelementptr inbounds [12 x i64], ptr %keybit69, i64 0, i64 0, !dbg !4670
  call void @___set_bit(i64 noundef 325, ptr noundef %arraydecay70) #17, !dbg !4670
  br label %cond.end71, !dbg !4670

cond.end71:                                       ; preds = %cond.false68, %cond.true65
  %53 = load ptr, ptr %dev.addr, align 8, !dbg !4672
  %keybit72 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6, !dbg !4672
  %arraydecay73 = getelementptr inbounds [12 x i64], ptr %keybit72, i64 0, i64 0, !dbg !4672
  %54 = ptrtoint ptr %arraydecay73 to i64, !dbg !4672
  %cmp74 = icmp ne i64 %54, 0, !dbg !4672
  %conv75 = zext i1 %cmp74 to i32, !dbg !4672
  %55 = call i1 @llvm.is.constant.i32(i32 %conv75), !dbg !4672
  br i1 %55, label %land.lhs.true76, label %cond.false87, !dbg !4672

land.lhs.true76:                                  ; preds = %cond.end71
  %56 = load ptr, ptr %dev.addr, align 8, !dbg !4672
  %keybit77 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6, !dbg !4672
  %arraydecay78 = getelementptr inbounds [12 x i64], ptr %keybit77, i64 0, i64 0, !dbg !4672
  %57 = ptrtoint ptr %arraydecay78 to i64, !dbg !4672
  %cmp79 = icmp ne i64 %57, 0, !dbg !4672
  br i1 %cmp79, label %land.lhs.true81, label %cond.false87, !dbg !4672

land.lhs.true81:                                  ; preds = %land.lhs.true76
  %58 = load ptr, ptr %dev.addr, align 8, !dbg !4672
  %keybit82 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6, !dbg !4672
  %arraydecay83 = getelementptr inbounds [12 x i64], ptr %keybit82, i64 0, i64 0, !dbg !4672
  %59 = load i64, ptr %arraydecay83, align 8, !dbg !4672
  %60 = call i1 @llvm.is.constant.i64(i64 %59), !dbg !4672
  br i1 %60, label %cond.true84, label %cond.false87, !dbg !4672

cond.true84:                                      ; preds = %land.lhs.true81
  %61 = load ptr, ptr %dev.addr, align 8, !dbg !4672
  %keybit85 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 6, !dbg !4672
  %arraydecay86 = getelementptr inbounds [12 x i64], ptr %keybit85, i64 0, i64 0, !dbg !4672
  call void @generic___set_bit(i64 noundef 333, ptr noundef %arraydecay86) #17, !dbg !4672
  br label %cond.end90, !dbg !4672

cond.false87:                                     ; preds = %land.lhs.true81, %land.lhs.true76, %cond.end71
  %62 = load ptr, ptr %dev.addr, align 8, !dbg !4672
  %keybit88 = getelementptr inbounds %struct.input_dev, ptr %62, i32 0, i32 6, !dbg !4672
  %arraydecay89 = getelementptr inbounds [12 x i64], ptr %keybit88, i64 0, i64 0, !dbg !4672
  call void @___set_bit(i64 noundef 333, ptr noundef %arraydecay89) #17, !dbg !4672
  br label %cond.end90, !dbg !4672

cond.end90:                                       ; preds = %cond.false87, %cond.true84
  %63 = load i32, ptr %num_slots.addr, align 4, !dbg !4673
  %cmp91 = icmp uge i32 %63, 3, !dbg !4675
  br i1 %cmp91, label %if.then93, label %if.end113, !dbg !4676

if.then93:                                        ; preds = %cond.end90
  %64 = load ptr, ptr %dev.addr, align 8, !dbg !4677
  %keybit94 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 6, !dbg !4677
  %arraydecay95 = getelementptr inbounds [12 x i64], ptr %keybit94, i64 0, i64 0, !dbg !4677
  %65 = ptrtoint ptr %arraydecay95 to i64, !dbg !4677
  %cmp96 = icmp ne i64 %65, 0, !dbg !4677
  %conv97 = zext i1 %cmp96 to i32, !dbg !4677
  %66 = call i1 @llvm.is.constant.i32(i32 %conv97), !dbg !4677
  br i1 %66, label %land.lhs.true98, label %cond.false109, !dbg !4677

land.lhs.true98:                                  ; preds = %if.then93
  %67 = load ptr, ptr %dev.addr, align 8, !dbg !4677
  %keybit99 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 6, !dbg !4677
  %arraydecay100 = getelementptr inbounds [12 x i64], ptr %keybit99, i64 0, i64 0, !dbg !4677
  %68 = ptrtoint ptr %arraydecay100 to i64, !dbg !4677
  %cmp101 = icmp ne i64 %68, 0, !dbg !4677
  br i1 %cmp101, label %land.lhs.true103, label %cond.false109, !dbg !4677

land.lhs.true103:                                 ; preds = %land.lhs.true98
  %69 = load ptr, ptr %dev.addr, align 8, !dbg !4677
  %keybit104 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 6, !dbg !4677
  %arraydecay105 = getelementptr inbounds [12 x i64], ptr %keybit104, i64 0, i64 0, !dbg !4677
  %70 = load i64, ptr %arraydecay105, align 8, !dbg !4677
  %71 = call i1 @llvm.is.constant.i64(i64 %70), !dbg !4677
  br i1 %71, label %cond.true106, label %cond.false109, !dbg !4677

cond.true106:                                     ; preds = %land.lhs.true103
  %72 = load ptr, ptr %dev.addr, align 8, !dbg !4677
  %keybit107 = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 6, !dbg !4677
  %arraydecay108 = getelementptr inbounds [12 x i64], ptr %keybit107, i64 0, i64 0, !dbg !4677
  call void @generic___set_bit(i64 noundef 334, ptr noundef %arraydecay108) #17, !dbg !4677
  br label %cond.end112, !dbg !4677

cond.false109:                                    ; preds = %land.lhs.true103, %land.lhs.true98, %if.then93
  %73 = load ptr, ptr %dev.addr, align 8, !dbg !4677
  %keybit110 = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 6, !dbg !4677
  %arraydecay111 = getelementptr inbounds [12 x i64], ptr %keybit110, i64 0, i64 0, !dbg !4677
  call void @___set_bit(i64 noundef 334, ptr noundef %arraydecay111) #17, !dbg !4677
  br label %cond.end112, !dbg !4677

cond.end112:                                      ; preds = %cond.false109, %cond.true106
  br label %if.end113, !dbg !4677

if.end113:                                        ; preds = %cond.end112, %cond.end90
  %74 = load i32, ptr %num_slots.addr, align 4, !dbg !4678
  %cmp114 = icmp uge i32 %74, 4, !dbg !4680
  br i1 %cmp114, label %if.then116, label %if.end136, !dbg !4681

if.then116:                                       ; preds = %if.end113
  %75 = load ptr, ptr %dev.addr, align 8, !dbg !4682
  %keybit117 = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 6, !dbg !4682
  %arraydecay118 = getelementptr inbounds [12 x i64], ptr %keybit117, i64 0, i64 0, !dbg !4682
  %76 = ptrtoint ptr %arraydecay118 to i64, !dbg !4682
  %cmp119 = icmp ne i64 %76, 0, !dbg !4682
  %conv120 = zext i1 %cmp119 to i32, !dbg !4682
  %77 = call i1 @llvm.is.constant.i32(i32 %conv120), !dbg !4682
  br i1 %77, label %land.lhs.true121, label %cond.false132, !dbg !4682

land.lhs.true121:                                 ; preds = %if.then116
  %78 = load ptr, ptr %dev.addr, align 8, !dbg !4682
  %keybit122 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 6, !dbg !4682
  %arraydecay123 = getelementptr inbounds [12 x i64], ptr %keybit122, i64 0, i64 0, !dbg !4682
  %79 = ptrtoint ptr %arraydecay123 to i64, !dbg !4682
  %cmp124 = icmp ne i64 %79, 0, !dbg !4682
  br i1 %cmp124, label %land.lhs.true126, label %cond.false132, !dbg !4682

land.lhs.true126:                                 ; preds = %land.lhs.true121
  %80 = load ptr, ptr %dev.addr, align 8, !dbg !4682
  %keybit127 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 6, !dbg !4682
  %arraydecay128 = getelementptr inbounds [12 x i64], ptr %keybit127, i64 0, i64 0, !dbg !4682
  %81 = load i64, ptr %arraydecay128, align 8, !dbg !4682
  %82 = call i1 @llvm.is.constant.i64(i64 %81), !dbg !4682
  br i1 %82, label %cond.true129, label %cond.false132, !dbg !4682

cond.true129:                                     ; preds = %land.lhs.true126
  %83 = load ptr, ptr %dev.addr, align 8, !dbg !4682
  %keybit130 = getelementptr inbounds %struct.input_dev, ptr %83, i32 0, i32 6, !dbg !4682
  %arraydecay131 = getelementptr inbounds [12 x i64], ptr %keybit130, i64 0, i64 0, !dbg !4682
  call void @generic___set_bit(i64 noundef 335, ptr noundef %arraydecay131) #17, !dbg !4682
  br label %cond.end135, !dbg !4682

cond.false132:                                    ; preds = %land.lhs.true126, %land.lhs.true121, %if.then116
  %84 = load ptr, ptr %dev.addr, align 8, !dbg !4682
  %keybit133 = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 6, !dbg !4682
  %arraydecay134 = getelementptr inbounds [12 x i64], ptr %keybit133, i64 0, i64 0, !dbg !4682
  call void @___set_bit(i64 noundef 335, ptr noundef %arraydecay134) #17, !dbg !4682
  br label %cond.end135, !dbg !4682

cond.end135:                                      ; preds = %cond.false132, %cond.true129
  br label %if.end136, !dbg !4682

if.end136:                                        ; preds = %cond.end135, %if.end113
  %85 = load i32, ptr %num_slots.addr, align 4, !dbg !4683
  %cmp137 = icmp uge i32 %85, 5, !dbg !4685
  br i1 %cmp137, label %if.then139, label %if.end159, !dbg !4686

if.then139:                                       ; preds = %if.end136
  %86 = load ptr, ptr %dev.addr, align 8, !dbg !4687
  %keybit140 = getelementptr inbounds %struct.input_dev, ptr %86, i32 0, i32 6, !dbg !4687
  %arraydecay141 = getelementptr inbounds [12 x i64], ptr %keybit140, i64 0, i64 0, !dbg !4687
  %87 = ptrtoint ptr %arraydecay141 to i64, !dbg !4687
  %cmp142 = icmp ne i64 %87, 0, !dbg !4687
  %conv143 = zext i1 %cmp142 to i32, !dbg !4687
  %88 = call i1 @llvm.is.constant.i32(i32 %conv143), !dbg !4687
  br i1 %88, label %land.lhs.true144, label %cond.false155, !dbg !4687

land.lhs.true144:                                 ; preds = %if.then139
  %89 = load ptr, ptr %dev.addr, align 8, !dbg !4687
  %keybit145 = getelementptr inbounds %struct.input_dev, ptr %89, i32 0, i32 6, !dbg !4687
  %arraydecay146 = getelementptr inbounds [12 x i64], ptr %keybit145, i64 0, i64 0, !dbg !4687
  %90 = ptrtoint ptr %arraydecay146 to i64, !dbg !4687
  %cmp147 = icmp ne i64 %90, 0, !dbg !4687
  br i1 %cmp147, label %land.lhs.true149, label %cond.false155, !dbg !4687

land.lhs.true149:                                 ; preds = %land.lhs.true144
  %91 = load ptr, ptr %dev.addr, align 8, !dbg !4687
  %keybit150 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 6, !dbg !4687
  %arraydecay151 = getelementptr inbounds [12 x i64], ptr %keybit150, i64 0, i64 0, !dbg !4687
  %92 = load i64, ptr %arraydecay151, align 8, !dbg !4687
  %93 = call i1 @llvm.is.constant.i64(i64 %92), !dbg !4687
  br i1 %93, label %cond.true152, label %cond.false155, !dbg !4687

cond.true152:                                     ; preds = %land.lhs.true149
  %94 = load ptr, ptr %dev.addr, align 8, !dbg !4687
  %keybit153 = getelementptr inbounds %struct.input_dev, ptr %94, i32 0, i32 6, !dbg !4687
  %arraydecay154 = getelementptr inbounds [12 x i64], ptr %keybit153, i64 0, i64 0, !dbg !4687
  call void @generic___set_bit(i64 noundef 328, ptr noundef %arraydecay154) #17, !dbg !4687
  br label %cond.end158, !dbg !4687

cond.false155:                                    ; preds = %land.lhs.true149, %land.lhs.true144, %if.then139
  %95 = load ptr, ptr %dev.addr, align 8, !dbg !4687
  %keybit156 = getelementptr inbounds %struct.input_dev, ptr %95, i32 0, i32 6, !dbg !4687
  %arraydecay157 = getelementptr inbounds [12 x i64], ptr %keybit156, i64 0, i64 0, !dbg !4687
  call void @___set_bit(i64 noundef 328, ptr noundef %arraydecay157) #17, !dbg !4687
  br label %cond.end158, !dbg !4687

cond.end158:                                      ; preds = %cond.false155, %cond.true152
  br label %if.end159, !dbg !4687

if.end159:                                        ; preds = %cond.end158, %if.end136
  %96 = load ptr, ptr %dev.addr, align 8, !dbg !4688
  %propbit = getelementptr inbounds %struct.input_dev, ptr %96, i32 0, i32 4, !dbg !4688
  %arraydecay160 = getelementptr inbounds [1 x i64], ptr %propbit, i64 0, i64 0, !dbg !4688
  %97 = ptrtoint ptr %arraydecay160 to i64, !dbg !4688
  %cmp161 = icmp ne i64 %97, 0, !dbg !4688
  %conv162 = zext i1 %cmp161 to i32, !dbg !4688
  %98 = call i1 @llvm.is.constant.i32(i32 %conv162), !dbg !4688
  br i1 %98, label %land.lhs.true163, label %cond.false174, !dbg !4688

land.lhs.true163:                                 ; preds = %if.end159
  %99 = load ptr, ptr %dev.addr, align 8, !dbg !4688
  %propbit164 = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 4, !dbg !4688
  %arraydecay165 = getelementptr inbounds [1 x i64], ptr %propbit164, i64 0, i64 0, !dbg !4688
  %100 = ptrtoint ptr %arraydecay165 to i64, !dbg !4688
  %cmp166 = icmp ne i64 %100, 0, !dbg !4688
  br i1 %cmp166, label %land.lhs.true168, label %cond.false174, !dbg !4688

land.lhs.true168:                                 ; preds = %land.lhs.true163
  %101 = load ptr, ptr %dev.addr, align 8, !dbg !4688
  %propbit169 = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 4, !dbg !4688
  %arraydecay170 = getelementptr inbounds [1 x i64], ptr %propbit169, i64 0, i64 0, !dbg !4688
  %102 = load i64, ptr %arraydecay170, align 8, !dbg !4688
  %103 = call i1 @llvm.is.constant.i64(i64 %102), !dbg !4688
  br i1 %103, label %cond.true171, label %cond.false174, !dbg !4688

cond.true171:                                     ; preds = %land.lhs.true168
  %104 = load ptr, ptr %dev.addr, align 8, !dbg !4688
  %propbit172 = getelementptr inbounds %struct.input_dev, ptr %104, i32 0, i32 4, !dbg !4688
  %arraydecay173 = getelementptr inbounds [1 x i64], ptr %propbit172, i64 0, i64 0, !dbg !4688
  call void @generic___set_bit(i64 noundef 0, ptr noundef %arraydecay173) #17, !dbg !4688
  br label %cond.end177, !dbg !4688

cond.false174:                                    ; preds = %land.lhs.true168, %land.lhs.true163, %if.end159
  %105 = load ptr, ptr %dev.addr, align 8, !dbg !4688
  %propbit175 = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 4, !dbg !4688
  %arraydecay176 = getelementptr inbounds [1 x i64], ptr %propbit175, i64 0, i64 0, !dbg !4688
  call void @___set_bit(i64 noundef 0, ptr noundef %arraydecay176) #17, !dbg !4688
  br label %cond.end177, !dbg !4688

cond.end177:                                      ; preds = %cond.false174, %cond.true171
  br label %if.end178, !dbg !4689

if.end178:                                        ; preds = %cond.end177, %if.end49
  %106 = load i32, ptr %flags.addr, align 4, !dbg !4690
  %and179 = and i32 %106, 2, !dbg !4692
  %tobool180 = icmp ne i32 %and179, 0, !dbg !4692
  br i1 %tobool180, label %if.then181, label %if.end201, !dbg !4693

if.then181:                                       ; preds = %if.end178
  %107 = load ptr, ptr %dev.addr, align 8, !dbg !4694
  %propbit182 = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 4, !dbg !4694
  %arraydecay183 = getelementptr inbounds [1 x i64], ptr %propbit182, i64 0, i64 0, !dbg !4694
  %108 = ptrtoint ptr %arraydecay183 to i64, !dbg !4694
  %cmp184 = icmp ne i64 %108, 0, !dbg !4694
  %conv185 = zext i1 %cmp184 to i32, !dbg !4694
  %109 = call i1 @llvm.is.constant.i32(i32 %conv185), !dbg !4694
  br i1 %109, label %land.lhs.true186, label %cond.false197, !dbg !4694

land.lhs.true186:                                 ; preds = %if.then181
  %110 = load ptr, ptr %dev.addr, align 8, !dbg !4694
  %propbit187 = getelementptr inbounds %struct.input_dev, ptr %110, i32 0, i32 4, !dbg !4694
  %arraydecay188 = getelementptr inbounds [1 x i64], ptr %propbit187, i64 0, i64 0, !dbg !4694
  %111 = ptrtoint ptr %arraydecay188 to i64, !dbg !4694
  %cmp189 = icmp ne i64 %111, 0, !dbg !4694
  br i1 %cmp189, label %land.lhs.true191, label %cond.false197, !dbg !4694

land.lhs.true191:                                 ; preds = %land.lhs.true186
  %112 = load ptr, ptr %dev.addr, align 8, !dbg !4694
  %propbit192 = getelementptr inbounds %struct.input_dev, ptr %112, i32 0, i32 4, !dbg !4694
  %arraydecay193 = getelementptr inbounds [1 x i64], ptr %propbit192, i64 0, i64 0, !dbg !4694
  %113 = load i64, ptr %arraydecay193, align 8, !dbg !4694
  %114 = call i1 @llvm.is.constant.i64(i64 %113), !dbg !4694
  br i1 %114, label %cond.true194, label %cond.false197, !dbg !4694

cond.true194:                                     ; preds = %land.lhs.true191
  %115 = load ptr, ptr %dev.addr, align 8, !dbg !4694
  %propbit195 = getelementptr inbounds %struct.input_dev, ptr %115, i32 0, i32 4, !dbg !4694
  %arraydecay196 = getelementptr inbounds [1 x i64], ptr %propbit195, i64 0, i64 0, !dbg !4694
  call void @generic___set_bit(i64 noundef 1, ptr noundef %arraydecay196) #17, !dbg !4694
  br label %cond.end200, !dbg !4694

cond.false197:                                    ; preds = %land.lhs.true191, %land.lhs.true186, %if.then181
  %116 = load ptr, ptr %dev.addr, align 8, !dbg !4694
  %propbit198 = getelementptr inbounds %struct.input_dev, ptr %116, i32 0, i32 4, !dbg !4694
  %arraydecay199 = getelementptr inbounds [1 x i64], ptr %propbit198, i64 0, i64 0, !dbg !4694
  call void @___set_bit(i64 noundef 1, ptr noundef %arraydecay199) #17, !dbg !4694
  br label %cond.end200, !dbg !4694

cond.end200:                                      ; preds = %cond.false197, %cond.true194
  br label %if.end201, !dbg !4694

if.end201:                                        ; preds = %cond.end200, %if.end178
  %117 = load i32, ptr %flags.addr, align 4, !dbg !4695
  %and202 = and i32 %117, 16, !dbg !4697
  %tobool203 = icmp ne i32 %and202, 0, !dbg !4697
  br i1 %tobool203, label %if.then204, label %if.end224, !dbg !4698

if.then204:                                       ; preds = %if.end201
  %118 = load ptr, ptr %dev.addr, align 8, !dbg !4699
  %propbit205 = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 4, !dbg !4699
  %arraydecay206 = getelementptr inbounds [1 x i64], ptr %propbit205, i64 0, i64 0, !dbg !4699
  %119 = ptrtoint ptr %arraydecay206 to i64, !dbg !4699
  %cmp207 = icmp ne i64 %119, 0, !dbg !4699
  %conv208 = zext i1 %cmp207 to i32, !dbg !4699
  %120 = call i1 @llvm.is.constant.i32(i32 %conv208), !dbg !4699
  br i1 %120, label %land.lhs.true209, label %cond.false220, !dbg !4699

land.lhs.true209:                                 ; preds = %if.then204
  %121 = load ptr, ptr %dev.addr, align 8, !dbg !4699
  %propbit210 = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 4, !dbg !4699
  %arraydecay211 = getelementptr inbounds [1 x i64], ptr %propbit210, i64 0, i64 0, !dbg !4699
  %122 = ptrtoint ptr %arraydecay211 to i64, !dbg !4699
  %cmp212 = icmp ne i64 %122, 0, !dbg !4699
  br i1 %cmp212, label %land.lhs.true214, label %cond.false220, !dbg !4699

land.lhs.true214:                                 ; preds = %land.lhs.true209
  %123 = load ptr, ptr %dev.addr, align 8, !dbg !4699
  %propbit215 = getelementptr inbounds %struct.input_dev, ptr %123, i32 0, i32 4, !dbg !4699
  %arraydecay216 = getelementptr inbounds [1 x i64], ptr %propbit215, i64 0, i64 0, !dbg !4699
  %124 = load i64, ptr %arraydecay216, align 8, !dbg !4699
  %125 = call i1 @llvm.is.constant.i64(i64 %124), !dbg !4699
  br i1 %125, label %cond.true217, label %cond.false220, !dbg !4699

cond.true217:                                     ; preds = %land.lhs.true214
  %126 = load ptr, ptr %dev.addr, align 8, !dbg !4699
  %propbit218 = getelementptr inbounds %struct.input_dev, ptr %126, i32 0, i32 4, !dbg !4699
  %arraydecay219 = getelementptr inbounds [1 x i64], ptr %propbit218, i64 0, i64 0, !dbg !4699
  call void @generic___set_bit(i64 noundef 3, ptr noundef %arraydecay219) #17, !dbg !4699
  br label %cond.end223, !dbg !4699

cond.false220:                                    ; preds = %land.lhs.true214, %land.lhs.true209, %if.then204
  %127 = load ptr, ptr %dev.addr, align 8, !dbg !4699
  %propbit221 = getelementptr inbounds %struct.input_dev, ptr %127, i32 0, i32 4, !dbg !4699
  %arraydecay222 = getelementptr inbounds [1 x i64], ptr %propbit221, i64 0, i64 0, !dbg !4699
  call void @___set_bit(i64 noundef 3, ptr noundef %arraydecay222) #17, !dbg !4699
  br label %cond.end223, !dbg !4699

cond.end223:                                      ; preds = %cond.false220, %cond.true217
  br label %if.end224, !dbg !4699

if.end224:                                        ; preds = %cond.end223, %if.end201
  %128 = load i32, ptr %flags.addr, align 4, !dbg !4700
  %and225 = and i32 %128, 8, !dbg !4701
  %tobool226 = icmp ne i32 %and225, 0, !dbg !4701
  br i1 %tobool226, label %if.then227, label %if.end234, !dbg !4702

if.then227:                                       ; preds = %if.end224
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #16, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %n2, metadata !4601, metadata !DIExpression()), !dbg !4704
  %129 = load i32, ptr %num_slots.addr, align 4, !dbg !4705
  %130 = load i32, ptr %num_slots.addr, align 4, !dbg !4706
  %mul = mul i32 %129, %130, !dbg !4707
  store i32 %mul, ptr %n2, align 4, !dbg !4704
  %131 = load i32, ptr %n2, align 4, !dbg !4708
  %conv228 = zext i32 %131 to i64, !dbg !4708
  %call229 = call noalias ptr @kcalloc(i64 noundef %conv228, i64 noundef 4, i32 noundef 3264) #19, !dbg !4709
  %132 = load ptr, ptr %mt, align 8, !dbg !4710
  %red = getelementptr inbounds %struct.input_mt, ptr %132, i32 0, i32 5, !dbg !4711
  store ptr %call229, ptr %red, align 8, !dbg !4712
  %133 = load ptr, ptr %mt, align 8, !dbg !4713
  %red230 = getelementptr inbounds %struct.input_mt, ptr %133, i32 0, i32 5, !dbg !4715
  %134 = load ptr, ptr %red230, align 8, !dbg !4715
  %tobool231 = icmp ne ptr %134, null, !dbg !4713
  br i1 %tobool231, label %if.end233, label %if.then232, !dbg !4716

if.then232:                                       ; preds = %if.then227
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4717

if.end233:                                        ; preds = %if.then227
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4718
  br label %cleanup, !dbg !4718

cleanup:                                          ; preds = %if.then232, %if.end233
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #16, !dbg !4718
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup238 [
    i32 0, label %cleanup.cont
    i32 2, label %err_mem
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end234, !dbg !4719

if.end234:                                        ; preds = %cleanup.cont, %if.end224
  store i32 0, ptr %i, align 4, !dbg !4720
  br label %for.cond, !dbg !4722

for.cond:                                         ; preds = %for.inc, %if.end234
  %135 = load i32, ptr %i, align 4, !dbg !4723
  %136 = load i32, ptr %num_slots.addr, align 4, !dbg !4725
  %cmp235 = icmp ult i32 %135, %136, !dbg !4726
  br i1 %cmp235, label %for.body, label %for.end, !dbg !4727

for.body:                                         ; preds = %for.cond
  %137 = load ptr, ptr %mt, align 8, !dbg !4728
  %slots = getelementptr inbounds %struct.input_mt, ptr %137, i32 0, i32 6, !dbg !4729
  %138 = load i32, ptr %i, align 4, !dbg !4730
  %idxprom = sext i32 %138 to i64, !dbg !4728
  %arrayidx = getelementptr [0 x %struct.input_mt_slot], ptr %slots, i64 0, i64 %idxprom, !dbg !4728
  call void @input_mt_set_value(ptr noundef %arrayidx, i32 noundef 57, i32 noundef -1) #17, !dbg !4731
  br label %for.inc, !dbg !4731

for.inc:                                          ; preds = %for.body
  %139 = load i32, ptr %i, align 4, !dbg !4732
  %inc = add i32 %139, 1, !dbg !4732
  store i32 %inc, ptr %i, align 4, !dbg !4732
  br label %for.cond, !dbg !4733, !llvm.loop !4734

for.end:                                          ; preds = %for.cond
  %140 = load ptr, ptr %mt, align 8, !dbg !4738
  %frame = getelementptr inbounds %struct.input_mt, ptr %140, i32 0, i32 4, !dbg !4739
  store i32 1, ptr %frame, align 8, !dbg !4740
  %141 = load ptr, ptr %mt, align 8, !dbg !4741
  %142 = load ptr, ptr %dev.addr, align 8, !dbg !4742
  %mt237 = getelementptr inbounds %struct.input_dev, ptr %142, i32 0, i32 25, !dbg !4743
  store ptr %141, ptr %mt237, align 8, !dbg !4744
  store i32 0, ptr %retval, align 4, !dbg !4745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !4745

err_mem:                                          ; preds = %cleanup, %if.then12
  call void @llvm.dbg.label(metadata !4604), !dbg !4746
  %143 = load ptr, ptr %mt, align 8, !dbg !4747
  call void @kfree(ptr noundef %143) #17, !dbg !4748
  store i32 -12, ptr %retval, align 4, !dbg !4749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !4749

cleanup238:                                       ; preds = %err_mem, %for.end, %cleanup, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4750
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !4750
  %144 = load i32, ptr %retval, align 4, !dbg !4750
  ret i32 %144, !dbg !4750
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4751 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4755, metadata !DIExpression()), !dbg !4757
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4756, metadata !DIExpression()), !dbg !4758
  %0 = load i64, ptr %size.addr, align 8, !dbg !4759
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4760
  %or = or i32 %1, 256, !dbg !4761
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !4762
  ret ptr %call, !dbg !4763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !4764 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !4769, metadata !DIExpression()), !dbg !4772
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !4770, metadata !DIExpression()), !dbg !4773
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4774
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4771, metadata !DIExpression()), !dbg !4775
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !4776
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !4776
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !4776
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4776
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4776
  store i64 %4, ptr %bytes, align 8, !dbg !4776
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4776
  br i1 %call, label %if.then, label %if.end, !dbg !4778

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4779

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4780
  store i64 %5, ptr %retval, align 8, !dbg !4781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4781

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4782
  %6 = load i64, ptr %retval, align 8, !dbg !4782
  ret i64 %6, !dbg !4782
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !4783 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !4785, metadata !DIExpression()), !dbg !4788
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !4786, metadata !DIExpression()), !dbg !4789
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4790
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4787, metadata !DIExpression()), !dbg !4791
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !4792
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !4792
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4792
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4792
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4792
  store i64 %4, ptr %bytes, align 8, !dbg !4792
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4792
  br i1 %call, label %if.then, label %if.end, !dbg !4794

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4795

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4796
  store i64 %5, ptr %retval, align 8, !dbg !4797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4797

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4798
  %6 = load i64, ptr %retval, align 8, !dbg !4798
  ret i64 %6, !dbg !4798
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4799 dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4802 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4809, metadata !DIExpression()), !dbg !4813
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4810, metadata !DIExpression()), !dbg !4814
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4811, metadata !DIExpression()), !dbg !4816
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4817
  %rem = urem i64 %0, 64, !dbg !4817
  %shl = shl i64 1, %rem, !dbg !4817
  store i64 %shl, ptr %mask, align 8, !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4812, metadata !DIExpression()), !dbg !4819
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4820
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4821
  %div = udiv i64 %2, 64, !dbg !4821
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !4822
  store ptr %add.ptr, ptr %p, align 8, !dbg !4819
  %3 = load i64, ptr %mask, align 8, !dbg !4823
  %4 = load ptr, ptr %p, align 8, !dbg !4824
  %5 = load i64, ptr %4, align 8, !dbg !4825
  %or = or i64 %5, %3, !dbg !4825
  store i64 %or, ptr %4, align 8, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4826
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !4826
  ret void, !dbg !4826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4827 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4830, metadata !DIExpression()), !dbg !4832
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4831, metadata !DIExpression()), !dbg !4833
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4834
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4835
  %div = udiv i64 %1, 64, !dbg !4835
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4836
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !4837
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4838
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4839
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4840
  ret void, !dbg !4841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_abs(ptr noundef %dev, i32 noundef %dst, i32 noundef %src) #0 align 16 !dbg !4842 {
entry:
  %dev.addr = alloca ptr, align 8
  %dst.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4846, metadata !DIExpression()), !dbg !4849
  store i32 %dst, ptr %dst.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4847, metadata !DIExpression()), !dbg !4850
  store i32 %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4848, metadata !DIExpression()), !dbg !4851
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4852
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26, !dbg !4854
  %1 = load ptr, ptr %absinfo, align 8, !dbg !4854
  %tobool = icmp ne ptr %1, null, !dbg !4852
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4855

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %src.addr, align 4, !dbg !4856
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !4856
  br i1 %3, label %land.lhs.true1, label %cond.false, !dbg !4856

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !4856
  %absbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 8, !dbg !4856
  %arraydecay = getelementptr inbounds [1 x i64], ptr %absbit, i64 0, i64 0, !dbg !4856
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !4856
  %cmp = icmp ne i64 %5, 0, !dbg !4856
  %conv = zext i1 %cmp to i32, !dbg !4856
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4856
  br i1 %6, label %land.lhs.true2, label %cond.false, !dbg !4856

land.lhs.true2:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !4856
  %absbit3 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 8, !dbg !4856
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %absbit3, i64 0, i64 0, !dbg !4856
  %8 = ptrtoint ptr %arraydecay4 to i64, !dbg !4856
  %cmp5 = icmp ne i64 %8, 0, !dbg !4856
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !4856

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !4856
  %absbit8 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 8, !dbg !4856
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %absbit8, i64 0, i64 0, !dbg !4856
  %10 = load i64, ptr %arraydecay9, align 8, !dbg !4856
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4856
  br i1 %11, label %cond.true, label %cond.false, !dbg !4857

cond.true:                                        ; preds = %land.lhs.true7
  %12 = load i32, ptr %src.addr, align 4, !dbg !4856
  %conv10 = zext i32 %12 to i64, !dbg !4856
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !4856
  %absbit11 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 8, !dbg !4856
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %absbit11, i64 0, i64 0, !dbg !4856
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv10, ptr noundef %arraydecay12) #17, !dbg !4856
  br i1 %call, label %if.then, label %if.end, !dbg !4856

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true1, %land.lhs.true
  %14 = load i32, ptr %src.addr, align 4, !dbg !4856
  %conv14 = zext i32 %14 to i64, !dbg !4856
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !4856
  %absbit15 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 8, !dbg !4856
  %arraydecay16 = getelementptr inbounds [1 x i64], ptr %absbit15, i64 0, i64 0, !dbg !4856
  %call17 = call zeroext i1 @_test_bit(i64 noundef %conv14, ptr noundef %arraydecay16) #17, !dbg !4856
  br i1 %call17, label %if.then, label %if.end, !dbg !4857

if.then:                                          ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !4858
  %absinfo19 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 26, !dbg !4860
  %17 = load ptr, ptr %absinfo19, align 8, !dbg !4860
  %18 = load i32, ptr %dst.addr, align 4, !dbg !4861
  %idxprom = zext i32 %18 to i64, !dbg !4858
  %arrayidx = getelementptr %struct.input_absinfo, ptr %17, i64 %idxprom, !dbg !4858
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !4862
  %absinfo20 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 26, !dbg !4863
  %20 = load ptr, ptr %absinfo20, align 8, !dbg !4863
  %21 = load i32, ptr %src.addr, align 4, !dbg !4864
  %idxprom21 = zext i32 %21 to i64, !dbg !4862
  %arrayidx22 = getelementptr %struct.input_absinfo, ptr %20, i64 %idxprom21, !dbg !4862
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx22, i64 24, i1 false), !dbg !4862
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !4865
  %absinfo23 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 26, !dbg !4866
  %23 = load ptr, ptr %absinfo23, align 8, !dbg !4866
  %24 = load i32, ptr %dst.addr, align 4, !dbg !4867
  %idxprom24 = zext i32 %24 to i64, !dbg !4865
  %arrayidx25 = getelementptr %struct.input_absinfo, ptr %23, i64 %idxprom24, !dbg !4865
  %fuzz = getelementptr inbounds %struct.input_absinfo, ptr %arrayidx25, i32 0, i32 3, !dbg !4868
  store i32 0, ptr %fuzz, align 4, !dbg !4869
  %25 = load i32, ptr %dst.addr, align 4, !dbg !4870
  %26 = call i1 @llvm.is.constant.i32(i32 %25), !dbg !4870
  br i1 %26, label %land.lhs.true26, label %cond.false43, !dbg !4870

land.lhs.true26:                                  ; preds = %if.then
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !4870
  %absbit27 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 8, !dbg !4870
  %arraydecay28 = getelementptr inbounds [1 x i64], ptr %absbit27, i64 0, i64 0, !dbg !4870
  %28 = ptrtoint ptr %arraydecay28 to i64, !dbg !4870
  %cmp29 = icmp ne i64 %28, 0, !dbg !4870
  %conv30 = zext i1 %cmp29 to i32, !dbg !4870
  %29 = call i1 @llvm.is.constant.i32(i32 %conv30), !dbg !4870
  br i1 %29, label %land.lhs.true31, label %cond.false43, !dbg !4870

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !4870
  %absbit32 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 8, !dbg !4870
  %arraydecay33 = getelementptr inbounds [1 x i64], ptr %absbit32, i64 0, i64 0, !dbg !4870
  %31 = ptrtoint ptr %arraydecay33 to i64, !dbg !4870
  %cmp34 = icmp ne i64 %31, 0, !dbg !4870
  br i1 %cmp34, label %land.lhs.true36, label %cond.false43, !dbg !4870

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !4870
  %absbit37 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 8, !dbg !4870
  %arraydecay38 = getelementptr inbounds [1 x i64], ptr %absbit37, i64 0, i64 0, !dbg !4870
  %33 = load i64, ptr %arraydecay38, align 8, !dbg !4870
  %34 = call i1 @llvm.is.constant.i64(i64 %33), !dbg !4870
  br i1 %34, label %cond.true39, label %cond.false43, !dbg !4870

cond.true39:                                      ; preds = %land.lhs.true36
  %35 = load i32, ptr %dst.addr, align 4, !dbg !4870
  %conv40 = zext i32 %35 to i64, !dbg !4870
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !4870
  %absbit41 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 8, !dbg !4870
  %arraydecay42 = getelementptr inbounds [1 x i64], ptr %absbit41, i64 0, i64 0, !dbg !4870
  call void @generic___set_bit(i64 noundef %conv40, ptr noundef %arraydecay42) #17, !dbg !4870
  br label %cond.end, !dbg !4870

cond.false43:                                     ; preds = %land.lhs.true36, %land.lhs.true31, %land.lhs.true26, %if.then
  %37 = load i32, ptr %dst.addr, align 4, !dbg !4870
  %conv44 = zext i32 %37 to i64, !dbg !4870
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !4870
  %absbit45 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 8, !dbg !4870
  %arraydecay46 = getelementptr inbounds [1 x i64], ptr %absbit45, i64 0, i64 0, !dbg !4870
  call void @___set_bit(i64 noundef %conv44, ptr noundef %arraydecay46) #17, !dbg !4870
  br label %cond.end, !dbg !4870

cond.end:                                         ; preds = %cond.false43, %cond.true39
  br label %if.end, !dbg !4871

if.end:                                           ; preds = %cond.end, %cond.false, %cond.true, %entry
  ret void, !dbg !4872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !4873 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4877, metadata !DIExpression()), !dbg !4880
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4878, metadata !DIExpression()), !dbg !4881
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4879, metadata !DIExpression()), !dbg !4882
  %0 = load i64, ptr %n.addr, align 8, !dbg !4883
  %1 = load i64, ptr %size.addr, align 8, !dbg !4884
  %2 = load i32, ptr %flags.addr, align 4, !dbg !4885
  %or = or i32 %2, 256, !dbg !4886
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !4887
  ret ptr %call, !dbg !4888
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_mt_set_value(ptr noundef %slot, i32 noundef %code, i32 noundef %value) #4 align 16 !dbg !4889 {
entry:
  %slot.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !4894, metadata !DIExpression()), !dbg !4897
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !4895, metadata !DIExpression()), !dbg !4898
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4896, metadata !DIExpression()), !dbg !4899
  %0 = load i32, ptr %value.addr, align 4, !dbg !4900
  %1 = load ptr, ptr %slot.addr, align 8, !dbg !4901
  %abs = getelementptr inbounds %struct.input_mt_slot, ptr %1, i32 0, i32 0, !dbg !4902
  %2 = load i32, ptr %code.addr, align 4, !dbg !4903
  %sub = sub i32 %2, 48, !dbg !4904
  %idxprom = zext i32 %sub to i64, !dbg !4901
  %arrayidx = getelementptr [14 x i32], ptr %abs, i64 0, i64 %idxprom, !dbg !4901
  store i32 %0, ptr %arrayidx, align 4, !dbg !4905
  ret void, !dbg !4906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4907 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_mt_destroy_slots(ptr noundef %dev) #0 align 16 !dbg !4910 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4914
  %mt = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !4916
  %1 = load ptr, ptr %mt, align 8, !dbg !4916
  %tobool = icmp ne ptr %1, null, !dbg !4914
  br i1 %tobool, label %if.then, label %if.end, !dbg !4917

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4918
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 25, !dbg !4920
  %3 = load ptr, ptr %mt1, align 8, !dbg !4920
  %red = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 5, !dbg !4921
  %4 = load ptr, ptr %red, align 8, !dbg !4921
  call void @kfree(ptr noundef %4) #17, !dbg !4922
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !4923
  %mt2 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 25, !dbg !4924
  %6 = load ptr, ptr %mt2, align 8, !dbg !4924
  call void @kfree(ptr noundef %6) #17, !dbg !4925
  br label %if.end, !dbg !4926

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !4927
  %mt3 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 25, !dbg !4928
  store ptr null, ptr %mt3, align 8, !dbg !4929
  ret void, !dbg !4930
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @input_mt_report_slot_state(ptr noundef %dev, i32 noundef %tool_type, i1 noundef zeroext %active) #0 align 16 !dbg !4931 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %tool_type.addr = alloca i32, align 4
  %active.addr = alloca i8, align 1
  %mt = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4935, metadata !DIExpression()), !dbg !4941
  store i32 %tool_type, ptr %tool_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tool_type.addr, metadata !4936, metadata !DIExpression()), !dbg !4942
  %frombool = zext i1 %active to i8
  store i8 %frombool, ptr %active.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %active.addr, metadata !4937, metadata !DIExpression()), !dbg !4943
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !4938, metadata !DIExpression()), !dbg !4945
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4946
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !4947
  %1 = load ptr, ptr %mt1, align 8, !dbg !4947
  store ptr %1, ptr %mt, align 8, !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #16, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !4939, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !4950
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4940, metadata !DIExpression()), !dbg !4951
  %2 = load ptr, ptr %mt, align 8, !dbg !4952
  %tobool = icmp ne ptr %2, null, !dbg !4952
  br i1 %tobool, label %if.end, label %if.then, !dbg !4954

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4955

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mt, align 8, !dbg !4956
  %slots = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 6, !dbg !4957
  %4 = load ptr, ptr %mt, align 8, !dbg !4958
  %slot2 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 2, !dbg !4959
  %5 = load i32, ptr %slot2, align 8, !dbg !4959
  %idxprom = sext i32 %5 to i64, !dbg !4956
  %arrayidx = getelementptr [0 x %struct.input_mt_slot], ptr %slots, i64 0, i64 %idxprom, !dbg !4956
  store ptr %arrayidx, ptr %slot, align 8, !dbg !4960
  %6 = load ptr, ptr %mt, align 8, !dbg !4961
  %frame = getelementptr inbounds %struct.input_mt, ptr %6, i32 0, i32 4, !dbg !4962
  %7 = load i32, ptr %frame, align 8, !dbg !4962
  %8 = load ptr, ptr %slot, align 8, !dbg !4963
  %frame3 = getelementptr inbounds %struct.input_mt_slot, ptr %8, i32 0, i32 1, !dbg !4964
  store i32 %7, ptr %frame3, align 4, !dbg !4965
  %9 = load i8, ptr %active.addr, align 1, !dbg !4966, !range !4968, !noundef !1479
  %tobool4 = trunc i8 %9 to i1, !dbg !4966
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4969

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !4970
  call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 57, i32 noundef -1) #17, !dbg !4972
  store i1 false, ptr %retval, align 1, !dbg !4973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4973

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %slot, align 8, !dbg !4974
  %call = call i32 @input_mt_get_value(ptr noundef %11, i32 noundef 57) #17, !dbg !4975
  store i32 %call, ptr %id, align 4, !dbg !4976
  %12 = load i32, ptr %id, align 4, !dbg !4977
  %cmp = icmp slt i32 %12, 0, !dbg !4979
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4980

if.then7:                                         ; preds = %if.end6
  %13 = load ptr, ptr %mt, align 8, !dbg !4981
  %call8 = call i32 @input_mt_new_trkid(ptr noundef %13) #17, !dbg !4982
  store i32 %call8, ptr %id, align 4, !dbg !4983
  br label %if.end9, !dbg !4984

if.end9:                                          ; preds = %if.then7, %if.end6
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !4985
  %15 = load i32, ptr %id, align 4, !dbg !4986
  call void @input_event(ptr noundef %14, i32 noundef 3, i32 noundef 57, i32 noundef %15) #17, !dbg !4987
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !4988
  %17 = load i32, ptr %tool_type.addr, align 4, !dbg !4989
  call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 55, i32 noundef %17) #17, !dbg !4990
  store i1 true, ptr %retval, align 1, !dbg !4991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4991

cleanup:                                          ; preds = %if.end9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !4992
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #16, !dbg !4992
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !4992
  %18 = load i1, ptr %retval, align 1, !dbg !4992
  ret i1 %18, !dbg !4992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4993 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_mt_get_value(ptr noundef %slot, i32 noundef %code) #4 align 16 !dbg !4996 {
entry:
  %slot.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5002, metadata !DIExpression()), !dbg !5004
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5003, metadata !DIExpression()), !dbg !5005
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5006
  %abs = getelementptr inbounds %struct.input_mt_slot, ptr %0, i32 0, i32 0, !dbg !5007
  %1 = load i32, ptr %code.addr, align 4, !dbg !5008
  %sub = sub i32 %1, 48, !dbg !5009
  %idxprom = zext i32 %sub to i64, !dbg !5006
  %arrayidx = getelementptr [14 x i32], ptr %abs, i64 0, i64 %idxprom, !dbg !5006
  %2 = load i32, ptr %arrayidx, align 4, !dbg !5006
  ret i32 %2, !dbg !5010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_mt_new_trkid(ptr noundef %mt) #4 align 16 !dbg !5011 {
entry:
  %mt.addr = alloca ptr, align 8
  store ptr %mt, ptr %mt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %mt.addr, align 8, !dbg !5017
  %trkid = getelementptr inbounds %struct.input_mt, ptr %0, i32 0, i32 0, !dbg !5018
  %1 = load i32, ptr %trkid, align 8, !dbg !5019
  %inc = add i32 %1, 1, !dbg !5019
  store i32 %inc, ptr %trkid, align 8, !dbg !5019
  %and = and i32 %1, 65535, !dbg !5020
  ret i32 %and, !dbg !5021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_mt_report_finger_count(ptr noundef %dev, i32 noundef %count) #0 align 16 !dbg !5022 {
entry:
  %dev.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5026, metadata !DIExpression()), !dbg !5028
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5027, metadata !DIExpression()), !dbg !5029
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5030
  %1 = load i32, ptr %count.addr, align 4, !dbg !5031
  %cmp = icmp eq i32 %1, 1, !dbg !5032
  %conv = zext i1 %cmp to i32, !dbg !5032
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 325, i32 noundef %conv) #17, !dbg !5033
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5034
  %3 = load i32, ptr %count.addr, align 4, !dbg !5035
  %cmp1 = icmp eq i32 %3, 2, !dbg !5036
  %conv2 = zext i1 %cmp1 to i32, !dbg !5036
  call void @input_event(ptr noundef %2, i32 noundef 1, i32 noundef 333, i32 noundef %conv2) #17, !dbg !5037
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5038
  %5 = load i32, ptr %count.addr, align 4, !dbg !5039
  %cmp3 = icmp eq i32 %5, 3, !dbg !5040
  %conv4 = zext i1 %cmp3 to i32, !dbg !5040
  call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 334, i32 noundef %conv4) #17, !dbg !5041
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5042
  %7 = load i32, ptr %count.addr, align 4, !dbg !5043
  %cmp5 = icmp eq i32 %7, 4, !dbg !5044
  %conv6 = zext i1 %cmp5 to i32, !dbg !5044
  call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef 335, i32 noundef %conv6) #17, !dbg !5045
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5046
  %9 = load i32, ptr %count.addr, align 4, !dbg !5047
  %cmp7 = icmp eq i32 %9, 5, !dbg !5048
  %conv8 = zext i1 %cmp7 to i32, !dbg !5048
  call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 328, i32 noundef %conv8) #17, !dbg !5049
  ret void, !dbg !5050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_mt_report_pointer_emulation(ptr noundef %dev, i1 noundef zeroext %use_count) #0 align 16 !dbg !5051 {
entry:
  %dev.addr = alloca ptr, align 8
  %use_count.addr = alloca i8, align 1
  %mt = alloca ptr, align 8
  %oldest = alloca ptr, align 8
  %oldid = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ps = alloca ptr, align 8
  %id = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5055, metadata !DIExpression()), !dbg !5074
  %frombool = zext i1 %use_count to i8
  store i8 %frombool, ptr %use_count.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_count.addr, metadata !5056, metadata !DIExpression()), !dbg !5075
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !5076
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !5057, metadata !DIExpression()), !dbg !5077
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5078
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !5079
  %1 = load ptr, ptr %mt1, align 8, !dbg !5079
  store ptr %1, ptr %mt, align 8, !dbg !5077
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldest) #16, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %oldest, metadata !5058, metadata !DIExpression()), !dbg !5081
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldid) #16, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %oldid, metadata !5059, metadata !DIExpression()), !dbg !5083
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #16, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5060, metadata !DIExpression()), !dbg !5084
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5061, metadata !DIExpression()), !dbg !5085
  %2 = load ptr, ptr %mt, align 8, !dbg !5086
  %tobool = icmp ne ptr %2, null, !dbg !5086
  br i1 %tobool, label %if.end, label %if.then, !dbg !5088

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup117, !dbg !5089

if.end:                                           ; preds = %entry
  store ptr null, ptr %oldest, align 8, !dbg !5090
  %3 = load ptr, ptr %mt, align 8, !dbg !5091
  %trkid = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 0, !dbg !5092
  %4 = load i32, ptr %trkid, align 8, !dbg !5092
  store i32 %4, ptr %oldid, align 4, !dbg !5093
  store i32 0, ptr %count, align 4, !dbg !5094
  store i32 0, ptr %i, align 4, !dbg !5095
  br label %for.cond, !dbg !5096

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !5097
  %6 = load ptr, ptr %mt, align 8, !dbg !5098
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %6, i32 0, i32 1, !dbg !5099
  %7 = load i32, ptr %num_slots, align 4, !dbg !5099
  %cmp = icmp slt i32 %5, %7, !dbg !5100
  br i1 %cmp, label %for.body, label %for.end, !dbg !5101

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps) #16, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %ps, metadata !5062, metadata !DIExpression()), !dbg !5103
  %8 = load ptr, ptr %mt, align 8, !dbg !5104
  %slots = getelementptr inbounds %struct.input_mt, ptr %8, i32 0, i32 6, !dbg !5105
  %9 = load i32, ptr %i, align 4, !dbg !5106
  %idxprom = sext i32 %9 to i64, !dbg !5104
  %arrayidx = getelementptr [0 x %struct.input_mt_slot], ptr %slots, i64 0, i64 %idxprom, !dbg !5104
  store ptr %arrayidx, ptr %ps, align 8, !dbg !5103
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !5107
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5066, metadata !DIExpression()), !dbg !5108
  %10 = load ptr, ptr %ps, align 8, !dbg !5109
  %call = call i32 @input_mt_get_value(ptr noundef %10, i32 noundef 57) #17, !dbg !5110
  store i32 %call, ptr %id, align 4, !dbg !5108
  %11 = load i32, ptr %id, align 4, !dbg !5111
  %cmp2 = icmp slt i32 %11, 0, !dbg !5113
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5114

if.then3:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5115

if.end4:                                          ; preds = %for.body
  %12 = load i32, ptr %id, align 4, !dbg !5116
  %13 = load i32, ptr %oldid, align 4, !dbg !5118
  %sub = sub i32 %12, %13, !dbg !5119
  %and = and i32 %sub, 32768, !dbg !5120
  %tobool5 = icmp ne i32 %and, 0, !dbg !5120
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5121

if.then6:                                         ; preds = %if.end4
  %14 = load ptr, ptr %ps, align 8, !dbg !5122
  store ptr %14, ptr %oldest, align 8, !dbg !5124
  %15 = load i32, ptr %id, align 4, !dbg !5125
  store i32 %15, ptr %oldid, align 4, !dbg !5126
  br label %if.end7, !dbg !5127

if.end7:                                          ; preds = %if.then6, %if.end4
  %16 = load i32, ptr %count, align 4, !dbg !5128
  %inc = add i32 %16, 1, !dbg !5128
  store i32 %inc, ptr %count, align 4, !dbg !5128
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5129
  br label %cleanup, !dbg !5129

cleanup:                                          ; preds = %if.end7, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !5129
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps) #16, !dbg !5129
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5130

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %17 = load i32, ptr %i, align 4, !dbg !5131
  %inc9 = add i32 %17, 1, !dbg !5131
  store i32 %inc9, ptr %i, align 4, !dbg !5131
  br label %for.cond, !dbg !5132, !llvm.loop !5133

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5135
  %19 = load i32, ptr %count, align 4, !dbg !5136
  %cmp10 = icmp sgt i32 %19, 0, !dbg !5137
  %conv = zext i1 %cmp10 to i32, !dbg !5137
  call void @input_event(ptr noundef %18, i32 noundef 1, i32 noundef 330, i32 noundef %conv) #17, !dbg !5138
  %20 = load i8, ptr %use_count.addr, align 1, !dbg !5139, !range !4968, !noundef !1479
  %tobool11 = trunc i8 %20 to i1, !dbg !5139
  br i1 %tobool11, label %if.then12, label %if.end62, !dbg !5141

if.then12:                                        ; preds = %for.end
  %21 = load i32, ptr %count, align 4, !dbg !5142
  %cmp13 = icmp eq i32 %21, 0, !dbg !5145
  br i1 %cmp13, label %land.lhs.true, label %if.end61, !dbg !5146

land.lhs.true:                                    ; preds = %if.then12
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5147
  %absbit = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 8, !dbg !5147
  %arraydecay = getelementptr inbounds [1 x i64], ptr %absbit, i64 0, i64 0, !dbg !5147
  %23 = ptrtoint ptr %arraydecay to i64, !dbg !5147
  %cmp15 = icmp ne i64 %23, 0, !dbg !5147
  %conv16 = zext i1 %cmp15 to i32, !dbg !5147
  %24 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !5147
  br i1 %24, label %land.lhs.true17, label %cond.false, !dbg !5147

land.lhs.true17:                                  ; preds = %land.lhs.true
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !5147
  %absbit18 = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 8, !dbg !5147
  %arraydecay19 = getelementptr inbounds [1 x i64], ptr %absbit18, i64 0, i64 0, !dbg !5147
  %26 = ptrtoint ptr %arraydecay19 to i64, !dbg !5147
  %cmp20 = icmp ne i64 %26, 0, !dbg !5147
  br i1 %cmp20, label %land.lhs.true22, label %cond.false, !dbg !5147

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5147
  %absbit23 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 8, !dbg !5147
  %arraydecay24 = getelementptr inbounds [1 x i64], ptr %absbit23, i64 0, i64 0, !dbg !5147
  %28 = load i64, ptr %arraydecay24, align 8, !dbg !5147
  %29 = call i1 @llvm.is.constant.i64(i64 %28), !dbg !5147
  br i1 %29, label %cond.true, label %cond.false, !dbg !5148

cond.true:                                        ; preds = %land.lhs.true22
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !5147
  %absbit25 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 8, !dbg !5147
  %arraydecay26 = getelementptr inbounds [1 x i64], ptr %absbit25, i64 0, i64 0, !dbg !5147
  %call27 = call zeroext i1 @const_test_bit(i64 noundef 59, ptr noundef %arraydecay26) #17, !dbg !5147
  br i1 %call27, label %if.end61, label %land.lhs.true33, !dbg !5147

cond.false:                                       ; preds = %land.lhs.true22, %land.lhs.true17, %land.lhs.true
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !5147
  %absbit29 = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 8, !dbg !5147
  %arraydecay30 = getelementptr inbounds [1 x i64], ptr %absbit29, i64 0, i64 0, !dbg !5147
  %call31 = call zeroext i1 @_test_bit(i64 noundef 59, ptr noundef %arraydecay30) #17, !dbg !5147
  br i1 %call31, label %if.end61, label %land.lhs.true33, !dbg !5148

land.lhs.true33:                                  ; preds = %cond.false, %cond.true
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %absbit34 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 8, !dbg !5149
  %arraydecay35 = getelementptr inbounds [1 x i64], ptr %absbit34, i64 0, i64 0, !dbg !5149
  %33 = ptrtoint ptr %arraydecay35 to i64, !dbg !5149
  %cmp36 = icmp ne i64 %33, 0, !dbg !5149
  %conv37 = zext i1 %cmp36 to i32, !dbg !5149
  %34 = call i1 @llvm.is.constant.i32(i32 %conv37), !dbg !5149
  br i1 %34, label %land.lhs.true38, label %cond.false51, !dbg !5149

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %absbit39 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 8, !dbg !5149
  %arraydecay40 = getelementptr inbounds [1 x i64], ptr %absbit39, i64 0, i64 0, !dbg !5149
  %36 = ptrtoint ptr %arraydecay40 to i64, !dbg !5149
  %cmp41 = icmp ne i64 %36, 0, !dbg !5149
  br i1 %cmp41, label %land.lhs.true43, label %cond.false51, !dbg !5149

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %absbit44 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 8, !dbg !5149
  %arraydecay45 = getelementptr inbounds [1 x i64], ptr %absbit44, i64 0, i64 0, !dbg !5149
  %38 = load i64, ptr %arraydecay45, align 8, !dbg !5149
  %39 = call i1 @llvm.is.constant.i64(i64 %38), !dbg !5149
  br i1 %39, label %cond.true46, label %cond.false51, !dbg !5150

cond.true46:                                      ; preds = %land.lhs.true43
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %absbit47 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 8, !dbg !5149
  %arraydecay48 = getelementptr inbounds [1 x i64], ptr %absbit47, i64 0, i64 0, !dbg !5149
  %call49 = call zeroext i1 @const_test_bit(i64 noundef 25, ptr noundef %arraydecay48) #17, !dbg !5149
  br i1 %call49, label %land.lhs.true56, label %if.end61, !dbg !5149

cond.false51:                                     ; preds = %land.lhs.true43, %land.lhs.true38, %land.lhs.true33
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %absbit52 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 8, !dbg !5149
  %arraydecay53 = getelementptr inbounds [1 x i64], ptr %absbit52, i64 0, i64 0, !dbg !5149
  %call54 = call zeroext i1 @_test_bit(i64 noundef 25, ptr noundef %arraydecay53) #17, !dbg !5149
  br i1 %call54, label %land.lhs.true56, label %if.end61, !dbg !5150

land.lhs.true56:                                  ; preds = %cond.false51, %cond.true46
  %42 = load ptr, ptr %dev.addr, align 8, !dbg !5151
  %call57 = call i32 @input_abs_get_val(ptr noundef %42, i32 noundef 25) #17, !dbg !5152
  %cmp58 = icmp ne i32 %call57, 0, !dbg !5153
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5154

if.then60:                                        ; preds = %land.lhs.true56
  store i32 1, ptr %count, align 4, !dbg !5155
  br label %if.end61, !dbg !5157

if.end61:                                         ; preds = %if.then60, %land.lhs.true56, %cond.false51, %cond.true46, %cond.false, %cond.true, %if.then12
  %43 = load ptr, ptr %dev.addr, align 8, !dbg !5158
  %44 = load i32, ptr %count, align 4, !dbg !5159
  call void @input_mt_report_finger_count(ptr noundef %43, i32 noundef %44) #17, !dbg !5160
  br label %if.end62, !dbg !5161

if.end62:                                         ; preds = %if.end61, %for.end
  %45 = load ptr, ptr %oldest, align 8, !dbg !5162
  %tobool63 = icmp ne ptr %45, null, !dbg !5162
  br i1 %tobool63, label %if.then64, label %if.else, !dbg !5163

if.then64:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #16, !dbg !5164
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5067, metadata !DIExpression()), !dbg !5165
  %46 = load ptr, ptr %oldest, align 8, !dbg !5166
  %call65 = call i32 @input_mt_get_value(ptr noundef %46, i32 noundef 53) #17, !dbg !5167
  store i32 %call65, ptr %x, align 4, !dbg !5165
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #16, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5070, metadata !DIExpression()), !dbg !5169
  %47 = load ptr, ptr %oldest, align 8, !dbg !5170
  %call66 = call i32 @input_mt_get_value(ptr noundef %47, i32 noundef 54) #17, !dbg !5171
  store i32 %call66, ptr %y, align 4, !dbg !5169
  %48 = load ptr, ptr %dev.addr, align 8, !dbg !5172
  %49 = load i32, ptr %x, align 4, !dbg !5173
  call void @input_event(ptr noundef %48, i32 noundef 3, i32 noundef 0, i32 noundef %49) #17, !dbg !5174
  %50 = load ptr, ptr %dev.addr, align 8, !dbg !5175
  %51 = load i32, ptr %y, align 4, !dbg !5176
  call void @input_event(ptr noundef %50, i32 noundef 3, i32 noundef 1, i32 noundef %51) #17, !dbg !5177
  %52 = load ptr, ptr %dev.addr, align 8, !dbg !5178
  %absbit67 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 8, !dbg !5178
  %arraydecay68 = getelementptr inbounds [1 x i64], ptr %absbit67, i64 0, i64 0, !dbg !5178
  %53 = ptrtoint ptr %arraydecay68 to i64, !dbg !5178
  %cmp69 = icmp ne i64 %53, 0, !dbg !5178
  %conv70 = zext i1 %cmp69 to i32, !dbg !5178
  %54 = call i1 @llvm.is.constant.i32(i32 %conv70), !dbg !5178
  br i1 %54, label %land.lhs.true71, label %cond.false84, !dbg !5178

land.lhs.true71:                                  ; preds = %if.then64
  %55 = load ptr, ptr %dev.addr, align 8, !dbg !5178
  %absbit72 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 8, !dbg !5178
  %arraydecay73 = getelementptr inbounds [1 x i64], ptr %absbit72, i64 0, i64 0, !dbg !5178
  %56 = ptrtoint ptr %arraydecay73 to i64, !dbg !5178
  %cmp74 = icmp ne i64 %56, 0, !dbg !5178
  br i1 %cmp74, label %land.lhs.true76, label %cond.false84, !dbg !5178

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %57 = load ptr, ptr %dev.addr, align 8, !dbg !5178
  %absbit77 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 8, !dbg !5178
  %arraydecay78 = getelementptr inbounds [1 x i64], ptr %absbit77, i64 0, i64 0, !dbg !5178
  %58 = load i64, ptr %arraydecay78, align 8, !dbg !5178
  %59 = call i1 @llvm.is.constant.i64(i64 %58), !dbg !5178
  br i1 %59, label %cond.true79, label %cond.false84, !dbg !5179

cond.true79:                                      ; preds = %land.lhs.true76
  %60 = load ptr, ptr %dev.addr, align 8, !dbg !5178
  %absbit80 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 8, !dbg !5178
  %arraydecay81 = getelementptr inbounds [1 x i64], ptr %absbit80, i64 0, i64 0, !dbg !5178
  %call82 = call zeroext i1 @const_test_bit(i64 noundef 58, ptr noundef %arraydecay81) #17, !dbg !5178
  br i1 %call82, label %if.then89, label %if.end91, !dbg !5178

cond.false84:                                     ; preds = %land.lhs.true76, %land.lhs.true71, %if.then64
  %61 = load ptr, ptr %dev.addr, align 8, !dbg !5178
  %absbit85 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 8, !dbg !5178
  %arraydecay86 = getelementptr inbounds [1 x i64], ptr %absbit85, i64 0, i64 0, !dbg !5178
  %call87 = call zeroext i1 @_test_bit(i64 noundef 58, ptr noundef %arraydecay86) #17, !dbg !5178
  br i1 %call87, label %if.then89, label %if.end91, !dbg !5179

if.then89:                                        ; preds = %cond.false84, %cond.true79
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #16, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5071, metadata !DIExpression()), !dbg !5181
  %62 = load ptr, ptr %oldest, align 8, !dbg !5182
  %call90 = call i32 @input_mt_get_value(ptr noundef %62, i32 noundef 58) #17, !dbg !5183
  store i32 %call90, ptr %p, align 4, !dbg !5181
  %63 = load ptr, ptr %dev.addr, align 8, !dbg !5184
  %64 = load i32, ptr %p, align 4, !dbg !5185
  call void @input_event(ptr noundef %63, i32 noundef 3, i32 noundef 24, i32 noundef %64) #17, !dbg !5186
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #16, !dbg !5187
  br label %if.end91, !dbg !5188

if.end91:                                         ; preds = %if.then89, %cond.false84, %cond.true79
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #16, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #16, !dbg !5189
  br label %if.end116, !dbg !5190

if.else:                                          ; preds = %if.end62
  %65 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  %absbit92 = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 8, !dbg !5191
  %arraydecay93 = getelementptr inbounds [1 x i64], ptr %absbit92, i64 0, i64 0, !dbg !5191
  %66 = ptrtoint ptr %arraydecay93 to i64, !dbg !5191
  %cmp94 = icmp ne i64 %66, 0, !dbg !5191
  %conv95 = zext i1 %cmp94 to i32, !dbg !5191
  %67 = call i1 @llvm.is.constant.i32(i32 %conv95), !dbg !5191
  br i1 %67, label %land.lhs.true96, label %cond.false109, !dbg !5191

land.lhs.true96:                                  ; preds = %if.else
  %68 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  %absbit97 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 8, !dbg !5191
  %arraydecay98 = getelementptr inbounds [1 x i64], ptr %absbit97, i64 0, i64 0, !dbg !5191
  %69 = ptrtoint ptr %arraydecay98 to i64, !dbg !5191
  %cmp99 = icmp ne i64 %69, 0, !dbg !5191
  br i1 %cmp99, label %land.lhs.true101, label %cond.false109, !dbg !5191

land.lhs.true101:                                 ; preds = %land.lhs.true96
  %70 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  %absbit102 = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 8, !dbg !5191
  %arraydecay103 = getelementptr inbounds [1 x i64], ptr %absbit102, i64 0, i64 0, !dbg !5191
  %71 = load i64, ptr %arraydecay103, align 8, !dbg !5191
  %72 = call i1 @llvm.is.constant.i64(i64 %71), !dbg !5191
  br i1 %72, label %cond.true104, label %cond.false109, !dbg !5194

cond.true104:                                     ; preds = %land.lhs.true101
  %73 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  %absbit105 = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 8, !dbg !5191
  %arraydecay106 = getelementptr inbounds [1 x i64], ptr %absbit105, i64 0, i64 0, !dbg !5191
  %call107 = call zeroext i1 @const_test_bit(i64 noundef 58, ptr noundef %arraydecay106) #17, !dbg !5191
  br i1 %call107, label %if.then114, label %if.end115, !dbg !5191

cond.false109:                                    ; preds = %land.lhs.true101, %land.lhs.true96, %if.else
  %74 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  %absbit110 = getelementptr inbounds %struct.input_dev, ptr %74, i32 0, i32 8, !dbg !5191
  %arraydecay111 = getelementptr inbounds [1 x i64], ptr %absbit110, i64 0, i64 0, !dbg !5191
  %call112 = call zeroext i1 @_test_bit(i64 noundef 58, ptr noundef %arraydecay111) #17, !dbg !5191
  br i1 %call112, label %if.then114, label %if.end115, !dbg !5194

if.then114:                                       ; preds = %cond.false109, %cond.true104
  %75 = load ptr, ptr %dev.addr, align 8, !dbg !5195
  call void @input_event(ptr noundef %75, i32 noundef 3, i32 noundef 24, i32 noundef 0) #17, !dbg !5196
  br label %if.end115, !dbg !5196

if.end115:                                        ; preds = %if.then114, %cond.false109, %cond.true104
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end91
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5197
  br label %cleanup117, !dbg !5197

cleanup117:                                       ; preds = %if.end116, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5197
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #16, !dbg !5197
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldid) #16, !dbg !5197
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldest) #16, !dbg !5197
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !5197
  %cleanup.dest122 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest122, label %unreachable [
    i32 0, label %cleanup.cont123
    i32 1, label %cleanup.cont123
  ]

cleanup.cont123:                                  ; preds = %cleanup117, %cleanup117
  ret void, !dbg !5197

unreachable:                                      ; preds = %cleanup117, %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5198 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5204, metadata !DIExpression()), !dbg !5209
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5205, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5206, metadata !DIExpression()), !dbg !5212
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5213
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5214
  %div = udiv i64 %1, 64, !dbg !5214
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5215
  store ptr %add.ptr, ptr %p, align 8, !dbg !5212
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5216
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5207, metadata !DIExpression()), !dbg !5217
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5218
  %rem = urem i64 %2, 64, !dbg !5218
  %shl = shl i64 1, %rem, !dbg !5218
  store i64 %shl, ptr %mask, align 8, !dbg !5217
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5219
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5208, metadata !DIExpression()), !dbg !5220
  %3 = load ptr, ptr %p, align 8, !dbg !5221
  %4 = load i64, ptr %3, align 8, !dbg !5222
  store i64 %4, ptr %val, align 8, !dbg !5220
  %5 = load i64, ptr %val, align 8, !dbg !5223
  %6 = load i64, ptr %mask, align 8, !dbg !5224
  %and = and i64 %5, %6, !dbg !5225
  %tobool = icmp ne i64 %and, 0, !dbg !5226
  %lnot = xor i1 %tobool, true, !dbg !5226
  %lnot1 = xor i1 %lnot, true, !dbg !5227
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5228
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5228
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5228
  ret i1 %lnot1, !dbg !5229
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5230 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5232, metadata !DIExpression()), !dbg !5234
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5233, metadata !DIExpression()), !dbg !5235
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5236
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5237
  %div = udiv i64 %1, 64, !dbg !5237
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5238
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5239
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5240
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5241
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5242
  ret i1 %call, !dbg !5243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_abs_get_val(ptr noundef %dev, i32 noundef %axis) #4 align 16 !dbg !5244 {
entry:
  %dev.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5248, metadata !DIExpression()), !dbg !5250
  store i32 %axis, ptr %axis.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %axis.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5250
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26, !dbg !5250
  %1 = load ptr, ptr %absinfo, align 8, !dbg !5250
  %tobool = icmp ne ptr %1, null, !dbg !5250
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5250

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5250
  %absinfo1 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 26, !dbg !5250
  %3 = load ptr, ptr %absinfo1, align 8, !dbg !5250
  %4 = load i32, ptr %axis.addr, align 4, !dbg !5250
  %idxprom = zext i32 %4 to i64, !dbg !5250
  %arrayidx = getelementptr %struct.input_absinfo, ptr %3, i64 %idxprom, !dbg !5250
  %value = getelementptr inbounds %struct.input_absinfo, ptr %arrayidx, i32 0, i32 0, !dbg !5250
  %5 = load i32, ptr %value, align 4, !dbg !5250
  br label %cond.end, !dbg !5250

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !5250
  ret i32 %cond, !dbg !5250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_mt_drop_unused(ptr noundef %dev) #0 align 16 !dbg !5251 {
entry:
  %dev.addr = alloca ptr, align 8
  %mt = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5253, metadata !DIExpression()), !dbg !5263
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !5254, metadata !DIExpression()), !dbg !5265
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5266
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !5267
  %1 = load ptr, ptr %mt1, align 8, !dbg !5267
  store ptr %1, ptr %mt, align 8, !dbg !5265
  %2 = load ptr, ptr %mt, align 8, !dbg !5268
  %tobool = icmp ne ptr %2, null, !dbg !5268
  br i1 %tobool, label %if.then, label %if.end, !dbg !5269

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5255, metadata !DIExpression()), !dbg !5271
  br label %do.body, !dbg !5272

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !5273

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5274
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5258, metadata !DIExpression()), !dbg !5274
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5274
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5262, metadata !DIExpression()), !dbg !5274
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5274
  %conv = zext i1 %cmp to i32, !dbg !5274
  store i32 1, ptr %tmp, align 4, !dbg !5274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5275
  %3 = load i32, ptr %tmp, align 4, !dbg !5274
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5275
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 36, !dbg !5275
  %call = call ptr @spinlock_check(ptr noundef %event_lock) #17, !dbg !5275
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5275
  store i64 %call3, ptr %flags, align 8, !dbg !5275
  br label %do.cond, !dbg !5275

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5275

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5273

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5273

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5276
  %6 = load ptr, ptr %mt, align 8, !dbg !5277
  call void @__input_mt_drop_unused(ptr noundef %5, ptr noundef %6) #17, !dbg !5278
  %7 = load ptr, ptr %mt, align 8, !dbg !5279
  %frame = getelementptr inbounds %struct.input_mt, ptr %7, i32 0, i32 4, !dbg !5280
  %8 = load i32, ptr %frame, align 8, !dbg !5281
  %inc = add i32 %8, 1, !dbg !5281
  store i32 %inc, ptr %frame, align 8, !dbg !5281
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5282
  %event_lock6 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 36, !dbg !5283
  %10 = load i64, ptr %flags, align 8, !dbg !5284
  call void @spin_unlock_irqrestore(ptr noundef %event_lock6, i64 noundef %10) #17, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5286
  br label %if.end, !dbg !5287

if.end:                                           ; preds = %do.end5, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !5288
  ret void, !dbg !5288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5289 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !5294 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5302
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5303
  ret ptr %1, !dbg !5304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__input_mt_drop_unused(ptr noundef %dev, ptr noundef %mt) #0 align 16 !dbg !5305 {
entry:
  %dev.addr = alloca ptr, align 8
  %mt.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5309, metadata !DIExpression()), !dbg !5312
  store ptr %mt, ptr %mt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !5310, metadata !DIExpression()), !dbg !5313
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5311, metadata !DIExpression()), !dbg !5315
  br label %do.body, !dbg !5316

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5317
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36, !dbg !5317
  br label %do.cond, !dbg !5317

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5317

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !5319
  br label %for.cond, !dbg !5321

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, ptr %i, align 4, !dbg !5322
  %2 = load ptr, ptr %mt.addr, align 8, !dbg !5324
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %2, i32 0, i32 1, !dbg !5325
  %3 = load i32, ptr %num_slots, align 4, !dbg !5325
  %cmp = icmp slt i32 %1, %3, !dbg !5326
  br i1 %cmp, label %for.body, label %for.end, !dbg !5327

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %mt.addr, align 8, !dbg !5328
  %slots = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 6, !dbg !5331
  %5 = load i32, ptr %i, align 4, !dbg !5332
  %idxprom = sext i32 %5 to i64, !dbg !5328
  %arrayidx = getelementptr [0 x %struct.input_mt_slot], ptr %slots, i64 0, i64 %idxprom, !dbg !5328
  %call = call zeroext i1 @input_mt_is_active(ptr noundef %arrayidx) #17, !dbg !5333
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !5334

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %mt.addr, align 8, !dbg !5335
  %7 = load ptr, ptr %mt.addr, align 8, !dbg !5336
  %slots1 = getelementptr inbounds %struct.input_mt, ptr %7, i32 0, i32 6, !dbg !5337
  %8 = load i32, ptr %i, align 4, !dbg !5338
  %idxprom2 = sext i32 %8 to i64, !dbg !5336
  %arrayidx3 = getelementptr [0 x %struct.input_mt_slot], ptr %slots1, i64 0, i64 %idxprom2, !dbg !5336
  %call4 = call zeroext i1 @input_mt_is_used(ptr noundef %6, ptr noundef %arrayidx3) #17, !dbg !5339
  br i1 %call4, label %if.end, label %if.then, !dbg !5340

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5341
  %10 = load i32, ptr %i, align 4, !dbg !5343
  call void @input_handle_event(ptr noundef %9, i32 noundef 3, i32 noundef 47, i32 noundef %10) #17, !dbg !5344
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5345
  call void @input_handle_event(ptr noundef %11, i32 noundef 3, i32 noundef 57, i32 noundef -1) #17, !dbg !5346
  br label %if.end, !dbg !5347

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5348

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !5349
  %inc = add i32 %12, 1, !dbg !5349
  store i32 %inc, ptr %i, align 4, !dbg !5349
  br label %for.cond, !dbg !5350, !llvm.loop !5351

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5353
  ret void, !dbg !5353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #7 align 16 !dbg !5354 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5358, metadata !DIExpression()), !dbg !5364
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5359, metadata !DIExpression()), !dbg !5365
  br label %do.body, !dbg !5366

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5360, metadata !DIExpression()), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5363, metadata !DIExpression()), !dbg !5367
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5367
  %conv = zext i1 %cmp to i32, !dbg !5367
  store i32 1, ptr %tmp, align 4, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5368
  %0 = load i32, ptr %tmp, align 4, !dbg !5367
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5368
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5368
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5368
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5368
  br label %do.end, !dbg !5368

do.end:                                           ; preds = %do.body
  ret void, !dbg !5369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_mt_release_slots(ptr noundef %dev) #0 align 16 !dbg !5370 {
entry:
  %dev.addr = alloca ptr, align 8
  %mt = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5372, metadata !DIExpression()), !dbg !5374
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !5375
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !5373, metadata !DIExpression()), !dbg !5376
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5377
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !5378
  %1 = load ptr, ptr %mt1, align 8, !dbg !5378
  store ptr %1, ptr %mt, align 8, !dbg !5376
  br label %do.body, !dbg !5379

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5380
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 36, !dbg !5380
  br label %do.cond, !dbg !5380

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5380

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %mt, align 8, !dbg !5382
  %tobool = icmp ne ptr %3, null, !dbg !5382
  br i1 %tobool, label %if.then, label %if.end19, !dbg !5384

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %mt, align 8, !dbg !5385
  %frame = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 4, !dbg !5387
  %5 = load i32, ptr %frame, align 8, !dbg !5388
  %inc = add i32 %5, 1, !dbg !5388
  store i32 %inc, ptr %frame, align 8, !dbg !5388
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5389
  %7 = load ptr, ptr %mt, align 8, !dbg !5390
  call void @__input_mt_drop_unused(ptr noundef %6, ptr noundef %7) #17, !dbg !5391
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5392
  %absbit = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 8, !dbg !5392
  %arraydecay = getelementptr inbounds [1 x i64], ptr %absbit, i64 0, i64 0, !dbg !5392
  %9 = ptrtoint ptr %arraydecay to i64, !dbg !5392
  %cmp = icmp ne i64 %9, 0, !dbg !5392
  %conv = zext i1 %cmp to i32, !dbg !5392
  %10 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5392
  br i1 %10, label %land.lhs.true, label %cond.false, !dbg !5392

land.lhs.true:                                    ; preds = %if.then
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5392
  %absbit2 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 8, !dbg !5392
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %absbit2, i64 0, i64 0, !dbg !5392
  %12 = ptrtoint ptr %arraydecay3 to i64, !dbg !5392
  %cmp4 = icmp ne i64 %12, 0, !dbg !5392
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !5392

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5392
  %absbit7 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 8, !dbg !5392
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %absbit7, i64 0, i64 0, !dbg !5392
  %14 = load i64, ptr %arraydecay8, align 8, !dbg !5392
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !5392
  br i1 %15, label %cond.true, label %cond.false, !dbg !5394

cond.true:                                        ; preds = %land.lhs.true6
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5392
  %absbit9 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 8, !dbg !5392
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %absbit9, i64 0, i64 0, !dbg !5392
  %call = call zeroext i1 @const_test_bit(i64 noundef 24, ptr noundef %arraydecay10) #17, !dbg !5392
  br i1 %call, label %if.then16, label %if.end, !dbg !5392

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %if.then
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5392
  %absbit12 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 8, !dbg !5392
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %absbit12, i64 0, i64 0, !dbg !5392
  %call14 = call zeroext i1 @_test_bit(i64 noundef 24, ptr noundef %arraydecay13) #17, !dbg !5392
  br i1 %call14, label %if.then16, label %if.end, !dbg !5394

if.then16:                                        ; preds = %cond.false, %cond.true
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5395
  call void @input_handle_event(ptr noundef %18, i32 noundef 3, i32 noundef 24, i32 noundef 0) #17, !dbg !5396
  br label %if.end, !dbg !5396

if.end:                                           ; preds = %if.then16, %cond.false, %cond.true
  %19 = load ptr, ptr %mt, align 8, !dbg !5397
  %frame17 = getelementptr inbounds %struct.input_mt, ptr %19, i32 0, i32 4, !dbg !5398
  %20 = load i32, ptr %frame17, align 8, !dbg !5399
  %inc18 = add i32 %20, 1, !dbg !5399
  store i32 %inc18, ptr %frame17, align 8, !dbg !5399
  br label %if.end19, !dbg !5400

if.end19:                                         ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !5401
  ret void, !dbg !5401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5402 dso_local void @input_handle_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_mt_sync_frame(ptr noundef %dev) #0 align 16 !dbg !5404 {
entry:
  %dev.addr = alloca ptr, align 8
  %mt = alloca ptr, align 8
  %use_count = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %flags4 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5406, metadata !DIExpression()), !dbg !5417
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !5407, metadata !DIExpression()), !dbg !5419
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5420
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !5421
  %1 = load ptr, ptr %mt1, align 8, !dbg !5421
  store ptr %1, ptr %mt, align 8, !dbg !5419
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_count) #16, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %use_count, metadata !5408, metadata !DIExpression()), !dbg !5423
  store i8 0, ptr %use_count, align 1, !dbg !5423
  %2 = load ptr, ptr %mt, align 8, !dbg !5424
  %tobool = icmp ne ptr %2, null, !dbg !5424
  br i1 %tobool, label %if.end, label %if.then, !dbg !5426

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5427

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mt, align 8, !dbg !5428
  %flags = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 3, !dbg !5429
  %4 = load i32, ptr %flags, align 4, !dbg !5429
  %and = and i32 %4, 4, !dbg !5430
  %tobool2 = icmp ne i32 %and, 0, !dbg !5430
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !5431

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags4) #16, !dbg !5432
  call void @llvm.dbg.declare(metadata ptr %flags4, metadata !5409, metadata !DIExpression()), !dbg !5433
  br label %do.body, !dbg !5434

do.body:                                          ; preds = %if.then3
  br label %do.body5, !dbg !5435

do.body5:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5412, metadata !DIExpression()), !dbg !5436
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5416, metadata !DIExpression()), !dbg !5436
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5436
  %conv = zext i1 %cmp to i32, !dbg !5436
  store i32 1, ptr %tmp, align 4, !dbg !5436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5437
  %5 = load i32, ptr %tmp, align 4, !dbg !5436
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5437
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 36, !dbg !5437
  %call = call ptr @spinlock_check(ptr noundef %event_lock) #17, !dbg !5437
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5437
  store i64 %call6, ptr %flags4, align 8, !dbg !5437
  br label %do.cond, !dbg !5437

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5437

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !5435

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !5435

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5438
  %8 = load ptr, ptr %mt, align 8, !dbg !5439
  call void @__input_mt_drop_unused(ptr noundef %7, ptr noundef %8) #17, !dbg !5440
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5441
  %event_lock9 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 36, !dbg !5442
  %10 = load i64, ptr %flags4, align 8, !dbg !5443
  call void @spin_unlock_irqrestore(ptr noundef %event_lock9, i64 noundef %10) #17, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags4) #16, !dbg !5445
  br label %if.end10, !dbg !5446

if.end10:                                         ; preds = %do.end8, %if.end
  %11 = load ptr, ptr %mt, align 8, !dbg !5447
  %flags11 = getelementptr inbounds %struct.input_mt, ptr %11, i32 0, i32 3, !dbg !5449
  %12 = load i32, ptr %flags11, align 4, !dbg !5449
  %and12 = and i32 %12, 1, !dbg !5450
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5450
  br i1 %tobool13, label %land.lhs.true, label %if.end18, !dbg !5451

land.lhs.true:                                    ; preds = %if.end10
  %13 = load ptr, ptr %mt, align 8, !dbg !5452
  %flags14 = getelementptr inbounds %struct.input_mt, ptr %13, i32 0, i32 3, !dbg !5453
  %14 = load i32, ptr %flags14, align 4, !dbg !5453
  %and15 = and i32 %14, 16, !dbg !5454
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5454
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5455

if.then17:                                        ; preds = %land.lhs.true
  store i8 1, ptr %use_count, align 1, !dbg !5456
  br label %if.end18, !dbg !5457

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end10
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5458
  %16 = load i8, ptr %use_count, align 1, !dbg !5459, !range !4968, !noundef !1479
  %tobool19 = trunc i8 %16 to i1, !dbg !5459
  call void @input_mt_report_pointer_emulation(ptr noundef %15, i1 noundef zeroext %tobool19) #17, !dbg !5460
  %17 = load ptr, ptr %mt, align 8, !dbg !5461
  %frame = getelementptr inbounds %struct.input_mt, ptr %17, i32 0, i32 4, !dbg !5462
  %18 = load i32, ptr %frame, align 8, !dbg !5463
  %inc = add i32 %18, 1, !dbg !5463
  store i32 %inc, ptr %frame, align 8, !dbg !5463
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5464
  br label %cleanup, !dbg !5464

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_count) #16, !dbg !5464
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !5464
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5464

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_mt_assign_slots(ptr noundef %dev, ptr noundef %slots, ptr noundef %pos, i32 noundef %num_pos, i32 noundef %dmax) #0 align 16 !dbg !5465 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %slots.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %num_pos.addr = alloca i32, align 4
  %dmax.addr = alloca i32, align 4
  %mt = alloca ptr, align 8
  %mu = alloca i32, align 4
  %nrc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5475, metadata !DIExpression()), !dbg !5483
  store ptr %slots, ptr %slots.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slots.addr, metadata !5476, metadata !DIExpression()), !dbg !5484
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5477, metadata !DIExpression()), !dbg !5485
  store i32 %num_pos, ptr %num_pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_pos.addr, metadata !5478, metadata !DIExpression()), !dbg !5486
  store i32 %dmax, ptr %dmax.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmax.addr, metadata !5479, metadata !DIExpression()), !dbg !5487
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !5480, metadata !DIExpression()), !dbg !5489
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5490
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !5491
  %1 = load ptr, ptr %mt1, align 8, !dbg !5491
  store ptr %1, ptr %mt, align 8, !dbg !5489
  call void @llvm.lifetime.start.p0(i64 4, ptr %mu) #16, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %mu, metadata !5481, metadata !DIExpression()), !dbg !5493
  %2 = load i32, ptr %dmax.addr, align 4, !dbg !5494
  %mul = mul i32 2, %2, !dbg !5495
  %3 = load i32, ptr %dmax.addr, align 4, !dbg !5496
  %mul2 = mul i32 %mul, %3, !dbg !5497
  store i32 %mul2, ptr %mu, align 4, !dbg !5493
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrc) #16, !dbg !5498
  call void @llvm.dbg.declare(metadata ptr %nrc, metadata !5482, metadata !DIExpression()), !dbg !5499
  %4 = load ptr, ptr %mt, align 8, !dbg !5500
  %tobool = icmp ne ptr %4, null, !dbg !5500
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5502

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %mt, align 8, !dbg !5503
  %red = getelementptr inbounds %struct.input_mt, ptr %5, i32 0, i32 5, !dbg !5504
  %6 = load ptr, ptr %red, align 8, !dbg !5504
  %tobool3 = icmp ne ptr %6, null, !dbg !5503
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5505

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5506

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, ptr %num_pos.addr, align 4, !dbg !5507
  %8 = load ptr, ptr %mt, align 8, !dbg !5509
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %8, i32 0, i32 1, !dbg !5510
  %9 = load i32, ptr %num_slots, align 4, !dbg !5510
  %cmp = icmp sgt i32 %7, %9, !dbg !5511
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5512

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5513

if.end5:                                          ; preds = %if.end
  %10 = load i32, ptr %num_pos.addr, align 4, !dbg !5514
  %cmp6 = icmp slt i32 %10, 1, !dbg !5516
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5517

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !5518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5518

if.end8:                                          ; preds = %if.end5
  %11 = load ptr, ptr %mt, align 8, !dbg !5519
  %12 = load ptr, ptr %pos.addr, align 8, !dbg !5520
  %13 = load i32, ptr %num_pos.addr, align 4, !dbg !5521
  %14 = load i32, ptr %mu, align 4, !dbg !5522
  %call = call i32 @input_mt_set_matrix(ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14) #17, !dbg !5523
  store i32 %call, ptr %nrc, align 4, !dbg !5524
  %15 = load ptr, ptr %mt, align 8, !dbg !5525
  %red9 = getelementptr inbounds %struct.input_mt, ptr %15, i32 0, i32 5, !dbg !5526
  %16 = load ptr, ptr %red9, align 8, !dbg !5526
  %17 = load i32, ptr %num_pos.addr, align 4, !dbg !5527
  %18 = load i32, ptr %nrc, align 4, !dbg !5528
  %19 = load i32, ptr %num_pos.addr, align 4, !dbg !5529
  %div = sdiv i32 %18, %19, !dbg !5530
  %20 = load i32, ptr %nrc, align 4, !dbg !5531
  %21 = load i32, ptr %mu, align 4, !dbg !5532
  call void @find_reduced_matrix(ptr noundef %16, i32 noundef %17, i32 noundef %div, i32 noundef %20, i32 noundef %21) #17, !dbg !5533
  %22 = load ptr, ptr %mt, align 8, !dbg !5534
  %23 = load ptr, ptr %slots.addr, align 8, !dbg !5535
  %24 = load i32, ptr %num_pos.addr, align 4, !dbg !5536
  call void @input_mt_set_slots(ptr noundef %22, ptr noundef %23, i32 noundef %24) #17, !dbg !5537
  store i32 0, ptr %retval, align 4, !dbg !5538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5538

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrc) #16, !dbg !5539
  call void @llvm.lifetime.end.p0(i64 4, ptr %mu) #16, !dbg !5539
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !5539
  %25 = load i32, ptr %retval, align 4, !dbg !5539
  ret i32 %25, !dbg !5539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_mt_set_matrix(ptr noundef %mt, ptr noundef %pos, i32 noundef %num_pos, i32 noundef %mu) #0 align 16 !dbg !5540 {
entry:
  %mt.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %num_pos.addr = alloca i32, align 4
  %mu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %s = alloca ptr, align 8
  %w = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store ptr %mt, ptr %mt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !5544, metadata !DIExpression()), !dbg !5561
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5545, metadata !DIExpression()), !dbg !5562
  store i32 %num_pos, ptr %num_pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_pos.addr, metadata !5546, metadata !DIExpression()), !dbg !5563
  store i32 %mu, ptr %mu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mu.addr, metadata !5547, metadata !DIExpression()), !dbg !5564
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5548, metadata !DIExpression()), !dbg !5566
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5549, metadata !DIExpression()), !dbg !5568
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #16, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %w, metadata !5550, metadata !DIExpression()), !dbg !5570
  %0 = load ptr, ptr %mt.addr, align 8, !dbg !5571
  %red = getelementptr inbounds %struct.input_mt, ptr %0, i32 0, i32 5, !dbg !5572
  %1 = load ptr, ptr %red, align 8, !dbg !5572
  store ptr %1, ptr %w, align 8, !dbg !5570
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #16, !dbg !5573
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5551, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #16, !dbg !5573
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5552, metadata !DIExpression()), !dbg !5575
  %2 = load ptr, ptr %mt.addr, align 8, !dbg !5576
  %slots = getelementptr inbounds %struct.input_mt, ptr %2, i32 0, i32 6, !dbg !5577
  %arraydecay = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots, i64 0, i64 0, !dbg !5576
  store ptr %arraydecay, ptr %s, align 8, !dbg !5578
  br label %for.cond, !dbg !5579

for.cond:                                         ; preds = %for.inc17, %entry
  %3 = load ptr, ptr %s, align 8, !dbg !5580
  %4 = load ptr, ptr %mt.addr, align 8, !dbg !5581
  %slots1 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 6, !dbg !5582
  %arraydecay2 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots1, i64 0, i64 0, !dbg !5581
  %5 = load ptr, ptr %mt.addr, align 8, !dbg !5583
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %5, i32 0, i32 1, !dbg !5584
  %6 = load i32, ptr %num_slots, align 4, !dbg !5584
  %idx.ext = sext i32 %6 to i64, !dbg !5585
  %add.ptr = getelementptr %struct.input_mt_slot, ptr %arraydecay2, i64 %idx.ext, !dbg !5585
  %cmp = icmp ne ptr %3, %add.ptr, !dbg !5586
  br i1 %cmp, label %for.body, label %for.end19, !dbg !5587

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %s, align 8, !dbg !5588
  %call = call zeroext i1 @input_mt_is_active(ptr noundef %7) #17, !dbg !5590
  br i1 %call, label %if.end, label %if.then, !dbg !5591

if.then:                                          ; preds = %for.body
  br label %for.inc17, !dbg !5592

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %s, align 8, !dbg !5593
  %call3 = call i32 @input_mt_get_value(ptr noundef %8, i32 noundef 53) #17, !dbg !5594
  store i32 %call3, ptr %x, align 4, !dbg !5595
  %9 = load ptr, ptr %s, align 8, !dbg !5596
  %call4 = call i32 @input_mt_get_value(ptr noundef %9, i32 noundef 54) #17, !dbg !5597
  store i32 %call4, ptr %y, align 4, !dbg !5598
  %10 = load ptr, ptr %pos.addr, align 8, !dbg !5599
  store ptr %10, ptr %p, align 8, !dbg !5600
  br label %for.cond5, !dbg !5601

for.cond5:                                        ; preds = %for.inc, %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !5602
  %12 = load ptr, ptr %pos.addr, align 8, !dbg !5603
  %13 = load i32, ptr %num_pos.addr, align 4, !dbg !5604
  %idx.ext6 = sext i32 %13 to i64, !dbg !5605
  %add.ptr7 = getelementptr %struct.input_mt_pos, ptr %12, i64 %idx.ext6, !dbg !5605
  %cmp8 = icmp ne ptr %11, %add.ptr7, !dbg !5606
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !5607

for.body9:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dx) #16, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %dx, metadata !5553, metadata !DIExpression()), !dbg !5609
  %14 = load i32, ptr %x, align 4, !dbg !5610
  %15 = load ptr, ptr %p, align 8, !dbg !5611
  %x10 = getelementptr inbounds %struct.input_mt_pos, ptr %15, i32 0, i32 0, !dbg !5612
  %16 = load i16, ptr %x10, align 2, !dbg !5612
  %conv = sext i16 %16 to i32, !dbg !5611
  %sub = sub i32 %14, %conv, !dbg !5613
  store i32 %sub, ptr %dx, align 4, !dbg !5609
  call void @llvm.lifetime.start.p0(i64 4, ptr %dy) #16, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %dy, metadata !5560, metadata !DIExpression()), !dbg !5614
  %17 = load i32, ptr %y, align 4, !dbg !5615
  %18 = load ptr, ptr %p, align 8, !dbg !5616
  %y11 = getelementptr inbounds %struct.input_mt_pos, ptr %18, i32 0, i32 1, !dbg !5617
  %19 = load i16, ptr %y11, align 2, !dbg !5617
  %conv12 = sext i16 %19 to i32, !dbg !5616
  %sub13 = sub i32 %17, %conv12, !dbg !5618
  store i32 %sub13, ptr %dy, align 4, !dbg !5614
  %20 = load i32, ptr %dx, align 4, !dbg !5619
  %21 = load i32, ptr %dx, align 4, !dbg !5620
  %mul = mul i32 %20, %21, !dbg !5621
  %22 = load i32, ptr %dy, align 4, !dbg !5622
  %23 = load i32, ptr %dy, align 4, !dbg !5623
  %mul14 = mul i32 %22, %23, !dbg !5624
  %add = add i32 %mul, %mul14, !dbg !5625
  %24 = load i32, ptr %mu.addr, align 4, !dbg !5626
  %sub15 = sub i32 %add, %24, !dbg !5627
  %25 = load ptr, ptr %w, align 8, !dbg !5628
  %incdec.ptr = getelementptr i32, ptr %25, i32 1, !dbg !5628
  store ptr %incdec.ptr, ptr %w, align 8, !dbg !5628
  store i32 %sub15, ptr %25, align 4, !dbg !5629
  call void @llvm.lifetime.end.p0(i64 4, ptr %dy) #16, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 4, ptr %dx) #16, !dbg !5630
  br label %for.inc, !dbg !5631

for.inc:                                          ; preds = %for.body9
  %26 = load ptr, ptr %p, align 8, !dbg !5632
  %incdec.ptr16 = getelementptr %struct.input_mt_pos, ptr %26, i32 1, !dbg !5632
  store ptr %incdec.ptr16, ptr %p, align 8, !dbg !5632
  br label %for.cond5, !dbg !5633, !llvm.loop !5634

for.end:                                          ; preds = %for.cond5
  br label %for.inc17, !dbg !5636

for.inc17:                                        ; preds = %for.end, %if.then
  %27 = load ptr, ptr %s, align 8, !dbg !5637
  %incdec.ptr18 = getelementptr %struct.input_mt_slot, ptr %27, i32 1, !dbg !5637
  store ptr %incdec.ptr18, ptr %s, align 8, !dbg !5637
  br label %for.cond, !dbg !5638, !llvm.loop !5639

for.end19:                                        ; preds = %for.cond
  %28 = load ptr, ptr %w, align 8, !dbg !5641
  %29 = load ptr, ptr %mt.addr, align 8, !dbg !5642
  %red20 = getelementptr inbounds %struct.input_mt, ptr %29, i32 0, i32 5, !dbg !5643
  %30 = load ptr, ptr %red20, align 8, !dbg !5643
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64, !dbg !5644
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64, !dbg !5644
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5644
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !5644
  %conv21 = trunc i64 %sub.ptr.div to i32, !dbg !5641
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #16, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #16, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #16, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5645
  ret i32 %conv21, !dbg !5646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @find_reduced_matrix(ptr noundef %w, i32 noundef %nr, i32 noundef %nc, i32 noundef %nrc, i32 noundef %mu) #0 align 16 !dbg !5647 {
entry:
  %w.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %nc.addr = alloca i32, align 4
  %nrc.addr = alloca i32, align 4
  %mu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5651, metadata !DIExpression()), !dbg !5659
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5652, metadata !DIExpression()), !dbg !5660
  store i32 %nc, ptr %nc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nc.addr, metadata !5653, metadata !DIExpression()), !dbg !5661
  store i32 %nrc, ptr %nrc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nrc.addr, metadata !5654, metadata !DIExpression()), !dbg !5662
  store i32 %mu, ptr %mu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mu.addr, metadata !5655, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5656, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %k, metadata !5657, metadata !DIExpression()), !dbg !5666
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !5658, metadata !DIExpression()), !dbg !5667
  store i32 0, ptr %k, align 4, !dbg !5668
  br label %for.cond, !dbg !5670

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %k, align 4, !dbg !5671
  %1 = load i32, ptr %nrc.addr, align 4, !dbg !5673
  %cmp = icmp slt i32 %0, %1, !dbg !5674
  br i1 %cmp, label %for.body, label %for.end27, !dbg !5675

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5676
  br label %for.cond1, !dbg !5679

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !dbg !5680
  %3 = load i32, ptr %nr.addr, align 4, !dbg !5682
  %cmp2 = icmp slt i32 %2, %3, !dbg !5683
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !5684

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %w.addr, align 8, !dbg !5685
  %5 = load i32, ptr %i, align 4, !dbg !5686
  %idx.ext = sext i32 %5 to i64, !dbg !5687
  %add.ptr = getelementptr i32, ptr %4, i64 %idx.ext, !dbg !5687
  %6 = load i32, ptr %nr.addr, align 4, !dbg !5688
  %7 = load ptr, ptr %w.addr, align 8, !dbg !5689
  %8 = load i32, ptr %i, align 4, !dbg !5690
  %idx.ext4 = sext i32 %8 to i64, !dbg !5691
  %add.ptr5 = getelementptr i32, ptr %7, i64 %idx.ext4, !dbg !5691
  %9 = load i32, ptr %nrc.addr, align 4, !dbg !5692
  %idx.ext6 = sext i32 %9 to i64, !dbg !5693
  %add.ptr7 = getelementptr i32, ptr %add.ptr5, i64 %idx.ext6, !dbg !5693
  %10 = load i32, ptr %nr.addr, align 4, !dbg !5694
  %11 = load i32, ptr %nc.addr, align 4, !dbg !5695
  %cmp8 = icmp sle i32 %10, %11, !dbg !5696
  %conv = zext i1 %cmp8 to i32, !dbg !5696
  %12 = load i32, ptr %mu.addr, align 4, !dbg !5697
  %call = call i32 @adjust_dual(ptr noundef %add.ptr, i32 noundef %6, ptr noundef %add.ptr7, i32 noundef %conv, i32 noundef %12) #17, !dbg !5698
  br label %for.inc, !dbg !5698

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %i, align 4, !dbg !5699
  %inc = add i32 %13, 1, !dbg !5699
  store i32 %inc, ptr %i, align 4, !dbg !5699
  br label %for.cond1, !dbg !5700, !llvm.loop !5701

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %sum, align 4, !dbg !5703
  store i32 0, ptr %i, align 4, !dbg !5704
  br label %for.cond9, !dbg !5706

for.cond9:                                        ; preds = %for.inc22, %for.end
  %14 = load i32, ptr %i, align 4, !dbg !5707
  %15 = load i32, ptr %nrc.addr, align 4, !dbg !5709
  %cmp10 = icmp slt i32 %14, %15, !dbg !5710
  br i1 %cmp10, label %for.body12, label %for.end24, !dbg !5711

for.body12:                                       ; preds = %for.cond9
  %16 = load ptr, ptr %w.addr, align 8, !dbg !5712
  %17 = load i32, ptr %i, align 4, !dbg !5713
  %idx.ext13 = sext i32 %17 to i64, !dbg !5714
  %add.ptr14 = getelementptr i32, ptr %16, i64 %idx.ext13, !dbg !5714
  %18 = load ptr, ptr %w.addr, align 8, !dbg !5715
  %19 = load i32, ptr %i, align 4, !dbg !5716
  %idx.ext15 = sext i32 %19 to i64, !dbg !5717
  %add.ptr16 = getelementptr i32, ptr %18, i64 %idx.ext15, !dbg !5717
  %20 = load i32, ptr %nr.addr, align 4, !dbg !5718
  %idx.ext17 = sext i32 %20 to i64, !dbg !5719
  %add.ptr18 = getelementptr i32, ptr %add.ptr16, i64 %idx.ext17, !dbg !5719
  %21 = load i32, ptr %nc.addr, align 4, !dbg !5720
  %22 = load i32, ptr %nr.addr, align 4, !dbg !5721
  %cmp19 = icmp sle i32 %21, %22, !dbg !5722
  %conv20 = zext i1 %cmp19 to i32, !dbg !5722
  %23 = load i32, ptr %mu.addr, align 4, !dbg !5723
  %call21 = call i32 @adjust_dual(ptr noundef %add.ptr14, i32 noundef 1, ptr noundef %add.ptr18, i32 noundef %conv20, i32 noundef %23) #17, !dbg !5724
  %24 = load i32, ptr %sum, align 4, !dbg !5725
  %add = add i32 %24, %call21, !dbg !5725
  store i32 %add, ptr %sum, align 4, !dbg !5725
  br label %for.inc22, !dbg !5726

for.inc22:                                        ; preds = %for.body12
  %25 = load i32, ptr %nr.addr, align 4, !dbg !5727
  %26 = load i32, ptr %i, align 4, !dbg !5728
  %add23 = add i32 %26, %25, !dbg !5728
  store i32 %add23, ptr %i, align 4, !dbg !5728
  br label %for.cond9, !dbg !5729, !llvm.loop !5730

for.end24:                                        ; preds = %for.cond9
  %27 = load i32, ptr %sum, align 4, !dbg !5732
  %tobool = icmp ne i32 %27, 0, !dbg !5732
  br i1 %tobool, label %if.end, label %if.then, !dbg !5734

if.then:                                          ; preds = %for.end24
  br label %for.end27, !dbg !5735

if.end:                                           ; preds = %for.end24
  br label %for.inc25, !dbg !5736

for.inc25:                                        ; preds = %if.end
  %28 = load i32, ptr %k, align 4, !dbg !5737
  %inc26 = add i32 %28, 1, !dbg !5737
  store i32 %inc26, ptr %k, align 4, !dbg !5737
  br label %for.cond, !dbg !5738, !llvm.loop !5739

for.end27:                                        ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #16, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #16, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5741
  ret void, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_mt_set_slots(ptr noundef %mt, ptr noundef %slots, i32 noundef %num_pos) #0 align 16 !dbg !5742 {
entry:
  %mt.addr = alloca ptr, align 8
  %slots.addr = alloca ptr, align 8
  %num_pos.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %w = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %mt, ptr %mt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !5746, metadata !DIExpression()), !dbg !5752
  store ptr %slots, ptr %slots.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slots.addr, metadata !5747, metadata !DIExpression()), !dbg !5753
  store i32 %num_pos, ptr %num_pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_pos.addr, metadata !5748, metadata !DIExpression()), !dbg !5754
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !5755
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5749, metadata !DIExpression()), !dbg !5756
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #16, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %w, metadata !5750, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %mt.addr, align 8, !dbg !5759
  %red = getelementptr inbounds %struct.input_mt, ptr %0, i32 0, i32 5, !dbg !5760
  %1 = load ptr, ptr %red, align 8, !dbg !5760
  store ptr %1, ptr %w, align 8, !dbg !5758
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5751, metadata !DIExpression()), !dbg !5761
  store i32 0, ptr %j, align 4, !dbg !5762
  br label %for.cond, !dbg !5764

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %j, align 4, !dbg !5765
  %3 = load i32, ptr %num_pos.addr, align 4, !dbg !5767
  %cmp = icmp ne i32 %2, %3, !dbg !5768
  br i1 %cmp, label %for.body, label %for.end, !dbg !5769

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %slots.addr, align 8, !dbg !5770
  %5 = load i32, ptr %j, align 4, !dbg !5771
  %idxprom = sext i32 %5 to i64, !dbg !5770
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5770
  store i32 -1, ptr %arrayidx, align 4, !dbg !5772
  br label %for.inc, !dbg !5770

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %j, align 4, !dbg !5773
  %inc = add i32 %6, 1, !dbg !5773
  store i32 %inc, ptr %j, align 4, !dbg !5773
  br label %for.cond, !dbg !5774, !llvm.loop !5775

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %mt.addr, align 8, !dbg !5777
  %slots1 = getelementptr inbounds %struct.input_mt, ptr %7, i32 0, i32 6, !dbg !5779
  %arraydecay = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots1, i64 0, i64 0, !dbg !5777
  store ptr %arraydecay, ptr %s, align 8, !dbg !5780
  br label %for.cond2, !dbg !5781

for.cond2:                                        ; preds = %for.inc24, %for.end
  %8 = load ptr, ptr %s, align 8, !dbg !5782
  %9 = load ptr, ptr %mt.addr, align 8, !dbg !5784
  %slots3 = getelementptr inbounds %struct.input_mt, ptr %9, i32 0, i32 6, !dbg !5785
  %arraydecay4 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots3, i64 0, i64 0, !dbg !5784
  %10 = load ptr, ptr %mt.addr, align 8, !dbg !5786
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %10, i32 0, i32 1, !dbg !5787
  %11 = load i32, ptr %num_slots, align 4, !dbg !5787
  %idx.ext = sext i32 %11 to i64, !dbg !5788
  %add.ptr = getelementptr %struct.input_mt_slot, ptr %arraydecay4, i64 %idx.ext, !dbg !5788
  %cmp5 = icmp ne ptr %8, %add.ptr, !dbg !5789
  br i1 %cmp5, label %for.body6, label %for.end25, !dbg !5790

for.body6:                                        ; preds = %for.cond2
  %12 = load ptr, ptr %s, align 8, !dbg !5791
  %call = call zeroext i1 @input_mt_is_active(ptr noundef %12) #17, !dbg !5794
  br i1 %call, label %if.end, label %if.then, !dbg !5795

if.then:                                          ; preds = %for.body6
  br label %for.inc24, !dbg !5796

if.end:                                           ; preds = %for.body6
  store i32 0, ptr %j, align 4, !dbg !5797
  br label %for.cond7, !dbg !5799

for.cond7:                                        ; preds = %for.inc19, %if.end
  %13 = load i32, ptr %j, align 4, !dbg !5800
  %14 = load i32, ptr %num_pos.addr, align 4, !dbg !5802
  %cmp8 = icmp ne i32 %13, %14, !dbg !5803
  br i1 %cmp8, label %for.body9, label %for.end21, !dbg !5804

for.body9:                                        ; preds = %for.cond7
  %15 = load ptr, ptr %w, align 8, !dbg !5805
  %16 = load i32, ptr %j, align 4, !dbg !5808
  %idxprom10 = sext i32 %16 to i64, !dbg !5805
  %arrayidx11 = getelementptr i32, ptr %15, i64 %idxprom10, !dbg !5805
  %17 = load i32, ptr %arrayidx11, align 4, !dbg !5805
  %cmp12 = icmp slt i32 %17, 0, !dbg !5809
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !5810

if.then13:                                        ; preds = %for.body9
  %18 = load ptr, ptr %s, align 8, !dbg !5811
  %19 = load ptr, ptr %mt.addr, align 8, !dbg !5813
  %slots14 = getelementptr inbounds %struct.input_mt, ptr %19, i32 0, i32 6, !dbg !5814
  %arraydecay15 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots14, i64 0, i64 0, !dbg !5813
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64, !dbg !5815
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay15 to i64, !dbg !5815
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5815
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5815
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !5811
  %20 = load ptr, ptr %slots.addr, align 8, !dbg !5816
  %21 = load i32, ptr %j, align 4, !dbg !5817
  %idxprom16 = sext i32 %21 to i64, !dbg !5816
  %arrayidx17 = getelementptr i32, ptr %20, i64 %idxprom16, !dbg !5816
  store i32 %conv, ptr %arrayidx17, align 4, !dbg !5818
  br label %for.end21, !dbg !5819

if.end18:                                         ; preds = %for.body9
  br label %for.inc19, !dbg !5820

for.inc19:                                        ; preds = %if.end18
  %22 = load i32, ptr %j, align 4, !dbg !5821
  %inc20 = add i32 %22, 1, !dbg !5821
  store i32 %inc20, ptr %j, align 4, !dbg !5821
  br label %for.cond7, !dbg !5822, !llvm.loop !5823

for.end21:                                        ; preds = %if.then13, %for.cond7
  %23 = load i32, ptr %num_pos.addr, align 4, !dbg !5825
  %24 = load ptr, ptr %w, align 8, !dbg !5826
  %idx.ext22 = sext i32 %23 to i64, !dbg !5826
  %add.ptr23 = getelementptr i32, ptr %24, i64 %idx.ext22, !dbg !5826
  store ptr %add.ptr23, ptr %w, align 8, !dbg !5826
  br label %for.inc24, !dbg !5827

for.inc24:                                        ; preds = %for.end21, %if.then
  %25 = load ptr, ptr %s, align 8, !dbg !5828
  %incdec.ptr = getelementptr %struct.input_mt_slot, ptr %25, i32 1, !dbg !5828
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !5828
  br label %for.cond2, !dbg !5829, !llvm.loop !5830

for.end25:                                        ; preds = %for.cond2
  %26 = load ptr, ptr %mt.addr, align 8, !dbg !5832
  %slots26 = getelementptr inbounds %struct.input_mt, ptr %26, i32 0, i32 6, !dbg !5834
  %arraydecay27 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots26, i64 0, i64 0, !dbg !5832
  store ptr %arraydecay27, ptr %s, align 8, !dbg !5835
  br label %for.cond28, !dbg !5836

for.cond28:                                       ; preds = %for.inc62, %for.end25
  %27 = load ptr, ptr %s, align 8, !dbg !5837
  %28 = load ptr, ptr %mt.addr, align 8, !dbg !5839
  %slots29 = getelementptr inbounds %struct.input_mt, ptr %28, i32 0, i32 6, !dbg !5840
  %arraydecay30 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots29, i64 0, i64 0, !dbg !5839
  %29 = load ptr, ptr %mt.addr, align 8, !dbg !5841
  %num_slots31 = getelementptr inbounds %struct.input_mt, ptr %29, i32 0, i32 1, !dbg !5842
  %30 = load i32, ptr %num_slots31, align 4, !dbg !5842
  %idx.ext32 = sext i32 %30 to i64, !dbg !5843
  %add.ptr33 = getelementptr %struct.input_mt_slot, ptr %arraydecay30, i64 %idx.ext32, !dbg !5843
  %cmp34 = icmp ne ptr %27, %add.ptr33, !dbg !5844
  br i1 %cmp34, label %for.body36, label %for.end64, !dbg !5845

for.body36:                                       ; preds = %for.cond28
  %31 = load ptr, ptr %s, align 8, !dbg !5846
  %call37 = call zeroext i1 @input_mt_is_active(ptr noundef %31) #17, !dbg !5849
  br i1 %call37, label %if.then38, label %if.end39, !dbg !5850

if.then38:                                        ; preds = %for.body36
  br label %for.inc62, !dbg !5851

if.end39:                                         ; preds = %for.body36
  store i32 0, ptr %j, align 4, !dbg !5852
  br label %for.cond40, !dbg !5854

for.cond40:                                       ; preds = %for.inc59, %if.end39
  %32 = load i32, ptr %j, align 4, !dbg !5855
  %33 = load i32, ptr %num_pos.addr, align 4, !dbg !5857
  %cmp41 = icmp ne i32 %32, %33, !dbg !5858
  br i1 %cmp41, label %for.body43, label %for.end61, !dbg !5859

for.body43:                                       ; preds = %for.cond40
  %34 = load ptr, ptr %slots.addr, align 8, !dbg !5860
  %35 = load i32, ptr %j, align 4, !dbg !5863
  %idxprom44 = sext i32 %35 to i64, !dbg !5860
  %arrayidx45 = getelementptr i32, ptr %34, i64 %idxprom44, !dbg !5860
  %36 = load i32, ptr %arrayidx45, align 4, !dbg !5860
  %cmp46 = icmp slt i32 %36, 0, !dbg !5864
  br i1 %cmp46, label %if.then48, label %if.end58, !dbg !5865

if.then48:                                        ; preds = %for.body43
  %37 = load ptr, ptr %s, align 8, !dbg !5866
  %38 = load ptr, ptr %mt.addr, align 8, !dbg !5868
  %slots49 = getelementptr inbounds %struct.input_mt, ptr %38, i32 0, i32 6, !dbg !5869
  %arraydecay50 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots49, i64 0, i64 0, !dbg !5868
  %sub.ptr.lhs.cast51 = ptrtoint ptr %37 to i64, !dbg !5870
  %sub.ptr.rhs.cast52 = ptrtoint ptr %arraydecay50 to i64, !dbg !5870
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52, !dbg !5870
  %sub.ptr.div54 = sdiv exact i64 %sub.ptr.sub53, 64, !dbg !5870
  %conv55 = trunc i64 %sub.ptr.div54 to i32, !dbg !5866
  %39 = load ptr, ptr %slots.addr, align 8, !dbg !5871
  %40 = load i32, ptr %j, align 4, !dbg !5872
  %idxprom56 = sext i32 %40 to i64, !dbg !5871
  %arrayidx57 = getelementptr i32, ptr %39, i64 %idxprom56, !dbg !5871
  store i32 %conv55, ptr %arrayidx57, align 4, !dbg !5873
  br label %for.end61, !dbg !5874

if.end58:                                         ; preds = %for.body43
  br label %for.inc59, !dbg !5875

for.inc59:                                        ; preds = %if.end58
  %41 = load i32, ptr %j, align 4, !dbg !5876
  %inc60 = add i32 %41, 1, !dbg !5876
  store i32 %inc60, ptr %j, align 4, !dbg !5876
  br label %for.cond40, !dbg !5877, !llvm.loop !5878

for.end61:                                        ; preds = %if.then48, %for.cond40
  br label %for.inc62, !dbg !5880

for.inc62:                                        ; preds = %for.end61, %if.then38
  %42 = load ptr, ptr %s, align 8, !dbg !5881
  %incdec.ptr63 = getelementptr %struct.input_mt_slot, ptr %42, i32 1, !dbg !5881
  store ptr %incdec.ptr63, ptr %s, align 8, !dbg !5881
  br label %for.cond28, !dbg !5882, !llvm.loop !5883

for.end64:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #16, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !5885
  ret void, !dbg !5885
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_mt_get_slot_by_key(ptr noundef %dev, i32 noundef %key) #0 align 16 !dbg !5886 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %mt = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5888, metadata !DIExpression()), !dbg !5892
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5889, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %mt) #16, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %mt, metadata !5890, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5896
  %mt1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25, !dbg !5897
  %1 = load ptr, ptr %mt1, align 8, !dbg !5897
  store ptr %1, ptr %mt, align 8, !dbg !5895
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5891, metadata !DIExpression()), !dbg !5899
  %2 = load ptr, ptr %mt, align 8, !dbg !5900
  %tobool = icmp ne ptr %2, null, !dbg !5900
  br i1 %tobool, label %if.end, label %if.then, !dbg !5902

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5903

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mt, align 8, !dbg !5904
  %slots = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 6, !dbg !5906
  %arraydecay = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots, i64 0, i64 0, !dbg !5904
  store ptr %arraydecay, ptr %s, align 8, !dbg !5907
  br label %for.cond, !dbg !5908

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %s, align 8, !dbg !5909
  %5 = load ptr, ptr %mt, align 8, !dbg !5911
  %slots2 = getelementptr inbounds %struct.input_mt, ptr %5, i32 0, i32 6, !dbg !5912
  %arraydecay3 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots2, i64 0, i64 0, !dbg !5911
  %6 = load ptr, ptr %mt, align 8, !dbg !5913
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %6, i32 0, i32 1, !dbg !5914
  %7 = load i32, ptr %num_slots, align 4, !dbg !5914
  %idx.ext = sext i32 %7 to i64, !dbg !5915
  %add.ptr = getelementptr %struct.input_mt_slot, ptr %arraydecay3, i64 %idx.ext, !dbg !5915
  %cmp = icmp ne ptr %4, %add.ptr, !dbg !5916
  br i1 %cmp, label %for.body, label %for.end, !dbg !5917

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %s, align 8, !dbg !5918
  %call = call zeroext i1 @input_mt_is_active(ptr noundef %8) #17, !dbg !5920
  br i1 %call, label %land.lhs.true, label %if.end9, !dbg !5921

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %s, align 8, !dbg !5922
  %key4 = getelementptr inbounds %struct.input_mt_slot, ptr %9, i32 0, i32 2, !dbg !5923
  %10 = load i32, ptr %key4, align 4, !dbg !5923
  %11 = load i32, ptr %key.addr, align 4, !dbg !5924
  %cmp5 = icmp eq i32 %10, %11, !dbg !5925
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !5926

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %s, align 8, !dbg !5927
  %13 = load ptr, ptr %mt, align 8, !dbg !5928
  %slots7 = getelementptr inbounds %struct.input_mt, ptr %13, i32 0, i32 6, !dbg !5929
  %arraydecay8 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots7, i64 0, i64 0, !dbg !5928
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !5930
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay8 to i64, !dbg !5930
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5930
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5930
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !5927
  store i32 %conv, ptr %retval, align 4, !dbg !5931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5931

if.end9:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5924

for.inc:                                          ; preds = %if.end9
  %14 = load ptr, ptr %s, align 8, !dbg !5932
  %incdec.ptr = getelementptr %struct.input_mt_slot, ptr %14, i32 1, !dbg !5932
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !5932
  br label %for.cond, !dbg !5933, !llvm.loop !5934

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %mt, align 8, !dbg !5936
  %slots10 = getelementptr inbounds %struct.input_mt, ptr %15, i32 0, i32 6, !dbg !5938
  %arraydecay11 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots10, i64 0, i64 0, !dbg !5936
  store ptr %arraydecay11, ptr %s, align 8, !dbg !5939
  br label %for.cond12, !dbg !5940

for.cond12:                                       ; preds = %for.inc34, %for.end
  %16 = load ptr, ptr %s, align 8, !dbg !5941
  %17 = load ptr, ptr %mt, align 8, !dbg !5943
  %slots13 = getelementptr inbounds %struct.input_mt, ptr %17, i32 0, i32 6, !dbg !5944
  %arraydecay14 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots13, i64 0, i64 0, !dbg !5943
  %18 = load ptr, ptr %mt, align 8, !dbg !5945
  %num_slots15 = getelementptr inbounds %struct.input_mt, ptr %18, i32 0, i32 1, !dbg !5946
  %19 = load i32, ptr %num_slots15, align 4, !dbg !5946
  %idx.ext16 = sext i32 %19 to i64, !dbg !5947
  %add.ptr17 = getelementptr %struct.input_mt_slot, ptr %arraydecay14, i64 %idx.ext16, !dbg !5947
  %cmp18 = icmp ne ptr %16, %add.ptr17, !dbg !5948
  br i1 %cmp18, label %for.body20, label %for.end36, !dbg !5949

for.body20:                                       ; preds = %for.cond12
  %20 = load ptr, ptr %s, align 8, !dbg !5950
  %call21 = call zeroext i1 @input_mt_is_active(ptr noundef %20) #17, !dbg !5952
  br i1 %call21, label %if.end33, label %land.lhs.true22, !dbg !5953

land.lhs.true22:                                  ; preds = %for.body20
  %21 = load ptr, ptr %mt, align 8, !dbg !5954
  %22 = load ptr, ptr %s, align 8, !dbg !5955
  %call23 = call zeroext i1 @input_mt_is_used(ptr noundef %21, ptr noundef %22) #17, !dbg !5956
  br i1 %call23, label %if.end33, label %if.then24, !dbg !5957

if.then24:                                        ; preds = %land.lhs.true22
  %23 = load i32, ptr %key.addr, align 4, !dbg !5958
  %24 = load ptr, ptr %s, align 8, !dbg !5960
  %key25 = getelementptr inbounds %struct.input_mt_slot, ptr %24, i32 0, i32 2, !dbg !5961
  store i32 %23, ptr %key25, align 4, !dbg !5962
  %25 = load ptr, ptr %s, align 8, !dbg !5963
  %26 = load ptr, ptr %mt, align 8, !dbg !5964
  %slots26 = getelementptr inbounds %struct.input_mt, ptr %26, i32 0, i32 6, !dbg !5965
  %arraydecay27 = getelementptr inbounds [0 x %struct.input_mt_slot], ptr %slots26, i64 0, i64 0, !dbg !5964
  %sub.ptr.lhs.cast28 = ptrtoint ptr %25 to i64, !dbg !5966
  %sub.ptr.rhs.cast29 = ptrtoint ptr %arraydecay27 to i64, !dbg !5966
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29, !dbg !5966
  %sub.ptr.div31 = sdiv exact i64 %sub.ptr.sub30, 64, !dbg !5966
  %conv32 = trunc i64 %sub.ptr.div31 to i32, !dbg !5963
  store i32 %conv32, ptr %retval, align 4, !dbg !5967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end33:                                         ; preds = %land.lhs.true22, %for.body20
  br label %for.inc34, !dbg !5968

for.inc34:                                        ; preds = %if.end33
  %27 = load ptr, ptr %s, align 8, !dbg !5969
  %incdec.ptr35 = getelementptr %struct.input_mt_slot, ptr %27, i32 1, !dbg !5969
  store ptr %incdec.ptr35, ptr %s, align 8, !dbg !5969
  br label %for.cond12, !dbg !5970, !llvm.loop !5971

for.end36:                                        ; preds = %for.cond12
  store i32 -1, ptr %retval, align 4, !dbg !5973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5973

cleanup:                                          ; preds = %for.end36, %if.then24, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %mt) #16, !dbg !5974
  %28 = load i32, ptr %retval, align 4, !dbg !5974
  ret i32 %28, !dbg !5974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @input_mt_is_active(ptr noundef %slot) #4 align 16 !dbg !5975 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5981
  %call = call i32 @input_mt_get_value(ptr noundef %0, i32 noundef 57) #17, !dbg !5982
  %cmp = icmp sge i32 %call, 0, !dbg !5983
  ret i1 %cmp, !dbg !5984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @input_mt_is_used(ptr noundef %mt, ptr noundef %slot) #4 align 16 !dbg !5985 {
entry:
  %mt.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  store ptr %mt, ptr %mt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !5991, metadata !DIExpression()), !dbg !5993
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5992, metadata !DIExpression()), !dbg !5994
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5995
  %frame = getelementptr inbounds %struct.input_mt_slot, ptr %0, i32 0, i32 1, !dbg !5996
  %1 = load i32, ptr %frame, align 4, !dbg !5996
  %2 = load ptr, ptr %mt.addr, align 8, !dbg !5997
  %frame1 = getelementptr inbounds %struct.input_mt, ptr %2, i32 0, i32 4, !dbg !5998
  %3 = load i32, ptr %frame1, align 8, !dbg !5998
  %cmp = icmp eq i32 %1, %3, !dbg !5999
  ret i1 %cmp, !dbg !6000
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6001 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6003, metadata !DIExpression()), !dbg !6008
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6004, metadata !DIExpression()), !dbg !6009
  %0 = load i64, ptr %size.addr, align 8, !dbg !6010
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6011
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6012

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6013
  %tobool = icmp ne i64 %2, 0, !dbg !6013
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6014

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6015
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6005, metadata !DIExpression()), !dbg !6016
  %3 = load i64, ptr %size.addr, align 8, !dbg !6017
  %cmp = icmp ugt i64 %3, 8192, !dbg !6019
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6020

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6021
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6022
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6023
  store ptr %call, ptr %retval, align 8, !dbg !6024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6024

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6025
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6025
  store i32 %call2, ptr %index, align 4, !dbg !6026
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6027
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6028
  %9 = ptrtoint ptr %8 to i64, !dbg !6028
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6029
  %idxprom = zext i32 %call3 to i64, !dbg !6030
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6030
  %10 = load i32, ptr %index, align 4, !dbg !6031
  %idxprom4 = zext i32 %10 to i64, !dbg !6030
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6030
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6030
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6032
  %13 = load i64, ptr %size.addr, align 8, !dbg !6033
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6034
  store ptr %call6, ptr %retval, align 8, !dbg !6035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6035

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6036
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6037
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6038
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6039
  store ptr %call8, ptr %retval, align 8, !dbg !6040
  br label %return, !dbg !6040

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6041
  ret ptr %16, !dbg !6041
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6042 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6043 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6047, metadata !DIExpression()), !dbg !6049
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6048, metadata !DIExpression()), !dbg !6050
  %0 = load i64, ptr %size.addr, align 8, !dbg !6051
  %tobool = icmp ne i64 %0, 0, !dbg !6051
  br i1 %tobool, label %if.end, label %if.then, !dbg !6053

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6054
  br label %return, !dbg !6054

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6055
  %cmp = icmp ule i64 %1, 8, !dbg !6057
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6058

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6059
  br label %return, !dbg !6059

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6060
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6062
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6063

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6064
  %cmp4 = icmp ule i64 %3, 96, !dbg !6065
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6066

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6067
  br label %return, !dbg !6067

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6068
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6070
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6071

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6072
  %cmp9 = icmp ule i64 %5, 192, !dbg !6073
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6074

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6075
  br label %return, !dbg !6075

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6076
  %cmp12 = icmp ule i64 %6, 8, !dbg !6078
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6079

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6080
  br label %return, !dbg !6080

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6081
  %cmp15 = icmp ule i64 %7, 16, !dbg !6083
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6084

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6085
  br label %return, !dbg !6085

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6086
  %cmp18 = icmp ule i64 %8, 32, !dbg !6088
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6089

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6090
  br label %return, !dbg !6090

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6091
  %cmp21 = icmp ule i64 %9, 64, !dbg !6093
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6094

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6095
  br label %return, !dbg !6095

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6096
  %cmp24 = icmp ule i64 %10, 128, !dbg !6098
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6099

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6100
  br label %return, !dbg !6100

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6101
  %cmp27 = icmp ule i64 %11, 256, !dbg !6103
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6104

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6105
  br label %return, !dbg !6105

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6106
  %cmp30 = icmp ule i64 %12, 512, !dbg !6108
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6109

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6110
  br label %return, !dbg !6110

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6111
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6113
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6114

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6115
  br label %return, !dbg !6115

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6116
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6118
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6119

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6120
  br label %return, !dbg !6120

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6121
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6123
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6124

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6125
  br label %return, !dbg !6125

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6126
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6128
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6129

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6130
  br label %return, !dbg !6130

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6131
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6133
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6134

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6136
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6138
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6139

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6140
  br label %return, !dbg !6140

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6141
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6143
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6144

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6145
  br label %return, !dbg !6145

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6146
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6148
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6149

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6150
  br label %return, !dbg !6150

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6151
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6153
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6154

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6155
  br label %return, !dbg !6155

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6156
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6158
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6159

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6160
  br label %return, !dbg !6160

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6161
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6163
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6164

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6165
  br label %return, !dbg !6165

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6166
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6168
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6169

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6170
  br label %return, !dbg !6170

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6171, !range !4968, !noundef !1479
  %tobool69 = trunc i8 %25 to i1, !dbg !6171
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6173

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6174

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #21, !dbg !6175, !srcloc !6178
  unreachable, !dbg !6175

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6179

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6180

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6181

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6183

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6181

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !6185, !srcloc !6187
  br label %do.end75, !dbg !6185

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6181

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6188
  br label %return, !dbg !6188

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6189
  ret i32 %26, !dbg !6189
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6190 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6196 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6200, metadata !DIExpression()), !dbg !6202
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6201, metadata !DIExpression()), !dbg !6203
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6204
  %and = and i32 %0, 17, !dbg !6204
  %cmp = icmp eq i32 %and, 0, !dbg !6204
  %lnot = xor i1 %cmp, true, !dbg !6204
  %lnot1 = xor i1 %lnot, true, !dbg !6204
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6204
  %conv = sext i32 %lnot.ext to i64, !dbg !6204
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6204
  %tobool = icmp ne i64 %expval, 0, !dbg !6204
  br i1 %tobool, label %if.then, label %if.end, !dbg !6206

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6208
  %and2 = and i32 %1, 1, !dbg !6210
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6210
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6211

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6213
  br label %return, !dbg !6213

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6215
  ret i32 %2, !dbg !6215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6216 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6217 dso_local void @__compiletime_assert_263() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6218 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6222, metadata !DIExpression()), !dbg !6223
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6224, !range !4968, !noundef !1479
  %tobool = trunc i8 %0 to i1, !dbg !6224
  %lnot = xor i1 %tobool, true, !dbg !6224
  %lnot1 = xor i1 %lnot, true, !dbg !6224
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6224
  %conv = sext i32 %lnot.ext to i64, !dbg !6224
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6224
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6224
  ret i1 %tobool2, !dbg !6225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6226 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6234, metadata !DIExpression()), !dbg !6236
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6235, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6238
  %1 = load i64, ptr %size.addr, align 8, !dbg !6239
  %conv = trunc i64 %1 to i32, !dbg !6239
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6240
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6241
  %3 = load i64, ptr %size.addr, align 8, !dbg !6241
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #17, !dbg !6241
  ret void, !dbg !6242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6243 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6247, metadata !DIExpression()), !dbg !6249
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6250
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6251
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6252, !srcloc !6253
  ret void, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6255 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6260, metadata !DIExpression()), !dbg !6262
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6261, metadata !DIExpression()), !dbg !6263
  ret i1 true, !dbg !6264
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6265 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6271, metadata !DIExpression()), !dbg !6274
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6272, metadata !DIExpression()), !dbg !6275
  ret void, !dbg !6276
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6277 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6279, metadata !DIExpression()), !dbg !6283
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6280, metadata !DIExpression()), !dbg !6284
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6281, metadata !DIExpression()), !dbg !6285
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6282, metadata !DIExpression()), !dbg !6287
  %0 = load i64, ptr %n.addr, align 8, !dbg !6288
  %1 = load i64, ptr %size.addr, align 8, !dbg !6288
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6288
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6288
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6288
  store i64 %4, ptr %bytes, align 8, !dbg !6288
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !6288
  %lnot = xor i1 %call, true, !dbg !6288
  %lnot1 = xor i1 %lnot, true, !dbg !6288
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6288
  %conv = sext i32 %lnot.ext to i64, !dbg !6288
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6288
  %tobool = icmp ne i64 %expval, 0, !dbg !6288
  br i1 %tobool, label %if.then, label %if.end, !dbg !6290

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6291

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6292
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6294
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6295

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6296
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6297
  br i1 %8, label %if.then2, label %if.end4, !dbg !6298

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6299
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6300
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !6301
  store ptr %call3, ptr %retval, align 8, !dbg !6302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6302

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6303
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6304
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !6305
  store ptr %call5, ptr %retval, align 8, !dbg !6306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6306

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !6307
  %13 = load ptr, ptr %retval, align 8, !dbg !6307
  ret ptr %13, !dbg !6307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6308 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6314
  %1 = load i64, ptr %size.addr, align 8, !dbg !6315
  %conv = trunc i64 %1 to i32, !dbg !6315
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6316
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6317
  %3 = load i64, ptr %size.addr, align 8, !dbg !6317
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6317
  ret void, !dbg !6318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6319 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6321, metadata !DIExpression()), !dbg !6323
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6322, metadata !DIExpression()), !dbg !6324
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6325
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6326
  br i1 %1, label %cond.true, label %cond.false, !dbg !6326

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6327
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6328
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6329
  %conv = zext i1 %call to i32, !dbg !6329
  br label %cond.end, !dbg !6326

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6330
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6331
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !6332
  %conv2 = zext i1 %call1 to i32, !dbg !6332
  br label %cond.end, !dbg !6326

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6326
  %tobool = icmp ne i32 %cond, 0, !dbg !6326
  ret i1 %tobool, !dbg !6333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6334 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6336, metadata !DIExpression()), !dbg !6338
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6337, metadata !DIExpression()), !dbg !6339
  ret i1 true, !dbg !6340
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6341 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6346, metadata !DIExpression()), !dbg !6348
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6349
  %and = and i64 %0, 63, !dbg !6350
  %shl = shl i64 1, %and, !dbg !6351
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6352
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6353
  %shr = ashr i64 %2, 6, !dbg !6354
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6352
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6352
  %and1 = and i64 %shl, %3, !dbg !6355
  %cmp = icmp ne i64 %and1, 0, !dbg !6356
  ret i1 %cmp, !dbg !6357
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6358 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6360, metadata !DIExpression()), !dbg !6363
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6361, metadata !DIExpression()), !dbg !6364
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6365
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6362, metadata !DIExpression()), !dbg !6366
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6367
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6368
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6369, !srcloc !6370
  %3 = icmp ult i8 %2, 2, !dbg !6369
  call void @llvm.assume(i1 %3), !dbg !6369
  store i8 %2, ptr %oldbit, align 1, !dbg !6369
  %4 = load i8, ptr %oldbit, align 1, !dbg !6371, !range !4968, !noundef !1479
  %tobool = trunc i8 %4 to i1, !dbg !6371
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6372
  ret i1 %tobool, !dbg !6373
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6374 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @adjust_dual(ptr noundef %begin, i32 noundef %step, ptr noundef %end, i32 noundef %eq, i32 noundef %mu) #0 align 16 !dbg !6377 {
entry:
  %retval = alloca i32, align 4
  %begin.addr = alloca ptr, align 8
  %step.addr = alloca i32, align 4
  %end.addr = alloca ptr, align 8
  %eq.addr = alloca i32, align 4
  %mu.addr = alloca i32, align 4
  %f = alloca i32, align 4
  %p = alloca ptr, align 8
  %s = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %begin, ptr %begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !6381, metadata !DIExpression()), !dbg !6390
  store i32 %step, ptr %step.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %step.addr, metadata !6382, metadata !DIExpression()), !dbg !6391
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6383, metadata !DIExpression()), !dbg !6392
  store i32 %eq, ptr %eq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %eq.addr, metadata !6384, metadata !DIExpression()), !dbg !6393
  store i32 %mu, ptr %mu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mu.addr, metadata !6385, metadata !DIExpression()), !dbg !6394
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #16, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6386, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6387, metadata !DIExpression()), !dbg !6397
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #16, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6388, metadata !DIExpression()), !dbg !6398
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #16, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6389, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %begin.addr, align 8, !dbg !6400
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6402
  %cmp = icmp eq ptr %0, %1, !dbg !6403
  br i1 %cmp, label %if.then, label %if.end, !dbg !6404

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6405

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %begin.addr, align 8, !dbg !6406
  %3 = load i32, ptr %2, align 4, !dbg !6407
  store i32 %3, ptr %f, align 4, !dbg !6408
  %4 = load ptr, ptr %begin.addr, align 8, !dbg !6409
  %5 = load i32, ptr %step.addr, align 4, !dbg !6410
  %idx.ext = sext i32 %5 to i64, !dbg !6411
  %add.ptr = getelementptr i32, ptr %4, i64 %idx.ext, !dbg !6411
  store ptr %add.ptr, ptr %p, align 8, !dbg !6412
  %6 = load ptr, ptr %p, align 8, !dbg !6413
  %7 = load ptr, ptr %end.addr, align 8, !dbg !6414
  %cmp1 = icmp eq ptr %6, %7, !dbg !6415
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6413

cond.true:                                        ; preds = %if.end
  %8 = load i32, ptr %f, align 4, !dbg !6416
  %add = add i32 %8, 1, !dbg !6417
  br label %cond.end, !dbg !6413

cond.false:                                       ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !dbg !6418
  %10 = load i32, ptr %9, align 4, !dbg !6419
  br label %cond.end, !dbg !6413

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %10, %cond.false ], !dbg !6413
  store i32 %cond, ptr %s, align 4, !dbg !6420
  br label %for.cond, !dbg !6421

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load ptr, ptr %p, align 8, !dbg !6422
  %12 = load ptr, ptr %end.addr, align 8, !dbg !6425
  %cmp2 = icmp ne ptr %11, %12, !dbg !6426
  br i1 %cmp2, label %for.body, label %for.end, !dbg !6427

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %p, align 8, !dbg !6428
  %14 = load i32, ptr %13, align 4, !dbg !6431
  %15 = load i32, ptr %f, align 4, !dbg !6432
  %cmp3 = icmp slt i32 %14, %15, !dbg !6433
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !6434

if.then4:                                         ; preds = %for.body
  %16 = load i32, ptr %f, align 4, !dbg !6435
  store i32 %16, ptr %s, align 4, !dbg !6437
  %17 = load ptr, ptr %p, align 8, !dbg !6438
  %18 = load i32, ptr %17, align 4, !dbg !6439
  store i32 %18, ptr %f, align 4, !dbg !6440
  br label %if.end8, !dbg !6441

if.else:                                          ; preds = %for.body
  %19 = load ptr, ptr %p, align 8, !dbg !6442
  %20 = load i32, ptr %19, align 4, !dbg !6444
  %21 = load i32, ptr %s, align 4, !dbg !6445
  %cmp5 = icmp slt i32 %20, %21, !dbg !6446
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !6447

if.then6:                                         ; preds = %if.else
  %22 = load ptr, ptr %p, align 8, !dbg !6448
  %23 = load i32, ptr %22, align 4, !dbg !6450
  store i32 %23, ptr %s, align 4, !dbg !6451
  br label %if.end7, !dbg !6452

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then4
  br label %for.inc, !dbg !6453

for.inc:                                          ; preds = %if.end8
  %24 = load i32, ptr %step.addr, align 4, !dbg !6454
  %25 = load ptr, ptr %p, align 8, !dbg !6455
  %idx.ext9 = sext i32 %24 to i64, !dbg !6455
  %add.ptr10 = getelementptr i32, ptr %25, i64 %idx.ext9, !dbg !6455
  store ptr %add.ptr10, ptr %p, align 8, !dbg !6455
  br label %for.cond, !dbg !6456, !llvm.loop !6457

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %f, align 4, !dbg !6459
  %27 = load i32, ptr %s, align 4, !dbg !6460
  %add11 = add i32 %26, %27, !dbg !6461
  %add12 = add i32 %add11, 1, !dbg !6462
  %div = sdiv i32 %add12, 2, !dbg !6463
  store i32 %div, ptr %c, align 4, !dbg !6464
  %28 = load i32, ptr %c, align 4, !dbg !6465
  %cmp13 = icmp eq i32 %28, 0, !dbg !6467
  br i1 %cmp13, label %if.then17, label %lor.lhs.false, !dbg !6468

lor.lhs.false:                                    ; preds = %for.end
  %29 = load i32, ptr %c, align 4, !dbg !6469
  %30 = load i32, ptr %mu.addr, align 4, !dbg !6470
  %cmp14 = icmp sgt i32 %29, %30, !dbg !6471
  br i1 %cmp14, label %land.lhs.true, label %if.end18, !dbg !6472

land.lhs.true:                                    ; preds = %lor.lhs.false
  %31 = load i32, ptr %eq.addr, align 4, !dbg !6473
  %tobool = icmp ne i32 %31, 0, !dbg !6473
  br i1 %tobool, label %lor.lhs.false15, label %if.then17, !dbg !6474

lor.lhs.false15:                                  ; preds = %land.lhs.true
  %32 = load i32, ptr %mu.addr, align 4, !dbg !6475
  %cmp16 = icmp sgt i32 %32, 0, !dbg !6476
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !6477

if.then17:                                        ; preds = %lor.lhs.false15, %land.lhs.true, %for.end
  store i32 0, ptr %retval, align 4, !dbg !6478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6478

if.end18:                                         ; preds = %lor.lhs.false15, %lor.lhs.false
  %33 = load i32, ptr %s, align 4, !dbg !6479
  %cmp19 = icmp slt i32 %33, 0, !dbg !6481
  br i1 %cmp19, label %land.lhs.true20, label %if.end23, !dbg !6482

land.lhs.true20:                                  ; preds = %if.end18
  %34 = load i32, ptr %mu.addr, align 4, !dbg !6483
  %cmp21 = icmp sle i32 %34, 0, !dbg !6484
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6485

if.then22:                                        ; preds = %land.lhs.true20
  %35 = load i32, ptr %c, align 4, !dbg !6486
  %mul = mul i32 %35, 2, !dbg !6486
  store i32 %mul, ptr %c, align 4, !dbg !6486
  br label %if.end23, !dbg !6487

if.end23:                                         ; preds = %if.then22, %land.lhs.true20, %if.end18
  %36 = load ptr, ptr %begin.addr, align 8, !dbg !6488
  store ptr %36, ptr %p, align 8, !dbg !6490
  br label %for.cond24, !dbg !6491

for.cond24:                                       ; preds = %for.inc27, %if.end23
  %37 = load ptr, ptr %p, align 8, !dbg !6492
  %38 = load ptr, ptr %end.addr, align 8, !dbg !6494
  %cmp25 = icmp ne ptr %37, %38, !dbg !6495
  br i1 %cmp25, label %for.body26, label %for.end30, !dbg !6496

for.body26:                                       ; preds = %for.cond24
  %39 = load i32, ptr %c, align 4, !dbg !6497
  %40 = load ptr, ptr %p, align 8, !dbg !6498
  %41 = load i32, ptr %40, align 4, !dbg !6499
  %sub = sub i32 %41, %39, !dbg !6499
  store i32 %sub, ptr %40, align 4, !dbg !6499
  br label %for.inc27, !dbg !6500

for.inc27:                                        ; preds = %for.body26
  %42 = load i32, ptr %step.addr, align 4, !dbg !6501
  %43 = load ptr, ptr %p, align 8, !dbg !6502
  %idx.ext28 = sext i32 %42 to i64, !dbg !6502
  %add.ptr29 = getelementptr i32, ptr %43, i64 %idx.ext28, !dbg !6502
  store ptr %add.ptr29, ptr %p, align 8, !dbg !6502
  br label %for.cond24, !dbg !6503, !llvm.loop !6504

for.end30:                                        ; preds = %for.cond24
  %44 = load i32, ptr %c, align 4, !dbg !6506
  %45 = load i32, ptr %s, align 4, !dbg !6507
  %cmp31 = icmp slt i32 %44, %45, !dbg !6508
  br i1 %cmp31, label %land.lhs.true32, label %lor.rhs, !dbg !6509

land.lhs.true32:                                  ; preds = %for.end30
  %46 = load i32, ptr %s, align 4, !dbg !6510
  %cmp33 = icmp sle i32 %46, 0, !dbg !6511
  br i1 %cmp33, label %lor.end, label %lor.rhs, !dbg !6512

lor.rhs:                                          ; preds = %land.lhs.true32, %for.end30
  %47 = load i32, ptr %f, align 4, !dbg !6513
  %cmp34 = icmp sge i32 %47, 0, !dbg !6514
  br i1 %cmp34, label %land.rhs, label %land.end, !dbg !6515

land.rhs:                                         ; preds = %lor.rhs
  %48 = load i32, ptr %f, align 4, !dbg !6516
  %49 = load i32, ptr %c, align 4, !dbg !6517
  %cmp35 = icmp slt i32 %48, %49, !dbg !6518
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %50 = phi i1 [ false, %lor.rhs ], [ %cmp35, %land.rhs ], !dbg !6519
  br label %lor.end, !dbg !6512

lor.end:                                          ; preds = %land.end, %land.lhs.true32
  %51 = phi i1 [ true, %land.lhs.true32 ], [ %50, %land.end ]
  %lor.ext = zext i1 %51 to i32, !dbg !6512
  store i32 %lor.ext, ptr %retval, align 4, !dbg !6520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6520

cleanup:                                          ; preds = %lor.end, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #16, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #16, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #16, !dbg !6521
  %52 = load i32, ptr %retval, align 4, !dbg !6521
  ret i32 %52, !dbg !6521
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_init_slots267", scope: !2, file: !3, line: 105, type: !137, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.input-mt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/input-core\22 -D KBUILD_BASENAME=\22input_mt\22 -D KBUILD_MODNAME=\22input_core\22 -D __KBUILD_MODNAME=kmod_input_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/input-mt.ll drivers/input/input-mt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !148, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/input-mt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c80c5ee7b0d545da3dad92dd772d43a1")
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
!132 = !{!85, !133, !135, !137, !138, !136, !140, !144, !145}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !134, line: 154, baseType: !7)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !134, line: 42, baseType: !136)
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 61, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !142, line: 72, baseType: !143)
!142 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !142, line: 16, baseType: !136)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!147 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!148 = !{!0, !149, !151, !153, !155, !157, !159, !161, !163, !165}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_destroy_slots268", scope: !2, file: !3, line: 122, type: !137, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_report_slot_state269", scope: !2, file: !3, line: 165, type: !137, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_report_finger_count270", scope: !2, file: !3, line: 186, type: !137, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_report_pointer_emulation271", scope: !2, file: !3, line: 260, type: !137, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_drop_unused272", scope: !2, file: !3, line: 298, type: !137, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_sync_frame273", scope: !2, file: !3, line: 356, type: !137, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_assign_slots274", scope: !2, file: !3, line: 504, type: !137, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_mt_get_slot_by_key275", scope: !2, file: !3, line: 538, type: !137, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !123, line: 480, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 168, elements: !169)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !{!170}
!170 = !DISubrange(count: 21)
!171 = !{i32 7, !"Dwarf Version", i32 5}
!172 = !{i32 2, !"Debug Info Version", i32 3}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 8, !"cf-protection-branch", i32 1}
!175 = !{i32 4, !"function_return_thunk_extern", i32 1}
!176 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!177 = !{i32 1, !"Code Model", i32 2}
!178 = !{i32 1, !"override-stack-alignment", i32 8}
!179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!180 = distinct !DISubprogram(name: "input_mt_init_slots", scope: !3, file: !3, line: 39, type: !181, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4595)
!181 = !DISubroutineType(types: !182)
!182 = !{!85, !183, !7, !7}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !185, line: 137, size: 10880, elements: !186)
!185 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!186 = !{!187, !190, !191, !192, !203, !207, !208, !212, !213, !214, !215, !216, !217, !221, !222, !223, !224, !225, !226, !246, !251, !4082, !4085, !4086, !4087, !4089, !4110, !4120, !4121, !4122, !4123, !4124, !4128, !4132, !4136, !4140, !4218, !4219, !4220, !4221, !4222, !4585, !4586, !4587, !4588, !4589, !4591, !4592, !4594}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !185, line: 138, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !184, file: !185, line: 139, baseType: !188, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !184, file: !185, line: 140, baseType: !188, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !184, file: !185, line: 141, baseType: !193, size: 64, offset: 192)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !194, line: 59, size: 64, elements: !195)
!194 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!195 = !{!196, !200, !201, !202}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !193, file: !194, line: 60, baseType: !197, size: 16)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !198, line: 24, baseType: !199)
!198 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !193, file: !194, line: 61, baseType: !197, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !193, file: !194, line: 62, baseType: !197, size: 16, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !193, file: !194, line: 63, baseType: !197, size: 16, offset: 48)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !184, file: !185, line: 143, baseType: !204, size: 64, offset: 256)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 1)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !184, file: !185, line: 145, baseType: !204, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !184, file: !185, line: 146, baseType: !209, size: 768, offset: 384)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 768, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 12)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !184, file: !185, line: 147, baseType: !204, size: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !184, file: !185, line: 148, baseType: !204, size: 64, offset: 1216)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !184, file: !185, line: 149, baseType: !204, size: 64, offset: 1280)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !184, file: !185, line: 150, baseType: !204, size: 64, offset: 1344)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !184, file: !185, line: 151, baseType: !204, size: 64, offset: 1408)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !184, file: !185, line: 152, baseType: !218, size: 128, offset: 1472)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 2)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !184, file: !185, line: 153, baseType: !204, size: 64, offset: 1600)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !184, file: !185, line: 155, baseType: !7, size: 32, offset: 1664)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !184, file: !185, line: 157, baseType: !7, size: 32, offset: 1696)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !184, file: !185, line: 158, baseType: !7, size: 32, offset: 1728)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !184, file: !185, line: 159, baseType: !137, size: 64, offset: 1792)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !184, file: !185, line: 161, baseType: !227, size: 64, offset: 1856)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!85, !183, !230, !245}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !194, line: 117, size: 320, elements: !233)
!233 = !{!234, !237, !238, !239, !241}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !194, line: 119, baseType: !235, size: 8)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !198, line: 21, baseType: !236)
!236 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !232, file: !194, line: 120, baseType: !235, size: 8, offset: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !232, file: !194, line: 121, baseType: !197, size: 16, offset: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !232, file: !194, line: 122, baseType: !240, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !198, line: 27, baseType: !7)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !232, file: !194, line: 123, baseType: !242, size: 256, offset: 64)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 32)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !184, file: !185, line: 164, baseType: !247, size: 64, offset: 1920)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!85, !183, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !184, file: !185, line: 167, baseType: !252, size: 64, offset: 1984)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !185, line: 546, size: 960, elements: !254)
!254 = !{!255, !324, !328, !332, !338, !339, !343, !344, !345, !399, !400, !401}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !253, file: !185, line: 547, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!85, !183, !259, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !194, line: 454, size: 384, elements: !261)
!261 = !{!262, !263, !266, !267, !272, !277}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !260, file: !194, line: 455, baseType: !197, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !260, file: !194, line: 456, baseType: !264, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !198, line: 23, baseType: !265)
!265 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !260, file: !194, line: 457, baseType: !197, size: 16, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !260, file: !194, line: 458, baseType: !268, size: 32, offset: 48)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !194, line: 320, size: 32, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !268, file: !194, line: 321, baseType: !197, size: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !268, file: !194, line: 322, baseType: !197, size: 16, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !260, file: !194, line: 459, baseType: !273, size: 32, offset: 80)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !194, line: 310, size: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !273, file: !194, line: 311, baseType: !197, size: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !273, file: !194, line: 312, baseType: !197, size: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !260, file: !194, line: 467, baseType: !278, size: 256, offset: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !194, line: 461, size: 256, elements: !279)
!279 = !{!280, !291, !297, !309, !319}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !278, file: !194, line: 462, baseType: !281, size: 80)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !194, line: 349, size: 80, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !281, file: !194, line: 350, baseType: !264, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !281, file: !194, line: 351, baseType: !285, size: 64, offset: 16)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !194, line: 337, size: 64, elements: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !285, file: !194, line: 338, baseType: !197, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !285, file: !194, line: 339, baseType: !197, size: 16, offset: 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !285, file: !194, line: 340, baseType: !197, size: 16, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !285, file: !194, line: 341, baseType: !197, size: 16, offset: 48)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !278, file: !194, line: 463, baseType: !292, size: 96)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !194, line: 360, size: 96, elements: !293)
!293 = !{!294, !295, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !292, file: !194, line: 361, baseType: !264, size: 16)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !292, file: !194, line: 362, baseType: !264, size: 16, offset: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !292, file: !194, line: 363, baseType: !285, size: 64, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !278, file: !194, line: 464, baseType: !298, size: 256)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !194, line: 405, size: 256, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !298, file: !194, line: 406, baseType: !197, size: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !298, file: !194, line: 407, baseType: !197, size: 16, offset: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !298, file: !194, line: 408, baseType: !264, size: 16, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !298, file: !194, line: 409, baseType: !264, size: 16, offset: 48)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !298, file: !194, line: 410, baseType: !197, size: 16, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !298, file: !194, line: 412, baseType: !285, size: 64, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !298, file: !194, line: 414, baseType: !240, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !298, file: !194, line: 415, baseType: !308, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !278, file: !194, line: 465, baseType: !310, size: 192)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 192, elements: !219)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !194, line: 376, size: 96, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !311, file: !194, line: 377, baseType: !197, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !311, file: !194, line: 378, baseType: !197, size: 16, offset: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !311, file: !194, line: 380, baseType: !264, size: 16, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !311, file: !194, line: 381, baseType: !264, size: 16, offset: 48)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !311, file: !194, line: 383, baseType: !197, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !311, file: !194, line: 384, baseType: !264, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !278, file: !194, line: 466, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !194, line: 426, size: 32, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !320, file: !194, line: 427, baseType: !197, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !320, file: !194, line: 428, baseType: !197, size: 16, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !253, file: !185, line: 549, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!85, !183, !85}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !253, file: !185, line: 551, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!85, !183, !85, !85}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !253, file: !185, line: 552, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !183, !336}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !337, line: 19, baseType: !197)
!337 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !253, file: !185, line: 553, baseType: !333, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !253, file: !185, line: 555, baseType: !340, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !252}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !253, file: !185, line: 557, baseType: !137, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !253, file: !185, line: 559, baseType: !218, size: 128, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !253, file: !185, line: 561, baseType: !346, size: 256, offset: 576)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !347, line: 66, size: 256, elements: !348)
!347 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!348 = !{!349, !359, !388, !393}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !346, file: !347, line: 67, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !351, line: 13, baseType: !352)
!351 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 181, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 179, size: 64, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !353, file: !134, line: 180, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !337, line: 22, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !198, line: 30, baseType: !358)
!358 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !346, file: !347, line: 68, baseType: !360, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !361, line: 23, baseType: !362)
!361 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !361, line: 14, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !362, file: !361, line: 15, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !366, line: 44, baseType: !367)
!366 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !366, line: 14, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !366, line: 15, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !366, line: 15, size: 32, elements: !371)
!371 = !{!372, !377, !383}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !366, line: 16, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 174, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 172, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !374, file: !134, line: 173, baseType: !85, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !366, line: 24, baseType: !378, size: 16)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !366, line: 24, size: 16, elements: !379)
!379 = !{!380, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !378, file: !366, line: 25, baseType: !381, size: 8)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !337, line: 17, baseType: !235)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !378, file: !366, line: 26, baseType: !381, size: 8, offset: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !366, line: 28, baseType: !384, size: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !366, line: 28, size: 32, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !384, file: !366, line: 29, baseType: !336, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !384, file: !366, line: 30, baseType: !336, size: 16, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !346, file: !347, line: 70, baseType: !389, size: 32, offset: 96)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !390, line: 15, size: 32, elements: !391)
!390 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !389, file: !390, line: 20, baseType: !373, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !346, file: !347, line: 72, baseType: !394, size: 128, offset: 128)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 190, size: 128, elements: !395)
!395 = !{!396, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !134, line: 191, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !394, file: !134, line: 191, baseType: !397, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !253, file: !185, line: 563, baseType: !85, size: 32, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !253, file: !185, line: 564, baseType: !259, size: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !253, file: !185, line: 565, baseType: !402, offset: 960)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, elements: !510)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !405)
!405 = !{!406, !425, !434, !436, !437, !438, !441, !442, !523, !745, !754, !4072, !4073, !4074, !4075, !4076, !4077, !4079, !4080, !4081}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !35, line: 995, baseType: !407, size: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !35, line: 995, size: 128, elements: !408)
!408 = !{!409, !415, !424}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !407, file: !35, line: 996, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !411, line: 60, size: 64, elements: !412)
!411 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !411, line: 61, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !407, file: !35, line: 997, baseType: !416, size: 128, align: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 232, size: 128, align: 64, elements: !417)
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !134, line: 233, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !416, file: !134, line: 234, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !419}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !407, file: !35, line: 998, baseType: !7, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !404, file: !35, line: 1005, baseType: !426, size: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !427, line: 29, baseType: !428)
!427 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !427, line: 17, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !427, line: 18, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !427, line: 18, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !431, file: !427, line: 19, baseType: !362, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !404, file: !35, line: 1006, baseType: !435, size: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !134, line: 156, baseType: !7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !404, file: !35, line: 1007, baseType: !350, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !404, file: !35, line: 1008, baseType: !346, size: 256, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !404, file: !35, line: 1009, baseType: !439, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 52, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !142, line: 88, baseType: !358)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !404, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !404, file: !35, line: 1011, baseType: !443, size: 256, offset: 640)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !444)
!444 = !{!445, !468, !512, !513, !521, !522}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !443, file: !35, line: 949, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !447, line: 34, baseType: !448)
!447 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 25, size: 64, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !448, file: !447, line: 26, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !452, line: 27, baseType: !453)
!452 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !452, line: 13, size: 64, elements: !454)
!454 = !{!455, !467}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !452, line: 14, baseType: !456, size: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !452, line: 14, size: 32, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !456, file: !452, line: 15, baseType: !373, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !452, line: 16, baseType: !460, size: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !452, line: 16, size: 32, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !460, file: !452, line: 18, baseType: !381, size: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !460, file: !452, line: 19, baseType: !464, size: 24, offset: 8)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 24, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 3)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !453, file: !452, line: 26, baseType: !365, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !443, file: !35, line: 950, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !471)
!471 = !{!472, !478, !479, !480, !493, !494, !501, !502}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !470, file: !6, line: 61, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !474, line: 113, baseType: !475)
!474 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !474, line: 111, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !475, file: !474, line: 112, baseType: !373, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !470, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !6, line: 63, baseType: !426, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !470, file: !6, line: 65, baseType: !481, size: 256, offset: 128)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 256, elements: !491)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !134, line: 194, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !482, file: !134, line: 195, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 198, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !134, line: 199, baseType: !485, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !486, file: !134, line: 199, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!491 = !{!492}
!492 = !DISubrange(count: 4)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !470, file: !6, line: 66, baseType: !482, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !470, file: !6, line: 68, baseType: !495, size: 192, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !496, line: 41, baseType: !497)
!496 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !496, line: 37, size: 192, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !497, file: !496, line: 38, baseType: !426, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !497, file: !496, line: 39, baseType: !394, size: 128, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !470, file: !6, line: 69, baseType: !416, size: 128, align: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !470, file: !6, line: 70, baseType: !503, offset: 768)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, elements: !510)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !504, file: !6, line: 55, baseType: !85, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !504, file: !6, line: 56, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!510 = !{!511}
!511 = !DISubrange(count: -1)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !443, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !443, file: !35, line: 952, baseType: !514, size: 32, offset: 160)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !515, line: 23, baseType: !516)
!515 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 21, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !516, file: !515, line: 22, baseType: !519, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 37, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !142, line: 49, baseType: !7)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !443, file: !35, line: 952, baseType: !514, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !443, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !404, file: !35, line: 1012, baseType: !524, size: 64, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !527, line: 110, size: 1472, elements: !528)
!527 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!528 = !{!529, !530, !531, !538, !539, !540, !541, !542, !543, !544, !545, !554, !555, !556, !557, !558, !559, !690, !691, !692, !693, !694, !725, !728, !732, !740}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !526, file: !527, line: 111, baseType: !350, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !526, file: !527, line: 112, baseType: !514, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !526, file: !527, line: 113, baseType: !532, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !515, line: 28, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 26, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !533, file: !515, line: 27, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 38, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !142, line: 50, baseType: !7)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !526, file: !527, line: 114, baseType: !514, size: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !526, file: !527, line: 115, baseType: !532, size: 32, offset: 160)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !526, file: !527, line: 116, baseType: !514, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !526, file: !527, line: 117, baseType: !532, size: 32, offset: 224)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !526, file: !527, line: 118, baseType: !514, size: 32, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !526, file: !527, line: 119, baseType: !532, size: 32, offset: 288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !526, file: !527, line: 120, baseType: !7, size: 32, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !526, file: !527, line: 121, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !547, line: 24, baseType: !548)
!547 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 24, size: 64, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !548, file: !547, line: 24, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !337, line: 23, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !198, line: 31, baseType: !553)
!553 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !526, file: !527, line: 122, baseType: !546, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !526, file: !527, line: 123, baseType: !546, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !526, file: !527, line: 124, baseType: !546, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !526, file: !527, line: 125, baseType: !546, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !526, file: !527, line: 127, baseType: !236, size: 8, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !526, file: !527, line: 129, baseType: !560, size: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !562, line: 195, size: 1728, elements: !563)
!562 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!563 = !{!564, !565, !570, !582, !591, !594, !595, !602, !603, !604, !605, !609, !610, !611, !612, !613, !654, !675}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !561, file: !562, line: 196, baseType: !473, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !561, file: !562, line: 197, baseType: !566, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !562, line: 28, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !134, line: 104, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !337, line: 20, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !198, line: 26, baseType: !85)
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !562, line: 198, baseType: !571, size: 192, offset: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !562, line: 198, size: 192, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !571, file: !562, line: 199, baseType: !394, size: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !571, file: !562, line: 200, baseType: !575, size: 192, align: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !576, line: 5, size: 192, align: 64, elements: !577)
!576 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!577 = !{!578, !579, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !575, file: !576, line: 6, baseType: !136, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !575, file: !576, line: 7, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !575, file: !576, line: 8, baseType: !580, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !561, file: !562, line: 205, baseType: !583, size: 320, offset: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !584, line: 48, size: 320, elements: !585)
!584 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!585 = !{!586, !587, !588, !589, !590}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !583, file: !584, line: 49, baseType: !350, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !583, file: !584, line: 55, baseType: !350, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !583, file: !584, line: 57, baseType: !389, size: 32, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !583, file: !584, line: 59, baseType: !360, size: 32, offset: 160)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !583, file: !584, line: 60, baseType: !394, size: 128, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !561, file: !562, line: 206, baseType: !592, size: 64, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !562, line: 206, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !561, file: !562, line: 207, baseType: !137, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !562, line: 208, baseType: !596, size: 64, offset: 704)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !562, line: 208, size: 64, elements: !597)
!597 = !{!598, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !596, file: !562, line: 209, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !600, line: 8, baseType: !357)
!600 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !596, file: !562, line: 210, baseType: !599, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !561, file: !562, line: 212, baseType: !599, size: 64, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !561, file: !562, line: 213, baseType: !514, size: 32, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !561, file: !562, line: 214, baseType: !532, size: 32, offset: 864)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !561, file: !562, line: 215, baseType: !606, size: 32, offset: 896)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !562, line: 31, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 110, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !337, line: 21, baseType: !240)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !561, file: !562, line: 216, baseType: !199, size: 16, offset: 928)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !561, file: !562, line: 217, baseType: !199, size: 16, offset: 944)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !561, file: !562, line: 221, baseType: !265, size: 16, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !562, line: 228, baseType: !136, size: 64, offset: 1024)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !562, line: 245, baseType: !614, size: 320, offset: 1088)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !562, line: 245, size: 320, elements: !615)
!615 = !{!616, !645}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !614, file: !562, line: 246, baseType: !617, size: 320)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !562, line: 114, size: 320, elements: !618)
!618 = !{!619, !620, !632, !635, !644}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !617, file: !562, line: 116, baseType: !136, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !562, line: 117, baseType: !621, size: 64, offset: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !562, line: 117, size: 64, elements: !622)
!622 = !{!623, !631}
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !562, line: 118, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !562, line: 118, size: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !624, file: !562, line: 120, baseType: !336, size: 16)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !624, file: !562, line: 121, baseType: !628, size: 48, offset: 16)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 6)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !621, file: !562, line: 127, baseType: !136, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !562, line: 129, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !562, line: 102, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !617, file: !562, line: 130, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !562, line: 108, size: 192, elements: !638)
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !637, file: !562, line: 109, baseType: !416, size: 128, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !637, file: !562, line: 110, baseType: !473, size: 32, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !637, file: !562, line: 111, baseType: !642, size: 8, offset: 160)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 35, baseType: !643)
!643 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !617, file: !562, line: 131, baseType: !188, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !562, line: 247, baseType: !646, size: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !614, file: !562, line: 247, size: 320, elements: !647)
!647 = !{!648, !649, !650, !651, !652}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !646, file: !562, line: 248, baseType: !136, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !646, file: !562, line: 249, baseType: !136, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !562, line: 250, baseType: !633, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !646, file: !562, line: 251, baseType: !636, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !646, file: !562, line: 252, baseType: !653, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !562, line: 260, baseType: !655, size: 256, offset: 1408)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !562, line: 260, size: 256, elements: !656)
!656 = !{!657, !663}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !655, file: !562, line: 261, baseType: !658, size: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !562, line: 134, size: 256, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !658, file: !562, line: 135, baseType: !137, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !658, file: !562, line: 136, baseType: !662, size: 256)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !491)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !562, line: 262, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !562, line: 262, size: 256, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !664, file: !562, line: 264, baseType: !394, size: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !664, file: !562, line: 265, baseType: !668, size: 128, offset: 128)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !669, line: 22, size: 128, elements: !670)
!669 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!670 = !{!671, !674}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !668, file: !669, line: 23, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !669, line: 23, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !668, file: !669, line: 24, baseType: !136, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !561, file: !562, line: 280, baseType: !676, size: 64, offset: 1664)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !562, line: 176, size: 192, elements: !678)
!678 = !{!679, !688, !689}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !677, file: !562, line: 177, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !562, line: 171, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!85, !560, !684, !686, !560}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !677, file: !562, line: 178, baseType: !560, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !677, file: !562, line: 179, baseType: !633, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !526, file: !527, line: 130, baseType: !560, size: 64, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !526, file: !527, line: 131, baseType: !560, size: 64, offset: 896)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !526, file: !527, line: 132, baseType: !560, size: 64, offset: 960)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !526, file: !527, line: 135, baseType: !137, size: 64, offset: 1024)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !526, file: !527, line: 137, baseType: !695, size: 64, offset: 1088)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !697, line: 14, size: 1088, elements: !698)
!697 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!698 = !{!699, !700, !709, !710, !711, !712, !713, !714}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !696, file: !697, line: 15, baseType: !473, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !696, file: !697, line: 17, baseType: !701, size: 320, offset: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !702, line: 22, size: 320, elements: !703)
!702 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!703 = !{!704, !705, !706, !707}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !702, line: 23, baseType: !360, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 24, baseType: !356, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !701, file: !702, line: 26, baseType: !394, size: 128, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !701, file: !702, line: 28, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !696, file: !697, line: 19, baseType: !136, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !696, file: !697, line: 20, baseType: !350, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !696, file: !697, line: 23, baseType: !486, size: 128, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !696, file: !697, line: 24, baseType: !514, size: 32, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !696, file: !697, line: 29, baseType: !350, size: 64, offset: 704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !696, file: !697, line: 36, baseType: !715, size: 320, offset: 768)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !716, line: 15, size: 320, elements: !717)
!716 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!717 = !{!718, !719, !720, !721, !722, !723, !724}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !716, line: 16, baseType: !360, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !715, file: !716, line: 18, baseType: !85, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !715, file: !716, line: 19, baseType: !85, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !715, file: !716, line: 20, baseType: !85, size: 32, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !715, file: !716, line: 21, baseType: !85, size: 32, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !715, file: !716, line: 22, baseType: !136, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !716, line: 23, baseType: !136, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !526, file: !527, line: 138, baseType: !726, size: 64, offset: 1152)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !515, line: 18, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !526, file: !527, line: 139, baseType: !729, size: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !731, line: 16, flags: DIFlagFwdDecl)
!731 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!732 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !526, file: !527, line: 140, baseType: !733, size: 64, offset: 1280)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !527, line: 25, size: 64, elements: !735)
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !734, file: !527, line: 26, baseType: !373, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !734, file: !527, line: 27, baseType: !85, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !734, file: !527, line: 28, baseType: !739, offset: 64)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, elements: !510)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !527, line: 142, baseType: !741, size: 128, offset: 1344)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !527, line: 142, size: 128, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !741, file: !527, line: 143, baseType: !85, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !741, file: !527, line: 144, baseType: !416, size: 128, align: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !404, file: !35, line: 1013, baseType: !746, size: 256, offset: 960)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !746, file: !35, line: 971, baseType: !136, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !746, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !746, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !746, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !746, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !746, file: !35, line: 976, baseType: !439, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !404, file: !35, line: 1014, baseType: !755, size: 128, offset: 1216)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !756, line: 8, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!757 = !{!758, !4071}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !755, file: !756, line: 9, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !761, line: 70, size: 256, elements: !762)
!761 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!762 = !{!763, !4068, !4069, !4070}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !760, file: !761, line: 71, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !766, line: 82, size: 1536, elements: !767)
!766 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!767 = !{!768, !769, !779, !787, !788, !803, !4035, !4037, !4050, !4051, !4052, !4053, !4054, !4060, !4061, !4062}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !765, file: !766, line: 84, baseType: !7, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !765, file: !766, line: 85, baseType: !770, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !771, line: 275, baseType: !772)
!771 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !771, line: 275, size: 32, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !772, file: !771, line: 275, baseType: !775, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !771, line: 69, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !771, line: 64, size: 32, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !776, file: !771, line: 65, baseType: !7, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !765, file: !766, line: 86, baseType: !780, size: 128, offset: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !781, line: 38, size: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!782 = !{!783, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !781, line: 39, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !780, file: !781, line: 39, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !765, file: !766, line: 87, baseType: !764, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !765, file: !766, line: 88, baseType: !789, size: 128, offset: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !766, line: 49, size: 128, elements: !790)
!790 = !{!791, !800}
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !766, line: 50, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !766, line: 50, size: 64, elements: !793)
!793 = !{!794, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !766, line: 51, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !766, line: 51, size: 64, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !795, file: !766, line: 52, baseType: !608, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !795, file: !766, line: 52, baseType: !608, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !792, file: !766, line: 54, baseType: !551, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !789, file: !766, line: 56, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !765, file: !766, line: 89, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !806)
!806 = !{!807, !809, !810, !811, !812, !813, !814, !817, !818, !1011, !3851, !3852, !3853, !3854, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !4017, !4020, !4021, !4022, !4031, !4032, !4033, !4034}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !805, file: !35, line: 642, baseType: !808, size: 16)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 24, baseType: !199)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !805, file: !35, line: 643, baseType: !199, size: 16, offset: 16)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !805, file: !35, line: 644, baseType: !514, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !805, file: !35, line: 645, baseType: !394, size: 128, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !805, file: !35, line: 646, baseType: !532, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !805, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !805, file: !35, line: 650, baseType: !815, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !805, file: !35, line: 651, baseType: !815, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !805, file: !35, line: 654, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !822)
!822 = !{!823, !827, !840, !846, !850, !854, !858, !862, !866, !870, !874, !875, !881, !885, !922, !953, !960, !966, !970, !974, !978, !982, !986, !992, !996}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !821, file: !35, line: 1967, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!764, !804, !764, !7}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !821, file: !35, line: 1968, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!188, !764, !804, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !833, line: 10, size: 128, elements: !834)
!833 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!834 = !{!835, !839}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !832, file: !833, line: 11, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !137}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !832, file: !833, line: 12, baseType: !137, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !821, file: !35, line: 1969, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!85, !844, !804, !85}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !547, line: 42, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !821, file: !35, line: 1970, baseType: !847, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!815, !804, !85, !642}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !821, file: !35, line: 1972, baseType: !851, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!85, !764, !653, !85}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !821, file: !35, line: 1974, baseType: !855, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!85, !844, !804, !764, !808, !642}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !821, file: !35, line: 1976, baseType: !859, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!85, !764, !804, !764}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !821, file: !35, line: 1977, baseType: !863, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!85, !804, !764}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !821, file: !35, line: 1978, baseType: !867, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!85, !844, !804, !764, !188}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !821, file: !35, line: 1980, baseType: !871, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!85, !844, !804, !764, !808}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !821, file: !35, line: 1982, baseType: !863, size: 64, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !821, file: !35, line: 1983, baseType: !876, size: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!85, !844, !804, !764, !808, !879}
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !134, line: 21, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !134, line: 18, baseType: !608)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !821, file: !35, line: 1985, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!85, !844, !804, !764, !804, !764, !7}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !821, file: !35, line: 1987, baseType: !886, size: 64, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!85, !844, !764, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !891)
!891 = !{!892, !893, !894, !904, !913, !914, !919, !920, !921}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !890, file: !35, line: 227, baseType: !7, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !890, file: !35, line: 228, baseType: !808, size: 16, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !35, line: 241, baseType: !895, size: 32, offset: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !35, line: 241, size: 32, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !895, file: !35, line: 242, baseType: !514, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !895, file: !35, line: 243, baseType: !899, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !900, line: 16, baseType: !901)
!900 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !900, line: 14, size: 32, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !901, file: !900, line: 15, baseType: !519, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !35, line: 245, baseType: !905, size: 32, offset: 96)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !35, line: 245, size: 32, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !905, file: !35, line: 246, baseType: !532, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !905, file: !35, line: 247, baseType: !909, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !900, line: 20, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !900, line: 18, size: 32, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !910, file: !900, line: 19, baseType: !536, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !890, file: !35, line: 249, baseType: !439, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !890, file: !35, line: 250, baseType: !915, size: 128, offset: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !600, line: 13, size: 128, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !915, file: !600, line: 14, baseType: !599, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !915, file: !600, line: 15, baseType: !147, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !890, file: !35, line: 251, baseType: !915, size: 128, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !890, file: !35, line: 252, baseType: !915, size: 128, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !890, file: !35, line: 259, baseType: !403, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !821, file: !35, line: 1988, baseType: !923, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!85, !844, !926, !928, !608, !7}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !930, line: 22, size: 1280, elements: !931)
!930 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!931 = !{!932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !929, file: !930, line: 23, baseType: !608, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !929, file: !930, line: 24, baseType: !808, size: 16, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !929, file: !930, line: 25, baseType: !7, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !929, file: !930, line: 26, baseType: !607, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !929, file: !930, line: 27, baseType: !551, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !929, file: !930, line: 28, baseType: !551, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !929, file: !930, line: 41, baseType: !551, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !929, file: !930, line: 42, baseType: !879, size: 32, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !929, file: !930, line: 43, baseType: !879, size: 32, offset: 352)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !929, file: !930, line: 44, baseType: !514, size: 32, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !929, file: !930, line: 45, baseType: !532, size: 32, offset: 416)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !929, file: !930, line: 46, baseType: !439, size: 64, offset: 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !929, file: !930, line: 47, baseType: !915, size: 128, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !929, file: !930, line: 48, baseType: !915, size: 128, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !929, file: !930, line: 49, baseType: !915, size: 128, offset: 768)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !929, file: !930, line: 50, baseType: !915, size: 128, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !929, file: !930, line: 51, baseType: !551, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !929, file: !930, line: 52, baseType: !551, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !929, file: !930, line: 53, baseType: !608, size: 32, offset: 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !929, file: !930, line: 54, baseType: !608, size: 32, offset: 1184)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !929, file: !930, line: 55, baseType: !551, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !821, file: !35, line: 1990, baseType: !954, size: 64, offset: 960)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!957, !764, !653, !140}
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 66, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !142, line: 73, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !142, line: 15, baseType: !147)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !821, file: !35, line: 1991, baseType: !961, size: 64, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!85, !804, !964, !551, !551}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !821, file: !35, line: 1993, baseType: !967, size: 64, offset: 1088)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!85, !804, !85}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !821, file: !35, line: 1994, baseType: !971, size: 64, offset: 1152)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!85, !804, !764, !403, !7, !808}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !821, file: !35, line: 1997, baseType: !975, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!85, !844, !804, !403, !808}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !821, file: !35, line: 1999, baseType: !979, size: 64, offset: 1280)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!815, !844, !764, !85}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !821, file: !35, line: 2001, baseType: !983, size: 64, offset: 1344)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!85, !844, !764, !815, !85}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !821, file: !35, line: 2003, baseType: !987, size: 64, offset: 1408)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!85, !844, !764, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !821, file: !35, line: 2005, baseType: !993, size: 64, offset: 1472)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!85, !764, !990}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !821, file: !35, line: 2006, baseType: !997, size: 64, offset: 1536)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!1000, !804}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !1002)
!1002 = !{!1003, !1010}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1001, file: !35, line: 3193, baseType: !1004, size: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1005, line: 296, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1004, file: !1005, line: 297, baseType: !426, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1004, file: !1005, line: 299, baseType: !133, size: 32, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1004, file: !1005, line: 300, baseType: !137, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1001, file: !35, line: 3194, baseType: !608, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !805, file: !35, line: 655, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !2199, !2331, !2371, !2454, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2471, !2475, !2476, !2479, !2482, !2485, !2488, !2489, !2490, !2531, !3726, !3727, !3728, !3729, !3730, !3731, !3734, !3736, !3743, !3744, !3745, !3746, !3805, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1013, file: !35, line: 1191, baseType: !394, size: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1013, file: !35, line: 1192, baseType: !879, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1013, file: !35, line: 1193, baseType: !236, size: 8, offset: 160)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1013, file: !35, line: 1194, baseType: !136, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1013, file: !35, line: 1195, baseType: !439, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1013, file: !35, line: 1196, baseType: !1021, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1033, !1037, !1041, !1045, !2187, !2188, !2189, !2191, !2192, !2193, !2195, !2196, !2197, !2198}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1022, file: !35, line: 2367, baseType: !188, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1022, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1022, file: !35, line: 2376, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!85, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1032, line: 32, flags: DIFlagFwdDecl)
!1032 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1022, file: !35, line: 2377, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1036)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1022, file: !35, line: 2378, baseType: !1038, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!764, !1021, !85, !188, !137}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1022, file: !35, line: 2380, baseType: !1042, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1012}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1022, file: !35, line: 2381, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1055, !1847, !1873, !1874, !1875, !1876, !1880, !1883, !1884, !1885, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1952, !1956, !1974, !1992, !1993, !1994, !1995, !2004, !2027, !2028, !2031, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2045, !2046, !2146, !2154, !2155, !2156, !2158, !2162, !2163, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2180, !2181, !2182, !2186}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1047, file: !15, line: 403, baseType: !14, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1047, file: !15, line: 406, baseType: !394, size: 128, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !15, line: 409, baseType: !1052, size: 448, offset: 192)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 448, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 56)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1047, file: !15, line: 417, baseType: !1056, size: 768, offset: 640)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1057)
!1057 = !{!1058, !1830, !1831, !1832, !1835}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1056, file: !15, line: 46, baseType: !1059, size: 512)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1060, line: 64, size: 512, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1061 = !{!1062, !1063, !1064, !1066, !1110, !1710, !1820, !1825, !1826, !1827, !1828, !1829}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !1060, line: 65, baseType: !188, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1059, file: !1060, line: 66, baseType: !394, size: 128, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1059, file: !1060, line: 67, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1059, file: !1060, line: 68, baseType: !1067, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1060, line: 168, size: 768, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1068, file: !1060, line: 169, baseType: !394, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1068, file: !1060, line: 170, baseType: !426, size: 32, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1068, file: !1060, line: 171, baseType: !1059, size: 512, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1068, file: !1060, line: 172, baseType: !1074, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1060, line: 133, size: 192, elements: !1077)
!1077 = !{!1078, !1085, !1090}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1076, file: !1060, line: 134, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!85, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1076, file: !1060, line: 135, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!188, !1083}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1076, file: !1060, line: 136, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!85, !1083, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1060, line: 125, size: 20736, elements: !1097)
!1097 = !{!1098, !1100, !1104, !1105, !1109}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1096, file: !1060, line: 126, baseType: !1099, size: 192)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 192, elements: !465)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1096, file: !1060, line: 127, baseType: !1101, size: 4096, offset: 192)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 4096, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1096, file: !1060, line: 128, baseType: !85, size: 32, offset: 4288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1096, file: !1060, line: 129, baseType: !1106, size: 16384, offset: 4320)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 16384, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 2048)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1096, file: !1060, line: 130, baseType: !85, size: 32, offset: 20704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1059, file: !1060, line: 69, baseType: !1111, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1060, line: 116, size: 384, elements: !1114)
!1114 = !{!1115, !1119, !1138, !1672, !1700, !1704}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1113, file: !1060, line: 117, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1065}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1113, file: !1060, line: 118, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1123, line: 254, size: 128, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1124 = !{!1125, !1134}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1122, file: !1123, line: 255, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!957, !1065, !1129, !653}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1123, line: 30, size: 128, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1130, file: !1123, line: 31, baseType: !188, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1130, file: !1123, line: 32, baseType: !808, size: 16, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1122, file: !1123, line: 256, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!957, !1065, !1129, !188, !140}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1113, file: !1060, line: 119, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1123, line: 84, size: 320, elements: !1143)
!1143 = !{!1144, !1145, !1149, !1668, !1670}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1142, file: !1123, line: 85, baseType: !188, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1142, file: !1123, line: 86, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!808, !1065, !1129, !85}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1142, file: !1123, line: 88, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!808, !1065, !1153, !85}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1123, line: 175, size: 512, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1436, !1440, !1441}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1154, file: !1123, line: 176, baseType: !1130, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1154, file: !1123, line: 177, baseType: !140, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1154, file: !1123, line: 178, baseType: !137, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1154, file: !1123, line: 179, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1179, !1180, !1181, !1428, !1429, !1430, !1433, !1434, !1435}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1164, file: !35, line: 473, baseType: !804, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1164, file: !35, line: 474, baseType: !1004, size: 128, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1164, file: !35, line: 475, baseType: !583, size: 320, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1164, file: !35, line: 476, baseType: !133, size: 32, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1164, file: !35, line: 477, baseType: !373, size: 32, offset: 544)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1164, file: !35, line: 482, baseType: !1172, size: 128, offset: 576)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !576, line: 26, size: 128, elements: !1173)
!1173 = !{!1174, !1178}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1172, file: !576, line: 27, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !576, line: 12, size: 64, elements: !1176)
!1176 = !{!1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1175, file: !576, line: 13, baseType: !580, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1172, file: !576, line: 28, baseType: !580, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1164, file: !35, line: 483, baseType: !136, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1164, file: !35, line: 484, baseType: !136, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1164, file: !35, line: 485, baseType: !1182, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1185)
!1185 = !{!1186, !1253, !1323, !1327, !1331, !1337, !1343, !1347, !1352, !1356, !1360, !1364, !1392, !1396, !1400, !1404, !1409, !1413, !1420, !1424}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1184, file: !35, line: 405, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!85, !1190, !1251}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1192, line: 74, size: 512, align: 128, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1193 = !{!1194, !1195, !1245, !1250}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 75, baseType: !136, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1192, line: 83, baseType: !1196, size: 320, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1192, line: 83, size: 320, elements: !1197)
!1197 = !{!1198, !1219, !1233, !1237, !1244}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1192, line: 84, baseType: !1199, size: 320)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1192, line: 84, size: 320, elements: !1200)
!1200 = !{!1201, !1212, !1213, !1218}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1192, line: 90, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1192, line: 90, size: 128, elements: !1203)
!1203 = !{!1204, !1205, !1210, !1211}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1202, file: !1192, line: 91, baseType: !394, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1192, line: 94, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1192, line: 94, size: 128, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1206, file: !1192, line: 96, baseType: !137, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1206, file: !1192, line: 98, baseType: !7, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1202, file: !1192, line: 102, baseType: !394, size: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1202, file: !1192, line: 103, baseType: !394, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1199, file: !1192, line: 106, baseType: !1163, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1192, line: 107, baseType: !1214, size: 64, offset: 192)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1192, line: 107, size: 64, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1214, file: !1192, line: 108, baseType: !136, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1214, file: !1192, line: 109, baseType: !136, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1199, file: !1192, line: 117, baseType: !136, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1192, line: 119, baseType: !1220, size: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1192, line: 119, size: 320, elements: !1221)
!1221 = !{!1222, !1223, !1226, !1227, !1228}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1220, file: !1192, line: 124, baseType: !136, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1220, file: !1192, line: 125, baseType: !1224, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1192, line: 125, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1220, file: !1192, line: 126, baseType: !136, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1220, file: !1192, line: 127, baseType: !136, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !1192, line: 128, baseType: !1229, size: 64, offset: 256)
!1229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !1192, line: 128, size: 64, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1229, file: !1192, line: 133, baseType: !136, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1229, file: !1192, line: 138, baseType: !350, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1192, line: 141, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1192, line: 141, size: 64, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1234, file: !1192, line: 142, baseType: !136, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1192, line: 144, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1192, line: 144, size: 128, elements: !1239)
!1239 = !{!1240, !1243}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1238, file: !1192, line: 146, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1192, line: 146, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1238, file: !1192, line: 147, baseType: !137, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1196, file: !1192, line: 161, baseType: !416, size: 128, align: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1192, line: 164, baseType: !1246, size: 32, offset: 384)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1192, line: 164, size: 32, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1246, file: !1192, line: 169, baseType: !373, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1246, file: !1192, line: 177, baseType: !7, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1191, file: !1192, line: 181, baseType: !373, size: 32, offset: 416)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1184, file: !35, line: 406, baseType: !1254, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!85, !403, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1192, line: 293, size: 1536, elements: !1259)
!1259 = !{!1260, !1290, !1304}
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1192, line: 295, baseType: !1261, size: 512)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1192, line: 295, size: 512, elements: !1262)
!1262 = !{!1263, !1289}
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !1192, line: 296, baseType: !1264, size: 448)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1261, file: !1192, line: 296, size: 448, elements: !1265)
!1265 = !{!1266, !1267, !1276, !1277, !1278, !1287, !1288}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !1192, line: 298, baseType: !136, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1192, line: 299, baseType: !1268, size: 128, offset: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !1192, line: 299, size: 128, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1268, file: !1192, line: 300, baseType: !394, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1192, line: 302, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !1192, line: 302, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1272, file: !1192, line: 303, baseType: !137, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1272, file: !1192, line: 305, baseType: !7, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1264, file: !1192, line: 310, baseType: !1163, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1264, file: !1192, line: 311, baseType: !136, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1192, line: 312, baseType: !1279, size: 64, offset: 320)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !1192, line: 312, size: 64, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1279, file: !1192, line: 313, baseType: !137, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1279, file: !1192, line: 314, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1192, line: 257, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1192, line: 255, size: 64, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1284, file: !1192, line: 256, baseType: !136, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1264, file: !1192, line: 316, baseType: !373, size: 32, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1264, file: !1192, line: 317, baseType: !373, size: 32, offset: 416)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1261, file: !1192, line: 323, baseType: !1191, size: 512, align: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1192, line: 325, baseType: !1291, size: 512, offset: 512)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1192, line: 325, size: 512, elements: !1292)
!1292 = !{!1293, !1303}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !1192, line: 326, baseType: !1294, size: 320)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !1192, line: 326, size: 320, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1294, file: !1192, line: 327, baseType: !136, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1294, file: !1192, line: 328, baseType: !136, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1294, file: !1192, line: 329, baseType: !136, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1294, file: !1192, line: 331, baseType: !373, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1294, file: !1192, line: 332, baseType: !373, size: 32, offset: 224)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1294, file: !1192, line: 333, baseType: !373, size: 32, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1294, file: !1192, line: 335, baseType: !7, size: 32, offset: 288)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1291, file: !1192, line: 339, baseType: !1191, size: 512, align: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1192, line: 341, baseType: !1305, size: 512, offset: 1024)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1192, line: 341, size: 512, elements: !1306)
!1306 = !{!1307, !1316, !1322}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1192, line: 342, baseType: !1308, size: 384)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !1192, line: 342, size: 384, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1308, file: !1192, line: 343, baseType: !136, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1308, file: !1192, line: 344, baseType: !136, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1308, file: !1192, line: 346, baseType: !137, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1308, file: !1192, line: 347, baseType: !137, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1308, file: !1192, line: 348, baseType: !137, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1308, file: !1192, line: 349, baseType: !137, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1192, line: 352, baseType: !1317, size: 256)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !1192, line: 352, size: 256, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1317, file: !1192, line: 353, baseType: !136, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1317, file: !1192, line: 354, baseType: !136, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1317, file: !1192, line: 356, baseType: !394, size: 128, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1305, file: !1192, line: 359, baseType: !1191, size: 512, align: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1184, file: !35, line: 409, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!85, !1163, !1251}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1184, file: !35, line: 412, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!642, !1163, !1257}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1184, file: !35, line: 414, baseType: !1332, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1184, file: !35, line: 416, baseType: !1338, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!85, !403, !1163, !439, !7, !1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1184, file: !35, line: 419, baseType: !1344, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!85, !403, !1163, !439, !7, !7, !1190, !137}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1184, file: !35, line: 424, baseType: !1348, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !1163, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !134, line: 131, baseType: !551)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1184, file: !35, line: 425, baseType: !1353, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !1257, !140, !140}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1184, file: !35, line: 426, baseType: !1357, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!642, !1257, !133}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1184, file: !35, line: 427, baseType: !1361, size: 64, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !1257}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1184, file: !35, line: 428, baseType: !1365, size: 64, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!957, !1368, !1390}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1377, !1378, !1379, !1380}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1369, file: !35, line: 374, baseType: !403, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1369, file: !35, line: 375, baseType: !439, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1369, file: !35, line: 376, baseType: !1374, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1368, !147}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1369, file: !35, line: 377, baseType: !137, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1369, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1369, file: !35, line: 379, baseType: !336, size: 16, offset: 288)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !35, line: 380, baseType: !1381, size: 64, offset: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1369, file: !35, line: 380, size: 64, elements: !1382)
!1382 = !{!1383, !1386}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1381, file: !35, line: 386, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1381, file: !35, line: 395, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!957, !137}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1184, file: !35, line: 433, baseType: !1393, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!85, !1163, !1257, !1257, !21}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1184, file: !35, line: 435, baseType: !1397, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!85, !1257}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1184, file: !35, line: 436, baseType: !1401, size: 64, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!642, !1257, !140, !140}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1184, file: !35, line: 438, baseType: !1405, size: 64, offset: 960)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1257, !1408, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1184, file: !35, line: 439, baseType: !1410, size: 64, offset: 1024)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!85, !1163, !1190}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1184, file: !35, line: 442, baseType: !1414, size: 64, offset: 1088)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!85, !1417, !403, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1184, file: !35, line: 444, baseType: !1421, size: 64, offset: 1152)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !403}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1184, file: !35, line: 445, baseType: !1425, size: 64, offset: 1216)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!85, !1368, !1390}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !35, line: 486, baseType: !136, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1164, file: !35, line: 487, baseType: !583, size: 320, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1164, file: !35, line: 488, baseType: !1431, size: 32, offset: 1280)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1432, line: 8, baseType: !608)
!1432 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1164, file: !35, line: 489, baseType: !426, size: 32, offset: 1312)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1164, file: !35, line: 490, baseType: !394, size: 128, offset: 1344)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1164, file: !35, line: 491, baseType: !137, size: 64, offset: 1472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1154, file: !1123, line: 180, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!957, !403, !1065, !1153, !653, !439, !140}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1154, file: !1123, line: 182, baseType: !1437, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1154, file: !1123, line: 184, baseType: !1442, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!85, !403, !1065, !1153, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1192, line: 625, size: 1344, elements: !1447)
!1447 = !{!1448, !1457, !1625, !1631, !1638, !1639, !1644, !1645, !1650, !1651, !1654, !1658, !1659, !1660, !1661, !1662, !1666}
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1192, line: 628, baseType: !1449, size: 128)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1192, line: 628, size: 128, elements: !1450)
!1450 = !{!1451, !1456}
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1192, line: 629, baseType: !1452, size: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1449, file: !1192, line: 629, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1452, file: !1192, line: 631, baseType: !136, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1452, file: !1192, line: 632, baseType: !136, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1449, file: !1192, line: 635, baseType: !416, size: 128, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1446, file: !1192, line: 639, baseType: !1458, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1192, line: 733, size: 10240, elements: !1460)
!1460 = !{!1461, !1623}
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1192, line: 734, baseType: !1462, size: 10240)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !1192, line: 734, size: 10240, elements: !1463)
!1463 = !{!1464, !1468, !1482, !1486, !1487, !1488, !1489, !1490, !1491, !1500, !1501, !1502, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1541, !1543, !1546, !1592, !1593, !1594, !1597, !1598, !1599, !1602, !1603, !1604, !1610, !1611}
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1192, line: 739, baseType: !1465, size: 512, align: 512)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1462, file: !1192, line: 739, size: 512, align: 512, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1465, file: !1192, line: 747, baseType: !373, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1462, file: !1192, line: 750, baseType: !1469, size: 128, offset: 512)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1470, line: 218, size: 128, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1471 = !{!1472, !1480, !1481}
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 219, baseType: !1473, size: 32)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 219, size: 32, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1473, file: !1470, line: 220, baseType: !426, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1473, file: !1470, line: 221, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1470, line: 197, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 197, elements: !1479)
!1479 = !{}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1469, file: !1470, line: 223, baseType: !7, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1469, file: !1470, line: 224, baseType: !137, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1462, file: !1192, line: 752, baseType: !1483, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!136, !403, !136, !136, !136, !136}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1462, file: !1192, line: 756, baseType: !136, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1462, file: !1192, line: 757, baseType: !136, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1462, file: !1192, line: 760, baseType: !136, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1462, file: !1192, line: 761, baseType: !136, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1462, file: !1192, line: 763, baseType: !136, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1462, file: !1192, line: 764, baseType: !1492, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1494, line: 299, baseType: !1495)
!1494 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1494, line: 299, size: 64, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1495, file: !1494, line: 299, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1499, line: 18, baseType: !136)
!1499 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1462, file: !1192, line: 773, baseType: !373, size: 32, offset: 1088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1462, file: !1192, line: 785, baseType: !373, size: 32, offset: 1120)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1462, file: !1192, line: 795, baseType: !1503, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1192, line: 726, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1504, file: !1192, line: 727, baseType: !551, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1504, file: !1192, line: 728, baseType: !85, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1462, file: !1192, line: 801, baseType: !136, size: 64, offset: 1216)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1462, file: !1192, line: 804, baseType: !350, size: 64, offset: 1280)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1462, file: !1192, line: 806, baseType: !85, size: 32, offset: 1344)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1462, file: !1192, line: 808, baseType: !426, size: 32, offset: 1376)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1462, file: !1192, line: 823, baseType: !583, size: 320, offset: 1408)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1462, file: !1192, line: 825, baseType: !394, size: 128, offset: 1728)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1462, file: !1192, line: 845, baseType: !85, size: 32, offset: 1856)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1462, file: !1192, line: 849, baseType: !136, size: 64, offset: 1920)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1462, file: !1192, line: 850, baseType: !136, size: 64, offset: 1984)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1462, file: !1192, line: 852, baseType: !136, size: 64, offset: 2048)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1462, file: !1192, line: 853, baseType: !136, size: 64, offset: 2112)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1462, file: !1192, line: 854, baseType: !352, size: 64, offset: 2176)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1462, file: !1192, line: 855, baseType: !136, size: 64, offset: 2240)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1462, file: !1192, line: 856, baseType: !136, size: 64, offset: 2304)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1462, file: !1192, line: 857, baseType: !136, size: 64, offset: 2368)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1462, file: !1192, line: 858, baseType: !136, size: 64, offset: 2432)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1462, file: !1192, line: 865, baseType: !775, size: 32, offset: 2496)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1462, file: !1192, line: 867, baseType: !426, size: 32, offset: 2528)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1462, file: !1192, line: 869, baseType: !136, size: 64, offset: 2560)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1462, file: !1192, line: 869, baseType: !136, size: 64, offset: 2624)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1462, file: !1192, line: 869, baseType: !136, size: 64, offset: 2688)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1462, file: !1192, line: 869, baseType: !136, size: 64, offset: 2752)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1462, file: !1192, line: 870, baseType: !136, size: 64, offset: 2816)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1462, file: !1192, line: 870, baseType: !136, size: 64, offset: 2880)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1462, file: !1192, line: 870, baseType: !136, size: 64, offset: 2944)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1462, file: !1192, line: 871, baseType: !136, size: 64, offset: 3008)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1462, file: !1192, line: 871, baseType: !136, size: 64, offset: 3072)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1462, file: !1192, line: 871, baseType: !136, size: 64, offset: 3136)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1462, file: !1192, line: 871, baseType: !136, size: 64, offset: 3200)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1462, file: !1192, line: 873, baseType: !1538, size: 3328, offset: 3264)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 3328, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 52)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1462, file: !1192, line: 875, baseType: !1542, size: 1280, offset: 6592)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 1280, elements: !491)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1462, file: !1192, line: 877, baseType: !1544, size: 64, offset: 7872)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1192, line: 877, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1462, file: !1192, line: 880, baseType: !1547, size: 1088, offset: 7936)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1548, line: 72, baseType: !1549)
!1548 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1548, line: 23, size: 1088, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1558, !1559, !1560, !1561, !1588, !1589, !1590}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1549, file: !1548, line: 28, baseType: !551, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1549, file: !1548, line: 38, baseType: !352, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1549, file: !1548, line: 40, baseType: !136, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1549, file: !1548, line: 43, baseType: !583, size: 320, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1549, file: !1548, line: 44, baseType: !1556, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1548, line: 44, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1548, line: 48, baseType: !136, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !1548, line: 59, baseType: !346, size: 256, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1549, file: !1548, line: 60, baseType: !137, size: 64, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1549, file: !1548, line: 61, baseType: !1562, size: 64, offset: 960)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1565, line: 13, size: 1216, elements: !1566)
!1565 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1564, file: !1565, line: 14, baseType: !137, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1564, file: !1565, line: 15, baseType: !136, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1564, file: !1565, line: 17, baseType: !136, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1564, file: !1565, line: 17, baseType: !136, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1564, file: !1565, line: 18, baseType: !136, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1564, file: !1565, line: 18, baseType: !136, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1564, file: !1565, line: 19, baseType: !1574, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1564, file: !1565, line: 21, baseType: !147, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1564, file: !1565, line: 23, baseType: !147, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1564, file: !1565, line: 24, baseType: !147, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1564, file: !1565, line: 25, baseType: !147, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1564, file: !1565, line: 26, baseType: !147, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1564, file: !1565, line: 27, baseType: !147, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1564, file: !1565, line: 28, baseType: !147, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1564, file: !1565, line: 29, baseType: !147, size: 64, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1564, file: !1565, line: 30, baseType: !147, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1564, file: !1565, line: 31, baseType: !147, size: 64, offset: 1024)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1564, file: !1565, line: 32, baseType: !147, size: 64, offset: 1088)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1564, file: !1565, line: 33, baseType: !147, size: 64, offset: 1152)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1549, file: !1548, line: 63, baseType: !373, size: 32, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1549, file: !1548, line: 69, baseType: !336, size: 16, offset: 1056)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1549, file: !1548, line: 70, baseType: !1591, size: 16, offset: 1072)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !337, line: 18, baseType: !264)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1192, line: 882, baseType: !136, size: 64, offset: 9024)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1462, file: !1192, line: 885, baseType: !426, size: 32, offset: 9088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1462, file: !1192, line: 886, baseType: !1595, size: 64, offset: 9152)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1192, line: 732, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1462, file: !1192, line: 901, baseType: !726, size: 64, offset: 9216)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1462, file: !1192, line: 904, baseType: !403, size: 64, offset: 9280)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1462, file: !1192, line: 906, baseType: !1600, size: 64, offset: 9344)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1192, line: 906, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1462, file: !1192, line: 930, baseType: !373, size: 32, offset: 9408)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1462, file: !1192, line: 933, baseType: !373, size: 32, offset: 9440)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1462, file: !1192, line: 935, baseType: !1605, size: 64, offset: 9472)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1605, file: !57, line: 104, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1462, file: !1192, line: 940, baseType: !350, size: 64, offset: 9536)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1462, file: !1192, line: 942, baseType: !1612, size: 256, offset: 9600)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1613, line: 98, size: 256, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1614 = !{!1615, !1616, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1612, file: !1613, line: 99, baseType: !350, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1612, file: !1613, line: 100, baseType: !394, size: 128, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1612, file: !1613, line: 101, baseType: !1618, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1613, line: 21, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1459, file: !1192, line: 986, baseType: !1624, offset: 10240)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !510)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1446, file: !1192, line: 640, baseType: !1626, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1494, line: 297, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1494, line: 297, size: 64, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1627, file: !1494, line: 297, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1499, line: 19, baseType: !136)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1192, line: 646, baseType: !1632, size: 64, offset: 256)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1192, line: 646, size: 64, elements: !1633)
!1633 = !{!1634, !1637}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1632, file: !1192, line: 647, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1192, line: 542, baseType: !136)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1632, file: !1192, line: 648, baseType: !1636, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1446, file: !1192, line: 666, baseType: !85, size: 32, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1446, file: !1192, line: 667, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1192, line: 579, size: 320, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1641, file: !1192, line: 580, baseType: !583, size: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1446, file: !1192, line: 670, baseType: !642, size: 8, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1446, file: !1192, line: 681, baseType: !1646, size: 256, offset: 512)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1446, file: !1192, line: 678, size: 256, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1646, file: !1192, line: 679, baseType: !575, size: 192, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1646, file: !1192, line: 680, baseType: !136, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1446, file: !1192, line: 689, baseType: !394, size: 128, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1446, file: !1192, line: 691, baseType: !1652, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1192, line: 691, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1446, file: !1192, line: 694, baseType: !1655, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1192, line: 694, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1446, file: !1192, line: 697, baseType: !136, size: 64, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1446, file: !1192, line: 699, baseType: !403, size: 64, offset: 1088)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1446, file: !1192, line: 700, baseType: !137, size: 64, offset: 1152)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1446, file: !1192, line: 711, baseType: !350, size: 64, offset: 1216)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1446, file: !1192, line: 717, baseType: !1663, size: 64, offset: 1280)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1665, line: 54, flags: DIFlagFwdDecl)
!1665 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1446, file: !1192, line: 722, baseType: !1667, offset: 1344)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1192, line: 570, elements: !1479)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1142, file: !1123, line: 90, baseType: !1669, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1142, file: !1123, line: 91, baseType: !1671, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1113, file: !1060, line: 120, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1676, !1083}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1679)
!1679 = !{!1680, !1681, !1685, !1689, !1695, !1699}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1678, file: !29, line: 40, baseType: !28, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1678, file: !29, line: 41, baseType: !1682, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!642}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1678, file: !29, line: 42, baseType: !1686, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!137}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1678, file: !29, line: 43, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1574, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1678, file: !29, line: 44, baseType: !1696, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1574}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1678, file: !29, line: 45, baseType: !836, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1113, file: !1060, line: 121, baseType: !1701, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1574, !1083}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1113, file: !1060, line: 122, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1083, !1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1059, file: !1060, line: 70, baseType: !1711, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1032, line: 190, size: 1152, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1812, !1813, !1814, !1815, !1816, !1819}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1712, file: !1032, line: 191, baseType: !373, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1712, file: !1032, line: 192, baseType: !373, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1712, file: !1032, line: 202, baseType: !1711, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1712, file: !1032, line: 203, baseType: !188, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1712, file: !1032, line: 205, baseType: !575, size: 192, align: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1712, file: !1032, line: 207, baseType: !1574, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1712, file: !1032, line: 208, baseType: !7, size: 32, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !1032, line: 209, baseType: !1722, size: 256, offset: 512)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !1032, line: 209, size: 256, elements: !1723)
!1723 = !{!1724, !1733, !1737}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1722, file: !1032, line: 210, baseType: !1725, size: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1032, line: 153, size: 256, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1732}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1725, file: !1032, line: 154, baseType: !136, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1725, file: !1032, line: 156, baseType: !1175, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1725, file: !1032, line: 162, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1032, line: 162, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1725, file: !1032, line: 167, baseType: !136, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1722, file: !1032, line: 211, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1032, line: 170, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1734, file: !1032, line: 171, baseType: !1711, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1722, file: !1032, line: 212, baseType: !1738, size: 256)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1032, line: 174, size: 256, elements: !1739)
!1739 = !{!1740, !1807, !1810, !1811}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1738, file: !1032, line: 175, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1032, line: 271, size: 768, elements: !1744)
!1744 = !{!1745, !1767, !1771, !1775, !1780, !1784, !1788, !1792, !1793, !1794, !1795, !1803}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1743, file: !1032, line: 276, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!85, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1032, line: 251, size: 1216, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1750, file: !1032, line: 253, baseType: !1711, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1750, file: !1032, line: 254, baseType: !403, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1750, file: !1032, line: 255, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1665, line: 66, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1750, file: !1032, line: 256, baseType: !137, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1750, file: !1032, line: 259, baseType: !346, size: 256, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1750, file: !1032, line: 260, baseType: !346, size: 256, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1750, file: !1032, line: 261, baseType: !85, size: 32, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1750, file: !1032, line: 262, baseType: !394, size: 128, offset: 832)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1750, file: !1032, line: 263, baseType: !653, size: 64, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1750, file: !1032, line: 265, baseType: !140, size: 64, offset: 1024)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1750, file: !1032, line: 266, baseType: !642, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1750, file: !1032, line: 267, baseType: !642, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1750, file: !1032, line: 268, baseType: !1655, size: 64, offset: 1152)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1743, file: !1032, line: 277, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1749}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1743, file: !1032, line: 290, baseType: !1772, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!85, !1755, !137}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1743, file: !1032, line: 292, baseType: !1776, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!137, !1755, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1743, file: !1032, line: 293, baseType: !1781, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!137, !1755, !137, !1779}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1743, file: !1032, line: 294, baseType: !1785, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1755, !137}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1743, file: !1032, line: 296, baseType: !1789, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!957, !1749, !653, !140, !439}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1743, file: !1032, line: 306, baseType: !140, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1743, file: !1032, line: 313, baseType: !642, size: 8, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1743, file: !1032, line: 314, baseType: !1789, size: 64, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1743, file: !1032, line: 317, baseType: !1796, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1799, !1749, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1800, line: 59, baseType: !7)
!1800 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1032, line: 31, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1743, file: !1032, line: 320, baseType: !1804, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!85, !1749, !1445}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1738, file: !1032, line: 176, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1032, line: 35, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1738, file: !1032, line: 177, baseType: !439, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1738, file: !1032, line: 178, baseType: !1711, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1712, file: !1032, line: 215, baseType: !137, size: 64, offset: 768)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1712, file: !1032, line: 221, baseType: !551, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !1032, line: 223, baseType: !199, size: 16, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1712, file: !1032, line: 224, baseType: !808, size: 16, offset: 912)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1712, file: !1032, line: 225, baseType: !1817, size: 64, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1032, line: 36, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1712, file: !1032, line: 227, baseType: !416, size: 128, align: 64, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1059, file: !1060, line: 71, baseType: !1821, size: 32, offset: 448)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1822, line: 19, size: 32, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1821, file: !1822, line: 20, baseType: !473, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1059, file: !1060, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1059, file: !1060, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1059, file: !1060, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1059, file: !1060, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1059, file: !1060, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1056, file: !15, line: 47, baseType: !1046, size: 64, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1056, file: !15, line: 48, baseType: !1065, size: 64, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1056, file: !15, line: 49, baseType: !1833, size: 64, offset: 640)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1056, file: !15, line: 50, baseType: !1836, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1838, line: 26, size: 256, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1837, file: !1838, line: 27, baseType: !7, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1837, file: !1838, line: 28, baseType: !1842, size: 192, offset: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1843, line: 43, size: 192, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1842, file: !1843, line: 44, baseType: !360, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1842, file: !1843, line: 45, baseType: !394, size: 128, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1047, file: !15, line: 418, baseType: !1848, size: 64, offset: 1408)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1850)
!1850 = !{!1851, !1852, !1857, !1861, !1865, !1869}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1849, file: !15, line: 54, baseType: !1130, size: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1849, file: !15, line: 55, baseType: !1853, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!957, !1848, !1856, !653}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1849, file: !15, line: 57, baseType: !1858, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!957, !1848, !1856, !188, !140}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1849, file: !15, line: 59, baseType: !1862, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1046, !188}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1849, file: !15, line: 60, baseType: !1866, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!85, !1046}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1849, file: !15, line: 61, baseType: !1870, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1046}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1047, file: !15, line: 419, baseType: !188, size: 64, offset: 1472)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1047, file: !15, line: 420, baseType: !188, size: 64, offset: 1536)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1047, file: !15, line: 421, baseType: !1065, size: 64, offset: 1600)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1047, file: !15, line: 424, baseType: !1877, size: 64, offset: 1664)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1047, file: !15, line: 425, baseType: !1881, size: 64, offset: 1728)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1047, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1047, file: !15, line: 435, baseType: !346, size: 256, offset: 1856)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1047, file: !15, line: 437, baseType: !1886, size: 64, offset: 2112)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1888, line: 69, size: 320, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1889 = !{!1890, !1891, !1892, !1909, !1911, !1915, !1916}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1887, file: !1888, line: 70, baseType: !188, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1887, file: !1888, line: 71, baseType: !1046, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1887, file: !1888, line: 72, baseType: !1893, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1888, line: 47, size: 256, elements: !1896)
!1896 = !{!1897, !1898, !1904, !1908}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1888, line: 49, baseType: !7, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1895, file: !1888, line: 51, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!85, !188, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1895, file: !1888, line: 53, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!85, !653, !1902}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1895, file: !1888, line: 55, baseType: !836, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1887, file: !1888, line: 73, baseType: !1910, size: 16, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1887, file: !1888, line: 74, baseType: !1912, size: 8, offset: 208)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !337, line: 16, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !198, line: 20, baseType: !1914)
!1914 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1887, file: !1888, line: 75, baseType: !381, size: 8, offset: 216)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1888, line: 76, baseType: !1917, size: 64, offset: 256)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1888, line: 76, size: 64, elements: !1918)
!1918 = !{!1919, !1920, !1927}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1917, file: !1888, line: 77, baseType: !137, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1917, file: !1888, line: 78, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1888, line: 86, size: 128, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1923, file: !1888, line: 87, baseType: !7, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1923, file: !1888, line: 88, baseType: !653, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1917, file: !1888, line: 79, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1888, line: 92, size: 256, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1930, file: !1888, line: 94, baseType: !7, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1930, file: !1888, line: 95, baseType: !7, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1930, file: !1888, line: 96, baseType: !245, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1930, file: !1888, line: 97, baseType: !1893, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1930, file: !1888, line: 98, baseType: !137, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1047, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1047, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1047, file: !15, line: 442, baseType: !1877, size: 64, offset: 2240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1047, file: !15, line: 443, baseType: !1881, size: 64, offset: 2304)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1047, file: !15, line: 444, baseType: !642, size: 8, offset: 2368)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1047, file: !15, line: 451, baseType: !642, size: 8, offset: 2376)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1047, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1047, file: !15, line: 455, baseType: !1945, size: 64, offset: 2432)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1947, line: 23, size: 96, elements: !1948)
!1947 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1948 = !{!1949, !1950, !1951}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1946, file: !1947, line: 24, baseType: !85, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1946, file: !1947, line: 24, baseType: !85, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1946, file: !1947, line: 24, baseType: !85, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1047, file: !15, line: 458, baseType: !1953, size: 64, offset: 2496)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!85}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1047, file: !15, line: 460, baseType: !1957, size: 4032, align: 512, offset: 2560)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1958, size: 4032, elements: !1972)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1958, file: !15, line: 363, baseType: !137, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1958, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1958, file: !15, line: 367, baseType: !1963, size: 448, offset: 128)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1963, file: !15, line: 320, baseType: !1046, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1963, file: !15, line: 321, baseType: !1967, size: 384, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1968, line: 40, size: 384, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1967, file: !1968, line: 41, baseType: !1971, size: 384, align: 64)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 384, align: 64, elements: !219)
!1972 = !{!1973}
!1973 = !DISubrange(count: 7)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1047, file: !15, line: 463, baseType: !1975, size: 192, offset: 6592)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1976, line: 8, size: 192, elements: !1977)
!1976 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1977 = !{!1978, !1979, !1981}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1975, file: !1976, line: 10, baseType: !7, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1975, file: !1976, line: 11, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1975, file: !1976, line: 12, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1984, line: 59, size: 48, elements: !1985)
!1984 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1991}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1983, file: !1984, line: 60, baseType: !1591, size: 16)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1983, file: !1984, line: 61, baseType: !1591, size: 16, offset: 16)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1983, file: !1984, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1983, file: !1984, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1983, file: !1984, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1983, file: !1984, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1047, file: !15, line: 465, baseType: !136, size: 64, offset: 6784)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1047, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1047, file: !15, line: 470, baseType: !394, size: 128, offset: 6912)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1047, file: !15, line: 471, baseType: !1996, size: 64, offset: 7040)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1998, line: 33, size: 96, elements: !1999)
!1998 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1997, file: !1998, line: 37, baseType: !85, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1997, file: !1998, line: 43, baseType: !85, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1997, file: !1998, line: 45, baseType: !199, size: 16, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1997, file: !1998, line: 47, baseType: !199, size: 16, offset: 80)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1047, file: !15, line: 476, baseType: !2005, size: 64, offset: 7104)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2007)
!2007 = !{!2008, !2024, !2025, !2026}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2006, file: !15, line: 379, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2011, line: 204, baseType: !2012)
!2011 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2011, line: 197, size: 192, elements: !2013)
!2013 = !{!2014, !2016, !2017, !2018, !2020, !2022}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2012, file: !2011, line: 198, baseType: !2015, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2011, line: 21, baseType: !240)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2012, file: !2011, line: 199, baseType: !236, size: 8, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2012, file: !2011, line: 200, baseType: !236, size: 8, offset: 40)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2012, file: !2011, line: 201, baseType: !2019, size: 16, offset: 48)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2011, line: 17, baseType: !197)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2012, file: !2011, line: 202, baseType: !2021, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2011, line: 16, baseType: !552)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2012, file: !2011, line: 203, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2011, line: 22, baseType: !552)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2006, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2006, file: !15, line: 381, baseType: !653, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2006, file: !15, line: 382, baseType: !653, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1047, file: !15, line: 477, baseType: !2006, size: 256, offset: 7168)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1047, file: !15, line: 480, baseType: !2029, size: 64, offset: 7424)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1047, file: !15, line: 483, baseType: !2032, size: 64, offset: 7488)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1047, file: !15, line: 488, baseType: !653, size: 64, offset: 7552)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1047, file: !15, line: 492, baseType: !137, size: 64, offset: 7616)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1047, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1047, file: !15, line: 495, baseType: !137, size: 64, offset: 7744)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1047, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1047, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1047, file: !15, line: 500, baseType: !2041, size: 64, offset: 7872)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2043, line: 45, baseType: !2044)
!2043 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1047, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1047, file: !15, line: 504, baseType: !2047, size: 64, offset: 8000)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2050, line: 96, size: 192, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2051 = !{!2052, !2053, !2107, !2110}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2049, file: !2050, line: 97, baseType: !7, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2049, file: !2050, line: 98, baseType: !2054, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2050, line: 24, size: 3072, elements: !2056)
!2056 = !{!2057, !2059, !2060, !2061, !2062, !2076, !2077, !2078, !2079, !2091, !2092, !2093, !2104, !2105, !2106}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2055, file: !2050, line: 26, baseType: !2058, size: 128)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 128, elements: !219)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2055, file: !2050, line: 27, baseType: !2058, size: 128, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2055, file: !2050, line: 28, baseType: !85, size: 32, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2055, file: !2050, line: 31, baseType: !426, size: 32, align: 512, offset: 512)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2055, file: !2050, line: 32, baseType: !2063, size: 960, offset: 576)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2064, line: 206, size: 960, elements: !2065)
!2064 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2065 = !{!2066, !2067, !2070, !2072, !2073, !2075}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2063, file: !2064, line: 207, baseType: !419, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2063, file: !2064, line: 208, baseType: !2068, size: 256, offset: 64)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2069, size: 256, elements: !491)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2063, file: !2064, line: 209, baseType: !2071, size: 256, offset: 320)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !491)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2063, file: !2064, line: 213, baseType: !147, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2063, file: !2064, line: 215, baseType: !2074, size: 256, offset: 640)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !491)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2063, file: !2064, line: 216, baseType: !381, size: 8, offset: 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2055, file: !2050, line: 33, baseType: !136, size: 64, offset: 1536)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2055, file: !2050, line: 34, baseType: !136, size: 64, offset: 1600)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2055, file: !2050, line: 35, baseType: !642, size: 8, offset: 1664)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2055, file: !2050, line: 36, baseType: !2080, size: 320, offset: 1728)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2081, line: 11, size: 320, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2082 = !{!2083, !2084, !2085, !2090}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2080, file: !2081, line: 16, baseType: !486, size: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2080, file: !2081, line: 17, baseType: !136, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2080, file: !2081, line: 18, baseType: !2086, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 19, baseType: !608, size: 32, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2055, file: !2050, line: 37, baseType: !1612, size: 256, offset: 2048)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2055, file: !2050, line: 38, baseType: !416, size: 128, align: 64, offset: 2304)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2055, file: !2050, line: 39, baseType: !2094, size: 64, offset: 2432)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2050, line: 49, size: 768, elements: !2096)
!2096 = !{!2097, !2098, !2099, !2100, !2101, !2102, !2103}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !2050, line: 50, baseType: !426, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2095, file: !2050, line: 51, baseType: !2071, size: 256, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2095, file: !2050, line: 53, baseType: !2071, size: 256, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2095, file: !2050, line: 54, baseType: !136, size: 64, offset: 576)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2095, file: !2050, line: 55, baseType: !2094, size: 64, offset: 640)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2095, file: !2050, line: 56, baseType: !85, size: 32, offset: 704)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2095, file: !2050, line: 57, baseType: !85, size: 32, offset: 736)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2055, file: !2050, line: 40, baseType: !136, size: 64, offset: 2496)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2055, file: !2050, line: 42, baseType: !85, size: 32, offset: 2560)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2055, file: !2050, line: 43, baseType: !2048, size: 64, offset: 2624)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2049, file: !2050, line: 99, baseType: !2108, offset: 128)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2109, line: 211, elements: !1479)
!2109 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2049, file: !2050, line: 100, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2050, line: 63, size: 3008, elements: !2113)
!2113 = !{!2114, !2115, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2145}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2112, file: !2050, line: 64, baseType: !2094, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2112, file: !2050, line: 65, baseType: !2116, size: 192, offset: 64)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2094, size: 192, elements: !465)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2112, file: !2050, line: 67, baseType: !85, size: 32, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2112, file: !2050, line: 68, baseType: !346, size: 256, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2112, file: !2050, line: 69, baseType: !426, size: 32, offset: 576)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2112, file: !2050, line: 70, baseType: !346, size: 256, offset: 640)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2112, file: !2050, line: 71, baseType: !136, size: 64, offset: 896)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2112, file: !2050, line: 72, baseType: !136, size: 64, offset: 960)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2112, file: !2050, line: 73, baseType: !136, size: 64, offset: 1024)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2112, file: !2050, line: 74, baseType: !136, size: 64, offset: 1088)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2112, file: !2050, line: 75, baseType: !136, size: 64, offset: 1152)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2112, file: !2050, line: 76, baseType: !136, size: 64, offset: 1216)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2112, file: !2050, line: 77, baseType: !136, size: 64, offset: 1280)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2112, file: !2050, line: 78, baseType: !136, size: 64, offset: 1344)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2112, file: !2050, line: 79, baseType: !642, size: 8, offset: 1408)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2112, file: !2050, line: 80, baseType: !136, size: 64, offset: 1472)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2112, file: !2050, line: 81, baseType: !346, size: 256, offset: 1536)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2112, file: !2050, line: 82, baseType: !1837, size: 256, offset: 1792)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2112, file: !2050, line: 84, baseType: !373, size: 32, offset: 2048)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2112, file: !2050, line: 87, baseType: !136, size: 64, offset: 2112)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2112, file: !2050, line: 88, baseType: !136, size: 64, offset: 2176)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2112, file: !2050, line: 89, baseType: !2137, size: 704, offset: 2240)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1613, line: 111, size: 704, elements: !2138)
!2138 = !{!2139, !2140, !2141, !2144}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2137, file: !1613, line: 112, baseType: !1612, size: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2137, file: !1613, line: 113, baseType: !2080, size: 320, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2137, file: !1613, line: 116, baseType: !2142, size: 64, offset: 576)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1613, line: 18, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2137, file: !1613, line: 117, baseType: !85, size: 32, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2112, file: !2050, line: 90, baseType: !2048, size: 64, offset: 2944)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1047, file: !15, line: 515, baseType: !2147, size: 64, offset: 8064)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2149, line: 117, size: 128, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2150 = !{!2151, !2152, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2148, file: !2149, line: 118, baseType: !568, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2148, file: !2149, line: 119, baseType: !568, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2148, file: !2149, line: 120, baseType: !147, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1047, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1047, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1047, file: !15, line: 520, baseType: !2157, size: 64, offset: 8192)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1047, file: !15, line: 523, baseType: !2159, size: 64, offset: 8256)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1047, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1047, file: !15, line: 525, baseType: !2164, size: 64, offset: 8384)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1047, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1047, file: !15, line: 533, baseType: !137, size: 64, offset: 8512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1047, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1047, file: !15, line: 535, baseType: !144, size: 64, offset: 8640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1047, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1047, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1047, file: !15, line: 540, baseType: !2174, size: 64, offset: 8768)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2176, line: 32, size: 64, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2175, file: !2176, line: 33, baseType: !568, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2175, file: !2176, line: 34, baseType: !568, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1047, file: !15, line: 563, baseType: !394, size: 128, offset: 8832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1047, file: !15, line: 565, baseType: !394, size: 128, offset: 8960)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1047, file: !15, line: 568, baseType: !2183, size: 64, offset: 9088)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1047, file: !15, line: 570, baseType: !373, size: 32, offset: 9152)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !35, line: 2382, baseType: !1021, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1022, file: !35, line: 2383, baseType: !482, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1022, file: !35, line: 2385, baseType: !2190, offset: 576)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2109, line: 206, elements: !1479)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1022, file: !35, line: 2386, baseType: !2190, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1022, file: !35, line: 2387, baseType: !2190, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1022, file: !35, line: 2388, baseType: !2194, offset: 576)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2190, elements: !465)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1022, file: !35, line: 2390, baseType: !2190, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1022, file: !35, line: 2391, baseType: !2190, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1022, file: !35, line: 2392, baseType: !2190, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1022, file: !35, line: 2393, baseType: !2190, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1013, file: !35, line: 1197, baseType: !2200, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2202)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2203)
!2203 = !{!2204, !2208, !2212, !2213, !2217, !2221, !2225, !2226, !2227, !2231, !2235, !2239, !2240, !2241, !2247, !2251, !2252, !2256, !2257, !2258, !2259, !2263, !2267, !2314, !2329, !2330}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2202, file: !35, line: 2058, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!804, !1012}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2202, file: !35, line: 2059, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !804}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2202, file: !35, line: 2060, baseType: !2209, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2202, file: !35, line: 2062, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !804, !85}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2202, file: !35, line: 2063, baseType: !2218, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!85, !804, !1251}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2202, file: !35, line: 2064, baseType: !2222, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!85, !804}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2202, file: !35, line: 2065, baseType: !2209, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2202, file: !35, line: 2066, baseType: !1042, size: 64, offset: 448)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2202, file: !35, line: 2067, baseType: !2228, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!85, !1012, !85}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2202, file: !35, line: 2068, baseType: !2232, size: 64, offset: 576)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!85, !1012, !34}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2202, file: !35, line: 2069, baseType: !2236, size: 64, offset: 640)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!85, !1012}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2202, file: !35, line: 2070, baseType: !2232, size: 64, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2202, file: !35, line: 2071, baseType: !2236, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2202, file: !35, line: 2072, baseType: !2242, size: 64, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!85, !764, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2202, file: !35, line: 2073, baseType: !2248, size: 64, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!85, !1012, !1980, !653}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2202, file: !35, line: 2074, baseType: !1042, size: 64, offset: 960)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2202, file: !35, line: 2076, baseType: !2253, size: 64, offset: 1024)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!85, !1755, !764}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2202, file: !35, line: 2077, baseType: !2253, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2202, file: !35, line: 2078, baseType: !2253, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2202, file: !35, line: 2079, baseType: !2253, size: 64, offset: 1216)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2202, file: !35, line: 2081, baseType: !2260, size: 64, offset: 1280)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!957, !1012, !85, !653, !140, !439}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2202, file: !35, line: 2082, baseType: !2264, size: 64, offset: 1344)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!957, !1012, !85, !188, !140, !439}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2202, file: !35, line: 2083, baseType: !2268, size: 64, offset: 1408)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2271, !804}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2299, !2300, !2301}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2273, file: !40, line: 297, baseType: !486, size: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2273, file: !40, line: 298, baseType: !394, size: 128, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2273, file: !40, line: 299, baseType: !394, size: 128, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2273, file: !40, line: 300, baseType: !394, size: 128, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2273, file: !40, line: 301, baseType: !346, size: 256, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2273, file: !40, line: 302, baseType: !426, size: 32, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2273, file: !40, line: 303, baseType: !373, size: 32, offset: 800)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2273, file: !40, line: 304, baseType: !1012, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2273, file: !40, line: 305, baseType: !2284, size: 64, offset: 896)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2285)
!2285 = !{!2286, !2298}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !40, line: 69, baseType: !2287, size: 32)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !40, line: 69, size: 32, elements: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2287, file: !40, line: 70, baseType: !514, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2287, file: !40, line: 71, baseType: !532, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2287, file: !40, line: 72, baseType: !2292, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2293, line: 24, baseType: !2294)
!2293 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2293, line: 22, size: 32, elements: !2295)
!2295 = !{!2296}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2294, file: !2293, line: 23, baseType: !2297, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2293, line: 20, baseType: !520)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2284, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2273, file: !40, line: 306, baseType: !439, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2273, file: !40, line: 307, baseType: !136, size: 64, offset: 1024)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2273, file: !40, line: 308, baseType: !2302, size: 576, offset: 1088)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2302, file: !40, line: 206, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !358)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2302, file: !40, line: 207, baseType: !2305, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2302, file: !40, line: 208, baseType: !2305, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2302, file: !40, line: 209, baseType: !2305, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2302, file: !40, line: 210, baseType: !2305, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2302, file: !40, line: 211, baseType: !2305, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2302, file: !40, line: 212, baseType: !2305, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2302, file: !40, line: 213, baseType: !599, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2302, file: !40, line: 214, baseType: !599, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2202, file: !35, line: 2085, baseType: !2315, size: 64, offset: 1472)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!147, !1012, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2320, line: 15, size: 256, elements: !2321)
!2320 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2321 = !{!2322, !2323, !2324, !2325, !2326}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2319, file: !2320, line: 16, baseType: !133, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2319, file: !2320, line: 19, baseType: !85, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2319, file: !2320, line: 26, baseType: !136, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2319, file: !2320, line: 33, baseType: !136, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2319, file: !2320, line: 36, baseType: !2327, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1192, line: 33, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2202, file: !35, line: 2087, baseType: !2315, size: 64, offset: 1536)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2202, file: !35, line: 2089, baseType: !1042, size: 64, offset: 1600)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1013, file: !35, line: 1198, baseType: !2332, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2335)
!2335 = !{!2336, !2340, !2344, !2348, !2349, !2350, !2351, !2352, !2357, !2362, !2366}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2334, file: !40, line: 325, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!85, !2272}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2334, file: !40, line: 326, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2272, !1012, !85}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2334, file: !40, line: 327, baseType: !2345, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2272}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2334, file: !40, line: 328, baseType: !2337, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2334, file: !40, line: 329, baseType: !2337, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2334, file: !40, line: 330, baseType: !2337, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2334, file: !40, line: 331, baseType: !2228, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2334, file: !40, line: 334, baseType: !2353, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2356, !804}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2334, file: !40, line: 335, baseType: !2358, size: 64, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!85, !804, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2334, file: !40, line: 337, baseType: !2363, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!85, !804, !2356}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2334, file: !40, line: 339, baseType: !2367, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!85, !1012, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1013, file: !35, line: 1199, baseType: !2372, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2375)
!2375 = !{!2376, !2380, !2381, !2385, !2386, !2387, !2402, !2425, !2429, !2430, !2453}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2374, file: !40, line: 431, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!85, !1012, !85, !85, !926}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2374, file: !40, line: 432, baseType: !2228, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2374, file: !40, line: 433, baseType: !2382, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!85, !1012, !7}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2374, file: !40, line: 434, baseType: !2382, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2374, file: !40, line: 435, baseType: !2228, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2374, file: !40, line: 436, baseType: !2388, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!85, !1012, !85, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2392, file: !40, line: 418, baseType: !85, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2392, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2392, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2392, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2392, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2392, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2392, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2392, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2374, file: !40, line: 437, baseType: !2403, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!85, !1012, !2284, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2407, file: !40, line: 346, baseType: !85, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2407, file: !40, line: 347, baseType: !551, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2407, file: !40, line: 348, baseType: !551, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2407, file: !40, line: 349, baseType: !551, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2407, file: !40, line: 350, baseType: !551, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2407, file: !40, line: 351, baseType: !551, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2407, file: !40, line: 352, baseType: !551, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2407, file: !40, line: 353, baseType: !356, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2407, file: !40, line: 355, baseType: !356, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2407, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2407, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2407, file: !40, line: 358, baseType: !551, size: 64, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2407, file: !40, line: 359, baseType: !551, size: 64, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2407, file: !40, line: 360, baseType: !551, size: 64, offset: 768)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2407, file: !40, line: 361, baseType: !356, size: 64, offset: 832)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2407, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2374, file: !40, line: 438, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!85, !1012, !2370, !2406}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2374, file: !40, line: 440, baseType: !2403, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2374, file: !40, line: 441, baseType: !2431, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!85, !1012, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2435, file: !40, line: 412, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2435, file: !40, line: 413, baseType: !2439, size: 1344, offset: 64)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, size: 1344, elements: !465)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2452}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !40, line: 398, baseType: !7, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2440, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2440, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2440, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2440, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2440, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2440, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2440, file: !40, line: 406, baseType: !553, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2440, file: !40, line: 407, baseType: !2451, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !134, line: 132, baseType: !551)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2440, file: !40, line: 408, baseType: !2451, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2374, file: !40, line: 442, baseType: !2382, size: 64, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1013, file: !35, line: 1200, baseType: !2455, size: 64, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1013, file: !35, line: 1201, baseType: !136, size: 64, offset: 640)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1013, file: !35, line: 1202, baseType: !136, size: 64, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1013, file: !35, line: 1203, baseType: !136, size: 64, offset: 768)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1013, file: !35, line: 1204, baseType: !764, size: 64, offset: 832)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1013, file: !35, line: 1205, baseType: !583, size: 320, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1013, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1013, file: !35, line: 1207, baseType: !373, size: 32, offset: 1248)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1013, file: !35, line: 1209, baseType: !137, size: 64, offset: 1280)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1013, file: !35, line: 1211, baseType: !2467, size: 64, offset: 1344)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1013, file: !35, line: 1223, baseType: !2472, size: 64, offset: 1408)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !781, line: 34, size: 64, elements: !2473)
!2473 = !{!2474}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2472, file: !781, line: 35, baseType: !784, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1013, file: !35, line: 1224, baseType: !394, size: 128, offset: 1472)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1013, file: !35, line: 1225, baseType: !2477, size: 64, offset: 1600)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1013, file: !35, line: 1226, baseType: !2480, size: 64, offset: 1664)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1013, file: !35, line: 1227, baseType: !2483, size: 64, offset: 1728)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1013, file: !35, line: 1228, baseType: !2486, size: 64, offset: 1792)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1013, file: !35, line: 1229, baseType: !486, size: 128, offset: 1856)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1013, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1013, file: !35, line: 1231, baseType: !2491, size: 2496, offset: 2048)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2497, !2529}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2491, file: !40, line: 522, baseType: !7, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2491, file: !40, line: 523, baseType: !583, size: 320, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2491, file: !40, line: 524, baseType: !2496, size: 192, offset: 384)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 192, elements: !465)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2491, file: !40, line: 525, baseType: !2498, size: 1728, offset: 576)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, size: 1728, elements: !465)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2500)
!2500 = !{!2501, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2499, file: !40, line: 223, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2504)
!2504 = !{!2505, !2506, !2519, !2520}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2503, file: !40, line: 446, baseType: !85, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2503, file: !40, line: 447, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2509, file: !40, line: 313, baseType: !2228, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2509, file: !40, line: 314, baseType: !2228, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2509, file: !40, line: 315, baseType: !2228, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2509, file: !40, line: 316, baseType: !2228, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2509, file: !40, line: 317, baseType: !2337, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2509, file: !40, line: 318, baseType: !2337, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2509, file: !40, line: 319, baseType: !2337, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2509, file: !40, line: 320, baseType: !2367, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2503, file: !40, line: 448, baseType: !1046, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2503, file: !40, line: 449, baseType: !2502, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2499, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2499, file: !40, line: 226, baseType: !394, size: 128, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2499, file: !40, line: 227, baseType: !136, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2499, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2499, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2499, file: !40, line: 230, baseType: !2305, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2499, file: !40, line: 231, baseType: !2305, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2499, file: !40, line: 232, baseType: !137, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2491, file: !40, line: 526, baseType: !2530, size: 192, offset: 2304)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2507, size: 192, elements: !465)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1013, file: !35, line: 1233, baseType: !2532, size: 2368, offset: 4544)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2533)
!2533 = !{!2534, !2535, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2532, file: !35, line: 1185, baseType: !199, size: 16)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2532, file: !35, line: 1186, baseType: !199, size: 16, offset: 16)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2532, file: !35, line: 1187, baseType: !2537, size: 2304, offset: 64)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2538, size: 2304, elements: !465)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2539, line: 12, size: 768, elements: !2540)
!2539 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2540 = !{!2541, !2549, !2550, !3724, !3725}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2538, file: !2539, line: 13, baseType: !2542, size: 384)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2543, line: 17, size: 384, elements: !2544)
!2543 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2542, file: !2543, line: 18, baseType: !85, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2542, file: !2543, line: 19, baseType: !85, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2542, file: !2543, line: 20, baseType: !495, size: 192, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2542, file: !2543, line: 22, baseType: !416, size: 128, align: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2538, file: !2539, line: 14, baseType: !245, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2538, file: !2539, line: 15, baseType: !2551, size: 64, offset: 448)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2552, line: 16, size: 64, elements: !2553)
!2552 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2551, file: !2552, line: 17, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1665, line: 746, size: 58368, elements: !2557)
!2557 = !{!2558, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2638, !2649, !2737, !2741, !2744, !2775, !2776, !2777, !2778, !2786, !2788, !2789, !2790, !2791, !2792, !2793, !2804, !2805, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2822, !2823, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2911, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2959, !2965, !2966, !2967, !2968, !2969, !2973, !2976, !2983, !2988, !2991, !2994, !2997, !3000, !3138, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3176, !3177, !3178, !3187, !3195, !3196, !3197, !3198, !3199, !3204, !3205, !3206, !3209, !3210, !3213, !3216, !3219, !3227, !3230, !3231, !3317, !3318, !3319, !3320, !3321, !3327, !3328, !3329, !3330, !3333, !3334, !3337, !3340, !3341, !3344, !3345, !3346, !3349, !3350, !3351, !3352, !3353, !3354, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3386, !3389, !3395, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3407, !3479, !3481, !3482, !3483, !3484, !3485, !3486, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3503, !3504, !3505}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2556, file: !1665, line: 752, baseType: !2559, size: 192)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2560, line: 56, size: 192, elements: !2561)
!2560 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !2560, line: 57, baseType: !136, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2559, file: !2560, line: 58, baseType: !136, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2559, file: !2560, line: 59, baseType: !608, size: 32, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2559, file: !2560, line: 61, baseType: !608, size: 32, offset: 160)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2556, file: !1665, line: 754, baseType: !7, size: 32, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2556, file: !1665, line: 767, baseType: !137, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2556, file: !1665, line: 768, baseType: !473, size: 32, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !1665, line: 770, baseType: !7, size: 32, offset: 352)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2556, file: !1665, line: 771, baseType: !7, size: 32, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2556, file: !1665, line: 774, baseType: !85, size: 32, offset: 416)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2556, file: !1665, line: 775, baseType: !2573, size: 128, offset: 448)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2574, line: 58, size: 128, elements: !2575)
!2574 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2575 = !{!2576, !2577, !2582, !2583}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2573, file: !2574, line: 59, baseType: !410, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !2574, line: 60, baseType: !2578, size: 32, offset: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !2574, line: 60, size: 32, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2578, file: !2574, line: 61, baseType: !7, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2578, file: !2574, line: 62, baseType: !373, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2573, file: !2574, line: 65, baseType: !336, size: 16, offset: 96)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2573, file: !2574, line: 65, baseType: !336, size: 16, offset: 112)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2556, file: !1665, line: 776, baseType: !7, size: 32, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2556, file: !1665, line: 777, baseType: !136, size: 64, offset: 640)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2556, file: !1665, line: 778, baseType: !2555, size: 64, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2556, file: !1665, line: 787, baseType: !85, size: 32, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2556, file: !1665, line: 788, baseType: !85, size: 32, offset: 800)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2556, file: !1665, line: 790, baseType: !85, size: 32, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2556, file: !1665, line: 792, baseType: !85, size: 32, offset: 864)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2556, file: !1665, line: 793, baseType: !85, size: 32, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2556, file: !1665, line: 794, baseType: !85, size: 32, offset: 928)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2556, file: !1665, line: 795, baseType: !7, size: 32, offset: 960)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2556, file: !1665, line: 797, baseType: !2595, size: 2048, offset: 1024)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1665, line: 551, size: 2048, elements: !2596)
!2596 = !{!2597, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2617, !2620, !2621, !2622}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2595, file: !1665, line: 553, baseType: !2598, size: 128)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1665, line: 411, size: 128, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2598, file: !1665, line: 412, baseType: !136, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2598, file: !1665, line: 413, baseType: !608, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2595, file: !1665, line: 554, baseType: !575, size: 192, align: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2595, file: !1665, line: 555, baseType: !551, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2595, file: !1665, line: 556, baseType: !551, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2595, file: !1665, line: 558, baseType: !394, size: 128, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2595, file: !1665, line: 559, baseType: !7, size: 32, offset: 576)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2595, file: !1665, line: 561, baseType: !551, size: 64, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2595, file: !1665, line: 562, baseType: !551, size: 64, offset: 704)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2595, file: !1665, line: 563, baseType: !551, size: 64, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2595, file: !1665, line: 564, baseType: !551, size: 64, offset: 832)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2595, file: !1665, line: 565, baseType: !356, size: 64, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2595, file: !1665, line: 566, baseType: !551, size: 64, offset: 960)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2595, file: !1665, line: 568, baseType: !551, size: 64, offset: 1024)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2595, file: !1665, line: 571, baseType: !85, size: 32, offset: 1088)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2595, file: !1665, line: 572, baseType: !2616, size: 64, offset: 1152)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2595, file: !1665, line: 574, baseType: !2618, size: 64, offset: 1216)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1665, line: 49, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2595, file: !1665, line: 576, baseType: !2618, size: 64, offset: 1280)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2595, file: !1665, line: 578, baseType: !136, size: 64, offset: 1344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2595, file: !1665, line: 588, baseType: !2623, size: 512, align: 512, offset: 1536)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1665, line: 497, size: 512, align: 512, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2623, file: !1665, line: 498, baseType: !551, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2623, file: !1665, line: 499, baseType: !551, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2623, file: !1665, line: 500, baseType: !551, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2623, file: !1665, line: 501, baseType: !608, size: 32, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2623, file: !1665, line: 502, baseType: !608, size: 32, offset: 224)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2623, file: !1665, line: 503, baseType: !136, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2623, file: !1665, line: 504, baseType: !136, size: 64, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2623, file: !1665, line: 505, baseType: !136, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2623, file: !1665, line: 506, baseType: !2634, size: 64, align: 64, offset: 448)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1665, line: 445, size: 64, align: 64, elements: !2635)
!2635 = !{!2636, !2637}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2634, file: !1665, line: 446, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2634, file: !1665, line: 447, baseType: !7, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2556, file: !1665, line: 798, baseType: !2639, size: 384, offset: 3072)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1665, line: 592, size: 384, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2639, file: !1665, line: 593, baseType: !394, size: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2639, file: !1665, line: 594, baseType: !136, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2639, file: !1665, line: 595, baseType: !136, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2639, file: !1665, line: 596, baseType: !7, size: 32, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2639, file: !1665, line: 597, baseType: !199, size: 16, offset: 288)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2639, file: !1665, line: 598, baseType: !199, size: 16, offset: 304)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2639, file: !1665, line: 600, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2556, file: !1665, line: 799, baseType: !2650, size: 1792, offset: 3456)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1665, line: 610, size: 1792, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2734, !2735}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2650, file: !1665, line: 611, baseType: !575, size: 192, align: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2650, file: !1665, line: 618, baseType: !551, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2650, file: !1665, line: 619, baseType: !551, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2650, file: !1665, line: 620, baseType: !551, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2650, file: !1665, line: 621, baseType: !551, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2650, file: !1665, line: 622, baseType: !551, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2650, file: !1665, line: 629, baseType: !356, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2650, file: !1665, line: 630, baseType: !551, size: 64, offset: 576)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2650, file: !1665, line: 631, baseType: !7, size: 32, offset: 640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2650, file: !1665, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2650, file: !1665, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2650, file: !1665, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2650, file: !1665, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2650, file: !1665, line: 662, baseType: !2666, size: 512, offset: 704)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2667)
!2667 = !{!2668, !2676, !2677, !2682, !2730, !2731, !2732, !2733}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2666, file: !46, line: 119, baseType: !2669, size: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2670, line: 9, size: 256, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2669, file: !2670, line: 10, baseType: !575, size: 192, align: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2669, file: !2670, line: 11, baseType: !2674, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2675, line: 29, baseType: !356)
!2675 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2666, file: !46, line: 120, baseType: !2674, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2666, file: !46, line: 121, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!45, !2681}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2666, file: !46, line: 122, baseType: !2683, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2685)
!2685 = !{!2686, !2711, !2712, !2715, !2720, !2721, !2725, !2729}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2684, file: !46, line: 160, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2688, file: !46, line: 216, baseType: !360, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2688, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2688, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2688, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2688, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2688, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2688, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2688, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2688, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2688, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2688, file: !46, line: 227, baseType: !199, size: 16, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2688, file: !46, line: 228, baseType: !199, size: 16, offset: 208)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2688, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2688, file: !46, line: 235, baseType: !2674, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2688, file: !46, line: 236, baseType: !2681, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2688, file: !46, line: 237, baseType: !2674, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2688, file: !46, line: 238, baseType: !2681, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2688, file: !46, line: 239, baseType: !2708, size: 4096, align: 512, offset: 512)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2684, size: 4096, align: 512, elements: !2709)
!2709 = !{!2710}
!2710 = !DISubrange(count: 8)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2684, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2684, file: !46, line: 162, baseType: !2713, size: 32, offset: 96)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !134, line: 32, baseType: !2714)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !142, line: 96, baseType: !85)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2684, file: !46, line: 163, baseType: !2716, size: 32, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !771, line: 274, baseType: !2717)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !771, line: 274, size: 32, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2717, file: !771, line: 274, baseType: !775, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2684, file: !46, line: 164, baseType: !2681, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2684, file: !46, line: 165, baseType: !2722, size: 128, offset: 256)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2670, line: 14, size: 128, elements: !2723)
!2723 = !{!2724}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2722, file: !2670, line: 15, baseType: !1172, size: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2684, file: !46, line: 166, baseType: !2726, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!2674}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2684, file: !46, line: 167, baseType: !2674, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2666, file: !46, line: 123, baseType: !381, size: 8, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2666, file: !46, line: 124, baseType: !381, size: 8, offset: 456)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2666, file: !46, line: 125, baseType: !381, size: 8, offset: 464)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2666, file: !46, line: 126, baseType: !381, size: 8, offset: 472)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2650, file: !1665, line: 671, baseType: !2666, size: 512, offset: 1216)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2650, file: !1665, line: 679, baseType: !2736, size: 64, offset: 1728)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2556, file: !1665, line: 800, baseType: !2738, size: 64, offset: 5248)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2740)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1665, line: 800, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2556, file: !1665, line: 809, baseType: !2742, size: 64, offset: 5312)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1665, line: 70, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2556, file: !1665, line: 825, baseType: !2745, size: 2048, align: 512, offset: 5632)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1665, line: 509, size: 2048, align: 512, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2745, file: !1665, line: 511, baseType: !551, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2745, file: !1665, line: 512, baseType: !551, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2745, file: !1665, line: 513, baseType: !551, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2745, file: !1665, line: 514, baseType: !551, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2745, file: !1665, line: 515, baseType: !551, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2745, file: !1665, line: 516, baseType: !551, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2745, file: !1665, line: 518, baseType: !551, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2745, file: !1665, line: 519, baseType: !551, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2745, file: !1665, line: 520, baseType: !356, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2745, file: !1665, line: 522, baseType: !551, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2745, file: !1665, line: 523, baseType: !551, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2745, file: !1665, line: 524, baseType: !356, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2745, file: !1665, line: 526, baseType: !356, size: 64, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2745, file: !1665, line: 527, baseType: !551, size: 64, offset: 832)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2745, file: !1665, line: 529, baseType: !551, size: 64, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2745, file: !1665, line: 530, baseType: !551, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2745, file: !1665, line: 531, baseType: !551, size: 64, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2745, file: !1665, line: 532, baseType: !551, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2745, file: !1665, line: 533, baseType: !551, size: 64, offset: 1152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2745, file: !1665, line: 535, baseType: !551, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2745, file: !1665, line: 536, baseType: !551, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2745, file: !1665, line: 537, baseType: !551, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2745, file: !1665, line: 538, baseType: !551, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2745, file: !1665, line: 539, baseType: !551, size: 64, offset: 1472)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2745, file: !1665, line: 540, baseType: !551, size: 64, offset: 1536)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2745, file: !1665, line: 541, baseType: !551, size: 64, offset: 1600)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2745, file: !1665, line: 542, baseType: !551, size: 64, offset: 1664)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2745, file: !1665, line: 543, baseType: !551, size: 64, offset: 1728)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2556, file: !1665, line: 833, baseType: !7, size: 32, offset: 7680)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2556, file: !1665, line: 836, baseType: !7, size: 32, offset: 7712)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2556, file: !1665, line: 837, baseType: !85, size: 32, offset: 7744)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2556, file: !1665, line: 838, baseType: !2779, size: 64, offset: 7808)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2782, line: 19, baseType: !2783)
!2782 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2782, line: 19, size: 64, elements: !2784)
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2783, file: !2782, line: 19, baseType: !204, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2556, file: !1665, line: 839, baseType: !2787, size: 64, offset: 7872)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2556, file: !1665, line: 840, baseType: !2781, size: 64, offset: 7936)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2556, file: !1665, line: 841, baseType: !137, size: 64, offset: 8000)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2556, file: !1665, line: 843, baseType: !199, size: 16, offset: 8064)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2556, file: !1665, line: 845, baseType: !199, size: 16, offset: 8080)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2556, file: !1665, line: 848, baseType: !85, size: 32, offset: 8096)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2556, file: !1665, line: 849, baseType: !2794, size: 32, offset: 8128)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1665, line: 718, size: 32, elements: !2795)
!2795 = !{!2796, !2803}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2794, file: !1665, line: 724, baseType: !2797, size: 32)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2794, file: !1665, line: 719, size: 32, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2797, file: !1665, line: 720, baseType: !381, size: 8)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2797, file: !1665, line: 721, baseType: !381, size: 8, offset: 8)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2797, file: !1665, line: 722, baseType: !381, size: 8, offset: 16)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2797, file: !1665, line: 723, baseType: !381, size: 8, offset: 24)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2794, file: !1665, line: 725, baseType: !608, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2556, file: !1665, line: 850, baseType: !394, size: 128, offset: 8192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2556, file: !1665, line: 851, baseType: !2806, size: 64, offset: 8320)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1665, line: 60, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2556, file: !1665, line: 855, baseType: !136, size: 64, offset: 8384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2556, file: !1665, line: 856, baseType: !381, size: 8, offset: 8448)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2556, file: !1665, line: 857, baseType: !381, size: 8, offset: 8456)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2556, file: !1665, line: 858, baseType: !85, size: 32, offset: 8480)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2556, file: !1665, line: 859, baseType: !394, size: 128, offset: 8512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2556, file: !1665, line: 860, baseType: !85, size: 32, offset: 8640)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2556, file: !1665, line: 861, baseType: !394, size: 128, offset: 8704)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2556, file: !1665, line: 873, baseType: !2816, size: 256, offset: 8832)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1665, line: 376, size: 256, elements: !2817)
!2817 = !{!2818, !2819, !2820, !2821}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2816, file: !1665, line: 381, baseType: !136, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2816, file: !1665, line: 384, baseType: !553, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2816, file: !1665, line: 389, baseType: !553, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2816, file: !1665, line: 392, baseType: !553, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2556, file: !1665, line: 875, baseType: !394, size: 128, offset: 9088)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2556, file: !1665, line: 877, baseType: !2824, size: 320, offset: 9216)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2825, line: 86, size: 320, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2824, file: !2825, line: 87, baseType: !85, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2824, file: !2825, line: 88, baseType: !394, size: 128, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2824, file: !2825, line: 89, baseType: !394, size: 128, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2556, file: !1665, line: 878, baseType: !575, size: 192, align: 64, offset: 9536)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2556, file: !1665, line: 881, baseType: !1458, size: 64, offset: 9728)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2556, file: !1665, line: 882, baseType: !1458, size: 64, offset: 9792)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2556, file: !1665, line: 884, baseType: !85, size: 32, offset: 9856)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2556, file: !1665, line: 885, baseType: !85, size: 32, offset: 9888)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2556, file: !1665, line: 886, baseType: !85, size: 32, offset: 9920)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2556, file: !1665, line: 888, baseType: !85, size: 32, offset: 9952)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2556, file: !1665, line: 890, baseType: !136, size: 64, offset: 9984)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2556, file: !1665, line: 893, baseType: !7, size: 32, offset: 10048)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2556, file: !1665, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2556, file: !1665, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2556, file: !1665, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2556, file: !1665, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2556, file: !1665, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2556, file: !1665, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2556, file: !1665, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2556, file: !1665, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2556, file: !1665, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2556, file: !1665, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2556, file: !1665, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2556, file: !1665, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2556, file: !1665, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2556, file: !1665, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2556, file: !1665, line: 969, baseType: !136, size: 64, offset: 10176)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2556, file: !1665, line: 971, baseType: !2855, size: 448, offset: 10240)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2856)
!2856 = !{!2857, !2858, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2855, file: !51, line: 26, baseType: !136, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2855, file: !51, line: 27, baseType: !2859, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!147, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, scope: !2855, file: !51, line: 28, baseType: !2864, size: 320, offset: 128)
!2864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2855, file: !51, line: 28, size: 320, elements: !2865)
!2865 = !{!2866, !2876, !2901}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2864, file: !51, line: 37, baseType: !2867, size: 320)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !51, line: 30, size: 320, elements: !2868)
!2868 = !{!2869, !2871, !2872, !2873, !2874, !2875}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2867, file: !51, line: 31, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2867, file: !51, line: 32, baseType: !608, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2867, file: !51, line: 33, baseType: !608, size: 32, offset: 96)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2867, file: !51, line: 34, baseType: !608, size: 32, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2867, file: !51, line: 35, baseType: !551, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2867, file: !51, line: 36, baseType: !2870, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2864, file: !51, line: 47, baseType: !2877, size: 192)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !51, line: 39, size: 192, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2900}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2877, file: !51, line: 40, baseType: !2713, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2877, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2877, file: !51, line: 42, baseType: !2882, size: 64, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2877, file: !51, line: 42, size: 64, elements: !2883)
!2883 = !{!2884, !2892}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2882, file: !51, line: 43, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2887, line: 7, size: 128, elements: !2888)
!2887 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2888 = !{!2889, !2891}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2886, file: !2887, line: 8, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !142, line: 93, baseType: !358)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2886, file: !2887, line: 9, baseType: !358, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2882, file: !51, line: 44, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2895, line: 7, size: 64, elements: !2896)
!2895 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2896 = !{!2897, !2899}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2894, file: !2895, line: 8, baseType: !2898, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2895, line: 5, baseType: !568)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2894, file: !2895, line: 9, baseType: !568, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2877, file: !51, line: 46, baseType: !551, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2864, file: !51, line: 55, baseType: !2902, size: 256)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !51, line: 49, size: 256, elements: !2903)
!2903 = !{!2904, !2907, !2908, !2909, !2910}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2902, file: !51, line: 50, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2902, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2902, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2902, file: !51, line: 53, baseType: !136, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2902, file: !51, line: 54, baseType: !136, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2556, file: !1665, line: 973, baseType: !2912, size: 32, offset: 10688)
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !134, line: 27, baseType: !2913)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !142, line: 28, baseType: !85)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2556, file: !1665, line: 974, baseType: !2912, size: 32, offset: 10720)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2556, file: !1665, line: 978, baseType: !136, size: 64, offset: 10752)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2556, file: !1665, line: 987, baseType: !2555, size: 64, offset: 10816)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2556, file: !1665, line: 990, baseType: !2555, size: 64, offset: 10880)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2556, file: !1665, line: 995, baseType: !394, size: 128, offset: 10944)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2556, file: !1665, line: 996, baseType: !394, size: 128, offset: 11072)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2556, file: !1665, line: 997, baseType: !2555, size: 64, offset: 11200)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2556, file: !1665, line: 1005, baseType: !394, size: 128, offset: 11264)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2556, file: !1665, line: 1006, baseType: !394, size: 128, offset: 11392)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2556, file: !1665, line: 1009, baseType: !469, size: 64, offset: 11520)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2556, file: !1665, line: 1010, baseType: !2925, size: 512, offset: 11584)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 512, elements: !491)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2556, file: !1665, line: 1011, baseType: !394, size: 128, offset: 12096)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2556, file: !1665, line: 1012, baseType: !394, size: 128, offset: 12224)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2556, file: !1665, line: 1014, baseType: !1836, size: 64, offset: 12352)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2556, file: !1665, line: 1017, baseType: !1980, size: 64, offset: 12416)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2556, file: !1665, line: 1020, baseType: !1980, size: 64, offset: 12480)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2556, file: !1665, line: 1023, baseType: !137, size: 64, offset: 12544)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2556, file: !1665, line: 1025, baseType: !551, size: 64, offset: 12608)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2556, file: !1665, line: 1026, baseType: !551, size: 64, offset: 12672)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2556, file: !1665, line: 1031, baseType: !551, size: 64, offset: 12736)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2556, file: !1665, line: 1032, baseType: !2936, size: 192, offset: 12800)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1665, line: 324, size: 192, elements: !2937)
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2936, file: !1665, line: 326, baseType: !551, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2936, file: !1665, line: 327, baseType: !551, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2936, file: !1665, line: 328, baseType: !360, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2556, file: !1665, line: 1041, baseType: !136, size: 64, offset: 12992)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2556, file: !1665, line: 1042, baseType: !136, size: 64, offset: 13056)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2556, file: !1665, line: 1045, baseType: !551, size: 64, offset: 13120)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2556, file: !1665, line: 1048, baseType: !551, size: 64, offset: 13184)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2556, file: !1665, line: 1051, baseType: !136, size: 64, offset: 13248)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2556, file: !1665, line: 1052, baseType: !136, size: 64, offset: 13312)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2556, file: !1665, line: 1055, baseType: !2948, size: 640, offset: 13376)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2949, line: 132, size: 640, elements: !2950)
!2949 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2950 = !{!2951, !2957, !2958}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2948, file: !2949, line: 133, baseType: !2952, size: 576)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 576, elements: !465)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2949, line: 117, size: 192, elements: !2954)
!2954 = !{!2955, !2956}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2953, file: !2949, line: 118, baseType: !551, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2953, file: !2949, line: 119, baseType: !2722, size: 128, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2948, file: !2949, line: 134, baseType: !7, size: 32, offset: 576)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2948, file: !2949, line: 135, baseType: !7, size: 32, offset: 608)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2556, file: !1665, line: 1058, baseType: !2960, size: 448, offset: 14016)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2949, line: 144, size: 448, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2960, file: !2949, line: 145, baseType: !416, size: 128, align: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2960, file: !2949, line: 146, baseType: !346, size: 256, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2960, file: !2949, line: 147, baseType: !7, size: 32, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2556, file: !1665, line: 1064, baseType: !524, size: 64, offset: 14464)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2556, file: !1665, line: 1067, baseType: !524, size: 64, offset: 14528)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2556, file: !1665, line: 1070, baseType: !524, size: 64, offset: 14592)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2556, file: !1665, line: 1074, baseType: !560, size: 64, offset: 14656)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2556, file: !1665, line: 1084, baseType: !2970, size: 128, offset: 14720)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !2971)
!2971 = !{!2972}
!2972 = !DISubrange(count: 16)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2556, file: !1665, line: 1086, baseType: !2974, size: 64, offset: 14848)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1665, line: 55, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2556, file: !1665, line: 1089, baseType: !2977, size: 64, offset: 14912)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2978, line: 12, size: 64, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2979 = !{!2980}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2977, file: !2978, line: 13, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2978, line: 8, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2556, file: !1665, line: 1090, baseType: !2984, size: 128, offset: 14976)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2985, line: 13, size: 128, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2986 = !{!2987}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2984, file: !2985, line: 14, baseType: !394, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2556, file: !1665, line: 1097, baseType: !2989, size: 64, offset: 15104)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1665, line: 50, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2556, file: !1665, line: 1100, baseType: !2992, size: 64, offset: 15168)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1665, line: 1100, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2556, file: !1665, line: 1103, baseType: !2995, size: 64, offset: 15232)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1665, line: 53, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2556, file: !1665, line: 1107, baseType: !2998, size: 64, offset: 15296)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1665, line: 56, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2556, file: !1665, line: 1110, baseType: !3001, size: 64, offset: 15360)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3003, line: 93, size: 8768, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3052, !3061, !3062, !3064, !3065, !3066, !3069, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3107, !3108, !3115, !3125, !3128, !3129, !3132, !3133, !3134, !3135, !3136, !3137}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3002, file: !3003, line: 94, baseType: !473, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3002, file: !3003, line: 95, baseType: !373, size: 32, offset: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3002, file: !3003, line: 96, baseType: !85, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3002, file: !3003, line: 97, baseType: !85, size: 32, offset: 96)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3002, file: !3003, line: 98, baseType: !394, size: 128, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3002, file: !3003, line: 100, baseType: !495, size: 192, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3002, file: !3003, line: 103, baseType: !2555, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3002, file: !3003, line: 106, baseType: !3013, size: 192, offset: 512)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !731, line: 32, size: 192, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3013, file: !731, line: 33, baseType: !394, size: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3013, file: !731, line: 34, baseType: !3017, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3018, line: 25, baseType: !3019)
!3018 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3018, line: 23, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3019, file: !3018, line: 24, baseType: !204, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3002, file: !3003, line: 109, baseType: !482, size: 64, offset: 704)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3002, file: !3003, line: 112, baseType: !85, size: 32, offset: 768)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3002, file: !3003, line: 114, baseType: !85, size: 32, offset: 800)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3002, file: !3003, line: 115, baseType: !2555, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3002, file: !3003, line: 118, baseType: !85, size: 32, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3002, file: !3003, line: 119, baseType: !7, size: 32, offset: 928)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3002, file: !3003, line: 121, baseType: !3029, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3003, line: 80, size: 448, elements: !3031)
!3031 = !{!3032, !3033, !3039}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3030, file: !3003, line: 81, baseType: !373, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3030, file: !3003, line: 82, baseType: !3034, size: 128, offset: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3003, line: 75, size: 128, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3034, file: !3003, line: 76, baseType: !2555, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3034, file: !3003, line: 77, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3030, file: !3003, line: 83, baseType: !1837, size: 256, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3002, file: !3003, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3002, file: !3003, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3002, file: !3003, line: 138, baseType: !7, size: 32, offset: 1056)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3002, file: !3003, line: 139, baseType: !394, size: 128, offset: 1088)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3002, file: !3003, line: 142, baseType: !2666, size: 512, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3002, file: !3003, line: 143, baseType: !2674, size: 64, offset: 1728)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3002, file: !3003, line: 150, baseType: !3047, size: 256, offset: 1792)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, size: 256, elements: !219)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3003, line: 38, size: 128, elements: !3049)
!3049 = !{!3050, !3051}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3048, file: !3003, line: 39, baseType: !551, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3048, file: !3003, line: 40, baseType: !551, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3002, file: !3003, line: 156, baseType: !3053, size: 192, offset: 2048)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3003, line: 66, size: 192, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3053, file: !3003, line: 67, baseType: !3056, size: 192)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3003, line: 47, size: 192, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3056, file: !3003, line: 48, baseType: !352, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3056, file: !3003, line: 49, baseType: !352, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3056, file: !3003, line: 50, baseType: !352, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3002, file: !3003, line: 160, baseType: !2948, size: 640, offset: 2240)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3002, file: !3003, line: 163, baseType: !3063, size: 256, offset: 2880)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 256, elements: !491)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3002, file: !3003, line: 169, baseType: !469, size: 64, offset: 3136)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3002, file: !3003, line: 172, baseType: !85, size: 32, offset: 3200)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3002, file: !3003, line: 174, baseType: !3067, size: 64, offset: 3264)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3003, line: 174, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3002, file: !3003, line: 185, baseType: !3070, size: 64, offset: 3328)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !771, line: 860, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 853, size: 64, elements: !3072)
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3071, file: !771, line: 858, baseType: !770, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3071, file: !771, line: 859, baseType: !426, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3002, file: !3003, line: 186, baseType: !551, size: 64, offset: 3392)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3002, file: !3003, line: 186, baseType: !551, size: 64, offset: 3456)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3002, file: !3003, line: 186, baseType: !551, size: 64, offset: 3520)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3002, file: !3003, line: 186, baseType: !551, size: 64, offset: 3584)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3002, file: !3003, line: 187, baseType: !551, size: 64, offset: 3648)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3002, file: !3003, line: 188, baseType: !551, size: 64, offset: 3712)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3002, file: !3003, line: 189, baseType: !2936, size: 192, offset: 3776)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3002, file: !3003, line: 190, baseType: !136, size: 64, offset: 3968)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3002, file: !3003, line: 190, baseType: !136, size: 64, offset: 4032)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3002, file: !3003, line: 190, baseType: !136, size: 64, offset: 4096)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3002, file: !3003, line: 190, baseType: !136, size: 64, offset: 4160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3002, file: !3003, line: 191, baseType: !136, size: 64, offset: 4224)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3002, file: !3003, line: 191, baseType: !136, size: 64, offset: 4288)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3002, file: !3003, line: 191, baseType: !136, size: 64, offset: 4352)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3002, file: !3003, line: 191, baseType: !136, size: 64, offset: 4416)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3002, file: !3003, line: 192, baseType: !136, size: 64, offset: 4480)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3002, file: !3003, line: 192, baseType: !136, size: 64, offset: 4544)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3002, file: !3003, line: 192, baseType: !136, size: 64, offset: 4608)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3002, file: !3003, line: 192, baseType: !136, size: 64, offset: 4672)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3002, file: !3003, line: 193, baseType: !136, size: 64, offset: 4736)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3002, file: !3003, line: 193, baseType: !136, size: 64, offset: 4800)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3002, file: !3003, line: 194, baseType: !3097, size: 448, offset: 4864)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3098, line: 12, size: 448, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105, !3106}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3097, file: !3098, line: 15, baseType: !551, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3097, file: !3098, line: 17, baseType: !551, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3097, file: !3098, line: 19, baseType: !551, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3097, file: !3098, line: 21, baseType: !551, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3097, file: !3098, line: 29, baseType: !551, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3097, file: !3098, line: 35, baseType: !551, size: 64, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3097, file: !3098, line: 44, baseType: !551, size: 64, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3002, file: !3003, line: 202, baseType: !553, size: 64, offset: 5312)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3002, file: !3003, line: 213, baseType: !3109, size: 2048, offset: 5376)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3110, size: 2048, elements: !2971)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3111, line: 43, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3110, file: !3111, line: 44, baseType: !143, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3110, file: !3111, line: 45, baseType: !143, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3002, file: !3003, line: 216, baseType: !3116, size: 448, offset: 7424)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3003, line: 30, size: 448, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3116, file: !3003, line: 31, baseType: !85, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3116, file: !3003, line: 32, baseType: !147, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3116, file: !3003, line: 33, baseType: !136, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3116, file: !3003, line: 34, baseType: !551, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3116, file: !3003, line: 34, baseType: !551, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3116, file: !3003, line: 35, baseType: !136, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3116, file: !3003, line: 35, baseType: !136, size: 64, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3002, file: !3003, line: 219, baseType: !3126, size: 64, offset: 7872)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3003, line: 219, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3002, file: !3003, line: 222, baseType: !7, size: 32, offset: 7936)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3002, file: !3003, line: 223, baseType: !3130, size: 64, offset: 8000)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3003, line: 223, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3002, file: !3003, line: 230, baseType: !642, size: 8, offset: 8064)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3002, file: !3003, line: 231, baseType: !265, size: 16, offset: 8080)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3002, file: !3003, line: 232, baseType: !265, size: 16, offset: 8096)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3002, file: !3003, line: 234, baseType: !1458, size: 64, offset: 8128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3002, file: !3003, line: 237, baseType: !346, size: 256, offset: 8192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3002, file: !3003, line: 243, baseType: !583, size: 320, offset: 8448)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2556, file: !1665, line: 1111, baseType: !3139, size: 64, offset: 15424)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3003, line: 20, size: 16640, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3140, file: !3003, line: 21, baseType: !426, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3140, file: !3003, line: 22, baseType: !473, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3140, file: !3003, line: 23, baseType: !495, size: 192, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3140, file: !3003, line: 24, baseType: !3146, size: 16384, offset: 256)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3147, size: 16384, elements: !1102)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !731, line: 51, size: 256, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3147, file: !731, line: 52, baseType: !3150, size: 256)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !731, line: 37, size: 256, elements: !3151)
!3151 = !{!3152, !3159, !3160, !3164}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3150, file: !731, line: 39, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3154, line: 83, baseType: !3155)
!3154 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3154, line: 82, baseType: !3157)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !85}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3150, file: !731, line: 40, baseType: !136, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3150, file: !731, line: 46, baseType: !3161, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3154, line: 86, baseType: !3162)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3154, line: 85, baseType: !2184)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3150, file: !731, line: 48, baseType: !3017, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2556, file: !1665, line: 1112, baseType: !3017, size: 64, offset: 15488)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2556, file: !1665, line: 1113, baseType: !3017, size: 64, offset: 15552)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2556, file: !1665, line: 1115, baseType: !3017, size: 64, offset: 15616)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2556, file: !1665, line: 1116, baseType: !3013, size: 192, offset: 15680)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2556, file: !1665, line: 1117, baseType: !136, size: 64, offset: 15872)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2556, file: !1665, line: 1118, baseType: !140, size: 64, offset: 15936)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2556, file: !1665, line: 1119, baseType: !7, size: 32, offset: 16000)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2556, file: !1665, line: 1121, baseType: !419, size: 64, offset: 16064)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2556, file: !1665, line: 1125, baseType: !3174, size: 64, offset: 16128)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1665, line: 43, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2556, file: !1665, line: 1127, baseType: !514, size: 32, offset: 16192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2556, file: !1665, line: 1128, baseType: !7, size: 32, offset: 16224)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2556, file: !1665, line: 1130, baseType: !3179, size: 128, offset: 16256)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3180, line: 37, size: 128, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3179, file: !3180, line: 38, baseType: !85, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3179, file: !3180, line: 39, baseType: !373, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3179, file: !3180, line: 40, baseType: !3185, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3180, line: 24, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2556, file: !1665, line: 1131, baseType: !3188, size: 256, offset: 16384)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3189, line: 12, size: 256, elements: !3190)
!3189 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3190 = !{!3191, !3192, !3193, !3194}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3188, file: !3189, line: 13, baseType: !653, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3188, file: !3189, line: 14, baseType: !136, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3188, file: !3189, line: 15, baseType: !136, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3188, file: !3189, line: 16, baseType: !642, size: 8, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2556, file: !1665, line: 1134, baseType: !551, size: 64, offset: 16640)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2556, file: !1665, line: 1135, baseType: !551, size: 64, offset: 16704)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2556, file: !1665, line: 1138, baseType: !426, size: 32, offset: 16768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2556, file: !1665, line: 1141, baseType: !360, size: 32, offset: 16800)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2556, file: !1665, line: 1143, baseType: !3200, size: 64, offset: 16832)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1665, line: 735, size: 64, elements: !3201)
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3200, file: !1665, line: 736, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2556, file: !1665, line: 1147, baseType: !1172, size: 128, offset: 16896)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2556, file: !1665, line: 1149, baseType: !2555, size: 64, offset: 17024)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2556, file: !1665, line: 1151, baseType: !3207, size: 64, offset: 17088)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1665, line: 1151, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2556, file: !1665, line: 1188, baseType: !137, size: 64, offset: 17152)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2556, file: !1665, line: 1191, baseType: !3211, size: 64, offset: 17216)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1665, line: 44, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2556, file: !1665, line: 1194, baseType: !3214, size: 64, offset: 17280)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1665, line: 45, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2556, file: !1665, line: 1197, baseType: !3217, size: 64, offset: 17344)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1665, line: 61, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2556, file: !1665, line: 1199, baseType: !3220, size: 64, offset: 17408)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3222, line: 99, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3223 = !{!3224, !3225, !3226}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3221, file: !3222, line: 100, baseType: !350, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3221, file: !3222, line: 101, baseType: !373, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3221, file: !3222, line: 103, baseType: !199, size: 16, offset: 96)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2556, file: !1665, line: 1202, baseType: !3228, size: 64, offset: 17472)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1665, line: 48, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2556, file: !1665, line: 1205, baseType: !136, size: 64, offset: 17536)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2556, file: !1665, line: 1206, baseType: !3232, size: 64, offset: 17600)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !731, line: 14, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !731, line: 12, size: 384, elements: !3235)
!3235 = !{!3236}
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !3234, file: !731, line: 13, baseType: !3237, size: 384)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !731, line: 13, size: 384, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3237, file: !731, line: 13, baseType: !85, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3237, file: !731, line: 13, baseType: !85, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3237, file: !731, line: 13, baseType: !85, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3237, file: !731, line: 13, baseType: !3243, size: 256, offset: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3244, line: 37, size: 256, elements: !3245)
!3244 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3245 = !{!3246, !3251, !3264, !3270, !3279, !3306, !3311}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3243, file: !3244, line: 42, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 39, size: 64, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3247, file: !3244, line: 40, baseType: !2913, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3247, file: !3244, line: 41, baseType: !520, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3243, file: !3244, line: 50, baseType: !3252, size: 192)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 45, size: 192, elements: !3253)
!3253 = !{!3254, !3256, !3257, !3263}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3252, file: !3244, line: 46, baseType: !3255, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !142, line: 95, baseType: !85)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3252, file: !3244, line: 47, baseType: !85, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3252, file: !3244, line: 48, baseType: !3258, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3244, line: 11, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3244, line: 8, size: 64, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3259, file: !3244, line: 9, baseType: !85, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3259, file: !3244, line: 10, baseType: !137, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3252, file: !3244, line: 49, baseType: !85, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3243, file: !3244, line: 57, baseType: !3265, size: 128)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 53, size: 128, elements: !3266)
!3266 = !{!3267, !3268, !3269}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3265, file: !3244, line: 54, baseType: !2913, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3265, file: !3244, line: 55, baseType: !520, size: 32, offset: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3265, file: !3244, line: 56, baseType: !3258, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3243, file: !3244, line: 66, baseType: !3271, size: 256)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 60, size: 256, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3278}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3271, file: !3244, line: 61, baseType: !2913, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3271, file: !3244, line: 62, baseType: !520, size: 32, offset: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3271, file: !3244, line: 63, baseType: !85, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3271, file: !3244, line: 64, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !142, line: 94, baseType: !959)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3271, file: !3244, line: 65, baseType: !3277, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3243, file: !3244, line: 105, baseType: !3280, size: 256)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 69, size: 256, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3280, file: !3244, line: 70, baseType: !137, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3244, line: 79, baseType: !3284, size: 192, offset: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3244, line: 79, size: 192, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3295, !3300}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3284, file: !3244, line: 81, baseType: !85, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3284, file: !3244, line: 86, baseType: !265, size: 16)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3284, file: !3244, line: 92, baseType: !3289, size: 192)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !3244, line: 88, size: 192, elements: !3290)
!3290 = !{!3291, !3293, !3294}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3289, file: !3244, line: 89, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !2709)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3289, file: !3244, line: 90, baseType: !137, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3289, file: !3244, line: 91, baseType: !137, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3284, file: !3244, line: 97, baseType: !3296, size: 96)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !3244, line: 94, size: 96, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3296, file: !3244, line: 95, baseType: !3292, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3296, file: !3244, line: 96, baseType: !240, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3284, file: !3244, line: 103, baseType: !3301, size: 128)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !3244, line: 99, size: 128, elements: !3302)
!3302 = !{!3303, !3304, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3301, file: !3244, line: 100, baseType: !136, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3301, file: !3244, line: 101, baseType: !240, size: 32, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3301, file: !3244, line: 102, baseType: !240, size: 32, offset: 96)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3243, file: !3244, line: 111, baseType: !3307, size: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 108, size: 128, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3307, file: !3244, line: 109, baseType: !147, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3307, file: !3244, line: 110, baseType: !85, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3243, file: !3244, line: 118, baseType: !3312, size: 128)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3244, line: 114, size: 128, elements: !3313)
!3313 = !{!3314, !3315, !3316}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3312, file: !3244, line: 115, baseType: !137, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3312, file: !3244, line: 116, baseType: !85, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3312, file: !3244, line: 117, baseType: !7, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2556, file: !1665, line: 1208, baseType: !3097, size: 448, offset: 17664)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2556, file: !1665, line: 1215, baseType: !551, size: 64, offset: 18112)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2556, file: !1665, line: 1217, baseType: !551, size: 64, offset: 18176)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2556, file: !1665, line: 1219, baseType: !551, size: 64, offset: 18240)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2556, file: !1665, line: 1223, baseType: !3322, size: 64, offset: 18304)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3323, line: 99, baseType: !3324)
!3323 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3323, line: 99, size: 64, elements: !3325)
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3324, file: !3323, line: 99, baseType: !204, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2556, file: !1665, line: 1225, baseType: !770, size: 32, offset: 18368)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2556, file: !1665, line: 1226, baseType: !85, size: 32, offset: 18400)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2556, file: !1665, line: 1227, baseType: !85, size: 32, offset: 18432)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2556, file: !1665, line: 1231, baseType: !3331, size: 64, offset: 18496)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1665, line: 1231, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2556, file: !1665, line: 1233, baseType: !394, size: 128, offset: 18560)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2556, file: !1665, line: 1240, baseType: !3335, size: 64, offset: 18688)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1665, line: 62, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2556, file: !1665, line: 1242, baseType: !3338, size: 64, offset: 18752)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1665, line: 1242, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2556, file: !1665, line: 1244, baseType: !394, size: 128, offset: 18816)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2556, file: !1665, line: 1245, baseType: !3342, size: 64, offset: 18944)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1665, line: 51, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2556, file: !1665, line: 1246, baseType: !346, size: 256, offset: 19008)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2556, file: !1665, line: 1247, baseType: !7, size: 32, offset: 19264)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2556, file: !1665, line: 1250, baseType: !3347, size: 64, offset: 19328)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1665, line: 57, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2556, file: !1665, line: 1251, baseType: !346, size: 256, offset: 19392)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2556, file: !1665, line: 1252, baseType: !394, size: 128, offset: 19648)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2556, file: !1665, line: 1259, baseType: !1663, size: 64, offset: 19776)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2556, file: !1665, line: 1260, baseType: !265, size: 16, offset: 19840)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2556, file: !1665, line: 1261, baseType: !265, size: 16, offset: 19856)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2556, file: !1665, line: 1314, baseType: !3355, size: 64, offset: 19904)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3357, line: 62, size: 256, align: 256, elements: !3358)
!3357 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3356, file: !3357, line: 75, baseType: !240, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3356, file: !3357, line: 90, baseType: !240, size: 32, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3356, file: !3357, line: 112, baseType: !552, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3356, file: !3357, line: 132, baseType: !240, size: 32, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3356, file: !3357, line: 140, baseType: !240, size: 32, offset: 160)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3356, file: !3357, line: 149, baseType: !240, size: 32, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3356, file: !3357, line: 154, baseType: !3366, offset: 224)
!3366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !510)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2556, file: !1665, line: 1315, baseType: !608, size: 32, offset: 19968)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2556, file: !1665, line: 1316, baseType: !608, size: 32, offset: 20000)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2556, file: !1665, line: 1321, baseType: !136, size: 64, offset: 20032)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2556, file: !1665, line: 1325, baseType: !85, size: 32, offset: 20096)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2556, file: !1665, line: 1326, baseType: !85, size: 32, offset: 20128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2556, file: !1665, line: 1327, baseType: !85, size: 32, offset: 20160)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2556, file: !1665, line: 1328, baseType: !85, size: 32, offset: 20192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2556, file: !1665, line: 1329, baseType: !416, size: 128, align: 64, offset: 20224)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2556, file: !1665, line: 1332, baseType: !3376, size: 128, offset: 20352)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3377, line: 51, size: 128, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3378 = !{!3379, !3384, !3385}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3376, file: !3377, line: 60, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3381, line: 7, size: 64, elements: !3382)
!3381 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3382 = !{!3383}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3380, file: !3381, line: 12, baseType: !2783, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3376, file: !3377, line: 63, baseType: !642, size: 8, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3376, file: !3377, line: 70, baseType: !642, size: 8, offset: 72)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2556, file: !1665, line: 1335, baseType: !3387, size: 64, offset: 20480)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1665, line: 59, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2556, file: !1665, line: 1337, baseType: !3390, size: 128, offset: 20544)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3377, line: 39, size: 128, elements: !3391)
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3390, file: !3377, line: 40, baseType: !1190, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3390, file: !3377, line: 42, baseType: !240, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3390, file: !3377, line: 43, baseType: !240, size: 32, offset: 96)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2556, file: !1665, line: 1340, baseType: !3396, size: 64, offset: 20672)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1665, line: 69, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2556, file: !1665, line: 1351, baseType: !85, size: 32, offset: 20736)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2556, file: !1665, line: 1352, baseType: !85, size: 32, offset: 20768)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2556, file: !1665, line: 1354, baseType: !136, size: 64, offset: 20800)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2556, file: !1665, line: 1364, baseType: !551, size: 64, offset: 20864)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2556, file: !1665, line: 1365, baseType: !551, size: 64, offset: 20928)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2556, file: !1665, line: 1412, baseType: !136, size: 64, offset: 20992)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2556, file: !1665, line: 1453, baseType: !3405, size: 64, offset: 21056)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1665, line: 1453, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2556, file: !1665, line: 1457, baseType: !3408, size: 64, offset: 21120)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3410)
!3410 = !{!3411, !3412, !3431, !3434, !3435, !3468, !3478}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3409, file: !57, line: 62, baseType: !56, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !57, line: 64, baseType: !3413, size: 192, offset: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3409, file: !57, line: 64, size: 192, elements: !3414)
!3414 = !{!3415, !3426}
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !57, line: 65, baseType: !3416, size: 192)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !57, line: 65, size: 192, elements: !3417)
!3417 = !{!3418, !3425}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3416, file: !57, line: 66, baseType: !3419, size: 128)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3420, line: 50, size: 128, elements: !3421)
!3420 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3421 = !{!3422, !3423, !3424}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3419, file: !3420, line: 52, baseType: !136, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3419, file: !3420, line: 54, baseType: !7, size: 32, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3419, file: !3420, line: 55, baseType: !7, size: 32, offset: 96)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3416, file: !57, line: 67, baseType: !136, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !57, line: 70, baseType: !3427, size: 192)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !57, line: 70, size: 192, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3427, file: !57, line: 71, baseType: !416, size: 128, align: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3427, file: !57, line: 72, baseType: !136, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3409, file: !57, line: 76, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3409, file: !57, line: 77, baseType: !136, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3409, file: !57, line: 79, baseType: !3436, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3420, line: 25, size: 256, elements: !3438)
!3438 = !{!3439, !3445, !3449}
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !3437, file: !3420, line: 26, baseType: !3440, size: 128)
!3440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3437, file: !3420, line: 26, size: 128, elements: !3441)
!3441 = !{!3442, !3444}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3440, file: !3420, line: 27, baseType: !3443, size: 128)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, elements: !2971)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3440, file: !3420, line: 28, baseType: !3443, size: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3437, file: !3420, line: 31, baseType: !3446, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3448)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3420, line: 23, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3437, file: !3420, line: 33, baseType: !3450, size: 64, offset: 192)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3437, file: !3420, line: 33, size: 64, elements: !3451)
!3451 = !{!3452, !3458, !3463}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3450, file: !3420, line: 38, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3450, file: !3420, line: 34, size: 64, elements: !3454)
!3454 = !{!3455, !3456, !3457}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3453, file: !3420, line: 35, baseType: !568, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3453, file: !3420, line: 36, baseType: !381, size: 8, offset: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3453, file: !3420, line: 37, baseType: !381, size: 8, offset: 40)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3450, file: !3420, line: 42, baseType: !3459, size: 16)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3450, file: !3420, line: 39, size: 16, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3459, file: !3420, line: 40, baseType: !381, size: 8)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3459, file: !3420, line: 41, baseType: !381, size: 8, offset: 8)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3450, file: !3420, line: 46, baseType: !3464, size: 16)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3450, file: !3420, line: 43, size: 16, elements: !3465)
!3465 = !{!3466, !3467}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3464, file: !3420, line: 44, baseType: !381, size: 8)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3464, file: !3420, line: 45, baseType: !381, size: 8, offset: 8)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3409, file: !57, line: 81, baseType: !3469, size: 64, offset: 448)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3470, file: !57, line: 86, baseType: !3432, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3470, file: !57, line: 87, baseType: !136, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3470, file: !57, line: 88, baseType: !136, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3470, file: !57, line: 89, baseType: !136, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3470, file: !57, line: 90, baseType: !642, size: 8, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3470, file: !57, line: 92, baseType: !3469, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3409, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2556, file: !1665, line: 1463, baseType: !3480, offset: 21184)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1665, line: 739, elements: !1479)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2556, file: !1665, line: 1470, baseType: !416, size: 128, align: 64, offset: 21184)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2556, file: !1665, line: 1471, baseType: !473, size: 32, offset: 21312)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2556, file: !1665, line: 1472, baseType: !85, size: 32, offset: 21344)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2556, file: !1665, line: 1474, baseType: !2555, size: 64, offset: 21376)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2556, file: !1665, line: 1475, baseType: !2080, size: 320, offset: 21440)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2556, file: !1665, line: 1478, baseType: !3487, size: 64, offset: 21760)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1665, line: 1478, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2556, file: !1665, line: 1482, baseType: !473, size: 32, offset: 21824)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2556, file: !1665, line: 1489, baseType: !137, size: 64, offset: 21888)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2556, file: !1665, line: 1504, baseType: !137, size: 64, offset: 21952)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2556, file: !1665, line: 1505, baseType: !552, size: 64, offset: 22016)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2556, file: !1665, line: 1506, baseType: !551, size: 64, offset: 22080)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2556, file: !1665, line: 1507, baseType: !552, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2556, file: !1665, line: 1508, baseType: !552, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2556, file: !1665, line: 1509, baseType: !552, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2556, file: !1665, line: 1510, baseType: !416, size: 128, align: 64, offset: 22208)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2556, file: !1665, line: 1511, baseType: !85, size: 32, offset: 22336)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2556, file: !1665, line: 1515, baseType: !3500, size: 64, offset: 22400)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !411, line: 56, size: 64, elements: !3501)
!3501 = !{!3502}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3500, file: !411, line: 57, baseType: !414, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2556, file: !1665, line: 1518, baseType: !3500, size: 64, offset: 22464)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2556, file: !1665, line: 1528, baseType: !416, size: 128, align: 64, offset: 22528)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2556, file: !1665, line: 1552, baseType: !3506, size: 35328, offset: 23040)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3507, line: 430, size: 35328, elements: !3508)
!3507 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3508 = !{!3509, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3538, !3539, !3540, !3541, !3542, !3543, !3546, !3547, !3548, !3549}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3506, file: !3507, line: 432, baseType: !3510, size: 192)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3511, size: 192, elements: !465)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3512, line: 16, size: 64, elements: !3513)
!3512 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3511, file: !3512, line: 17, baseType: !336, size: 16)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3511, file: !3512, line: 18, baseType: !336, size: 16, offset: 16)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3511, file: !3512, line: 19, baseType: !336, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3511, file: !3512, line: 19, baseType: !336, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3511, file: !3512, line: 19, baseType: !336, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3511, file: !3512, line: 19, baseType: !336, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3511, file: !3512, line: 19, baseType: !336, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3511, file: !3512, line: 20, baseType: !336, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3511, file: !3512, line: 20, baseType: !336, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3511, file: !3512, line: 20, baseType: !336, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3511, file: !3512, line: 20, baseType: !336, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3511, file: !3512, line: 20, baseType: !336, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3511, file: !3512, line: 20, baseType: !336, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3506, file: !3507, line: 436, baseType: !136, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3506, file: !3507, line: 440, baseType: !199, size: 16, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3506, file: !3507, line: 441, baseType: !199, size: 16, offset: 272)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3506, file: !3507, line: 442, baseType: !199, size: 16, offset: 288)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3506, file: !3507, line: 443, baseType: !199, size: 16, offset: 304)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3506, file: !3507, line: 447, baseType: !136, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3506, file: !3507, line: 448, baseType: !136, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3506, file: !3507, line: 459, baseType: !3535, size: 256, offset: 448)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3536, size: 256, elements: !491)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3507, line: 428, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3506, file: !3507, line: 461, baseType: !136, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3506, file: !3507, line: 463, baseType: !136, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3506, file: !3507, line: 465, baseType: !136, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3506, file: !3507, line: 466, baseType: !136, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3506, file: !3507, line: 467, baseType: !136, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3506, file: !3507, line: 473, baseType: !3544, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3507, line: 10, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3506, file: !3507, line: 480, baseType: !136, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3506, file: !3507, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3506, file: !3507, line: 491, baseType: !608, size: 32, offset: 1184)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3506, file: !3507, line: 501, baseType: !3550, size: 33792, offset: 1536)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3551, line: 448, size: 33792, elements: !3552)
!3551 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3552 = !{!3553, !3554, !3555, !3715, !3716, !3722, !3723}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3550, file: !3551, line: 461, baseType: !7, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3550, file: !3551, line: 468, baseType: !136, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3550, file: !3551, line: 476, baseType: !3556, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3551, line: 356, size: 33280, align: 512, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3557, file: !3551, line: 358, baseType: !7, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3557, file: !3551, line: 361, baseType: !7, size: 32, offset: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3557, file: !3551, line: 364, baseType: !551, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3557, file: !3551, line: 367, baseType: !551, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3557, file: !3551, line: 370, baseType: !551, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3557, file: !3551, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3557, file: !3551, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3557, file: !3551, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3557, file: !3551, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3557, file: !3551, line: 397, baseType: !3569, size: 32768, offset: 512)
!3569 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3551, line: 348, size: 32768, elements: !3570)
!3570 = !{!3571, !3586, !3621, !3698, !3711}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3569, file: !3551, line: 349, baseType: !3572, size: 896)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3551, line: 12, size: 896, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3585}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3572, file: !3551, line: 13, baseType: !608, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3572, file: !3551, line: 14, baseType: !608, size: 32, offset: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3572, file: !3551, line: 15, baseType: !608, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3572, file: !3551, line: 16, baseType: !608, size: 32, offset: 96)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3572, file: !3551, line: 17, baseType: !608, size: 32, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3572, file: !3551, line: 18, baseType: !608, size: 32, offset: 160)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3572, file: !3551, line: 19, baseType: !608, size: 32, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3572, file: !3551, line: 22, baseType: !3582, size: 640, offset: 224)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 640, elements: !3583)
!3583 = !{!3584}
!3584 = !DISubrange(count: 20)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3572, file: !3551, line: 25, baseType: !608, size: 32, offset: 864)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3569, file: !3551, line: 350, baseType: !3587, size: 4096, align: 128)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3551, line: 34, size: 4096, align: 128, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3608, !3609, !3610, !3612, !3614, !3616}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3587, file: !3551, line: 35, baseType: !336, size: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3587, file: !3551, line: 36, baseType: !336, size: 16, offset: 16)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3587, file: !3551, line: 37, baseType: !336, size: 16, offset: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3587, file: !3551, line: 38, baseType: !336, size: 16, offset: 48)
!3593 = !DIDerivedType(tag: DW_TAG_member, scope: !3587, file: !3551, line: 39, baseType: !3594, size: 128, offset: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3587, file: !3551, line: 39, size: 128, elements: !3595)
!3595 = !{!3596, !3601}
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !3551, line: 40, baseType: !3597, size: 128)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !3551, line: 40, size: 128, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3597, file: !3551, line: 41, baseType: !551, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3597, file: !3551, line: 42, baseType: !551, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !3551, line: 44, baseType: !3602, size: 128)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !3551, line: 44, size: 128, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3602, file: !3551, line: 45, baseType: !608, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3602, file: !3551, line: 46, baseType: !608, size: 32, offset: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3602, file: !3551, line: 47, baseType: !608, size: 32, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3602, file: !3551, line: 48, baseType: !608, size: 32, offset: 96)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3587, file: !3551, line: 51, baseType: !608, size: 32, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3587, file: !3551, line: 52, baseType: !608, size: 32, offset: 224)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3587, file: !3551, line: 55, baseType: !3611, size: 1024, offset: 256)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 1024, elements: !243)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3587, file: !3551, line: 58, baseType: !3613, size: 2048, offset: 1280)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 2048, elements: !1102)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3587, file: !3551, line: 60, baseType: !3615, size: 384, offset: 3328)
!3615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 384, elements: !210)
!3616 = !DIDerivedType(tag: DW_TAG_member, scope: !3587, file: !3551, line: 62, baseType: !3617, size: 384, offset: 3712)
!3617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3587, file: !3551, line: 62, size: 384, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3617, file: !3551, line: 63, baseType: !3615, size: 384)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3617, file: !3551, line: 64, baseType: !3615, size: 384)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3569, file: !3551, line: 351, baseType: !3622, size: 1088)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3551, line: 79, size: 1088, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3697}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3622, file: !3551, line: 80, baseType: !608, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3622, file: !3551, line: 81, baseType: !608, size: 32, offset: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3622, file: !3551, line: 82, baseType: !608, size: 32, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3622, file: !3551, line: 83, baseType: !608, size: 32, offset: 96)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3622, file: !3551, line: 84, baseType: !608, size: 32, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3622, file: !3551, line: 85, baseType: !608, size: 32, offset: 160)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3622, file: !3551, line: 86, baseType: !608, size: 32, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3622, file: !3551, line: 88, baseType: !3582, size: 640, offset: 224)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3622, file: !3551, line: 89, baseType: !381, size: 8, offset: 864)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3622, file: !3551, line: 90, baseType: !381, size: 8, offset: 872)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3622, file: !3551, line: 91, baseType: !381, size: 8, offset: 880)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3622, file: !3551, line: 92, baseType: !381, size: 8, offset: 888)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3622, file: !3551, line: 93, baseType: !381, size: 8, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3622, file: !3551, line: 94, baseType: !381, size: 8, offset: 904)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3622, file: !3551, line: 95, baseType: !3639, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3641, line: 11, size: 128, elements: !3642)
!3641 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3640, file: !3641, line: 12, baseType: !147, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3640, file: !3641, line: 13, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3647, line: 103, size: 1344, elements: !3648)
!3647 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3677, !3678, !3679}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3646, file: !3647, line: 109, baseType: !136, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3646, file: !3647, line: 110, baseType: !136, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3646, file: !3647, line: 111, baseType: !136, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3646, file: !3647, line: 112, baseType: !136, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3646, file: !3647, line: 113, baseType: !136, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3646, file: !3647, line: 114, baseType: !136, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3646, file: !3647, line: 117, baseType: !136, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3646, file: !3647, line: 118, baseType: !136, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3646, file: !3647, line: 119, baseType: !136, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3646, file: !3647, line: 120, baseType: !136, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3646, file: !3647, line: 121, baseType: !136, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3646, file: !3647, line: 122, baseType: !136, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3646, file: !3647, line: 123, baseType: !136, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3646, file: !3647, line: 124, baseType: !136, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3646, file: !3647, line: 125, baseType: !136, size: 64, offset: 896)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3646, file: !3647, line: 139, baseType: !136, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3646, file: !3647, line: 142, baseType: !136, size: 64, offset: 1024)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !3647, line: 144, baseType: !3667, size: 64, offset: 1088)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3646, file: !3647, line: 144, size: 64, elements: !3668)
!3668 = !{!3669, !3670, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3667, file: !3647, line: 146, baseType: !336, size: 16)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3667, file: !3647, line: 148, baseType: !551, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3667, file: !3647, line: 150, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3647, line: 59, size: 64, elements: !3673)
!3673 = !{!3674, !3675, !3676}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3672, file: !3647, line: 61, baseType: !551, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3672, file: !3647, line: 63, baseType: !551, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3672, file: !3647, line: 65, baseType: !551, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3646, file: !3647, line: 153, baseType: !136, size: 64, offset: 1152)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3646, file: !3647, line: 154, baseType: !136, size: 64, offset: 1216)
!3679 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !3647, line: 156, baseType: !3680, size: 64, offset: 1280)
!3680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3646, file: !3647, line: 156, size: 64, elements: !3681)
!3681 = !{!3682, !3683, !3684}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3680, file: !3647, line: 158, baseType: !336, size: 16)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3680, file: !3647, line: 160, baseType: !551, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3680, file: !3647, line: 162, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3647, line: 69, size: 64, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3685, file: !3647, line: 71, baseType: !551, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3685, file: !3647, line: 73, baseType: !551, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3685, file: !3647, line: 75, baseType: !551, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3685, file: !3647, line: 77, baseType: !551, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3685, file: !3647, line: 80, baseType: !551, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3685, file: !3647, line: 83, baseType: !551, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3685, file: !3647, line: 86, baseType: !551, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3685, file: !3647, line: 88, baseType: !551, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3685, file: !3647, line: 93, baseType: !551, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3685, file: !3647, line: 100, baseType: !551, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3622, file: !3551, line: 96, baseType: !608, size: 32, offset: 1024)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3569, file: !3551, line: 352, baseType: !3699, size: 4608, align: 512)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3551, line: 333, size: 4608, align: 512, elements: !3700)
!3700 = !{!3701, !3702, !3709}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3699, file: !3551, line: 334, baseType: !3587, size: 4096, align: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3699, file: !3551, line: 335, baseType: !3703, size: 512, offset: 4096)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3551, line: 312, size: 512, elements: !3704)
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3703, file: !3551, line: 313, baseType: !551, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3703, file: !3551, line: 314, baseType: !551, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3703, file: !3551, line: 315, baseType: !3708, size: 384, offset: 128)
!3708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 384, elements: !629)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3699, file: !3551, line: 336, baseType: !3710, offset: 4608)
!3710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, elements: !510)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3569, file: !3551, line: 353, baseType: !3712, size: 32768)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 32768, elements: !3713)
!3713 = !{!3714}
!3714 = !DISubrange(count: 4096)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3550, file: !3551, line: 484, baseType: !3556, size: 64, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3550, file: !3551, line: 491, baseType: !3717, size: 128, offset: 256)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3551, line: 404, size: 128, elements: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3717, file: !3551, line: 424, baseType: !551, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3717, file: !3551, line: 432, baseType: !7, size: 32, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3717, file: !3551, line: 440, baseType: !7, size: 32, offset: 96)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3550, file: !3551, line: 498, baseType: !3717, size: 128, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3550, file: !3551, line: 508, baseType: !3557, size: 33280, align: 512, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2538, file: !2539, line: 16, baseType: !495, size: 192, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2538, file: !2539, line: 17, baseType: !373, size: 32, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1013, file: !35, line: 1240, baseType: !137, size: 64, offset: 6912)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1013, file: !35, line: 1243, baseType: !608, size: 32, offset: 6976)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1013, file: !35, line: 1245, baseType: !599, size: 64, offset: 7040)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1013, file: !35, line: 1246, baseType: !599, size: 64, offset: 7104)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1013, file: !35, line: 1248, baseType: !240, size: 32, offset: 7168)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1013, file: !35, line: 1249, baseType: !3732, size: 64, offset: 7232)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1013, file: !35, line: 1252, baseType: !3735, size: 256, offset: 7296)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !243)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1013, file: !35, line: 1253, baseType: !3737, size: 128, offset: 7552)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3738, line: 21, baseType: !3739)
!3738 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3738, line: 19, size: 128, elements: !3740)
!3740 = !{!3741}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3739, file: !3738, line: 20, baseType: !3742, size: 128)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !2971)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1013, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1013, file: !35, line: 1261, baseType: !346, size: 256, offset: 7744)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1013, file: !35, line: 1267, baseType: !188, size: 64, offset: 8000)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1013, file: !35, line: 1269, baseType: !3747, size: 64, offset: 8064)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !766, line: 128, size: 1024, align: 512, elements: !3750)
!3750 = !{!3751, !3755, !3756, !3763, !3769, !3773, !3777, !3781, !3782, !3786, !3790, !3795, !3799}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3749, file: !766, line: 129, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!85, !764, !7}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3749, file: !766, line: 130, baseType: !3752, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3749, file: !766, line: 131, baseType: !3757, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!85, !3760, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3749, file: !766, line: 132, baseType: !3764, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!85, !3760, !7, !188, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3749, file: !766, line: 134, baseType: !3770, size: 64, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!85, !3760}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3749, file: !766, line: 135, baseType: !3774, size: 64, offset: 320)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!85, !764}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3749, file: !766, line: 136, baseType: !3778, size: 64, offset: 384)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !764}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3749, file: !766, line: 137, baseType: !3778, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3749, file: !766, line: 138, baseType: !3783, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !764, !804}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3749, file: !766, line: 139, baseType: !3787, size: 64, offset: 576)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!653, !764, !653, !85}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3749, file: !766, line: 140, baseType: !3791, size: 64, offset: 640)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!759, !3794}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3749, file: !766, line: 141, baseType: !3796, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!85, !926, !642}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3749, file: !766, line: 142, baseType: !3800, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!764, !764, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1013, file: !35, line: 1271, baseType: !3806, size: 448, offset: 8128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2320, line: 63, size: 448, elements: !3807)
!3807 = !{!3808, !3813, !3814, !3815, !3816, !3817, !3818}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3806, file: !2320, line: 64, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!136, !3812, !2318}
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3806, file: !2320, line: 66, baseType: !3809, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3806, file: !2320, line: 69, baseType: !147, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3806, file: !2320, line: 70, baseType: !85, size: 32, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3806, file: !2320, line: 71, baseType: !7, size: 32, offset: 224)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3806, file: !2320, line: 74, baseType: !394, size: 128, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3806, file: !2320, line: 85, baseType: !3819, size: 64, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1013, file: !35, line: 1274, baseType: !350, size: 64, offset: 8576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1013, file: !35, line: 1280, baseType: !350, size: 64, offset: 8640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1013, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1013, file: !35, line: 1286, baseType: !1431, size: 32, offset: 8736)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1013, file: !35, line: 1289, baseType: !2142, size: 64, offset: 8768)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1013, file: !35, line: 1290, baseType: !482, size: 64, offset: 8832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1013, file: !35, line: 1297, baseType: !726, size: 64, offset: 8896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1013, file: !35, line: 1304, baseType: !3828, size: 64, offset: 8960)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3829, line: 49, size: 64, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3830 = !{!3831}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3828, file: !3829, line: 50, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3829, line: 41, size: 512, align: 512, elements: !3834)
!3834 = !{!3835, !3836, !3841}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3833, file: !3829, line: 43, baseType: !426, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3833, file: !3829, line: 45, baseType: !3837, size: 192, offset: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3829, line: 29, size: 192, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3837, file: !3829, line: 30, baseType: !394, size: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3837, file: !3829, line: 32, baseType: !147, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3833, file: !3829, line: 46, baseType: !147, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1013, file: !35, line: 1305, baseType: !3828, size: 64, offset: 9024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1013, file: !35, line: 1306, baseType: !416, size: 128, align: 64, offset: 9088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1013, file: !35, line: 1307, baseType: !1612, size: 256, offset: 9216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1013, file: !35, line: 1309, baseType: !346, size: 256, offset: 9472)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1013, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1013, file: !35, line: 1317, baseType: !426, size: 32, align: 512, offset: 10240)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1013, file: !35, line: 1318, baseType: !394, size: 128, offset: 10304)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1013, file: !35, line: 1320, baseType: !426, size: 32, offset: 10432)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1013, file: !35, line: 1321, baseType: !394, size: 128, offset: 10496)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !805, file: !35, line: 656, baseType: !1163, size: 64, offset: 512)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !805, file: !35, line: 659, baseType: !137, size: 64, offset: 576)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !805, file: !35, line: 663, baseType: !136, size: 64, offset: 640)
!3854 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !35, line: 671, baseType: !3855, size: 32, offset: 704)
!3855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !35, line: 671, size: 32, elements: !3856)
!3856 = !{!3857, !3859}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3855, file: !35, line: 672, baseType: !3858, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3855, file: !35, line: 673, baseType: !7, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !805, file: !35, line: 675, baseType: !879, size: 32, offset: 736)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !805, file: !35, line: 676, baseType: !439, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !805, file: !35, line: 677, baseType: !915, size: 128, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !805, file: !35, line: 678, baseType: !915, size: 128, offset: 960)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !805, file: !35, line: 679, baseType: !915, size: 128, offset: 1088)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !805, file: !35, line: 680, baseType: !426, size: 32, offset: 1216)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !805, file: !35, line: 681, baseType: !199, size: 16, offset: 1248)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !805, file: !35, line: 682, baseType: !381, size: 8, offset: 1264)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !805, file: !35, line: 683, baseType: !381, size: 8, offset: 1272)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !805, file: !35, line: 684, baseType: !2451, size: 64, offset: 1280)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !805, file: !35, line: 691, baseType: !136, size: 64, offset: 1344)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !805, file: !35, line: 692, baseType: !583, size: 320, offset: 1408)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !805, file: !35, line: 694, baseType: !136, size: 64, offset: 1728)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !805, file: !35, line: 695, baseType: !136, size: 64, offset: 1792)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !805, file: !35, line: 697, baseType: !486, size: 128, offset: 1856)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !805, file: !35, line: 698, baseType: !394, size: 128, offset: 1984)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !805, file: !35, line: 707, baseType: !394, size: 128, offset: 2112)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !805, file: !35, line: 708, baseType: !394, size: 128, offset: 2240)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !35, line: 709, baseType: !3879, size: 128, offset: 2368)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !35, line: 709, size: 128, elements: !3880)
!3880 = !{!3881, !3882}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3879, file: !35, line: 710, baseType: !482, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3879, file: !35, line: 711, baseType: !416, size: 128, align: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !805, file: !35, line: 713, baseType: !352, size: 64, offset: 2496)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !805, file: !35, line: 714, baseType: !352, size: 64, offset: 2560)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !805, file: !35, line: 715, baseType: !373, size: 32, offset: 2624)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !805, file: !35, line: 716, baseType: !373, size: 32, offset: 2656)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !805, file: !35, line: 717, baseType: !373, size: 32, offset: 2688)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !805, file: !35, line: 719, baseType: !373, size: 32, offset: 2720)
!3889 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !35, line: 721, baseType: !3890, size: 64, offset: 2752)
!3890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !35, line: 721, size: 64, elements: !3891)
!3891 = !{!3892, !4016}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3890, file: !35, line: 722, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3896)
!3896 = !{!3897, !3898, !3902, !3906, !3910, !3911, !3912, !3918, !3931, !3935, !3939, !3940, !3944, !3945, !3949, !3954, !3955, !3959, !3963, !3969, !3970, !3974, !3975, !3979, !3983, !3984, !3989, !3993, !3997, !4001, !4005, !4006, !4012}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3895, file: !35, line: 1915, baseType: !1046, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3895, file: !35, line: 1916, baseType: !3899, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!439, !403, !439, !85}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3895, file: !35, line: 1917, baseType: !3903, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!957, !403, !653, !140, !1779}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3895, file: !35, line: 1918, baseType: !3907, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!957, !403, !188, !140, !1779}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3895, file: !35, line: 1919, baseType: !1365, size: 64, offset: 256)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3895, file: !35, line: 1920, baseType: !1365, size: 64, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3895, file: !35, line: 1921, baseType: !3913, size: 64, offset: 384)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!85, !1368, !3916, !7}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3895, file: !35, line: 1923, baseType: !3919, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!85, !403, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3924)
!3924 = !{!3925, !3930}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3923, file: !35, line: 1859, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!642, !3922, !188, !85, !439, !551, !7}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3923, file: !35, line: 1860, baseType: !439, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3895, file: !35, line: 1924, baseType: !3932, size: 64, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!1799, !403, !1801}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3895, file: !35, line: 1925, baseType: !3936, size: 64, offset: 576)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!147, !403, !7, !136}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3895, file: !35, line: 1926, baseType: !3936, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3895, file: !35, line: 1927, baseType: !3941, size: 64, offset: 704)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!85, !403, !1445}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3895, file: !35, line: 1928, baseType: !136, size: 64, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3895, file: !35, line: 1929, baseType: !3946, size: 64, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!85, !804, !403}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3895, file: !35, line: 1930, baseType: !3950, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!85, !403, !3953}
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !137)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3895, file: !35, line: 1931, baseType: !3946, size: 64, offset: 960)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3895, file: !35, line: 1932, baseType: !3956, size: 64, offset: 1024)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!85, !403, !439, !439, !85}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3895, file: !35, line: 1933, baseType: !3960, size: 64, offset: 1088)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!85, !85, !403, !85}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !35, line: 1934, baseType: !3964, size: 64, offset: 1152)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!85, !403, !85, !3967}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3895, file: !35, line: 1935, baseType: !1483, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3895, file: !35, line: 1936, baseType: !3971, size: 64, offset: 1280)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!85, !85}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3895, file: !35, line: 1937, baseType: !3964, size: 64, offset: 1344)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3895, file: !35, line: 1938, baseType: !3976, size: 64, offset: 1408)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!957, !3387, !403, !1779, !140, !7}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3895, file: !35, line: 1939, baseType: !3980, size: 64, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!957, !403, !1779, !3387, !140, !7}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3895, file: !35, line: 1940, baseType: !1421, size: 64, offset: 1536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3895, file: !35, line: 1941, baseType: !3985, size: 64, offset: 1600)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!85, !403, !85, !3988, !1342}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3895, file: !35, line: 1942, baseType: !3990, size: 64, offset: 1664)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!147, !403, !85, !439, !439}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3895, file: !35, line: 1944, baseType: !3994, size: 64, offset: 1728)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !1755, !403}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3895, file: !35, line: 1948, baseType: !3998, size: 64, offset: 1792)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!957, !403, !439, !403, !439, !140, !7}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3895, file: !35, line: 1950, baseType: !4002, size: 64, offset: 1856)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!439, !403, !439, !403, !439, !439, !7}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3895, file: !35, line: 1953, baseType: !3956, size: 64, offset: 1920)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3895, file: !35, line: 1954, baseType: !4007, size: 64, offset: 1984)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!85, !4010, !7}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3895, file: !35, line: 1955, baseType: !4013, size: 64, offset: 2048)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!85, !4010, !3916, !7}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3890, file: !35, line: 723, baseType: !2209, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !805, file: !35, line: 725, baseType: !4018, size: 64, offset: 2816)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !805, file: !35, line: 726, baseType: !1164, size: 1536, align: 64, offset: 2880)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !805, file: !35, line: 727, baseType: !394, size: 128, offset: 4416)
!4022 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !35, line: 728, baseType: !4023, size: 64, offset: 4544)
!4023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !35, line: 728, size: 64, elements: !4024)
!4024 = !{!4025, !4026, !4029, !4030}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4023, file: !35, line: 729, baseType: !3387, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4023, file: !35, line: 730, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4023, file: !35, line: 731, baseType: !653, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4023, file: !35, line: 732, baseType: !7, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !805, file: !35, line: 735, baseType: !240, size: 32, offset: 4608)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !805, file: !35, line: 738, baseType: !240, size: 32, offset: 4640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !805, file: !35, line: 739, baseType: !3732, size: 64, offset: 4672)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !805, file: !35, line: 750, baseType: !137, size: 64, offset: 4736)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !765, file: !766, line: 91, baseType: !4036, size: 256, offset: 448)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !243)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !765, file: !766, line: 94, baseType: !4038, size: 64, offset: 704)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4039, line: 25, size: 64, elements: !4040)
!4039 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4040 = !{!4041}
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !4039, line: 26, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4038, file: !4039, line: 26, size: 64, elements: !4043)
!4043 = !{!4044, !4045}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4042, file: !4039, line: 28, baseType: !552, size: 64, align: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !4042, file: !4039, line: 30, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4042, file: !4039, line: 30, size: 64, elements: !4047)
!4047 = !{!4048, !4049}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4046, file: !4039, line: 31, baseType: !426, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4046, file: !4039, line: 32, baseType: !85, size: 32, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !765, file: !766, line: 95, baseType: !3747, size: 64, offset: 768)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !765, file: !766, line: 96, baseType: !1012, size: 64, offset: 832)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !765, file: !766, line: 97, baseType: !136, size: 64, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !765, file: !766, line: 98, baseType: !137, size: 64, offset: 960)
!4054 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !766, line: 100, baseType: !4055, size: 128, offset: 1024)
!4055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !766, line: 100, size: 128, elements: !4056)
!4056 = !{!4057, !4058}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4055, file: !766, line: 101, baseType: !394, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4055, file: !766, line: 102, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !765, file: !766, line: 104, baseType: !394, size: 128, offset: 1152)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !765, file: !766, line: 105, baseType: !394, size: 128, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !765, file: !766, line: 113, baseType: !4063, size: 128, offset: 1408)
!4063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !766, line: 109, size: 128, elements: !4064)
!4064 = !{!4065, !4066, !4067}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4063, file: !766, line: 110, baseType: !486, size: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4063, file: !766, line: 111, baseType: !780, size: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4063, file: !766, line: 112, baseType: !416, size: 128, align: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !760, file: !761, line: 72, baseType: !1012, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !760, file: !761, line: 73, baseType: !85, size: 32, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !760, file: !761, line: 74, baseType: !844, size: 64, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !755, file: !756, line: 10, baseType: !764, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !404, file: !35, line: 1015, baseType: !804, size: 64, offset: 1344)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !404, file: !35, line: 1016, baseType: !3893, size: 64, offset: 1408)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !404, file: !35, line: 1018, baseType: !551, size: 64, offset: 1472)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !404, file: !35, line: 1020, baseType: !137, size: 64, offset: 1536)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !404, file: !35, line: 1023, baseType: !137, size: 64, offset: 1600)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !404, file: !35, line: 1027, baseType: !4078, size: 64, offset: 1664)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !404, file: !35, line: 1029, baseType: !1163, size: 64, offset: 1728)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !404, file: !35, line: 1030, baseType: !1431, size: 32, offset: 1792)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !404, file: !35, line: 1031, baseType: !1431, size: 32, offset: 1824)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !184, file: !185, line: 169, baseType: !4083, size: 64, offset: 2048)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !185, line: 24, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !184, file: !185, line: 171, baseType: !7, size: 32, offset: 2112)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !184, file: !185, line: 172, baseType: !2080, size: 320, offset: 2176)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !184, file: !185, line: 174, baseType: !4088, size: 64, offset: 2496)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !219)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !184, file: !185, line: 176, baseType: !4090, size: 64, offset: 2560)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4092, line: 43, size: 256, elements: !4093)
!4092 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c012cf1730b90d0f045b3aba026b552")
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !4091, file: !4092, line: 44, baseType: !85, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !4091, file: !4092, line: 45, baseType: !85, size: 32, offset: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4091, file: !4092, line: 46, baseType: !85, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4091, file: !4092, line: 47, baseType: !7, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4091, file: !4092, line: 48, baseType: !7, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4091, file: !4092, line: 49, baseType: !1980, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4091, file: !4092, line: 50, baseType: !4101, offset: 256)
!4101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4102, elements: !510)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !4092, line: 27, size: 512, elements: !4103)
!4103 = !{!4104, !4108, !4109}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !4102, file: !4092, line: 28, baseType: !4105, size: 448)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 448, elements: !4106)
!4106 = !{!4107}
!4107 = !DISubrange(count: 14)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4102, file: !4092, line: 29, baseType: !7, size: 32, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4102, file: !4092, line: 30, baseType: !7, size: 32, offset: 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !184, file: !185, line: 178, baseType: !4111, size: 64, offset: 2624)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !194, line: 93, size: 192, elements: !4113)
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4112, file: !194, line: 94, baseType: !569, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4112, file: !194, line: 95, baseType: !569, size: 32, offset: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4112, file: !194, line: 96, baseType: !569, size: 32, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4112, file: !194, line: 97, baseType: !569, size: 32, offset: 96)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4112, file: !194, line: 98, baseType: !569, size: 32, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4112, file: !194, line: 99, baseType: !569, size: 32, offset: 160)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !184, file: !185, line: 180, baseType: !209, size: 768, offset: 2688)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !184, file: !185, line: 181, baseType: !204, size: 64, offset: 3456)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !184, file: !185, line: 182, baseType: !204, size: 64, offset: 3520)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !184, file: !185, line: 183, baseType: !204, size: 64, offset: 3584)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !184, file: !185, line: 185, baseType: !4125, size: 64, offset: 3648)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!85, !183}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !184, file: !185, line: 186, baseType: !4129, size: 64, offset: 3712)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !183}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !184, file: !185, line: 187, baseType: !4133, size: 64, offset: 3776)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!85, !183, !403}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !184, file: !185, line: 188, baseType: !4137, size: 64, offset: 3840)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!85, !183, !7, !7, !85}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !184, file: !185, line: 190, baseType: !4141, size: 64, offset: 3904)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !185, line: 345, size: 576, elements: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4216, !4217}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4142, file: !185, line: 347, baseType: !137, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4142, file: !185, line: 349, baseType: !85, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4142, file: !185, line: 350, baseType: !188, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4142, file: !185, line: 352, baseType: !183, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4142, file: !185, line: 353, baseType: !4149, size: 64, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !185, line: 310, size: 960, elements: !4151)
!4151 = !{!4152, !4153, !4157, !4168, !4172, !4176, !4205, !4209, !4210, !4211, !4212, !4213, !4214, !4215}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4150, file: !185, line: 312, baseType: !137, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4150, file: !185, line: 314, baseType: !4154, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4141, !7, !7, !85}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4150, file: !185, line: 315, baseType: !4158, size: 64, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !4141, !4161, !7}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !185, line: 32, size: 64, elements: !4164)
!4164 = !{!4165, !4166, !4167}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4163, file: !185, line: 33, baseType: !197, size: 16)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4163, file: !185, line: 34, baseType: !197, size: 16, offset: 16)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4163, file: !185, line: 35, baseType: !569, size: 32, offset: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4150, file: !185, line: 317, baseType: !4169, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!642, !4141, !7, !7, !85}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4150, file: !185, line: 318, baseType: !4173, size: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!642, !4149, !183}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4150, file: !185, line: 319, baseType: !4177, size: 64, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!85, !4149, !183, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4183, line: 362, size: 1600, elements: !4184)
!4183 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4184 = !{!4185, !4187, !4188, !4189, !4190, !4191, !4193, !4195, !4196, !4197, !4198, !4199, !4200, !4202, !4203, !4204}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4182, file: !4183, line: 364, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4183, line: 15, baseType: !136)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4182, file: !4183, line: 366, baseType: !197, size: 16, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4182, file: !4183, line: 367, baseType: !197, size: 16, offset: 80)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4182, file: !4183, line: 368, baseType: !197, size: 16, offset: 96)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4182, file: !4183, line: 369, baseType: !197, size: 16, offset: 112)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4182, file: !4183, line: 371, baseType: !4192, size: 64, offset: 128)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4186, size: 64, elements: !205)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4182, file: !4183, line: 372, baseType: !4194, size: 768, offset: 192)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4186, size: 768, elements: !210)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4182, file: !4183, line: 373, baseType: !4192, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4182, file: !4183, line: 374, baseType: !4192, size: 64, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4182, file: !4183, line: 375, baseType: !4192, size: 64, offset: 1088)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4182, file: !4183, line: 376, baseType: !4192, size: 64, offset: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4182, file: !4183, line: 377, baseType: !4192, size: 64, offset: 1216)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4182, file: !4183, line: 378, baseType: !4201, size: 128, offset: 1280)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4186, size: 128, elements: !219)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4182, file: !4183, line: 379, baseType: !4192, size: 64, offset: 1408)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4182, file: !4183, line: 380, baseType: !4192, size: 64, offset: 1472)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4182, file: !4183, line: 382, baseType: !4186, size: 64, offset: 1536)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4150, file: !185, line: 320, baseType: !4206, size: 64, offset: 384)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !4141}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4150, file: !185, line: 321, baseType: !4206, size: 64, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4150, file: !185, line: 323, baseType: !642, size: 8, offset: 512)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4150, file: !185, line: 324, baseType: !85, size: 32, offset: 544)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4150, file: !185, line: 325, baseType: !188, size: 64, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4150, file: !185, line: 327, baseType: !4180, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4150, file: !185, line: 329, baseType: !394, size: 128, offset: 704)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4150, file: !185, line: 330, baseType: !394, size: 128, offset: 832)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4142, file: !185, line: 355, baseType: !394, size: 128, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4142, file: !185, line: 356, baseType: !394, size: 128, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !184, file: !185, line: 192, baseType: !426, size: 32, offset: 3968)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !184, file: !185, line: 193, baseType: !346, size: 256, offset: 4032)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !184, file: !185, line: 195, baseType: !7, size: 32, offset: 4288)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !184, file: !185, line: 196, baseType: !642, size: 8, offset: 4320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !184, file: !185, line: 198, baseType: !4223, size: 5824, offset: 4352)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4224)
!4224 = !{!4225, !4226, !4228, !4231, !4232, !4285, !4368, !4369, !4370, !4371, !4372, !4379, !4471, !4484, !4494, !4498, !4500, !4501, !4502, !4506, !4513, !4514, !4517, !4520, !4524, !4527, !4528, !4529, !4530, !4531, !4532, !4562, !4563, !4564, !4567, !4570, !4579, !4580, !4581, !4582, !4583, !4584}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4223, file: !70, line: 706, baseType: !1059, size: 512)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4223, file: !70, line: 707, baseType: !4227, size: 64, offset: 512)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4223, file: !70, line: 709, baseType: !4229, size: 64, offset: 576)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4223, file: !70, line: 711, baseType: !188, size: 64, offset: 640)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4223, file: !70, line: 712, baseType: !4233, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4236)
!4236 = !{!4237, !4238, !4239, !4245, !4250, !4254}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !70, line: 90, baseType: !188, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4235, file: !70, line: 91, baseType: !1139, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4235, file: !70, line: 92, baseType: !4240, size: 64, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!85, !4243, !1095}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4235, file: !70, line: 93, baseType: !4246, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!653, !4243, !4249, !1708, !1709}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4235, file: !70, line: 95, baseType: !4251, size: 64, offset: 256)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{null, !4227}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4235, file: !70, line: 97, baseType: !4255, size: 64, offset: 320)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4257)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4258)
!4258 = !{!4259, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4257, file: !77, line: 287, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!85, !4227}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4257, file: !77, line: 288, baseType: !4251, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4257, file: !77, line: 289, baseType: !4260, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4257, file: !77, line: 290, baseType: !4260, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4257, file: !77, line: 291, baseType: !4260, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4257, file: !77, line: 292, baseType: !4260, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4257, file: !77, line: 293, baseType: !4260, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4257, file: !77, line: 294, baseType: !4260, size: 64, offset: 448)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4257, file: !77, line: 295, baseType: !4260, size: 64, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4257, file: !77, line: 296, baseType: !4260, size: 64, offset: 576)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4257, file: !77, line: 297, baseType: !4260, size: 64, offset: 640)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4257, file: !77, line: 298, baseType: !4260, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4257, file: !77, line: 299, baseType: !4260, size: 64, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4257, file: !77, line: 300, baseType: !4260, size: 64, offset: 832)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4257, file: !77, line: 301, baseType: !4260, size: 64, offset: 896)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4257, file: !77, line: 302, baseType: !4260, size: 64, offset: 960)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4257, file: !77, line: 303, baseType: !4260, size: 64, offset: 1024)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4257, file: !77, line: 304, baseType: !4260, size: 64, offset: 1088)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4257, file: !77, line: 305, baseType: !4260, size: 64, offset: 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4257, file: !77, line: 306, baseType: !4260, size: 64, offset: 1216)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4257, file: !77, line: 307, baseType: !4260, size: 64, offset: 1280)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4257, file: !77, line: 308, baseType: !4260, size: 64, offset: 1344)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4257, file: !77, line: 309, baseType: !4260, size: 64, offset: 1408)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4223, file: !70, line: 714, baseType: !4286, size: 64, offset: 768)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4289, line: 80, size: 1344, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4296, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4367}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4288, file: !4289, line: 81, baseType: !188, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4288, file: !4289, line: 82, baseType: !188, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4288, file: !4289, line: 83, baseType: !1139, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4288, file: !4289, line: 84, baseType: !1139, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4288, file: !4289, line: 85, baseType: !1139, size: 64, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4288, file: !4289, line: 87, baseType: !4297, size: 64, offset: 320)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!85, !4227, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308, !4309, !4321, !4330, !4331, !4332, !4333, !4334, !4342, !4343, !4344, !4345, !4346, !4347}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4301, file: !64, line: 97, baseType: !188, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4301, file: !64, line: 98, baseType: !4286, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4301, file: !64, line: 100, baseType: !1046, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4301, file: !64, line: 101, baseType: !188, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4301, file: !64, line: 103, baseType: !642, size: 8, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4301, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4301, file: !64, line: 106, baseType: !4310, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4183, line: 282, size: 1600, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4320}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4312, file: !4183, line: 283, baseType: !3735, size: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4312, file: !4183, line: 284, baseType: !3735, size: 256, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4312, file: !4183, line: 285, baseType: !4317, size: 1024, offset: 512)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 1024, elements: !4318)
!4318 = !{!4319}
!4319 = !DISubrange(count: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4312, file: !4183, line: 286, baseType: !1574, size: 64, offset: 1536)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4301, file: !64, line: 107, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4183, line: 217, size: 256, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4324, file: !4183, line: 218, baseType: !3742, size: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4324, file: !4183, line: 219, baseType: !4186, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4324, file: !4183, line: 220, baseType: !240, size: 32, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4324, file: !4183, line: 221, baseType: !240, size: 32, offset: 224)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4301, file: !64, line: 109, baseType: !4260, size: 64, offset: 448)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4301, file: !64, line: 110, baseType: !4251, size: 64, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4301, file: !64, line: 111, baseType: !4260, size: 64, offset: 576)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4301, file: !64, line: 112, baseType: !4251, size: 64, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4301, file: !64, line: 113, baseType: !4335, size: 64, offset: 704)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!85, !4227, !4338}
!4338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4339)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4340)
!4340 = !{!4341}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4339, file: !77, line: 59, baseType: !85, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4301, file: !64, line: 114, baseType: !4260, size: 64, offset: 768)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4301, file: !64, line: 115, baseType: !1139, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4301, file: !64, line: 116, baseType: !1139, size: 64, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4301, file: !64, line: 118, baseType: !4255, size: 64, offset: 960)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4301, file: !64, line: 119, baseType: !4251, size: 64, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4301, file: !64, line: 121, baseType: !4348, size: 64, offset: 1088)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4288, file: !4289, line: 88, baseType: !4240, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4288, file: !4289, line: 89, baseType: !4260, size: 64, offset: 448)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4288, file: !4289, line: 90, baseType: !4251, size: 64, offset: 512)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4288, file: !4289, line: 91, baseType: !4251, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4288, file: !4289, line: 92, baseType: !4251, size: 64, offset: 640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4288, file: !4289, line: 94, baseType: !4260, size: 64, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4288, file: !4289, line: 95, baseType: !4260, size: 64, offset: 768)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4288, file: !4289, line: 97, baseType: !4335, size: 64, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4288, file: !4289, line: 98, baseType: !4260, size: 64, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4288, file: !4289, line: 100, baseType: !4260, size: 64, offset: 960)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4288, file: !4289, line: 102, baseType: !4260, size: 64, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4288, file: !4289, line: 103, baseType: !4251, size: 64, offset: 1088)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4288, file: !4289, line: 105, baseType: !4255, size: 64, offset: 1152)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4288, file: !4289, line: 107, baseType: !4364, size: 64, offset: 1216)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4366)
!4366 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4289, line: 107, flags: DIFlagFwdDecl)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4288, file: !4289, line: 109, baseType: !642, size: 8, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4223, file: !70, line: 715, baseType: !4300, size: 64, offset: 832)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4223, file: !70, line: 717, baseType: !137, size: 64, offset: 896)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4223, file: !70, line: 719, baseType: !137, size: 64, offset: 960)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4223, file: !70, line: 721, baseType: !346, size: 256, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4223, file: !70, line: 725, baseType: !4373, size: 448, offset: 1280)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4378}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4373, file: !70, line: 518, baseType: !394, size: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4373, file: !70, line: 519, baseType: !394, size: 128, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4373, file: !70, line: 520, baseType: !394, size: 128, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4373, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4223, file: !70, line: 726, baseType: !4380, size: 2496, offset: 1728)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4464, !4468}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4380, file: !77, line: 664, baseType: !4338, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4380, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4380, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4380, file: !77, line: 667, baseType: !642, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4380, file: !77, line: 668, baseType: !642, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4380, file: !77, line: 669, baseType: !642, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4380, file: !77, line: 670, baseType: !642, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4380, file: !77, line: 671, baseType: !642, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4380, file: !77, line: 672, baseType: !642, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4380, file: !77, line: 673, baseType: !642, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4380, file: !77, line: 674, baseType: !642, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4380, file: !77, line: 675, baseType: !608, size: 32, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4380, file: !77, line: 676, baseType: !426, size: 32, offset: 96)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4380, file: !77, line: 678, baseType: !394, size: 128, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4380, file: !77, line: 679, baseType: !1837, size: 256, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4380, file: !77, line: 680, baseType: !4398, size: 64, offset: 512)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4400, line: 43, size: 1536, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4399, file: !4400, line: 44, baseType: !188, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4399, file: !4400, line: 45, baseType: !85, size: 32, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4399, file: !4400, line: 46, baseType: !394, size: 128, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4399, file: !4400, line: 47, baseType: !426, size: 32, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4399, file: !4400, line: 48, baseType: !4407, size: 64, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4399, file: !4400, line: 49, baseType: !2080, size: 320, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4399, file: !4400, line: 50, baseType: !136, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4399, file: !4400, line: 51, baseType: !2674, size: 64, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4399, file: !4400, line: 52, baseType: !2674, size: 64, offset: 832)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4399, file: !4400, line: 53, baseType: !2674, size: 64, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4399, file: !4400, line: 54, baseType: !2674, size: 64, offset: 960)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4399, file: !4400, line: 55, baseType: !2674, size: 64, offset: 1024)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4399, file: !4400, line: 56, baseType: !136, size: 64, offset: 1088)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4399, file: !4400, line: 57, baseType: !136, size: 64, offset: 1152)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4399, file: !4400, line: 58, baseType: !136, size: 64, offset: 1216)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4399, file: !4400, line: 59, baseType: !136, size: 64, offset: 1280)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4399, file: !4400, line: 60, baseType: !136, size: 64, offset: 1344)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4399, file: !4400, line: 61, baseType: !4227, size: 64, offset: 1408)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4399, file: !4400, line: 62, baseType: !642, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4399, file: !4400, line: 63, baseType: !642, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4380, file: !77, line: 681, baseType: !642, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4380, file: !77, line: 682, baseType: !642, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4380, file: !77, line: 683, baseType: !642, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4380, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4380, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4380, file: !77, line: 690, baseType: !2666, size: 512, offset: 640)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4380, file: !77, line: 691, baseType: !551, size: 64, offset: 1152)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4380, file: !77, line: 692, baseType: !1612, size: 256, offset: 1216)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4380, file: !77, line: 693, baseType: !495, size: 192, offset: 1472)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4380, file: !77, line: 694, baseType: !4407, size: 64, offset: 1664)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4380, file: !77, line: 695, baseType: !373, size: 32, offset: 1728)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4380, file: !77, line: 696, baseType: !373, size: 32, offset: 1760)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4380, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4380, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4380, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4380, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4380, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4380, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4380, file: !77, line: 703, baseType: !642, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4380, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4380, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4380, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4380, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4380, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4380, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4380, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4380, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4380, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4380, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4380, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4380, file: !77, line: 715, baseType: !551, size: 64, offset: 2048)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4380, file: !77, line: 716, baseType: !551, size: 64, offset: 2112)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4380, file: !77, line: 717, baseType: !551, size: 64, offset: 2176)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4380, file: !77, line: 718, baseType: !551, size: 64, offset: 2240)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4380, file: !77, line: 720, baseType: !4459, size: 64, offset: 2304)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4461)
!4461 = !{!4462, !4463}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4460, file: !77, line: 633, baseType: !426, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4460, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4380, file: !77, line: 721, baseType: !4465, size: 64, offset: 2368)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4227, !568}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4380, file: !77, line: 722, baseType: !4469, size: 64, offset: 2432)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4223, file: !70, line: 727, baseType: !4472, size: 64, offset: 4224)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4481, !4482, !4483}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4473, file: !77, line: 743, baseType: !4257, size: 1472)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4473, file: !77, line: 744, baseType: !4260, size: 64, offset: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4473, file: !77, line: 745, baseType: !4478, size: 64, offset: 1536)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !4227, !642}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4473, file: !77, line: 746, baseType: !4260, size: 64, offset: 1600)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4473, file: !77, line: 747, baseType: !4251, size: 64, offset: 1664)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4473, file: !77, line: 748, baseType: !4251, size: 64, offset: 1728)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4223, file: !70, line: 736, baseType: !4485, size: 128, offset: 4288)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4486)
!4486 = !{!4487, !4491}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4485, file: !70, line: 531, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4490, line: 13, flags: DIFlagFwdDecl)
!4490 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4485, file: !70, line: 532, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4223, file: !70, line: 738, baseType: !4495, size: 64, offset: 4416)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4497)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4223, file: !70, line: 740, baseType: !4499, size: 64, offset: 4480)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4223, file: !70, line: 741, baseType: !551, size: 64, offset: 4544)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4223, file: !70, line: 746, baseType: !551, size: 64, offset: 4608)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4223, file: !70, line: 747, baseType: !4503, size: 64, offset: 4672)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4505)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4223, file: !70, line: 749, baseType: !4507, size: 64, offset: 4736)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4509)
!4509 = !{!4510, !4511, !4512}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4508, file: !70, line: 433, baseType: !7, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4508, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4508, file: !70, line: 435, baseType: !136, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4223, file: !70, line: 751, baseType: !394, size: 128, offset: 4800)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4223, file: !70, line: 762, baseType: !4515, size: 64, offset: 4928)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4223, file: !70, line: 770, baseType: !4518, offset: 4992)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4519, line: 5, elements: !1479)
!4519 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4223, file: !70, line: 772, baseType: !4521, size: 64, offset: 4992)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4523, line: 18, flags: DIFlagFwdDecl)
!4523 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4223, file: !70, line: 773, baseType: !4525, size: 64, offset: 5056)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4289, line: 22, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4223, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4223, file: !70, line: 778, baseType: !879, size: 32, offset: 5152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4223, file: !70, line: 779, baseType: !608, size: 32, offset: 5184)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4223, file: !70, line: 781, baseType: !426, size: 32, offset: 5216)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4223, file: !70, line: 782, baseType: !394, size: 128, offset: 5248)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4223, file: !70, line: 784, baseType: !4533, size: 64, offset: 5376)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4536, line: 52, size: 768, elements: !4537)
!4536 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4537 = !{!4538, !4539, !4540, !4541, !4542, !4546, !4550, !4551, !4552, !4553, !4557, !4561}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4535, file: !4536, line: 53, baseType: !188, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4535, file: !4536, line: 55, baseType: !1139, size: 64, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4535, file: !4536, line: 56, baseType: !1139, size: 64, offset: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4535, file: !4536, line: 58, baseType: !4240, size: 64, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4535, file: !4536, line: 59, baseType: !4543, size: 64, offset: 256)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!653, !4243, !4249}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4535, file: !4536, line: 61, baseType: !4547, size: 64, offset: 320)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !4533}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4535, file: !4536, line: 62, baseType: !4251, size: 64, offset: 384)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4535, file: !4536, line: 64, baseType: !4260, size: 64, offset: 448)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4535, file: !4536, line: 66, baseType: !1676, size: 64, offset: 512)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4535, file: !4536, line: 67, baseType: !4554, size: 64, offset: 576)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!1574, !4243}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4535, file: !4536, line: 69, baseType: !4558, size: 64, offset: 640)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4243, !1708, !1709}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4535, file: !4536, line: 71, baseType: !4255, size: 64, offset: 704)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4223, file: !70, line: 785, baseType: !1139, size: 64, offset: 5440)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4223, file: !70, line: 787, baseType: !4251, size: 64, offset: 5504)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4223, file: !70, line: 788, baseType: !4565, size: 64, offset: 5568)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4223, file: !70, line: 789, baseType: !4568, size: 64, offset: 5632)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4223, file: !70, line: 791, baseType: !4571, size: 64, offset: 5696)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4577, !4578}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4572, file: !70, line: 598, baseType: !92, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4572, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4572, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4572, file: !70, line: 601, baseType: !642, size: 8, offset: 96)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4572, file: !70, line: 602, baseType: !642, size: 8, offset: 104)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4223, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4223, file: !70, line: 795, baseType: !642, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4223, file: !70, line: 796, baseType: !642, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4223, file: !70, line: 797, baseType: !642, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4223, file: !70, line: 798, baseType: !642, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4223, file: !70, line: 799, baseType: !642, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !184, file: !185, line: 200, baseType: !394, size: 128, offset: 10176)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !184, file: !185, line: 201, baseType: !394, size: 128, offset: 10304)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !184, file: !185, line: 203, baseType: !7, size: 32, offset: 10432)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !184, file: !185, line: 204, baseType: !7, size: 32, offset: 10464)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !184, file: !185, line: 205, baseType: !4590, size: 64, offset: 10496)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !184, file: !185, line: 207, baseType: !642, size: 8, offset: 10560)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !184, file: !185, line: 209, baseType: !4593, size: 192, offset: 10624)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2674, size: 192, elements: !465)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !184, file: !185, line: 211, baseType: !642, size: 8, offset: 10816)
!4595 = !{!4596, !4597, !4598, !4599, !4600, !4601, !4604}
!4596 = !DILocalVariable(name: "dev", arg: 1, scope: !180, file: !3, line: 39, type: !183)
!4597 = !DILocalVariable(name: "num_slots", arg: 2, scope: !180, file: !3, line: 39, type: !7)
!4598 = !DILocalVariable(name: "flags", arg: 3, scope: !180, file: !3, line: 40, type: !7)
!4599 = !DILocalVariable(name: "mt", scope: !180, file: !3, line: 42, type: !4090)
!4600 = !DILocalVariable(name: "i", scope: !180, file: !3, line: 43, type: !85)
!4601 = !DILocalVariable(name: "n2", scope: !4602, file: !3, line: 86, type: !7)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 85, column: 30)
!4603 = distinct !DILexicalBlock(scope: !180, file: !3, line: 85, column: 6)
!4604 = !DILabel(scope: !180, name: "err_mem", file: !3, line: 101)
!4605 = !DILocation(line: 39, column: 43, scope: !180)
!4606 = !DILocation(line: 39, column: 61, scope: !180)
!4607 = !DILocation(line: 40, column: 17, scope: !180)
!4608 = !DILocation(line: 42, column: 2, scope: !180)
!4609 = !DILocation(line: 42, column: 19, scope: !180)
!4610 = !DILocation(line: 42, column: 24, scope: !180)
!4611 = !DILocation(line: 42, column: 29, scope: !180)
!4612 = !DILocation(line: 43, column: 2, scope: !180)
!4613 = !DILocation(line: 43, column: 6, scope: !180)
!4614 = !DILocation(line: 45, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !180, file: !3, line: 45, column: 6)
!4616 = !DILocation(line: 45, column: 6, scope: !180)
!4617 = !DILocation(line: 46, column: 3, scope: !4615)
!4618 = !DILocation(line: 47, column: 6, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !180, file: !3, line: 47, column: 6)
!4620 = !DILocation(line: 47, column: 6, scope: !180)
!4621 = !DILocation(line: 48, column: 10, scope: !4619)
!4622 = !DILocation(line: 48, column: 14, scope: !4619)
!4623 = !DILocation(line: 48, column: 27, scope: !4619)
!4624 = !DILocation(line: 48, column: 24, scope: !4619)
!4625 = !DILocation(line: 48, column: 3, scope: !4619)
!4626 = !DILocation(line: 50, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !180, file: !3, line: 50, column: 6)
!4628 = !DILocation(line: 50, column: 16, scope: !4627)
!4629 = !DILocation(line: 50, column: 6, scope: !180)
!4630 = !DILocation(line: 51, column: 3, scope: !4627)
!4631 = !DILocation(line: 53, column: 15, scope: !180)
!4632 = !DILocation(line: 53, column: 7, scope: !180)
!4633 = !DILocation(line: 53, column: 5, scope: !180)
!4634 = !DILocation(line: 54, column: 7, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !180, file: !3, line: 54, column: 6)
!4636 = !DILocation(line: 54, column: 6, scope: !180)
!4637 = !DILocation(line: 55, column: 3, scope: !4635)
!4638 = !DILocation(line: 57, column: 18, scope: !180)
!4639 = !DILocation(line: 57, column: 2, scope: !180)
!4640 = !DILocation(line: 57, column: 6, scope: !180)
!4641 = !DILocation(line: 57, column: 16, scope: !180)
!4642 = !DILocation(line: 58, column: 14, scope: !180)
!4643 = !DILocation(line: 58, column: 2, scope: !180)
!4644 = !DILocation(line: 58, column: 6, scope: !180)
!4645 = !DILocation(line: 58, column: 12, scope: !180)
!4646 = !DILocation(line: 59, column: 23, scope: !180)
!4647 = !DILocation(line: 59, column: 44, scope: !180)
!4648 = !DILocation(line: 59, column: 54, scope: !180)
!4649 = !DILocation(line: 59, column: 2, scope: !180)
!4650 = !DILocation(line: 60, column: 23, scope: !180)
!4651 = !DILocation(line: 60, column: 2, scope: !180)
!4652 = !DILocation(line: 62, column: 6, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !180, file: !3, line: 62, column: 6)
!4654 = !DILocation(line: 62, column: 12, scope: !4653)
!4655 = !DILocation(line: 62, column: 6, scope: !180)
!4656 = !DILocation(line: 63, column: 3, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 62, column: 52)
!4658 = !DILocation(line: 64, column: 3, scope: !4657)
!4659 = !DILocation(line: 66, column: 12, scope: !4657)
!4660 = !DILocation(line: 66, column: 3, scope: !4657)
!4661 = !DILocation(line: 67, column: 12, scope: !4657)
!4662 = !DILocation(line: 67, column: 3, scope: !4657)
!4663 = !DILocation(line: 68, column: 12, scope: !4657)
!4664 = !DILocation(line: 68, column: 3, scope: !4657)
!4665 = !DILocation(line: 69, column: 2, scope: !4657)
!4666 = !DILocation(line: 70, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !180, file: !3, line: 70, column: 6)
!4668 = !DILocation(line: 70, column: 12, scope: !4667)
!4669 = !DILocation(line: 70, column: 6, scope: !180)
!4670 = !DILocation(line: 71, column: 3, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 70, column: 32)
!4672 = !DILocation(line: 72, column: 3, scope: !4671)
!4673 = !DILocation(line: 73, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 73, column: 7)
!4675 = !DILocation(line: 73, column: 17, scope: !4674)
!4676 = !DILocation(line: 73, column: 7, scope: !4671)
!4677 = !DILocation(line: 74, column: 4, scope: !4674)
!4678 = !DILocation(line: 75, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 75, column: 7)
!4680 = !DILocation(line: 75, column: 17, scope: !4679)
!4681 = !DILocation(line: 75, column: 7, scope: !4671)
!4682 = !DILocation(line: 76, column: 4, scope: !4679)
!4683 = !DILocation(line: 77, column: 7, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 77, column: 7)
!4685 = !DILocation(line: 77, column: 17, scope: !4684)
!4686 = !DILocation(line: 77, column: 7, scope: !4671)
!4687 = !DILocation(line: 78, column: 4, scope: !4684)
!4688 = !DILocation(line: 79, column: 3, scope: !4671)
!4689 = !DILocation(line: 80, column: 2, scope: !4671)
!4690 = !DILocation(line: 81, column: 6, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !180, file: !3, line: 81, column: 6)
!4692 = !DILocation(line: 81, column: 12, scope: !4691)
!4693 = !DILocation(line: 81, column: 6, scope: !180)
!4694 = !DILocation(line: 82, column: 3, scope: !4691)
!4695 = !DILocation(line: 83, column: 6, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !180, file: !3, line: 83, column: 6)
!4697 = !DILocation(line: 83, column: 12, scope: !4696)
!4698 = !DILocation(line: 83, column: 6, scope: !180)
!4699 = !DILocation(line: 84, column: 3, scope: !4696)
!4700 = !DILocation(line: 85, column: 6, scope: !4603)
!4701 = !DILocation(line: 85, column: 12, scope: !4603)
!4702 = !DILocation(line: 85, column: 6, scope: !180)
!4703 = !DILocation(line: 86, column: 3, scope: !4602)
!4704 = !DILocation(line: 86, column: 16, scope: !4602)
!4705 = !DILocation(line: 86, column: 21, scope: !4602)
!4706 = !DILocation(line: 86, column: 33, scope: !4602)
!4707 = !DILocation(line: 86, column: 31, scope: !4602)
!4708 = !DILocation(line: 87, column: 21, scope: !4602)
!4709 = !DILocation(line: 87, column: 13, scope: !4602)
!4710 = !DILocation(line: 87, column: 3, scope: !4602)
!4711 = !DILocation(line: 87, column: 7, scope: !4602)
!4712 = !DILocation(line: 87, column: 11, scope: !4602)
!4713 = !DILocation(line: 88, column: 8, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 88, column: 7)
!4715 = !DILocation(line: 88, column: 12, scope: !4714)
!4716 = !DILocation(line: 88, column: 7, scope: !4602)
!4717 = !DILocation(line: 89, column: 4, scope: !4714)
!4718 = !DILocation(line: 90, column: 2, scope: !4603)
!4719 = !DILocation(line: 90, column: 2, scope: !4602)
!4720 = !DILocation(line: 93, column: 9, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !180, file: !3, line: 93, column: 2)
!4722 = !DILocation(line: 93, column: 7, scope: !4721)
!4723 = !DILocation(line: 93, column: 14, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 93, column: 2)
!4725 = !DILocation(line: 93, column: 18, scope: !4724)
!4726 = !DILocation(line: 93, column: 16, scope: !4724)
!4727 = !DILocation(line: 93, column: 2, scope: !4721)
!4728 = !DILocation(line: 94, column: 23, scope: !4724)
!4729 = !DILocation(line: 94, column: 27, scope: !4724)
!4730 = !DILocation(line: 94, column: 33, scope: !4724)
!4731 = !DILocation(line: 94, column: 3, scope: !4724)
!4732 = !DILocation(line: 93, column: 30, scope: !4724)
!4733 = !DILocation(line: 93, column: 2, scope: !4724)
!4734 = distinct !{!4734, !4727, !4735, !4736, !4737}
!4735 = !DILocation(line: 94, column: 59, scope: !4721)
!4736 = !{!"llvm.loop.mustprogress"}
!4737 = !{!"llvm.loop.unroll.disable"}
!4738 = !DILocation(line: 97, column: 2, scope: !180)
!4739 = !DILocation(line: 97, column: 6, scope: !180)
!4740 = !DILocation(line: 97, column: 12, scope: !180)
!4741 = !DILocation(line: 99, column: 12, scope: !180)
!4742 = !DILocation(line: 99, column: 2, scope: !180)
!4743 = !DILocation(line: 99, column: 7, scope: !180)
!4744 = !DILocation(line: 99, column: 10, scope: !180)
!4745 = !DILocation(line: 100, column: 2, scope: !180)
!4746 = !DILocation(line: 101, column: 1, scope: !180)
!4747 = !DILocation(line: 102, column: 8, scope: !180)
!4748 = !DILocation(line: 102, column: 2, scope: !180)
!4749 = !DILocation(line: 103, column: 2, scope: !180)
!4750 = !DILocation(line: 104, column: 1, scope: !180)
!4751 = distinct !DISubprogram(name: "kzalloc", scope: !123, file: !123, line: 719, type: !4752, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4754)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!137, !140, !133}
!4754 = !{!4755, !4756}
!4755 = !DILocalVariable(name: "size", arg: 1, scope: !4751, file: !123, line: 719, type: !140)
!4756 = !DILocalVariable(name: "flags", arg: 2, scope: !4751, file: !123, line: 719, type: !133)
!4757 = !DILocation(line: 719, column: 52, scope: !4751)
!4758 = !DILocation(line: 719, column: 64, scope: !4751)
!4759 = !DILocation(line: 721, column: 17, scope: !4751)
!4760 = !DILocation(line: 721, column: 23, scope: !4751)
!4761 = !DILocation(line: 721, column: 29, scope: !4751)
!4762 = !DILocation(line: 721, column: 9, scope: !4751)
!4763 = !DILocation(line: 721, column: 2, scope: !4751)
!4764 = distinct !DISubprogram(name: "size_add", scope: !4765, file: !4765, line: 208, type: !4766, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4768)
!4765 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!140, !140, !140}
!4768 = !{!4769, !4770, !4771}
!4769 = !DILocalVariable(name: "addend1", arg: 1, scope: !4764, file: !4765, line: 208, type: !140)
!4770 = !DILocalVariable(name: "addend2", arg: 2, scope: !4764, file: !4765, line: 208, type: !140)
!4771 = !DILocalVariable(name: "bytes", scope: !4764, file: !4765, line: 210, type: !140)
!4772 = !DILocation(line: 208, column: 51, scope: !4764)
!4773 = !DILocation(line: 208, column: 67, scope: !4764)
!4774 = !DILocation(line: 210, column: 2, scope: !4764)
!4775 = !DILocation(line: 210, column: 9, scope: !4764)
!4776 = !DILocation(line: 212, column: 6, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4764, file: !4765, line: 212, column: 6)
!4778 = !DILocation(line: 212, column: 6, scope: !4764)
!4779 = !DILocation(line: 213, column: 3, scope: !4777)
!4780 = !DILocation(line: 215, column: 9, scope: !4764)
!4781 = !DILocation(line: 215, column: 2, scope: !4764)
!4782 = !DILocation(line: 216, column: 1, scope: !4764)
!4783 = distinct !DISubprogram(name: "size_mul", scope: !4765, file: !4765, line: 189, type: !4766, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4784 = !{!4785, !4786, !4787}
!4785 = !DILocalVariable(name: "factor1", arg: 1, scope: !4783, file: !4765, line: 189, type: !140)
!4786 = !DILocalVariable(name: "factor2", arg: 2, scope: !4783, file: !4765, line: 189, type: !140)
!4787 = !DILocalVariable(name: "bytes", scope: !4783, file: !4765, line: 191, type: !140)
!4788 = !DILocation(line: 189, column: 51, scope: !4783)
!4789 = !DILocation(line: 189, column: 67, scope: !4783)
!4790 = !DILocation(line: 191, column: 2, scope: !4783)
!4791 = !DILocation(line: 191, column: 9, scope: !4783)
!4792 = !DILocation(line: 193, column: 6, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4783, file: !4765, line: 193, column: 6)
!4794 = !DILocation(line: 193, column: 6, scope: !4783)
!4795 = !DILocation(line: 194, column: 3, scope: !4793)
!4796 = !DILocation(line: 196, column: 9, scope: !4783)
!4797 = !DILocation(line: 196, column: 2, scope: !4783)
!4798 = !DILocation(line: 197, column: 1, scope: !4783)
!4799 = !DISubprogram(name: "input_set_abs_params", scope: !185, file: !185, line: 476, type: !4800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{null, !183, !7, !85, !85, !85, !85}
!4802 = distinct !DISubprogram(name: "generic___set_bit", scope: !4803, file: !4803, line: 28, type: !4804, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4808)
!4803 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4804 = !DISubroutineType(types: !4805)
!4805 = !{null, !136, !4806}
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!4808 = !{!4809, !4810, !4811, !4812}
!4809 = !DILocalVariable(name: "nr", arg: 1, scope: !4802, file: !4803, line: 28, type: !136)
!4810 = !DILocalVariable(name: "addr", arg: 2, scope: !4802, file: !4803, line: 28, type: !4806)
!4811 = !DILocalVariable(name: "mask", scope: !4802, file: !4803, line: 30, type: !136)
!4812 = !DILocalVariable(name: "p", scope: !4802, file: !4803, line: 31, type: !144)
!4813 = !DILocation(line: 28, column: 33, scope: !4802)
!4814 = !DILocation(line: 28, column: 61, scope: !4802)
!4815 = !DILocation(line: 30, column: 2, scope: !4802)
!4816 = !DILocation(line: 30, column: 16, scope: !4802)
!4817 = !DILocation(line: 30, column: 23, scope: !4802)
!4818 = !DILocation(line: 31, column: 2, scope: !4802)
!4819 = !DILocation(line: 31, column: 17, scope: !4802)
!4820 = !DILocation(line: 31, column: 39, scope: !4802)
!4821 = !DILocation(line: 31, column: 47, scope: !4802)
!4822 = !DILocation(line: 31, column: 45, scope: !4802)
!4823 = !DILocation(line: 33, column: 9, scope: !4802)
!4824 = !DILocation(line: 33, column: 3, scope: !4802)
!4825 = !DILocation(line: 33, column: 6, scope: !4802)
!4826 = !DILocation(line: 34, column: 1, scope: !4802)
!4827 = distinct !DISubprogram(name: "___set_bit", scope: !4828, file: !4828, line: 26, type: !4804, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4829)
!4828 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4829 = !{!4830, !4831}
!4830 = !DILocalVariable(name: "nr", arg: 1, scope: !4827, file: !4828, line: 26, type: !136)
!4831 = !DILocalVariable(name: "addr", arg: 2, scope: !4827, file: !4828, line: 26, type: !4806)
!4832 = !DILocation(line: 26, column: 26, scope: !4827)
!4833 = !DILocation(line: 26, column: 54, scope: !4827)
!4834 = !DILocation(line: 28, column: 19, scope: !4827)
!4835 = !DILocation(line: 28, column: 26, scope: !4827)
!4836 = !DILocation(line: 28, column: 24, scope: !4827)
!4837 = !DILocation(line: 28, column: 2, scope: !4827)
!4838 = !DILocation(line: 29, column: 17, scope: !4827)
!4839 = !DILocation(line: 29, column: 21, scope: !4827)
!4840 = !DILocation(line: 29, column: 2, scope: !4827)
!4841 = !DILocation(line: 30, column: 1, scope: !4827)
!4842 = distinct !DISubprogram(name: "copy_abs", scope: !3, file: !3, line: 15, type: !4843, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !183, !7, !7}
!4845 = !{!4846, !4847, !4848}
!4846 = !DILocalVariable(name: "dev", arg: 1, scope: !4842, file: !3, line: 15, type: !183)
!4847 = !DILocalVariable(name: "dst", arg: 2, scope: !4842, file: !3, line: 15, type: !7)
!4848 = !DILocalVariable(name: "src", arg: 3, scope: !4842, file: !3, line: 15, type: !7)
!4849 = !DILocation(line: 15, column: 40, scope: !4842)
!4850 = !DILocation(line: 15, column: 58, scope: !4842)
!4851 = !DILocation(line: 15, column: 76, scope: !4842)
!4852 = !DILocation(line: 17, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 17, column: 6)
!4854 = !DILocation(line: 17, column: 11, scope: !4853)
!4855 = !DILocation(line: 17, column: 19, scope: !4853)
!4856 = !DILocation(line: 17, column: 22, scope: !4853)
!4857 = !DILocation(line: 17, column: 6, scope: !4842)
!4858 = !DILocation(line: 18, column: 3, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 17, column: 50)
!4860 = !DILocation(line: 18, column: 8, scope: !4859)
!4861 = !DILocation(line: 18, column: 16, scope: !4859)
!4862 = !DILocation(line: 18, column: 23, scope: !4859)
!4863 = !DILocation(line: 18, column: 28, scope: !4859)
!4864 = !DILocation(line: 18, column: 36, scope: !4859)
!4865 = !DILocation(line: 19, column: 3, scope: !4859)
!4866 = !DILocation(line: 19, column: 8, scope: !4859)
!4867 = !DILocation(line: 19, column: 16, scope: !4859)
!4868 = !DILocation(line: 19, column: 21, scope: !4859)
!4869 = !DILocation(line: 19, column: 26, scope: !4859)
!4870 = !DILocation(line: 20, column: 3, scope: !4859)
!4871 = !DILocation(line: 21, column: 2, scope: !4859)
!4872 = !DILocation(line: 22, column: 1, scope: !4842)
!4873 = distinct !DISubprogram(name: "kcalloc", scope: !123, file: !123, line: 666, type: !4874, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!137, !140, !140, !133}
!4876 = !{!4877, !4878, !4879}
!4877 = !DILocalVariable(name: "n", arg: 1, scope: !4873, file: !123, line: 666, type: !140)
!4878 = !DILocalVariable(name: "size", arg: 2, scope: !4873, file: !123, line: 666, type: !140)
!4879 = !DILocalVariable(name: "flags", arg: 3, scope: !4873, file: !123, line: 666, type: !133)
!4880 = !DILocation(line: 666, column: 55, scope: !4873)
!4881 = !DILocation(line: 666, column: 65, scope: !4873)
!4882 = !DILocation(line: 666, column: 77, scope: !4873)
!4883 = !DILocation(line: 668, column: 23, scope: !4873)
!4884 = !DILocation(line: 668, column: 26, scope: !4873)
!4885 = !DILocation(line: 668, column: 32, scope: !4873)
!4886 = !DILocation(line: 668, column: 38, scope: !4873)
!4887 = !DILocation(line: 668, column: 9, scope: !4873)
!4888 = !DILocation(line: 668, column: 2, scope: !4873)
!4889 = distinct !DISubprogram(name: "input_mt_set_value", scope: !4092, file: !4092, line: 53, type: !4890, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4893)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !4892, !7, !85}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4893 = !{!4894, !4895, !4896}
!4894 = !DILocalVariable(name: "slot", arg: 1, scope: !4889, file: !4092, line: 53, type: !4892)
!4895 = !DILocalVariable(name: "code", arg: 2, scope: !4889, file: !4092, line: 54, type: !7)
!4896 = !DILocalVariable(name: "value", arg: 3, scope: !4889, file: !4092, line: 54, type: !85)
!4897 = !DILocation(line: 53, column: 61, scope: !4889)
!4898 = !DILocation(line: 54, column: 20, scope: !4889)
!4899 = !DILocation(line: 54, column: 30, scope: !4889)
!4900 = !DILocation(line: 56, column: 35, scope: !4889)
!4901 = !DILocation(line: 56, column: 2, scope: !4889)
!4902 = !DILocation(line: 56, column: 8, scope: !4889)
!4903 = !DILocation(line: 56, column: 12, scope: !4889)
!4904 = !DILocation(line: 56, column: 17, scope: !4889)
!4905 = !DILocation(line: 56, column: 33, scope: !4889)
!4906 = !DILocation(line: 57, column: 1, scope: !4889)
!4907 = !DISubprogram(name: "kfree", scope: !123, file: !123, line: 227, type: !4908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{null, !1574}
!4910 = distinct !DISubprogram(name: "input_mt_destroy_slots", scope: !3, file: !3, line: 114, type: !4130, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4911)
!4911 = !{!4912}
!4912 = !DILocalVariable(name: "dev", arg: 1, scope: !4910, file: !3, line: 114, type: !183)
!4913 = !DILocation(line: 114, column: 47, scope: !4910)
!4914 = !DILocation(line: 116, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 116, column: 6)
!4916 = !DILocation(line: 116, column: 11, scope: !4915)
!4917 = !DILocation(line: 116, column: 6, scope: !4910)
!4918 = !DILocation(line: 117, column: 9, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 116, column: 15)
!4920 = !DILocation(line: 117, column: 14, scope: !4919)
!4921 = !DILocation(line: 117, column: 18, scope: !4919)
!4922 = !DILocation(line: 117, column: 3, scope: !4919)
!4923 = !DILocation(line: 118, column: 9, scope: !4919)
!4924 = !DILocation(line: 118, column: 14, scope: !4919)
!4925 = !DILocation(line: 118, column: 3, scope: !4919)
!4926 = !DILocation(line: 119, column: 2, scope: !4919)
!4927 = !DILocation(line: 120, column: 2, scope: !4910)
!4928 = !DILocation(line: 120, column: 7, scope: !4910)
!4929 = !DILocation(line: 120, column: 10, scope: !4910)
!4930 = !DILocation(line: 121, column: 1, scope: !4910)
!4931 = distinct !DISubprogram(name: "input_mt_report_slot_state", scope: !3, file: !3, line: 138, type: !4932, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4934)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!642, !183, !7, !642}
!4934 = !{!4935, !4936, !4937, !4938, !4939, !4940}
!4935 = !DILocalVariable(name: "dev", arg: 1, scope: !4931, file: !3, line: 138, type: !183)
!4936 = !DILocalVariable(name: "tool_type", arg: 2, scope: !4931, file: !3, line: 139, type: !7)
!4937 = !DILocalVariable(name: "active", arg: 3, scope: !4931, file: !3, line: 139, type: !642)
!4938 = !DILocalVariable(name: "mt", scope: !4931, file: !3, line: 141, type: !4090)
!4939 = !DILocalVariable(name: "slot", scope: !4931, file: !3, line: 142, type: !4892)
!4940 = !DILocalVariable(name: "id", scope: !4931, file: !3, line: 143, type: !85)
!4941 = !DILocation(line: 138, column: 51, scope: !4931)
!4942 = !DILocation(line: 139, column: 18, scope: !4931)
!4943 = !DILocation(line: 139, column: 34, scope: !4931)
!4944 = !DILocation(line: 141, column: 2, scope: !4931)
!4945 = !DILocation(line: 141, column: 19, scope: !4931)
!4946 = !DILocation(line: 141, column: 24, scope: !4931)
!4947 = !DILocation(line: 141, column: 29, scope: !4931)
!4948 = !DILocation(line: 142, column: 2, scope: !4931)
!4949 = !DILocation(line: 142, column: 24, scope: !4931)
!4950 = !DILocation(line: 143, column: 2, scope: !4931)
!4951 = !DILocation(line: 143, column: 6, scope: !4931)
!4952 = !DILocation(line: 145, column: 7, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 145, column: 6)
!4954 = !DILocation(line: 145, column: 6, scope: !4931)
!4955 = !DILocation(line: 146, column: 3, scope: !4953)
!4956 = !DILocation(line: 148, column: 10, scope: !4931)
!4957 = !DILocation(line: 148, column: 14, scope: !4931)
!4958 = !DILocation(line: 148, column: 20, scope: !4931)
!4959 = !DILocation(line: 148, column: 24, scope: !4931)
!4960 = !DILocation(line: 148, column: 7, scope: !4931)
!4961 = !DILocation(line: 149, column: 16, scope: !4931)
!4962 = !DILocation(line: 149, column: 20, scope: !4931)
!4963 = !DILocation(line: 149, column: 2, scope: !4931)
!4964 = !DILocation(line: 149, column: 8, scope: !4931)
!4965 = !DILocation(line: 149, column: 14, scope: !4931)
!4966 = !DILocation(line: 151, column: 7, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 151, column: 6)
!4968 = !{i8 0, i8 2}
!4969 = !DILocation(line: 151, column: 6, scope: !4931)
!4970 = !DILocation(line: 152, column: 15, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 151, column: 15)
!4972 = !DILocation(line: 152, column: 3, scope: !4971)
!4973 = !DILocation(line: 153, column: 3, scope: !4971)
!4974 = !DILocation(line: 156, column: 26, scope: !4931)
!4975 = !DILocation(line: 156, column: 7, scope: !4931)
!4976 = !DILocation(line: 156, column: 5, scope: !4931)
!4977 = !DILocation(line: 157, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 157, column: 6)
!4979 = !DILocation(line: 157, column: 9, scope: !4978)
!4980 = !DILocation(line: 157, column: 6, scope: !4931)
!4981 = !DILocation(line: 158, column: 27, scope: !4978)
!4982 = !DILocation(line: 158, column: 8, scope: !4978)
!4983 = !DILocation(line: 158, column: 6, scope: !4978)
!4984 = !DILocation(line: 158, column: 3, scope: !4978)
!4985 = !DILocation(line: 160, column: 14, scope: !4931)
!4986 = !DILocation(line: 160, column: 47, scope: !4931)
!4987 = !DILocation(line: 160, column: 2, scope: !4931)
!4988 = !DILocation(line: 161, column: 14, scope: !4931)
!4989 = !DILocation(line: 161, column: 45, scope: !4931)
!4990 = !DILocation(line: 161, column: 2, scope: !4931)
!4991 = !DILocation(line: 163, column: 2, scope: !4931)
!4992 = !DILocation(line: 164, column: 1, scope: !4931)
!4993 = !DISubprogram(name: "input_event", scope: !185, file: !185, line: 420, type: !4994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{null, !183, !7, !7, !85}
!4996 = distinct !DISubprogram(name: "input_mt_get_value", scope: !4092, file: !4092, line: 59, type: !4997, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5001)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!85, !4999, !7}
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4102)
!5001 = !{!5002, !5003}
!5002 = !DILocalVariable(name: "slot", arg: 1, scope: !4996, file: !4092, line: 59, type: !4999)
!5003 = !DILocalVariable(name: "code", arg: 2, scope: !4996, file: !4092, line: 60, type: !7)
!5004 = !DILocation(line: 59, column: 66, scope: !4996)
!5005 = !DILocation(line: 60, column: 19, scope: !4996)
!5006 = !DILocation(line: 62, column: 9, scope: !4996)
!5007 = !DILocation(line: 62, column: 15, scope: !4996)
!5008 = !DILocation(line: 62, column: 19, scope: !4996)
!5009 = !DILocation(line: 62, column: 24, scope: !4996)
!5010 = !DILocation(line: 62, column: 2, scope: !4996)
!5011 = distinct !DISubprogram(name: "input_mt_new_trkid", scope: !4092, file: !4092, line: 80, type: !5012, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5014)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!85, !4090}
!5014 = !{!5015}
!5015 = !DILocalVariable(name: "mt", arg: 1, scope: !5011, file: !4092, line: 80, type: !4090)
!5016 = !DILocation(line: 80, column: 55, scope: !5011)
!5017 = !DILocation(line: 82, column: 9, scope: !5011)
!5018 = !DILocation(line: 82, column: 13, scope: !5011)
!5019 = !DILocation(line: 82, column: 18, scope: !5011)
!5020 = !DILocation(line: 82, column: 21, scope: !5011)
!5021 = !DILocation(line: 82, column: 2, scope: !5011)
!5022 = distinct !DISubprogram(name: "input_mt_report_finger_count", scope: !3, file: !3, line: 178, type: !5023, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5025)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !183, !85}
!5025 = !{!5026, !5027}
!5026 = !DILocalVariable(name: "dev", arg: 1, scope: !5022, file: !3, line: 178, type: !183)
!5027 = !DILocalVariable(name: "count", arg: 2, scope: !5022, file: !3, line: 178, type: !85)
!5028 = !DILocation(line: 178, column: 53, scope: !5022)
!5029 = !DILocation(line: 178, column: 62, scope: !5022)
!5030 = !DILocation(line: 180, column: 14, scope: !5022)
!5031 = !DILocation(line: 180, column: 44, scope: !5022)
!5032 = !DILocation(line: 180, column: 50, scope: !5022)
!5033 = !DILocation(line: 180, column: 2, scope: !5022)
!5034 = !DILocation(line: 181, column: 14, scope: !5022)
!5035 = !DILocation(line: 181, column: 47, scope: !5022)
!5036 = !DILocation(line: 181, column: 53, scope: !5022)
!5037 = !DILocation(line: 181, column: 2, scope: !5022)
!5038 = !DILocation(line: 182, column: 14, scope: !5022)
!5039 = !DILocation(line: 182, column: 47, scope: !5022)
!5040 = !DILocation(line: 182, column: 53, scope: !5022)
!5041 = !DILocation(line: 182, column: 2, scope: !5022)
!5042 = !DILocation(line: 183, column: 14, scope: !5022)
!5043 = !DILocation(line: 183, column: 45, scope: !5022)
!5044 = !DILocation(line: 183, column: 51, scope: !5022)
!5045 = !DILocation(line: 183, column: 2, scope: !5022)
!5046 = !DILocation(line: 184, column: 14, scope: !5022)
!5047 = !DILocation(line: 184, column: 46, scope: !5022)
!5048 = !DILocation(line: 184, column: 52, scope: !5022)
!5049 = !DILocation(line: 184, column: 2, scope: !5022)
!5050 = !DILocation(line: 185, column: 1, scope: !5022)
!5051 = distinct !DISubprogram(name: "input_mt_report_pointer_emulation", scope: !3, file: !3, line: 199, type: !5052, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5054)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !183, !642}
!5054 = !{!5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5066, !5067, !5070, !5071}
!5055 = !DILocalVariable(name: "dev", arg: 1, scope: !5051, file: !3, line: 199, type: !183)
!5056 = !DILocalVariable(name: "use_count", arg: 2, scope: !5051, file: !3, line: 199, type: !642)
!5057 = !DILocalVariable(name: "mt", scope: !5051, file: !3, line: 201, type: !4090)
!5058 = !DILocalVariable(name: "oldest", scope: !5051, file: !3, line: 202, type: !4892)
!5059 = !DILocalVariable(name: "oldid", scope: !5051, file: !3, line: 203, type: !85)
!5060 = !DILocalVariable(name: "count", scope: !5051, file: !3, line: 203, type: !85)
!5061 = !DILocalVariable(name: "i", scope: !5051, file: !3, line: 203, type: !85)
!5062 = !DILocalVariable(name: "ps", scope: !5063, file: !3, line: 213, type: !4892)
!5063 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 212, column: 38)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 212, column: 2)
!5065 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 212, column: 2)
!5066 = !DILocalVariable(name: "id", scope: !5063, file: !3, line: 214, type: !85)
!5067 = !DILocalVariable(name: "x", scope: !5068, file: !3, line: 245, type: !85)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 244, column: 14)
!5069 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 244, column: 6)
!5070 = !DILocalVariable(name: "y", scope: !5068, file: !3, line: 246, type: !85)
!5071 = !DILocalVariable(name: "p", scope: !5072, file: !3, line: 252, type: !85)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 251, column: 47)
!5073 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 251, column: 7)
!5074 = !DILocation(line: 199, column: 58, scope: !5051)
!5075 = !DILocation(line: 199, column: 68, scope: !5051)
!5076 = !DILocation(line: 201, column: 2, scope: !5051)
!5077 = !DILocation(line: 201, column: 19, scope: !5051)
!5078 = !DILocation(line: 201, column: 24, scope: !5051)
!5079 = !DILocation(line: 201, column: 29, scope: !5051)
!5080 = !DILocation(line: 202, column: 2, scope: !5051)
!5081 = !DILocation(line: 202, column: 24, scope: !5051)
!5082 = !DILocation(line: 203, column: 2, scope: !5051)
!5083 = !DILocation(line: 203, column: 6, scope: !5051)
!5084 = !DILocation(line: 203, column: 13, scope: !5051)
!5085 = !DILocation(line: 203, column: 20, scope: !5051)
!5086 = !DILocation(line: 205, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 205, column: 6)
!5088 = !DILocation(line: 205, column: 6, scope: !5051)
!5089 = !DILocation(line: 206, column: 3, scope: !5087)
!5090 = !DILocation(line: 208, column: 9, scope: !5051)
!5091 = !DILocation(line: 209, column: 10, scope: !5051)
!5092 = !DILocation(line: 209, column: 14, scope: !5051)
!5093 = !DILocation(line: 209, column: 8, scope: !5051)
!5094 = !DILocation(line: 210, column: 8, scope: !5051)
!5095 = !DILocation(line: 212, column: 9, scope: !5065)
!5096 = !DILocation(line: 212, column: 7, scope: !5065)
!5097 = !DILocation(line: 212, column: 14, scope: !5064)
!5098 = !DILocation(line: 212, column: 18, scope: !5064)
!5099 = !DILocation(line: 212, column: 22, scope: !5064)
!5100 = !DILocation(line: 212, column: 16, scope: !5064)
!5101 = !DILocation(line: 212, column: 2, scope: !5065)
!5102 = !DILocation(line: 213, column: 3, scope: !5063)
!5103 = !DILocation(line: 213, column: 25, scope: !5063)
!5104 = !DILocation(line: 213, column: 31, scope: !5063)
!5105 = !DILocation(line: 213, column: 35, scope: !5063)
!5106 = !DILocation(line: 213, column: 41, scope: !5063)
!5107 = !DILocation(line: 214, column: 3, scope: !5063)
!5108 = !DILocation(line: 214, column: 7, scope: !5063)
!5109 = !DILocation(line: 214, column: 31, scope: !5063)
!5110 = !DILocation(line: 214, column: 12, scope: !5063)
!5111 = !DILocation(line: 216, column: 7, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 216, column: 7)
!5113 = !DILocation(line: 216, column: 10, scope: !5112)
!5114 = !DILocation(line: 216, column: 7, scope: !5063)
!5115 = !DILocation(line: 217, column: 4, scope: !5112)
!5116 = !DILocation(line: 218, column: 8, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 218, column: 7)
!5118 = !DILocation(line: 218, column: 13, scope: !5117)
!5119 = !DILocation(line: 218, column: 11, scope: !5117)
!5120 = !DILocation(line: 218, column: 20, scope: !5117)
!5121 = !DILocation(line: 218, column: 7, scope: !5063)
!5122 = !DILocation(line: 219, column: 13, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 218, column: 33)
!5124 = !DILocation(line: 219, column: 11, scope: !5123)
!5125 = !DILocation(line: 220, column: 12, scope: !5123)
!5126 = !DILocation(line: 220, column: 10, scope: !5123)
!5127 = !DILocation(line: 221, column: 3, scope: !5123)
!5128 = !DILocation(line: 222, column: 8, scope: !5063)
!5129 = !DILocation(line: 223, column: 2, scope: !5064)
!5130 = !DILocation(line: 223, column: 2, scope: !5063)
!5131 = !DILocation(line: 212, column: 33, scope: !5064)
!5132 = !DILocation(line: 212, column: 2, scope: !5064)
!5133 = distinct !{!5133, !5101, !5134, !4736, !4737}
!5134 = !DILocation(line: 223, column: 2, scope: !5065)
!5135 = !DILocation(line: 225, column: 14, scope: !5051)
!5136 = !DILocation(line: 225, column: 38, scope: !5051)
!5137 = !DILocation(line: 225, column: 44, scope: !5051)
!5138 = !DILocation(line: 225, column: 2, scope: !5051)
!5139 = !DILocation(line: 227, column: 6, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 227, column: 6)
!5141 = !DILocation(line: 227, column: 6, scope: !5051)
!5142 = !DILocation(line: 228, column: 7, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 228, column: 7)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 227, column: 17)
!5145 = !DILocation(line: 228, column: 13, scope: !5143)
!5146 = !DILocation(line: 228, column: 18, scope: !5143)
!5147 = !DILocation(line: 229, column: 8, scope: !5143)
!5148 = !DILocation(line: 229, column: 47, scope: !5143)
!5149 = !DILocation(line: 230, column: 7, scope: !5143)
!5150 = !DILocation(line: 230, column: 43, scope: !5143)
!5151 = !DILocation(line: 231, column: 25, scope: !5143)
!5152 = !DILocation(line: 231, column: 7, scope: !5143)
!5153 = !DILocation(line: 231, column: 44, scope: !5143)
!5154 = !DILocation(line: 228, column: 7, scope: !5144)
!5155 = !DILocation(line: 238, column: 10, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 231, column: 50)
!5157 = !DILocation(line: 239, column: 3, scope: !5156)
!5158 = !DILocation(line: 241, column: 32, scope: !5144)
!5159 = !DILocation(line: 241, column: 37, scope: !5144)
!5160 = !DILocation(line: 241, column: 3, scope: !5144)
!5161 = !DILocation(line: 242, column: 2, scope: !5144)
!5162 = !DILocation(line: 244, column: 6, scope: !5069)
!5163 = !DILocation(line: 244, column: 6, scope: !5051)
!5164 = !DILocation(line: 245, column: 3, scope: !5068)
!5165 = !DILocation(line: 245, column: 7, scope: !5068)
!5166 = !DILocation(line: 245, column: 30, scope: !5068)
!5167 = !DILocation(line: 245, column: 11, scope: !5068)
!5168 = !DILocation(line: 246, column: 3, scope: !5068)
!5169 = !DILocation(line: 246, column: 7, scope: !5068)
!5170 = !DILocation(line: 246, column: 30, scope: !5068)
!5171 = !DILocation(line: 246, column: 11, scope: !5068)
!5172 = !DILocation(line: 248, column: 15, scope: !5068)
!5173 = !DILocation(line: 248, column: 35, scope: !5068)
!5174 = !DILocation(line: 248, column: 3, scope: !5068)
!5175 = !DILocation(line: 249, column: 15, scope: !5068)
!5176 = !DILocation(line: 249, column: 35, scope: !5068)
!5177 = !DILocation(line: 249, column: 3, scope: !5068)
!5178 = !DILocation(line: 251, column: 7, scope: !5073)
!5179 = !DILocation(line: 251, column: 7, scope: !5068)
!5180 = !DILocation(line: 252, column: 4, scope: !5072)
!5181 = !DILocation(line: 252, column: 8, scope: !5072)
!5182 = !DILocation(line: 252, column: 31, scope: !5072)
!5183 = !DILocation(line: 252, column: 12, scope: !5072)
!5184 = !DILocation(line: 253, column: 16, scope: !5072)
!5185 = !DILocation(line: 253, column: 43, scope: !5072)
!5186 = !DILocation(line: 253, column: 4, scope: !5072)
!5187 = !DILocation(line: 254, column: 3, scope: !5073)
!5188 = !DILocation(line: 254, column: 3, scope: !5072)
!5189 = !DILocation(line: 255, column: 2, scope: !5069)
!5190 = !DILocation(line: 255, column: 2, scope: !5068)
!5191 = !DILocation(line: 256, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 256, column: 7)
!5193 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 255, column: 9)
!5194 = !DILocation(line: 256, column: 7, scope: !5193)
!5195 = !DILocation(line: 257, column: 16, scope: !5192)
!5196 = !DILocation(line: 257, column: 4, scope: !5192)
!5197 = !DILocation(line: 259, column: 1, scope: !5051)
!5198 = distinct !DISubprogram(name: "const_test_bit", scope: !4803, file: !4803, line: 166, type: !5199, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!642, !136, !5201}
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4807)
!5203 = !{!5204, !5205, !5206, !5207, !5208}
!5204 = !DILocalVariable(name: "nr", arg: 1, scope: !5198, file: !4803, line: 166, type: !136)
!5205 = !DILocalVariable(name: "addr", arg: 2, scope: !5198, file: !4803, line: 166, type: !5201)
!5206 = !DILocalVariable(name: "p", scope: !5198, file: !4803, line: 168, type: !138)
!5207 = !DILocalVariable(name: "mask", scope: !5198, file: !4803, line: 169, type: !136)
!5208 = !DILocalVariable(name: "val", scope: !5198, file: !4803, line: 170, type: !136)
!5209 = !DILocation(line: 166, column: 30, scope: !5198)
!5210 = !DILocation(line: 166, column: 64, scope: !5198)
!5211 = !DILocation(line: 168, column: 2, scope: !5198)
!5212 = !DILocation(line: 168, column: 23, scope: !5198)
!5213 = !DILocation(line: 168, column: 50, scope: !5198)
!5214 = !DILocation(line: 168, column: 57, scope: !5198)
!5215 = !DILocation(line: 168, column: 55, scope: !5198)
!5216 = !DILocation(line: 169, column: 2, scope: !5198)
!5217 = !DILocation(line: 169, column: 16, scope: !5198)
!5218 = !DILocation(line: 169, column: 23, scope: !5198)
!5219 = !DILocation(line: 170, column: 2, scope: !5198)
!5220 = !DILocation(line: 170, column: 16, scope: !5198)
!5221 = !DILocation(line: 170, column: 23, scope: !5198)
!5222 = !DILocation(line: 170, column: 22, scope: !5198)
!5223 = !DILocation(line: 172, column: 12, scope: !5198)
!5224 = !DILocation(line: 172, column: 18, scope: !5198)
!5225 = !DILocation(line: 172, column: 16, scope: !5198)
!5226 = !DILocation(line: 172, column: 10, scope: !5198)
!5227 = !DILocation(line: 172, column: 9, scope: !5198)
!5228 = !DILocation(line: 173, column: 1, scope: !5198)
!5229 = !DILocation(line: 172, column: 2, scope: !5198)
!5230 = distinct !DISubprogram(name: "_test_bit", scope: !4828, file: !4828, line: 139, type: !5199, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5231)
!5231 = !{!5232, !5233}
!5232 = !DILocalVariable(name: "nr", arg: 1, scope: !5230, file: !4828, line: 139, type: !136)
!5233 = !DILocalVariable(name: "addr", arg: 2, scope: !5230, file: !4828, line: 139, type: !5201)
!5234 = !DILocation(line: 139, column: 25, scope: !5230)
!5235 = !DILocation(line: 139, column: 59, scope: !5230)
!5236 = !DILocation(line: 141, column: 25, scope: !5230)
!5237 = !DILocation(line: 141, column: 32, scope: !5230)
!5238 = !DILocation(line: 141, column: 30, scope: !5230)
!5239 = !DILocation(line: 141, column: 2, scope: !5230)
!5240 = !DILocation(line: 142, column: 23, scope: !5230)
!5241 = !DILocation(line: 142, column: 27, scope: !5230)
!5242 = !DILocation(line: 142, column: 9, scope: !5230)
!5243 = !DILocation(line: 142, column: 2, scope: !5230)
!5244 = distinct !DISubprogram(name: "input_abs_get_val", scope: !185, file: !185, line: 496, type: !5245, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!85, !183, !7}
!5247 = !{!5248, !5249}
!5248 = !DILocalVariable(name: "dev", arg: 1, scope: !5244, file: !185, line: 496, type: !183)
!5249 = !DILocalVariable(name: "axis", arg: 2, scope: !5244, file: !185, line: 496, type: !7)
!5250 = !DILocation(line: 496, column: 1, scope: !5244)
!5251 = distinct !DISubprogram(name: "input_mt_drop_unused", scope: !3, file: !3, line: 283, type: !4130, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5252)
!5252 = !{!5253, !5254, !5255, !5258, !5262}
!5253 = !DILocalVariable(name: "dev", arg: 1, scope: !5251, file: !3, line: 283, type: !183)
!5254 = !DILocalVariable(name: "mt", scope: !5251, file: !3, line: 285, type: !4090)
!5255 = !DILocalVariable(name: "flags", scope: !5256, file: !3, line: 288, type: !136)
!5256 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 287, column: 10)
!5257 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 287, column: 6)
!5258 = !DILocalVariable(name: "__dummy", scope: !5259, file: !3, line: 290, type: !136)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 290, column: 3)
!5260 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 290, column: 3)
!5261 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 290, column: 3)
!5262 = !DILocalVariable(name: "__dummy2", scope: !5259, file: !3, line: 290, type: !136)
!5263 = !DILocation(line: 283, column: 45, scope: !5251)
!5264 = !DILocation(line: 285, column: 2, scope: !5251)
!5265 = !DILocation(line: 285, column: 19, scope: !5251)
!5266 = !DILocation(line: 285, column: 24, scope: !5251)
!5267 = !DILocation(line: 285, column: 29, scope: !5251)
!5268 = !DILocation(line: 287, column: 6, scope: !5257)
!5269 = !DILocation(line: 287, column: 6, scope: !5251)
!5270 = !DILocation(line: 288, column: 3, scope: !5256)
!5271 = !DILocation(line: 288, column: 17, scope: !5256)
!5272 = !DILocation(line: 290, column: 3, scope: !5256)
!5273 = !DILocation(line: 290, column: 3, scope: !5261)
!5274 = !DILocation(line: 290, column: 3, scope: !5259)
!5275 = !DILocation(line: 290, column: 3, scope: !5260)
!5276 = !DILocation(line: 292, column: 26, scope: !5256)
!5277 = !DILocation(line: 292, column: 31, scope: !5256)
!5278 = !DILocation(line: 292, column: 3, scope: !5256)
!5279 = !DILocation(line: 293, column: 3, scope: !5256)
!5280 = !DILocation(line: 293, column: 7, scope: !5256)
!5281 = !DILocation(line: 293, column: 12, scope: !5256)
!5282 = !DILocation(line: 295, column: 27, scope: !5256)
!5283 = !DILocation(line: 295, column: 32, scope: !5256)
!5284 = !DILocation(line: 295, column: 44, scope: !5256)
!5285 = !DILocation(line: 295, column: 3, scope: !5256)
!5286 = !DILocation(line: 296, column: 2, scope: !5257)
!5287 = !DILocation(line: 296, column: 2, scope: !5256)
!5288 = !DILocation(line: 297, column: 1, scope: !5251)
!5289 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5290, file: !5290, line: 32, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5290 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!136, !5293}
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!5294 = distinct !DISubprogram(name: "spinlock_check", scope: !5295, file: !5295, line: 324, type: !5296, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5299)
!5295 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!5293, !5298}
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!5299 = !{!5300}
!5300 = !DILocalVariable(name: "lock", arg: 1, scope: !5294, file: !5295, line: 324, type: !5298)
!5301 = !DILocation(line: 324, column: 67, scope: !5294)
!5302 = !DILocation(line: 326, column: 10, scope: !5294)
!5303 = !DILocation(line: 326, column: 16, scope: !5294)
!5304 = !DILocation(line: 326, column: 2, scope: !5294)
!5305 = distinct !DISubprogram(name: "__input_mt_drop_unused", scope: !3, file: !3, line: 262, type: !5306, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5308)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{null, !183, !4090}
!5308 = !{!5309, !5310, !5311}
!5309 = !DILocalVariable(name: "dev", arg: 1, scope: !5305, file: !3, line: 262, type: !183)
!5310 = !DILocalVariable(name: "mt", arg: 2, scope: !5305, file: !3, line: 262, type: !4090)
!5311 = !DILocalVariable(name: "i", scope: !5305, file: !3, line: 264, type: !85)
!5312 = !DILocation(line: 262, column: 54, scope: !5305)
!5313 = !DILocation(line: 262, column: 76, scope: !5305)
!5314 = !DILocation(line: 264, column: 2, scope: !5305)
!5315 = !DILocation(line: 264, column: 6, scope: !5305)
!5316 = !DILocation(line: 266, column: 2, scope: !5305)
!5317 = !DILocation(line: 266, column: 2, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 266, column: 2)
!5319 = !DILocation(line: 268, column: 9, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 268, column: 2)
!5321 = !DILocation(line: 268, column: 7, scope: !5320)
!5322 = !DILocation(line: 268, column: 14, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 268, column: 2)
!5324 = !DILocation(line: 268, column: 18, scope: !5323)
!5325 = !DILocation(line: 268, column: 22, scope: !5323)
!5326 = !DILocation(line: 268, column: 16, scope: !5323)
!5327 = !DILocation(line: 268, column: 2, scope: !5320)
!5328 = !DILocation(line: 269, column: 27, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 269, column: 7)
!5330 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 268, column: 38)
!5331 = !DILocation(line: 269, column: 31, scope: !5329)
!5332 = !DILocation(line: 269, column: 37, scope: !5329)
!5333 = !DILocation(line: 269, column: 7, scope: !5329)
!5334 = !DILocation(line: 269, column: 41, scope: !5329)
!5335 = !DILocation(line: 270, column: 25, scope: !5329)
!5336 = !DILocation(line: 270, column: 30, scope: !5329)
!5337 = !DILocation(line: 270, column: 34, scope: !5329)
!5338 = !DILocation(line: 270, column: 40, scope: !5329)
!5339 = !DILocation(line: 270, column: 8, scope: !5329)
!5340 = !DILocation(line: 269, column: 7, scope: !5330)
!5341 = !DILocation(line: 271, column: 23, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 270, column: 45)
!5343 = !DILocation(line: 271, column: 49, scope: !5342)
!5344 = !DILocation(line: 271, column: 4, scope: !5342)
!5345 = !DILocation(line: 272, column: 23, scope: !5342)
!5346 = !DILocation(line: 272, column: 4, scope: !5342)
!5347 = !DILocation(line: 273, column: 3, scope: !5342)
!5348 = !DILocation(line: 274, column: 2, scope: !5330)
!5349 = !DILocation(line: 268, column: 34, scope: !5323)
!5350 = !DILocation(line: 268, column: 2, scope: !5323)
!5351 = distinct !{!5351, !5327, !5352, !4736, !4737}
!5352 = !DILocation(line: 274, column: 2, scope: !5320)
!5353 = !DILocation(line: 275, column: 1, scope: !5305)
!5354 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5295, file: !5295, line: 404, type: !5355, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5357)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !5298, !136}
!5357 = !{!5358, !5359, !5360, !5363}
!5358 = !DILocalVariable(name: "lock", arg: 1, scope: !5354, file: !5295, line: 404, type: !5298)
!5359 = !DILocalVariable(name: "flags", arg: 2, scope: !5354, file: !5295, line: 404, type: !136)
!5360 = !DILocalVariable(name: "__dummy", scope: !5361, file: !5295, line: 406, type: !136)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !5295, line: 406, column: 2)
!5362 = distinct !DILexicalBlock(scope: !5354, file: !5295, line: 406, column: 2)
!5363 = !DILocalVariable(name: "__dummy2", scope: !5361, file: !5295, line: 406, type: !136)
!5364 = !DILocation(line: 404, column: 64, scope: !5354)
!5365 = !DILocation(line: 404, column: 84, scope: !5354)
!5366 = !DILocation(line: 406, column: 2, scope: !5354)
!5367 = !DILocation(line: 406, column: 2, scope: !5361)
!5368 = !DILocation(line: 406, column: 2, scope: !5362)
!5369 = !DILocation(line: 407, column: 1, scope: !5354)
!5370 = distinct !DISubprogram(name: "input_mt_release_slots", scope: !3, file: !3, line: 306, type: !4130, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5371 = !{!5372, !5373}
!5372 = !DILocalVariable(name: "dev", arg: 1, scope: !5370, file: !3, line: 306, type: !183)
!5373 = !DILocalVariable(name: "mt", scope: !5370, file: !3, line: 308, type: !4090)
!5374 = !DILocation(line: 306, column: 47, scope: !5370)
!5375 = !DILocation(line: 308, column: 2, scope: !5370)
!5376 = !DILocation(line: 308, column: 19, scope: !5370)
!5377 = !DILocation(line: 308, column: 24, scope: !5370)
!5378 = !DILocation(line: 308, column: 29, scope: !5370)
!5379 = !DILocation(line: 310, column: 2, scope: !5370)
!5380 = !DILocation(line: 310, column: 2, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 310, column: 2)
!5382 = !DILocation(line: 312, column: 6, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 312, column: 6)
!5384 = !DILocation(line: 312, column: 6, scope: !5370)
!5385 = !DILocation(line: 314, column: 3, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 312, column: 10)
!5387 = !DILocation(line: 314, column: 7, scope: !5386)
!5388 = !DILocation(line: 314, column: 12, scope: !5386)
!5389 = !DILocation(line: 316, column: 26, scope: !5386)
!5390 = !DILocation(line: 316, column: 31, scope: !5386)
!5391 = !DILocation(line: 316, column: 3, scope: !5386)
!5392 = !DILocation(line: 318, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 318, column: 7)
!5394 = !DILocation(line: 318, column: 7, scope: !5386)
!5395 = !DILocation(line: 319, column: 23, scope: !5393)
!5396 = !DILocation(line: 319, column: 4, scope: !5393)
!5397 = !DILocation(line: 321, column: 3, scope: !5386)
!5398 = !DILocation(line: 321, column: 7, scope: !5386)
!5399 = !DILocation(line: 321, column: 12, scope: !5386)
!5400 = !DILocation(line: 322, column: 2, scope: !5386)
!5401 = !DILocation(line: 323, column: 1, scope: !5370)
!5402 = !DISubprogram(name: "input_handle_event", scope: !5403, file: !5403, line: 13, type: !4994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5403 = !DIFile(filename: "drivers/input/input-core-private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4bf9bf3e5699d77e2c7f079b6a3790b5")
!5404 = distinct !DISubprogram(name: "input_mt_sync_frame", scope: !3, file: !3, line: 333, type: !4130, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5405)
!5405 = !{!5406, !5407, !5408, !5409, !5412, !5416}
!5406 = !DILocalVariable(name: "dev", arg: 1, scope: !5404, file: !3, line: 333, type: !183)
!5407 = !DILocalVariable(name: "mt", scope: !5404, file: !3, line: 335, type: !4090)
!5408 = !DILocalVariable(name: "use_count", scope: !5404, file: !3, line: 336, type: !642)
!5409 = !DILocalVariable(name: "flags", scope: !5410, file: !3, line: 342, type: !136)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 341, column: 40)
!5411 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 341, column: 6)
!5412 = !DILocalVariable(name: "__dummy", scope: !5413, file: !3, line: 344, type: !136)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 344, column: 3)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 344, column: 3)
!5415 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 344, column: 3)
!5416 = !DILocalVariable(name: "__dummy2", scope: !5413, file: !3, line: 344, type: !136)
!5417 = !DILocation(line: 333, column: 44, scope: !5404)
!5418 = !DILocation(line: 335, column: 2, scope: !5404)
!5419 = !DILocation(line: 335, column: 19, scope: !5404)
!5420 = !DILocation(line: 335, column: 24, scope: !5404)
!5421 = !DILocation(line: 335, column: 29, scope: !5404)
!5422 = !DILocation(line: 336, column: 2, scope: !5404)
!5423 = !DILocation(line: 336, column: 7, scope: !5404)
!5424 = !DILocation(line: 338, column: 7, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 338, column: 6)
!5426 = !DILocation(line: 338, column: 6, scope: !5404)
!5427 = !DILocation(line: 339, column: 3, scope: !5425)
!5428 = !DILocation(line: 341, column: 6, scope: !5411)
!5429 = !DILocation(line: 341, column: 10, scope: !5411)
!5430 = !DILocation(line: 341, column: 16, scope: !5411)
!5431 = !DILocation(line: 341, column: 6, scope: !5404)
!5432 = !DILocation(line: 342, column: 3, scope: !5410)
!5433 = !DILocation(line: 342, column: 17, scope: !5410)
!5434 = !DILocation(line: 344, column: 3, scope: !5410)
!5435 = !DILocation(line: 344, column: 3, scope: !5415)
!5436 = !DILocation(line: 344, column: 3, scope: !5413)
!5437 = !DILocation(line: 344, column: 3, scope: !5414)
!5438 = !DILocation(line: 345, column: 26, scope: !5410)
!5439 = !DILocation(line: 345, column: 31, scope: !5410)
!5440 = !DILocation(line: 345, column: 3, scope: !5410)
!5441 = !DILocation(line: 346, column: 27, scope: !5410)
!5442 = !DILocation(line: 346, column: 32, scope: !5410)
!5443 = !DILocation(line: 346, column: 44, scope: !5410)
!5444 = !DILocation(line: 346, column: 3, scope: !5410)
!5445 = !DILocation(line: 347, column: 2, scope: !5411)
!5446 = !DILocation(line: 347, column: 2, scope: !5410)
!5447 = !DILocation(line: 349, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 349, column: 6)
!5449 = !DILocation(line: 349, column: 11, scope: !5448)
!5450 = !DILocation(line: 349, column: 17, scope: !5448)
!5451 = !DILocation(line: 349, column: 37, scope: !5448)
!5452 = !DILocation(line: 349, column: 42, scope: !5448)
!5453 = !DILocation(line: 349, column: 46, scope: !5448)
!5454 = !DILocation(line: 349, column: 52, scope: !5448)
!5455 = !DILocation(line: 349, column: 6, scope: !5404)
!5456 = !DILocation(line: 350, column: 13, scope: !5448)
!5457 = !DILocation(line: 350, column: 3, scope: !5448)
!5458 = !DILocation(line: 352, column: 36, scope: !5404)
!5459 = !DILocation(line: 352, column: 41, scope: !5404)
!5460 = !DILocation(line: 352, column: 2, scope: !5404)
!5461 = !DILocation(line: 354, column: 2, scope: !5404)
!5462 = !DILocation(line: 354, column: 6, scope: !5404)
!5463 = !DILocation(line: 354, column: 11, scope: !5404)
!5464 = !DILocation(line: 355, column: 1, scope: !5404)
!5465 = distinct !DISubprogram(name: "input_mt_assign_slots", scope: !3, file: !3, line: 483, type: !5466, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!85, !183, !1980, !5468, !85, !85}
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5470)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_pos", file: !4092, line: 119, size: 32, elements: !5471)
!5471 = !{!5472, !5473}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5470, file: !4092, line: 120, baseType: !1591, size: 16)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5470, file: !4092, line: 120, baseType: !1591, size: 16, offset: 16)
!5474 = !{!5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482}
!5475 = !DILocalVariable(name: "dev", arg: 1, scope: !5465, file: !3, line: 483, type: !183)
!5476 = !DILocalVariable(name: "slots", arg: 2, scope: !5465, file: !3, line: 483, type: !1980)
!5477 = !DILocalVariable(name: "pos", arg: 3, scope: !5465, file: !3, line: 484, type: !5468)
!5478 = !DILocalVariable(name: "num_pos", arg: 4, scope: !5465, file: !3, line: 484, type: !85)
!5479 = !DILocalVariable(name: "dmax", arg: 5, scope: !5465, file: !3, line: 485, type: !85)
!5480 = !DILocalVariable(name: "mt", scope: !5465, file: !3, line: 487, type: !4090)
!5481 = !DILocalVariable(name: "mu", scope: !5465, file: !3, line: 488, type: !85)
!5482 = !DILocalVariable(name: "nrc", scope: !5465, file: !3, line: 489, type: !85)
!5483 = !DILocation(line: 483, column: 45, scope: !5465)
!5484 = !DILocation(line: 483, column: 55, scope: !5465)
!5485 = !DILocation(line: 484, column: 33, scope: !5465)
!5486 = !DILocation(line: 484, column: 42, scope: !5465)
!5487 = !DILocation(line: 485, column: 10, scope: !5465)
!5488 = !DILocation(line: 487, column: 2, scope: !5465)
!5489 = !DILocation(line: 487, column: 19, scope: !5465)
!5490 = !DILocation(line: 487, column: 24, scope: !5465)
!5491 = !DILocation(line: 487, column: 29, scope: !5465)
!5492 = !DILocation(line: 488, column: 2, scope: !5465)
!5493 = !DILocation(line: 488, column: 6, scope: !5465)
!5494 = !DILocation(line: 488, column: 15, scope: !5465)
!5495 = !DILocation(line: 488, column: 13, scope: !5465)
!5496 = !DILocation(line: 488, column: 22, scope: !5465)
!5497 = !DILocation(line: 488, column: 20, scope: !5465)
!5498 = !DILocation(line: 489, column: 2, scope: !5465)
!5499 = !DILocation(line: 489, column: 6, scope: !5465)
!5500 = !DILocation(line: 491, column: 7, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 491, column: 6)
!5502 = !DILocation(line: 491, column: 10, scope: !5501)
!5503 = !DILocation(line: 491, column: 14, scope: !5501)
!5504 = !DILocation(line: 491, column: 18, scope: !5501)
!5505 = !DILocation(line: 491, column: 6, scope: !5465)
!5506 = !DILocation(line: 492, column: 3, scope: !5501)
!5507 = !DILocation(line: 493, column: 6, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 493, column: 6)
!5509 = !DILocation(line: 493, column: 16, scope: !5508)
!5510 = !DILocation(line: 493, column: 20, scope: !5508)
!5511 = !DILocation(line: 493, column: 14, scope: !5508)
!5512 = !DILocation(line: 493, column: 6, scope: !5465)
!5513 = !DILocation(line: 494, column: 3, scope: !5508)
!5514 = !DILocation(line: 495, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 495, column: 6)
!5516 = !DILocation(line: 495, column: 14, scope: !5515)
!5517 = !DILocation(line: 495, column: 6, scope: !5465)
!5518 = !DILocation(line: 496, column: 3, scope: !5515)
!5519 = !DILocation(line: 498, column: 28, scope: !5465)
!5520 = !DILocation(line: 498, column: 32, scope: !5465)
!5521 = !DILocation(line: 498, column: 37, scope: !5465)
!5522 = !DILocation(line: 498, column: 46, scope: !5465)
!5523 = !DILocation(line: 498, column: 8, scope: !5465)
!5524 = !DILocation(line: 498, column: 6, scope: !5465)
!5525 = !DILocation(line: 499, column: 22, scope: !5465)
!5526 = !DILocation(line: 499, column: 26, scope: !5465)
!5527 = !DILocation(line: 499, column: 31, scope: !5465)
!5528 = !DILocation(line: 499, column: 40, scope: !5465)
!5529 = !DILocation(line: 499, column: 46, scope: !5465)
!5530 = !DILocation(line: 499, column: 44, scope: !5465)
!5531 = !DILocation(line: 499, column: 55, scope: !5465)
!5532 = !DILocation(line: 499, column: 60, scope: !5465)
!5533 = !DILocation(line: 499, column: 2, scope: !5465)
!5534 = !DILocation(line: 500, column: 21, scope: !5465)
!5535 = !DILocation(line: 500, column: 25, scope: !5465)
!5536 = !DILocation(line: 500, column: 32, scope: !5465)
!5537 = !DILocation(line: 500, column: 2, scope: !5465)
!5538 = !DILocation(line: 502, column: 2, scope: !5465)
!5539 = !DILocation(line: 503, column: 1, scope: !5465)
!5540 = distinct !DISubprogram(name: "input_mt_set_matrix", scope: !3, file: !3, line: 406, type: !5541, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5543)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!85, !4090, !5468, !85, !85}
!5543 = !{!5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5560}
!5544 = !DILocalVariable(name: "mt", arg: 1, scope: !5540, file: !3, line: 406, type: !4090)
!5545 = !DILocalVariable(name: "pos", arg: 2, scope: !5540, file: !3, line: 407, type: !5468)
!5546 = !DILocalVariable(name: "num_pos", arg: 3, scope: !5540, file: !3, line: 407, type: !85)
!5547 = !DILocalVariable(name: "mu", arg: 4, scope: !5540, file: !3, line: 408, type: !85)
!5548 = !DILocalVariable(name: "p", scope: !5540, file: !3, line: 410, type: !5468)
!5549 = !DILocalVariable(name: "s", scope: !5540, file: !3, line: 411, type: !4892)
!5550 = !DILocalVariable(name: "w", scope: !5540, file: !3, line: 412, type: !1980)
!5551 = !DILocalVariable(name: "x", scope: !5540, file: !3, line: 413, type: !85)
!5552 = !DILocalVariable(name: "y", scope: !5540, file: !3, line: 413, type: !85)
!5553 = !DILocalVariable(name: "dx", scope: !5554, file: !3, line: 421, type: !85)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 420, column: 42)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 420, column: 3)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 420, column: 3)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 415, column: 59)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 415, column: 2)
!5559 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 415, column: 2)
!5560 = !DILocalVariable(name: "dy", scope: !5554, file: !3, line: 421, type: !85)
!5561 = !DILocation(line: 406, column: 49, scope: !5540)
!5562 = !DILocation(line: 407, column: 38, scope: !5540)
!5563 = !DILocation(line: 407, column: 47, scope: !5540)
!5564 = !DILocation(line: 408, column: 15, scope: !5540)
!5565 = !DILocation(line: 410, column: 2, scope: !5540)
!5566 = !DILocation(line: 410, column: 29, scope: !5540)
!5567 = !DILocation(line: 411, column: 2, scope: !5540)
!5568 = !DILocation(line: 411, column: 24, scope: !5540)
!5569 = !DILocation(line: 412, column: 2, scope: !5540)
!5570 = !DILocation(line: 412, column: 7, scope: !5540)
!5571 = !DILocation(line: 412, column: 11, scope: !5540)
!5572 = !DILocation(line: 412, column: 15, scope: !5540)
!5573 = !DILocation(line: 413, column: 2, scope: !5540)
!5574 = !DILocation(line: 413, column: 6, scope: !5540)
!5575 = !DILocation(line: 413, column: 9, scope: !5540)
!5576 = !DILocation(line: 415, column: 11, scope: !5559)
!5577 = !DILocation(line: 415, column: 15, scope: !5559)
!5578 = !DILocation(line: 415, column: 9, scope: !5559)
!5579 = !DILocation(line: 415, column: 7, scope: !5559)
!5580 = !DILocation(line: 415, column: 22, scope: !5558)
!5581 = !DILocation(line: 415, column: 27, scope: !5558)
!5582 = !DILocation(line: 415, column: 31, scope: !5558)
!5583 = !DILocation(line: 415, column: 39, scope: !5558)
!5584 = !DILocation(line: 415, column: 43, scope: !5558)
!5585 = !DILocation(line: 415, column: 37, scope: !5558)
!5586 = !DILocation(line: 415, column: 24, scope: !5558)
!5587 = !DILocation(line: 415, column: 2, scope: !5559)
!5588 = !DILocation(line: 416, column: 27, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 416, column: 7)
!5590 = !DILocation(line: 416, column: 8, scope: !5589)
!5591 = !DILocation(line: 416, column: 7, scope: !5557)
!5592 = !DILocation(line: 417, column: 4, scope: !5589)
!5593 = !DILocation(line: 418, column: 26, scope: !5557)
!5594 = !DILocation(line: 418, column: 7, scope: !5557)
!5595 = !DILocation(line: 418, column: 5, scope: !5557)
!5596 = !DILocation(line: 419, column: 26, scope: !5557)
!5597 = !DILocation(line: 419, column: 7, scope: !5557)
!5598 = !DILocation(line: 419, column: 5, scope: !5557)
!5599 = !DILocation(line: 420, column: 12, scope: !5556)
!5600 = !DILocation(line: 420, column: 10, scope: !5556)
!5601 = !DILocation(line: 420, column: 8, scope: !5556)
!5602 = !DILocation(line: 420, column: 17, scope: !5555)
!5603 = !DILocation(line: 420, column: 22, scope: !5555)
!5604 = !DILocation(line: 420, column: 28, scope: !5555)
!5605 = !DILocation(line: 420, column: 26, scope: !5555)
!5606 = !DILocation(line: 420, column: 19, scope: !5555)
!5607 = !DILocation(line: 420, column: 3, scope: !5556)
!5608 = !DILocation(line: 421, column: 4, scope: !5554)
!5609 = !DILocation(line: 421, column: 8, scope: !5554)
!5610 = !DILocation(line: 421, column: 13, scope: !5554)
!5611 = !DILocation(line: 421, column: 17, scope: !5554)
!5612 = !DILocation(line: 421, column: 20, scope: !5554)
!5613 = !DILocation(line: 421, column: 15, scope: !5554)
!5614 = !DILocation(line: 421, column: 23, scope: !5554)
!5615 = !DILocation(line: 421, column: 28, scope: !5554)
!5616 = !DILocation(line: 421, column: 32, scope: !5554)
!5617 = !DILocation(line: 421, column: 35, scope: !5554)
!5618 = !DILocation(line: 421, column: 30, scope: !5554)
!5619 = !DILocation(line: 422, column: 11, scope: !5554)
!5620 = !DILocation(line: 422, column: 16, scope: !5554)
!5621 = !DILocation(line: 422, column: 14, scope: !5554)
!5622 = !DILocation(line: 422, column: 21, scope: !5554)
!5623 = !DILocation(line: 422, column: 26, scope: !5554)
!5624 = !DILocation(line: 422, column: 24, scope: !5554)
!5625 = !DILocation(line: 422, column: 19, scope: !5554)
!5626 = !DILocation(line: 422, column: 31, scope: !5554)
!5627 = !DILocation(line: 422, column: 29, scope: !5554)
!5628 = !DILocation(line: 422, column: 6, scope: !5554)
!5629 = !DILocation(line: 422, column: 9, scope: !5554)
!5630 = !DILocation(line: 423, column: 3, scope: !5555)
!5631 = !DILocation(line: 423, column: 3, scope: !5554)
!5632 = !DILocation(line: 420, column: 38, scope: !5555)
!5633 = !DILocation(line: 420, column: 3, scope: !5555)
!5634 = distinct !{!5634, !5607, !5635, !4736, !4737}
!5635 = !DILocation(line: 423, column: 3, scope: !5556)
!5636 = !DILocation(line: 424, column: 2, scope: !5557)
!5637 = !DILocation(line: 415, column: 55, scope: !5558)
!5638 = !DILocation(line: 415, column: 2, scope: !5558)
!5639 = distinct !{!5639, !5587, !5640, !4736, !4737}
!5640 = !DILocation(line: 424, column: 2, scope: !5559)
!5641 = !DILocation(line: 426, column: 9, scope: !5540)
!5642 = !DILocation(line: 426, column: 13, scope: !5540)
!5643 = !DILocation(line: 426, column: 17, scope: !5540)
!5644 = !DILocation(line: 426, column: 11, scope: !5540)
!5645 = !DILocation(line: 427, column: 1, scope: !5540)
!5646 = !DILocation(line: 426, column: 2, scope: !5540)
!5647 = distinct !DISubprogram(name: "find_reduced_matrix", scope: !3, file: !3, line: 391, type: !5648, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !1980, !85, !85, !85, !85}
!5650 = !{!5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658}
!5651 = !DILocalVariable(name: "w", arg: 1, scope: !5647, file: !3, line: 391, type: !1980)
!5652 = !DILocalVariable(name: "nr", arg: 2, scope: !5647, file: !3, line: 391, type: !85)
!5653 = !DILocalVariable(name: "nc", arg: 3, scope: !5647, file: !3, line: 391, type: !85)
!5654 = !DILocalVariable(name: "nrc", arg: 4, scope: !5647, file: !3, line: 391, type: !85)
!5655 = !DILocalVariable(name: "mu", arg: 5, scope: !5647, file: !3, line: 391, type: !85)
!5656 = !DILocalVariable(name: "i", scope: !5647, file: !3, line: 393, type: !85)
!5657 = !DILocalVariable(name: "k", scope: !5647, file: !3, line: 393, type: !85)
!5658 = !DILocalVariable(name: "sum", scope: !5647, file: !3, line: 393, type: !85)
!5659 = !DILocation(line: 391, column: 38, scope: !5647)
!5660 = !DILocation(line: 391, column: 45, scope: !5647)
!5661 = !DILocation(line: 391, column: 53, scope: !5647)
!5662 = !DILocation(line: 391, column: 61, scope: !5647)
!5663 = !DILocation(line: 391, column: 70, scope: !5647)
!5664 = !DILocation(line: 393, column: 2, scope: !5647)
!5665 = !DILocation(line: 393, column: 6, scope: !5647)
!5666 = !DILocation(line: 393, column: 9, scope: !5647)
!5667 = !DILocation(line: 393, column: 12, scope: !5647)
!5668 = !DILocation(line: 395, column: 9, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 395, column: 2)
!5670 = !DILocation(line: 395, column: 7, scope: !5669)
!5671 = !DILocation(line: 395, column: 14, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 395, column: 2)
!5673 = !DILocation(line: 395, column: 18, scope: !5672)
!5674 = !DILocation(line: 395, column: 16, scope: !5672)
!5675 = !DILocation(line: 395, column: 2, scope: !5669)
!5676 = !DILocation(line: 396, column: 10, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 396, column: 3)
!5678 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 395, column: 28)
!5679 = !DILocation(line: 396, column: 8, scope: !5677)
!5680 = !DILocation(line: 396, column: 15, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 396, column: 3)
!5682 = !DILocation(line: 396, column: 19, scope: !5681)
!5683 = !DILocation(line: 396, column: 17, scope: !5681)
!5684 = !DILocation(line: 396, column: 3, scope: !5677)
!5685 = !DILocation(line: 397, column: 16, scope: !5681)
!5686 = !DILocation(line: 397, column: 20, scope: !5681)
!5687 = !DILocation(line: 397, column: 18, scope: !5681)
!5688 = !DILocation(line: 397, column: 23, scope: !5681)
!5689 = !DILocation(line: 397, column: 27, scope: !5681)
!5690 = !DILocation(line: 397, column: 31, scope: !5681)
!5691 = !DILocation(line: 397, column: 29, scope: !5681)
!5692 = !DILocation(line: 397, column: 35, scope: !5681)
!5693 = !DILocation(line: 397, column: 33, scope: !5681)
!5694 = !DILocation(line: 397, column: 40, scope: !5681)
!5695 = !DILocation(line: 397, column: 46, scope: !5681)
!5696 = !DILocation(line: 397, column: 43, scope: !5681)
!5697 = !DILocation(line: 397, column: 50, scope: !5681)
!5698 = !DILocation(line: 397, column: 4, scope: !5681)
!5699 = !DILocation(line: 396, column: 24, scope: !5681)
!5700 = !DILocation(line: 396, column: 3, scope: !5681)
!5701 = distinct !{!5701, !5684, !5702, !4736, !4737}
!5702 = !DILocation(line: 397, column: 52, scope: !5677)
!5703 = !DILocation(line: 398, column: 7, scope: !5678)
!5704 = !DILocation(line: 399, column: 10, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 399, column: 3)
!5706 = !DILocation(line: 399, column: 8, scope: !5705)
!5707 = !DILocation(line: 399, column: 15, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 399, column: 3)
!5709 = !DILocation(line: 399, column: 19, scope: !5708)
!5710 = !DILocation(line: 399, column: 17, scope: !5708)
!5711 = !DILocation(line: 399, column: 3, scope: !5705)
!5712 = !DILocation(line: 400, column: 23, scope: !5708)
!5713 = !DILocation(line: 400, column: 27, scope: !5708)
!5714 = !DILocation(line: 400, column: 25, scope: !5708)
!5715 = !DILocation(line: 400, column: 33, scope: !5708)
!5716 = !DILocation(line: 400, column: 37, scope: !5708)
!5717 = !DILocation(line: 400, column: 35, scope: !5708)
!5718 = !DILocation(line: 400, column: 41, scope: !5708)
!5719 = !DILocation(line: 400, column: 39, scope: !5708)
!5720 = !DILocation(line: 400, column: 45, scope: !5708)
!5721 = !DILocation(line: 400, column: 51, scope: !5708)
!5722 = !DILocation(line: 400, column: 48, scope: !5708)
!5723 = !DILocation(line: 400, column: 55, scope: !5708)
!5724 = !DILocation(line: 400, column: 11, scope: !5708)
!5725 = !DILocation(line: 400, column: 8, scope: !5708)
!5726 = !DILocation(line: 400, column: 4, scope: !5708)
!5727 = !DILocation(line: 399, column: 29, scope: !5708)
!5728 = !DILocation(line: 399, column: 26, scope: !5708)
!5729 = !DILocation(line: 399, column: 3, scope: !5708)
!5730 = distinct !{!5730, !5711, !5731, !4736, !4737}
!5731 = !DILocation(line: 400, column: 57, scope: !5705)
!5732 = !DILocation(line: 401, column: 8, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 401, column: 7)
!5734 = !DILocation(line: 401, column: 7, scope: !5678)
!5735 = !DILocation(line: 402, column: 4, scope: !5733)
!5736 = !DILocation(line: 403, column: 2, scope: !5678)
!5737 = !DILocation(line: 395, column: 24, scope: !5672)
!5738 = !DILocation(line: 395, column: 2, scope: !5672)
!5739 = distinct !{!5739, !5675, !5740, !4736, !4737}
!5740 = !DILocation(line: 403, column: 2, scope: !5669)
!5741 = !DILocation(line: 404, column: 1, scope: !5647)
!5742 = distinct !DISubprogram(name: "input_mt_set_slots", scope: !3, file: !3, line: 429, type: !5743, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{null, !4090, !1980, !85}
!5745 = !{!5746, !5747, !5748, !5749, !5750, !5751}
!5746 = !DILocalVariable(name: "mt", arg: 1, scope: !5742, file: !3, line: 429, type: !4090)
!5747 = !DILocalVariable(name: "slots", arg: 2, scope: !5742, file: !3, line: 430, type: !1980)
!5748 = !DILocalVariable(name: "num_pos", arg: 3, scope: !5742, file: !3, line: 430, type: !85)
!5749 = !DILocalVariable(name: "s", scope: !5742, file: !3, line: 432, type: !4892)
!5750 = !DILocalVariable(name: "w", scope: !5742, file: !3, line: 433, type: !1980)
!5751 = !DILocalVariable(name: "j", scope: !5742, file: !3, line: 433, type: !85)
!5752 = !DILocation(line: 429, column: 49, scope: !5742)
!5753 = !DILocation(line: 430, column: 16, scope: !5742)
!5754 = !DILocation(line: 430, column: 27, scope: !5742)
!5755 = !DILocation(line: 432, column: 2, scope: !5742)
!5756 = !DILocation(line: 432, column: 24, scope: !5742)
!5757 = !DILocation(line: 433, column: 2, scope: !5742)
!5758 = !DILocation(line: 433, column: 7, scope: !5742)
!5759 = !DILocation(line: 433, column: 11, scope: !5742)
!5760 = !DILocation(line: 433, column: 15, scope: !5742)
!5761 = !DILocation(line: 433, column: 20, scope: !5742)
!5762 = !DILocation(line: 435, column: 9, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 435, column: 2)
!5764 = !DILocation(line: 435, column: 7, scope: !5763)
!5765 = !DILocation(line: 435, column: 14, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 435, column: 2)
!5767 = !DILocation(line: 435, column: 19, scope: !5766)
!5768 = !DILocation(line: 435, column: 16, scope: !5766)
!5769 = !DILocation(line: 435, column: 2, scope: !5763)
!5770 = !DILocation(line: 436, column: 3, scope: !5766)
!5771 = !DILocation(line: 436, column: 9, scope: !5766)
!5772 = !DILocation(line: 436, column: 12, scope: !5766)
!5773 = !DILocation(line: 435, column: 29, scope: !5766)
!5774 = !DILocation(line: 435, column: 2, scope: !5766)
!5775 = distinct !{!5775, !5769, !5776, !4736, !4737}
!5776 = !DILocation(line: 436, column: 15, scope: !5763)
!5777 = !DILocation(line: 438, column: 11, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 438, column: 2)
!5779 = !DILocation(line: 438, column: 15, scope: !5778)
!5780 = !DILocation(line: 438, column: 9, scope: !5778)
!5781 = !DILocation(line: 438, column: 7, scope: !5778)
!5782 = !DILocation(line: 438, column: 22, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 438, column: 2)
!5784 = !DILocation(line: 438, column: 27, scope: !5783)
!5785 = !DILocation(line: 438, column: 31, scope: !5783)
!5786 = !DILocation(line: 438, column: 39, scope: !5783)
!5787 = !DILocation(line: 438, column: 43, scope: !5783)
!5788 = !DILocation(line: 438, column: 37, scope: !5783)
!5789 = !DILocation(line: 438, column: 24, scope: !5783)
!5790 = !DILocation(line: 438, column: 2, scope: !5778)
!5791 = !DILocation(line: 439, column: 27, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 439, column: 7)
!5793 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 438, column: 59)
!5794 = !DILocation(line: 439, column: 8, scope: !5792)
!5795 = !DILocation(line: 439, column: 7, scope: !5793)
!5796 = !DILocation(line: 440, column: 4, scope: !5792)
!5797 = !DILocation(line: 442, column: 10, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 442, column: 3)
!5799 = !DILocation(line: 442, column: 8, scope: !5798)
!5800 = !DILocation(line: 442, column: 15, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 442, column: 3)
!5802 = !DILocation(line: 442, column: 20, scope: !5801)
!5803 = !DILocation(line: 442, column: 17, scope: !5801)
!5804 = !DILocation(line: 442, column: 3, scope: !5798)
!5805 = !DILocation(line: 443, column: 8, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 443, column: 8)
!5807 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 442, column: 34)
!5808 = !DILocation(line: 443, column: 10, scope: !5806)
!5809 = !DILocation(line: 443, column: 13, scope: !5806)
!5810 = !DILocation(line: 443, column: 8, scope: !5807)
!5811 = !DILocation(line: 444, column: 16, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 443, column: 18)
!5813 = !DILocation(line: 444, column: 20, scope: !5812)
!5814 = !DILocation(line: 444, column: 24, scope: !5812)
!5815 = !DILocation(line: 444, column: 18, scope: !5812)
!5816 = !DILocation(line: 444, column: 5, scope: !5812)
!5817 = !DILocation(line: 444, column: 11, scope: !5812)
!5818 = !DILocation(line: 444, column: 14, scope: !5812)
!5819 = !DILocation(line: 445, column: 5, scope: !5812)
!5820 = !DILocation(line: 447, column: 3, scope: !5807)
!5821 = !DILocation(line: 442, column: 30, scope: !5801)
!5822 = !DILocation(line: 442, column: 3, scope: !5801)
!5823 = distinct !{!5823, !5804, !5824, !4736, !4737}
!5824 = !DILocation(line: 447, column: 3, scope: !5798)
!5825 = !DILocation(line: 449, column: 8, scope: !5793)
!5826 = !DILocation(line: 449, column: 5, scope: !5793)
!5827 = !DILocation(line: 450, column: 2, scope: !5793)
!5828 = !DILocation(line: 438, column: 55, scope: !5783)
!5829 = !DILocation(line: 438, column: 2, scope: !5783)
!5830 = distinct !{!5830, !5790, !5831, !4736, !4737}
!5831 = !DILocation(line: 450, column: 2, scope: !5778)
!5832 = !DILocation(line: 452, column: 11, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 452, column: 2)
!5834 = !DILocation(line: 452, column: 15, scope: !5833)
!5835 = !DILocation(line: 452, column: 9, scope: !5833)
!5836 = !DILocation(line: 452, column: 7, scope: !5833)
!5837 = !DILocation(line: 452, column: 22, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 452, column: 2)
!5839 = !DILocation(line: 452, column: 27, scope: !5838)
!5840 = !DILocation(line: 452, column: 31, scope: !5838)
!5841 = !DILocation(line: 452, column: 39, scope: !5838)
!5842 = !DILocation(line: 452, column: 43, scope: !5838)
!5843 = !DILocation(line: 452, column: 37, scope: !5838)
!5844 = !DILocation(line: 452, column: 24, scope: !5838)
!5845 = !DILocation(line: 452, column: 2, scope: !5833)
!5846 = !DILocation(line: 453, column: 26, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 453, column: 7)
!5848 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 452, column: 59)
!5849 = !DILocation(line: 453, column: 7, scope: !5847)
!5850 = !DILocation(line: 453, column: 7, scope: !5848)
!5851 = !DILocation(line: 454, column: 4, scope: !5847)
!5852 = !DILocation(line: 456, column: 10, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 456, column: 3)
!5854 = !DILocation(line: 456, column: 8, scope: !5853)
!5855 = !DILocation(line: 456, column: 15, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 456, column: 3)
!5857 = !DILocation(line: 456, column: 20, scope: !5856)
!5858 = !DILocation(line: 456, column: 17, scope: !5856)
!5859 = !DILocation(line: 456, column: 3, scope: !5853)
!5860 = !DILocation(line: 457, column: 8, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 457, column: 8)
!5862 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 456, column: 34)
!5863 = !DILocation(line: 457, column: 14, scope: !5861)
!5864 = !DILocation(line: 457, column: 17, scope: !5861)
!5865 = !DILocation(line: 457, column: 8, scope: !5862)
!5866 = !DILocation(line: 458, column: 16, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 457, column: 22)
!5868 = !DILocation(line: 458, column: 20, scope: !5867)
!5869 = !DILocation(line: 458, column: 24, scope: !5867)
!5870 = !DILocation(line: 458, column: 18, scope: !5867)
!5871 = !DILocation(line: 458, column: 5, scope: !5867)
!5872 = !DILocation(line: 458, column: 11, scope: !5867)
!5873 = !DILocation(line: 458, column: 14, scope: !5867)
!5874 = !DILocation(line: 459, column: 5, scope: !5867)
!5875 = !DILocation(line: 461, column: 3, scope: !5862)
!5876 = !DILocation(line: 456, column: 30, scope: !5856)
!5877 = !DILocation(line: 456, column: 3, scope: !5856)
!5878 = distinct !{!5878, !5859, !5879, !4736, !4737}
!5879 = !DILocation(line: 461, column: 3, scope: !5853)
!5880 = !DILocation(line: 462, column: 2, scope: !5848)
!5881 = !DILocation(line: 452, column: 55, scope: !5838)
!5882 = !DILocation(line: 452, column: 2, scope: !5838)
!5883 = distinct !{!5883, !5845, !5884, !4736, !4737}
!5884 = !DILocation(line: 462, column: 2, scope: !5833)
!5885 = !DILocation(line: 463, column: 1, scope: !5742)
!5886 = distinct !DISubprogram(name: "input_mt_get_slot_by_key", scope: !3, file: !3, line: 518, type: !326, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5887)
!5887 = !{!5888, !5889, !5890, !5891}
!5888 = !DILocalVariable(name: "dev", arg: 1, scope: !5886, file: !3, line: 518, type: !183)
!5889 = !DILocalVariable(name: "key", arg: 2, scope: !5886, file: !3, line: 518, type: !85)
!5890 = !DILocalVariable(name: "mt", scope: !5886, file: !3, line: 520, type: !4090)
!5891 = !DILocalVariable(name: "s", scope: !5886, file: !3, line: 521, type: !4892)
!5892 = !DILocation(line: 518, column: 48, scope: !5886)
!5893 = !DILocation(line: 518, column: 57, scope: !5886)
!5894 = !DILocation(line: 520, column: 2, scope: !5886)
!5895 = !DILocation(line: 520, column: 19, scope: !5886)
!5896 = !DILocation(line: 520, column: 24, scope: !5886)
!5897 = !DILocation(line: 520, column: 29, scope: !5886)
!5898 = !DILocation(line: 521, column: 2, scope: !5886)
!5899 = !DILocation(line: 521, column: 24, scope: !5886)
!5900 = !DILocation(line: 523, column: 7, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 523, column: 6)
!5902 = !DILocation(line: 523, column: 6, scope: !5886)
!5903 = !DILocation(line: 524, column: 3, scope: !5901)
!5904 = !DILocation(line: 526, column: 11, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 526, column: 2)
!5906 = !DILocation(line: 526, column: 15, scope: !5905)
!5907 = !DILocation(line: 526, column: 9, scope: !5905)
!5908 = !DILocation(line: 526, column: 7, scope: !5905)
!5909 = !DILocation(line: 526, column: 22, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 526, column: 2)
!5911 = !DILocation(line: 526, column: 27, scope: !5910)
!5912 = !DILocation(line: 526, column: 31, scope: !5910)
!5913 = !DILocation(line: 526, column: 39, scope: !5910)
!5914 = !DILocation(line: 526, column: 43, scope: !5910)
!5915 = !DILocation(line: 526, column: 37, scope: !5910)
!5916 = !DILocation(line: 526, column: 24, scope: !5910)
!5917 = !DILocation(line: 526, column: 2, scope: !5905)
!5918 = !DILocation(line: 527, column: 26, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 527, column: 7)
!5920 = !DILocation(line: 527, column: 7, scope: !5919)
!5921 = !DILocation(line: 527, column: 29, scope: !5919)
!5922 = !DILocation(line: 527, column: 32, scope: !5919)
!5923 = !DILocation(line: 527, column: 35, scope: !5919)
!5924 = !DILocation(line: 527, column: 42, scope: !5919)
!5925 = !DILocation(line: 527, column: 39, scope: !5919)
!5926 = !DILocation(line: 527, column: 7, scope: !5910)
!5927 = !DILocation(line: 528, column: 11, scope: !5919)
!5928 = !DILocation(line: 528, column: 15, scope: !5919)
!5929 = !DILocation(line: 528, column: 19, scope: !5919)
!5930 = !DILocation(line: 528, column: 13, scope: !5919)
!5931 = !DILocation(line: 528, column: 4, scope: !5919)
!5932 = !DILocation(line: 526, column: 55, scope: !5910)
!5933 = !DILocation(line: 526, column: 2, scope: !5910)
!5934 = distinct !{!5934, !5917, !5935, !4736, !4737}
!5935 = !DILocation(line: 528, column: 19, scope: !5905)
!5936 = !DILocation(line: 530, column: 11, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 530, column: 2)
!5938 = !DILocation(line: 530, column: 15, scope: !5937)
!5939 = !DILocation(line: 530, column: 9, scope: !5937)
!5940 = !DILocation(line: 530, column: 7, scope: !5937)
!5941 = !DILocation(line: 530, column: 22, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 530, column: 2)
!5943 = !DILocation(line: 530, column: 27, scope: !5942)
!5944 = !DILocation(line: 530, column: 31, scope: !5942)
!5945 = !DILocation(line: 530, column: 39, scope: !5942)
!5946 = !DILocation(line: 530, column: 43, scope: !5942)
!5947 = !DILocation(line: 530, column: 37, scope: !5942)
!5948 = !DILocation(line: 530, column: 24, scope: !5942)
!5949 = !DILocation(line: 530, column: 2, scope: !5937)
!5950 = !DILocation(line: 531, column: 27, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 531, column: 7)
!5952 = !DILocation(line: 531, column: 8, scope: !5951)
!5953 = !DILocation(line: 531, column: 30, scope: !5951)
!5954 = !DILocation(line: 531, column: 51, scope: !5951)
!5955 = !DILocation(line: 531, column: 55, scope: !5951)
!5956 = !DILocation(line: 531, column: 34, scope: !5951)
!5957 = !DILocation(line: 531, column: 7, scope: !5942)
!5958 = !DILocation(line: 532, column: 13, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 531, column: 59)
!5960 = !DILocation(line: 532, column: 4, scope: !5959)
!5961 = !DILocation(line: 532, column: 7, scope: !5959)
!5962 = !DILocation(line: 532, column: 11, scope: !5959)
!5963 = !DILocation(line: 533, column: 11, scope: !5959)
!5964 = !DILocation(line: 533, column: 15, scope: !5959)
!5965 = !DILocation(line: 533, column: 19, scope: !5959)
!5966 = !DILocation(line: 533, column: 13, scope: !5959)
!5967 = !DILocation(line: 533, column: 4, scope: !5959)
!5968 = !DILocation(line: 531, column: 56, scope: !5951)
!5969 = !DILocation(line: 530, column: 55, scope: !5942)
!5970 = !DILocation(line: 530, column: 2, scope: !5942)
!5971 = distinct !{!5971, !5949, !5972, !4736, !4737}
!5972 = !DILocation(line: 534, column: 3, scope: !5937)
!5973 = !DILocation(line: 536, column: 2, scope: !5886)
!5974 = !DILocation(line: 537, column: 1, scope: !5886)
!5975 = distinct !DISubprogram(name: "input_mt_is_active", scope: !4092, file: !4092, line: 65, type: !5976, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!642, !4999}
!5978 = !{!5979}
!5979 = !DILocalVariable(name: "slot", arg: 1, scope: !5975, file: !4092, line: 65, type: !4999)
!5980 = !DILocation(line: 65, column: 67, scope: !5975)
!5981 = !DILocation(line: 67, column: 28, scope: !5975)
!5982 = !DILocation(line: 67, column: 9, scope: !5975)
!5983 = !DILocation(line: 67, column: 54, scope: !5975)
!5984 = !DILocation(line: 67, column: 2, scope: !5975)
!5985 = distinct !DISubprogram(name: "input_mt_is_used", scope: !4092, file: !4092, line: 70, type: !5986, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5990)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!642, !5988, !4999}
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5989, size: 64)
!5989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!5990 = !{!5991, !5992}
!5991 = !DILocalVariable(name: "mt", arg: 1, scope: !5985, file: !4092, line: 70, type: !5988)
!5992 = !DILocalVariable(name: "slot", arg: 2, scope: !5985, file: !4092, line: 71, type: !4999)
!5993 = !DILocation(line: 70, column: 60, scope: !5985)
!5994 = !DILocation(line: 71, column: 37, scope: !5985)
!5995 = !DILocation(line: 73, column: 9, scope: !5985)
!5996 = !DILocation(line: 73, column: 15, scope: !5985)
!5997 = !DILocation(line: 73, column: 24, scope: !5985)
!5998 = !DILocation(line: 73, column: 28, scope: !5985)
!5999 = !DILocation(line: 73, column: 21, scope: !5985)
!6000 = !DILocation(line: 73, column: 2, scope: !5985)
!6001 = distinct !DISubprogram(name: "kmalloc", scope: !123, file: !123, line: 591, type: !4752, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6002)
!6002 = !{!6003, !6004, !6005}
!6003 = !DILocalVariable(name: "size", arg: 1, scope: !6001, file: !123, line: 591, type: !140)
!6004 = !DILocalVariable(name: "flags", arg: 2, scope: !6001, file: !123, line: 591, type: !133)
!6005 = !DILocalVariable(name: "index", scope: !6006, file: !123, line: 594, type: !7)
!6006 = distinct !DILexicalBlock(scope: !6007, file: !123, line: 593, column: 42)
!6007 = distinct !DILexicalBlock(scope: !6001, file: !123, line: 593, column: 6)
!6008 = !DILocation(line: 591, column: 61, scope: !6001)
!6009 = !DILocation(line: 591, column: 73, scope: !6001)
!6010 = !DILocation(line: 593, column: 27, scope: !6007)
!6011 = !DILocation(line: 593, column: 6, scope: !6007)
!6012 = !DILocation(line: 593, column: 33, scope: !6007)
!6013 = !DILocation(line: 593, column: 36, scope: !6007)
!6014 = !DILocation(line: 593, column: 6, scope: !6001)
!6015 = !DILocation(line: 594, column: 3, scope: !6006)
!6016 = !DILocation(line: 594, column: 16, scope: !6006)
!6017 = !DILocation(line: 596, column: 7, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6006, file: !123, line: 596, column: 7)
!6019 = !DILocation(line: 596, column: 12, scope: !6018)
!6020 = !DILocation(line: 596, column: 7, scope: !6006)
!6021 = !DILocation(line: 597, column: 25, scope: !6018)
!6022 = !DILocation(line: 597, column: 31, scope: !6018)
!6023 = !DILocation(line: 597, column: 11, scope: !6018)
!6024 = !DILocation(line: 597, column: 4, scope: !6018)
!6025 = !DILocation(line: 599, column: 11, scope: !6006)
!6026 = !DILocation(line: 599, column: 9, scope: !6006)
!6027 = !DILocation(line: 601, column: 33, scope: !6006)
!6028 = !DILocation(line: 601, column: 40, scope: !6006)
!6029 = !DILocation(line: 601, column: 20, scope: !6006)
!6030 = !DILocation(line: 601, column: 5, scope: !6006)
!6031 = !DILocation(line: 601, column: 51, scope: !6006)
!6032 = !DILocation(line: 602, column: 5, scope: !6006)
!6033 = !DILocation(line: 602, column: 12, scope: !6006)
!6034 = !DILocation(line: 600, column: 10, scope: !6006)
!6035 = !DILocation(line: 600, column: 3, scope: !6006)
!6036 = !DILocation(line: 603, column: 2, scope: !6007)
!6037 = !DILocation(line: 604, column: 19, scope: !6001)
!6038 = !DILocation(line: 604, column: 25, scope: !6001)
!6039 = !DILocation(line: 604, column: 9, scope: !6001)
!6040 = !DILocation(line: 604, column: 2, scope: !6001)
!6041 = !DILocation(line: 605, column: 1, scope: !6001)
!6042 = !DISubprogram(name: "kmalloc_large", scope: !123, file: !123, line: 531, type: !4752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6043 = distinct !DISubprogram(name: "__kmalloc_index", scope: !123, file: !123, line: 444, type: !6044, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6046)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!7, !140, !642}
!6046 = !{!6047, !6048}
!6047 = !DILocalVariable(name: "size", arg: 1, scope: !6043, file: !123, line: 444, type: !140)
!6048 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6043, file: !123, line: 445, type: !642)
!6049 = !DILocation(line: 444, column: 60, scope: !6043)
!6050 = !DILocation(line: 445, column: 16, scope: !6043)
!6051 = !DILocation(line: 447, column: 7, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 447, column: 6)
!6053 = !DILocation(line: 447, column: 6, scope: !6043)
!6054 = !DILocation(line: 448, column: 3, scope: !6052)
!6055 = !DILocation(line: 450, column: 6, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 450, column: 6)
!6057 = !DILocation(line: 450, column: 11, scope: !6056)
!6058 = !DILocation(line: 450, column: 6, scope: !6043)
!6059 = !DILocation(line: 451, column: 3, scope: !6056)
!6060 = !DILocation(line: 453, column: 32, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 453, column: 6)
!6062 = !DILocation(line: 453, column: 37, scope: !6061)
!6063 = !DILocation(line: 453, column: 42, scope: !6061)
!6064 = !DILocation(line: 453, column: 45, scope: !6061)
!6065 = !DILocation(line: 453, column: 50, scope: !6061)
!6066 = !DILocation(line: 453, column: 6, scope: !6043)
!6067 = !DILocation(line: 454, column: 3, scope: !6061)
!6068 = !DILocation(line: 455, column: 32, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 455, column: 6)
!6070 = !DILocation(line: 455, column: 37, scope: !6069)
!6071 = !DILocation(line: 455, column: 43, scope: !6069)
!6072 = !DILocation(line: 455, column: 46, scope: !6069)
!6073 = !DILocation(line: 455, column: 51, scope: !6069)
!6074 = !DILocation(line: 455, column: 6, scope: !6043)
!6075 = !DILocation(line: 456, column: 3, scope: !6069)
!6076 = !DILocation(line: 457, column: 6, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 457, column: 6)
!6078 = !DILocation(line: 457, column: 11, scope: !6077)
!6079 = !DILocation(line: 457, column: 6, scope: !6043)
!6080 = !DILocation(line: 457, column: 26, scope: !6077)
!6081 = !DILocation(line: 458, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 458, column: 6)
!6083 = !DILocation(line: 458, column: 11, scope: !6082)
!6084 = !DILocation(line: 458, column: 6, scope: !6043)
!6085 = !DILocation(line: 458, column: 26, scope: !6082)
!6086 = !DILocation(line: 459, column: 6, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 459, column: 6)
!6088 = !DILocation(line: 459, column: 11, scope: !6087)
!6089 = !DILocation(line: 459, column: 6, scope: !6043)
!6090 = !DILocation(line: 459, column: 26, scope: !6087)
!6091 = !DILocation(line: 460, column: 6, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 460, column: 6)
!6093 = !DILocation(line: 460, column: 11, scope: !6092)
!6094 = !DILocation(line: 460, column: 6, scope: !6043)
!6095 = !DILocation(line: 460, column: 26, scope: !6092)
!6096 = !DILocation(line: 461, column: 6, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 461, column: 6)
!6098 = !DILocation(line: 461, column: 11, scope: !6097)
!6099 = !DILocation(line: 461, column: 6, scope: !6043)
!6100 = !DILocation(line: 461, column: 26, scope: !6097)
!6101 = !DILocation(line: 462, column: 6, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 462, column: 6)
!6103 = !DILocation(line: 462, column: 11, scope: !6102)
!6104 = !DILocation(line: 462, column: 6, scope: !6043)
!6105 = !DILocation(line: 462, column: 26, scope: !6102)
!6106 = !DILocation(line: 463, column: 6, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 463, column: 6)
!6108 = !DILocation(line: 463, column: 11, scope: !6107)
!6109 = !DILocation(line: 463, column: 6, scope: !6043)
!6110 = !DILocation(line: 463, column: 26, scope: !6107)
!6111 = !DILocation(line: 464, column: 6, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 464, column: 6)
!6113 = !DILocation(line: 464, column: 11, scope: !6112)
!6114 = !DILocation(line: 464, column: 6, scope: !6043)
!6115 = !DILocation(line: 464, column: 26, scope: !6112)
!6116 = !DILocation(line: 465, column: 6, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 465, column: 6)
!6118 = !DILocation(line: 465, column: 11, scope: !6117)
!6119 = !DILocation(line: 465, column: 6, scope: !6043)
!6120 = !DILocation(line: 465, column: 26, scope: !6117)
!6121 = !DILocation(line: 466, column: 6, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 466, column: 6)
!6123 = !DILocation(line: 466, column: 11, scope: !6122)
!6124 = !DILocation(line: 466, column: 6, scope: !6043)
!6125 = !DILocation(line: 466, column: 26, scope: !6122)
!6126 = !DILocation(line: 467, column: 6, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 467, column: 6)
!6128 = !DILocation(line: 467, column: 11, scope: !6127)
!6129 = !DILocation(line: 467, column: 6, scope: !6043)
!6130 = !DILocation(line: 467, column: 26, scope: !6127)
!6131 = !DILocation(line: 468, column: 6, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 468, column: 6)
!6133 = !DILocation(line: 468, column: 11, scope: !6132)
!6134 = !DILocation(line: 468, column: 6, scope: !6043)
!6135 = !DILocation(line: 468, column: 26, scope: !6132)
!6136 = !DILocation(line: 469, column: 6, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 469, column: 6)
!6138 = !DILocation(line: 469, column: 11, scope: !6137)
!6139 = !DILocation(line: 469, column: 6, scope: !6043)
!6140 = !DILocation(line: 469, column: 26, scope: !6137)
!6141 = !DILocation(line: 470, column: 6, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 470, column: 6)
!6143 = !DILocation(line: 470, column: 11, scope: !6142)
!6144 = !DILocation(line: 470, column: 6, scope: !6043)
!6145 = !DILocation(line: 470, column: 26, scope: !6142)
!6146 = !DILocation(line: 471, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 471, column: 6)
!6148 = !DILocation(line: 471, column: 11, scope: !6147)
!6149 = !DILocation(line: 471, column: 6, scope: !6043)
!6150 = !DILocation(line: 471, column: 26, scope: !6147)
!6151 = !DILocation(line: 472, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 472, column: 6)
!6153 = !DILocation(line: 472, column: 11, scope: !6152)
!6154 = !DILocation(line: 472, column: 6, scope: !6043)
!6155 = !DILocation(line: 472, column: 26, scope: !6152)
!6156 = !DILocation(line: 473, column: 6, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 473, column: 6)
!6158 = !DILocation(line: 473, column: 11, scope: !6157)
!6159 = !DILocation(line: 473, column: 6, scope: !6043)
!6160 = !DILocation(line: 473, column: 26, scope: !6157)
!6161 = !DILocation(line: 474, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 474, column: 6)
!6163 = !DILocation(line: 474, column: 11, scope: !6162)
!6164 = !DILocation(line: 474, column: 6, scope: !6043)
!6165 = !DILocation(line: 474, column: 27, scope: !6162)
!6166 = !DILocation(line: 475, column: 6, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 475, column: 6)
!6168 = !DILocation(line: 475, column: 11, scope: !6167)
!6169 = !DILocation(line: 475, column: 6, scope: !6043)
!6170 = !DILocation(line: 475, column: 32, scope: !6167)
!6171 = !DILocation(line: 477, column: 50, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6043, file: !123, line: 477, column: 6)
!6173 = !DILocation(line: 477, column: 6, scope: !6043)
!6174 = !DILocation(line: 478, column: 3, scope: !6172)
!6175 = !DILocation(line: 478, column: 3, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !123, line: 478, column: 3)
!6177 = distinct !DILexicalBlock(scope: !6172, file: !123, line: 478, column: 3)
!6178 = !{i32 -2141124146}
!6179 = !DILocation(line: 478, column: 3, scope: !6177)
!6180 = !DILocation(line: 480, column: 3, scope: !6172)
!6181 = !DILocation(line: 480, column: 3, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6172, file: !123, line: 480, column: 3)
!6183 = !DILocation(line: 480, column: 3, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6182, file: !123, line: 480, column: 3)
!6185 = !DILocation(line: 480, column: 3, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6182, file: !123, line: 480, column: 3)
!6187 = !{i64 2153843353, i64 2153843382, i64 2153843428, i64 2153843486, i64 2153843540, i64 2153843594, i64 2153843649, i64 2153843680}
!6188 = !DILocation(line: 483, column: 2, scope: !6043)
!6189 = !DILocation(line: 484, column: 1, scope: !6043)
!6190 = !DISubprogram(name: "kmalloc_trace", scope: !123, file: !123, line: 525, type: !6191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!137, !6193, !133, !140}
!6193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6194, size: 64)
!6194 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6195, line: 325, flags: DIFlagFwdDecl)
!6195 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6196 = distinct !DISubprogram(name: "kmalloc_type", scope: !123, file: !123, line: 401, type: !6197, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6199)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!122, !133, !136}
!6199 = !{!6200, !6201}
!6200 = !DILocalVariable(name: "flags", arg: 1, scope: !6196, file: !123, line: 401, type: !133)
!6201 = !DILocalVariable(name: "caller", arg: 2, scope: !6196, file: !123, line: 401, type: !136)
!6202 = !DILocation(line: 401, column: 67, scope: !6196)
!6203 = !DILocation(line: 401, column: 88, scope: !6196)
!6204 = !DILocation(line: 407, column: 6, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6196, file: !123, line: 407, column: 6)
!6206 = !DILocation(line: 407, column: 6, scope: !6196)
!6207 = !DILocation(line: 413, column: 3, scope: !6205)
!6208 = !DILocation(line: 423, column: 38, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6196, file: !123, line: 423, column: 6)
!6210 = !DILocation(line: 423, column: 44, scope: !6209)
!6211 = !DILocation(line: 423, column: 6, scope: !6196)
!6212 = !DILocation(line: 424, column: 3, scope: !6209)
!6213 = !DILocation(line: 426, column: 3, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6196, file: !123, line: 425, column: 6)
!6215 = !DILocation(line: 429, column: 1, scope: !6196)
!6216 = !DISubprogram(name: "__kmalloc", scope: !123, file: !123, line: 488, type: !4752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6217 = !DISubprogram(name: "__compiletime_assert_263", scope: !123, file: !123, line: 478, type: !2184, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6218 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4765, file: !4765, line: 51, type: !6219, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6221)
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!642, !642}
!6221 = !{!6222}
!6222 = !DILocalVariable(name: "overflow", arg: 1, scope: !6218, file: !4765, line: 51, type: !642)
!6223 = !DILocation(line: 51, column: 60, scope: !6218)
!6224 = !DILocation(line: 53, column: 9, scope: !6218)
!6225 = !DILocation(line: 53, column: 2, scope: !6218)
!6226 = distinct !DISubprogram(name: "instrument_write", scope: !6227, file: !6227, line: 38, type: !6228, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6233)
!6227 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6228 = !DISubroutineType(types: !6229)
!6229 = !{null, !6230, !140}
!6230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6231, size: 64)
!6231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6232)
!6232 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6233 = !{!6234, !6235}
!6234 = !DILocalVariable(name: "v", arg: 1, scope: !6226, file: !6227, line: 38, type: !6230)
!6235 = !DILocalVariable(name: "size", arg: 2, scope: !6226, file: !6227, line: 38, type: !140)
!6236 = !DILocation(line: 38, column: 67, scope: !6226)
!6237 = !DILocation(line: 38, column: 77, scope: !6226)
!6238 = !DILocation(line: 40, column: 20, scope: !6226)
!6239 = !DILocation(line: 40, column: 23, scope: !6226)
!6240 = !DILocation(line: 40, column: 2, scope: !6226)
!6241 = !DILocation(line: 41, column: 2, scope: !6226)
!6242 = !DILocation(line: 42, column: 1, scope: !6226)
!6243 = distinct !DISubprogram(name: "arch___set_bit", scope: !6244, file: !6244, line: 66, type: !4804, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6244 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6245 = !{!6246, !6247}
!6246 = !DILocalVariable(name: "nr", arg: 1, scope: !6243, file: !6244, line: 66, type: !136)
!6247 = !DILocalVariable(name: "addr", arg: 2, scope: !6243, file: !6244, line: 66, type: !4806)
!6248 = !DILocation(line: 66, column: 30, scope: !6243)
!6249 = !DILocation(line: 66, column: 58, scope: !6243)
!6250 = !DILocation(line: 68, column: 44, scope: !6243)
!6251 = !DILocation(line: 68, column: 56, scope: !6243)
!6252 = !DILocation(line: 68, column: 2, scope: !6243)
!6253 = !{i64 2148220598}
!6254 = !DILocation(line: 69, column: 1, scope: !6243)
!6255 = distinct !DISubprogram(name: "kasan_check_write", scope: !6256, file: !6256, line: 44, type: !6257, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6259)
!6256 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6257 = !DISubroutineType(types: !6258)
!6258 = !{!642, !6230, !7}
!6259 = !{!6260, !6261}
!6260 = !DILocalVariable(name: "p", arg: 1, scope: !6255, file: !6256, line: 44, type: !6230)
!6261 = !DILocalVariable(name: "size", arg: 2, scope: !6255, file: !6256, line: 44, type: !7)
!6262 = !DILocation(line: 44, column: 59, scope: !6255)
!6263 = !DILocation(line: 44, column: 75, scope: !6255)
!6264 = !DILocation(line: 46, column: 2, scope: !6255)
!6265 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6266, file: !6266, line: 229, type: !6267, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6269)
!6266 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6267 = !DISubroutineType(types: !6268)
!6268 = !{null, !6230, !140, !85}
!6269 = !{!6270, !6271, !6272}
!6270 = !DILocalVariable(name: "ptr", arg: 1, scope: !6265, file: !6266, line: 229, type: !6230)
!6271 = !DILocalVariable(name: "size", arg: 2, scope: !6265, file: !6266, line: 229, type: !140)
!6272 = !DILocalVariable(name: "type", arg: 3, scope: !6265, file: !6266, line: 230, type: !85)
!6273 = !DILocation(line: 229, column: 60, scope: !6265)
!6274 = !DILocation(line: 229, column: 72, scope: !6265)
!6275 = !DILocation(line: 230, column: 15, scope: !6265)
!6276 = !DILocation(line: 230, column: 23, scope: !6265)
!6277 = distinct !DISubprogram(name: "kmalloc_array", scope: !123, file: !123, line: 629, type: !4874, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6278)
!6278 = !{!6279, !6280, !6281, !6282}
!6279 = !DILocalVariable(name: "n", arg: 1, scope: !6277, file: !123, line: 629, type: !140)
!6280 = !DILocalVariable(name: "size", arg: 2, scope: !6277, file: !123, line: 629, type: !140)
!6281 = !DILocalVariable(name: "flags", arg: 3, scope: !6277, file: !123, line: 629, type: !133)
!6282 = !DILocalVariable(name: "bytes", scope: !6277, file: !123, line: 631, type: !140)
!6283 = !DILocation(line: 629, column: 61, scope: !6277)
!6284 = !DILocation(line: 629, column: 71, scope: !6277)
!6285 = !DILocation(line: 629, column: 83, scope: !6277)
!6286 = !DILocation(line: 631, column: 2, scope: !6277)
!6287 = !DILocation(line: 631, column: 9, scope: !6277)
!6288 = !DILocation(line: 633, column: 6, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6277, file: !123, line: 633, column: 6)
!6290 = !DILocation(line: 633, column: 6, scope: !6277)
!6291 = !DILocation(line: 634, column: 3, scope: !6289)
!6292 = !DILocation(line: 635, column: 27, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6277, file: !123, line: 635, column: 6)
!6294 = !DILocation(line: 635, column: 6, scope: !6293)
!6295 = !DILocation(line: 635, column: 30, scope: !6293)
!6296 = !DILocation(line: 635, column: 54, scope: !6293)
!6297 = !DILocation(line: 635, column: 33, scope: !6293)
!6298 = !DILocation(line: 635, column: 6, scope: !6277)
!6299 = !DILocation(line: 636, column: 18, scope: !6293)
!6300 = !DILocation(line: 636, column: 25, scope: !6293)
!6301 = !DILocation(line: 636, column: 10, scope: !6293)
!6302 = !DILocation(line: 636, column: 3, scope: !6293)
!6303 = !DILocation(line: 637, column: 19, scope: !6277)
!6304 = !DILocation(line: 637, column: 26, scope: !6277)
!6305 = !DILocation(line: 637, column: 9, scope: !6277)
!6306 = !DILocation(line: 637, column: 2, scope: !6277)
!6307 = !DILocation(line: 638, column: 1, scope: !6277)
!6308 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6227, file: !6227, line: 66, type: !6228, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6309 = !{!6310, !6311}
!6310 = !DILocalVariable(name: "v", arg: 1, scope: !6308, file: !6227, line: 66, type: !6230)
!6311 = !DILocalVariable(name: "size", arg: 2, scope: !6308, file: !6227, line: 66, type: !140)
!6312 = !DILocation(line: 66, column: 73, scope: !6308)
!6313 = !DILocation(line: 66, column: 83, scope: !6308)
!6314 = !DILocation(line: 68, column: 19, scope: !6308)
!6315 = !DILocation(line: 68, column: 22, scope: !6308)
!6316 = !DILocation(line: 68, column: 2, scope: !6308)
!6317 = !DILocation(line: 69, column: 2, scope: !6308)
!6318 = !DILocation(line: 70, column: 1, scope: !6308)
!6319 = distinct !DISubprogram(name: "arch_test_bit", scope: !6244, file: !6244, line: 237, type: !5199, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6320)
!6320 = !{!6321, !6322}
!6321 = !DILocalVariable(name: "nr", arg: 1, scope: !6319, file: !6244, line: 237, type: !136)
!6322 = !DILocalVariable(name: "addr", arg: 2, scope: !6319, file: !6244, line: 237, type: !5201)
!6323 = !DILocation(line: 237, column: 29, scope: !6319)
!6324 = !DILocation(line: 237, column: 63, scope: !6319)
!6325 = !DILocation(line: 239, column: 30, scope: !6319)
!6326 = !DILocation(line: 239, column: 9, scope: !6319)
!6327 = !DILocation(line: 239, column: 54, scope: !6319)
!6328 = !DILocation(line: 239, column: 58, scope: !6319)
!6329 = !DILocation(line: 239, column: 36, scope: !6319)
!6330 = !DILocation(line: 240, column: 26, scope: !6319)
!6331 = !DILocation(line: 240, column: 30, scope: !6319)
!6332 = !DILocation(line: 240, column: 8, scope: !6319)
!6333 = !DILocation(line: 239, column: 2, scope: !6319)
!6334 = distinct !DISubprogram(name: "kasan_check_read", scope: !6256, file: !6256, line: 40, type: !6257, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6335 = !{!6336, !6337}
!6336 = !DILocalVariable(name: "p", arg: 1, scope: !6334, file: !6256, line: 40, type: !6230)
!6337 = !DILocalVariable(name: "size", arg: 2, scope: !6334, file: !6256, line: 40, type: !7)
!6338 = !DILocation(line: 40, column: 58, scope: !6334)
!6339 = !DILocation(line: 40, column: 74, scope: !6334)
!6340 = !DILocation(line: 42, column: 2, scope: !6334)
!6341 = distinct !DISubprogram(name: "constant_test_bit", scope: !6244, file: !6244, line: 204, type: !6342, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!642, !147, !5201}
!6344 = !{!6345, !6346}
!6345 = !DILocalVariable(name: "nr", arg: 1, scope: !6341, file: !6244, line: 204, type: !147)
!6346 = !DILocalVariable(name: "addr", arg: 2, scope: !6341, file: !6244, line: 204, type: !5201)
!6347 = !DILocation(line: 204, column: 52, scope: !6341)
!6348 = !DILocation(line: 204, column: 86, scope: !6341)
!6349 = !DILocation(line: 206, column: 19, scope: !6341)
!6350 = !DILocation(line: 206, column: 22, scope: !6341)
!6351 = !DILocation(line: 206, column: 15, scope: !6341)
!6352 = !DILocation(line: 207, column: 4, scope: !6341)
!6353 = !DILocation(line: 207, column: 9, scope: !6341)
!6354 = !DILocation(line: 207, column: 12, scope: !6341)
!6355 = !DILocation(line: 206, column: 44, scope: !6341)
!6356 = !DILocation(line: 207, column: 37, scope: !6341)
!6357 = !DILocation(line: 206, column: 2, scope: !6341)
!6358 = distinct !DISubprogram(name: "variable_test_bit", scope: !6244, file: !6244, line: 224, type: !6342, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6359)
!6359 = !{!6360, !6361, !6362}
!6360 = !DILocalVariable(name: "nr", arg: 1, scope: !6358, file: !6244, line: 224, type: !147)
!6361 = !DILocalVariable(name: "addr", arg: 2, scope: !6358, file: !6244, line: 224, type: !5201)
!6362 = !DILocalVariable(name: "oldbit", scope: !6358, file: !6244, line: 226, type: !642)
!6363 = !DILocation(line: 224, column: 52, scope: !6358)
!6364 = !DILocation(line: 224, column: 86, scope: !6358)
!6365 = !DILocation(line: 226, column: 2, scope: !6358)
!6366 = !DILocation(line: 226, column: 7, scope: !6358)
!6367 = !DILocation(line: 231, column: 33, scope: !6358)
!6368 = !DILocation(line: 231, column: 46, scope: !6358)
!6369 = !DILocation(line: 228, column: 2, scope: !6358)
!6370 = !{i64 2148233284, i64 2148233358}
!6371 = !DILocation(line: 233, column: 9, scope: !6358)
!6372 = !DILocation(line: 234, column: 1, scope: !6358)
!6373 = !DILocation(line: 233, column: 2, scope: !6358)
!6374 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5290, file: !5290, line: 43, type: !6375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6375 = !DISubroutineType(types: !6376)
!6376 = !{null, !5293, !136}
!6377 = distinct !DISubprogram(name: "adjust_dual", scope: !3, file: !3, line: 358, type: !6378, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6380)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!85, !1980, !85, !1980, !85, !85}
!6380 = !{!6381, !6382, !6383, !6384, !6385, !6386, !6387, !6388, !6389}
!6381 = !DILocalVariable(name: "begin", arg: 1, scope: !6377, file: !3, line: 358, type: !1980)
!6382 = !DILocalVariable(name: "step", arg: 2, scope: !6377, file: !3, line: 358, type: !85)
!6383 = !DILocalVariable(name: "end", arg: 3, scope: !6377, file: !3, line: 358, type: !1980)
!6384 = !DILocalVariable(name: "eq", arg: 4, scope: !6377, file: !3, line: 358, type: !85)
!6385 = !DILocalVariable(name: "mu", arg: 5, scope: !6377, file: !3, line: 358, type: !85)
!6386 = !DILocalVariable(name: "f", scope: !6377, file: !3, line: 360, type: !85)
!6387 = !DILocalVariable(name: "p", scope: !6377, file: !3, line: 360, type: !1980)
!6388 = !DILocalVariable(name: "s", scope: !6377, file: !3, line: 360, type: !85)
!6389 = !DILocalVariable(name: "c", scope: !6377, file: !3, line: 360, type: !85)
!6390 = !DILocation(line: 358, column: 29, scope: !6377)
!6391 = !DILocation(line: 358, column: 40, scope: !6377)
!6392 = !DILocation(line: 358, column: 51, scope: !6377)
!6393 = !DILocation(line: 358, column: 60, scope: !6377)
!6394 = !DILocation(line: 358, column: 68, scope: !6377)
!6395 = !DILocation(line: 360, column: 2, scope: !6377)
!6396 = !DILocation(line: 360, column: 6, scope: !6377)
!6397 = !DILocation(line: 360, column: 10, scope: !6377)
!6398 = !DILocation(line: 360, column: 13, scope: !6377)
!6399 = !DILocation(line: 360, column: 16, scope: !6377)
!6400 = !DILocation(line: 362, column: 6, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 362, column: 6)
!6402 = !DILocation(line: 362, column: 15, scope: !6401)
!6403 = !DILocation(line: 362, column: 12, scope: !6401)
!6404 = !DILocation(line: 362, column: 6, scope: !6377)
!6405 = !DILocation(line: 363, column: 3, scope: !6401)
!6406 = !DILocation(line: 365, column: 7, scope: !6377)
!6407 = !DILocation(line: 365, column: 6, scope: !6377)
!6408 = !DILocation(line: 365, column: 4, scope: !6377)
!6409 = !DILocation(line: 366, column: 6, scope: !6377)
!6410 = !DILocation(line: 366, column: 14, scope: !6377)
!6411 = !DILocation(line: 366, column: 12, scope: !6377)
!6412 = !DILocation(line: 366, column: 4, scope: !6377)
!6413 = !DILocation(line: 367, column: 6, scope: !6377)
!6414 = !DILocation(line: 367, column: 11, scope: !6377)
!6415 = !DILocation(line: 367, column: 8, scope: !6377)
!6416 = !DILocation(line: 367, column: 17, scope: !6377)
!6417 = !DILocation(line: 367, column: 19, scope: !6377)
!6418 = !DILocation(line: 367, column: 26, scope: !6377)
!6419 = !DILocation(line: 367, column: 25, scope: !6377)
!6420 = !DILocation(line: 367, column: 4, scope: !6377)
!6421 = !DILocation(line: 369, column: 2, scope: !6377)
!6422 = !DILocation(line: 369, column: 9, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 369, column: 2)
!6424 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 369, column: 2)
!6425 = !DILocation(line: 369, column: 14, scope: !6423)
!6426 = !DILocation(line: 369, column: 11, scope: !6423)
!6427 = !DILocation(line: 369, column: 2, scope: !6424)
!6428 = !DILocation(line: 370, column: 8, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 370, column: 7)
!6430 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 369, column: 30)
!6431 = !DILocation(line: 370, column: 7, scope: !6429)
!6432 = !DILocation(line: 370, column: 12, scope: !6429)
!6433 = !DILocation(line: 370, column: 10, scope: !6429)
!6434 = !DILocation(line: 370, column: 7, scope: !6430)
!6435 = !DILocation(line: 371, column: 8, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 370, column: 15)
!6437 = !DILocation(line: 371, column: 6, scope: !6436)
!6438 = !DILocation(line: 372, column: 9, scope: !6436)
!6439 = !DILocation(line: 372, column: 8, scope: !6436)
!6440 = !DILocation(line: 372, column: 6, scope: !6436)
!6441 = !DILocation(line: 373, column: 3, scope: !6436)
!6442 = !DILocation(line: 373, column: 15, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 373, column: 14)
!6444 = !DILocation(line: 373, column: 14, scope: !6443)
!6445 = !DILocation(line: 373, column: 19, scope: !6443)
!6446 = !DILocation(line: 373, column: 17, scope: !6443)
!6447 = !DILocation(line: 373, column: 14, scope: !6429)
!6448 = !DILocation(line: 374, column: 9, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 373, column: 22)
!6450 = !DILocation(line: 374, column: 8, scope: !6449)
!6451 = !DILocation(line: 374, column: 6, scope: !6449)
!6452 = !DILocation(line: 375, column: 3, scope: !6449)
!6453 = !DILocation(line: 376, column: 2, scope: !6430)
!6454 = !DILocation(line: 369, column: 24, scope: !6423)
!6455 = !DILocation(line: 369, column: 21, scope: !6423)
!6456 = !DILocation(line: 369, column: 2, scope: !6423)
!6457 = distinct !{!6457, !6427, !6458, !4736, !4737}
!6458 = !DILocation(line: 376, column: 2, scope: !6424)
!6459 = !DILocation(line: 378, column: 7, scope: !6377)
!6460 = !DILocation(line: 378, column: 11, scope: !6377)
!6461 = !DILocation(line: 378, column: 9, scope: !6377)
!6462 = !DILocation(line: 378, column: 13, scope: !6377)
!6463 = !DILocation(line: 378, column: 18, scope: !6377)
!6464 = !DILocation(line: 378, column: 4, scope: !6377)
!6465 = !DILocation(line: 379, column: 6, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 379, column: 6)
!6467 = !DILocation(line: 379, column: 8, scope: !6466)
!6468 = !DILocation(line: 379, column: 13, scope: !6466)
!6469 = !DILocation(line: 379, column: 17, scope: !6466)
!6470 = !DILocation(line: 379, column: 21, scope: !6466)
!6471 = !DILocation(line: 379, column: 19, scope: !6466)
!6472 = !DILocation(line: 379, column: 24, scope: !6466)
!6473 = !DILocation(line: 379, column: 29, scope: !6466)
!6474 = !DILocation(line: 379, column: 32, scope: !6466)
!6475 = !DILocation(line: 379, column: 35, scope: !6466)
!6476 = !DILocation(line: 379, column: 38, scope: !6466)
!6477 = !DILocation(line: 379, column: 6, scope: !6377)
!6478 = !DILocation(line: 380, column: 3, scope: !6466)
!6479 = !DILocation(line: 382, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 382, column: 6)
!6481 = !DILocation(line: 382, column: 8, scope: !6480)
!6482 = !DILocation(line: 382, column: 12, scope: !6480)
!6483 = !DILocation(line: 382, column: 15, scope: !6480)
!6484 = !DILocation(line: 382, column: 18, scope: !6480)
!6485 = !DILocation(line: 382, column: 6, scope: !6377)
!6486 = !DILocation(line: 383, column: 5, scope: !6480)
!6487 = !DILocation(line: 383, column: 3, scope: !6480)
!6488 = !DILocation(line: 385, column: 11, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 385, column: 2)
!6490 = !DILocation(line: 385, column: 9, scope: !6489)
!6491 = !DILocation(line: 385, column: 7, scope: !6489)
!6492 = !DILocation(line: 385, column: 18, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 385, column: 2)
!6494 = !DILocation(line: 385, column: 23, scope: !6493)
!6495 = !DILocation(line: 385, column: 20, scope: !6493)
!6496 = !DILocation(line: 385, column: 2, scope: !6489)
!6497 = !DILocation(line: 386, column: 9, scope: !6493)
!6498 = !DILocation(line: 386, column: 4, scope: !6493)
!6499 = !DILocation(line: 386, column: 6, scope: !6493)
!6500 = !DILocation(line: 386, column: 3, scope: !6493)
!6501 = !DILocation(line: 385, column: 33, scope: !6493)
!6502 = !DILocation(line: 385, column: 30, scope: !6493)
!6503 = !DILocation(line: 385, column: 2, scope: !6493)
!6504 = distinct !{!6504, !6496, !6505, !4736, !4737}
!6505 = !DILocation(line: 386, column: 9, scope: !6489)
!6506 = !DILocation(line: 388, column: 10, scope: !6377)
!6507 = !DILocation(line: 388, column: 14, scope: !6377)
!6508 = !DILocation(line: 388, column: 12, scope: !6377)
!6509 = !DILocation(line: 388, column: 16, scope: !6377)
!6510 = !DILocation(line: 388, column: 19, scope: !6377)
!6511 = !DILocation(line: 388, column: 21, scope: !6377)
!6512 = !DILocation(line: 388, column: 27, scope: !6377)
!6513 = !DILocation(line: 388, column: 31, scope: !6377)
!6514 = !DILocation(line: 388, column: 33, scope: !6377)
!6515 = !DILocation(line: 388, column: 38, scope: !6377)
!6516 = !DILocation(line: 388, column: 41, scope: !6377)
!6517 = !DILocation(line: 388, column: 45, scope: !6377)
!6518 = !DILocation(line: 388, column: 43, scope: !6377)
!6519 = !DILocation(line: 0, scope: !6377)
!6520 = !DILocation(line: 388, column: 2, scope: !6377)
!6521 = !DILocation(line: 389, column: 1, scope: !6377)
