; ModuleID = 'drivers/input/sparse-keymap.c'
source_filename = "drivers/input/sparse-keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sparse_keymap_entry_from_scancode: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sparse_keymap_entry_from_scancode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sparse_keymap_entry_from_keycode: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sparse_keymap_entry_from_keycode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sparse_keymap_setup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sparse_keymap_setup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sparse_keymap_report_entry: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sparse_keymap_report_entry ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sparse_keymap_report_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sparse_keymap_report_event ; .previous"

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
%struct.key_entry = type { i32, i32, %union.anon.13 }
%union.anon.13 = type { i16 }
%struct.anon.14 = type { i8, i8 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }

@__UNIQUE_ID_author267 = internal constant [52 x i8] c"sparse_keymap.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description268 = internal constant [61 x i8] c"sparse_keymap.description=Generic support for sparse keymaps\00", section ".modinfo", align 1, !dbg !138
@__UNIQUE_ID_file269 = internal constant [47 x i8] c"sparse_keymap.file=drivers/input/sparse-keymap\00", section ".modinfo", align 1, !dbg !144
@__UNIQUE_ID_license270 = internal constant [29 x i8] c"sparse_keymap.license=GPL v2\00", section ".modinfo", align 1, !dbg !149
@__UNIQUE_ID___addressable_sparse_keymap_entry_from_scancode271 = internal global ptr @sparse_keymap_entry_from_scancode, section ".discard.addressable", align 8, !dbg !154
@__UNIQUE_ID___addressable_sparse_keymap_entry_from_keycode272 = internal global ptr @sparse_keymap_entry_from_keycode, section ".discard.addressable", align 8, !dbg !156
@__UNIQUE_ID___addressable_sparse_keymap_setup273 = internal global ptr @sparse_keymap_setup, section ".discard.addressable", align 8, !dbg !158
@__UNIQUE_ID___addressable_sparse_keymap_report_entry274 = internal global ptr @sparse_keymap_report_entry, section ".discard.addressable", align 8, !dbg !160
@__UNIQUE_ID___addressable_sparse_keymap_report_event275 = internal global ptr @sparse_keymap_report_event, section ".discard.addressable", align 8, !dbg !162
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__UNIQUE_ID___addressable_sparse_keymap_entry_from_scancode271, ptr @__UNIQUE_ID___addressable_sparse_keymap_entry_from_keycode272, ptr @__UNIQUE_ID___addressable_sparse_keymap_setup273, ptr @__UNIQUE_ID___addressable_sparse_keymap_report_entry274, ptr @__UNIQUE_ID___addressable_sparse_keymap_report_event275], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sparse_keymap_entry_from_scancode(ptr noundef %dev, i32 noundef %code) #0 align 16 !dbg !176 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4590, metadata !DIExpression()), !dbg !4593
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !4591, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4592, metadata !DIExpression()), !dbg !4596
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4597
  %keycode = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17, !dbg !4599
  %1 = load ptr, ptr %keycode, align 8, !dbg !4599
  store ptr %1, ptr %key, align 8, !dbg !4600
  br label %for.cond, !dbg !4601

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %key, align 8, !dbg !4602
  %type = getelementptr inbounds %struct.key_entry, ptr %2, i32 0, i32 0, !dbg !4604
  %3 = load i32, ptr %type, align 4, !dbg !4604
  %cmp = icmp ne i32 %3, 0, !dbg !4605
  br i1 %cmp, label %for.body, label %for.end, !dbg !4606

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %code.addr, align 4, !dbg !4607
  %5 = load ptr, ptr %key, align 8, !dbg !4609
  %code1 = getelementptr inbounds %struct.key_entry, ptr %5, i32 0, i32 1, !dbg !4610
  %6 = load i32, ptr %code1, align 4, !dbg !4610
  %cmp2 = icmp eq i32 %4, %6, !dbg !4611
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4612

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %key, align 8, !dbg !4613
  store ptr %7, ptr %retval, align 8, !dbg !4614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4614

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4610

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %key, align 8, !dbg !4615
  %incdec.ptr = getelementptr %struct.key_entry, ptr %8, i32 1, !dbg !4615
  store ptr %incdec.ptr, ptr %key, align 8, !dbg !4615
  br label %for.cond, !dbg !4616, !llvm.loop !4617

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4621

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !4622
  %9 = load ptr, ptr %retval, align 8, !dbg !4622
  ret ptr %9, !dbg !4622
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sparse_keymap_entry_from_keycode(ptr noundef %dev, i32 noundef %keycode) #0 align 16 !dbg !4623 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %keycode.addr = alloca i32, align 4
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4625, metadata !DIExpression()), !dbg !4628
  store i32 %keycode, ptr %keycode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keycode.addr, metadata !4626, metadata !DIExpression()), !dbg !4629
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !4630
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4627, metadata !DIExpression()), !dbg !4631
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4632
  %keycode1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17, !dbg !4634
  %1 = load ptr, ptr %keycode1, align 8, !dbg !4634
  store ptr %1, ptr %key, align 8, !dbg !4635
  br label %for.cond, !dbg !4636

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %key, align 8, !dbg !4637
  %type = getelementptr inbounds %struct.key_entry, ptr %2, i32 0, i32 0, !dbg !4639
  %3 = load i32, ptr %type, align 4, !dbg !4639
  %cmp = icmp ne i32 %3, 0, !dbg !4640
  br i1 %cmp, label %for.body, label %for.end, !dbg !4641

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %key, align 8, !dbg !4642
  %type2 = getelementptr inbounds %struct.key_entry, ptr %4, i32 0, i32 0, !dbg !4644
  %5 = load i32, ptr %type2, align 4, !dbg !4644
  %cmp3 = icmp eq i32 %5, 1, !dbg !4645
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !4646

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, ptr %keycode.addr, align 4, !dbg !4647
  %7 = load ptr, ptr %key, align 8, !dbg !4648
  %8 = getelementptr inbounds %struct.key_entry, ptr %7, i32 0, i32 2, !dbg !4649
  %9 = load i16, ptr %8, align 4, !dbg !4649
  %conv = zext i16 %9 to i32, !dbg !4648
  %cmp4 = icmp eq i32 %6, %conv, !dbg !4650
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4651

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %key, align 8, !dbg !4652
  store ptr %10, ptr %retval, align 8, !dbg !4653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4653

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4649

for.inc:                                          ; preds = %if.end
  %11 = load ptr, ptr %key, align 8, !dbg !4654
  %incdec.ptr = getelementptr %struct.key_entry, ptr %11, i32 1, !dbg !4654
  store ptr %incdec.ptr, ptr %key, align 8, !dbg !4654
  br label %for.cond, !dbg !4655, !llvm.loop !4656

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4658

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !4659
  %12 = load ptr, ptr %retval, align 8, !dbg !4659
  ret ptr %12, !dbg !4659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sparse_keymap_setup(ptr noundef %dev, ptr noundef %keymap, ptr noundef %setup) #0 align 16 !dbg !4660 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %keymap.addr = alloca ptr, align 8
  %setup.addr = alloca ptr, align 8
  %map_size = alloca i64, align 8
  %e = alloca ptr, align 8
  %map = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4669, metadata !DIExpression()), !dbg !4678
  store ptr %keymap, ptr %keymap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %keymap.addr, metadata !4670, metadata !DIExpression()), !dbg !4679
  store ptr %setup, ptr %setup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %setup.addr, metadata !4671, metadata !DIExpression()), !dbg !4680
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_size) #10, !dbg !4681
  call void @llvm.dbg.declare(metadata ptr %map_size, metadata !4672, metadata !DIExpression()), !dbg !4682
  store i64 1, ptr %map_size, align 8, !dbg !4682
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #10, !dbg !4683
  call void @llvm.dbg.declare(metadata ptr %e, metadata !4673, metadata !DIExpression()), !dbg !4684
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #10, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %map, metadata !4674, metadata !DIExpression()), !dbg !4686
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #10, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4675, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4676, metadata !DIExpression()), !dbg !4689
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4677, metadata !DIExpression()), !dbg !4691
  %0 = load ptr, ptr %keymap.addr, align 8, !dbg !4692
  store ptr %0, ptr %e, align 8, !dbg !4694
  br label %for.cond, !dbg !4695

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %e, align 8, !dbg !4696
  %type = getelementptr inbounds %struct.key_entry, ptr %1, i32 0, i32 0, !dbg !4698
  %2 = load i32, ptr %type, align 4, !dbg !4698
  %cmp = icmp ne i32 %2, 0, !dbg !4699
  br i1 %cmp, label %for.body, label %for.end, !dbg !4700

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %map_size, align 8, !dbg !4701
  %inc = add i64 %3, 1, !dbg !4701
  store i64 %inc, ptr %map_size, align 8, !dbg !4701
  br label %for.inc, !dbg !4702

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %e, align 8, !dbg !4703
  %incdec.ptr = getelementptr %struct.key_entry, ptr %4, i32 1, !dbg !4703
  store ptr %incdec.ptr, ptr %e, align 8, !dbg !4703
  br label %for.cond, !dbg !4704, !llvm.loop !4705

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !4707
  %dev2 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, !dbg !4708
  %6 = load ptr, ptr %keymap.addr, align 8, !dbg !4709
  %7 = load i64, ptr %map_size, align 8, !dbg !4710
  %mul = mul i64 %7, 12, !dbg !4711
  %call = call ptr @devm_kmemdup(ptr noundef %dev2, ptr noundef %6, i64 noundef %mul, i32 noundef 3264) #11, !dbg !4712
  store ptr %call, ptr %map, align 8, !dbg !4713
  %8 = load ptr, ptr %map, align 8, !dbg !4714
  %tobool = icmp ne ptr %8, null, !dbg !4714
  br i1 %tobool, label %if.end, label %if.then, !dbg !4716

if.then:                                          ; preds = %for.end
  store i32 -12, ptr %retval, align 4, !dbg !4717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4717

if.end:                                           ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !4718
  br label %for.cond3, !dbg !4720

for.cond3:                                        ; preds = %for.inc92, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !4721
  %conv = sext i32 %9 to i64, !dbg !4721
  %10 = load i64, ptr %map_size, align 8, !dbg !4723
  %cmp4 = icmp ult i64 %conv, %10, !dbg !4724
  br i1 %cmp4, label %for.body6, label %for.end94, !dbg !4725

for.body6:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %map, align 8, !dbg !4726
  %12 = load i32, ptr %i, align 4, !dbg !4728
  %idxprom = sext i32 %12 to i64, !dbg !4726
  %arrayidx = getelementptr %struct.key_entry, ptr %11, i64 %idxprom, !dbg !4726
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !4729
  %13 = load ptr, ptr %setup.addr, align 8, !dbg !4730
  %tobool7 = icmp ne ptr %13, null, !dbg !4730
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !4732

if.then8:                                         ; preds = %for.body6
  %14 = load ptr, ptr %setup.addr, align 8, !dbg !4733
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !4735
  %16 = load ptr, ptr %entry1, align 8, !dbg !4736
  %call9 = call i32 %14(ptr noundef %15, ptr noundef %16) #12, !dbg !4733
  store i32 %call9, ptr %error, align 4, !dbg !4737
  %17 = load i32, ptr %error, align 4, !dbg !4738
  %tobool10 = icmp ne i32 %17, 0, !dbg !4738
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4740

if.then11:                                        ; preds = %if.then8
  %18 = load i32, ptr %error, align 4, !dbg !4741
  store i32 %18, ptr %retval, align 4, !dbg !4742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4742

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !4743

if.end13:                                         ; preds = %if.end12, %for.body6
  %19 = load ptr, ptr %entry1, align 8, !dbg !4744
  %type14 = getelementptr inbounds %struct.key_entry, ptr %19, i32 0, i32 0, !dbg !4745
  %20 = load i32, ptr %type14, align 4, !dbg !4745
  switch i32 %20, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb49
    i32 3, label %sw.bb49
  ], !dbg !4746

sw.bb:                                            ; preds = %if.end13
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !4747
  %evbit = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 5, !dbg !4747
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4747
  %22 = ptrtoint ptr %arraydecay to i64, !dbg !4747
  %cmp15 = icmp ne i64 %22, 0, !dbg !4747
  %conv16 = zext i1 %cmp15 to i32, !dbg !4747
  %23 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !4747
  br i1 %23, label %land.lhs.true, label %cond.false, !dbg !4747

land.lhs.true:                                    ; preds = %sw.bb
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !4747
  %evbit17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 5, !dbg !4747
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %evbit17, i64 0, i64 0, !dbg !4747
  %25 = ptrtoint ptr %arraydecay18 to i64, !dbg !4747
  %cmp19 = icmp ne i64 %25, 0, !dbg !4747
  br i1 %cmp19, label %land.lhs.true21, label %cond.false, !dbg !4747

land.lhs.true21:                                  ; preds = %land.lhs.true
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !4747
  %evbit22 = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 5, !dbg !4747
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %evbit22, i64 0, i64 0, !dbg !4747
  %27 = load i64, ptr %arraydecay23, align 8, !dbg !4747
  %28 = call i1 @llvm.is.constant.i64(i64 %27), !dbg !4747
  br i1 %28, label %cond.true, label %cond.false, !dbg !4747

cond.true:                                        ; preds = %land.lhs.true21
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !4747
  %evbit24 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 5, !dbg !4747
  %arraydecay25 = getelementptr inbounds [1 x i64], ptr %evbit24, i64 0, i64 0, !dbg !4747
  call void @generic___set_bit(i64 noundef 1, ptr noundef %arraydecay25) #12, !dbg !4747
  br label %cond.end, !dbg !4747

cond.false:                                       ; preds = %land.lhs.true21, %land.lhs.true, %sw.bb
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !4747
  %evbit26 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 5, !dbg !4747
  %arraydecay27 = getelementptr inbounds [1 x i64], ptr %evbit26, i64 0, i64 0, !dbg !4747
  call void @___set_bit(i64 noundef 1, ptr noundef %arraydecay27) #12, !dbg !4747
  br label %cond.end, !dbg !4747

cond.end:                                         ; preds = %cond.false, %cond.true
  %31 = load ptr, ptr %entry1, align 8, !dbg !4749
  %32 = getelementptr inbounds %struct.key_entry, ptr %31, i32 0, i32 2, !dbg !4749
  %33 = load i16, ptr %32, align 4, !dbg !4749
  %34 = call i1 @llvm.is.constant.i16(i16 %33), !dbg !4749
  br i1 %34, label %land.lhs.true28, label %cond.false44, !dbg !4749

land.lhs.true28:                                  ; preds = %cond.end
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !4749
  %keybit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6, !dbg !4749
  %arraydecay29 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !4749
  %36 = ptrtoint ptr %arraydecay29 to i64, !dbg !4749
  %cmp30 = icmp ne i64 %36, 0, !dbg !4749
  %conv31 = zext i1 %cmp30 to i32, !dbg !4749
  %37 = call i1 @llvm.is.constant.i32(i32 %conv31), !dbg !4749
  br i1 %37, label %land.lhs.true32, label %cond.false44, !dbg !4749

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !4749
  %keybit33 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 6, !dbg !4749
  %arraydecay34 = getelementptr inbounds [12 x i64], ptr %keybit33, i64 0, i64 0, !dbg !4749
  %39 = ptrtoint ptr %arraydecay34 to i64, !dbg !4749
  %cmp35 = icmp ne i64 %39, 0, !dbg !4749
  br i1 %cmp35, label %land.lhs.true37, label %cond.false44, !dbg !4749

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !4749
  %keybit38 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6, !dbg !4749
  %arraydecay39 = getelementptr inbounds [12 x i64], ptr %keybit38, i64 0, i64 0, !dbg !4749
  %41 = load i64, ptr %arraydecay39, align 8, !dbg !4749
  %42 = call i1 @llvm.is.constant.i64(i64 %41), !dbg !4749
  br i1 %42, label %cond.true40, label %cond.false44, !dbg !4749

cond.true40:                                      ; preds = %land.lhs.true37
  %43 = load ptr, ptr %entry1, align 8, !dbg !4749
  %44 = getelementptr inbounds %struct.key_entry, ptr %43, i32 0, i32 2, !dbg !4749
  %45 = load i16, ptr %44, align 4, !dbg !4749
  %conv41 = zext i16 %45 to i64, !dbg !4749
  %46 = load ptr, ptr %dev.addr, align 8, !dbg !4749
  %keybit42 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 6, !dbg !4749
  %arraydecay43 = getelementptr inbounds [12 x i64], ptr %keybit42, i64 0, i64 0, !dbg !4749
  call void @generic___set_bit(i64 noundef %conv41, ptr noundef %arraydecay43) #12, !dbg !4749
  br label %cond.end48, !dbg !4749

cond.false44:                                     ; preds = %land.lhs.true37, %land.lhs.true32, %land.lhs.true28, %cond.end
  %47 = load ptr, ptr %entry1, align 8, !dbg !4749
  %48 = getelementptr inbounds %struct.key_entry, ptr %47, i32 0, i32 2, !dbg !4749
  %49 = load i16, ptr %48, align 4, !dbg !4749
  %conv45 = zext i16 %49 to i64, !dbg !4749
  %50 = load ptr, ptr %dev.addr, align 8, !dbg !4749
  %keybit46 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 6, !dbg !4749
  %arraydecay47 = getelementptr inbounds [12 x i64], ptr %keybit46, i64 0, i64 0, !dbg !4749
  call void @___set_bit(i64 noundef %conv45, ptr noundef %arraydecay47) #12, !dbg !4749
  br label %cond.end48, !dbg !4749

cond.end48:                                       ; preds = %cond.false44, %cond.true40
  br label %sw.epilog, !dbg !4750

sw.bb49:                                          ; preds = %if.end13, %if.end13
  %51 = load ptr, ptr %dev.addr, align 8, !dbg !4751
  %evbit50 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 5, !dbg !4751
  %arraydecay51 = getelementptr inbounds [1 x i64], ptr %evbit50, i64 0, i64 0, !dbg !4751
  %52 = ptrtoint ptr %arraydecay51 to i64, !dbg !4751
  %cmp52 = icmp ne i64 %52, 0, !dbg !4751
  %conv53 = zext i1 %cmp52 to i32, !dbg !4751
  %53 = call i1 @llvm.is.constant.i32(i32 %conv53), !dbg !4751
  br i1 %53, label %land.lhs.true54, label %cond.false65, !dbg !4751

land.lhs.true54:                                  ; preds = %sw.bb49
  %54 = load ptr, ptr %dev.addr, align 8, !dbg !4751
  %evbit55 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 5, !dbg !4751
  %arraydecay56 = getelementptr inbounds [1 x i64], ptr %evbit55, i64 0, i64 0, !dbg !4751
  %55 = ptrtoint ptr %arraydecay56 to i64, !dbg !4751
  %cmp57 = icmp ne i64 %55, 0, !dbg !4751
  br i1 %cmp57, label %land.lhs.true59, label %cond.false65, !dbg !4751

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %56 = load ptr, ptr %dev.addr, align 8, !dbg !4751
  %evbit60 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 5, !dbg !4751
  %arraydecay61 = getelementptr inbounds [1 x i64], ptr %evbit60, i64 0, i64 0, !dbg !4751
  %57 = load i64, ptr %arraydecay61, align 8, !dbg !4751
  %58 = call i1 @llvm.is.constant.i64(i64 %57), !dbg !4751
  br i1 %58, label %cond.true62, label %cond.false65, !dbg !4751

cond.true62:                                      ; preds = %land.lhs.true59
  %59 = load ptr, ptr %dev.addr, align 8, !dbg !4751
  %evbit63 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 5, !dbg !4751
  %arraydecay64 = getelementptr inbounds [1 x i64], ptr %evbit63, i64 0, i64 0, !dbg !4751
  call void @generic___set_bit(i64 noundef 5, ptr noundef %arraydecay64) #12, !dbg !4751
  br label %cond.end68, !dbg !4751

cond.false65:                                     ; preds = %land.lhs.true59, %land.lhs.true54, %sw.bb49
  %60 = load ptr, ptr %dev.addr, align 8, !dbg !4751
  %evbit66 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 5, !dbg !4751
  %arraydecay67 = getelementptr inbounds [1 x i64], ptr %evbit66, i64 0, i64 0, !dbg !4751
  call void @___set_bit(i64 noundef 5, ptr noundef %arraydecay67) #12, !dbg !4751
  br label %cond.end68, !dbg !4751

cond.end68:                                       ; preds = %cond.false65, %cond.true62
  %61 = load ptr, ptr %entry1, align 8, !dbg !4752
  %62 = getelementptr inbounds %struct.key_entry, ptr %61, i32 0, i32 2, !dbg !4752
  %code = getelementptr inbounds %struct.anon.14, ptr %62, i32 0, i32 0, !dbg !4752
  %63 = load i8, ptr %code, align 4, !dbg !4752
  %64 = call i1 @llvm.is.constant.i8(i8 %63), !dbg !4752
  br i1 %64, label %land.lhs.true69, label %cond.false86, !dbg !4752

land.lhs.true69:                                  ; preds = %cond.end68
  %65 = load ptr, ptr %dev.addr, align 8, !dbg !4752
  %swbit = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 13, !dbg !4752
  %arraydecay70 = getelementptr inbounds [1 x i64], ptr %swbit, i64 0, i64 0, !dbg !4752
  %66 = ptrtoint ptr %arraydecay70 to i64, !dbg !4752
  %cmp71 = icmp ne i64 %66, 0, !dbg !4752
  %conv72 = zext i1 %cmp71 to i32, !dbg !4752
  %67 = call i1 @llvm.is.constant.i32(i32 %conv72), !dbg !4752
  br i1 %67, label %land.lhs.true73, label %cond.false86, !dbg !4752

land.lhs.true73:                                  ; preds = %land.lhs.true69
  %68 = load ptr, ptr %dev.addr, align 8, !dbg !4752
  %swbit74 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 13, !dbg !4752
  %arraydecay75 = getelementptr inbounds [1 x i64], ptr %swbit74, i64 0, i64 0, !dbg !4752
  %69 = ptrtoint ptr %arraydecay75 to i64, !dbg !4752
  %cmp76 = icmp ne i64 %69, 0, !dbg !4752
  br i1 %cmp76, label %land.lhs.true78, label %cond.false86, !dbg !4752

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %70 = load ptr, ptr %dev.addr, align 8, !dbg !4752
  %swbit79 = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 13, !dbg !4752
  %arraydecay80 = getelementptr inbounds [1 x i64], ptr %swbit79, i64 0, i64 0, !dbg !4752
  %71 = load i64, ptr %arraydecay80, align 8, !dbg !4752
  %72 = call i1 @llvm.is.constant.i64(i64 %71), !dbg !4752
  br i1 %72, label %cond.true81, label %cond.false86, !dbg !4752

cond.true81:                                      ; preds = %land.lhs.true78
  %73 = load ptr, ptr %entry1, align 8, !dbg !4752
  %74 = getelementptr inbounds %struct.key_entry, ptr %73, i32 0, i32 2, !dbg !4752
  %code82 = getelementptr inbounds %struct.anon.14, ptr %74, i32 0, i32 0, !dbg !4752
  %75 = load i8, ptr %code82, align 4, !dbg !4752
  %conv83 = zext i8 %75 to i64, !dbg !4752
  %76 = load ptr, ptr %dev.addr, align 8, !dbg !4752
  %swbit84 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 13, !dbg !4752
  %arraydecay85 = getelementptr inbounds [1 x i64], ptr %swbit84, i64 0, i64 0, !dbg !4752
  call void @generic___set_bit(i64 noundef %conv83, ptr noundef %arraydecay85) #12, !dbg !4752
  br label %cond.end91, !dbg !4752

cond.false86:                                     ; preds = %land.lhs.true78, %land.lhs.true73, %land.lhs.true69, %cond.end68
  %77 = load ptr, ptr %entry1, align 8, !dbg !4752
  %78 = getelementptr inbounds %struct.key_entry, ptr %77, i32 0, i32 2, !dbg !4752
  %code87 = getelementptr inbounds %struct.anon.14, ptr %78, i32 0, i32 0, !dbg !4752
  %79 = load i8, ptr %code87, align 4, !dbg !4752
  %conv88 = zext i8 %79 to i64, !dbg !4752
  %80 = load ptr, ptr %dev.addr, align 8, !dbg !4752
  %swbit89 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 13, !dbg !4752
  %arraydecay90 = getelementptr inbounds [1 x i64], ptr %swbit89, i64 0, i64 0, !dbg !4752
  call void @___set_bit(i64 noundef %conv88, ptr noundef %arraydecay90) #12, !dbg !4752
  br label %cond.end91, !dbg !4752

cond.end91:                                       ; preds = %cond.false86, %cond.true81
  br label %sw.epilog, !dbg !4753

sw.epilog:                                        ; preds = %if.end13, %cond.end91, %cond.end48
  br label %for.inc92, !dbg !4754

for.inc92:                                        ; preds = %sw.epilog
  %81 = load i32, ptr %i, align 4, !dbg !4755
  %inc93 = add i32 %81, 1, !dbg !4755
  store i32 %inc93, ptr %i, align 4, !dbg !4755
  br label %for.cond3, !dbg !4756, !llvm.loop !4757

for.end94:                                        ; preds = %for.cond3
  %82 = load ptr, ptr %dev.addr, align 8, !dbg !4759
  %evbit95 = getelementptr inbounds %struct.input_dev, ptr %82, i32 0, i32 5, !dbg !4759
  %arraydecay96 = getelementptr inbounds [1 x i64], ptr %evbit95, i64 0, i64 0, !dbg !4759
  %83 = ptrtoint ptr %arraydecay96 to i64, !dbg !4759
  %cmp97 = icmp ne i64 %83, 0, !dbg !4759
  %conv98 = zext i1 %cmp97 to i32, !dbg !4759
  %84 = call i1 @llvm.is.constant.i32(i32 %conv98), !dbg !4759
  br i1 %84, label %land.lhs.true99, label %cond.false112, !dbg !4759

land.lhs.true99:                                  ; preds = %for.end94
  %85 = load ptr, ptr %dev.addr, align 8, !dbg !4759
  %evbit100 = getelementptr inbounds %struct.input_dev, ptr %85, i32 0, i32 5, !dbg !4759
  %arraydecay101 = getelementptr inbounds [1 x i64], ptr %evbit100, i64 0, i64 0, !dbg !4759
  %86 = ptrtoint ptr %arraydecay101 to i64, !dbg !4759
  %cmp102 = icmp ne i64 %86, 0, !dbg !4759
  br i1 %cmp102, label %land.lhs.true104, label %cond.false112, !dbg !4759

land.lhs.true104:                                 ; preds = %land.lhs.true99
  %87 = load ptr, ptr %dev.addr, align 8, !dbg !4759
  %evbit105 = getelementptr inbounds %struct.input_dev, ptr %87, i32 0, i32 5, !dbg !4759
  %arraydecay106 = getelementptr inbounds [1 x i64], ptr %evbit105, i64 0, i64 0, !dbg !4759
  %88 = load i64, ptr %arraydecay106, align 8, !dbg !4759
  %89 = call i1 @llvm.is.constant.i64(i64 %88), !dbg !4759
  br i1 %89, label %cond.true107, label %cond.false112, !dbg !4761

cond.true107:                                     ; preds = %land.lhs.true104
  %90 = load ptr, ptr %dev.addr, align 8, !dbg !4759
  %evbit108 = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 5, !dbg !4759
  %arraydecay109 = getelementptr inbounds [1 x i64], ptr %evbit108, i64 0, i64 0, !dbg !4759
  %call110 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %arraydecay109) #12, !dbg !4759
  br i1 %call110, label %if.then117, label %if.end174, !dbg !4759

cond.false112:                                    ; preds = %land.lhs.true104, %land.lhs.true99, %for.end94
  %91 = load ptr, ptr %dev.addr, align 8, !dbg !4759
  %evbit113 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 5, !dbg !4759
  %arraydecay114 = getelementptr inbounds [1 x i64], ptr %evbit113, i64 0, i64 0, !dbg !4759
  %call115 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %arraydecay114) #12, !dbg !4759
  br i1 %call115, label %if.then117, label %if.end174, !dbg !4761

if.then117:                                       ; preds = %cond.false112, %cond.true107
  %92 = load ptr, ptr %dev.addr, align 8, !dbg !4762
  %keybit118 = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 6, !dbg !4762
  %arraydecay119 = getelementptr inbounds [12 x i64], ptr %keybit118, i64 0, i64 0, !dbg !4762
  %93 = ptrtoint ptr %arraydecay119 to i64, !dbg !4762
  %cmp120 = icmp ne i64 %93, 0, !dbg !4762
  %conv121 = zext i1 %cmp120 to i32, !dbg !4762
  %94 = call i1 @llvm.is.constant.i32(i32 %conv121), !dbg !4762
  br i1 %94, label %land.lhs.true122, label %cond.false133, !dbg !4762

land.lhs.true122:                                 ; preds = %if.then117
  %95 = load ptr, ptr %dev.addr, align 8, !dbg !4762
  %keybit123 = getelementptr inbounds %struct.input_dev, ptr %95, i32 0, i32 6, !dbg !4762
  %arraydecay124 = getelementptr inbounds [12 x i64], ptr %keybit123, i64 0, i64 0, !dbg !4762
  %96 = ptrtoint ptr %arraydecay124 to i64, !dbg !4762
  %cmp125 = icmp ne i64 %96, 0, !dbg !4762
  br i1 %cmp125, label %land.lhs.true127, label %cond.false133, !dbg !4762

land.lhs.true127:                                 ; preds = %land.lhs.true122
  %97 = load ptr, ptr %dev.addr, align 8, !dbg !4762
  %keybit128 = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 6, !dbg !4762
  %arraydecay129 = getelementptr inbounds [12 x i64], ptr %keybit128, i64 0, i64 0, !dbg !4762
  %98 = load i64, ptr %arraydecay129, align 8, !dbg !4762
  %99 = call i1 @llvm.is.constant.i64(i64 %98), !dbg !4762
  br i1 %99, label %cond.true130, label %cond.false133, !dbg !4762

cond.true130:                                     ; preds = %land.lhs.true127
  %100 = load ptr, ptr %dev.addr, align 8, !dbg !4762
  %keybit131 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 6, !dbg !4762
  %arraydecay132 = getelementptr inbounds [12 x i64], ptr %keybit131, i64 0, i64 0, !dbg !4762
  call void @generic___set_bit(i64 noundef 240, ptr noundef %arraydecay132) #12, !dbg !4762
  br label %cond.end136, !dbg !4762

cond.false133:                                    ; preds = %land.lhs.true127, %land.lhs.true122, %if.then117
  %101 = load ptr, ptr %dev.addr, align 8, !dbg !4762
  %keybit134 = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 6, !dbg !4762
  %arraydecay135 = getelementptr inbounds [12 x i64], ptr %keybit134, i64 0, i64 0, !dbg !4762
  call void @___set_bit(i64 noundef 240, ptr noundef %arraydecay135) #12, !dbg !4762
  br label %cond.end136, !dbg !4762

cond.end136:                                      ; preds = %cond.false133, %cond.true130
  %102 = load ptr, ptr %dev.addr, align 8, !dbg !4764
  %evbit137 = getelementptr inbounds %struct.input_dev, ptr %102, i32 0, i32 5, !dbg !4764
  %arraydecay138 = getelementptr inbounds [1 x i64], ptr %evbit137, i64 0, i64 0, !dbg !4764
  %103 = ptrtoint ptr %arraydecay138 to i64, !dbg !4764
  %cmp139 = icmp ne i64 %103, 0, !dbg !4764
  %conv140 = zext i1 %cmp139 to i32, !dbg !4764
  %104 = call i1 @llvm.is.constant.i32(i32 %conv140), !dbg !4764
  br i1 %104, label %land.lhs.true141, label %cond.false152, !dbg !4764

land.lhs.true141:                                 ; preds = %cond.end136
  %105 = load ptr, ptr %dev.addr, align 8, !dbg !4764
  %evbit142 = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 5, !dbg !4764
  %arraydecay143 = getelementptr inbounds [1 x i64], ptr %evbit142, i64 0, i64 0, !dbg !4764
  %106 = ptrtoint ptr %arraydecay143 to i64, !dbg !4764
  %cmp144 = icmp ne i64 %106, 0, !dbg !4764
  br i1 %cmp144, label %land.lhs.true146, label %cond.false152, !dbg !4764

land.lhs.true146:                                 ; preds = %land.lhs.true141
  %107 = load ptr, ptr %dev.addr, align 8, !dbg !4764
  %evbit147 = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 5, !dbg !4764
  %arraydecay148 = getelementptr inbounds [1 x i64], ptr %evbit147, i64 0, i64 0, !dbg !4764
  %108 = load i64, ptr %arraydecay148, align 8, !dbg !4764
  %109 = call i1 @llvm.is.constant.i64(i64 %108), !dbg !4764
  br i1 %109, label %cond.true149, label %cond.false152, !dbg !4764

cond.true149:                                     ; preds = %land.lhs.true146
  %110 = load ptr, ptr %dev.addr, align 8, !dbg !4764
  %evbit150 = getelementptr inbounds %struct.input_dev, ptr %110, i32 0, i32 5, !dbg !4764
  %arraydecay151 = getelementptr inbounds [1 x i64], ptr %evbit150, i64 0, i64 0, !dbg !4764
  call void @generic___set_bit(i64 noundef 4, ptr noundef %arraydecay151) #12, !dbg !4764
  br label %cond.end155, !dbg !4764

cond.false152:                                    ; preds = %land.lhs.true146, %land.lhs.true141, %cond.end136
  %111 = load ptr, ptr %dev.addr, align 8, !dbg !4764
  %evbit153 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 5, !dbg !4764
  %arraydecay154 = getelementptr inbounds [1 x i64], ptr %evbit153, i64 0, i64 0, !dbg !4764
  call void @___set_bit(i64 noundef 4, ptr noundef %arraydecay154) #12, !dbg !4764
  br label %cond.end155, !dbg !4764

cond.end155:                                      ; preds = %cond.false152, %cond.true149
  %112 = load ptr, ptr %dev.addr, align 8, !dbg !4765
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %112, i32 0, i32 9, !dbg !4765
  %arraydecay156 = getelementptr inbounds [1 x i64], ptr %mscbit, i64 0, i64 0, !dbg !4765
  %113 = ptrtoint ptr %arraydecay156 to i64, !dbg !4765
  %cmp157 = icmp ne i64 %113, 0, !dbg !4765
  %conv158 = zext i1 %cmp157 to i32, !dbg !4765
  %114 = call i1 @llvm.is.constant.i32(i32 %conv158), !dbg !4765
  br i1 %114, label %land.lhs.true159, label %cond.false170, !dbg !4765

land.lhs.true159:                                 ; preds = %cond.end155
  %115 = load ptr, ptr %dev.addr, align 8, !dbg !4765
  %mscbit160 = getelementptr inbounds %struct.input_dev, ptr %115, i32 0, i32 9, !dbg !4765
  %arraydecay161 = getelementptr inbounds [1 x i64], ptr %mscbit160, i64 0, i64 0, !dbg !4765
  %116 = ptrtoint ptr %arraydecay161 to i64, !dbg !4765
  %cmp162 = icmp ne i64 %116, 0, !dbg !4765
  br i1 %cmp162, label %land.lhs.true164, label %cond.false170, !dbg !4765

land.lhs.true164:                                 ; preds = %land.lhs.true159
  %117 = load ptr, ptr %dev.addr, align 8, !dbg !4765
  %mscbit165 = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 9, !dbg !4765
  %arraydecay166 = getelementptr inbounds [1 x i64], ptr %mscbit165, i64 0, i64 0, !dbg !4765
  %118 = load i64, ptr %arraydecay166, align 8, !dbg !4765
  %119 = call i1 @llvm.is.constant.i64(i64 %118), !dbg !4765
  br i1 %119, label %cond.true167, label %cond.false170, !dbg !4765

cond.true167:                                     ; preds = %land.lhs.true164
  %120 = load ptr, ptr %dev.addr, align 8, !dbg !4765
  %mscbit168 = getelementptr inbounds %struct.input_dev, ptr %120, i32 0, i32 9, !dbg !4765
  %arraydecay169 = getelementptr inbounds [1 x i64], ptr %mscbit168, i64 0, i64 0, !dbg !4765
  call void @generic___set_bit(i64 noundef 4, ptr noundef %arraydecay169) #12, !dbg !4765
  br label %cond.end173, !dbg !4765

cond.false170:                                    ; preds = %land.lhs.true164, %land.lhs.true159, %cond.end155
  %121 = load ptr, ptr %dev.addr, align 8, !dbg !4765
  %mscbit171 = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 9, !dbg !4765
  %arraydecay172 = getelementptr inbounds [1 x i64], ptr %mscbit171, i64 0, i64 0, !dbg !4765
  call void @___set_bit(i64 noundef 4, ptr noundef %arraydecay172) #12, !dbg !4765
  br label %cond.end173, !dbg !4765

cond.end173:                                      ; preds = %cond.false170, %cond.true167
  br label %if.end174, !dbg !4766

if.end174:                                        ; preds = %cond.end173, %cond.false112, %cond.true107
  %122 = load ptr, ptr %map, align 8, !dbg !4767
  %123 = load ptr, ptr %dev.addr, align 8, !dbg !4768
  %keycode = getelementptr inbounds %struct.input_dev, ptr %123, i32 0, i32 17, !dbg !4769
  store ptr %122, ptr %keycode, align 8, !dbg !4770
  %124 = load i64, ptr %map_size, align 8, !dbg !4771
  %conv175 = trunc i64 %124 to i32, !dbg !4771
  %125 = load ptr, ptr %dev.addr, align 8, !dbg !4772
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %125, i32 0, i32 15, !dbg !4773
  store i32 %conv175, ptr %keycodemax, align 4, !dbg !4774
  %126 = load ptr, ptr %dev.addr, align 8, !dbg !4775
  %getkeycode = getelementptr inbounds %struct.input_dev, ptr %126, i32 0, i32 19, !dbg !4776
  store ptr @sparse_keymap_getkeycode, ptr %getkeycode, align 8, !dbg !4777
  %127 = load ptr, ptr %dev.addr, align 8, !dbg !4778
  %setkeycode = getelementptr inbounds %struct.input_dev, ptr %127, i32 0, i32 18, !dbg !4779
  store ptr @sparse_keymap_setkeycode, ptr %setkeycode, align 8, !dbg !4780
  store i32 0, ptr %retval, align 4, !dbg !4781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4781

cleanup:                                          ; preds = %if.end174, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #10, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #10, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #10, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_size) #10, !dbg !4782
  %128 = load i32, ptr %retval, align 4, !dbg !4782
  ret i32 %128, !dbg !4782
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4783 dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4786 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4793, metadata !DIExpression()), !dbg !4797
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4794, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4795, metadata !DIExpression()), !dbg !4800
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4801
  %rem = urem i64 %0, 64, !dbg !4801
  %shl = shl i64 1, %rem, !dbg !4801
  store i64 %shl, ptr %mask, align 8, !dbg !4800
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !4802
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4796, metadata !DIExpression()), !dbg !4803
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4804
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4805
  %div = udiv i64 %2, 64, !dbg !4805
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !4806
  store ptr %add.ptr, ptr %p, align 8, !dbg !4803
  %3 = load i64, ptr %mask, align 8, !dbg !4807
  %4 = load ptr, ptr %p, align 8, !dbg !4808
  %5 = load i64, ptr %4, align 8, !dbg !4809
  %or = or i64 %5, %3, !dbg !4809
  store i64 %or, ptr %4, align 8, !dbg !4809
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !4810
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !4810
  ret void, !dbg !4810
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4811 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4814, metadata !DIExpression()), !dbg !4816
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4815, metadata !DIExpression()), !dbg !4817
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4818
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4819
  %div = udiv i64 %1, 64, !dbg !4819
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4820
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4821
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4822
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4823
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4824
  ret void, !dbg !4825
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i8(i8) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4826 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4832, metadata !DIExpression()), !dbg !4837
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4833, metadata !DIExpression()), !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4834, metadata !DIExpression()), !dbg !4840
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4841
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4842
  %div = udiv i64 %1, 64, !dbg !4842
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4843
  store ptr %add.ptr, ptr %p, align 8, !dbg !4840
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4835, metadata !DIExpression()), !dbg !4845
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4846
  %rem = urem i64 %2, 64, !dbg !4846
  %shl = shl i64 1, %rem, !dbg !4846
  store i64 %shl, ptr %mask, align 8, !dbg !4845
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !4847
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4836, metadata !DIExpression()), !dbg !4848
  %3 = load ptr, ptr %p, align 8, !dbg !4849
  %4 = load i64, ptr %3, align 8, !dbg !4850
  store i64 %4, ptr %val, align 8, !dbg !4848
  %5 = load i64, ptr %val, align 8, !dbg !4851
  %6 = load i64, ptr %mask, align 8, !dbg !4852
  %and = and i64 %5, %6, !dbg !4853
  %tobool = icmp ne i64 %and, 0, !dbg !4854
  %lnot = xor i1 %tobool, true, !dbg !4854
  %lnot1 = xor i1 %lnot, true, !dbg !4855
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !4856
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !4856
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !4856
  ret i1 %lnot1, !dbg !4857
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4858 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4860, metadata !DIExpression()), !dbg !4862
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4861, metadata !DIExpression()), !dbg !4863
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4864
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4865
  %div = udiv i64 %1, 64, !dbg !4865
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4866
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4867
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4868
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4869
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4870
  ret i1 %call, !dbg !4871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sparse_keymap_getkeycode(ptr noundef %dev, ptr noundef %ke) #0 align 16 !dbg !4872 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ke.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4874, metadata !DIExpression()), !dbg !4877
  store ptr %ke, ptr %ke.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ke.addr, metadata !4875, metadata !DIExpression()), !dbg !4878
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4876, metadata !DIExpression()), !dbg !4880
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4881
  %keycode = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17, !dbg !4883
  %1 = load ptr, ptr %keycode, align 8, !dbg !4883
  %tobool = icmp ne ptr %1, null, !dbg !4881
  br i1 %tobool, label %if.then, label %if.end10, !dbg !4884

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4885
  %3 = load ptr, ptr %ke.addr, align 8, !dbg !4887
  %call = call ptr @sparse_keymap_locate(ptr noundef %2, ptr noundef %3) #12, !dbg !4888
  store ptr %call, ptr %key, align 8, !dbg !4889
  %4 = load ptr, ptr %key, align 8, !dbg !4890
  %tobool1 = icmp ne ptr %4, null, !dbg !4890
  br i1 %tobool1, label %land.lhs.true, label %if.end9, !dbg !4892

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %key, align 8, !dbg !4893
  %type = getelementptr inbounds %struct.key_entry, ptr %5, i32 0, i32 0, !dbg !4894
  %6 = load i32, ptr %type, align 4, !dbg !4894
  %cmp = icmp eq i32 %6, 1, !dbg !4895
  br i1 %cmp, label %if.then2, label %if.end9, !dbg !4896

if.then2:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %key, align 8, !dbg !4897
  %8 = getelementptr inbounds %struct.key_entry, ptr %7, i32 0, i32 2, !dbg !4899
  %9 = load i16, ptr %8, align 4, !dbg !4899
  %conv = zext i16 %9 to i32, !dbg !4897
  %10 = load ptr, ptr %ke.addr, align 8, !dbg !4900
  %keycode3 = getelementptr inbounds %struct.input_keymap_entry, ptr %10, i32 0, i32 3, !dbg !4901
  store i32 %conv, ptr %keycode3, align 4, !dbg !4902
  %11 = load ptr, ptr %ke.addr, align 8, !dbg !4903
  %flags = getelementptr inbounds %struct.input_keymap_entry, ptr %11, i32 0, i32 0, !dbg !4905
  %12 = load i8, ptr %flags, align 4, !dbg !4905
  %conv4 = zext i8 %12 to i32, !dbg !4903
  %and = and i32 %conv4, 1, !dbg !4906
  %tobool5 = icmp ne i32 %and, 0, !dbg !4906
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !4907

if.then6:                                         ; preds = %if.then2
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !4908
  %14 = load ptr, ptr %key, align 8, !dbg !4909
  %call7 = call i32 @sparse_keymap_get_key_index(ptr noundef %13, ptr noundef %14) #12, !dbg !4910
  %conv8 = trunc i32 %call7 to i16, !dbg !4910
  %15 = load ptr, ptr %ke.addr, align 8, !dbg !4911
  %index = getelementptr inbounds %struct.input_keymap_entry, ptr %15, i32 0, i32 2, !dbg !4912
  store i16 %conv8, ptr %index, align 2, !dbg !4913
  br label %if.end, !dbg !4911

if.end:                                           ; preds = %if.then6, %if.then2
  %16 = load ptr, ptr %ke.addr, align 8, !dbg !4914
  %len = getelementptr inbounds %struct.input_keymap_entry, ptr %16, i32 0, i32 1, !dbg !4915
  store i8 4, ptr %len, align 1, !dbg !4916
  %17 = load ptr, ptr %ke.addr, align 8, !dbg !4917
  %scancode = getelementptr inbounds %struct.input_keymap_entry, ptr %17, i32 0, i32 4, !dbg !4918
  %arraydecay = getelementptr inbounds [32 x i8], ptr %scancode, i64 0, i64 0, !dbg !4919
  %18 = load ptr, ptr %key, align 8, !dbg !4920
  %code = getelementptr inbounds %struct.key_entry, ptr %18, i32 0, i32 1, !dbg !4921
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 4 %code, i64 4, i1 false), !dbg !4919
  store i32 0, ptr %retval, align 4, !dbg !4922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4922

if.end9:                                          ; preds = %land.lhs.true, %if.then
  br label %if.end10, !dbg !4923

if.end10:                                         ; preds = %if.end9, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4924

cleanup:                                          ; preds = %if.end10, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !4925
  %19 = load i32, ptr %retval, align 4, !dbg !4925
  ret i32 %19, !dbg !4925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sparse_keymap_setkeycode(ptr noundef %dev, ptr noundef %ke, ptr noundef %old_keycode) #0 align 16 !dbg !4926 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ke.addr = alloca ptr, align 8
  %old_keycode.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4928, metadata !DIExpression()), !dbg !4932
  store ptr %ke, ptr %ke.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ke.addr, metadata !4929, metadata !DIExpression()), !dbg !4933
  store ptr %old_keycode, ptr %old_keycode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_keycode.addr, metadata !4930, metadata !DIExpression()), !dbg !4934
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !4935
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4931, metadata !DIExpression()), !dbg !4936
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4937
  %keycode = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17, !dbg !4939
  %1 = load ptr, ptr %keycode, align 8, !dbg !4939
  %tobool = icmp ne ptr %1, null, !dbg !4937
  br i1 %tobool, label %if.then, label %if.end14, !dbg !4940

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4941
  %3 = load ptr, ptr %ke.addr, align 8, !dbg !4943
  %call = call ptr @sparse_keymap_locate(ptr noundef %2, ptr noundef %3) #12, !dbg !4944
  store ptr %call, ptr %key, align 8, !dbg !4945
  %4 = load ptr, ptr %key, align 8, !dbg !4946
  %tobool1 = icmp ne ptr %4, null, !dbg !4946
  br i1 %tobool1, label %land.lhs.true, label %if.end13, !dbg !4948

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %key, align 8, !dbg !4949
  %type = getelementptr inbounds %struct.key_entry, ptr %5, i32 0, i32 0, !dbg !4950
  %6 = load i32, ptr %type, align 4, !dbg !4950
  %cmp = icmp eq i32 %6, 1, !dbg !4951
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !4952

if.then2:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %key, align 8, !dbg !4953
  %8 = getelementptr inbounds %struct.key_entry, ptr %7, i32 0, i32 2, !dbg !4955
  %9 = load i16, ptr %8, align 4, !dbg !4955
  %conv = zext i16 %9 to i32, !dbg !4953
  %10 = load ptr, ptr %old_keycode.addr, align 8, !dbg !4956
  store i32 %conv, ptr %10, align 4, !dbg !4957
  %11 = load ptr, ptr %ke.addr, align 8, !dbg !4958
  %keycode3 = getelementptr inbounds %struct.input_keymap_entry, ptr %11, i32 0, i32 3, !dbg !4959
  %12 = load i32, ptr %keycode3, align 4, !dbg !4959
  %conv4 = trunc i32 %12 to i16, !dbg !4958
  %13 = load ptr, ptr %key, align 8, !dbg !4960
  %14 = getelementptr inbounds %struct.key_entry, ptr %13, i32 0, i32 2, !dbg !4961
  store i16 %conv4, ptr %14, align 4, !dbg !4962
  %15 = load ptr, ptr %ke.addr, align 8, !dbg !4963
  %keycode5 = getelementptr inbounds %struct.input_keymap_entry, ptr %15, i32 0, i32 3, !dbg !4964
  %16 = load i32, ptr %keycode5, align 4, !dbg !4964
  %conv6 = zext i32 %16 to i64, !dbg !4963
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !4965
  %keybit = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 6, !dbg !4966
  %arraydecay = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !4965
  call void @set_bit(i64 noundef %conv6, ptr noundef %arraydecay) #12, !dbg !4967
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !4968
  %19 = load ptr, ptr %old_keycode.addr, align 8, !dbg !4970
  %20 = load i32, ptr %19, align 4, !dbg !4971
  %call7 = call ptr @sparse_keymap_entry_from_keycode(ptr noundef %18, i32 noundef %20) #12, !dbg !4972
  %tobool8 = icmp ne ptr %call7, null, !dbg !4972
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !4973

if.then9:                                         ; preds = %if.then2
  %21 = load ptr, ptr %old_keycode.addr, align 8, !dbg !4974
  %22 = load i32, ptr %21, align 4, !dbg !4975
  %conv10 = zext i32 %22 to i64, !dbg !4975
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !4976
  %keybit11 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 6, !dbg !4977
  %arraydecay12 = getelementptr inbounds [12 x i64], ptr %keybit11, i64 0, i64 0, !dbg !4976
  call void @clear_bit(i64 noundef %conv10, ptr noundef %arraydecay12) #12, !dbg !4978
  br label %if.end, !dbg !4978

if.end:                                           ; preds = %if.then9, %if.then2
  store i32 0, ptr %retval, align 4, !dbg !4979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4979

if.end13:                                         ; preds = %land.lhs.true, %if.then
  br label %if.end14, !dbg !4980

if.end14:                                         ; preds = %if.end13, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4981

cleanup:                                          ; preds = %if.end14, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !4982
  %24 = load i32, ptr %retval, align 4, !dbg !4982
  ret i32 %24, !dbg !4982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sparse_keymap_report_entry(ptr noundef %dev, ptr noundef %ke, i32 noundef %value, i1 noundef zeroext %autorelease) #0 align 16 !dbg !4983 {
entry:
  %dev.addr = alloca ptr, align 8
  %ke.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %autorelease.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4987, metadata !DIExpression()), !dbg !4991
  store ptr %ke, ptr %ke.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ke.addr, metadata !4988, metadata !DIExpression()), !dbg !4992
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4989, metadata !DIExpression()), !dbg !4993
  %frombool = zext i1 %autorelease to i8
  store i8 %frombool, ptr %autorelease.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %autorelease.addr, metadata !4990, metadata !DIExpression()), !dbg !4994
  %0 = load ptr, ptr %ke.addr, align 8, !dbg !4995
  %type = getelementptr inbounds %struct.key_entry, ptr %0, i32 0, i32 0, !dbg !4996
  %1 = load i32, ptr %type, align 4, !dbg !4996
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ], !dbg !4997

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4998
  %3 = load ptr, ptr %ke.addr, align 8, !dbg !5000
  %code = getelementptr inbounds %struct.key_entry, ptr %3, i32 0, i32 1, !dbg !5001
  %4 = load i32, ptr %code, align 4, !dbg !5001
  call void @input_event(ptr noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef %4) #12, !dbg !5002
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5003
  %6 = load ptr, ptr %ke.addr, align 8, !dbg !5004
  %7 = getelementptr inbounds %struct.key_entry, ptr %6, i32 0, i32 2, !dbg !5005
  %8 = load i16, ptr %7, align 4, !dbg !5005
  %conv = zext i16 %8 to i32, !dbg !5004
  %9 = load i32, ptr %value.addr, align 4, !dbg !5006
  call void @input_report_key(ptr noundef %5, i32 noundef %conv, i32 noundef %9) #12, !dbg !5007
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5008
  call void @input_sync(ptr noundef %10) #12, !dbg !5009
  %11 = load i32, ptr %value.addr, align 4, !dbg !5010
  %tobool = icmp ne i32 %11, 0, !dbg !5010
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5012

land.lhs.true:                                    ; preds = %sw.bb
  %12 = load i8, ptr %autorelease.addr, align 1, !dbg !5013, !range !5014, !noundef !1493
  %tobool1 = trunc i8 %12 to i1, !dbg !5013
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5015

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5016
  %14 = load ptr, ptr %ke.addr, align 8, !dbg !5018
  %15 = getelementptr inbounds %struct.key_entry, ptr %14, i32 0, i32 2, !dbg !5019
  %16 = load i16, ptr %15, align 4, !dbg !5019
  %conv3 = zext i16 %16 to i32, !dbg !5018
  call void @input_report_key(ptr noundef %13, i32 noundef %conv3, i32 noundef 0) #12, !dbg !5020
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5021
  call void @input_sync(ptr noundef %17) #12, !dbg !5022
  br label %if.end, !dbg !5023

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5024

sw.bb4:                                           ; preds = %entry
  %18 = load ptr, ptr %ke.addr, align 8, !dbg !5025
  %19 = getelementptr inbounds %struct.key_entry, ptr %18, i32 0, i32 2, !dbg !5026
  %value5 = getelementptr inbounds %struct.anon.14, ptr %19, i32 0, i32 1, !dbg !5027
  %20 = load i8, ptr %value5, align 1, !dbg !5027
  %conv6 = zext i8 %20 to i32, !dbg !5025
  store i32 %conv6, ptr %value.addr, align 4, !dbg !5028
  br label %sw.bb7, !dbg !5029

sw.bb7:                                           ; preds = %entry, %sw.bb4
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5030
  %22 = load ptr, ptr %ke.addr, align 8, !dbg !5031
  %23 = getelementptr inbounds %struct.key_entry, ptr %22, i32 0, i32 2, !dbg !5032
  %code8 = getelementptr inbounds %struct.anon.14, ptr %23, i32 0, i32 0, !dbg !5033
  %24 = load i8, ptr %code8, align 4, !dbg !5033
  %conv9 = zext i8 %24 to i32, !dbg !5031
  %25 = load i32, ptr %value.addr, align 4, !dbg !5034
  call void @input_report_switch(ptr noundef %21, i32 noundef %conv9, i32 noundef %25) #12, !dbg !5035
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5036
  call void @input_sync(ptr noundef %26) #12, !dbg !5037
  br label %sw.epilog, !dbg !5038

sw.epilog:                                        ; preds = %entry, %sw.bb7, %if.end
  ret void, !dbg !5039
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5040 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #7 align 16 !dbg !5043 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5047, metadata !DIExpression()), !dbg !5050
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5048, metadata !DIExpression()), !dbg !5051
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5049, metadata !DIExpression()), !dbg !5052
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5053
  %1 = load i32, ptr %code.addr, align 4, !dbg !5054
  %2 = load i32, ptr %value.addr, align 4, !dbg !5055
  %tobool = icmp ne i32 %2, 0, !dbg !5056
  %lnot = xor i1 %tobool, true, !dbg !5056
  %lnot1 = xor i1 %lnot, true, !dbg !5057
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5057
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #12, !dbg !5058
  ret void, !dbg !5059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #7 align 16 !dbg !5060 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5064
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !dbg !5065
  ret void, !dbg !5066
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_switch(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #7 align 16 !dbg !5067 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5069, metadata !DIExpression()), !dbg !5072
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5070, metadata !DIExpression()), !dbg !5073
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5071, metadata !DIExpression()), !dbg !5074
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5075
  %1 = load i32, ptr %code.addr, align 4, !dbg !5076
  %2 = load i32, ptr %value.addr, align 4, !dbg !5077
  %tobool = icmp ne i32 %2, 0, !dbg !5078
  %lnot = xor i1 %tobool, true, !dbg !5078
  %lnot1 = xor i1 %lnot, true, !dbg !5079
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5079
  call void @input_event(ptr noundef %0, i32 noundef 5, i32 noundef %1, i32 noundef %lnot.ext) #12, !dbg !5080
  ret void, !dbg !5081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @sparse_keymap_report_event(ptr noundef %dev, i32 noundef %code, i32 noundef %value, i1 noundef zeroext %autorelease) #0 align 16 !dbg !5082 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %autorelease.addr = alloca i8, align 1
  %ke = alloca ptr, align 8
  %unknown_ke = alloca %struct.key_entry, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5086, metadata !DIExpression()), !dbg !5092
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5087, metadata !DIExpression()), !dbg !5093
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5088, metadata !DIExpression()), !dbg !5094
  %frombool = zext i1 %autorelease to i8
  store i8 %frombool, ptr %autorelease.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %autorelease.addr, metadata !5089, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %ke) #10, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %ke, metadata !5090, metadata !DIExpression()), !dbg !5097
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5098
  %1 = load i32, ptr %code.addr, align 4, !dbg !5099
  %call = call ptr @sparse_keymap_entry_from_scancode(ptr noundef %0, i32 noundef %1) #12, !dbg !5100
  store ptr %call, ptr %ke, align 8, !dbg !5097
  call void @llvm.lifetime.start.p0(i64 12, ptr %unknown_ke) #10, !dbg !5101
  call void @llvm.dbg.declare(metadata ptr %unknown_ke, metadata !5091, metadata !DIExpression()), !dbg !5102
  %2 = load ptr, ptr %ke, align 8, !dbg !5103
  %tobool = icmp ne ptr %2, null, !dbg !5103
  br i1 %tobool, label %if.then, label %if.end, !dbg !5105

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5106
  %4 = load ptr, ptr %ke, align 8, !dbg !5108
  %5 = load i32, ptr %value.addr, align 4, !dbg !5109
  %6 = load i8, ptr %autorelease.addr, align 1, !dbg !5110, !range !5014, !noundef !1493
  %tobool1 = trunc i8 %6 to i1, !dbg !5110
  call void @sparse_keymap_report_entry(ptr noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %tobool1) #12, !dbg !5111
  store i1 true, ptr %retval, align 1, !dbg !5112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5112

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.key_entry, ptr %unknown_ke, i32 0, i32 0, !dbg !5113
  store i32 1, ptr %type, align 4, !dbg !5114
  %7 = load i32, ptr %code.addr, align 4, !dbg !5115
  %code2 = getelementptr inbounds %struct.key_entry, ptr %unknown_ke, i32 0, i32 1, !dbg !5116
  store i32 %7, ptr %code2, align 4, !dbg !5117
  %8 = getelementptr inbounds %struct.key_entry, ptr %unknown_ke, i32 0, i32 2, !dbg !5118
  store i16 240, ptr %8, align 4, !dbg !5119
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5120
  %10 = load i32, ptr %value.addr, align 4, !dbg !5121
  call void @sparse_keymap_report_entry(ptr noundef %9, ptr noundef %unknown_ke, i32 noundef %10, i1 noundef zeroext true) #12, !dbg !5122
  store i1 false, ptr %retval, align 1, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %unknown_ke) #10, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %ke) #10, !dbg !5124
  %11 = load i1, ptr %retval, align 1, !dbg !5124
  ret i1 %11, !dbg !5124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5125 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5133, metadata !DIExpression()), !dbg !5135
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5134, metadata !DIExpression()), !dbg !5136
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5137
  %1 = load i64, ptr %size.addr, align 8, !dbg !5138
  %conv = trunc i64 %1 to i32, !dbg !5138
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !5139
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5140
  %3 = load i64, ptr %size.addr, align 8, !dbg !5140
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #12, !dbg !5140
  ret void, !dbg !5141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5142 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5145, metadata !DIExpression()), !dbg !5147
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5146, metadata !DIExpression()), !dbg !5148
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5149
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5150
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !5151, !srcloc !5152
  ret void, !dbg !5153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !5154 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5159, metadata !DIExpression()), !dbg !5161
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5160, metadata !DIExpression()), !dbg !5162
  ret i1 true, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !5164 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5169, metadata !DIExpression()), !dbg !5172
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5170, metadata !DIExpression()), !dbg !5173
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5171, metadata !DIExpression()), !dbg !5174
  ret void, !dbg !5175
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5176 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5178, metadata !DIExpression()), !dbg !5180
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5179, metadata !DIExpression()), !dbg !5181
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5182
  %1 = load i64, ptr %size.addr, align 8, !dbg !5183
  %conv = trunc i64 %1 to i32, !dbg !5183
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !5184
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5185
  %3 = load i64, ptr %size.addr, align 8, !dbg !5185
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !5185
  ret void, !dbg !5186
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5187 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5189, metadata !DIExpression()), !dbg !5191
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5190, metadata !DIExpression()), !dbg !5192
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5193
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5194
  br i1 %1, label %cond.true, label %cond.false, !dbg !5194

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5195
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5196
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5197
  %conv = zext i1 %call to i32, !dbg !5197
  br label %cond.end, !dbg !5194

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5198
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5199
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !5200
  %conv2 = zext i1 %call1 to i32, !dbg !5200
  br label %cond.end, !dbg !5194

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5194
  %tobool = icmp ne i32 %cond, 0, !dbg !5194
  ret i1 %tobool, !dbg !5201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !5202 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5204, metadata !DIExpression()), !dbg !5206
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5205, metadata !DIExpression()), !dbg !5207
  ret i1 true, !dbg !5208
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5209 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5213, metadata !DIExpression()), !dbg !5215
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5214, metadata !DIExpression()), !dbg !5216
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5217
  %and = and i64 %0, 63, !dbg !5218
  %shl = shl i64 1, %and, !dbg !5219
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5220
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5221
  %shr = ashr i64 %2, 6, !dbg !5222
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5220
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5220
  %and1 = and i64 %shl, %3, !dbg !5223
  %cmp = icmp ne i64 %and1, 0, !dbg !5224
  ret i1 %cmp, !dbg !5225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5226 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5228, metadata !DIExpression()), !dbg !5231
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5229, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5230, metadata !DIExpression()), !dbg !5234
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5235
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5236
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !5237, !srcloc !5238
  %3 = icmp ult i8 %2, 2, !dbg !5237
  call void @llvm.assume(i1 %3), !dbg !5237
  store i8 %2, ptr %oldbit, align 1, !dbg !5237
  %4 = load i8, ptr %oldbit, align 1, !dbg !5239, !range !5014, !noundef !1493
  %tobool = trunc i8 %4 to i1, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !5240
  ret i1 %tobool, !dbg !5241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sparse_keymap_locate(ptr noundef %dev, ptr noundef %ke) #0 align 16 !dbg !5242 {
entry:
  %dev.addr = alloca ptr, align 8
  %ke.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %scancode = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5246, metadata !DIExpression()), !dbg !5250
  store ptr %ke, ptr %ke.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ke.addr, metadata !5247, metadata !DIExpression()), !dbg !5251
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !5252
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5248, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 4, ptr %scancode) #10, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %scancode, metadata !5249, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %ke.addr, align 8, !dbg !5256
  %flags = getelementptr inbounds %struct.input_keymap_entry, ptr %0, i32 0, i32 0, !dbg !5258
  %1 = load i8, ptr %flags, align 4, !dbg !5258
  %conv = zext i8 %1 to i32, !dbg !5256
  %and = and i32 %conv, 1, !dbg !5259
  %tobool = icmp ne i32 %and, 0, !dbg !5259
  br i1 %tobool, label %if.then, label %if.else, !dbg !5260

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5261
  %3 = load ptr, ptr %ke.addr, align 8, !dbg !5262
  %index = getelementptr inbounds %struct.input_keymap_entry, ptr %3, i32 0, i32 2, !dbg !5263
  %4 = load i16, ptr %index, align 2, !dbg !5263
  %conv1 = zext i16 %4 to i32, !dbg !5262
  %call = call ptr @sparse_keymap_entry_by_index(ptr noundef %2, i32 noundef %conv1) #12, !dbg !5264
  store ptr %call, ptr %key, align 8, !dbg !5265
  br label %if.end7, !dbg !5266

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %ke.addr, align 8, !dbg !5267
  %call2 = call i32 @input_scancode_to_scalar(ptr noundef %5, ptr noundef %scancode) #12, !dbg !5269
  %cmp = icmp eq i32 %call2, 0, !dbg !5270
  br i1 %cmp, label %if.then4, label %if.else6, !dbg !5271

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5272
  %7 = load i32, ptr %scancode, align 4, !dbg !5273
  %call5 = call ptr @sparse_keymap_entry_from_scancode(ptr noundef %6, i32 noundef %7) #12, !dbg !5274
  store ptr %call5, ptr %key, align 8, !dbg !5275
  br label %if.end, !dbg !5276

if.else6:                                         ; preds = %if.else
  store ptr null, ptr %key, align 8, !dbg !5277
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %key, align 8, !dbg !5278
  call void @llvm.lifetime.end.p0(i64 4, ptr %scancode) #10, !dbg !5279
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !5279
  ret ptr %8, !dbg !5280
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sparse_keymap_get_key_index(ptr noundef %dev, ptr noundef %k) #0 align 16 !dbg !5281 {
entry:
  %dev.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5285, metadata !DIExpression()), !dbg !5289
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5286, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5287, metadata !DIExpression()), !dbg !5292
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #10, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5288, metadata !DIExpression()), !dbg !5294
  store i32 0, ptr %idx, align 4, !dbg !5294
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5295
  %keycode = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17, !dbg !5297
  %1 = load ptr, ptr %keycode, align 8, !dbg !5297
  store ptr %1, ptr %key, align 8, !dbg !5298
  br label %for.cond, !dbg !5299

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %key, align 8, !dbg !5300
  %type = getelementptr inbounds %struct.key_entry, ptr %2, i32 0, i32 0, !dbg !5302
  %3 = load i32, ptr %type, align 4, !dbg !5302
  %cmp = icmp ne i32 %3, 0, !dbg !5303
  br i1 %cmp, label %for.body, label %for.end, !dbg !5304

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %key, align 8, !dbg !5305
  %type1 = getelementptr inbounds %struct.key_entry, ptr %4, i32 0, i32 0, !dbg !5308
  %5 = load i32, ptr %type1, align 4, !dbg !5308
  %cmp2 = icmp eq i32 %5, 1, !dbg !5309
  br i1 %cmp2, label %if.then, label %if.end5, !dbg !5310

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %key, align 8, !dbg !5311
  %7 = load ptr, ptr %k.addr, align 8, !dbg !5314
  %cmp3 = icmp eq ptr %6, %7, !dbg !5315
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5316

if.then4:                                         ; preds = %if.then
  br label %for.end, !dbg !5317

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %idx, align 4, !dbg !5318
  %inc = add i32 %8, 1, !dbg !5318
  store i32 %inc, ptr %idx, align 4, !dbg !5318
  br label %if.end5, !dbg !5319

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !5320

for.inc:                                          ; preds = %if.end5
  %9 = load ptr, ptr %key, align 8, !dbg !5321
  %incdec.ptr = getelementptr %struct.key_entry, ptr %9, i32 1, !dbg !5321
  store ptr %incdec.ptr, ptr %key, align 8, !dbg !5321
  br label %for.cond, !dbg !5322, !llvm.loop !5323

for.end:                                          ; preds = %if.then4, %for.cond
  %10 = load i32, ptr %idx, align 4, !dbg !5325
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #10, !dbg !5326
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !5326
  ret i32 %10, !dbg !5327
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sparse_keymap_entry_by_index(ptr noundef %dev, i32 noundef %index) #0 align 16 !dbg !5328 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %key = alloca ptr, align 8
  %key_cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5330, metadata !DIExpression()), !dbg !5334
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5331, metadata !DIExpression()), !dbg !5335
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !5336
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5332, metadata !DIExpression()), !dbg !5337
  call void @llvm.lifetime.start.p0(i64 4, ptr %key_cnt) #10, !dbg !5338
  call void @llvm.dbg.declare(metadata ptr %key_cnt, metadata !5333, metadata !DIExpression()), !dbg !5339
  store i32 0, ptr %key_cnt, align 4, !dbg !5339
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5340
  %keycode = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17, !dbg !5342
  %1 = load ptr, ptr %keycode, align 8, !dbg !5342
  store ptr %1, ptr %key, align 8, !dbg !5343
  br label %for.cond, !dbg !5344

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %key, align 8, !dbg !5345
  %type = getelementptr inbounds %struct.key_entry, ptr %2, i32 0, i32 0, !dbg !5347
  %3 = load i32, ptr %type, align 4, !dbg !5347
  %cmp = icmp ne i32 %3, 0, !dbg !5348
  br i1 %cmp, label %for.body, label %for.end, !dbg !5349

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %key, align 8, !dbg !5350
  %type1 = getelementptr inbounds %struct.key_entry, ptr %4, i32 0, i32 0, !dbg !5352
  %5 = load i32, ptr %type1, align 4, !dbg !5352
  %cmp2 = icmp eq i32 %5, 1, !dbg !5353
  br i1 %cmp2, label %if.then, label %if.end5, !dbg !5354

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %key_cnt, align 4, !dbg !5355
  %inc = add i32 %6, 1, !dbg !5355
  store i32 %inc, ptr %key_cnt, align 4, !dbg !5355
  %7 = load i32, ptr %index.addr, align 4, !dbg !5357
  %cmp3 = icmp eq i32 %6, %7, !dbg !5358
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5359

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %key, align 8, !dbg !5360
  store ptr %8, ptr %retval, align 8, !dbg !5361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5361

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !5357

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !5362

for.inc:                                          ; preds = %if.end5
  %9 = load ptr, ptr %key, align 8, !dbg !5363
  %incdec.ptr = getelementptr %struct.key_entry, ptr %9, i32 1, !dbg !5363
  store ptr %incdec.ptr, ptr %key, align 8, !dbg !5363
  br label %for.cond, !dbg !5364, !llvm.loop !5365

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5367

cleanup:                                          ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %key_cnt) #10, !dbg !5368
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !5368
  %10 = load ptr, ptr %retval, align 8, !dbg !5368
  ret ptr %10, !dbg !5368
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5369 dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5372 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5377, metadata !DIExpression()), !dbg !5379
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5378, metadata !DIExpression()), !dbg !5380
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5381
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5382
  %div = sdiv i64 %1, 64, !dbg !5382
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5383
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !5384
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5385
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5386
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5387
  ret void, !dbg !5388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5389 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5391, metadata !DIExpression()), !dbg !5393
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5392, metadata !DIExpression()), !dbg !5394
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5395
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5396
  %div = sdiv i64 %1, 64, !dbg !5396
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5397
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !5398
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5399
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5400
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5401
  ret void, !dbg !5402
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5403 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5405, metadata !DIExpression()), !dbg !5407
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5406, metadata !DIExpression()), !dbg !5408
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5409
  %1 = load i64, ptr %size.addr, align 8, !dbg !5410
  %conv = trunc i64 %1 to i32, !dbg !5410
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !5411
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5412
  %3 = load i64, ptr %size.addr, align 8, !dbg !5412
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !5412
  ret void, !dbg !5413
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5414 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5416, metadata !DIExpression()), !dbg !5418
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5417, metadata !DIExpression()), !dbg !5419
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5420
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5422
  br i1 %1, label %if.then, label %if.else, !dbg !5423

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5424
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5424
  %shr = ashr i64 %3, 3, !dbg !5424
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5424
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5426
  %and = and i64 %4, 7, !dbg !5426
  %sh_prom = trunc i64 %and to i32, !dbg !5426
  %shl = shl i32 1, %sh_prom, !dbg !5426
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !5427, !srcloc !5428
  br label %if.end, !dbg !5429

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5430
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5432
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !5433, !srcloc !5434
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5436 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5438, metadata !DIExpression()), !dbg !5440
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5439, metadata !DIExpression()), !dbg !5441
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5442
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5444
  br i1 %1, label %if.then, label %if.else, !dbg !5445

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5446
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5446
  %shr = ashr i64 %3, 3, !dbg !5446
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5446
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5448
  %and = and i64 %4, 7, !dbg !5448
  %sh_prom = trunc i64 %and to i32, !dbg !5448
  %shl = shl i32 1, %sh_prom, !dbg !5448
  %not = xor i32 %shl, -1, !dbg !5449
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #10, !dbg !5450, !srcloc !5451
  br label %if.end, !dbg !5452

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5453
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5455
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !5456, !srcloc !5457
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5458
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noredzone allocsize(2) }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author267", scope: !2, file: !3, line: 18, type: !164, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.sparse-keymap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/sparse-keymap\22 -D KBUILD_BASENAME=\22sparse_keymap\22 -D KBUILD_MODNAME=\22sparse_keymap\22 -D __KBUILD_MODNAME=kmod_sparse_keymap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/sparse-keymap.ll drivers/input/sparse-keymap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !137, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/sparse-keymap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1adb11ce6ffc31c14a3101fa2d5b226a")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117}
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
!122 = !{!123, !124, !126, !128, !130, !131, !134}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !125, line: 154, baseType: !7)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !125, line: 42, baseType: !127)
!127 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!133 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !{!0, !138, !144, !149, !154, !156, !158, !160, !162}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description268", scope: !2, file: !3, line: 19, type: !140, isLocal: true, isDefinition: true, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 488, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!142 = !{!143}
!143 = !DISubrange(count: 61)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file269", scope: !2, file: !3, line: 20, type: !146, isLocal: true, isDefinition: true, align: 8)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license270", scope: !2, file: !3, line: 20, type: !151, isLocal: true, isDefinition: true, align: 8)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 232, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 29)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sparse_keymap_entry_from_scancode271", scope: !2, file: !3, line: 72, type: !123, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sparse_keymap_entry_from_keycode272", scope: !2, file: !3, line: 93, type: !123, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sparse_keymap_setup273", scope: !2, file: !3, line: 220, type: !123, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sparse_keymap_report_entry274", scope: !2, file: !3, line: 258, type: !123, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sparse_keymap_report_event275", scope: !2, file: !3, line: 293, type: !123, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 416, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 52)
!167 = !{i32 7, !"Dwarf Version", i32 5}
!168 = !{i32 2, !"Debug Info Version", i32 3}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 8, !"cf-protection-branch", i32 1}
!171 = !{i32 4, !"function_return_thunk_extern", i32 1}
!172 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!173 = !{i32 1, !"Code Model", i32 2}
!174 = !{i32 1, !"override-stack-alignment", i32 8}
!175 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!176 = distinct !DISubprogram(name: "sparse_keymap_entry_from_scancode", scope: !3, file: !3, line: 61, type: !177, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4589)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !204, !7}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_entry", file: !181, line: 33, size: 96, elements: !182)
!181 = !DIFile(filename: "./include/linux/input/sparse-keymap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c37338b6ae36fc8b8aaed94be0066d5d")
!182 = !{!183, !184, !189}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !181, line: 34, baseType: !85, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !180, file: !181, line: 35, baseType: !185, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !186, line: 21, baseType: !187)
!186 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !188, line: 27, baseType: !7)
!188 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !181, line: 36, baseType: !190, size: 16, offset: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !181, line: 36, size: 16, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !190, file: !181, line: 37, baseType: !193, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !186, line: 19, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !188, line: 24, baseType: !195)
!195 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !190, file: !181, line: 41, baseType: !197, size: 16)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !181, line: 38, size: 16, elements: !198)
!198 = !{!199, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !197, file: !181, line: 39, baseType: !200, size: 8)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !186, line: 17, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !188, line: 21, baseType: !202)
!202 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !181, line: 40, baseType: !200, size: 8, offset: 8)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !206, line: 137, size: 10880, elements: !207)
!206 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!207 = !{!208, !210, !211, !212, !220, !224, !225, !229, !230, !231, !232, !233, !234, !238, !239, !240, !241, !242, !243, !260, !265, !4094, !4097, !4098, !4099, !4101, !4104, !4114, !4115, !4116, !4117, !4118, !4122, !4126, !4130, !4134, !4212, !4213, !4214, !4215, !4216, !4579, !4580, !4581, !4582, !4583, !4585, !4586, !4588}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !206, line: 138, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !205, file: !206, line: 139, baseType: !209, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !205, file: !206, line: 140, baseType: !209, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !205, file: !206, line: 141, baseType: !213, size: 64, offset: 192)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !214, line: 59, size: 64, elements: !215)
!214 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !213, file: !214, line: 60, baseType: !194, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !213, file: !214, line: 61, baseType: !194, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !213, file: !214, line: 62, baseType: !194, size: 16, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !213, file: !214, line: 63, baseType: !194, size: 16, offset: 48)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !205, file: !206, line: 143, baseType: !221, size: 64, offset: 256)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 1)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !205, file: !206, line: 145, baseType: !221, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !205, file: !206, line: 146, baseType: !226, size: 768, offset: 384)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 768, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 12)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !205, file: !206, line: 147, baseType: !221, size: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !205, file: !206, line: 148, baseType: !221, size: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !205, file: !206, line: 149, baseType: !221, size: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !205, file: !206, line: 150, baseType: !221, size: 64, offset: 1344)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !205, file: !206, line: 151, baseType: !221, size: 64, offset: 1408)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !205, file: !206, line: 152, baseType: !235, size: 128, offset: 1472)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 2)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !205, file: !206, line: 153, baseType: !221, size: 64, offset: 1600)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !205, file: !206, line: 155, baseType: !7, size: 32, offset: 1664)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !205, file: !206, line: 157, baseType: !7, size: 32, offset: 1696)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !205, file: !206, line: 158, baseType: !7, size: 32, offset: 1728)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !205, file: !206, line: 159, baseType: !123, size: 64, offset: 1792)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !205, file: !206, line: 161, baseType: !244, size: 64, offset: 1856)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!85, !204, !247, !259}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !214, line: 117, size: 320, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !214, line: 119, baseType: !201, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !249, file: !214, line: 120, baseType: !201, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !249, file: !214, line: 121, baseType: !194, size: 16, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !249, file: !214, line: 122, baseType: !187, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !249, file: !214, line: 123, baseType: !256, size: 256, offset: 64)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 32)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !205, file: !206, line: 164, baseType: !261, size: 64, offset: 1920)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!85, !204, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !205, file: !206, line: 167, baseType: !266, size: 64, offset: 1984)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !206, line: 546, size: 960, elements: !268)
!268 = !{!269, !338, !342, !346, !350, !351, !355, !356, !357, !410, !411, !412}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !267, file: !206, line: 547, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!85, !204, !273, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !214, line: 454, size: 384, elements: !275)
!275 = !{!276, !277, !280, !281, !286, !291}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !214, line: 455, baseType: !194, size: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !274, file: !214, line: 456, baseType: !278, size: 16, offset: 16)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !188, line: 23, baseType: !279)
!279 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !274, file: !214, line: 457, baseType: !194, size: 16, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !274, file: !214, line: 458, baseType: !282, size: 32, offset: 48)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !214, line: 320, size: 32, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !282, file: !214, line: 321, baseType: !194, size: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !282, file: !214, line: 322, baseType: !194, size: 16, offset: 16)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !274, file: !214, line: 459, baseType: !287, size: 32, offset: 80)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !214, line: 310, size: 32, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !287, file: !214, line: 311, baseType: !194, size: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !287, file: !214, line: 312, baseType: !194, size: 16, offset: 16)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !274, file: !214, line: 467, baseType: !292, size: 256, offset: 128)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !214, line: 461, size: 256, elements: !293)
!293 = !{!294, !305, !311, !323, !333}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !292, file: !214, line: 462, baseType: !295, size: 80)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !214, line: 349, size: 80, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !295, file: !214, line: 350, baseType: !278, size: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !295, file: !214, line: 351, baseType: !299, size: 64, offset: 16)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !214, line: 337, size: 64, elements: !300)
!300 = !{!301, !302, !303, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !299, file: !214, line: 338, baseType: !194, size: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !299, file: !214, line: 339, baseType: !194, size: 16, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !299, file: !214, line: 340, baseType: !194, size: 16, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !299, file: !214, line: 341, baseType: !194, size: 16, offset: 48)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !292, file: !214, line: 463, baseType: !306, size: 96)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !214, line: 360, size: 96, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !306, file: !214, line: 361, baseType: !278, size: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !306, file: !214, line: 362, baseType: !278, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !306, file: !214, line: 363, baseType: !299, size: 64, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !292, file: !214, line: 464, baseType: !312, size: 256)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !214, line: 405, size: 256, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !312, file: !214, line: 406, baseType: !194, size: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !312, file: !214, line: 407, baseType: !194, size: 16, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !312, file: !214, line: 408, baseType: !278, size: 16, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !312, file: !214, line: 409, baseType: !278, size: 16, offset: 48)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !312, file: !214, line: 410, baseType: !194, size: 16, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !312, file: !214, line: 412, baseType: !299, size: 64, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !312, file: !214, line: 414, baseType: !187, size: 32, offset: 160)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !312, file: !214, line: 415, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !292, file: !214, line: 465, baseType: !324, size: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !236)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !214, line: 376, size: 96, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !325, file: !214, line: 377, baseType: !194, size: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !325, file: !214, line: 378, baseType: !194, size: 16, offset: 16)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !325, file: !214, line: 380, baseType: !278, size: 16, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !325, file: !214, line: 381, baseType: !278, size: 16, offset: 48)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !325, file: !214, line: 383, baseType: !194, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !325, file: !214, line: 384, baseType: !278, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !292, file: !214, line: 466, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !214, line: 426, size: 32, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !334, file: !214, line: 427, baseType: !194, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !334, file: !214, line: 428, baseType: !194, size: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !267, file: !206, line: 549, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!85, !204, !85}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !267, file: !206, line: 551, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!85, !204, !85, !85}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !267, file: !206, line: 552, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !204, !193}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !267, file: !206, line: 553, baseType: !347, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !267, file: !206, line: 555, baseType: !352, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !266}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !267, file: !206, line: 557, baseType: !123, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !267, file: !206, line: 559, baseType: !235, size: 128, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !267, file: !206, line: 561, baseType: !358, size: 256, offset: 576)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !359, line: 66, size: 256, elements: !360)
!359 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!360 = !{!361, !371, !399, !404}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !358, file: !359, line: 67, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !363, line: 13, baseType: !364)
!363 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 181, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 179, size: 64, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !365, file: !125, line: 180, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !186, line: 22, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !188, line: 30, baseType: !370)
!370 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !358, file: !359, line: 68, baseType: !372, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !373, line: 23, baseType: !374)
!373 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !373, line: 14, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !374, file: !373, line: 15, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !378, line: 44, baseType: !379)
!378 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !378, line: 14, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !378, line: 15, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !378, line: 15, size: 32, elements: !383)
!383 = !{!384, !389, !394}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !378, line: 16, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 174, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 172, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !386, file: !125, line: 173, baseType: !85, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !378, line: 24, baseType: !390, size: 16)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !378, line: 24, size: 16, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !390, file: !378, line: 25, baseType: !200, size: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !390, file: !378, line: 26, baseType: !200, size: 8, offset: 8)
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !378, line: 28, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !378, line: 28, size: 32, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !395, file: !378, line: 29, baseType: !193, size: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !395, file: !378, line: 30, baseType: !193, size: 16, offset: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !358, file: !359, line: 70, baseType: !400, size: 32, offset: 96)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !401, line: 15, size: 32, elements: !402)
!401 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !400, file: !401, line: 20, baseType: !385, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !358, file: !359, line: 72, baseType: !405, size: 128, offset: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 190, size: 128, elements: !406)
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !125, line: 191, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !405, file: !125, line: 191, baseType: !408, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !267, file: !206, line: 563, baseType: !85, size: 32, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !267, file: !206, line: 564, baseType: !273, size: 64, offset: 896)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !267, file: !206, line: 565, baseType: !413, offset: 960)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, elements: !522)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !416)
!416 = !{!417, !436, !445, !447, !448, !449, !453, !454, !535, !756, !765, !4084, !4085, !4086, !4087, !4088, !4089, !4091, !4092, !4093}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !35, line: 995, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !35, line: 995, size: 128, elements: !419)
!419 = !{!420, !426, !435}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !418, file: !35, line: 996, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !422, line: 60, size: 64, elements: !423)
!422 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 61, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !418, file: !35, line: 997, baseType: !427, size: 128, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !125, line: 232, size: 128, align: 64, elements: !428)
!428 = !{!429, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !125, line: 233, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !427, file: !125, line: 234, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !430}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !418, file: !35, line: 998, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !415, file: !35, line: 1005, baseType: !437, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !438, line: 29, baseType: !439)
!438 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !438, line: 17, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !438, line: 18, baseType: !442, size: 32)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !438, line: 18, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !442, file: !438, line: 19, baseType: !374, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !415, file: !35, line: 1006, baseType: !446, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !125, line: 156, baseType: !7)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !415, file: !35, line: 1007, baseType: !362, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !415, file: !35, line: 1008, baseType: !358, size: 256, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !415, file: !35, line: 1009, baseType: !450, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !125, line: 52, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !452, line: 88, baseType: !370)
!452 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!453 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !415, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !415, file: !35, line: 1011, baseType: !455, size: 256, offset: 640)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !456)
!456 = !{!457, !480, !524, !525, !533, !534}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !35, line: 949, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !459, line: 34, baseType: !460)
!459 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 25, size: 64, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !460, file: !459, line: 26, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !464, line: 27, baseType: !465)
!464 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !464, line: 13, size: 64, elements: !466)
!466 = !{!467, !479}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !464, line: 14, baseType: !468, size: 32)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !464, line: 14, size: 32, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !468, file: !464, line: 15, baseType: !385, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !464, line: 16, baseType: !472, size: 32)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !464, line: 16, size: 32, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !472, file: !464, line: 18, baseType: !200, size: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !472, file: !464, line: 19, baseType: !476, size: 24, offset: 8)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 24, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 3)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !465, file: !464, line: 26, baseType: !377, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !455, file: !35, line: 950, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !483)
!483 = !{!484, !490, !491, !492, !505, !506, !513, !514}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !6, line: 61, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !486, line: 113, baseType: !487)
!486 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !486, line: 111, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !487, file: !486, line: 112, baseType: !385, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !482, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !6, line: 63, baseType: !437, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !482, file: !6, line: 65, baseType: !493, size: 256, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 256, elements: !503)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !125, line: 194, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !494, file: !125, line: 195, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !125, line: 198, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !125, line: 199, baseType: !497, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !498, file: !125, line: 199, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!503 = !{!504}
!504 = !DISubrange(count: 4)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !482, file: !6, line: 66, baseType: !494, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !482, file: !6, line: 68, baseType: !507, size: 192, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !508, line: 41, baseType: !509)
!508 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !508, line: 37, size: 192, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !509, file: !508, line: 38, baseType: !437, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !509, file: !508, line: 39, baseType: !405, size: 128, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !482, file: !6, line: 69, baseType: !427, size: 128, align: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !482, file: !6, line: 70, baseType: !515, offset: 768)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, elements: !522)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !516, file: !6, line: 55, baseType: !85, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !516, file: !6, line: 56, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!522 = !{!523}
!523 = !DISubrange(count: -1)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !455, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !455, file: !35, line: 952, baseType: !526, size: 32, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !527, line: 23, baseType: !528)
!527 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 21, size: 32, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !528, file: !527, line: 22, baseType: !531, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !125, line: 37, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !452, line: 49, baseType: !7)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !455, file: !35, line: 952, baseType: !526, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !455, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !415, file: !35, line: 1012, baseType: !536, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !539, line: 110, size: 1472, elements: !540)
!539 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!540 = !{!541, !542, !543, !550, !551, !552, !553, !554, !555, !556, !557, !566, !567, !568, !569, !570, !571, !701, !702, !703, !704, !705, !736, !739, !743, !751}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !538, file: !539, line: 111, baseType: !362, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !538, file: !539, line: 112, baseType: !526, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !538, file: !539, line: 113, baseType: !544, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !527, line: 28, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 26, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !545, file: !527, line: 27, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !125, line: 38, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !452, line: 50, baseType: !7)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !538, file: !539, line: 114, baseType: !526, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !538, file: !539, line: 115, baseType: !544, size: 32, offset: 160)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !538, file: !539, line: 116, baseType: !526, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !538, file: !539, line: 117, baseType: !544, size: 32, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !538, file: !539, line: 118, baseType: !526, size: 32, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !538, file: !539, line: 119, baseType: !544, size: 32, offset: 288)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !538, file: !539, line: 120, baseType: !7, size: 32, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !538, file: !539, line: 121, baseType: !558, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !559, line: 24, baseType: !560)
!559 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 24, size: 64, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !560, file: !559, line: 24, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !186, line: 23, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !188, line: 31, baseType: !565)
!565 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !538, file: !539, line: 122, baseType: !558, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !538, file: !539, line: 123, baseType: !558, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !538, file: !539, line: 124, baseType: !558, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !538, file: !539, line: 125, baseType: !558, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !538, file: !539, line: 127, baseType: !202, size: 8, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !538, file: !539, line: 129, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !574, line: 195, size: 1728, elements: !575)
!574 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!575 = !{!576, !577, !582, !594, !603, !606, !607, !614, !615, !616, !617, !620, !621, !622, !623, !624, !665, !686}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !573, file: !574, line: 196, baseType: !485, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !573, file: !574, line: 197, baseType: !578, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !574, line: 28, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !125, line: 104, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !186, line: 20, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !188, line: 26, baseType: !85)
!582 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !574, line: 198, baseType: !583, size: 192, offset: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !574, line: 198, size: 192, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !583, file: !574, line: 199, baseType: !405, size: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !583, file: !574, line: 200, baseType: !587, size: 192, align: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !588, line: 5, size: 192, align: 64, elements: !589)
!588 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!589 = !{!590, !591, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !587, file: !588, line: 6, baseType: !127, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !587, file: !588, line: 7, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !587, file: !588, line: 8, baseType: !592, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !573, file: !574, line: 205, baseType: !595, size: 320, offset: 256)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !596, line: 48, size: 320, elements: !597)
!596 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!597 = !{!598, !599, !600, !601, !602}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !595, file: !596, line: 49, baseType: !362, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !595, file: !596, line: 55, baseType: !362, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !595, file: !596, line: 57, baseType: !400, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !595, file: !596, line: 59, baseType: !372, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !595, file: !596, line: 60, baseType: !405, size: 128, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !573, file: !574, line: 206, baseType: !604, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !574, line: 206, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !573, file: !574, line: 207, baseType: !123, size: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !574, line: 208, baseType: !608, size: 64, offset: 704)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !574, line: 208, size: 64, elements: !609)
!609 = !{!610, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !608, file: !574, line: 209, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !612, line: 8, baseType: !369)
!612 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !608, file: !574, line: 210, baseType: !611, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !573, file: !574, line: 212, baseType: !611, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !573, file: !574, line: 213, baseType: !526, size: 32, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !573, file: !574, line: 214, baseType: !544, size: 32, offset: 864)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !573, file: !574, line: 215, baseType: !618, size: 32, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !574, line: 31, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 110, baseType: !185)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !573, file: !574, line: 216, baseType: !195, size: 16, offset: 928)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !573, file: !574, line: 217, baseType: !195, size: 16, offset: 944)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !573, file: !574, line: 221, baseType: !279, size: 16, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !574, line: 228, baseType: !127, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !574, line: 245, baseType: !625, size: 320, offset: 1088)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !574, line: 245, size: 320, elements: !626)
!626 = !{!627, !656}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !625, file: !574, line: 246, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !574, line: 114, size: 320, elements: !629)
!629 = !{!630, !631, !643, !646, !655}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !628, file: !574, line: 116, baseType: !127, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !574, line: 117, baseType: !632, size: 64, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !574, line: 117, size: 64, elements: !633)
!633 = !{!634, !642}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !574, line: 118, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !574, line: 118, size: 64, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !635, file: !574, line: 120, baseType: !193, size: 16)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !635, file: !574, line: 121, baseType: !639, size: 48, offset: 16)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 6)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !632, file: !574, line: 127, baseType: !127, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !574, line: 129, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !574, line: 102, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !628, file: !574, line: 130, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !574, line: 108, size: 192, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !648, file: !574, line: 109, baseType: !427, size: 128, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !648, file: !574, line: 110, baseType: !485, size: 32, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !648, file: !574, line: 111, baseType: !653, size: 8, offset: 160)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 35, baseType: !654)
!654 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !628, file: !574, line: 131, baseType: !209, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !574, line: 247, baseType: !657, size: 320)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !574, line: 247, size: 320, elements: !658)
!658 = !{!659, !660, !661, !662, !663}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !657, file: !574, line: 248, baseType: !127, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !657, file: !574, line: 249, baseType: !127, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !574, line: 250, baseType: !644, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !657, file: !574, line: 251, baseType: !647, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !657, file: !574, line: 252, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !574, line: 260, baseType: !666, size: 256, offset: 1408)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !574, line: 260, size: 256, elements: !667)
!667 = !{!668, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !666, file: !574, line: 261, baseType: !669, size: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !574, line: 134, size: 256, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !669, file: !574, line: 135, baseType: !123, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !669, file: !574, line: 136, baseType: !673, size: 256)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !503)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !574, line: 262, baseType: !675, size: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !666, file: !574, line: 262, size: 256, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !675, file: !574, line: 264, baseType: !405, size: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !675, file: !574, line: 265, baseType: !679, size: 128, offset: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !680, line: 22, size: 128, elements: !681)
!680 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!681 = !{!682, !685}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !679, file: !680, line: 23, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !680, line: 23, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !679, file: !680, line: 24, baseType: !127, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !573, file: !574, line: 280, baseType: !687, size: 64, offset: 1664)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !574, line: 176, size: 192, elements: !689)
!689 = !{!690, !699, !700}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !688, file: !574, line: 177, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !574, line: 171, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!85, !572, !695, !697, !572}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !688, file: !574, line: 178, baseType: !572, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !688, file: !574, line: 179, baseType: !644, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !538, file: !539, line: 130, baseType: !572, size: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !538, file: !539, line: 131, baseType: !572, size: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !538, file: !539, line: 132, baseType: !572, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !538, file: !539, line: 135, baseType: !123, size: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !538, file: !539, line: 137, baseType: !706, size: 64, offset: 1088)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !708, line: 14, size: 1088, elements: !709)
!708 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!709 = !{!710, !711, !720, !721, !722, !723, !724, !725}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !707, file: !708, line: 15, baseType: !485, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !707, file: !708, line: 17, baseType: !712, size: 320, offset: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !713, line: 22, size: 320, elements: !714)
!713 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!714 = !{!715, !716, !717, !718}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !712, file: !713, line: 23, baseType: !372, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !712, file: !713, line: 24, baseType: !368, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !712, file: !713, line: 26, baseType: !405, size: 128, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !712, file: !713, line: 28, baseType: !719, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !707, file: !708, line: 19, baseType: !127, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !707, file: !708, line: 20, baseType: !362, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !707, file: !708, line: 23, baseType: !498, size: 128, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !707, file: !708, line: 24, baseType: !526, size: 32, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !707, file: !708, line: 29, baseType: !362, size: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !707, file: !708, line: 36, baseType: !726, size: 320, offset: 768)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !727, line: 15, size: 320, elements: !728)
!727 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!728 = !{!729, !730, !731, !732, !733, !734, !735}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !726, file: !727, line: 16, baseType: !372, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !726, file: !727, line: 18, baseType: !85, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !726, file: !727, line: 19, baseType: !85, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !726, file: !727, line: 20, baseType: !85, size: 32, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !726, file: !727, line: 21, baseType: !85, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !726, file: !727, line: 22, baseType: !127, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !727, line: 23, baseType: !127, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !538, file: !539, line: 138, baseType: !737, size: 64, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !527, line: 18, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !538, file: !539, line: 139, baseType: !740, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !742, line: 16, flags: DIFlagFwdDecl)
!742 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!743 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !538, file: !539, line: 140, baseType: !744, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !539, line: 25, size: 64, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !745, file: !539, line: 26, baseType: !385, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !745, file: !539, line: 27, baseType: !85, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !745, file: !539, line: 28, baseType: !750, offset: 64)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, elements: !522)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !539, line: 142, baseType: !752, size: 128, offset: 1344)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 142, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !752, file: !539, line: 143, baseType: !85, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !752, file: !539, line: 144, baseType: !427, size: 128, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !415, file: !35, line: 1013, baseType: !757, size: 256, offset: 960)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !757, file: !35, line: 971, baseType: !127, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !757, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !757, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !757, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !757, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !757, file: !35, line: 976, baseType: !450, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !415, file: !35, line: 1014, baseType: !766, size: 128, offset: 1216)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !767, line: 8, size: 128, elements: !768)
!767 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!768 = !{!769, !4083}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !766, file: !767, line: 9, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !772, line: 70, size: 256, elements: !773)
!772 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!773 = !{!774, !4080, !4081, !4082}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !771, file: !772, line: 71, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !777, line: 82, size: 1536, elements: !778)
!777 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!778 = !{!779, !780, !790, !798, !799, !814, !4047, !4049, !4062, !4063, !4064, !4065, !4066, !4072, !4073, !4074}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !776, file: !777, line: 84, baseType: !7, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !776, file: !777, line: 85, baseType: !781, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !782, line: 275, baseType: !783)
!782 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !782, line: 275, size: 32, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !783, file: !782, line: 275, baseType: !786, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !782, line: 69, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !782, line: 64, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !787, file: !782, line: 65, baseType: !7, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !776, file: !777, line: 86, baseType: !791, size: 128, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !792, line: 38, size: 128, elements: !793)
!792 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!793 = !{!794, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !792, line: 39, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !791, file: !792, line: 39, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !776, file: !777, line: 87, baseType: !775, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !776, file: !777, line: 88, baseType: !800, size: 128, offset: 256)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !777, line: 49, size: 128, elements: !801)
!801 = !{!802, !811}
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !777, line: 50, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !777, line: 50, size: 64, elements: !804)
!804 = !{!805, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !777, line: 51, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !777, line: 51, size: 64, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !806, file: !777, line: 52, baseType: !185, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !806, file: !777, line: 52, baseType: !185, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !803, file: !777, line: 54, baseType: !563, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !800, file: !777, line: 56, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !776, file: !777, line: 89, baseType: !815, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !817)
!817 = !{!818, !820, !821, !822, !823, !824, !825, !828, !829, !1025, !3863, !3864, !3865, !3866, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !4029, !4032, !4033, !4034, !4043, !4044, !4045, !4046}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !816, file: !35, line: 642, baseType: !819, size: 16)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !125, line: 24, baseType: !195)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !816, file: !35, line: 643, baseType: !195, size: 16, offset: 16)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !816, file: !35, line: 644, baseType: !526, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !816, file: !35, line: 645, baseType: !405, size: 128, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !816, file: !35, line: 646, baseType: !544, size: 32, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !816, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !816, file: !35, line: 650, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !816, file: !35, line: 651, baseType: !826, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !816, file: !35, line: 654, baseType: !830, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !833)
!833 = !{!834, !838, !851, !857, !861, !865, !869, !873, !877, !881, !885, !886, !892, !896, !933, !964, !974, !980, !984, !988, !992, !996, !1000, !1006, !1010}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !832, file: !35, line: 1967, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!775, !815, !775, !7}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !832, file: !35, line: 1968, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!209, !775, !815, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !844, line: 10, size: 128, elements: !845)
!844 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!845 = !{!846, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !843, file: !844, line: 11, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !123}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !843, file: !844, line: 12, baseType: !123, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !832, file: !35, line: 1969, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!85, !855, !815, !85}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !559, line: 42, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !832, file: !35, line: 1970, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!826, !815, !85, !653}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !832, file: !35, line: 1972, baseType: !862, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!85, !775, !664, !85}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !832, file: !35, line: 1974, baseType: !866, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!85, !855, !815, !775, !819, !653}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !832, file: !35, line: 1976, baseType: !870, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!85, !775, !815, !775}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !832, file: !35, line: 1977, baseType: !874, size: 64, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!85, !815, !775}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !832, file: !35, line: 1978, baseType: !878, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!85, !855, !815, !775, !209}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !832, file: !35, line: 1980, baseType: !882, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!85, !855, !815, !775, !819}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !832, file: !35, line: 1982, baseType: !874, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !832, file: !35, line: 1983, baseType: !887, size: 64, offset: 704)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!85, !855, !815, !775, !819, !890}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !125, line: 21, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !125, line: 18, baseType: !185)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !832, file: !35, line: 1985, baseType: !893, size: 64, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!85, !855, !815, !775, !815, !775, !7}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !832, file: !35, line: 1987, baseType: !897, size: 64, offset: 832)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!85, !855, !775, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !902)
!902 = !{!903, !904, !905, !915, !924, !925, !930, !931, !932}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !901, file: !35, line: 227, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !901, file: !35, line: 228, baseType: !819, size: 16, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !35, line: 241, baseType: !906, size: 32, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !35, line: 241, size: 32, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !906, file: !35, line: 242, baseType: !526, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !906, file: !35, line: 243, baseType: !910, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !911, line: 16, baseType: !912)
!911 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !911, line: 14, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !912, file: !911, line: 15, baseType: !531, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !35, line: 245, baseType: !916, size: 32, offset: 96)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !35, line: 245, size: 32, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !916, file: !35, line: 246, baseType: !544, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !916, file: !35, line: 247, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !911, line: 20, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !911, line: 18, size: 32, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !921, file: !911, line: 19, baseType: !548, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !901, file: !35, line: 249, baseType: !450, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !901, file: !35, line: 250, baseType: !926, size: 128, offset: 192)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !612, line: 13, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !926, file: !612, line: 14, baseType: !611, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !926, file: !612, line: 15, baseType: !133, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !901, file: !35, line: 251, baseType: !926, size: 128, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !901, file: !35, line: 252, baseType: !926, size: 128, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !901, file: !35, line: 259, baseType: !414, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !832, file: !35, line: 1988, baseType: !934, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!85, !855, !937, !939, !185, !7}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !941, line: 22, size: 1280, elements: !942)
!941 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !940, file: !941, line: 23, baseType: !185, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !940, file: !941, line: 24, baseType: !819, size: 16, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !940, file: !941, line: 25, baseType: !7, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !940, file: !941, line: 26, baseType: !619, size: 32, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !940, file: !941, line: 27, baseType: !563, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !940, file: !941, line: 28, baseType: !563, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !940, file: !941, line: 41, baseType: !563, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !940, file: !941, line: 42, baseType: !890, size: 32, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !940, file: !941, line: 43, baseType: !890, size: 32, offset: 352)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !940, file: !941, line: 44, baseType: !526, size: 32, offset: 384)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !940, file: !941, line: 45, baseType: !544, size: 32, offset: 416)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !940, file: !941, line: 46, baseType: !450, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !940, file: !941, line: 47, baseType: !926, size: 128, offset: 512)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !940, file: !941, line: 48, baseType: !926, size: 128, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !940, file: !941, line: 49, baseType: !926, size: 128, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !940, file: !941, line: 50, baseType: !926, size: 128, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !940, file: !941, line: 51, baseType: !563, size: 64, offset: 1024)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !940, file: !941, line: 52, baseType: !563, size: 64, offset: 1088)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !940, file: !941, line: 53, baseType: !185, size: 32, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !940, file: !941, line: 54, baseType: !185, size: 32, offset: 1184)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !940, file: !941, line: 55, baseType: !563, size: 64, offset: 1216)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !832, file: !35, line: 1990, baseType: !965, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!968, !775, !664, !971}
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 66, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !452, line: 73, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !452, line: 15, baseType: !133)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 61, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !452, line: 72, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !452, line: 16, baseType: !127)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !832, file: !35, line: 1991, baseType: !975, size: 64, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!85, !815, !978, !563, !563}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !832, file: !35, line: 1993, baseType: !981, size: 64, offset: 1088)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!85, !815, !85}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !832, file: !35, line: 1994, baseType: !985, size: 64, offset: 1152)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!85, !815, !775, !414, !7, !819}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !832, file: !35, line: 1997, baseType: !989, size: 64, offset: 1216)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!85, !855, !815, !414, !819}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !832, file: !35, line: 1999, baseType: !993, size: 64, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!826, !855, !775, !85}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !832, file: !35, line: 2001, baseType: !997, size: 64, offset: 1344)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!85, !855, !775, !826, !85}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !832, file: !35, line: 2003, baseType: !1001, size: 64, offset: 1408)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!85, !855, !775, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !832, file: !35, line: 2005, baseType: !1007, size: 64, offset: 1472)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!85, !775, !1004}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !832, file: !35, line: 2006, baseType: !1011, size: 64, offset: 1536)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!1014, !815}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !1016)
!1016 = !{!1017, !1024}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1015, file: !35, line: 3193, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1019, line: 296, size: 128, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1020 = !{!1021, !1022, !1023}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1018, file: !1019, line: 297, baseType: !437, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1018, file: !1019, line: 299, baseType: !124, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1018, file: !1019, line: 300, baseType: !123, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1015, file: !35, line: 3194, baseType: !185, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !816, file: !35, line: 655, baseType: !1026, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !2211, !2343, !2383, !2466, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2483, !2487, !2488, !2491, !2494, !2497, !2500, !2501, !2502, !2543, !3738, !3739, !3740, !3741, !3742, !3743, !3746, !3748, !3755, !3756, !3757, !3758, !3817, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1027, file: !35, line: 1191, baseType: !405, size: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1027, file: !35, line: 1192, baseType: !890, size: 32, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1027, file: !35, line: 1193, baseType: !202, size: 8, offset: 160)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1027, file: !35, line: 1194, baseType: !127, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1027, file: !35, line: 1195, baseType: !450, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1027, file: !35, line: 1196, baseType: !1035, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1047, !1051, !1055, !1059, !2199, !2200, !2201, !2203, !2204, !2205, !2207, !2208, !2209, !2210}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1036, file: !35, line: 2367, baseType: !209, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1036, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1036, file: !35, line: 2376, baseType: !1041, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!85, !1044}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1046, line: 32, flags: DIFlagFwdDecl)
!1046 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1036, file: !35, line: 2377, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1036, file: !35, line: 2378, baseType: !1052, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!775, !1035, !85, !209, !123}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1036, file: !35, line: 2380, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !1026}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1036, file: !35, line: 2381, baseType: !1060, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1069, !1859, !1885, !1886, !1887, !1888, !1892, !1895, !1896, !1897, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1964, !1968, !1986, !2004, !2005, !2006, !2007, !2016, !2039, !2040, !2043, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2057, !2058, !2158, !2166, !2167, !2168, !2170, !2174, !2175, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2192, !2193, !2194, !2198}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1061, file: !15, line: 403, baseType: !14, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1061, file: !15, line: 406, baseType: !405, size: 128, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1061, file: !15, line: 409, baseType: !1066, size: 448, offset: 192)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 448, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 56)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1061, file: !15, line: 417, baseType: !1070, size: 768, offset: 640)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1071)
!1071 = !{!1072, !1842, !1843, !1844, !1847}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1070, file: !15, line: 46, baseType: !1073, size: 512)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1074, line: 64, size: 512, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1075 = !{!1076, !1077, !1078, !1080, !1124, !1722, !1832, !1837, !1838, !1839, !1840, !1841}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1073, file: !1074, line: 65, baseType: !209, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1073, file: !1074, line: 66, baseType: !405, size: 128, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1073, file: !1074, line: 67, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1073, file: !1074, line: 68, baseType: !1081, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1074, line: 168, size: 768, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1082, file: !1074, line: 169, baseType: !405, size: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1082, file: !1074, line: 170, baseType: !437, size: 32, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1082, file: !1074, line: 171, baseType: !1073, size: 512, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1082, file: !1074, line: 172, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1074, line: 133, size: 192, elements: !1091)
!1091 = !{!1092, !1099, !1104}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1090, file: !1074, line: 134, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!85, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1073)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1090, file: !1074, line: 135, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!209, !1097}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1090, file: !1074, line: 136, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!85, !1097, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1074, line: 125, size: 20736, elements: !1111)
!1111 = !{!1112, !1114, !1118, !1119, !1123}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1110, file: !1074, line: 126, baseType: !1113, size: 192)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 192, elements: !477)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1110, file: !1074, line: 127, baseType: !1115, size: 4096, offset: 192)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 4096, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1110, file: !1074, line: 128, baseType: !85, size: 32, offset: 4288)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1110, file: !1074, line: 129, baseType: !1120, size: 16384, offset: 4320)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 16384, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 2048)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1110, file: !1074, line: 130, baseType: !85, size: 32, offset: 20704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1073, file: !1074, line: 69, baseType: !1125, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1074, line: 116, size: 384, elements: !1128)
!1128 = !{!1129, !1133, !1152, !1684, !1712, !1716}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1127, file: !1074, line: 117, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1079}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1127, file: !1074, line: 118, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1137, line: 254, size: 128, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1138 = !{!1139, !1148}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1136, file: !1137, line: 255, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!968, !1079, !1143, !664}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1137, line: 30, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1144, file: !1137, line: 31, baseType: !209, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1144, file: !1137, line: 32, baseType: !819, size: 16, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1136, file: !1137, line: 256, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!968, !1079, !1143, !209, !971}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1127, file: !1074, line: 119, baseType: !1153, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1137, line: 84, size: 320, elements: !1157)
!1157 = !{!1158, !1159, !1163, !1680, !1682}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1156, file: !1137, line: 85, baseType: !209, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1156, file: !1137, line: 86, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!819, !1079, !1143, !85}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1156, file: !1137, line: 88, baseType: !1164, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!819, !1079, !1167, !85}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1137, line: 175, size: 512, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1450, !1454, !1455}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1168, file: !1137, line: 176, baseType: !1144, size: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1168, file: !1137, line: 177, baseType: !971, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1168, file: !1137, line: 178, baseType: !123, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1168, file: !1137, line: 179, baseType: !1174, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1193, !1194, !1195, !1442, !1443, !1444, !1447, !1448, !1449}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1178, file: !35, line: 473, baseType: !815, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1178, file: !35, line: 474, baseType: !1018, size: 128, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1178, file: !35, line: 475, baseType: !595, size: 320, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1178, file: !35, line: 476, baseType: !124, size: 32, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1178, file: !35, line: 477, baseType: !385, size: 32, offset: 544)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1178, file: !35, line: 482, baseType: !1186, size: 128, offset: 576)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !588, line: 26, size: 128, elements: !1187)
!1187 = !{!1188, !1192}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1186, file: !588, line: 27, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !588, line: 12, size: 64, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1189, file: !588, line: 13, baseType: !592, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1186, file: !588, line: 28, baseType: !592, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1178, file: !35, line: 483, baseType: !127, size: 64, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1178, file: !35, line: 484, baseType: !127, size: 64, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1178, file: !35, line: 485, baseType: !1196, size: 64, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1199)
!1199 = !{!1200, !1267, !1337, !1341, !1345, !1351, !1357, !1361, !1366, !1370, !1374, !1378, !1406, !1410, !1414, !1418, !1423, !1427, !1434, !1438}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1198, file: !35, line: 405, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!85, !1204, !1265}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1206, line: 74, size: 512, align: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1207 = !{!1208, !1209, !1259, !1264}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1206, line: 75, baseType: !127, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1206, line: 83, baseType: !1210, size: 320, offset: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1206, line: 83, size: 320, elements: !1211)
!1211 = !{!1212, !1233, !1247, !1251, !1258}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1206, line: 84, baseType: !1213, size: 320)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !1206, line: 84, size: 320, elements: !1214)
!1214 = !{!1215, !1226, !1227, !1232}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1206, line: 90, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1206, line: 90, size: 128, elements: !1217)
!1217 = !{!1218, !1219, !1224, !1225}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1216, file: !1206, line: 91, baseType: !405, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1206, line: 94, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1206, line: 94, size: 128, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1220, file: !1206, line: 96, baseType: !123, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1220, file: !1206, line: 98, baseType: !7, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1216, file: !1206, line: 102, baseType: !405, size: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1216, file: !1206, line: 103, baseType: !405, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1213, file: !1206, line: 106, baseType: !1177, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1206, line: 107, baseType: !1228, size: 64, offset: 192)
!1228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1206, line: 107, size: 64, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1228, file: !1206, line: 108, baseType: !127, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1228, file: !1206, line: 109, baseType: !127, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1213, file: !1206, line: 117, baseType: !127, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1206, line: 119, baseType: !1234, size: 320)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !1206, line: 119, size: 320, elements: !1235)
!1235 = !{!1236, !1237, !1240, !1241, !1242}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1234, file: !1206, line: 124, baseType: !127, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1234, file: !1206, line: 125, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1206, line: 125, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1234, file: !1206, line: 126, baseType: !127, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1234, file: !1206, line: 127, baseType: !127, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1206, line: 128, baseType: !1243, size: 64, offset: 256)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1206, line: 128, size: 64, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1243, file: !1206, line: 133, baseType: !127, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1243, file: !1206, line: 138, baseType: !362, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1206, line: 141, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !1206, line: 141, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1248, file: !1206, line: 142, baseType: !127, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1206, line: 144, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !1206, line: 144, size: 128, elements: !1253)
!1253 = !{!1254, !1257}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1252, file: !1206, line: 146, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1206, line: 146, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1252, file: !1206, line: 147, baseType: !123, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1210, file: !1206, line: 161, baseType: !427, size: 128, align: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1206, line: 164, baseType: !1260, size: 32, offset: 384)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1206, line: 164, size: 32, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1260, file: !1206, line: 169, baseType: !385, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1260, file: !1206, line: 177, baseType: !7, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1205, file: !1206, line: 181, baseType: !385, size: 32, offset: 416)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1198, file: !35, line: 406, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!85, !414, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1206, line: 293, size: 1536, elements: !1273)
!1273 = !{!1274, !1304, !1318}
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !1206, line: 295, baseType: !1275, size: 512)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !1206, line: 295, size: 512, elements: !1276)
!1276 = !{!1277, !1303}
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !1206, line: 296, baseType: !1278, size: 448)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1275, file: !1206, line: 296, size: 448, elements: !1279)
!1279 = !{!1280, !1281, !1290, !1291, !1292, !1301, !1302}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1206, line: 298, baseType: !127, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1206, line: 299, baseType: !1282, size: 128, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1206, line: 299, size: 128, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1282, file: !1206, line: 300, baseType: !405, size: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1206, line: 302, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1206, line: 302, size: 128, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1286, file: !1206, line: 303, baseType: !123, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1286, file: !1206, line: 305, baseType: !7, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1278, file: !1206, line: 310, baseType: !1177, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1278, file: !1206, line: 311, baseType: !127, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1206, line: 312, baseType: !1293, size: 64, offset: 320)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1206, line: 312, size: 64, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1293, file: !1206, line: 313, baseType: !123, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1293, file: !1206, line: 314, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1206, line: 257, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 255, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1298, file: !1206, line: 256, baseType: !127, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1278, file: !1206, line: 316, baseType: !385, size: 32, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1278, file: !1206, line: 317, baseType: !385, size: 32, offset: 416)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1275, file: !1206, line: 323, baseType: !1205, size: 512, align: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !1206, line: 325, baseType: !1305, size: 512, offset: 512)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !1206, line: 325, size: 512, elements: !1306)
!1306 = !{!1307, !1317}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1206, line: 326, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !1206, line: 326, size: 320, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1308, file: !1206, line: 327, baseType: !127, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1308, file: !1206, line: 328, baseType: !127, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1308, file: !1206, line: 329, baseType: !127, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1308, file: !1206, line: 331, baseType: !385, size: 32, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1308, file: !1206, line: 332, baseType: !385, size: 32, offset: 224)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1308, file: !1206, line: 333, baseType: !385, size: 32, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1308, file: !1206, line: 335, baseType: !7, size: 32, offset: 288)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1305, file: !1206, line: 339, baseType: !1205, size: 512, align: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !1206, line: 341, baseType: !1319, size: 512, offset: 1024)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !1206, line: 341, size: 512, elements: !1320)
!1320 = !{!1321, !1330, !1336}
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1206, line: 342, baseType: !1322, size: 384)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !1206, line: 342, size: 384, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1322, file: !1206, line: 343, baseType: !127, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1322, file: !1206, line: 344, baseType: !127, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1322, file: !1206, line: 346, baseType: !123, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1322, file: !1206, line: 347, baseType: !123, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1322, file: !1206, line: 348, baseType: !123, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1322, file: !1206, line: 349, baseType: !123, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1206, line: 352, baseType: !1331, size: 256)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !1206, line: 352, size: 256, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1331, file: !1206, line: 353, baseType: !127, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1331, file: !1206, line: 354, baseType: !127, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1331, file: !1206, line: 356, baseType: !405, size: 128, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1319, file: !1206, line: 359, baseType: !1205, size: 512, align: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1198, file: !35, line: 409, baseType: !1338, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!85, !1177, !1265}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1198, file: !35, line: 412, baseType: !1342, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!653, !1177, !1271}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1198, file: !35, line: 414, baseType: !1346, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1198, file: !35, line: 416, baseType: !1352, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!85, !414, !1177, !450, !7, !1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1198, file: !35, line: 419, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!85, !414, !1177, !450, !7, !7, !1204, !123}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1198, file: !35, line: 424, baseType: !1362, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1365, !1177, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !125, line: 131, baseType: !563)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1198, file: !35, line: 425, baseType: !1367, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1271, !971, !971}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1198, file: !35, line: 426, baseType: !1371, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!653, !1271, !124}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1198, file: !35, line: 427, baseType: !1375, size: 64, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1271}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1198, file: !35, line: 428, baseType: !1379, size: 64, offset: 704)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!968, !1382, !1404}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1391, !1392, !1393, !1394}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1383, file: !35, line: 374, baseType: !414, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1383, file: !35, line: 375, baseType: !450, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1383, file: !35, line: 376, baseType: !1388, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1382, !133}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1383, file: !35, line: 377, baseType: !123, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1383, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1383, file: !35, line: 379, baseType: !193, size: 16, offset: 288)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !35, line: 380, baseType: !1395, size: 64, offset: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !35, line: 380, size: 64, elements: !1396)
!1396 = !{!1397, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1395, file: !35, line: 386, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1395, file: !35, line: 395, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!968, !123}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1198, file: !35, line: 433, baseType: !1407, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!85, !1177, !1271, !1271, !21}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1198, file: !35, line: 435, baseType: !1411, size: 64, offset: 832)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!85, !1271}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1198, file: !35, line: 436, baseType: !1415, size: 64, offset: 896)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!653, !1271, !971, !971}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1198, file: !35, line: 438, baseType: !1419, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1271, !1422, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1198, file: !35, line: 439, baseType: !1424, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!85, !1177, !1204}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1198, file: !35, line: 442, baseType: !1428, size: 64, offset: 1088)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!85, !1431, !414, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1198, file: !35, line: 444, baseType: !1435, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !414}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1198, file: !35, line: 445, baseType: !1439, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!85, !1382, !1404}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !35, line: 486, baseType: !127, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1178, file: !35, line: 487, baseType: !595, size: 320, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1178, file: !35, line: 488, baseType: !1445, size: 32, offset: 1280)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1446, line: 8, baseType: !185)
!1446 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1178, file: !35, line: 489, baseType: !437, size: 32, offset: 1312)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1178, file: !35, line: 490, baseType: !405, size: 128, offset: 1344)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1178, file: !35, line: 491, baseType: !123, size: 64, offset: 1472)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1168, file: !1137, line: 180, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!968, !414, !1079, !1167, !664, !450, !971}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1168, file: !1137, line: 182, baseType: !1451, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1168, file: !1137, line: 184, baseType: !1456, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!85, !414, !1079, !1167, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1206, line: 625, size: 1344, elements: !1461)
!1461 = !{!1462, !1471, !1637, !1643, !1650, !1651, !1656, !1657, !1662, !1663, !1666, !1670, !1671, !1672, !1673, !1674, !1678}
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1206, line: 628, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1206, line: 628, size: 128, elements: !1464)
!1464 = !{!1465, !1470}
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1206, line: 629, baseType: !1466, size: 128)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !1206, line: 629, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1466, file: !1206, line: 631, baseType: !127, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1466, file: !1206, line: 632, baseType: !127, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1463, file: !1206, line: 635, baseType: !427, size: 128, align: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1460, file: !1206, line: 639, baseType: !1472, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1206, line: 733, size: 10240, elements: !1474)
!1474 = !{!1475, !1635}
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !1206, line: 734, baseType: !1476, size: 10240)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1473, file: !1206, line: 734, size: 10240, elements: !1477)
!1477 = !{!1478, !1482, !1496, !1500, !1501, !1502, !1503, !1504, !1505, !1514, !1515, !1516, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1553, !1555, !1558, !1604, !1605, !1606, !1609, !1610, !1611, !1614, !1615, !1616, !1622, !1623}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1206, line: 739, baseType: !1479, size: 512, align: 512)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !1206, line: 739, size: 512, align: 512, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1479, file: !1206, line: 747, baseType: !385, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1476, file: !1206, line: 750, baseType: !1483, size: 128, offset: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1484, line: 218, size: 128, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1485 = !{!1486, !1494, !1495}
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 219, baseType: !1487, size: 32)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 219, size: 32, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1487, file: !1484, line: 220, baseType: !437, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1487, file: !1484, line: 221, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1484, line: 197, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 197, elements: !1493)
!1493 = !{}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1483, file: !1484, line: 223, baseType: !7, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1483, file: !1484, line: 224, baseType: !123, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1476, file: !1206, line: 752, baseType: !1497, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!127, !414, !127, !127, !127, !127}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1476, file: !1206, line: 756, baseType: !127, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1476, file: !1206, line: 757, baseType: !127, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1476, file: !1206, line: 760, baseType: !127, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1476, file: !1206, line: 761, baseType: !127, size: 64, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1476, file: !1206, line: 763, baseType: !127, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1476, file: !1206, line: 764, baseType: !1506, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1508, line: 299, baseType: !1509)
!1508 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1508, line: 299, size: 64, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1509, file: !1508, line: 299, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1513, line: 18, baseType: !127)
!1513 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1476, file: !1206, line: 773, baseType: !385, size: 32, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1476, file: !1206, line: 785, baseType: !385, size: 32, offset: 1120)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1476, file: !1206, line: 795, baseType: !1517, size: 64, offset: 1152)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1206, line: 726, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1518, file: !1206, line: 727, baseType: !563, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1518, file: !1206, line: 728, baseType: !85, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1476, file: !1206, line: 801, baseType: !127, size: 64, offset: 1216)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1476, file: !1206, line: 804, baseType: !362, size: 64, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1476, file: !1206, line: 806, baseType: !85, size: 32, offset: 1344)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1476, file: !1206, line: 808, baseType: !437, size: 32, offset: 1376)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1476, file: !1206, line: 823, baseType: !595, size: 320, offset: 1408)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1476, file: !1206, line: 825, baseType: !405, size: 128, offset: 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1476, file: !1206, line: 845, baseType: !85, size: 32, offset: 1856)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1476, file: !1206, line: 849, baseType: !127, size: 64, offset: 1920)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1476, file: !1206, line: 850, baseType: !127, size: 64, offset: 1984)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1476, file: !1206, line: 852, baseType: !127, size: 64, offset: 2048)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1476, file: !1206, line: 853, baseType: !127, size: 64, offset: 2112)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1476, file: !1206, line: 854, baseType: !364, size: 64, offset: 2176)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1476, file: !1206, line: 855, baseType: !127, size: 64, offset: 2240)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1476, file: !1206, line: 856, baseType: !127, size: 64, offset: 2304)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1476, file: !1206, line: 857, baseType: !127, size: 64, offset: 2368)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1476, file: !1206, line: 858, baseType: !127, size: 64, offset: 2432)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1476, file: !1206, line: 865, baseType: !786, size: 32, offset: 2496)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1476, file: !1206, line: 867, baseType: !437, size: 32, offset: 2528)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1476, file: !1206, line: 869, baseType: !127, size: 64, offset: 2560)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1476, file: !1206, line: 869, baseType: !127, size: 64, offset: 2624)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1476, file: !1206, line: 869, baseType: !127, size: 64, offset: 2688)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1476, file: !1206, line: 869, baseType: !127, size: 64, offset: 2752)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1476, file: !1206, line: 870, baseType: !127, size: 64, offset: 2816)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1476, file: !1206, line: 870, baseType: !127, size: 64, offset: 2880)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1476, file: !1206, line: 870, baseType: !127, size: 64, offset: 2944)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1476, file: !1206, line: 871, baseType: !127, size: 64, offset: 3008)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1476, file: !1206, line: 871, baseType: !127, size: 64, offset: 3072)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1476, file: !1206, line: 871, baseType: !127, size: 64, offset: 3136)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1476, file: !1206, line: 871, baseType: !127, size: 64, offset: 3200)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1476, file: !1206, line: 873, baseType: !1552, size: 3328, offset: 3264)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 3328, elements: !165)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1476, file: !1206, line: 875, baseType: !1554, size: 1280, offset: 6592)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 1280, elements: !503)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1476, file: !1206, line: 877, baseType: !1556, size: 64, offset: 7872)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1206, line: 877, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1476, file: !1206, line: 880, baseType: !1559, size: 1088, offset: 7936)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1560, line: 72, baseType: !1561)
!1560 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1560, line: 23, size: 1088, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1570, !1571, !1572, !1573, !1600, !1601, !1602}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1561, file: !1560, line: 28, baseType: !563, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1561, file: !1560, line: 38, baseType: !364, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1561, file: !1560, line: 40, baseType: !127, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1561, file: !1560, line: 43, baseType: !595, size: 320, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1561, file: !1560, line: 44, baseType: !1568, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1560, line: 44, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !1560, line: 48, baseType: !127, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1561, file: !1560, line: 59, baseType: !358, size: 256, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1561, file: !1560, line: 60, baseType: !123, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1561, file: !1560, line: 61, baseType: !1574, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1577, line: 13, size: 1216, elements: !1578)
!1577 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1576, file: !1577, line: 14, baseType: !123, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1576, file: !1577, line: 15, baseType: !127, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1576, file: !1577, line: 17, baseType: !127, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1576, file: !1577, line: 17, baseType: !127, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1576, file: !1577, line: 18, baseType: !127, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1576, file: !1577, line: 18, baseType: !127, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1576, file: !1577, line: 19, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1576, file: !1577, line: 21, baseType: !133, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1576, file: !1577, line: 23, baseType: !133, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1576, file: !1577, line: 24, baseType: !133, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1576, file: !1577, line: 25, baseType: !133, size: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1576, file: !1577, line: 26, baseType: !133, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1576, file: !1577, line: 27, baseType: !133, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1576, file: !1577, line: 28, baseType: !133, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1576, file: !1577, line: 29, baseType: !133, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1576, file: !1577, line: 30, baseType: !133, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1576, file: !1577, line: 31, baseType: !133, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1576, file: !1577, line: 32, baseType: !133, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1576, file: !1577, line: 33, baseType: !133, size: 64, offset: 1152)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1561, file: !1560, line: 63, baseType: !385, size: 32, offset: 1024)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1561, file: !1560, line: 69, baseType: !193, size: 16, offset: 1056)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1561, file: !1560, line: 70, baseType: !1603, size: 16, offset: 1072)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !186, line: 18, baseType: !278)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1476, file: !1206, line: 882, baseType: !127, size: 64, offset: 9024)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1476, file: !1206, line: 885, baseType: !437, size: 32, offset: 9088)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1476, file: !1206, line: 886, baseType: !1607, size: 64, offset: 9152)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1206, line: 732, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1476, file: !1206, line: 901, baseType: !737, size: 64, offset: 9216)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1476, file: !1206, line: 904, baseType: !414, size: 64, offset: 9280)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1476, file: !1206, line: 906, baseType: !1612, size: 64, offset: 9344)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1206, line: 906, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1476, file: !1206, line: 930, baseType: !385, size: 32, offset: 9408)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1476, file: !1206, line: 933, baseType: !385, size: 32, offset: 9440)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1476, file: !1206, line: 935, baseType: !1617, size: 64, offset: 9472)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1617, file: !57, line: 104, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1476, file: !1206, line: 940, baseType: !362, size: 64, offset: 9536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1476, file: !1206, line: 942, baseType: !1624, size: 256, offset: 9600)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1625, line: 98, size: 256, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1626 = !{!1627, !1628, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1624, file: !1625, line: 99, baseType: !362, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1624, file: !1625, line: 100, baseType: !405, size: 128, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1624, file: !1625, line: 101, baseType: !1630, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1625, line: 21, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1473, file: !1206, line: 986, baseType: !1636, offset: 10240)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !522)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1460, file: !1206, line: 640, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1508, line: 297, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1508, line: 297, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1639, file: !1508, line: 297, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1513, line: 19, baseType: !127)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1206, line: 646, baseType: !1644, size: 64, offset: 256)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1206, line: 646, size: 64, elements: !1645)
!1645 = !{!1646, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1644, file: !1206, line: 647, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1206, line: 542, baseType: !127)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1644, file: !1206, line: 648, baseType: !1648, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1460, file: !1206, line: 666, baseType: !85, size: 32, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1460, file: !1206, line: 667, baseType: !1652, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1206, line: 579, size: 320, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1653, file: !1206, line: 580, baseType: !595, size: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1460, file: !1206, line: 670, baseType: !653, size: 8, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1460, file: !1206, line: 681, baseType: !1658, size: 256, offset: 512)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !1206, line: 678, size: 256, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1658, file: !1206, line: 679, baseType: !587, size: 192, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1658, file: !1206, line: 680, baseType: !127, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1460, file: !1206, line: 689, baseType: !405, size: 128, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1460, file: !1206, line: 691, baseType: !1664, size: 64, offset: 896)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1206, line: 691, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1460, file: !1206, line: 694, baseType: !1667, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1206, line: 694, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1460, file: !1206, line: 697, baseType: !127, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1460, file: !1206, line: 699, baseType: !414, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1460, file: !1206, line: 700, baseType: !123, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1460, file: !1206, line: 711, baseType: !362, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1460, file: !1206, line: 717, baseType: !1675, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1677, line: 54, flags: DIFlagFwdDecl)
!1677 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1460, file: !1206, line: 722, baseType: !1679, offset: 1344)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1206, line: 570, elements: !1493)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1156, file: !1137, line: 90, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1156, file: !1137, line: 91, baseType: !1683, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1127, file: !1074, line: 120, baseType: !1685, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1688, !1097}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1691)
!1691 = !{!1692, !1693, !1697, !1701, !1707, !1711}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1690, file: !29, line: 40, baseType: !28, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1690, file: !29, line: 41, baseType: !1694, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!653}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1690, file: !29, line: 42, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!123}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1690, file: !29, line: 43, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!1586, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1690, file: !29, line: 44, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1586}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1690, file: !29, line: 45, baseType: !847, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1127, file: !1074, line: 121, baseType: !1713, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1586, !1097}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1127, file: !1074, line: 122, baseType: !1717, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1097, !1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1073, file: !1074, line: 70, baseType: !1723, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1046, line: 190, size: 1152, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1824, !1825, !1826, !1827, !1828, !1831}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1724, file: !1046, line: 191, baseType: !385, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1724, file: !1046, line: 192, baseType: !385, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1724, file: !1046, line: 202, baseType: !1723, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1724, file: !1046, line: 203, baseType: !209, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1724, file: !1046, line: 205, baseType: !587, size: 192, align: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1724, file: !1046, line: 207, baseType: !1586, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1724, file: !1046, line: 208, baseType: !7, size: 32, offset: 448)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !1046, line: 209, baseType: !1734, size: 256, offset: 512)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1724, file: !1046, line: 209, size: 256, elements: !1735)
!1735 = !{!1736, !1745, !1749}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1734, file: !1046, line: 210, baseType: !1737, size: 256)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1046, line: 153, size: 256, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1744}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1737, file: !1046, line: 154, baseType: !127, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1737, file: !1046, line: 156, baseType: !1189, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1737, file: !1046, line: 162, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1046, line: 162, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1737, file: !1046, line: 167, baseType: !127, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1734, file: !1046, line: 211, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1046, line: 170, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1746, file: !1046, line: 171, baseType: !1723, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1734, file: !1046, line: 212, baseType: !1750, size: 256)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1046, line: 174, size: 256, elements: !1751)
!1751 = !{!1752, !1819, !1822, !1823}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1750, file: !1046, line: 175, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1046, line: 271, size: 768, elements: !1756)
!1756 = !{!1757, !1779, !1783, !1787, !1792, !1796, !1800, !1804, !1805, !1806, !1807, !1815}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1755, file: !1046, line: 276, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!85, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1046, line: 251, size: 1216, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1762, file: !1046, line: 253, baseType: !1723, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1762, file: !1046, line: 254, baseType: !414, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1762, file: !1046, line: 255, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1677, line: 66, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1762, file: !1046, line: 256, baseType: !123, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1762, file: !1046, line: 259, baseType: !358, size: 256, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1762, file: !1046, line: 260, baseType: !358, size: 256, offset: 512)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1762, file: !1046, line: 261, baseType: !85, size: 32, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1762, file: !1046, line: 262, baseType: !405, size: 128, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1762, file: !1046, line: 263, baseType: !664, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1762, file: !1046, line: 265, baseType: !971, size: 64, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1762, file: !1046, line: 266, baseType: !653, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1762, file: !1046, line: 267, baseType: !653, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1762, file: !1046, line: 268, baseType: !1667, size: 64, offset: 1152)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1755, file: !1046, line: 277, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !1761}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1755, file: !1046, line: 290, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!85, !1767, !123}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1755, file: !1046, line: 292, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!123, !1767, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1755, file: !1046, line: 293, baseType: !1793, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!123, !1767, !123, !1791}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1755, file: !1046, line: 294, baseType: !1797, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1767, !123}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1755, file: !1046, line: 296, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!968, !1761, !664, !971, !450}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1755, file: !1046, line: 306, baseType: !971, size: 64, offset: 448)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1755, file: !1046, line: 313, baseType: !653, size: 8, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1755, file: !1046, line: 314, baseType: !1801, size: 64, offset: 576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1755, file: !1046, line: 317, baseType: !1808, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1811, !1761, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1812, line: 59, baseType: !7)
!1812 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1046, line: 31, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1755, file: !1046, line: 320, baseType: !1816, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!85, !1761, !1459}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1750, file: !1046, line: 176, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1046, line: 35, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1750, file: !1046, line: 177, baseType: !450, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1750, file: !1046, line: 178, baseType: !1723, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1724, file: !1046, line: 215, baseType: !123, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1724, file: !1046, line: 221, baseType: !563, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1724, file: !1046, line: 223, baseType: !195, size: 16, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1724, file: !1046, line: 224, baseType: !819, size: 16, offset: 912)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1724, file: !1046, line: 225, baseType: !1829, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1046, line: 36, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1724, file: !1046, line: 227, baseType: !427, size: 128, align: 64, offset: 1024)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1073, file: !1074, line: 71, baseType: !1833, size: 32, offset: 448)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1834, line: 19, size: 32, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1833, file: !1834, line: 20, baseType: !485, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1073, file: !1074, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1073, file: !1074, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1073, file: !1074, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1073, file: !1074, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1073, file: !1074, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1070, file: !15, line: 47, baseType: !1060, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1070, file: !15, line: 48, baseType: !1079, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1070, file: !15, line: 49, baseType: !1845, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1070, file: !15, line: 50, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1850, line: 26, size: 256, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1849, file: !1850, line: 27, baseType: !7, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1849, file: !1850, line: 28, baseType: !1854, size: 192, offset: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1855, line: 43, size: 192, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1854, file: !1855, line: 44, baseType: !372, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1854, file: !1855, line: 45, baseType: !405, size: 128, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1061, file: !15, line: 418, baseType: !1860, size: 64, offset: 1408)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1862)
!1862 = !{!1863, !1864, !1869, !1873, !1877, !1881}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1861, file: !15, line: 54, baseType: !1144, size: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1861, file: !15, line: 55, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!968, !1860, !1868, !664}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1861, file: !15, line: 57, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!968, !1860, !1868, !209, !971}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1861, file: !15, line: 59, baseType: !1874, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1060, !209}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1861, file: !15, line: 60, baseType: !1878, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!85, !1060}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1861, file: !15, line: 61, baseType: !1882, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1060}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1061, file: !15, line: 419, baseType: !209, size: 64, offset: 1472)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1061, file: !15, line: 420, baseType: !209, size: 64, offset: 1536)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1061, file: !15, line: 421, baseType: !1079, size: 64, offset: 1600)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1061, file: !15, line: 424, baseType: !1889, size: 64, offset: 1664)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1061, file: !15, line: 425, baseType: !1893, size: 64, offset: 1728)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1061, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1061, file: !15, line: 435, baseType: !358, size: 256, offset: 1856)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1061, file: !15, line: 437, baseType: !1898, size: 64, offset: 2112)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1900, line: 69, size: 320, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1901 = !{!1902, !1903, !1904, !1921, !1923, !1927, !1928}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1899, file: !1900, line: 70, baseType: !209, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1899, file: !1900, line: 71, baseType: !1060, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1899, file: !1900, line: 72, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1900, line: 47, size: 256, elements: !1908)
!1908 = !{!1909, !1910, !1916, !1920}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1900, line: 49, baseType: !7, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1907, file: !1900, line: 51, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!85, !209, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1907, file: !1900, line: 53, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!85, !664, !1914}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1907, file: !1900, line: 55, baseType: !847, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1899, file: !1900, line: 73, baseType: !1922, size: 16, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1899, file: !1900, line: 74, baseType: !1924, size: 8, offset: 208)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !186, line: 16, baseType: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !188, line: 20, baseType: !1926)
!1926 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1899, file: !1900, line: 75, baseType: !200, size: 8, offset: 216)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 76, baseType: !1929, size: 64, offset: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 76, size: 64, elements: !1930)
!1930 = !{!1931, !1932, !1939}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1929, file: !1900, line: 77, baseType: !123, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1929, file: !1900, line: 78, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1900, line: 86, size: 128, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1935, file: !1900, line: 87, baseType: !7, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1935, file: !1900, line: 88, baseType: !664, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1929, file: !1900, line: 79, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1900, line: 92, size: 256, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1942, file: !1900, line: 94, baseType: !7, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1942, file: !1900, line: 95, baseType: !7, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1942, file: !1900, line: 96, baseType: !259, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1942, file: !1900, line: 97, baseType: !1905, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1942, file: !1900, line: 98, baseType: !123, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1061, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1061, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1061, file: !15, line: 442, baseType: !1889, size: 64, offset: 2240)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1061, file: !15, line: 443, baseType: !1893, size: 64, offset: 2304)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1061, file: !15, line: 444, baseType: !653, size: 8, offset: 2368)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1061, file: !15, line: 451, baseType: !653, size: 8, offset: 2376)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1061, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1061, file: !15, line: 455, baseType: !1957, size: 64, offset: 2432)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1959, line: 23, size: 96, elements: !1960)
!1959 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1958, file: !1959, line: 24, baseType: !85, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1958, file: !1959, line: 24, baseType: !85, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1958, file: !1959, line: 24, baseType: !85, size: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1061, file: !15, line: 458, baseType: !1965, size: 64, offset: 2496)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!85}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1061, file: !15, line: 460, baseType: !1969, size: 4032, align: 512, offset: 2560)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 4032, elements: !1984)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1970, file: !15, line: 363, baseType: !123, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1970, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1970, file: !15, line: 367, baseType: !1975, size: 448, offset: 128)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1975, file: !15, line: 320, baseType: !1060, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1975, file: !15, line: 321, baseType: !1979, size: 384, offset: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1980, line: 40, size: 384, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1979, file: !1980, line: 41, baseType: !1983, size: 384, align: 64)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 384, align: 64, elements: !236)
!1984 = !{!1985}
!1985 = !DISubrange(count: 7)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1061, file: !15, line: 463, baseType: !1987, size: 192, offset: 6592)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1988, line: 8, size: 192, elements: !1989)
!1988 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1989 = !{!1990, !1991, !1993}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1987, file: !1988, line: 10, baseType: !7, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1987, file: !1988, line: 11, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1987, file: !1988, line: 12, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1996, line: 59, size: 48, elements: !1997)
!1996 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1995, file: !1996, line: 60, baseType: !1603, size: 16)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1995, file: !1996, line: 61, baseType: !1603, size: 16, offset: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1995, file: !1996, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1995, file: !1996, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1995, file: !1996, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1995, file: !1996, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1061, file: !15, line: 465, baseType: !127, size: 64, offset: 6784)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1061, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1061, file: !15, line: 470, baseType: !405, size: 128, offset: 6912)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1061, file: !15, line: 471, baseType: !2008, size: 64, offset: 7040)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2010, line: 33, size: 96, elements: !2011)
!2010 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2009, file: !2010, line: 37, baseType: !85, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2009, file: !2010, line: 43, baseType: !85, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2009, file: !2010, line: 45, baseType: !195, size: 16, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2009, file: !2010, line: 47, baseType: !195, size: 16, offset: 80)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1061, file: !15, line: 476, baseType: !2017, size: 64, offset: 7104)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2019)
!2019 = !{!2020, !2036, !2037, !2038}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2018, file: !15, line: 379, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2023, line: 204, baseType: !2024)
!2023 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2023, line: 197, size: 192, elements: !2025)
!2025 = !{!2026, !2028, !2029, !2030, !2032, !2034}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2024, file: !2023, line: 198, baseType: !2027, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2023, line: 21, baseType: !187)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2024, file: !2023, line: 199, baseType: !202, size: 8, offset: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2024, file: !2023, line: 200, baseType: !202, size: 8, offset: 40)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2024, file: !2023, line: 201, baseType: !2031, size: 16, offset: 48)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2023, line: 17, baseType: !194)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2024, file: !2023, line: 202, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2023, line: 16, baseType: !564)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2024, file: !2023, line: 203, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2023, line: 22, baseType: !564)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2018, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2018, file: !15, line: 381, baseType: !664, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2018, file: !15, line: 382, baseType: !664, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1061, file: !15, line: 477, baseType: !2018, size: 256, offset: 7168)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1061, file: !15, line: 480, baseType: !2041, size: 64, offset: 7424)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1061, file: !15, line: 483, baseType: !2044, size: 64, offset: 7488)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1061, file: !15, line: 488, baseType: !664, size: 64, offset: 7552)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1061, file: !15, line: 492, baseType: !123, size: 64, offset: 7616)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1061, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1061, file: !15, line: 495, baseType: !123, size: 64, offset: 7744)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1061, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1061, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1061, file: !15, line: 500, baseType: !2053, size: 64, offset: 7872)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2055, line: 45, baseType: !2056)
!2055 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1061, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1061, file: !15, line: 504, baseType: !2059, size: 64, offset: 8000)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2062, line: 96, size: 192, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2063 = !{!2064, !2065, !2119, !2122}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2061, file: !2062, line: 97, baseType: !7, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2061, file: !2062, line: 98, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2062, line: 24, size: 3072, elements: !2068)
!2068 = !{!2069, !2071, !2072, !2073, !2074, !2088, !2089, !2090, !2091, !2103, !2104, !2105, !2116, !2117, !2118}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2067, file: !2062, line: 26, baseType: !2070, size: 128)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !236)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2067, file: !2062, line: 27, baseType: !2070, size: 128, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2067, file: !2062, line: 28, baseType: !85, size: 32, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2067, file: !2062, line: 31, baseType: !437, size: 32, align: 512, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2067, file: !2062, line: 32, baseType: !2075, size: 960, offset: 576)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2076, line: 206, size: 960, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2077 = !{!2078, !2079, !2082, !2084, !2085, !2087}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2075, file: !2076, line: 207, baseType: !430, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2075, file: !2076, line: 208, baseType: !2080, size: 256, offset: 64)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, size: 256, elements: !503)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2075, file: !2076, line: 209, baseType: !2083, size: 256, offset: 320)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !503)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2075, file: !2076, line: 213, baseType: !133, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2075, file: !2076, line: 215, baseType: !2086, size: 256, offset: 640)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !503)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2075, file: !2076, line: 216, baseType: !200, size: 8, offset: 896)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2067, file: !2062, line: 33, baseType: !127, size: 64, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2067, file: !2062, line: 34, baseType: !127, size: 64, offset: 1600)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2067, file: !2062, line: 35, baseType: !653, size: 8, offset: 1664)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2067, file: !2062, line: 36, baseType: !2092, size: 320, offset: 1728)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2093, line: 11, size: 320, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2094 = !{!2095, !2096, !2097, !2102}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2092, file: !2093, line: 16, baseType: !498, size: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2092, file: !2093, line: 17, baseType: !127, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2092, file: !2093, line: 18, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 19, baseType: !185, size: 32, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2067, file: !2062, line: 37, baseType: !1624, size: 256, offset: 2048)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2067, file: !2062, line: 38, baseType: !427, size: 128, align: 64, offset: 2304)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2067, file: !2062, line: 39, baseType: !2106, size: 64, offset: 2432)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2062, line: 49, size: 768, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !2062, line: 50, baseType: !437, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2107, file: !2062, line: 51, baseType: !2083, size: 256, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2107, file: !2062, line: 53, baseType: !2083, size: 256, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2107, file: !2062, line: 54, baseType: !127, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2107, file: !2062, line: 55, baseType: !2106, size: 64, offset: 640)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2107, file: !2062, line: 56, baseType: !85, size: 32, offset: 704)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2107, file: !2062, line: 57, baseType: !85, size: 32, offset: 736)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2067, file: !2062, line: 40, baseType: !127, size: 64, offset: 2496)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2067, file: !2062, line: 42, baseType: !85, size: 32, offset: 2560)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2067, file: !2062, line: 43, baseType: !2060, size: 64, offset: 2624)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2061, file: !2062, line: 99, baseType: !2120, offset: 128)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2121, line: 211, elements: !1493)
!2121 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2061, file: !2062, line: 100, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2062, line: 63, size: 3008, elements: !2125)
!2125 = !{!2126, !2127, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2157}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2124, file: !2062, line: 64, baseType: !2106, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2124, file: !2062, line: 65, baseType: !2128, size: 192, offset: 64)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2106, size: 192, elements: !477)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2124, file: !2062, line: 67, baseType: !85, size: 32, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2124, file: !2062, line: 68, baseType: !358, size: 256, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !2062, line: 69, baseType: !437, size: 32, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2124, file: !2062, line: 70, baseType: !358, size: 256, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2124, file: !2062, line: 71, baseType: !127, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2124, file: !2062, line: 72, baseType: !127, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2124, file: !2062, line: 73, baseType: !127, size: 64, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2124, file: !2062, line: 74, baseType: !127, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2124, file: !2062, line: 75, baseType: !127, size: 64, offset: 1152)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2124, file: !2062, line: 76, baseType: !127, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2124, file: !2062, line: 77, baseType: !127, size: 64, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2124, file: !2062, line: 78, baseType: !127, size: 64, offset: 1344)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2124, file: !2062, line: 79, baseType: !653, size: 8, offset: 1408)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2124, file: !2062, line: 80, baseType: !127, size: 64, offset: 1472)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2124, file: !2062, line: 81, baseType: !358, size: 256, offset: 1536)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2124, file: !2062, line: 82, baseType: !1849, size: 256, offset: 1792)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2124, file: !2062, line: 84, baseType: !385, size: 32, offset: 2048)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2124, file: !2062, line: 87, baseType: !127, size: 64, offset: 2112)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2124, file: !2062, line: 88, baseType: !127, size: 64, offset: 2176)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2124, file: !2062, line: 89, baseType: !2149, size: 704, offset: 2240)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1625, line: 111, size: 704, elements: !2150)
!2150 = !{!2151, !2152, !2153, !2156}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2149, file: !1625, line: 112, baseType: !1624, size: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2149, file: !1625, line: 113, baseType: !2092, size: 320, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2149, file: !1625, line: 116, baseType: !2154, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1625, line: 18, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2149, file: !1625, line: 117, baseType: !85, size: 32, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2124, file: !2062, line: 90, baseType: !2060, size: 64, offset: 2944)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1061, file: !15, line: 515, baseType: !2159, size: 64, offset: 8064)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2161, line: 117, size: 128, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2160, file: !2161, line: 118, baseType: !580, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2160, file: !2161, line: 119, baseType: !580, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2160, file: !2161, line: 120, baseType: !133, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1061, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1061, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1061, file: !15, line: 520, baseType: !2169, size: 64, offset: 8192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1061, file: !15, line: 523, baseType: !2171, size: 64, offset: 8256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1061, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1061, file: !15, line: 525, baseType: !2176, size: 64, offset: 8384)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1061, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1061, file: !15, line: 533, baseType: !123, size: 64, offset: 8512)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1061, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1061, file: !15, line: 535, baseType: !130, size: 64, offset: 8640)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1061, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1061, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1061, file: !15, line: 540, baseType: !2186, size: 64, offset: 8768)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2188, line: 32, size: 64, elements: !2189)
!2188 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2187, file: !2188, line: 33, baseType: !580, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2187, file: !2188, line: 34, baseType: !580, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1061, file: !15, line: 563, baseType: !405, size: 128, offset: 8832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1061, file: !15, line: 565, baseType: !405, size: 128, offset: 8960)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1061, file: !15, line: 568, baseType: !2195, size: 64, offset: 9088)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1061, file: !15, line: 570, baseType: !385, size: 32, offset: 9152)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1036, file: !35, line: 2382, baseType: !1035, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1036, file: !35, line: 2383, baseType: !494, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1036, file: !35, line: 2385, baseType: !2202, offset: 576)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2121, line: 206, elements: !1493)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1036, file: !35, line: 2386, baseType: !2202, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1036, file: !35, line: 2387, baseType: !2202, offset: 576)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1036, file: !35, line: 2388, baseType: !2206, offset: 576)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2202, elements: !477)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1036, file: !35, line: 2390, baseType: !2202, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1036, file: !35, line: 2391, baseType: !2202, offset: 576)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1036, file: !35, line: 2392, baseType: !2202, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1036, file: !35, line: 2393, baseType: !2202, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1027, file: !35, line: 1197, baseType: !2212, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2215)
!2215 = !{!2216, !2220, !2224, !2225, !2229, !2233, !2237, !2238, !2239, !2243, !2247, !2251, !2252, !2253, !2259, !2263, !2264, !2268, !2269, !2270, !2271, !2275, !2279, !2326, !2341, !2342}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2214, file: !35, line: 2058, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!815, !1026}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2214, file: !35, line: 2059, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !815}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2214, file: !35, line: 2060, baseType: !2221, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2214, file: !35, line: 2062, baseType: !2226, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !815, !85}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2214, file: !35, line: 2063, baseType: !2230, size: 64, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!85, !815, !1265}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2214, file: !35, line: 2064, baseType: !2234, size: 64, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!85, !815}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2214, file: !35, line: 2065, baseType: !2221, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2214, file: !35, line: 2066, baseType: !1056, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2214, file: !35, line: 2067, baseType: !2240, size: 64, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!85, !1026, !85}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2214, file: !35, line: 2068, baseType: !2244, size: 64, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!85, !1026, !34}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2214, file: !35, line: 2069, baseType: !2248, size: 64, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!85, !1026}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2214, file: !35, line: 2070, baseType: !2244, size: 64, offset: 704)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2214, file: !35, line: 2071, baseType: !2248, size: 64, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2214, file: !35, line: 2072, baseType: !2254, size: 64, offset: 832)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!85, !775, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2214, file: !35, line: 2073, baseType: !2260, size: 64, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!85, !1026, !1992, !664}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2214, file: !35, line: 2074, baseType: !1056, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2214, file: !35, line: 2076, baseType: !2265, size: 64, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!85, !1767, !775}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2214, file: !35, line: 2077, baseType: !2265, size: 64, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2214, file: !35, line: 2078, baseType: !2265, size: 64, offset: 1152)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2214, file: !35, line: 2079, baseType: !2265, size: 64, offset: 1216)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2214, file: !35, line: 2081, baseType: !2272, size: 64, offset: 1280)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!968, !1026, !85, !664, !971, !450}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2214, file: !35, line: 2082, baseType: !2276, size: 64, offset: 1344)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!968, !1026, !85, !209, !971, !450}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2214, file: !35, line: 2083, baseType: !2280, size: 64, offset: 1408)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2283, !815}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2311, !2312, !2313}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2285, file: !40, line: 297, baseType: !498, size: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2285, file: !40, line: 298, baseType: !405, size: 128, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2285, file: !40, line: 299, baseType: !405, size: 128, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2285, file: !40, line: 300, baseType: !405, size: 128, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2285, file: !40, line: 301, baseType: !358, size: 256, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2285, file: !40, line: 302, baseType: !437, size: 32, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2285, file: !40, line: 303, baseType: !385, size: 32, offset: 800)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2285, file: !40, line: 304, baseType: !1026, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2285, file: !40, line: 305, baseType: !2296, size: 64, offset: 896)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2297)
!2297 = !{!2298, !2310}
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !40, line: 69, baseType: !2299, size: 32)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !40, line: 69, size: 32, elements: !2300)
!2300 = !{!2301, !2302, !2303}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2299, file: !40, line: 70, baseType: !526, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2299, file: !40, line: 71, baseType: !544, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2299, file: !40, line: 72, baseType: !2304, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2305, line: 24, baseType: !2306)
!2305 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2305, line: 22, size: 32, elements: !2307)
!2307 = !{!2308}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2306, file: !2305, line: 23, baseType: !2309, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2305, line: 20, baseType: !532)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2296, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2285, file: !40, line: 306, baseType: !450, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2285, file: !40, line: 307, baseType: !127, size: 64, offset: 1024)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2285, file: !40, line: 308, baseType: !2314, size: 576, offset: 1088)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2315)
!2315 = !{!2316, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2314, file: !40, line: 206, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !370)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2314, file: !40, line: 207, baseType: !2317, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2314, file: !40, line: 208, baseType: !2317, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2314, file: !40, line: 209, baseType: !2317, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2314, file: !40, line: 210, baseType: !2317, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2314, file: !40, line: 211, baseType: !2317, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2314, file: !40, line: 212, baseType: !2317, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2314, file: !40, line: 213, baseType: !611, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2314, file: !40, line: 214, baseType: !611, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2214, file: !35, line: 2085, baseType: !2327, size: 64, offset: 1472)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!133, !1026, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2332, line: 15, size: 256, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2333 = !{!2334, !2335, !2336, !2337, !2338}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2331, file: !2332, line: 16, baseType: !124, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2331, file: !2332, line: 19, baseType: !85, size: 32, offset: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2331, file: !2332, line: 26, baseType: !127, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2331, file: !2332, line: 33, baseType: !127, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2331, file: !2332, line: 36, baseType: !2339, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1206, line: 33, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2214, file: !35, line: 2087, baseType: !2327, size: 64, offset: 1536)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2214, file: !35, line: 2089, baseType: !1056, size: 64, offset: 1600)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1027, file: !35, line: 1198, baseType: !2344, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2346)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2347)
!2347 = !{!2348, !2352, !2356, !2360, !2361, !2362, !2363, !2364, !2369, !2374, !2378}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2346, file: !40, line: 325, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!85, !2284}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2346, file: !40, line: 326, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2284, !1026, !85}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2346, file: !40, line: 327, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2284}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2346, file: !40, line: 328, baseType: !2349, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2346, file: !40, line: 329, baseType: !2349, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2346, file: !40, line: 330, baseType: !2349, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2346, file: !40, line: 331, baseType: !2240, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2346, file: !40, line: 334, baseType: !2365, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!2368, !815}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2346, file: !40, line: 335, baseType: !2370, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!85, !815, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2346, file: !40, line: 337, baseType: !2375, size: 64, offset: 576)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!85, !815, !2368}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2346, file: !40, line: 339, baseType: !2379, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!85, !1026, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1027, file: !35, line: 1199, baseType: !2384, size: 64, offset: 512)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2386)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2387)
!2387 = !{!2388, !2392, !2393, !2397, !2398, !2399, !2414, !2437, !2441, !2442, !2465}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2386, file: !40, line: 431, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!85, !1026, !85, !85, !937}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2386, file: !40, line: 432, baseType: !2240, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2386, file: !40, line: 433, baseType: !2394, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!85, !1026, !7}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2386, file: !40, line: 434, baseType: !2394, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2386, file: !40, line: 435, baseType: !2240, size: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2386, file: !40, line: 436, baseType: !2400, size: 64, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!85, !1026, !85, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2404, file: !40, line: 418, baseType: !85, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2404, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2404, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2404, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2404, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2404, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2404, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2404, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2386, file: !40, line: 437, baseType: !2415, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!85, !1026, !2296, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2419, file: !40, line: 346, baseType: !85, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2419, file: !40, line: 347, baseType: !563, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2419, file: !40, line: 348, baseType: !563, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2419, file: !40, line: 349, baseType: !563, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2419, file: !40, line: 350, baseType: !563, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2419, file: !40, line: 351, baseType: !563, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2419, file: !40, line: 352, baseType: !563, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2419, file: !40, line: 353, baseType: !368, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2419, file: !40, line: 355, baseType: !368, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2419, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2419, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2419, file: !40, line: 358, baseType: !563, size: 64, offset: 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2419, file: !40, line: 359, baseType: !563, size: 64, offset: 704)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2419, file: !40, line: 360, baseType: !563, size: 64, offset: 768)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2419, file: !40, line: 361, baseType: !368, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2419, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2386, file: !40, line: 438, baseType: !2438, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!85, !1026, !2382, !2418}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2386, file: !40, line: 440, baseType: !2415, size: 64, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2386, file: !40, line: 441, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!85, !1026, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2447, file: !40, line: 412, baseType: !7, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2447, file: !40, line: 413, baseType: !2451, size: 1344, offset: 64)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2452, size: 1344, elements: !477)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2464}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2452, file: !40, line: 398, baseType: !7, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2452, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2452, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2452, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2452, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2452, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2452, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2452, file: !40, line: 406, baseType: !565, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2452, file: !40, line: 407, baseType: !2463, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !125, line: 132, baseType: !563)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2452, file: !40, line: 408, baseType: !2463, size: 64, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2386, file: !40, line: 442, baseType: !2394, size: 64, offset: 640)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1027, file: !35, line: 1200, baseType: !2467, size: 64, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1027, file: !35, line: 1201, baseType: !127, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1027, file: !35, line: 1202, baseType: !127, size: 64, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1027, file: !35, line: 1203, baseType: !127, size: 64, offset: 768)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1027, file: !35, line: 1204, baseType: !775, size: 64, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1027, file: !35, line: 1205, baseType: !595, size: 320, offset: 896)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1027, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1027, file: !35, line: 1207, baseType: !385, size: 32, offset: 1248)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1027, file: !35, line: 1209, baseType: !123, size: 64, offset: 1280)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1027, file: !35, line: 1211, baseType: !2479, size: 64, offset: 1344)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1027, file: !35, line: 1223, baseType: !2484, size: 64, offset: 1408)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !792, line: 34, size: 64, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2484, file: !792, line: 35, baseType: !795, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1027, file: !35, line: 1224, baseType: !405, size: 128, offset: 1472)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1027, file: !35, line: 1225, baseType: !2489, size: 64, offset: 1600)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1027, file: !35, line: 1226, baseType: !2492, size: 64, offset: 1664)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1027, file: !35, line: 1227, baseType: !2495, size: 64, offset: 1728)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1027, file: !35, line: 1228, baseType: !2498, size: 64, offset: 1792)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1027, file: !35, line: 1229, baseType: !498, size: 128, offset: 1856)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1027, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1027, file: !35, line: 1231, baseType: !2503, size: 2496, offset: 2048)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2509, !2541}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2503, file: !40, line: 522, baseType: !7, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2503, file: !40, line: 523, baseType: !595, size: 320, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2503, file: !40, line: 524, baseType: !2508, size: 192, offset: 384)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 192, elements: !477)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2503, file: !40, line: 525, baseType: !2510, size: 1728, offset: 576)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2511, size: 1728, elements: !477)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2512)
!2512 = !{!2513, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2511, file: !40, line: 223, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2516)
!2516 = !{!2517, !2518, !2531, !2532}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2515, file: !40, line: 446, baseType: !85, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2515, file: !40, line: 447, baseType: !2519, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2521)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2521, file: !40, line: 313, baseType: !2240, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2521, file: !40, line: 314, baseType: !2240, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2521, file: !40, line: 315, baseType: !2240, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2521, file: !40, line: 316, baseType: !2240, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2521, file: !40, line: 317, baseType: !2349, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2521, file: !40, line: 318, baseType: !2349, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2521, file: !40, line: 319, baseType: !2349, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2521, file: !40, line: 320, baseType: !2379, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2515, file: !40, line: 448, baseType: !1060, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2515, file: !40, line: 449, baseType: !2514, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2511, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2511, file: !40, line: 226, baseType: !405, size: 128, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2511, file: !40, line: 227, baseType: !127, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2511, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2511, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2511, file: !40, line: 230, baseType: !2317, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2511, file: !40, line: 231, baseType: !2317, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2511, file: !40, line: 232, baseType: !123, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2503, file: !40, line: 526, baseType: !2542, size: 192, offset: 2304)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2519, size: 192, elements: !477)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1027, file: !35, line: 1233, baseType: !2544, size: 2368, offset: 4544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2545)
!2545 = !{!2546, !2547, !2548}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2544, file: !35, line: 1185, baseType: !195, size: 16)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2544, file: !35, line: 1186, baseType: !195, size: 16, offset: 16)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2544, file: !35, line: 1187, baseType: !2549, size: 2304, offset: 64)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2550, size: 2304, elements: !477)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2551, line: 12, size: 768, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2552 = !{!2553, !2561, !2562, !3736, !3737}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2550, file: !2551, line: 13, baseType: !2554, size: 384)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2555, line: 17, size: 384, elements: !2556)
!2555 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2556 = !{!2557, !2558, !2559, !2560}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2554, file: !2555, line: 18, baseType: !85, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2554, file: !2555, line: 19, baseType: !85, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2554, file: !2555, line: 20, baseType: !507, size: 192, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2554, file: !2555, line: 22, baseType: !427, size: 128, align: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2550, file: !2551, line: 14, baseType: !259, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2550, file: !2551, line: 15, baseType: !2563, size: 64, offset: 448)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2564, line: 16, size: 64, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2565 = !{!2566}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2563, file: !2564, line: 17, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1677, line: 746, size: 58368, elements: !2569)
!2569 = !{!2570, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2650, !2661, !2749, !2753, !2756, !2787, !2788, !2789, !2790, !2798, !2800, !2801, !2802, !2803, !2804, !2805, !2816, !2817, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2834, !2835, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2923, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2971, !2977, !2978, !2979, !2980, !2981, !2985, !2988, !2995, !3000, !3003, !3006, !3009, !3012, !3150, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3188, !3189, !3190, !3199, !3207, !3208, !3209, !3210, !3211, !3216, !3217, !3218, !3221, !3222, !3225, !3228, !3231, !3239, !3242, !3243, !3329, !3330, !3331, !3332, !3333, !3339, !3340, !3341, !3342, !3345, !3346, !3349, !3352, !3353, !3356, !3357, !3358, !3361, !3362, !3363, !3364, !3365, !3366, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3398, !3401, !3407, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3419, !3491, !3493, !3494, !3495, !3496, !3497, !3498, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3515, !3516, !3517}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2568, file: !1677, line: 752, baseType: !2571, size: 192)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2572, line: 56, size: 192, elements: !2573)
!2572 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2573 = !{!2574, !2575, !2576, !2577}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2571, file: !2572, line: 57, baseType: !127, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2571, file: !2572, line: 58, baseType: !127, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2571, file: !2572, line: 59, baseType: !185, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2571, file: !2572, line: 61, baseType: !185, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2568, file: !1677, line: 754, baseType: !7, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2568, file: !1677, line: 767, baseType: !123, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2568, file: !1677, line: 768, baseType: !485, size: 32, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2568, file: !1677, line: 770, baseType: !7, size: 32, offset: 352)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2568, file: !1677, line: 771, baseType: !7, size: 32, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2568, file: !1677, line: 774, baseType: !85, size: 32, offset: 416)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2568, file: !1677, line: 775, baseType: !2585, size: 128, offset: 448)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2586, line: 58, size: 128, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2587 = !{!2588, !2589, !2594, !2595}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2585, file: !2586, line: 59, baseType: !421, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2586, line: 60, baseType: !2590, size: 32, offset: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2586, line: 60, size: 32, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2590, file: !2586, line: 61, baseType: !7, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2590, file: !2586, line: 62, baseType: !385, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2585, file: !2586, line: 65, baseType: !193, size: 16, offset: 96)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2585, file: !2586, line: 65, baseType: !193, size: 16, offset: 112)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2568, file: !1677, line: 776, baseType: !7, size: 32, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2568, file: !1677, line: 777, baseType: !127, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2568, file: !1677, line: 778, baseType: !2567, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2568, file: !1677, line: 787, baseType: !85, size: 32, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2568, file: !1677, line: 788, baseType: !85, size: 32, offset: 800)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2568, file: !1677, line: 790, baseType: !85, size: 32, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2568, file: !1677, line: 792, baseType: !85, size: 32, offset: 864)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2568, file: !1677, line: 793, baseType: !85, size: 32, offset: 896)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2568, file: !1677, line: 794, baseType: !85, size: 32, offset: 928)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2568, file: !1677, line: 795, baseType: !7, size: 32, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2568, file: !1677, line: 797, baseType: !2607, size: 2048, offset: 1024)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1677, line: 551, size: 2048, elements: !2608)
!2608 = !{!2609, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2629, !2632, !2633, !2634}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2607, file: !1677, line: 553, baseType: !2610, size: 128)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1677, line: 411, size: 128, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2610, file: !1677, line: 412, baseType: !127, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2610, file: !1677, line: 413, baseType: !185, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2607, file: !1677, line: 554, baseType: !587, size: 192, align: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2607, file: !1677, line: 555, baseType: !563, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2607, file: !1677, line: 556, baseType: !563, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2607, file: !1677, line: 558, baseType: !405, size: 128, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2607, file: !1677, line: 559, baseType: !7, size: 32, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2607, file: !1677, line: 561, baseType: !563, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2607, file: !1677, line: 562, baseType: !563, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2607, file: !1677, line: 563, baseType: !563, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2607, file: !1677, line: 564, baseType: !563, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2607, file: !1677, line: 565, baseType: !368, size: 64, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2607, file: !1677, line: 566, baseType: !563, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2607, file: !1677, line: 568, baseType: !563, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2607, file: !1677, line: 571, baseType: !85, size: 32, offset: 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2607, file: !1677, line: 572, baseType: !2628, size: 64, offset: 1152)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2607, file: !1677, line: 574, baseType: !2630, size: 64, offset: 1216)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1677, line: 49, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2607, file: !1677, line: 576, baseType: !2630, size: 64, offset: 1280)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2607, file: !1677, line: 578, baseType: !127, size: 64, offset: 1344)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2607, file: !1677, line: 588, baseType: !2635, size: 512, align: 512, offset: 1536)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1677, line: 497, size: 512, align: 512, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2635, file: !1677, line: 498, baseType: !563, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2635, file: !1677, line: 499, baseType: !563, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2635, file: !1677, line: 500, baseType: !563, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2635, file: !1677, line: 501, baseType: !185, size: 32, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2635, file: !1677, line: 502, baseType: !185, size: 32, offset: 224)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2635, file: !1677, line: 503, baseType: !127, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2635, file: !1677, line: 504, baseType: !127, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2635, file: !1677, line: 505, baseType: !127, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2635, file: !1677, line: 506, baseType: !2646, size: 64, align: 64, offset: 448)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1677, line: 445, size: 64, align: 64, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2646, file: !1677, line: 446, baseType: !7, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2646, file: !1677, line: 447, baseType: !7, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2568, file: !1677, line: 798, baseType: !2651, size: 384, offset: 3072)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1677, line: 592, size: 384, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2651, file: !1677, line: 593, baseType: !405, size: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2651, file: !1677, line: 594, baseType: !127, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2651, file: !1677, line: 595, baseType: !127, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2651, file: !1677, line: 596, baseType: !7, size: 32, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2651, file: !1677, line: 597, baseType: !195, size: 16, offset: 288)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2651, file: !1677, line: 598, baseType: !195, size: 16, offset: 304)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2651, file: !1677, line: 600, baseType: !2660, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2568, file: !1677, line: 799, baseType: !2662, size: 1792, offset: 3456)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1677, line: 610, size: 1792, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2746, !2747}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2662, file: !1677, line: 611, baseType: !587, size: 192, align: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2662, file: !1677, line: 618, baseType: !563, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2662, file: !1677, line: 619, baseType: !563, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2662, file: !1677, line: 620, baseType: !563, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2662, file: !1677, line: 621, baseType: !563, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2662, file: !1677, line: 622, baseType: !563, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2662, file: !1677, line: 629, baseType: !368, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2662, file: !1677, line: 630, baseType: !563, size: 64, offset: 576)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !1677, line: 631, baseType: !7, size: 32, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2662, file: !1677, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2662, file: !1677, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2662, file: !1677, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2662, file: !1677, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2662, file: !1677, line: 662, baseType: !2678, size: 512, offset: 704)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2679)
!2679 = !{!2680, !2688, !2689, !2694, !2742, !2743, !2744, !2745}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2678, file: !46, line: 119, baseType: !2681, size: 256)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2682, line: 9, size: 256, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2681, file: !2682, line: 10, baseType: !587, size: 192, align: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2681, file: !2682, line: 11, baseType: !2686, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2687, line: 29, baseType: !368)
!2687 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2678, file: !46, line: 120, baseType: !2686, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2678, file: !46, line: 121, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!45, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2678, file: !46, line: 122, baseType: !2695, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2697)
!2697 = !{!2698, !2723, !2724, !2727, !2732, !2733, !2737, !2741}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2696, file: !46, line: 160, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2700, file: !46, line: 216, baseType: !372, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2700, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2700, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2700, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2700, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2700, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2700, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2700, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2700, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2700, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2700, file: !46, line: 227, baseType: !195, size: 16, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2700, file: !46, line: 228, baseType: !195, size: 16, offset: 208)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2700, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2700, file: !46, line: 235, baseType: !2686, size: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2700, file: !46, line: 236, baseType: !2693, size: 64, offset: 320)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2700, file: !46, line: 237, baseType: !2686, size: 64, offset: 384)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2700, file: !46, line: 238, baseType: !2693, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2700, file: !46, line: 239, baseType: !2720, size: 4096, align: 512, offset: 512)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 4096, align: 512, elements: !2721)
!2721 = !{!2722}
!2722 = !DISubrange(count: 8)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2696, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2696, file: !46, line: 162, baseType: !2725, size: 32, offset: 96)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !125, line: 32, baseType: !2726)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !452, line: 96, baseType: !85)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2696, file: !46, line: 163, baseType: !2728, size: 32, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !782, line: 274, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !782, line: 274, size: 32, elements: !2730)
!2730 = !{!2731}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2729, file: !782, line: 274, baseType: !786, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2696, file: !46, line: 164, baseType: !2693, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2696, file: !46, line: 165, baseType: !2734, size: 128, offset: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2682, line: 14, size: 128, elements: !2735)
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2734, file: !2682, line: 15, baseType: !1186, size: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2696, file: !46, line: 166, baseType: !2738, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2686}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2696, file: !46, line: 167, baseType: !2686, size: 64, offset: 448)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2678, file: !46, line: 123, baseType: !200, size: 8, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2678, file: !46, line: 124, baseType: !200, size: 8, offset: 456)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2678, file: !46, line: 125, baseType: !200, size: 8, offset: 464)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2678, file: !46, line: 126, baseType: !200, size: 8, offset: 472)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2662, file: !1677, line: 671, baseType: !2678, size: 512, offset: 1216)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2662, file: !1677, line: 679, baseType: !2748, size: 64, offset: 1728)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2568, file: !1677, line: 800, baseType: !2750, size: 64, offset: 5248)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1677, line: 800, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2568, file: !1677, line: 809, baseType: !2754, size: 64, offset: 5312)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1677, line: 70, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2568, file: !1677, line: 825, baseType: !2757, size: 2048, align: 512, offset: 5632)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1677, line: 509, size: 2048, align: 512, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2757, file: !1677, line: 511, baseType: !563, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2757, file: !1677, line: 512, baseType: !563, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2757, file: !1677, line: 513, baseType: !563, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2757, file: !1677, line: 514, baseType: !563, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2757, file: !1677, line: 515, baseType: !563, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2757, file: !1677, line: 516, baseType: !563, size: 64, offset: 320)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2757, file: !1677, line: 518, baseType: !563, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2757, file: !1677, line: 519, baseType: !563, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2757, file: !1677, line: 520, baseType: !368, size: 64, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2757, file: !1677, line: 522, baseType: !563, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2757, file: !1677, line: 523, baseType: !563, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2757, file: !1677, line: 524, baseType: !368, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2757, file: !1677, line: 526, baseType: !368, size: 64, offset: 768)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2757, file: !1677, line: 527, baseType: !563, size: 64, offset: 832)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2757, file: !1677, line: 529, baseType: !563, size: 64, offset: 896)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2757, file: !1677, line: 530, baseType: !563, size: 64, offset: 960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2757, file: !1677, line: 531, baseType: !563, size: 64, offset: 1024)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2757, file: !1677, line: 532, baseType: !563, size: 64, offset: 1088)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2757, file: !1677, line: 533, baseType: !563, size: 64, offset: 1152)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2757, file: !1677, line: 535, baseType: !563, size: 64, offset: 1216)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2757, file: !1677, line: 536, baseType: !563, size: 64, offset: 1280)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2757, file: !1677, line: 537, baseType: !563, size: 64, offset: 1344)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2757, file: !1677, line: 538, baseType: !563, size: 64, offset: 1408)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2757, file: !1677, line: 539, baseType: !563, size: 64, offset: 1472)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2757, file: !1677, line: 540, baseType: !563, size: 64, offset: 1536)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2757, file: !1677, line: 541, baseType: !563, size: 64, offset: 1600)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2757, file: !1677, line: 542, baseType: !563, size: 64, offset: 1664)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2757, file: !1677, line: 543, baseType: !563, size: 64, offset: 1728)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2568, file: !1677, line: 833, baseType: !7, size: 32, offset: 7680)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2568, file: !1677, line: 836, baseType: !7, size: 32, offset: 7712)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2568, file: !1677, line: 837, baseType: !85, size: 32, offset: 7744)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2568, file: !1677, line: 838, baseType: !2791, size: 64, offset: 7808)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2794, line: 19, baseType: !2795)
!2794 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2794, line: 19, size: 64, elements: !2796)
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2795, file: !2794, line: 19, baseType: !221, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2568, file: !1677, line: 839, baseType: !2799, size: 64, offset: 7872)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2568, file: !1677, line: 840, baseType: !2793, size: 64, offset: 7936)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2568, file: !1677, line: 841, baseType: !123, size: 64, offset: 8000)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2568, file: !1677, line: 843, baseType: !195, size: 16, offset: 8064)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2568, file: !1677, line: 845, baseType: !195, size: 16, offset: 8080)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2568, file: !1677, line: 848, baseType: !85, size: 32, offset: 8096)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2568, file: !1677, line: 849, baseType: !2806, size: 32, offset: 8128)
!2806 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1677, line: 718, size: 32, elements: !2807)
!2807 = !{!2808, !2815}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2806, file: !1677, line: 724, baseType: !2809, size: 32)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !1677, line: 719, size: 32, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2809, file: !1677, line: 720, baseType: !200, size: 8)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2809, file: !1677, line: 721, baseType: !200, size: 8, offset: 8)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2809, file: !1677, line: 722, baseType: !200, size: 8, offset: 16)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2809, file: !1677, line: 723, baseType: !200, size: 8, offset: 24)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2806, file: !1677, line: 725, baseType: !185, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2568, file: !1677, line: 850, baseType: !405, size: 128, offset: 8192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2568, file: !1677, line: 851, baseType: !2818, size: 64, offset: 8320)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1677, line: 60, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2568, file: !1677, line: 855, baseType: !127, size: 64, offset: 8384)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2568, file: !1677, line: 856, baseType: !200, size: 8, offset: 8448)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2568, file: !1677, line: 857, baseType: !200, size: 8, offset: 8456)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2568, file: !1677, line: 858, baseType: !85, size: 32, offset: 8480)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2568, file: !1677, line: 859, baseType: !405, size: 128, offset: 8512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2568, file: !1677, line: 860, baseType: !85, size: 32, offset: 8640)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2568, file: !1677, line: 861, baseType: !405, size: 128, offset: 8704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2568, file: !1677, line: 873, baseType: !2828, size: 256, offset: 8832)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1677, line: 376, size: 256, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2828, file: !1677, line: 381, baseType: !127, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2828, file: !1677, line: 384, baseType: !565, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2828, file: !1677, line: 389, baseType: !565, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2828, file: !1677, line: 392, baseType: !565, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2568, file: !1677, line: 875, baseType: !405, size: 128, offset: 9088)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2568, file: !1677, line: 877, baseType: !2836, size: 320, offset: 9216)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2837, line: 86, size: 320, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2838 = !{!2839, !2840, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2836, file: !2837, line: 87, baseType: !85, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2836, file: !2837, line: 88, baseType: !405, size: 128, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2836, file: !2837, line: 89, baseType: !405, size: 128, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2568, file: !1677, line: 878, baseType: !587, size: 192, align: 64, offset: 9536)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2568, file: !1677, line: 881, baseType: !1472, size: 64, offset: 9728)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2568, file: !1677, line: 882, baseType: !1472, size: 64, offset: 9792)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2568, file: !1677, line: 884, baseType: !85, size: 32, offset: 9856)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2568, file: !1677, line: 885, baseType: !85, size: 32, offset: 9888)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2568, file: !1677, line: 886, baseType: !85, size: 32, offset: 9920)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2568, file: !1677, line: 888, baseType: !85, size: 32, offset: 9952)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2568, file: !1677, line: 890, baseType: !127, size: 64, offset: 9984)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2568, file: !1677, line: 893, baseType: !7, size: 32, offset: 10048)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2568, file: !1677, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2568, file: !1677, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2568, file: !1677, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2568, file: !1677, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2568, file: !1677, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2568, file: !1677, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2568, file: !1677, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2568, file: !1677, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2568, file: !1677, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2568, file: !1677, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2568, file: !1677, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2568, file: !1677, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2568, file: !1677, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2568, file: !1677, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2568, file: !1677, line: 969, baseType: !127, size: 64, offset: 10176)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2568, file: !1677, line: 971, baseType: !2867, size: 448, offset: 10240)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2868)
!2868 = !{!2869, !2870, !2875}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2867, file: !51, line: 26, baseType: !127, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2867, file: !51, line: 27, baseType: !2871, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!133, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2867, file: !51, line: 28, baseType: !2876, size: 320, offset: 128)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2867, file: !51, line: 28, size: 320, elements: !2877)
!2877 = !{!2878, !2888, !2913}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2876, file: !51, line: 37, baseType: !2879, size: 320)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !51, line: 30, size: 320, elements: !2880)
!2880 = !{!2881, !2883, !2884, !2885, !2886, !2887}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2879, file: !51, line: 31, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2879, file: !51, line: 32, baseType: !185, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2879, file: !51, line: 33, baseType: !185, size: 32, offset: 96)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2879, file: !51, line: 34, baseType: !185, size: 32, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2879, file: !51, line: 35, baseType: !563, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2879, file: !51, line: 36, baseType: !2882, size: 64, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2876, file: !51, line: 47, baseType: !2889, size: 192)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !51, line: 39, size: 192, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2912}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2889, file: !51, line: 40, baseType: !2725, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2889, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !51, line: 42, baseType: !2894, size: 64, offset: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2889, file: !51, line: 42, size: 64, elements: !2895)
!2895 = !{!2896, !2904}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2894, file: !51, line: 43, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2899, line: 7, size: 128, elements: !2900)
!2899 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2900 = !{!2901, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2898, file: !2899, line: 8, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !452, line: 93, baseType: !370)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2898, file: !2899, line: 9, baseType: !370, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2894, file: !51, line: 44, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2907, line: 7, size: 64, elements: !2908)
!2907 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2908 = !{!2909, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2906, file: !2907, line: 8, baseType: !2910, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2907, line: 5, baseType: !580)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2906, file: !2907, line: 9, baseType: !580, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2889, file: !51, line: 46, baseType: !563, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2876, file: !51, line: 55, baseType: !2914, size: 256)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !51, line: 49, size: 256, elements: !2915)
!2915 = !{!2916, !2919, !2920, !2921, !2922}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2914, file: !51, line: 50, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2914, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2914, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2914, file: !51, line: 53, baseType: !127, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2914, file: !51, line: 54, baseType: !127, size: 64, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2568, file: !1677, line: 973, baseType: !2924, size: 32, offset: 10688)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !125, line: 27, baseType: !2925)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !452, line: 28, baseType: !85)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2568, file: !1677, line: 974, baseType: !2924, size: 32, offset: 10720)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2568, file: !1677, line: 978, baseType: !127, size: 64, offset: 10752)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2568, file: !1677, line: 987, baseType: !2567, size: 64, offset: 10816)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2568, file: !1677, line: 990, baseType: !2567, size: 64, offset: 10880)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2568, file: !1677, line: 995, baseType: !405, size: 128, offset: 10944)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2568, file: !1677, line: 996, baseType: !405, size: 128, offset: 11072)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2568, file: !1677, line: 997, baseType: !2567, size: 64, offset: 11200)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2568, file: !1677, line: 1005, baseType: !405, size: 128, offset: 11264)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2568, file: !1677, line: 1006, baseType: !405, size: 128, offset: 11392)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2568, file: !1677, line: 1009, baseType: !481, size: 64, offset: 11520)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2568, file: !1677, line: 1010, baseType: !2937, size: 512, offset: 11584)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 512, elements: !503)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2568, file: !1677, line: 1011, baseType: !405, size: 128, offset: 12096)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2568, file: !1677, line: 1012, baseType: !405, size: 128, offset: 12224)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2568, file: !1677, line: 1014, baseType: !1848, size: 64, offset: 12352)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2568, file: !1677, line: 1017, baseType: !1992, size: 64, offset: 12416)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2568, file: !1677, line: 1020, baseType: !1992, size: 64, offset: 12480)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2568, file: !1677, line: 1023, baseType: !123, size: 64, offset: 12544)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2568, file: !1677, line: 1025, baseType: !563, size: 64, offset: 12608)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2568, file: !1677, line: 1026, baseType: !563, size: 64, offset: 12672)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2568, file: !1677, line: 1031, baseType: !563, size: 64, offset: 12736)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2568, file: !1677, line: 1032, baseType: !2948, size: 192, offset: 12800)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1677, line: 324, size: 192, elements: !2949)
!2949 = !{!2950, !2951, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2948, file: !1677, line: 326, baseType: !563, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2948, file: !1677, line: 327, baseType: !563, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2948, file: !1677, line: 328, baseType: !372, size: 32, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2568, file: !1677, line: 1041, baseType: !127, size: 64, offset: 12992)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2568, file: !1677, line: 1042, baseType: !127, size: 64, offset: 13056)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2568, file: !1677, line: 1045, baseType: !563, size: 64, offset: 13120)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2568, file: !1677, line: 1048, baseType: !563, size: 64, offset: 13184)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2568, file: !1677, line: 1051, baseType: !127, size: 64, offset: 13248)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2568, file: !1677, line: 1052, baseType: !127, size: 64, offset: 13312)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2568, file: !1677, line: 1055, baseType: !2960, size: 640, offset: 13376)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2961, line: 132, size: 640, elements: !2962)
!2961 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2962 = !{!2963, !2969, !2970}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2960, file: !2961, line: 133, baseType: !2964, size: 576)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2965, size: 576, elements: !477)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2961, line: 117, size: 192, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2965, file: !2961, line: 118, baseType: !563, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2965, file: !2961, line: 119, baseType: !2734, size: 128, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2960, file: !2961, line: 134, baseType: !7, size: 32, offset: 576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2960, file: !2961, line: 135, baseType: !7, size: 32, offset: 608)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2568, file: !1677, line: 1058, baseType: !2972, size: 448, offset: 14016)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2961, line: 144, size: 448, elements: !2973)
!2973 = !{!2974, !2975, !2976}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2972, file: !2961, line: 145, baseType: !427, size: 128, align: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2972, file: !2961, line: 146, baseType: !358, size: 256, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2972, file: !2961, line: 147, baseType: !7, size: 32, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2568, file: !1677, line: 1064, baseType: !536, size: 64, offset: 14464)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2568, file: !1677, line: 1067, baseType: !536, size: 64, offset: 14528)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2568, file: !1677, line: 1070, baseType: !536, size: 64, offset: 14592)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2568, file: !1677, line: 1074, baseType: !572, size: 64, offset: 14656)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2568, file: !1677, line: 1084, baseType: !2982, size: 128, offset: 14720)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !2983)
!2983 = !{!2984}
!2984 = !DISubrange(count: 16)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2568, file: !1677, line: 1086, baseType: !2986, size: 64, offset: 14848)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1677, line: 55, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2568, file: !1677, line: 1089, baseType: !2989, size: 64, offset: 14912)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2990, line: 12, size: 64, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2989, file: !2990, line: 13, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2990, line: 8, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2568, file: !1677, line: 1090, baseType: !2996, size: 128, offset: 14976)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2997, line: 13, size: 128, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2998 = !{!2999}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2996, file: !2997, line: 14, baseType: !405, size: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2568, file: !1677, line: 1097, baseType: !3001, size: 64, offset: 15104)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1677, line: 50, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2568, file: !1677, line: 1100, baseType: !3004, size: 64, offset: 15168)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1677, line: 1100, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2568, file: !1677, line: 1103, baseType: !3007, size: 64, offset: 15232)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1677, line: 53, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2568, file: !1677, line: 1107, baseType: !3010, size: 64, offset: 15296)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1677, line: 56, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2568, file: !1677, line: 1110, baseType: !3013, size: 64, offset: 15360)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3015, line: 93, size: 8768, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3064, !3073, !3074, !3076, !3077, !3078, !3081, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3119, !3120, !3127, !3137, !3140, !3141, !3144, !3145, !3146, !3147, !3148, !3149}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3014, file: !3015, line: 94, baseType: !485, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3014, file: !3015, line: 95, baseType: !385, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3014, file: !3015, line: 96, baseType: !85, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3014, file: !3015, line: 97, baseType: !85, size: 32, offset: 96)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3014, file: !3015, line: 98, baseType: !405, size: 128, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3014, file: !3015, line: 100, baseType: !507, size: 192, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3014, file: !3015, line: 103, baseType: !2567, size: 64, offset: 448)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3014, file: !3015, line: 106, baseType: !3025, size: 192, offset: 512)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !742, line: 32, size: 192, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3025, file: !742, line: 33, baseType: !405, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3025, file: !742, line: 34, baseType: !3029, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3030, line: 25, baseType: !3031)
!3030 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3030, line: 23, size: 64, elements: !3032)
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3031, file: !3030, line: 24, baseType: !221, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3014, file: !3015, line: 109, baseType: !494, size: 64, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3014, file: !3015, line: 112, baseType: !85, size: 32, offset: 768)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3014, file: !3015, line: 114, baseType: !85, size: 32, offset: 800)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3014, file: !3015, line: 115, baseType: !2567, size: 64, offset: 832)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3014, file: !3015, line: 118, baseType: !85, size: 32, offset: 896)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3014, file: !3015, line: 119, baseType: !7, size: 32, offset: 928)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3014, file: !3015, line: 121, baseType: !3041, size: 64, offset: 960)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3015, line: 80, size: 448, elements: !3043)
!3043 = !{!3044, !3045, !3051}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3042, file: !3015, line: 81, baseType: !385, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3042, file: !3015, line: 82, baseType: !3046, size: 128, offset: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3015, line: 75, size: 128, elements: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3046, file: !3015, line: 76, baseType: !2567, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3046, file: !3015, line: 77, baseType: !3050, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3042, file: !3015, line: 83, baseType: !1849, size: 256, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3014, file: !3015, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3014, file: !3015, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3014, file: !3015, line: 138, baseType: !7, size: 32, offset: 1056)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3014, file: !3015, line: 139, baseType: !405, size: 128, offset: 1088)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3014, file: !3015, line: 142, baseType: !2678, size: 512, offset: 1216)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3014, file: !3015, line: 143, baseType: !2686, size: 64, offset: 1728)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3014, file: !3015, line: 150, baseType: !3059, size: 256, offset: 1792)
!3059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3060, size: 256, elements: !236)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3015, line: 38, size: 128, elements: !3061)
!3061 = !{!3062, !3063}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3060, file: !3015, line: 39, baseType: !563, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3060, file: !3015, line: 40, baseType: !563, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3014, file: !3015, line: 156, baseType: !3065, size: 192, offset: 2048)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3015, line: 66, size: 192, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3065, file: !3015, line: 67, baseType: !3068, size: 192)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3015, line: 47, size: 192, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3068, file: !3015, line: 48, baseType: !364, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3068, file: !3015, line: 49, baseType: !364, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3068, file: !3015, line: 50, baseType: !364, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3014, file: !3015, line: 160, baseType: !2960, size: 640, offset: 2240)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3014, file: !3015, line: 163, baseType: !3075, size: 256, offset: 2880)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 256, elements: !503)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3014, file: !3015, line: 169, baseType: !481, size: 64, offset: 3136)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3014, file: !3015, line: 172, baseType: !85, size: 32, offset: 3200)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3014, file: !3015, line: 174, baseType: !3079, size: 64, offset: 3264)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3015, line: 174, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3014, file: !3015, line: 185, baseType: !3082, size: 64, offset: 3328)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !782, line: 860, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !782, line: 853, size: 64, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3083, file: !782, line: 858, baseType: !781, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3083, file: !782, line: 859, baseType: !437, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3014, file: !3015, line: 186, baseType: !563, size: 64, offset: 3392)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3014, file: !3015, line: 186, baseType: !563, size: 64, offset: 3456)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3014, file: !3015, line: 186, baseType: !563, size: 64, offset: 3520)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3014, file: !3015, line: 186, baseType: !563, size: 64, offset: 3584)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3014, file: !3015, line: 187, baseType: !563, size: 64, offset: 3648)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3014, file: !3015, line: 188, baseType: !563, size: 64, offset: 3712)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3014, file: !3015, line: 189, baseType: !2948, size: 192, offset: 3776)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3014, file: !3015, line: 190, baseType: !127, size: 64, offset: 3968)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3014, file: !3015, line: 190, baseType: !127, size: 64, offset: 4032)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3014, file: !3015, line: 190, baseType: !127, size: 64, offset: 4096)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3014, file: !3015, line: 190, baseType: !127, size: 64, offset: 4160)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3014, file: !3015, line: 191, baseType: !127, size: 64, offset: 4224)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3014, file: !3015, line: 191, baseType: !127, size: 64, offset: 4288)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3014, file: !3015, line: 191, baseType: !127, size: 64, offset: 4352)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3014, file: !3015, line: 191, baseType: !127, size: 64, offset: 4416)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3014, file: !3015, line: 192, baseType: !127, size: 64, offset: 4480)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3014, file: !3015, line: 192, baseType: !127, size: 64, offset: 4544)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3014, file: !3015, line: 192, baseType: !127, size: 64, offset: 4608)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3014, file: !3015, line: 192, baseType: !127, size: 64, offset: 4672)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3014, file: !3015, line: 193, baseType: !127, size: 64, offset: 4736)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3014, file: !3015, line: 193, baseType: !127, size: 64, offset: 4800)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3014, file: !3015, line: 194, baseType: !3109, size: 448, offset: 4864)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3110, line: 12, size: 448, elements: !3111)
!3110 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3109, file: !3110, line: 15, baseType: !563, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3109, file: !3110, line: 17, baseType: !563, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3109, file: !3110, line: 19, baseType: !563, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3109, file: !3110, line: 21, baseType: !563, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3109, file: !3110, line: 29, baseType: !563, size: 64, offset: 256)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3109, file: !3110, line: 35, baseType: !563, size: 64, offset: 320)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3109, file: !3110, line: 44, baseType: !563, size: 64, offset: 384)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3014, file: !3015, line: 202, baseType: !565, size: 64, offset: 5312)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3014, file: !3015, line: 213, baseType: !3121, size: 2048, offset: 5376)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3122, size: 2048, elements: !2983)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3123, line: 43, size: 128, elements: !3124)
!3123 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3122, file: !3123, line: 44, baseType: !973, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3122, file: !3123, line: 45, baseType: !973, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3014, file: !3015, line: 216, baseType: !3128, size: 448, offset: 7424)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3015, line: 30, size: 448, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3128, file: !3015, line: 31, baseType: !85, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3128, file: !3015, line: 32, baseType: !133, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3128, file: !3015, line: 33, baseType: !127, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3128, file: !3015, line: 34, baseType: !563, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3128, file: !3015, line: 34, baseType: !563, size: 64, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3128, file: !3015, line: 35, baseType: !127, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3128, file: !3015, line: 35, baseType: !127, size: 64, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3014, file: !3015, line: 219, baseType: !3138, size: 64, offset: 7872)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3015, line: 219, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3014, file: !3015, line: 222, baseType: !7, size: 32, offset: 7936)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3014, file: !3015, line: 223, baseType: !3142, size: 64, offset: 8000)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3015, line: 223, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3014, file: !3015, line: 230, baseType: !653, size: 8, offset: 8064)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3014, file: !3015, line: 231, baseType: !279, size: 16, offset: 8080)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3014, file: !3015, line: 232, baseType: !279, size: 16, offset: 8096)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3014, file: !3015, line: 234, baseType: !1472, size: 64, offset: 8128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3014, file: !3015, line: 237, baseType: !358, size: 256, offset: 8192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3014, file: !3015, line: 243, baseType: !595, size: 320, offset: 8448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2568, file: !1677, line: 1111, baseType: !3151, size: 64, offset: 15424)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3015, line: 20, size: 16640, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3152, file: !3015, line: 21, baseType: !437, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3152, file: !3015, line: 22, baseType: !485, size: 32, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3152, file: !3015, line: 23, baseType: !507, size: 192, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3152, file: !3015, line: 24, baseType: !3158, size: 16384, offset: 256)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3159, size: 16384, elements: !1116)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !742, line: 51, size: 256, elements: !3160)
!3160 = !{!3161}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3159, file: !742, line: 52, baseType: !3162, size: 256)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !742, line: 37, size: 256, elements: !3163)
!3163 = !{!3164, !3171, !3172, !3176}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3162, file: !742, line: 39, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3166, line: 83, baseType: !3167)
!3166 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3166, line: 82, baseType: !3169)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !85}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3162, file: !742, line: 40, baseType: !127, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3162, file: !742, line: 46, baseType: !3173, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3166, line: 86, baseType: !3174)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3166, line: 85, baseType: !2196)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3162, file: !742, line: 48, baseType: !3029, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2568, file: !1677, line: 1112, baseType: !3029, size: 64, offset: 15488)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2568, file: !1677, line: 1113, baseType: !3029, size: 64, offset: 15552)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2568, file: !1677, line: 1115, baseType: !3029, size: 64, offset: 15616)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2568, file: !1677, line: 1116, baseType: !3025, size: 192, offset: 15680)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2568, file: !1677, line: 1117, baseType: !127, size: 64, offset: 15872)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2568, file: !1677, line: 1118, baseType: !971, size: 64, offset: 15936)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2568, file: !1677, line: 1119, baseType: !7, size: 32, offset: 16000)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2568, file: !1677, line: 1121, baseType: !430, size: 64, offset: 16064)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2568, file: !1677, line: 1125, baseType: !3186, size: 64, offset: 16128)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1677, line: 43, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2568, file: !1677, line: 1127, baseType: !526, size: 32, offset: 16192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2568, file: !1677, line: 1128, baseType: !7, size: 32, offset: 16224)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2568, file: !1677, line: 1130, baseType: !3191, size: 128, offset: 16256)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3192, line: 37, size: 128, elements: !3193)
!3192 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3193 = !{!3194, !3195, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3191, file: !3192, line: 38, baseType: !85, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3191, file: !3192, line: 39, baseType: !385, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3191, file: !3192, line: 40, baseType: !3197, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3192, line: 24, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2568, file: !1677, line: 1131, baseType: !3200, size: 256, offset: 16384)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3201, line: 12, size: 256, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3202 = !{!3203, !3204, !3205, !3206}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3200, file: !3201, line: 13, baseType: !664, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3200, file: !3201, line: 14, baseType: !127, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3200, file: !3201, line: 15, baseType: !127, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3200, file: !3201, line: 16, baseType: !653, size: 8, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2568, file: !1677, line: 1134, baseType: !563, size: 64, offset: 16640)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2568, file: !1677, line: 1135, baseType: !563, size: 64, offset: 16704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2568, file: !1677, line: 1138, baseType: !437, size: 32, offset: 16768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2568, file: !1677, line: 1141, baseType: !372, size: 32, offset: 16800)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2568, file: !1677, line: 1143, baseType: !3212, size: 64, offset: 16832)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1677, line: 735, size: 64, elements: !3213)
!3213 = !{!3214}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3212, file: !1677, line: 736, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2568, file: !1677, line: 1147, baseType: !1186, size: 128, offset: 16896)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2568, file: !1677, line: 1149, baseType: !2567, size: 64, offset: 17024)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2568, file: !1677, line: 1151, baseType: !3219, size: 64, offset: 17088)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1677, line: 1151, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2568, file: !1677, line: 1188, baseType: !123, size: 64, offset: 17152)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2568, file: !1677, line: 1191, baseType: !3223, size: 64, offset: 17216)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1677, line: 44, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2568, file: !1677, line: 1194, baseType: !3226, size: 64, offset: 17280)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1677, line: 45, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2568, file: !1677, line: 1197, baseType: !3229, size: 64, offset: 17344)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1677, line: 61, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2568, file: !1677, line: 1199, baseType: !3232, size: 64, offset: 17408)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3234, line: 99, size: 128, elements: !3235)
!3234 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3233, file: !3234, line: 100, baseType: !362, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3233, file: !3234, line: 101, baseType: !385, size: 32, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3233, file: !3234, line: 103, baseType: !195, size: 16, offset: 96)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2568, file: !1677, line: 1202, baseType: !3240, size: 64, offset: 17472)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1677, line: 48, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2568, file: !1677, line: 1205, baseType: !127, size: 64, offset: 17536)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2568, file: !1677, line: 1206, baseType: !3244, size: 64, offset: 17600)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !742, line: 14, baseType: !3246)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !742, line: 12, size: 384, elements: !3247)
!3247 = !{!3248}
!3248 = !DIDerivedType(tag: DW_TAG_member, scope: !3246, file: !742, line: 13, baseType: !3249, size: 384)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3246, file: !742, line: 13, size: 384, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3249, file: !742, line: 13, baseType: !85, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3249, file: !742, line: 13, baseType: !85, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3249, file: !742, line: 13, baseType: !85, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3249, file: !742, line: 13, baseType: !3255, size: 256, offset: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3256, line: 37, size: 256, elements: !3257)
!3256 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3257 = !{!3258, !3263, !3276, !3282, !3291, !3318, !3323}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3255, file: !3256, line: 42, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 39, size: 64, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3259, file: !3256, line: 40, baseType: !2925, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3259, file: !3256, line: 41, baseType: !532, size: 32, offset: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3255, file: !3256, line: 50, baseType: !3264, size: 192)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 45, size: 192, elements: !3265)
!3265 = !{!3266, !3268, !3269, !3275}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3264, file: !3256, line: 46, baseType: !3267, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !452, line: 95, baseType: !85)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3264, file: !3256, line: 47, baseType: !85, size: 32, offset: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3264, file: !3256, line: 48, baseType: !3270, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3256, line: 11, baseType: !3271)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3256, line: 8, size: 64, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3271, file: !3256, line: 9, baseType: !85, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3271, file: !3256, line: 10, baseType: !123, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3264, file: !3256, line: 49, baseType: !85, size: 32, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3255, file: !3256, line: 57, baseType: !3277, size: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 53, size: 128, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3277, file: !3256, line: 54, baseType: !2925, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3277, file: !3256, line: 55, baseType: !532, size: 32, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3277, file: !3256, line: 56, baseType: !3270, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3255, file: !3256, line: 66, baseType: !3283, size: 256)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 60, size: 256, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3290}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3283, file: !3256, line: 61, baseType: !2925, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3283, file: !3256, line: 62, baseType: !532, size: 32, offset: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3283, file: !3256, line: 63, baseType: !85, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3283, file: !3256, line: 64, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !452, line: 94, baseType: !970)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3283, file: !3256, line: 65, baseType: !3289, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3255, file: !3256, line: 105, baseType: !3292, size: 256)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 69, size: 256, elements: !3293)
!3293 = !{!3294, !3295}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3292, file: !3256, line: 70, baseType: !123, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, scope: !3292, file: !3256, line: 79, baseType: !3296, size: 192, offset: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3292, file: !3256, line: 79, size: 192, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3307, !3312}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3296, file: !3256, line: 81, baseType: !85, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3296, file: !3256, line: 86, baseType: !279, size: 16)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3296, file: !3256, line: 92, baseType: !3301, size: 192)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3296, file: !3256, line: 88, size: 192, elements: !3302)
!3302 = !{!3303, !3305, !3306}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3301, file: !3256, line: 89, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !2721)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3301, file: !3256, line: 90, baseType: !123, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3301, file: !3256, line: 91, baseType: !123, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3296, file: !3256, line: 97, baseType: !3308, size: 96)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3296, file: !3256, line: 94, size: 96, elements: !3309)
!3309 = !{!3310, !3311}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3308, file: !3256, line: 95, baseType: !3304, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3308, file: !3256, line: 96, baseType: !187, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3296, file: !3256, line: 103, baseType: !3313, size: 128)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3296, file: !3256, line: 99, size: 128, elements: !3314)
!3314 = !{!3315, !3316, !3317}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3313, file: !3256, line: 100, baseType: !127, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3313, file: !3256, line: 101, baseType: !187, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3313, file: !3256, line: 102, baseType: !187, size: 32, offset: 96)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3255, file: !3256, line: 111, baseType: !3319, size: 128)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 108, size: 128, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3319, file: !3256, line: 109, baseType: !133, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3319, file: !3256, line: 110, baseType: !85, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3255, file: !3256, line: 118, baseType: !3324, size: 128)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3256, line: 114, size: 128, elements: !3325)
!3325 = !{!3326, !3327, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3324, file: !3256, line: 115, baseType: !123, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3324, file: !3256, line: 116, baseType: !85, size: 32, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3324, file: !3256, line: 117, baseType: !7, size: 32, offset: 96)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2568, file: !1677, line: 1208, baseType: !3109, size: 448, offset: 17664)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2568, file: !1677, line: 1215, baseType: !563, size: 64, offset: 18112)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2568, file: !1677, line: 1217, baseType: !563, size: 64, offset: 18176)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2568, file: !1677, line: 1219, baseType: !563, size: 64, offset: 18240)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2568, file: !1677, line: 1223, baseType: !3334, size: 64, offset: 18304)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3335, line: 99, baseType: !3336)
!3335 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3335, line: 99, size: 64, elements: !3337)
!3337 = !{!3338}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3336, file: !3335, line: 99, baseType: !221, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2568, file: !1677, line: 1225, baseType: !781, size: 32, offset: 18368)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2568, file: !1677, line: 1226, baseType: !85, size: 32, offset: 18400)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2568, file: !1677, line: 1227, baseType: !85, size: 32, offset: 18432)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2568, file: !1677, line: 1231, baseType: !3343, size: 64, offset: 18496)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1677, line: 1231, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2568, file: !1677, line: 1233, baseType: !405, size: 128, offset: 18560)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2568, file: !1677, line: 1240, baseType: !3347, size: 64, offset: 18688)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1677, line: 62, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2568, file: !1677, line: 1242, baseType: !3350, size: 64, offset: 18752)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1677, line: 1242, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2568, file: !1677, line: 1244, baseType: !405, size: 128, offset: 18816)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2568, file: !1677, line: 1245, baseType: !3354, size: 64, offset: 18944)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1677, line: 51, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2568, file: !1677, line: 1246, baseType: !358, size: 256, offset: 19008)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2568, file: !1677, line: 1247, baseType: !7, size: 32, offset: 19264)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2568, file: !1677, line: 1250, baseType: !3359, size: 64, offset: 19328)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1677, line: 57, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2568, file: !1677, line: 1251, baseType: !358, size: 256, offset: 19392)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2568, file: !1677, line: 1252, baseType: !405, size: 128, offset: 19648)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2568, file: !1677, line: 1259, baseType: !1675, size: 64, offset: 19776)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2568, file: !1677, line: 1260, baseType: !279, size: 16, offset: 19840)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2568, file: !1677, line: 1261, baseType: !279, size: 16, offset: 19856)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2568, file: !1677, line: 1314, baseType: !3367, size: 64, offset: 19904)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3369, line: 62, size: 256, align: 256, elements: !3370)
!3369 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3368, file: !3369, line: 75, baseType: !187, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3368, file: !3369, line: 90, baseType: !187, size: 32, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3368, file: !3369, line: 112, baseType: !564, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3368, file: !3369, line: 132, baseType: !187, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3368, file: !3369, line: 140, baseType: !187, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3368, file: !3369, line: 149, baseType: !187, size: 32, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3368, file: !3369, line: 154, baseType: !3378, offset: 224)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !522)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2568, file: !1677, line: 1315, baseType: !185, size: 32, offset: 19968)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2568, file: !1677, line: 1316, baseType: !185, size: 32, offset: 20000)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2568, file: !1677, line: 1321, baseType: !127, size: 64, offset: 20032)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2568, file: !1677, line: 1325, baseType: !85, size: 32, offset: 20096)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2568, file: !1677, line: 1326, baseType: !85, size: 32, offset: 20128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2568, file: !1677, line: 1327, baseType: !85, size: 32, offset: 20160)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2568, file: !1677, line: 1328, baseType: !85, size: 32, offset: 20192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2568, file: !1677, line: 1329, baseType: !427, size: 128, align: 64, offset: 20224)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2568, file: !1677, line: 1332, baseType: !3388, size: 128, offset: 20352)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3389, line: 51, size: 128, elements: !3390)
!3389 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3390 = !{!3391, !3396, !3397}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3388, file: !3389, line: 60, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3393, line: 7, size: 64, elements: !3394)
!3393 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3392, file: !3393, line: 12, baseType: !2795, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3388, file: !3389, line: 63, baseType: !653, size: 8, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3388, file: !3389, line: 70, baseType: !653, size: 8, offset: 72)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2568, file: !1677, line: 1335, baseType: !3399, size: 64, offset: 20480)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1677, line: 59, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2568, file: !1677, line: 1337, baseType: !3402, size: 128, offset: 20544)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3389, line: 39, size: 128, elements: !3403)
!3403 = !{!3404, !3405, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3402, file: !3389, line: 40, baseType: !1204, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3402, file: !3389, line: 42, baseType: !187, size: 32, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3402, file: !3389, line: 43, baseType: !187, size: 32, offset: 96)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2568, file: !1677, line: 1340, baseType: !3408, size: 64, offset: 20672)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1677, line: 69, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2568, file: !1677, line: 1351, baseType: !85, size: 32, offset: 20736)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2568, file: !1677, line: 1352, baseType: !85, size: 32, offset: 20768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2568, file: !1677, line: 1354, baseType: !127, size: 64, offset: 20800)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2568, file: !1677, line: 1364, baseType: !563, size: 64, offset: 20864)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2568, file: !1677, line: 1365, baseType: !563, size: 64, offset: 20928)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2568, file: !1677, line: 1412, baseType: !127, size: 64, offset: 20992)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2568, file: !1677, line: 1453, baseType: !3417, size: 64, offset: 21056)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1677, line: 1453, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2568, file: !1677, line: 1457, baseType: !3420, size: 64, offset: 21120)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3422)
!3422 = !{!3423, !3424, !3443, !3446, !3447, !3480, !3490}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3421, file: !57, line: 62, baseType: !56, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !57, line: 64, baseType: !3425, size: 192, offset: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3421, file: !57, line: 64, size: 192, elements: !3426)
!3426 = !{!3427, !3438}
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !57, line: 65, baseType: !3428, size: 192)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3425, file: !57, line: 65, size: 192, elements: !3429)
!3429 = !{!3430, !3437}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3428, file: !57, line: 66, baseType: !3431, size: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3432, line: 50, size: 128, elements: !3433)
!3432 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3431, file: !3432, line: 52, baseType: !127, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3431, file: !3432, line: 54, baseType: !7, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3431, file: !3432, line: 55, baseType: !7, size: 32, offset: 96)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3428, file: !57, line: 67, baseType: !127, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !57, line: 70, baseType: !3439, size: 192)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3425, file: !57, line: 70, size: 192, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3439, file: !57, line: 71, baseType: !427, size: 128, align: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3439, file: !57, line: 72, baseType: !127, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3421, file: !57, line: 76, baseType: !3444, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3421, file: !57, line: 77, baseType: !127, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3421, file: !57, line: 79, baseType: !3448, size: 64, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3432, line: 25, size: 256, elements: !3450)
!3450 = !{!3451, !3457, !3461}
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !3449, file: !3432, line: 26, baseType: !3452, size: 128)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3449, file: !3432, line: 26, size: 128, elements: !3453)
!3453 = !{!3454, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3452, file: !3432, line: 27, baseType: !3455, size: 128)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !2983)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3452, file: !3432, line: 28, baseType: !3455, size: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3449, file: !3432, line: 31, baseType: !3458, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3460)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3432, line: 23, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, scope: !3449, file: !3432, line: 33, baseType: !3462, size: 64, offset: 192)
!3462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3449, file: !3432, line: 33, size: 64, elements: !3463)
!3463 = !{!3464, !3470, !3475}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3462, file: !3432, line: 38, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3462, file: !3432, line: 34, size: 64, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3465, file: !3432, line: 35, baseType: !580, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3465, file: !3432, line: 36, baseType: !200, size: 8, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3465, file: !3432, line: 37, baseType: !200, size: 8, offset: 40)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3462, file: !3432, line: 42, baseType: !3471, size: 16)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3462, file: !3432, line: 39, size: 16, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3471, file: !3432, line: 40, baseType: !200, size: 8)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3471, file: !3432, line: 41, baseType: !200, size: 8, offset: 8)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3462, file: !3432, line: 46, baseType: !3476, size: 16)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3462, file: !3432, line: 43, size: 16, elements: !3477)
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3476, file: !3432, line: 44, baseType: !200, size: 8)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3476, file: !3432, line: 45, baseType: !200, size: 8, offset: 8)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3421, file: !57, line: 81, baseType: !3481, size: 64, offset: 448)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3482, file: !57, line: 86, baseType: !3444, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3482, file: !57, line: 87, baseType: !127, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3482, file: !57, line: 88, baseType: !127, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3482, file: !57, line: 89, baseType: !127, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3482, file: !57, line: 90, baseType: !653, size: 8, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3482, file: !57, line: 92, baseType: !3481, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3421, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2568, file: !1677, line: 1463, baseType: !3492, offset: 21184)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1677, line: 739, elements: !1493)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2568, file: !1677, line: 1470, baseType: !427, size: 128, align: 64, offset: 21184)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2568, file: !1677, line: 1471, baseType: !485, size: 32, offset: 21312)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2568, file: !1677, line: 1472, baseType: !85, size: 32, offset: 21344)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2568, file: !1677, line: 1474, baseType: !2567, size: 64, offset: 21376)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2568, file: !1677, line: 1475, baseType: !2092, size: 320, offset: 21440)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2568, file: !1677, line: 1478, baseType: !3499, size: 64, offset: 21760)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1677, line: 1478, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2568, file: !1677, line: 1482, baseType: !485, size: 32, offset: 21824)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2568, file: !1677, line: 1489, baseType: !123, size: 64, offset: 21888)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2568, file: !1677, line: 1504, baseType: !123, size: 64, offset: 21952)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2568, file: !1677, line: 1505, baseType: !564, size: 64, offset: 22016)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2568, file: !1677, line: 1506, baseType: !563, size: 64, offset: 22080)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2568, file: !1677, line: 1507, baseType: !564, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2568, file: !1677, line: 1508, baseType: !564, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2568, file: !1677, line: 1509, baseType: !564, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2568, file: !1677, line: 1510, baseType: !427, size: 128, align: 64, offset: 22208)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2568, file: !1677, line: 1511, baseType: !85, size: 32, offset: 22336)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2568, file: !1677, line: 1515, baseType: !3512, size: 64, offset: 22400)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !422, line: 56, size: 64, elements: !3513)
!3513 = !{!3514}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3512, file: !422, line: 57, baseType: !425, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2568, file: !1677, line: 1518, baseType: !3512, size: 64, offset: 22464)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2568, file: !1677, line: 1528, baseType: !427, size: 128, align: 64, offset: 22528)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2568, file: !1677, line: 1552, baseType: !3518, size: 35328, offset: 23040)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3519, line: 430, size: 35328, elements: !3520)
!3519 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3520 = !{!3521, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3550, !3551, !3552, !3553, !3554, !3555, !3558, !3559, !3560, !3561}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3518, file: !3519, line: 432, baseType: !3522, size: 192)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3523, size: 192, elements: !477)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3524, line: 16, size: 64, elements: !3525)
!3524 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3523, file: !3524, line: 17, baseType: !193, size: 16)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3523, file: !3524, line: 18, baseType: !193, size: 16, offset: 16)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3523, file: !3524, line: 19, baseType: !193, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3523, file: !3524, line: 19, baseType: !193, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3523, file: !3524, line: 19, baseType: !193, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3523, file: !3524, line: 19, baseType: !193, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3523, file: !3524, line: 19, baseType: !193, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3523, file: !3524, line: 20, baseType: !193, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3523, file: !3524, line: 20, baseType: !193, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3523, file: !3524, line: 20, baseType: !193, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3523, file: !3524, line: 20, baseType: !193, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3523, file: !3524, line: 20, baseType: !193, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3523, file: !3524, line: 20, baseType: !193, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3518, file: !3519, line: 436, baseType: !127, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3518, file: !3519, line: 440, baseType: !195, size: 16, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3518, file: !3519, line: 441, baseType: !195, size: 16, offset: 272)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3518, file: !3519, line: 442, baseType: !195, size: 16, offset: 288)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3518, file: !3519, line: 443, baseType: !195, size: 16, offset: 304)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3518, file: !3519, line: 447, baseType: !127, size: 64, offset: 320)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3518, file: !3519, line: 448, baseType: !127, size: 64, offset: 384)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3518, file: !3519, line: 459, baseType: !3547, size: 256, offset: 448)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3548, size: 256, elements: !503)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3519, line: 428, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3518, file: !3519, line: 461, baseType: !127, size: 64, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3518, file: !3519, line: 463, baseType: !127, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3518, file: !3519, line: 465, baseType: !127, size: 64, offset: 832)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3518, file: !3519, line: 466, baseType: !127, size: 64, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3518, file: !3519, line: 467, baseType: !127, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3518, file: !3519, line: 473, baseType: !3556, size: 64, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3519, line: 10, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3518, file: !3519, line: 480, baseType: !127, size: 64, offset: 1088)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3518, file: !3519, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3518, file: !3519, line: 491, baseType: !185, size: 32, offset: 1184)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3518, file: !3519, line: 501, baseType: !3562, size: 33792, offset: 1536)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3563, line: 448, size: 33792, elements: !3564)
!3563 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3564 = !{!3565, !3566, !3567, !3727, !3728, !3734, !3735}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3562, file: !3563, line: 461, baseType: !7, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3562, file: !3563, line: 468, baseType: !127, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3562, file: !3563, line: 476, baseType: !3568, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3563, line: 356, size: 33280, align: 512, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3569, file: !3563, line: 358, baseType: !7, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3569, file: !3563, line: 361, baseType: !7, size: 32, offset: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3569, file: !3563, line: 364, baseType: !563, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3569, file: !3563, line: 367, baseType: !563, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3569, file: !3563, line: 370, baseType: !563, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3569, file: !3563, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3569, file: !3563, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3569, file: !3563, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3569, file: !3563, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3569, file: !3563, line: 397, baseType: !3581, size: 32768, offset: 512)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3563, line: 348, size: 32768, elements: !3582)
!3582 = !{!3583, !3598, !3633, !3710, !3723}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3581, file: !3563, line: 349, baseType: !3584, size: 896)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3563, line: 12, size: 896, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3597}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3584, file: !3563, line: 13, baseType: !185, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3584, file: !3563, line: 14, baseType: !185, size: 32, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3584, file: !3563, line: 15, baseType: !185, size: 32, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3584, file: !3563, line: 16, baseType: !185, size: 32, offset: 96)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3584, file: !3563, line: 17, baseType: !185, size: 32, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3584, file: !3563, line: 18, baseType: !185, size: 32, offset: 160)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3584, file: !3563, line: 19, baseType: !185, size: 32, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3584, file: !3563, line: 22, baseType: !3594, size: 640, offset: 224)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 640, elements: !3595)
!3595 = !{!3596}
!3596 = !DISubrange(count: 20)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3584, file: !3563, line: 25, baseType: !185, size: 32, offset: 864)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3581, file: !3563, line: 350, baseType: !3599, size: 4096, align: 128)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3563, line: 34, size: 4096, align: 128, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3620, !3621, !3622, !3624, !3626, !3628}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3599, file: !3563, line: 35, baseType: !193, size: 16)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3599, file: !3563, line: 36, baseType: !193, size: 16, offset: 16)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3599, file: !3563, line: 37, baseType: !193, size: 16, offset: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3599, file: !3563, line: 38, baseType: !193, size: 16, offset: 48)
!3605 = !DIDerivedType(tag: DW_TAG_member, scope: !3599, file: !3563, line: 39, baseType: !3606, size: 128, offset: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3599, file: !3563, line: 39, size: 128, elements: !3607)
!3607 = !{!3608, !3613}
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !3563, line: 40, baseType: !3609, size: 128)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3606, file: !3563, line: 40, size: 128, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3609, file: !3563, line: 41, baseType: !563, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3609, file: !3563, line: 42, baseType: !563, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !3563, line: 44, baseType: !3614, size: 128)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3606, file: !3563, line: 44, size: 128, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3614, file: !3563, line: 45, baseType: !185, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3614, file: !3563, line: 46, baseType: !185, size: 32, offset: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3614, file: !3563, line: 47, baseType: !185, size: 32, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3614, file: !3563, line: 48, baseType: !185, size: 32, offset: 96)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3599, file: !3563, line: 51, baseType: !185, size: 32, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3599, file: !3563, line: 52, baseType: !185, size: 32, offset: 224)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3599, file: !3563, line: 55, baseType: !3623, size: 1024, offset: 256)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 1024, elements: !257)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3599, file: !3563, line: 58, baseType: !3625, size: 2048, offset: 1280)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 2048, elements: !1116)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3599, file: !3563, line: 60, baseType: !3627, size: 384, offset: 3328)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 384, elements: !227)
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !3599, file: !3563, line: 62, baseType: !3629, size: 384, offset: 3712)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3599, file: !3563, line: 62, size: 384, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3629, file: !3563, line: 63, baseType: !3627, size: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3629, file: !3563, line: 64, baseType: !3627, size: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3581, file: !3563, line: 351, baseType: !3634, size: 1088)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3563, line: 79, size: 1088, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3709}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3634, file: !3563, line: 80, baseType: !185, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3634, file: !3563, line: 81, baseType: !185, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3634, file: !3563, line: 82, baseType: !185, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3634, file: !3563, line: 83, baseType: !185, size: 32, offset: 96)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3634, file: !3563, line: 84, baseType: !185, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3634, file: !3563, line: 85, baseType: !185, size: 32, offset: 160)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3634, file: !3563, line: 86, baseType: !185, size: 32, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3634, file: !3563, line: 88, baseType: !3594, size: 640, offset: 224)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3634, file: !3563, line: 89, baseType: !200, size: 8, offset: 864)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3634, file: !3563, line: 90, baseType: !200, size: 8, offset: 872)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3634, file: !3563, line: 91, baseType: !200, size: 8, offset: 880)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3634, file: !3563, line: 92, baseType: !200, size: 8, offset: 888)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3634, file: !3563, line: 93, baseType: !200, size: 8, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3634, file: !3563, line: 94, baseType: !200, size: 8, offset: 904)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3634, file: !3563, line: 95, baseType: !3651, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3653, line: 11, size: 128, elements: !3654)
!3653 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3652, file: !3653, line: 12, baseType: !133, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3652, file: !3653, line: 13, baseType: !3657, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3659, line: 103, size: 1344, elements: !3660)
!3659 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3689, !3690, !3691}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3658, file: !3659, line: 109, baseType: !127, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3658, file: !3659, line: 110, baseType: !127, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3658, file: !3659, line: 111, baseType: !127, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3658, file: !3659, line: 112, baseType: !127, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3658, file: !3659, line: 113, baseType: !127, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3658, file: !3659, line: 114, baseType: !127, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3658, file: !3659, line: 117, baseType: !127, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3658, file: !3659, line: 118, baseType: !127, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3658, file: !3659, line: 119, baseType: !127, size: 64, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3658, file: !3659, line: 120, baseType: !127, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3658, file: !3659, line: 121, baseType: !127, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3658, file: !3659, line: 122, baseType: !127, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3658, file: !3659, line: 123, baseType: !127, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3658, file: !3659, line: 124, baseType: !127, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3658, file: !3659, line: 125, baseType: !127, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3658, file: !3659, line: 139, baseType: !127, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3658, file: !3659, line: 142, baseType: !127, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !3659, line: 144, baseType: !3679, size: 64, offset: 1088)
!3679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3658, file: !3659, line: 144, size: 64, elements: !3680)
!3680 = !{!3681, !3682, !3683}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3679, file: !3659, line: 146, baseType: !193, size: 16)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3679, file: !3659, line: 148, baseType: !563, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3679, file: !3659, line: 150, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3659, line: 59, size: 64, elements: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3684, file: !3659, line: 61, baseType: !563, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3684, file: !3659, line: 63, baseType: !563, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3684, file: !3659, line: 65, baseType: !563, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !3659, line: 153, baseType: !127, size: 64, offset: 1152)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3658, file: !3659, line: 154, baseType: !127, size: 64, offset: 1216)
!3691 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !3659, line: 156, baseType: !3692, size: 64, offset: 1280)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3658, file: !3659, line: 156, size: 64, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3692, file: !3659, line: 158, baseType: !193, size: 16)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3692, file: !3659, line: 160, baseType: !563, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3692, file: !3659, line: 162, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3659, line: 69, size: 64, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3697, file: !3659, line: 71, baseType: !563, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3697, file: !3659, line: 73, baseType: !563, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3697, file: !3659, line: 75, baseType: !563, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3697, file: !3659, line: 77, baseType: !563, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3697, file: !3659, line: 80, baseType: !563, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3697, file: !3659, line: 83, baseType: !563, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3697, file: !3659, line: 86, baseType: !563, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3697, file: !3659, line: 88, baseType: !563, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3697, file: !3659, line: 93, baseType: !563, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3697, file: !3659, line: 100, baseType: !563, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3634, file: !3563, line: 96, baseType: !185, size: 32, offset: 1024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3581, file: !3563, line: 352, baseType: !3711, size: 4608, align: 512)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3563, line: 333, size: 4608, align: 512, elements: !3712)
!3712 = !{!3713, !3714, !3721}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3711, file: !3563, line: 334, baseType: !3599, size: 4096, align: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3711, file: !3563, line: 335, baseType: !3715, size: 512, offset: 4096)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3563, line: 312, size: 512, elements: !3716)
!3716 = !{!3717, !3718, !3719}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3715, file: !3563, line: 313, baseType: !563, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3715, file: !3563, line: 314, baseType: !563, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3715, file: !3563, line: 315, baseType: !3720, size: 384, offset: 128)
!3720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 384, elements: !640)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3711, file: !3563, line: 336, baseType: !3722, offset: 4608)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !522)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3581, file: !3563, line: 353, baseType: !3724, size: 32768)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 32768, elements: !3725)
!3725 = !{!3726}
!3726 = !DISubrange(count: 4096)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3562, file: !3563, line: 484, baseType: !3568, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3562, file: !3563, line: 491, baseType: !3729, size: 128, offset: 256)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3563, line: 404, size: 128, elements: !3730)
!3730 = !{!3731, !3732, !3733}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3729, file: !3563, line: 424, baseType: !563, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3729, file: !3563, line: 432, baseType: !7, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3729, file: !3563, line: 440, baseType: !7, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3562, file: !3563, line: 498, baseType: !3729, size: 128, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3562, file: !3563, line: 508, baseType: !3569, size: 33280, align: 512, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2550, file: !2551, line: 16, baseType: !507, size: 192, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2550, file: !2551, line: 17, baseType: !385, size: 32, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1027, file: !35, line: 1240, baseType: !123, size: 64, offset: 6912)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1027, file: !35, line: 1243, baseType: !185, size: 32, offset: 6976)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1027, file: !35, line: 1245, baseType: !611, size: 64, offset: 7040)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1027, file: !35, line: 1246, baseType: !611, size: 64, offset: 7104)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1027, file: !35, line: 1248, baseType: !187, size: 32, offset: 7168)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1027, file: !35, line: 1249, baseType: !3744, size: 64, offset: 7232)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1027, file: !35, line: 1252, baseType: !3747, size: 256, offset: 7296)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !257)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1027, file: !35, line: 1253, baseType: !3749, size: 128, offset: 7552)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3750, line: 21, baseType: !3751)
!3750 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3750, line: 19, size: 128, elements: !3752)
!3752 = !{!3753}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3751, file: !3750, line: 20, baseType: !3754, size: 128)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !2983)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1027, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1027, file: !35, line: 1261, baseType: !358, size: 256, offset: 7744)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1027, file: !35, line: 1267, baseType: !209, size: 64, offset: 8000)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1027, file: !35, line: 1269, baseType: !3759, size: 64, offset: 8064)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !777, line: 128, size: 1024, align: 512, elements: !3762)
!3762 = !{!3763, !3767, !3768, !3775, !3781, !3785, !3789, !3793, !3794, !3798, !3802, !3807, !3811}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3761, file: !777, line: 129, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!85, !775, !7}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3761, file: !777, line: 130, baseType: !3764, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3761, file: !777, line: 131, baseType: !3769, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!85, !3772, !3774}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3761, file: !777, line: 132, baseType: !3776, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!85, !3772, !7, !209, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3761, file: !777, line: 134, baseType: !3782, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!85, !3772}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3761, file: !777, line: 135, baseType: !3786, size: 64, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!85, !775}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3761, file: !777, line: 136, baseType: !3790, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !775}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3761, file: !777, line: 137, baseType: !3790, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3761, file: !777, line: 138, baseType: !3795, size: 64, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !775, !815}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3761, file: !777, line: 139, baseType: !3799, size: 64, offset: 576)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!664, !775, !664, !85}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3761, file: !777, line: 140, baseType: !3803, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!770, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3761, file: !777, line: 141, baseType: !3808, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!85, !937, !653}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3761, file: !777, line: 142, baseType: !3812, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!775, !775, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1027, file: !35, line: 1271, baseType: !3818, size: 448, offset: 8128)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2332, line: 63, size: 448, elements: !3819)
!3819 = !{!3820, !3825, !3826, !3827, !3828, !3829, !3830}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3818, file: !2332, line: 64, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!127, !3824, !2330}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3818, file: !2332, line: 66, baseType: !3821, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3818, file: !2332, line: 69, baseType: !133, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3818, file: !2332, line: 70, baseType: !85, size: 32, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3818, file: !2332, line: 71, baseType: !7, size: 32, offset: 224)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3818, file: !2332, line: 74, baseType: !405, size: 128, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3818, file: !2332, line: 85, baseType: !3831, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1027, file: !35, line: 1274, baseType: !362, size: 64, offset: 8576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1027, file: !35, line: 1280, baseType: !362, size: 64, offset: 8640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1027, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1027, file: !35, line: 1286, baseType: !1445, size: 32, offset: 8736)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1027, file: !35, line: 1289, baseType: !2154, size: 64, offset: 8768)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1027, file: !35, line: 1290, baseType: !494, size: 64, offset: 8832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1027, file: !35, line: 1297, baseType: !737, size: 64, offset: 8896)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1027, file: !35, line: 1304, baseType: !3840, size: 64, offset: 8960)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3841, line: 49, size: 64, elements: !3842)
!3841 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3842 = !{!3843}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3840, file: !3841, line: 50, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3841, line: 41, size: 512, align: 512, elements: !3846)
!3846 = !{!3847, !3848, !3853}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3845, file: !3841, line: 43, baseType: !437, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3845, file: !3841, line: 45, baseType: !3849, size: 192, offset: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3841, line: 29, size: 192, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3849, file: !3841, line: 30, baseType: !405, size: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3849, file: !3841, line: 32, baseType: !133, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3845, file: !3841, line: 46, baseType: !133, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1027, file: !35, line: 1305, baseType: !3840, size: 64, offset: 9024)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1027, file: !35, line: 1306, baseType: !427, size: 128, align: 64, offset: 9088)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1027, file: !35, line: 1307, baseType: !1624, size: 256, offset: 9216)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1027, file: !35, line: 1309, baseType: !358, size: 256, offset: 9472)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1027, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1027, file: !35, line: 1317, baseType: !437, size: 32, align: 512, offset: 10240)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1027, file: !35, line: 1318, baseType: !405, size: 128, offset: 10304)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1027, file: !35, line: 1320, baseType: !437, size: 32, offset: 10432)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1027, file: !35, line: 1321, baseType: !405, size: 128, offset: 10496)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !816, file: !35, line: 656, baseType: !1177, size: 64, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !816, file: !35, line: 659, baseType: !123, size: 64, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !816, file: !35, line: 663, baseType: !127, size: 64, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !35, line: 671, baseType: !3867, size: 32, offset: 704)
!3867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !35, line: 671, size: 32, elements: !3868)
!3868 = !{!3869, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3867, file: !35, line: 672, baseType: !3870, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3867, file: !35, line: 673, baseType: !7, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !816, file: !35, line: 675, baseType: !890, size: 32, offset: 736)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !816, file: !35, line: 676, baseType: !450, size: 64, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !816, file: !35, line: 677, baseType: !926, size: 128, offset: 832)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !816, file: !35, line: 678, baseType: !926, size: 128, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !816, file: !35, line: 679, baseType: !926, size: 128, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !816, file: !35, line: 680, baseType: !437, size: 32, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !816, file: !35, line: 681, baseType: !195, size: 16, offset: 1248)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !816, file: !35, line: 682, baseType: !200, size: 8, offset: 1264)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !816, file: !35, line: 683, baseType: !200, size: 8, offset: 1272)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !816, file: !35, line: 684, baseType: !2463, size: 64, offset: 1280)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !816, file: !35, line: 691, baseType: !127, size: 64, offset: 1344)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !816, file: !35, line: 692, baseType: !595, size: 320, offset: 1408)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !816, file: !35, line: 694, baseType: !127, size: 64, offset: 1728)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !816, file: !35, line: 695, baseType: !127, size: 64, offset: 1792)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !816, file: !35, line: 697, baseType: !498, size: 128, offset: 1856)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !816, file: !35, line: 698, baseType: !405, size: 128, offset: 1984)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !816, file: !35, line: 707, baseType: !405, size: 128, offset: 2112)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !816, file: !35, line: 708, baseType: !405, size: 128, offset: 2240)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !35, line: 709, baseType: !3891, size: 128, offset: 2368)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !35, line: 709, size: 128, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3891, file: !35, line: 710, baseType: !494, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3891, file: !35, line: 711, baseType: !427, size: 128, align: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !816, file: !35, line: 713, baseType: !364, size: 64, offset: 2496)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !816, file: !35, line: 714, baseType: !364, size: 64, offset: 2560)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !816, file: !35, line: 715, baseType: !385, size: 32, offset: 2624)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !816, file: !35, line: 716, baseType: !385, size: 32, offset: 2656)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !816, file: !35, line: 717, baseType: !385, size: 32, offset: 2688)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !816, file: !35, line: 719, baseType: !385, size: 32, offset: 2720)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !35, line: 721, baseType: !3902, size: 64, offset: 2752)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !35, line: 721, size: 64, elements: !3903)
!3903 = !{!3904, !4028}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3902, file: !35, line: 722, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3908)
!3908 = !{!3909, !3910, !3914, !3918, !3922, !3923, !3924, !3930, !3943, !3947, !3951, !3952, !3956, !3957, !3961, !3966, !3967, !3971, !3975, !3981, !3982, !3986, !3987, !3991, !3995, !3996, !4001, !4005, !4009, !4013, !4017, !4018, !4024}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3907, file: !35, line: 1915, baseType: !1060, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3907, file: !35, line: 1916, baseType: !3911, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!450, !414, !450, !85}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3907, file: !35, line: 1917, baseType: !3915, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!968, !414, !664, !971, !1791}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3907, file: !35, line: 1918, baseType: !3919, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!968, !414, !209, !971, !1791}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3907, file: !35, line: 1919, baseType: !1379, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3907, file: !35, line: 1920, baseType: !1379, size: 64, offset: 320)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3907, file: !35, line: 1921, baseType: !3925, size: 64, offset: 384)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!85, !1382, !3928, !7}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3907, file: !35, line: 1923, baseType: !3931, size: 64, offset: 448)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!85, !414, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3936)
!3936 = !{!3937, !3942}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3935, file: !35, line: 1859, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3939)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!653, !3934, !209, !85, !450, !563, !7}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3935, file: !35, line: 1860, baseType: !450, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3907, file: !35, line: 1924, baseType: !3944, size: 64, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!1811, !414, !1813}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3907, file: !35, line: 1925, baseType: !3948, size: 64, offset: 576)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!133, !414, !7, !127}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3907, file: !35, line: 1926, baseType: !3948, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3907, file: !35, line: 1927, baseType: !3953, size: 64, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!85, !414, !1459}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3907, file: !35, line: 1928, baseType: !127, size: 64, offset: 768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3907, file: !35, line: 1929, baseType: !3958, size: 64, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!85, !815, !414}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3907, file: !35, line: 1930, baseType: !3962, size: 64, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!85, !414, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !123)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3907, file: !35, line: 1931, baseType: !3958, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3907, file: !35, line: 1932, baseType: !3968, size: 64, offset: 1024)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!85, !414, !450, !450, !85}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3907, file: !35, line: 1933, baseType: !3972, size: 64, offset: 1088)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!85, !85, !414, !85}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3907, file: !35, line: 1934, baseType: !3976, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!85, !414, !85, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3907, file: !35, line: 1935, baseType: !1497, size: 64, offset: 1216)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3907, file: !35, line: 1936, baseType: !3983, size: 64, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!85, !85}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3907, file: !35, line: 1937, baseType: !3976, size: 64, offset: 1344)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3907, file: !35, line: 1938, baseType: !3988, size: 64, offset: 1408)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!968, !3399, !414, !1791, !971, !7}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3907, file: !35, line: 1939, baseType: !3992, size: 64, offset: 1472)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!968, !414, !1791, !3399, !971, !7}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3907, file: !35, line: 1940, baseType: !1435, size: 64, offset: 1536)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3907, file: !35, line: 1941, baseType: !3997, size: 64, offset: 1600)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!85, !414, !85, !4000, !1356}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3907, file: !35, line: 1942, baseType: !4002, size: 64, offset: 1664)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!133, !414, !85, !450, !450}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3907, file: !35, line: 1944, baseType: !4006, size: 64, offset: 1728)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{null, !1767, !414}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3907, file: !35, line: 1948, baseType: !4010, size: 64, offset: 1792)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!968, !414, !450, !414, !450, !971, !7}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3907, file: !35, line: 1950, baseType: !4014, size: 64, offset: 1856)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!450, !414, !450, !414, !450, !450, !7}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3907, file: !35, line: 1953, baseType: !3968, size: 64, offset: 1920)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3907, file: !35, line: 1954, baseType: !4019, size: 64, offset: 1984)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!85, !4022, !7}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3907, file: !35, line: 1955, baseType: !4025, size: 64, offset: 2048)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!85, !4022, !3928, !7}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3902, file: !35, line: 723, baseType: !2221, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !816, file: !35, line: 725, baseType: !4030, size: 64, offset: 2816)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !816, file: !35, line: 726, baseType: !1178, size: 1536, align: 64, offset: 2880)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !816, file: !35, line: 727, baseType: !405, size: 128, offset: 4416)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !35, line: 728, baseType: !4035, size: 64, offset: 4544)
!4035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !35, line: 728, size: 64, elements: !4036)
!4036 = !{!4037, !4038, !4041, !4042}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4035, file: !35, line: 729, baseType: !3399, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4035, file: !35, line: 730, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4035, file: !35, line: 731, baseType: !664, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4035, file: !35, line: 732, baseType: !7, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !816, file: !35, line: 735, baseType: !187, size: 32, offset: 4608)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !816, file: !35, line: 738, baseType: !187, size: 32, offset: 4640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !816, file: !35, line: 739, baseType: !3744, size: 64, offset: 4672)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !816, file: !35, line: 750, baseType: !123, size: 64, offset: 4736)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !776, file: !777, line: 91, baseType: !4048, size: 256, offset: 448)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !257)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !776, file: !777, line: 94, baseType: !4050, size: 64, offset: 704)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4051, line: 25, size: 64, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4052 = !{!4053}
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4051, line: 26, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4051, line: 26, size: 64, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4054, file: !4051, line: 28, baseType: !564, size: 64, align: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !4054, file: !4051, line: 30, baseType: !4058, size: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4051, line: 30, size: 64, elements: !4059)
!4059 = !{!4060, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4058, file: !4051, line: 31, baseType: !437, size: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4058, file: !4051, line: 32, baseType: !85, size: 32, offset: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !776, file: !777, line: 95, baseType: !3759, size: 64, offset: 768)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !776, file: !777, line: 96, baseType: !1026, size: 64, offset: 832)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !776, file: !777, line: 97, baseType: !127, size: 64, offset: 896)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !776, file: !777, line: 98, baseType: !123, size: 64, offset: 960)
!4066 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 100, baseType: !4067, size: 128, offset: 1024)
!4067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 100, size: 128, elements: !4068)
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4067, file: !777, line: 101, baseType: !405, size: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4067, file: !777, line: 102, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !776, file: !777, line: 104, baseType: !405, size: 128, offset: 1152)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !776, file: !777, line: 105, baseType: !405, size: 128, offset: 1280)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !776, file: !777, line: 113, baseType: !4075, size: 128, offset: 1408)
!4075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 109, size: 128, elements: !4076)
!4076 = !{!4077, !4078, !4079}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4075, file: !777, line: 110, baseType: !498, size: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4075, file: !777, line: 111, baseType: !791, size: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4075, file: !777, line: 112, baseType: !427, size: 128, align: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !771, file: !772, line: 72, baseType: !1026, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !771, file: !772, line: 73, baseType: !85, size: 32, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !771, file: !772, line: 74, baseType: !855, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !766, file: !767, line: 10, baseType: !775, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !415, file: !35, line: 1015, baseType: !815, size: 64, offset: 1344)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !415, file: !35, line: 1016, baseType: !3905, size: 64, offset: 1408)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !415, file: !35, line: 1018, baseType: !563, size: 64, offset: 1472)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !415, file: !35, line: 1020, baseType: !123, size: 64, offset: 1536)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !415, file: !35, line: 1023, baseType: !123, size: 64, offset: 1600)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !415, file: !35, line: 1027, baseType: !4090, size: 64, offset: 1664)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !415, file: !35, line: 1029, baseType: !1177, size: 64, offset: 1728)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !415, file: !35, line: 1030, baseType: !1445, size: 32, offset: 1792)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !415, file: !35, line: 1031, baseType: !1445, size: 32, offset: 1824)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !205, file: !206, line: 169, baseType: !4095, size: 64, offset: 2048)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !206, line: 24, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !205, file: !206, line: 171, baseType: !7, size: 32, offset: 2112)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !205, file: !206, line: 172, baseType: !2092, size: 320, offset: 2176)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !205, file: !206, line: 174, baseType: !4100, size: 64, offset: 2496)
!4100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !236)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !205, file: !206, line: 176, baseType: !4102, size: 64, offset: 2560)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !206, line: 176, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !205, file: !206, line: 178, baseType: !4105, size: 64, offset: 2624)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !214, line: 93, size: 192, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4113}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4106, file: !214, line: 94, baseType: !581, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4106, file: !214, line: 95, baseType: !581, size: 32, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4106, file: !214, line: 96, baseType: !581, size: 32, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4106, file: !214, line: 97, baseType: !581, size: 32, offset: 96)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4106, file: !214, line: 98, baseType: !581, size: 32, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4106, file: !214, line: 99, baseType: !581, size: 32, offset: 160)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !205, file: !206, line: 180, baseType: !226, size: 768, offset: 2688)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !205, file: !206, line: 181, baseType: !221, size: 64, offset: 3456)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !205, file: !206, line: 182, baseType: !221, size: 64, offset: 3520)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !205, file: !206, line: 183, baseType: !221, size: 64, offset: 3584)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !205, file: !206, line: 185, baseType: !4119, size: 64, offset: 3648)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!85, !204}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !205, file: !206, line: 186, baseType: !4123, size: 64, offset: 3712)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !204}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !205, file: !206, line: 187, baseType: !4127, size: 64, offset: 3776)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!85, !204, !414}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !205, file: !206, line: 188, baseType: !4131, size: 64, offset: 3840)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!85, !204, !7, !7, !85}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !205, file: !206, line: 190, baseType: !4135, size: 64, offset: 3904)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !206, line: 345, size: 576, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4210, !4211}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4136, file: !206, line: 347, baseType: !123, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4136, file: !206, line: 349, baseType: !85, size: 32, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4136, file: !206, line: 350, baseType: !209, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4136, file: !206, line: 352, baseType: !204, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4136, file: !206, line: 353, baseType: !4143, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !206, line: 310, size: 960, elements: !4145)
!4145 = !{!4146, !4147, !4151, !4162, !4166, !4170, !4199, !4203, !4204, !4205, !4206, !4207, !4208, !4209}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4144, file: !206, line: 312, baseType: !123, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4144, file: !206, line: 314, baseType: !4148, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !4135, !7, !7, !85}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4144, file: !206, line: 315, baseType: !4152, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !4135, !4155, !7}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4157)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !206, line: 32, size: 64, elements: !4158)
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4157, file: !206, line: 33, baseType: !194, size: 16)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4157, file: !206, line: 34, baseType: !194, size: 16, offset: 16)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4157, file: !206, line: 35, baseType: !581, size: 32, offset: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4144, file: !206, line: 317, baseType: !4163, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!653, !4135, !7, !7, !85}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4144, file: !206, line: 318, baseType: !4167, size: 64, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!653, !4143, !204}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4144, file: !206, line: 319, baseType: !4171, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!85, !4143, !204, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4176)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4177, line: 362, size: 1600, elements: !4178)
!4177 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4178 = !{!4179, !4181, !4182, !4183, !4184, !4185, !4187, !4189, !4190, !4191, !4192, !4193, !4194, !4196, !4197, !4198}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4176, file: !4177, line: 364, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4177, line: 15, baseType: !127)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4176, file: !4177, line: 366, baseType: !194, size: 16, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4176, file: !4177, line: 367, baseType: !194, size: 16, offset: 80)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4176, file: !4177, line: 368, baseType: !194, size: 16, offset: 96)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4176, file: !4177, line: 369, baseType: !194, size: 16, offset: 112)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4176, file: !4177, line: 371, baseType: !4186, size: 64, offset: 128)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4180, size: 64, elements: !222)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4176, file: !4177, line: 372, baseType: !4188, size: 768, offset: 192)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4180, size: 768, elements: !227)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4176, file: !4177, line: 373, baseType: !4186, size: 64, offset: 960)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4176, file: !4177, line: 374, baseType: !4186, size: 64, offset: 1024)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4176, file: !4177, line: 375, baseType: !4186, size: 64, offset: 1088)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4176, file: !4177, line: 376, baseType: !4186, size: 64, offset: 1152)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4176, file: !4177, line: 377, baseType: !4186, size: 64, offset: 1216)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4176, file: !4177, line: 378, baseType: !4195, size: 128, offset: 1280)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4180, size: 128, elements: !236)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4176, file: !4177, line: 379, baseType: !4186, size: 64, offset: 1408)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4176, file: !4177, line: 380, baseType: !4186, size: 64, offset: 1472)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4176, file: !4177, line: 382, baseType: !4180, size: 64, offset: 1536)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4144, file: !206, line: 320, baseType: !4200, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !4135}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4144, file: !206, line: 321, baseType: !4200, size: 64, offset: 448)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4144, file: !206, line: 323, baseType: !653, size: 8, offset: 512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4144, file: !206, line: 324, baseType: !85, size: 32, offset: 544)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4144, file: !206, line: 325, baseType: !209, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4144, file: !206, line: 327, baseType: !4174, size: 64, offset: 640)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4144, file: !206, line: 329, baseType: !405, size: 128, offset: 704)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4144, file: !206, line: 330, baseType: !405, size: 128, offset: 832)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4136, file: !206, line: 355, baseType: !405, size: 128, offset: 320)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4136, file: !206, line: 356, baseType: !405, size: 128, offset: 448)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !205, file: !206, line: 192, baseType: !437, size: 32, offset: 3968)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !205, file: !206, line: 193, baseType: !358, size: 256, offset: 4032)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !205, file: !206, line: 195, baseType: !7, size: 32, offset: 4288)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !205, file: !206, line: 196, baseType: !653, size: 8, offset: 4320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !205, file: !206, line: 198, baseType: !4217, size: 5824, offset: 4352)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4218)
!4218 = !{!4219, !4220, !4222, !4225, !4226, !4279, !4362, !4363, !4364, !4365, !4366, !4373, !4465, !4478, !4488, !4492, !4494, !4495, !4496, !4500, !4507, !4508, !4511, !4514, !4518, !4521, !4522, !4523, !4524, !4525, !4526, !4556, !4557, !4558, !4561, !4564, !4573, !4574, !4575, !4576, !4577, !4578}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4217, file: !70, line: 706, baseType: !1073, size: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4217, file: !70, line: 707, baseType: !4221, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4217, file: !70, line: 709, baseType: !4223, size: 64, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4217, file: !70, line: 711, baseType: !209, size: 64, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4217, file: !70, line: 712, baseType: !4227, size: 64, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4229)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4230)
!4230 = !{!4231, !4232, !4233, !4239, !4244, !4248}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4229, file: !70, line: 90, baseType: !209, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4229, file: !70, line: 91, baseType: !1153, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4229, file: !70, line: 92, baseType: !4234, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!85, !4237, !1109}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4217)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4229, file: !70, line: 93, baseType: !4240, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!664, !4237, !4243, !1720, !1721}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4229, file: !70, line: 95, baseType: !4245, size: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{null, !4221}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4229, file: !70, line: 97, baseType: !4249, size: 64, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4252)
!4252 = !{!4253, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4251, file: !77, line: 287, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!85, !4221}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4251, file: !77, line: 288, baseType: !4245, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4251, file: !77, line: 289, baseType: !4254, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4251, file: !77, line: 290, baseType: !4254, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4251, file: !77, line: 291, baseType: !4254, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4251, file: !77, line: 292, baseType: !4254, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4251, file: !77, line: 293, baseType: !4254, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4251, file: !77, line: 294, baseType: !4254, size: 64, offset: 448)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4251, file: !77, line: 295, baseType: !4254, size: 64, offset: 512)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4251, file: !77, line: 296, baseType: !4254, size: 64, offset: 576)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4251, file: !77, line: 297, baseType: !4254, size: 64, offset: 640)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4251, file: !77, line: 298, baseType: !4254, size: 64, offset: 704)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4251, file: !77, line: 299, baseType: !4254, size: 64, offset: 768)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4251, file: !77, line: 300, baseType: !4254, size: 64, offset: 832)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4251, file: !77, line: 301, baseType: !4254, size: 64, offset: 896)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4251, file: !77, line: 302, baseType: !4254, size: 64, offset: 960)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4251, file: !77, line: 303, baseType: !4254, size: 64, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4251, file: !77, line: 304, baseType: !4254, size: 64, offset: 1088)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4251, file: !77, line: 305, baseType: !4254, size: 64, offset: 1152)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4251, file: !77, line: 306, baseType: !4254, size: 64, offset: 1216)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4251, file: !77, line: 307, baseType: !4254, size: 64, offset: 1280)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4251, file: !77, line: 308, baseType: !4254, size: 64, offset: 1344)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4251, file: !77, line: 309, baseType: !4254, size: 64, offset: 1408)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4217, file: !70, line: 714, baseType: !4280, size: 64, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4283, line: 80, size: 1344, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4284 = !{!4285, !4286, !4287, !4288, !4289, !4290, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4361}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !4283, line: 81, baseType: !209, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4282, file: !4283, line: 82, baseType: !209, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4282, file: !4283, line: 83, baseType: !1153, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4282, file: !4283, line: 84, baseType: !1153, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4282, file: !4283, line: 85, baseType: !1153, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4282, file: !4283, line: 87, baseType: !4291, size: 64, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!85, !4221, !4294}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4315, !4324, !4325, !4326, !4327, !4328, !4336, !4337, !4338, !4339, !4340, !4341}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4295, file: !64, line: 97, baseType: !209, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4295, file: !64, line: 98, baseType: !4280, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4295, file: !64, line: 100, baseType: !1060, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4295, file: !64, line: 101, baseType: !209, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4295, file: !64, line: 103, baseType: !653, size: 8, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4295, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4295, file: !64, line: 106, baseType: !4304, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4177, line: 282, size: 1600, elements: !4307)
!4307 = !{!4308, !4309, !4310, !4314}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !4177, line: 283, baseType: !3747, size: 256)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4306, file: !4177, line: 284, baseType: !3747, size: 256, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4306, file: !4177, line: 285, baseType: !4311, size: 1024, offset: 512)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !4312)
!4312 = !{!4313}
!4313 = !DISubrange(count: 128)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4306, file: !4177, line: 286, baseType: !1586, size: 64, offset: 1536)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4295, file: !64, line: 107, baseType: !4316, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4177, line: 217, size: 256, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4318, file: !4177, line: 218, baseType: !3754, size: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4318, file: !4177, line: 219, baseType: !4180, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4318, file: !4177, line: 220, baseType: !187, size: 32, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4318, file: !4177, line: 221, baseType: !187, size: 32, offset: 224)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4295, file: !64, line: 109, baseType: !4254, size: 64, offset: 448)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4295, file: !64, line: 110, baseType: !4245, size: 64, offset: 512)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4295, file: !64, line: 111, baseType: !4254, size: 64, offset: 576)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4295, file: !64, line: 112, baseType: !4245, size: 64, offset: 640)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4295, file: !64, line: 113, baseType: !4329, size: 64, offset: 704)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!85, !4221, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4334)
!4334 = !{!4335}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4333, file: !77, line: 59, baseType: !85, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4295, file: !64, line: 114, baseType: !4254, size: 64, offset: 768)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4295, file: !64, line: 115, baseType: !1153, size: 64, offset: 832)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4295, file: !64, line: 116, baseType: !1153, size: 64, offset: 896)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4295, file: !64, line: 118, baseType: !4249, size: 64, offset: 960)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4295, file: !64, line: 119, baseType: !4245, size: 64, offset: 1024)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4295, file: !64, line: 121, baseType: !4342, size: 64, offset: 1088)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4282, file: !4283, line: 88, baseType: !4234, size: 64, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4282, file: !4283, line: 89, baseType: !4254, size: 64, offset: 448)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4282, file: !4283, line: 90, baseType: !4245, size: 64, offset: 512)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4282, file: !4283, line: 91, baseType: !4245, size: 64, offset: 576)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4282, file: !4283, line: 92, baseType: !4245, size: 64, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4282, file: !4283, line: 94, baseType: !4254, size: 64, offset: 704)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4282, file: !4283, line: 95, baseType: !4254, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4282, file: !4283, line: 97, baseType: !4329, size: 64, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4282, file: !4283, line: 98, baseType: !4254, size: 64, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4282, file: !4283, line: 100, baseType: !4254, size: 64, offset: 960)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4282, file: !4283, line: 102, baseType: !4254, size: 64, offset: 1024)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4282, file: !4283, line: 103, baseType: !4245, size: 64, offset: 1088)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4282, file: !4283, line: 105, baseType: !4249, size: 64, offset: 1152)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4282, file: !4283, line: 107, baseType: !4358, size: 64, offset: 1216)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4283, line: 107, flags: DIFlagFwdDecl)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4282, file: !4283, line: 109, baseType: !653, size: 8, offset: 1280)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4217, file: !70, line: 715, baseType: !4294, size: 64, offset: 832)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4217, file: !70, line: 717, baseType: !123, size: 64, offset: 896)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4217, file: !70, line: 719, baseType: !123, size: 64, offset: 960)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4217, file: !70, line: 721, baseType: !358, size: 256, offset: 1024)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4217, file: !70, line: 725, baseType: !4367, size: 448, offset: 1280)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4368)
!4368 = !{!4369, !4370, !4371, !4372}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4367, file: !70, line: 518, baseType: !405, size: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4367, file: !70, line: 519, baseType: !405, size: 128, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4367, file: !70, line: 520, baseType: !405, size: 128, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4367, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4217, file: !70, line: 726, baseType: !4374, size: 2496, offset: 1728)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4458, !4462}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4374, file: !77, line: 664, baseType: !4332, size: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4374, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4374, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4374, file: !77, line: 667, baseType: !653, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4374, file: !77, line: 668, baseType: !653, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4374, file: !77, line: 669, baseType: !653, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4374, file: !77, line: 670, baseType: !653, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4374, file: !77, line: 671, baseType: !653, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4374, file: !77, line: 672, baseType: !653, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4374, file: !77, line: 673, baseType: !653, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4374, file: !77, line: 674, baseType: !653, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4374, file: !77, line: 675, baseType: !185, size: 32, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4374, file: !77, line: 676, baseType: !437, size: 32, offset: 96)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4374, file: !77, line: 678, baseType: !405, size: 128, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4374, file: !77, line: 679, baseType: !1849, size: 256, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4374, file: !77, line: 680, baseType: !4392, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4394, line: 43, size: 1536, elements: !4395)
!4394 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4395 = !{!4396, !4397, !4398, !4399, !4400, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4393, file: !4394, line: 44, baseType: !209, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4393, file: !4394, line: 45, baseType: !85, size: 32, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4393, file: !4394, line: 46, baseType: !405, size: 128, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4393, file: !4394, line: 47, baseType: !437, size: 32, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4393, file: !4394, line: 48, baseType: !4401, size: 64, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4393, file: !4394, line: 49, baseType: !2092, size: 320, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4393, file: !4394, line: 50, baseType: !127, size: 64, offset: 704)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4393, file: !4394, line: 51, baseType: !2686, size: 64, offset: 768)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4393, file: !4394, line: 52, baseType: !2686, size: 64, offset: 832)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4393, file: !4394, line: 53, baseType: !2686, size: 64, offset: 896)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4393, file: !4394, line: 54, baseType: !2686, size: 64, offset: 960)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4393, file: !4394, line: 55, baseType: !2686, size: 64, offset: 1024)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4393, file: !4394, line: 56, baseType: !127, size: 64, offset: 1088)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4393, file: !4394, line: 57, baseType: !127, size: 64, offset: 1152)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4393, file: !4394, line: 58, baseType: !127, size: 64, offset: 1216)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4393, file: !4394, line: 59, baseType: !127, size: 64, offset: 1280)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4393, file: !4394, line: 60, baseType: !127, size: 64, offset: 1344)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4393, file: !4394, line: 61, baseType: !4221, size: 64, offset: 1408)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4393, file: !4394, line: 62, baseType: !653, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4393, file: !4394, line: 63, baseType: !653, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4374, file: !77, line: 681, baseType: !653, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4374, file: !77, line: 682, baseType: !653, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4374, file: !77, line: 683, baseType: !653, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4374, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4374, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4374, file: !77, line: 690, baseType: !2678, size: 512, offset: 640)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4374, file: !77, line: 691, baseType: !563, size: 64, offset: 1152)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4374, file: !77, line: 692, baseType: !1624, size: 256, offset: 1216)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4374, file: !77, line: 693, baseType: !507, size: 192, offset: 1472)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4374, file: !77, line: 694, baseType: !4401, size: 64, offset: 1664)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4374, file: !77, line: 695, baseType: !385, size: 32, offset: 1728)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4374, file: !77, line: 696, baseType: !385, size: 32, offset: 1760)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4374, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4374, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4374, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4374, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4374, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4374, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4374, file: !77, line: 703, baseType: !653, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4374, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4374, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4374, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4374, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4374, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4374, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4374, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4374, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4374, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4374, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4374, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4374, file: !77, line: 715, baseType: !563, size: 64, offset: 2048)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4374, file: !77, line: 716, baseType: !563, size: 64, offset: 2112)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4374, file: !77, line: 717, baseType: !563, size: 64, offset: 2176)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4374, file: !77, line: 718, baseType: !563, size: 64, offset: 2240)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4374, file: !77, line: 720, baseType: !4453, size: 64, offset: 2304)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4455)
!4455 = !{!4456, !4457}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4454, file: !77, line: 633, baseType: !437, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4454, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4374, file: !77, line: 721, baseType: !4459, size: 64, offset: 2368)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4221, !580}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4374, file: !77, line: 722, baseType: !4463, size: 64, offset: 2432)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4217, file: !70, line: 727, baseType: !4466, size: 64, offset: 4224)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4475, !4476, !4477}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4467, file: !77, line: 743, baseType: !4251, size: 1472)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4467, file: !77, line: 744, baseType: !4254, size: 64, offset: 1472)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4467, file: !77, line: 745, baseType: !4472, size: 64, offset: 1536)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !4221, !653}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4467, file: !77, line: 746, baseType: !4254, size: 64, offset: 1600)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4467, file: !77, line: 747, baseType: !4245, size: 64, offset: 1664)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4467, file: !77, line: 748, baseType: !4245, size: 64, offset: 1728)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4217, file: !70, line: 736, baseType: !4479, size: 128, offset: 4288)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4480)
!4480 = !{!4481, !4485}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4479, file: !70, line: 531, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4484, line: 13, flags: DIFlagFwdDecl)
!4484 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4479, file: !70, line: 532, baseType: !4486, size: 64, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4217, file: !70, line: 738, baseType: !4489, size: 64, offset: 4416)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4217, file: !70, line: 740, baseType: !4493, size: 64, offset: 4480)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4217, file: !70, line: 741, baseType: !563, size: 64, offset: 4544)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4217, file: !70, line: 746, baseType: !563, size: 64, offset: 4608)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4217, file: !70, line: 747, baseType: !4497, size: 64, offset: 4672)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4499)
!4499 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4217, file: !70, line: 749, baseType: !4501, size: 64, offset: 4736)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4503)
!4503 = !{!4504, !4505, !4506}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4502, file: !70, line: 433, baseType: !7, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4502, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4502, file: !70, line: 435, baseType: !127, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4217, file: !70, line: 751, baseType: !405, size: 128, offset: 4800)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4217, file: !70, line: 762, baseType: !4509, size: 64, offset: 4928)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4217, file: !70, line: 770, baseType: !4512, offset: 4992)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4513, line: 5, elements: !1493)
!4513 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4217, file: !70, line: 772, baseType: !4515, size: 64, offset: 4992)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4517, line: 18, flags: DIFlagFwdDecl)
!4517 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4217, file: !70, line: 773, baseType: !4519, size: 64, offset: 5056)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4283, line: 22, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4217, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4217, file: !70, line: 778, baseType: !890, size: 32, offset: 5152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4217, file: !70, line: 779, baseType: !185, size: 32, offset: 5184)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4217, file: !70, line: 781, baseType: !437, size: 32, offset: 5216)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4217, file: !70, line: 782, baseType: !405, size: 128, offset: 5248)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4217, file: !70, line: 784, baseType: !4527, size: 64, offset: 5376)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4530, line: 52, size: 768, elements: !4531)
!4530 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4540, !4544, !4545, !4546, !4547, !4551, !4555}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4529, file: !4530, line: 53, baseType: !209, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4529, file: !4530, line: 55, baseType: !1153, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4529, file: !4530, line: 56, baseType: !1153, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4529, file: !4530, line: 58, baseType: !4234, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4529, file: !4530, line: 59, baseType: !4537, size: 64, offset: 256)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!664, !4237, !4243}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4529, file: !4530, line: 61, baseType: !4541, size: 64, offset: 320)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !4527}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4529, file: !4530, line: 62, baseType: !4245, size: 64, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4529, file: !4530, line: 64, baseType: !4254, size: 64, offset: 448)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4529, file: !4530, line: 66, baseType: !1688, size: 64, offset: 512)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4529, file: !4530, line: 67, baseType: !4548, size: 64, offset: 576)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!1586, !4237}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4529, file: !4530, line: 69, baseType: !4552, size: 64, offset: 640)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !4237, !1720, !1721}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4529, file: !4530, line: 71, baseType: !4249, size: 64, offset: 704)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4217, file: !70, line: 785, baseType: !1153, size: 64, offset: 5440)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4217, file: !70, line: 787, baseType: !4245, size: 64, offset: 5504)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4217, file: !70, line: 788, baseType: !4559, size: 64, offset: 5568)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4217, file: !70, line: 789, baseType: !4562, size: 64, offset: 5632)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4217, file: !70, line: 791, baseType: !4565, size: 64, offset: 5696)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4572}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4566, file: !70, line: 598, baseType: !92, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4566, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4566, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4566, file: !70, line: 601, baseType: !653, size: 8, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4566, file: !70, line: 602, baseType: !653, size: 8, offset: 104)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4217, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4217, file: !70, line: 795, baseType: !653, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4217, file: !70, line: 796, baseType: !653, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4217, file: !70, line: 797, baseType: !653, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4217, file: !70, line: 798, baseType: !653, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4217, file: !70, line: 799, baseType: !653, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !205, file: !206, line: 200, baseType: !405, size: 128, offset: 10176)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !206, line: 201, baseType: !405, size: 128, offset: 10304)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !205, file: !206, line: 203, baseType: !7, size: 32, offset: 10432)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !205, file: !206, line: 204, baseType: !7, size: 32, offset: 10464)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !205, file: !206, line: 205, baseType: !4584, size: 64, offset: 10496)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !205, file: !206, line: 207, baseType: !653, size: 8, offset: 10560)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !205, file: !206, line: 209, baseType: !4587, size: 192, offset: 10624)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2686, size: 192, elements: !477)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !205, file: !206, line: 211, baseType: !653, size: 8, offset: 10816)
!4589 = !{!4590, !4591, !4592}
!4590 = !DILocalVariable(name: "dev", arg: 1, scope: !176, file: !3, line: 61, type: !204)
!4591 = !DILocalVariable(name: "code", arg: 2, scope: !176, file: !3, line: 62, type: !7)
!4592 = !DILocalVariable(name: "key", scope: !176, file: !3, line: 64, type: !179)
!4593 = !DILocation(line: 61, column: 71, scope: !176)
!4594 = !DILocation(line: 62, column: 24, scope: !176)
!4595 = !DILocation(line: 64, column: 2, scope: !176)
!4596 = !DILocation(line: 64, column: 20, scope: !176)
!4597 = !DILocation(line: 66, column: 13, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !176, file: !3, line: 66, column: 2)
!4599 = !DILocation(line: 66, column: 18, scope: !4598)
!4600 = !DILocation(line: 66, column: 11, scope: !4598)
!4601 = !DILocation(line: 66, column: 7, scope: !4598)
!4602 = !DILocation(line: 66, column: 27, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 66, column: 2)
!4604 = !DILocation(line: 66, column: 32, scope: !4603)
!4605 = !DILocation(line: 66, column: 37, scope: !4603)
!4606 = !DILocation(line: 66, column: 2, scope: !4598)
!4607 = !DILocation(line: 67, column: 7, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 67, column: 7)
!4609 = !DILocation(line: 67, column: 15, scope: !4608)
!4610 = !DILocation(line: 67, column: 20, scope: !4608)
!4611 = !DILocation(line: 67, column: 12, scope: !4608)
!4612 = !DILocation(line: 67, column: 7, scope: !4603)
!4613 = !DILocation(line: 68, column: 11, scope: !4608)
!4614 = !DILocation(line: 68, column: 4, scope: !4608)
!4615 = !DILocation(line: 66, column: 51, scope: !4603)
!4616 = !DILocation(line: 66, column: 2, scope: !4603)
!4617 = distinct !{!4617, !4606, !4618, !4619, !4620}
!4618 = !DILocation(line: 68, column: 11, scope: !4598)
!4619 = !{!"llvm.loop.mustprogress"}
!4620 = !{!"llvm.loop.unroll.disable"}
!4621 = !DILocation(line: 70, column: 2, scope: !176)
!4622 = !DILocation(line: 71, column: 1, scope: !176)
!4623 = distinct !DISubprogram(name: "sparse_keymap_entry_from_keycode", scope: !3, file: !3, line: 82, type: !177, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4624 = !{!4625, !4626, !4627}
!4625 = !DILocalVariable(name: "dev", arg: 1, scope: !4623, file: !3, line: 82, type: !204)
!4626 = !DILocalVariable(name: "keycode", arg: 2, scope: !4623, file: !3, line: 83, type: !7)
!4627 = !DILocalVariable(name: "key", scope: !4623, file: !3, line: 85, type: !179)
!4628 = !DILocation(line: 82, column: 70, scope: !4623)
!4629 = !DILocation(line: 83, column: 23, scope: !4623)
!4630 = !DILocation(line: 85, column: 2, scope: !4623)
!4631 = !DILocation(line: 85, column: 20, scope: !4623)
!4632 = !DILocation(line: 87, column: 13, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 87, column: 2)
!4634 = !DILocation(line: 87, column: 18, scope: !4633)
!4635 = !DILocation(line: 87, column: 11, scope: !4633)
!4636 = !DILocation(line: 87, column: 7, scope: !4633)
!4637 = !DILocation(line: 87, column: 27, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 87, column: 2)
!4639 = !DILocation(line: 87, column: 32, scope: !4638)
!4640 = !DILocation(line: 87, column: 37, scope: !4638)
!4641 = !DILocation(line: 87, column: 2, scope: !4633)
!4642 = !DILocation(line: 88, column: 7, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 88, column: 7)
!4644 = !DILocation(line: 88, column: 12, scope: !4643)
!4645 = !DILocation(line: 88, column: 17, scope: !4643)
!4646 = !DILocation(line: 88, column: 27, scope: !4643)
!4647 = !DILocation(line: 88, column: 30, scope: !4643)
!4648 = !DILocation(line: 88, column: 41, scope: !4643)
!4649 = !DILocation(line: 88, column: 46, scope: !4643)
!4650 = !DILocation(line: 88, column: 38, scope: !4643)
!4651 = !DILocation(line: 88, column: 7, scope: !4638)
!4652 = !DILocation(line: 89, column: 11, scope: !4643)
!4653 = !DILocation(line: 89, column: 4, scope: !4643)
!4654 = !DILocation(line: 87, column: 51, scope: !4638)
!4655 = !DILocation(line: 87, column: 2, scope: !4638)
!4656 = distinct !{!4656, !4641, !4657, !4619, !4620}
!4657 = !DILocation(line: 89, column: 11, scope: !4633)
!4658 = !DILocation(line: 91, column: 2, scope: !4623)
!4659 = !DILocation(line: 92, column: 1, scope: !4623)
!4660 = distinct !DISubprogram(name: "sparse_keymap_setup", scope: !3, file: !3, line: 166, type: !4661, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4668)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!85, !204, !4663, !4665}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!85, !204, !179}
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677}
!4669 = !DILocalVariable(name: "dev", arg: 1, scope: !4660, file: !3, line: 166, type: !204)
!4670 = !DILocalVariable(name: "keymap", arg: 2, scope: !4660, file: !3, line: 167, type: !4663)
!4671 = !DILocalVariable(name: "setup", arg: 3, scope: !4660, file: !3, line: 168, type: !4665)
!4672 = !DILocalVariable(name: "map_size", scope: !4660, file: !3, line: 170, type: !971)
!4673 = !DILocalVariable(name: "e", scope: !4660, file: !3, line: 171, type: !4663)
!4674 = !DILocalVariable(name: "map", scope: !4660, file: !3, line: 172, type: !179)
!4675 = !DILocalVariable(name: "entry", scope: !4660, file: !3, line: 172, type: !179)
!4676 = !DILocalVariable(name: "i", scope: !4660, file: !3, line: 173, type: !85)
!4677 = !DILocalVariable(name: "error", scope: !4660, file: !3, line: 174, type: !85)
!4678 = !DILocation(line: 166, column: 43, scope: !4660)
!4679 = !DILocation(line: 167, column: 28, scope: !4660)
!4680 = !DILocation(line: 168, column: 10, scope: !4660)
!4681 = !DILocation(line: 170, column: 2, scope: !4660)
!4682 = !DILocation(line: 170, column: 9, scope: !4660)
!4683 = !DILocation(line: 171, column: 2, scope: !4660)
!4684 = !DILocation(line: 171, column: 26, scope: !4660)
!4685 = !DILocation(line: 172, column: 2, scope: !4660)
!4686 = !DILocation(line: 172, column: 20, scope: !4660)
!4687 = !DILocation(line: 172, column: 26, scope: !4660)
!4688 = !DILocation(line: 173, column: 2, scope: !4660)
!4689 = !DILocation(line: 173, column: 6, scope: !4660)
!4690 = !DILocation(line: 174, column: 2, scope: !4660)
!4691 = !DILocation(line: 174, column: 6, scope: !4660)
!4692 = !DILocation(line: 176, column: 11, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 176, column: 2)
!4694 = !DILocation(line: 176, column: 9, scope: !4693)
!4695 = !DILocation(line: 176, column: 7, scope: !4693)
!4696 = !DILocation(line: 176, column: 19, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 176, column: 2)
!4698 = !DILocation(line: 176, column: 22, scope: !4697)
!4699 = !DILocation(line: 176, column: 27, scope: !4697)
!4700 = !DILocation(line: 176, column: 2, scope: !4693)
!4701 = !DILocation(line: 177, column: 11, scope: !4697)
!4702 = !DILocation(line: 177, column: 3, scope: !4697)
!4703 = !DILocation(line: 176, column: 39, scope: !4697)
!4704 = !DILocation(line: 176, column: 2, scope: !4697)
!4705 = distinct !{!4705, !4700, !4706, !4619, !4620}
!4706 = !DILocation(line: 177, column: 11, scope: !4693)
!4707 = !DILocation(line: 179, column: 22, scope: !4660)
!4708 = !DILocation(line: 179, column: 27, scope: !4660)
!4709 = !DILocation(line: 179, column: 32, scope: !4660)
!4710 = !DILocation(line: 179, column: 40, scope: !4660)
!4711 = !DILocation(line: 179, column: 49, scope: !4660)
!4712 = !DILocation(line: 179, column: 8, scope: !4660)
!4713 = !DILocation(line: 179, column: 6, scope: !4660)
!4714 = !DILocation(line: 181, column: 7, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 181, column: 6)
!4716 = !DILocation(line: 181, column: 6, scope: !4660)
!4717 = !DILocation(line: 182, column: 3, scope: !4715)
!4718 = !DILocation(line: 184, column: 9, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 184, column: 2)
!4720 = !DILocation(line: 184, column: 7, scope: !4719)
!4721 = !DILocation(line: 184, column: 14, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 184, column: 2)
!4723 = !DILocation(line: 184, column: 18, scope: !4722)
!4724 = !DILocation(line: 184, column: 16, scope: !4722)
!4725 = !DILocation(line: 184, column: 2, scope: !4719)
!4726 = !DILocation(line: 185, column: 12, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 184, column: 33)
!4728 = !DILocation(line: 185, column: 16, scope: !4727)
!4729 = !DILocation(line: 185, column: 9, scope: !4727)
!4730 = !DILocation(line: 187, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 187, column: 7)
!4732 = !DILocation(line: 187, column: 7, scope: !4727)
!4733 = !DILocation(line: 188, column: 12, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 187, column: 14)
!4735 = !DILocation(line: 188, column: 18, scope: !4734)
!4736 = !DILocation(line: 188, column: 23, scope: !4734)
!4737 = !DILocation(line: 188, column: 10, scope: !4734)
!4738 = !DILocation(line: 189, column: 8, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 189, column: 8)
!4740 = !DILocation(line: 189, column: 8, scope: !4734)
!4741 = !DILocation(line: 190, column: 12, scope: !4739)
!4742 = !DILocation(line: 190, column: 5, scope: !4739)
!4743 = !DILocation(line: 191, column: 3, scope: !4734)
!4744 = !DILocation(line: 193, column: 11, scope: !4727)
!4745 = !DILocation(line: 193, column: 18, scope: !4727)
!4746 = !DILocation(line: 193, column: 3, scope: !4727)
!4747 = !DILocation(line: 195, column: 4, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 193, column: 24)
!4749 = !DILocation(line: 196, column: 4, scope: !4748)
!4750 = !DILocation(line: 197, column: 4, scope: !4748)
!4751 = !DILocation(line: 201, column: 4, scope: !4748)
!4752 = !DILocation(line: 202, column: 4, scope: !4748)
!4753 = !DILocation(line: 203, column: 4, scope: !4748)
!4754 = !DILocation(line: 205, column: 2, scope: !4727)
!4755 = !DILocation(line: 184, column: 29, scope: !4722)
!4756 = !DILocation(line: 184, column: 2, scope: !4722)
!4757 = distinct !{!4757, !4725, !4758, !4619, !4620}
!4758 = !DILocation(line: 205, column: 2, scope: !4719)
!4759 = !DILocation(line: 207, column: 6, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 207, column: 6)
!4761 = !DILocation(line: 207, column: 6, scope: !4660)
!4762 = !DILocation(line: 208, column: 3, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 207, column: 36)
!4764 = !DILocation(line: 209, column: 3, scope: !4763)
!4765 = !DILocation(line: 210, column: 3, scope: !4763)
!4766 = !DILocation(line: 211, column: 2, scope: !4763)
!4767 = !DILocation(line: 213, column: 17, scope: !4660)
!4768 = !DILocation(line: 213, column: 2, scope: !4660)
!4769 = !DILocation(line: 213, column: 7, scope: !4660)
!4770 = !DILocation(line: 213, column: 15, scope: !4660)
!4771 = !DILocation(line: 214, column: 20, scope: !4660)
!4772 = !DILocation(line: 214, column: 2, scope: !4660)
!4773 = !DILocation(line: 214, column: 7, scope: !4660)
!4774 = !DILocation(line: 214, column: 18, scope: !4660)
!4775 = !DILocation(line: 215, column: 2, scope: !4660)
!4776 = !DILocation(line: 215, column: 7, scope: !4660)
!4777 = !DILocation(line: 215, column: 18, scope: !4660)
!4778 = !DILocation(line: 216, column: 2, scope: !4660)
!4779 = !DILocation(line: 216, column: 7, scope: !4660)
!4780 = !DILocation(line: 216, column: 18, scope: !4660)
!4781 = !DILocation(line: 218, column: 2, scope: !4660)
!4782 = !DILocation(line: 219, column: 1, scope: !4660)
!4783 = !DISubprogram(name: "devm_kmemdup", scope: !70, file: !70, line: 345, type: !4784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!123, !4221, !1586, !971, !124}
!4786 = distinct !DISubprogram(name: "generic___set_bit", scope: !4787, file: !4787, line: 28, type: !4788, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4787 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !127, !4790}
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!4792 = !{!4793, !4794, !4795, !4796}
!4793 = !DILocalVariable(name: "nr", arg: 1, scope: !4786, file: !4787, line: 28, type: !127)
!4794 = !DILocalVariable(name: "addr", arg: 2, scope: !4786, file: !4787, line: 28, type: !4790)
!4795 = !DILocalVariable(name: "mask", scope: !4786, file: !4787, line: 30, type: !127)
!4796 = !DILocalVariable(name: "p", scope: !4786, file: !4787, line: 31, type: !130)
!4797 = !DILocation(line: 28, column: 33, scope: !4786)
!4798 = !DILocation(line: 28, column: 61, scope: !4786)
!4799 = !DILocation(line: 30, column: 2, scope: !4786)
!4800 = !DILocation(line: 30, column: 16, scope: !4786)
!4801 = !DILocation(line: 30, column: 23, scope: !4786)
!4802 = !DILocation(line: 31, column: 2, scope: !4786)
!4803 = !DILocation(line: 31, column: 17, scope: !4786)
!4804 = !DILocation(line: 31, column: 39, scope: !4786)
!4805 = !DILocation(line: 31, column: 47, scope: !4786)
!4806 = !DILocation(line: 31, column: 45, scope: !4786)
!4807 = !DILocation(line: 33, column: 9, scope: !4786)
!4808 = !DILocation(line: 33, column: 3, scope: !4786)
!4809 = !DILocation(line: 33, column: 6, scope: !4786)
!4810 = !DILocation(line: 34, column: 1, scope: !4786)
!4811 = distinct !DISubprogram(name: "___set_bit", scope: !4812, file: !4812, line: 26, type: !4788, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4813)
!4812 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4813 = !{!4814, !4815}
!4814 = !DILocalVariable(name: "nr", arg: 1, scope: !4811, file: !4812, line: 26, type: !127)
!4815 = !DILocalVariable(name: "addr", arg: 2, scope: !4811, file: !4812, line: 26, type: !4790)
!4816 = !DILocation(line: 26, column: 26, scope: !4811)
!4817 = !DILocation(line: 26, column: 54, scope: !4811)
!4818 = !DILocation(line: 28, column: 19, scope: !4811)
!4819 = !DILocation(line: 28, column: 26, scope: !4811)
!4820 = !DILocation(line: 28, column: 24, scope: !4811)
!4821 = !DILocation(line: 28, column: 2, scope: !4811)
!4822 = !DILocation(line: 29, column: 17, scope: !4811)
!4823 = !DILocation(line: 29, column: 21, scope: !4811)
!4824 = !DILocation(line: 29, column: 2, scope: !4811)
!4825 = !DILocation(line: 30, column: 1, scope: !4811)
!4826 = distinct !DISubprogram(name: "const_test_bit", scope: !4787, file: !4787, line: 166, type: !4827, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4831)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!653, !127, !4829}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4791)
!4831 = !{!4832, !4833, !4834, !4835, !4836}
!4832 = !DILocalVariable(name: "nr", arg: 1, scope: !4826, file: !4787, line: 166, type: !127)
!4833 = !DILocalVariable(name: "addr", arg: 2, scope: !4826, file: !4787, line: 166, type: !4829)
!4834 = !DILocalVariable(name: "p", scope: !4826, file: !4787, line: 168, type: !128)
!4835 = !DILocalVariable(name: "mask", scope: !4826, file: !4787, line: 169, type: !127)
!4836 = !DILocalVariable(name: "val", scope: !4826, file: !4787, line: 170, type: !127)
!4837 = !DILocation(line: 166, column: 30, scope: !4826)
!4838 = !DILocation(line: 166, column: 64, scope: !4826)
!4839 = !DILocation(line: 168, column: 2, scope: !4826)
!4840 = !DILocation(line: 168, column: 23, scope: !4826)
!4841 = !DILocation(line: 168, column: 50, scope: !4826)
!4842 = !DILocation(line: 168, column: 57, scope: !4826)
!4843 = !DILocation(line: 168, column: 55, scope: !4826)
!4844 = !DILocation(line: 169, column: 2, scope: !4826)
!4845 = !DILocation(line: 169, column: 16, scope: !4826)
!4846 = !DILocation(line: 169, column: 23, scope: !4826)
!4847 = !DILocation(line: 170, column: 2, scope: !4826)
!4848 = !DILocation(line: 170, column: 16, scope: !4826)
!4849 = !DILocation(line: 170, column: 23, scope: !4826)
!4850 = !DILocation(line: 170, column: 22, scope: !4826)
!4851 = !DILocation(line: 172, column: 12, scope: !4826)
!4852 = !DILocation(line: 172, column: 18, scope: !4826)
!4853 = !DILocation(line: 172, column: 16, scope: !4826)
!4854 = !DILocation(line: 172, column: 10, scope: !4826)
!4855 = !DILocation(line: 172, column: 9, scope: !4826)
!4856 = !DILocation(line: 173, column: 1, scope: !4826)
!4857 = !DILocation(line: 172, column: 2, scope: !4826)
!4858 = distinct !DISubprogram(name: "_test_bit", scope: !4812, file: !4812, line: 139, type: !4827, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4859)
!4859 = !{!4860, !4861}
!4860 = !DILocalVariable(name: "nr", arg: 1, scope: !4858, file: !4812, line: 139, type: !127)
!4861 = !DILocalVariable(name: "addr", arg: 2, scope: !4858, file: !4812, line: 139, type: !4829)
!4862 = !DILocation(line: 139, column: 25, scope: !4858)
!4863 = !DILocation(line: 139, column: 59, scope: !4858)
!4864 = !DILocation(line: 141, column: 25, scope: !4858)
!4865 = !DILocation(line: 141, column: 32, scope: !4858)
!4866 = !DILocation(line: 141, column: 30, scope: !4858)
!4867 = !DILocation(line: 141, column: 2, scope: !4858)
!4868 = !DILocation(line: 142, column: 23, scope: !4858)
!4869 = !DILocation(line: 142, column: 27, scope: !4858)
!4870 = !DILocation(line: 142, column: 9, scope: !4858)
!4871 = !DILocation(line: 142, column: 2, scope: !4858)
!4872 = distinct !DISubprogram(name: "sparse_keymap_getkeycode", scope: !3, file: !3, line: 111, type: !262, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4873)
!4873 = !{!4874, !4875, !4876}
!4874 = !DILocalVariable(name: "dev", arg: 1, scope: !4872, file: !3, line: 111, type: !204)
!4875 = !DILocalVariable(name: "ke", arg: 2, scope: !4872, file: !3, line: 112, type: !264)
!4876 = !DILocalVariable(name: "key", scope: !4872, file: !3, line: 114, type: !4663)
!4877 = !DILocation(line: 111, column: 55, scope: !4872)
!4878 = !DILocation(line: 112, column: 36, scope: !4872)
!4879 = !DILocation(line: 114, column: 2, scope: !4872)
!4880 = !DILocation(line: 114, column: 26, scope: !4872)
!4881 = !DILocation(line: 116, column: 6, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 116, column: 6)
!4883 = !DILocation(line: 116, column: 11, scope: !4882)
!4884 = !DILocation(line: 116, column: 6, scope: !4872)
!4885 = !DILocation(line: 117, column: 30, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 116, column: 20)
!4887 = !DILocation(line: 117, column: 35, scope: !4886)
!4888 = !DILocation(line: 117, column: 9, scope: !4886)
!4889 = !DILocation(line: 117, column: 7, scope: !4886)
!4890 = !DILocation(line: 118, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 118, column: 7)
!4892 = !DILocation(line: 118, column: 11, scope: !4891)
!4893 = !DILocation(line: 118, column: 14, scope: !4891)
!4894 = !DILocation(line: 118, column: 19, scope: !4891)
!4895 = !DILocation(line: 118, column: 24, scope: !4891)
!4896 = !DILocation(line: 118, column: 7, scope: !4886)
!4897 = !DILocation(line: 119, column: 18, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 118, column: 35)
!4899 = !DILocation(line: 119, column: 23, scope: !4898)
!4900 = !DILocation(line: 119, column: 4, scope: !4898)
!4901 = !DILocation(line: 119, column: 8, scope: !4898)
!4902 = !DILocation(line: 119, column: 16, scope: !4898)
!4903 = !DILocation(line: 120, column: 10, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 120, column: 8)
!4905 = !DILocation(line: 120, column: 14, scope: !4904)
!4906 = !DILocation(line: 120, column: 20, scope: !4904)
!4907 = !DILocation(line: 120, column: 8, scope: !4898)
!4908 = !DILocation(line: 122, column: 34, scope: !4904)
!4909 = !DILocation(line: 122, column: 39, scope: !4904)
!4910 = !DILocation(line: 122, column: 6, scope: !4904)
!4911 = !DILocation(line: 121, column: 5, scope: !4904)
!4912 = !DILocation(line: 121, column: 9, scope: !4904)
!4913 = !DILocation(line: 121, column: 15, scope: !4904)
!4914 = !DILocation(line: 123, column: 4, scope: !4898)
!4915 = !DILocation(line: 123, column: 8, scope: !4898)
!4916 = !DILocation(line: 123, column: 12, scope: !4898)
!4917 = !DILocation(line: 124, column: 11, scope: !4898)
!4918 = !DILocation(line: 124, column: 15, scope: !4898)
!4919 = !DILocation(line: 124, column: 4, scope: !4898)
!4920 = !DILocation(line: 124, column: 26, scope: !4898)
!4921 = !DILocation(line: 124, column: 31, scope: !4898)
!4922 = !DILocation(line: 125, column: 4, scope: !4898)
!4923 = !DILocation(line: 127, column: 2, scope: !4886)
!4924 = !DILocation(line: 129, column: 2, scope: !4872)
!4925 = !DILocation(line: 130, column: 1, scope: !4872)
!4926 = distinct !DISubprogram(name: "sparse_keymap_setkeycode", scope: !3, file: !3, line: 132, type: !245, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4927)
!4927 = !{!4928, !4929, !4930, !4931}
!4928 = !DILocalVariable(name: "dev", arg: 1, scope: !4926, file: !3, line: 132, type: !204)
!4929 = !DILocalVariable(name: "ke", arg: 2, scope: !4926, file: !3, line: 133, type: !247)
!4930 = !DILocalVariable(name: "old_keycode", arg: 3, scope: !4926, file: !3, line: 134, type: !259)
!4931 = !DILocalVariable(name: "key", scope: !4926, file: !3, line: 136, type: !179)
!4932 = !DILocation(line: 132, column: 55, scope: !4926)
!4933 = !DILocation(line: 133, column: 42, scope: !4926)
!4934 = !DILocation(line: 134, column: 23, scope: !4926)
!4935 = !DILocation(line: 136, column: 2, scope: !4926)
!4936 = !DILocation(line: 136, column: 20, scope: !4926)
!4937 = !DILocation(line: 138, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 138, column: 6)
!4939 = !DILocation(line: 138, column: 11, scope: !4938)
!4940 = !DILocation(line: 138, column: 6, scope: !4926)
!4941 = !DILocation(line: 139, column: 30, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 138, column: 20)
!4943 = !DILocation(line: 139, column: 35, scope: !4942)
!4944 = !DILocation(line: 139, column: 9, scope: !4942)
!4945 = !DILocation(line: 139, column: 7, scope: !4942)
!4946 = !DILocation(line: 140, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 140, column: 7)
!4948 = !DILocation(line: 140, column: 11, scope: !4947)
!4949 = !DILocation(line: 140, column: 14, scope: !4947)
!4950 = !DILocation(line: 140, column: 19, scope: !4947)
!4951 = !DILocation(line: 140, column: 24, scope: !4947)
!4952 = !DILocation(line: 140, column: 7, scope: !4942)
!4953 = !DILocation(line: 141, column: 19, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 140, column: 35)
!4955 = !DILocation(line: 141, column: 24, scope: !4954)
!4956 = !DILocation(line: 141, column: 5, scope: !4954)
!4957 = !DILocation(line: 141, column: 17, scope: !4954)
!4958 = !DILocation(line: 142, column: 19, scope: !4954)
!4959 = !DILocation(line: 142, column: 23, scope: !4954)
!4960 = !DILocation(line: 142, column: 4, scope: !4954)
!4961 = !DILocation(line: 142, column: 9, scope: !4954)
!4962 = !DILocation(line: 142, column: 17, scope: !4954)
!4963 = !DILocation(line: 143, column: 12, scope: !4954)
!4964 = !DILocation(line: 143, column: 16, scope: !4954)
!4965 = !DILocation(line: 143, column: 25, scope: !4954)
!4966 = !DILocation(line: 143, column: 30, scope: !4954)
!4967 = !DILocation(line: 143, column: 4, scope: !4954)
!4968 = !DILocation(line: 144, column: 42, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 144, column: 8)
!4970 = !DILocation(line: 144, column: 48, scope: !4969)
!4971 = !DILocation(line: 144, column: 47, scope: !4969)
!4972 = !DILocation(line: 144, column: 9, scope: !4969)
!4973 = !DILocation(line: 144, column: 8, scope: !4954)
!4974 = !DILocation(line: 145, column: 16, scope: !4969)
!4975 = !DILocation(line: 145, column: 15, scope: !4969)
!4976 = !DILocation(line: 145, column: 29, scope: !4969)
!4977 = !DILocation(line: 145, column: 34, scope: !4969)
!4978 = !DILocation(line: 145, column: 5, scope: !4969)
!4979 = !DILocation(line: 146, column: 4, scope: !4954)
!4980 = !DILocation(line: 148, column: 2, scope: !4942)
!4981 = !DILocation(line: 150, column: 2, scope: !4926)
!4982 = !DILocation(line: 151, column: 1, scope: !4926)
!4983 = distinct !DISubprogram(name: "sparse_keymap_report_entry", scope: !3, file: !3, line: 234, type: !4984, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{null, !204, !4663, !7, !653}
!4986 = !{!4987, !4988, !4989, !4990}
!4987 = !DILocalVariable(name: "dev", arg: 1, scope: !4983, file: !3, line: 234, type: !204)
!4988 = !DILocalVariable(name: "ke", arg: 2, scope: !4983, file: !3, line: 234, type: !4663)
!4989 = !DILocalVariable(name: "value", arg: 3, scope: !4983, file: !3, line: 235, type: !7)
!4990 = !DILocalVariable(name: "autorelease", arg: 4, scope: !4983, file: !3, line: 235, type: !653)
!4991 = !DILocation(line: 234, column: 51, scope: !4983)
!4992 = !DILocation(line: 234, column: 80, scope: !4983)
!4993 = !DILocation(line: 235, column: 18, scope: !4983)
!4994 = !DILocation(line: 235, column: 30, scope: !4983)
!4995 = !DILocation(line: 237, column: 10, scope: !4983)
!4996 = !DILocation(line: 237, column: 14, scope: !4983)
!4997 = !DILocation(line: 237, column: 2, scope: !4983)
!4998 = !DILocation(line: 239, column: 15, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 237, column: 20)
!5000 = !DILocation(line: 239, column: 38, scope: !4999)
!5001 = !DILocation(line: 239, column: 42, scope: !4999)
!5002 = !DILocation(line: 239, column: 3, scope: !4999)
!5003 = !DILocation(line: 240, column: 20, scope: !4999)
!5004 = !DILocation(line: 240, column: 25, scope: !4999)
!5005 = !DILocation(line: 240, column: 29, scope: !4999)
!5006 = !DILocation(line: 240, column: 38, scope: !4999)
!5007 = !DILocation(line: 240, column: 3, scope: !4999)
!5008 = !DILocation(line: 241, column: 14, scope: !4999)
!5009 = !DILocation(line: 241, column: 3, scope: !4999)
!5010 = !DILocation(line: 242, column: 7, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 242, column: 7)
!5012 = !DILocation(line: 242, column: 13, scope: !5011)
!5013 = !DILocation(line: 242, column: 16, scope: !5011)
!5014 = !{i8 0, i8 2}
!5015 = !DILocation(line: 242, column: 7, scope: !4999)
!5016 = !DILocation(line: 243, column: 21, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 242, column: 29)
!5018 = !DILocation(line: 243, column: 26, scope: !5017)
!5019 = !DILocation(line: 243, column: 30, scope: !5017)
!5020 = !DILocation(line: 243, column: 4, scope: !5017)
!5021 = !DILocation(line: 244, column: 15, scope: !5017)
!5022 = !DILocation(line: 244, column: 4, scope: !5017)
!5023 = !DILocation(line: 245, column: 3, scope: !5017)
!5024 = !DILocation(line: 246, column: 3, scope: !4999)
!5025 = !DILocation(line: 249, column: 11, scope: !4999)
!5026 = !DILocation(line: 249, column: 15, scope: !4999)
!5027 = !DILocation(line: 249, column: 18, scope: !4999)
!5028 = !DILocation(line: 249, column: 9, scope: !4999)
!5029 = !DILocation(line: 249, column: 3, scope: !4999)
!5030 = !DILocation(line: 253, column: 23, scope: !4999)
!5031 = !DILocation(line: 253, column: 28, scope: !4999)
!5032 = !DILocation(line: 253, column: 32, scope: !4999)
!5033 = !DILocation(line: 253, column: 35, scope: !4999)
!5034 = !DILocation(line: 253, column: 41, scope: !4999)
!5035 = !DILocation(line: 253, column: 3, scope: !4999)
!5036 = !DILocation(line: 254, column: 14, scope: !4999)
!5037 = !DILocation(line: 254, column: 3, scope: !4999)
!5038 = !DILocation(line: 255, column: 3, scope: !4999)
!5039 = !DILocation(line: 257, column: 1, scope: !4983)
!5040 = !DISubprogram(name: "input_event", scope: !206, file: !206, line: 420, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !204, !7, !7, !85}
!5043 = distinct !DISubprogram(name: "input_report_key", scope: !206, file: !206, line: 423, type: !5044, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5046)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{null, !204, !7, !85}
!5046 = !{!5047, !5048, !5049}
!5047 = !DILocalVariable(name: "dev", arg: 1, scope: !5043, file: !206, line: 423, type: !204)
!5048 = !DILocalVariable(name: "code", arg: 2, scope: !5043, file: !206, line: 423, type: !7)
!5049 = !DILocalVariable(name: "value", arg: 3, scope: !5043, file: !206, line: 423, type: !85)
!5050 = !DILocation(line: 423, column: 55, scope: !5043)
!5051 = !DILocation(line: 423, column: 73, scope: !5043)
!5052 = !DILocation(line: 423, column: 83, scope: !5043)
!5053 = !DILocation(line: 425, column: 14, scope: !5043)
!5054 = !DILocation(line: 425, column: 27, scope: !5043)
!5055 = !DILocation(line: 425, column: 35, scope: !5043)
!5056 = !DILocation(line: 425, column: 34, scope: !5043)
!5057 = !DILocation(line: 425, column: 33, scope: !5043)
!5058 = !DILocation(line: 425, column: 2, scope: !5043)
!5059 = !DILocation(line: 426, column: 1, scope: !5043)
!5060 = distinct !DISubprogram(name: "input_sync", scope: !206, file: !206, line: 448, type: !4124, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5061)
!5061 = !{!5062}
!5062 = !DILocalVariable(name: "dev", arg: 1, scope: !5060, file: !206, line: 448, type: !204)
!5063 = !DILocation(line: 448, column: 49, scope: !5060)
!5064 = !DILocation(line: 450, column: 14, scope: !5060)
!5065 = !DILocation(line: 450, column: 2, scope: !5060)
!5066 = !DILocation(line: 451, column: 1, scope: !5060)
!5067 = distinct !DISubprogram(name: "input_report_switch", scope: !206, file: !206, line: 443, type: !5044, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5068)
!5068 = !{!5069, !5070, !5071}
!5069 = !DILocalVariable(name: "dev", arg: 1, scope: !5067, file: !206, line: 443, type: !204)
!5070 = !DILocalVariable(name: "code", arg: 2, scope: !5067, file: !206, line: 443, type: !7)
!5071 = !DILocalVariable(name: "value", arg: 3, scope: !5067, file: !206, line: 443, type: !85)
!5072 = !DILocation(line: 443, column: 58, scope: !5067)
!5073 = !DILocation(line: 443, column: 76, scope: !5067)
!5074 = !DILocation(line: 443, column: 86, scope: !5067)
!5075 = !DILocation(line: 445, column: 14, scope: !5067)
!5076 = !DILocation(line: 445, column: 26, scope: !5067)
!5077 = !DILocation(line: 445, column: 34, scope: !5067)
!5078 = !DILocation(line: 445, column: 33, scope: !5067)
!5079 = !DILocation(line: 445, column: 32, scope: !5067)
!5080 = !DILocation(line: 445, column: 2, scope: !5067)
!5081 = !DILocation(line: 446, column: 1, scope: !5067)
!5082 = distinct !DISubprogram(name: "sparse_keymap_report_event", scope: !3, file: !3, line: 273, type: !5083, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!653, !204, !7, !7, !653}
!5085 = !{!5086, !5087, !5088, !5089, !5090, !5091}
!5086 = !DILocalVariable(name: "dev", arg: 1, scope: !5082, file: !3, line: 273, type: !204)
!5087 = !DILocalVariable(name: "code", arg: 2, scope: !5082, file: !3, line: 273, type: !7)
!5088 = !DILocalVariable(name: "value", arg: 3, scope: !5082, file: !3, line: 274, type: !7)
!5089 = !DILocalVariable(name: "autorelease", arg: 4, scope: !5082, file: !3, line: 274, type: !653)
!5090 = !DILocalVariable(name: "ke", scope: !5082, file: !3, line: 276, type: !4663)
!5091 = !DILocalVariable(name: "unknown_ke", scope: !5082, file: !3, line: 278, type: !180)
!5092 = !DILocation(line: 273, column: 51, scope: !5082)
!5093 = !DILocation(line: 273, column: 69, scope: !5082)
!5094 = !DILocation(line: 274, column: 18, scope: !5082)
!5095 = !DILocation(line: 274, column: 30, scope: !5082)
!5096 = !DILocation(line: 276, column: 2, scope: !5082)
!5097 = !DILocation(line: 276, column: 26, scope: !5082)
!5098 = !DILocation(line: 277, column: 37, scope: !5082)
!5099 = !DILocation(line: 277, column: 42, scope: !5082)
!5100 = !DILocation(line: 277, column: 3, scope: !5082)
!5101 = !DILocation(line: 278, column: 2, scope: !5082)
!5102 = !DILocation(line: 278, column: 19, scope: !5082)
!5103 = !DILocation(line: 280, column: 6, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 280, column: 6)
!5105 = !DILocation(line: 280, column: 6, scope: !5082)
!5106 = !DILocation(line: 281, column: 30, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 280, column: 10)
!5108 = !DILocation(line: 281, column: 35, scope: !5107)
!5109 = !DILocation(line: 281, column: 39, scope: !5107)
!5110 = !DILocation(line: 281, column: 46, scope: !5107)
!5111 = !DILocation(line: 281, column: 3, scope: !5107)
!5112 = !DILocation(line: 282, column: 3, scope: !5107)
!5113 = !DILocation(line: 286, column: 13, scope: !5082)
!5114 = !DILocation(line: 286, column: 18, scope: !5082)
!5115 = !DILocation(line: 287, column: 20, scope: !5082)
!5116 = !DILocation(line: 287, column: 13, scope: !5082)
!5117 = !DILocation(line: 287, column: 18, scope: !5082)
!5118 = !DILocation(line: 288, column: 13, scope: !5082)
!5119 = !DILocation(line: 288, column: 21, scope: !5082)
!5120 = !DILocation(line: 289, column: 29, scope: !5082)
!5121 = !DILocation(line: 289, column: 47, scope: !5082)
!5122 = !DILocation(line: 289, column: 2, scope: !5082)
!5123 = !DILocation(line: 291, column: 2, scope: !5082)
!5124 = !DILocation(line: 292, column: 1, scope: !5082)
!5125 = distinct !DISubprogram(name: "instrument_write", scope: !5126, file: !5126, line: 38, type: !5127, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5132)
!5126 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5129, !971}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5131)
!5131 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5132 = !{!5133, !5134}
!5133 = !DILocalVariable(name: "v", arg: 1, scope: !5125, file: !5126, line: 38, type: !5129)
!5134 = !DILocalVariable(name: "size", arg: 2, scope: !5125, file: !5126, line: 38, type: !971)
!5135 = !DILocation(line: 38, column: 67, scope: !5125)
!5136 = !DILocation(line: 38, column: 77, scope: !5125)
!5137 = !DILocation(line: 40, column: 20, scope: !5125)
!5138 = !DILocation(line: 40, column: 23, scope: !5125)
!5139 = !DILocation(line: 40, column: 2, scope: !5125)
!5140 = !DILocation(line: 41, column: 2, scope: !5125)
!5141 = !DILocation(line: 42, column: 1, scope: !5125)
!5142 = distinct !DISubprogram(name: "arch___set_bit", scope: !5143, file: !5143, line: 66, type: !4788, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5144)
!5143 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5144 = !{!5145, !5146}
!5145 = !DILocalVariable(name: "nr", arg: 1, scope: !5142, file: !5143, line: 66, type: !127)
!5146 = !DILocalVariable(name: "addr", arg: 2, scope: !5142, file: !5143, line: 66, type: !4790)
!5147 = !DILocation(line: 66, column: 30, scope: !5142)
!5148 = !DILocation(line: 66, column: 58, scope: !5142)
!5149 = !DILocation(line: 68, column: 44, scope: !5142)
!5150 = !DILocation(line: 68, column: 56, scope: !5142)
!5151 = !DILocation(line: 68, column: 2, scope: !5142)
!5152 = !{i64 2148211074}
!5153 = !DILocation(line: 69, column: 1, scope: !5142)
!5154 = distinct !DISubprogram(name: "kasan_check_write", scope: !5155, file: !5155, line: 44, type: !5156, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5158)
!5155 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!653, !5129, !7}
!5158 = !{!5159, !5160}
!5159 = !DILocalVariable(name: "p", arg: 1, scope: !5154, file: !5155, line: 44, type: !5129)
!5160 = !DILocalVariable(name: "size", arg: 2, scope: !5154, file: !5155, line: 44, type: !7)
!5161 = !DILocation(line: 44, column: 59, scope: !5154)
!5162 = !DILocation(line: 44, column: 75, scope: !5154)
!5163 = !DILocation(line: 46, column: 2, scope: !5154)
!5164 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5165, file: !5165, line: 229, type: !5166, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5168)
!5165 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5166 = !DISubroutineType(types: !5167)
!5167 = !{null, !5129, !971, !85}
!5168 = !{!5169, !5170, !5171}
!5169 = !DILocalVariable(name: "ptr", arg: 1, scope: !5164, file: !5165, line: 229, type: !5129)
!5170 = !DILocalVariable(name: "size", arg: 2, scope: !5164, file: !5165, line: 229, type: !971)
!5171 = !DILocalVariable(name: "type", arg: 3, scope: !5164, file: !5165, line: 230, type: !85)
!5172 = !DILocation(line: 229, column: 60, scope: !5164)
!5173 = !DILocation(line: 229, column: 72, scope: !5164)
!5174 = !DILocation(line: 230, column: 15, scope: !5164)
!5175 = !DILocation(line: 230, column: 23, scope: !5164)
!5176 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5126, file: !5126, line: 66, type: !5127, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5177)
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "v", arg: 1, scope: !5176, file: !5126, line: 66, type: !5129)
!5179 = !DILocalVariable(name: "size", arg: 2, scope: !5176, file: !5126, line: 66, type: !971)
!5180 = !DILocation(line: 66, column: 73, scope: !5176)
!5181 = !DILocation(line: 66, column: 83, scope: !5176)
!5182 = !DILocation(line: 68, column: 19, scope: !5176)
!5183 = !DILocation(line: 68, column: 22, scope: !5176)
!5184 = !DILocation(line: 68, column: 2, scope: !5176)
!5185 = !DILocation(line: 69, column: 2, scope: !5176)
!5186 = !DILocation(line: 70, column: 1, scope: !5176)
!5187 = distinct !DISubprogram(name: "arch_test_bit", scope: !5143, file: !5143, line: 237, type: !4827, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5188)
!5188 = !{!5189, !5190}
!5189 = !DILocalVariable(name: "nr", arg: 1, scope: !5187, file: !5143, line: 237, type: !127)
!5190 = !DILocalVariable(name: "addr", arg: 2, scope: !5187, file: !5143, line: 237, type: !4829)
!5191 = !DILocation(line: 237, column: 29, scope: !5187)
!5192 = !DILocation(line: 237, column: 63, scope: !5187)
!5193 = !DILocation(line: 239, column: 30, scope: !5187)
!5194 = !DILocation(line: 239, column: 9, scope: !5187)
!5195 = !DILocation(line: 239, column: 54, scope: !5187)
!5196 = !DILocation(line: 239, column: 58, scope: !5187)
!5197 = !DILocation(line: 239, column: 36, scope: !5187)
!5198 = !DILocation(line: 240, column: 26, scope: !5187)
!5199 = !DILocation(line: 240, column: 30, scope: !5187)
!5200 = !DILocation(line: 240, column: 8, scope: !5187)
!5201 = !DILocation(line: 239, column: 2, scope: !5187)
!5202 = distinct !DISubprogram(name: "kasan_check_read", scope: !5155, file: !5155, line: 40, type: !5156, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "p", arg: 1, scope: !5202, file: !5155, line: 40, type: !5129)
!5205 = !DILocalVariable(name: "size", arg: 2, scope: !5202, file: !5155, line: 40, type: !7)
!5206 = !DILocation(line: 40, column: 58, scope: !5202)
!5207 = !DILocation(line: 40, column: 74, scope: !5202)
!5208 = !DILocation(line: 42, column: 2, scope: !5202)
!5209 = distinct !DISubprogram(name: "constant_test_bit", scope: !5143, file: !5143, line: 204, type: !5210, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5212)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!653, !133, !4829}
!5212 = !{!5213, !5214}
!5213 = !DILocalVariable(name: "nr", arg: 1, scope: !5209, file: !5143, line: 204, type: !133)
!5214 = !DILocalVariable(name: "addr", arg: 2, scope: !5209, file: !5143, line: 204, type: !4829)
!5215 = !DILocation(line: 204, column: 52, scope: !5209)
!5216 = !DILocation(line: 204, column: 86, scope: !5209)
!5217 = !DILocation(line: 206, column: 19, scope: !5209)
!5218 = !DILocation(line: 206, column: 22, scope: !5209)
!5219 = !DILocation(line: 206, column: 15, scope: !5209)
!5220 = !DILocation(line: 207, column: 4, scope: !5209)
!5221 = !DILocation(line: 207, column: 9, scope: !5209)
!5222 = !DILocation(line: 207, column: 12, scope: !5209)
!5223 = !DILocation(line: 206, column: 44, scope: !5209)
!5224 = !DILocation(line: 207, column: 37, scope: !5209)
!5225 = !DILocation(line: 206, column: 2, scope: !5209)
!5226 = distinct !DISubprogram(name: "variable_test_bit", scope: !5143, file: !5143, line: 224, type: !5210, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5227)
!5227 = !{!5228, !5229, !5230}
!5228 = !DILocalVariable(name: "nr", arg: 1, scope: !5226, file: !5143, line: 224, type: !133)
!5229 = !DILocalVariable(name: "addr", arg: 2, scope: !5226, file: !5143, line: 224, type: !4829)
!5230 = !DILocalVariable(name: "oldbit", scope: !5226, file: !5143, line: 226, type: !653)
!5231 = !DILocation(line: 224, column: 52, scope: !5226)
!5232 = !DILocation(line: 224, column: 86, scope: !5226)
!5233 = !DILocation(line: 226, column: 2, scope: !5226)
!5234 = !DILocation(line: 226, column: 7, scope: !5226)
!5235 = !DILocation(line: 231, column: 33, scope: !5226)
!5236 = !DILocation(line: 231, column: 46, scope: !5226)
!5237 = !DILocation(line: 228, column: 2, scope: !5226)
!5238 = !{i64 2148223760, i64 2148223834}
!5239 = !DILocation(line: 233, column: 9, scope: !5226)
!5240 = !DILocation(line: 234, column: 1, scope: !5226)
!5241 = !DILocation(line: 233, column: 2, scope: !5226)
!5242 = distinct !DISubprogram(name: "sparse_keymap_locate", scope: !3, file: !3, line: 95, type: !5243, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!179, !204, !247}
!5245 = !{!5246, !5247, !5248, !5249}
!5246 = !DILocalVariable(name: "dev", arg: 1, scope: !5242, file: !3, line: 95, type: !204)
!5247 = !DILocalVariable(name: "ke", arg: 2, scope: !5242, file: !3, line: 96, type: !247)
!5248 = !DILocalVariable(name: "key", scope: !5242, file: !3, line: 98, type: !179)
!5249 = !DILocalVariable(name: "scancode", scope: !5242, file: !3, line: 99, type: !7)
!5250 = !DILocation(line: 95, column: 65, scope: !5242)
!5251 = !DILocation(line: 96, column: 39, scope: !5242)
!5252 = !DILocation(line: 98, column: 2, scope: !5242)
!5253 = !DILocation(line: 98, column: 20, scope: !5242)
!5254 = !DILocation(line: 99, column: 2, scope: !5242)
!5255 = !DILocation(line: 99, column: 15, scope: !5242)
!5256 = !DILocation(line: 101, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 101, column: 6)
!5258 = !DILocation(line: 101, column: 10, scope: !5257)
!5259 = !DILocation(line: 101, column: 16, scope: !5257)
!5260 = !DILocation(line: 101, column: 6, scope: !5242)
!5261 = !DILocation(line: 102, column: 38, scope: !5257)
!5262 = !DILocation(line: 102, column: 43, scope: !5257)
!5263 = !DILocation(line: 102, column: 47, scope: !5257)
!5264 = !DILocation(line: 102, column: 9, scope: !5257)
!5265 = !DILocation(line: 102, column: 7, scope: !5257)
!5266 = !DILocation(line: 102, column: 3, scope: !5257)
!5267 = !DILocation(line: 103, column: 36, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 103, column: 11)
!5269 = !DILocation(line: 103, column: 11, scope: !5268)
!5270 = !DILocation(line: 103, column: 51, scope: !5268)
!5271 = !DILocation(line: 103, column: 11, scope: !5257)
!5272 = !DILocation(line: 104, column: 43, scope: !5268)
!5273 = !DILocation(line: 104, column: 48, scope: !5268)
!5274 = !DILocation(line: 104, column: 9, scope: !5268)
!5275 = !DILocation(line: 104, column: 7, scope: !5268)
!5276 = !DILocation(line: 104, column: 3, scope: !5268)
!5277 = !DILocation(line: 106, column: 7, scope: !5268)
!5278 = !DILocation(line: 108, column: 9, scope: !5242)
!5279 = !DILocation(line: 109, column: 1, scope: !5242)
!5280 = !DILocation(line: 108, column: 2, scope: !5242)
!5281 = distinct !DISubprogram(name: "sparse_keymap_get_key_index", scope: !3, file: !3, line: 22, type: !5282, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5284)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!7, !204, !4663}
!5284 = !{!5285, !5286, !5287, !5288}
!5285 = !DILocalVariable(name: "dev", arg: 1, scope: !5281, file: !3, line: 22, type: !204)
!5286 = !DILocalVariable(name: "k", arg: 2, scope: !5281, file: !3, line: 23, type: !4663)
!5287 = !DILocalVariable(name: "key", scope: !5281, file: !3, line: 25, type: !179)
!5288 = !DILocalVariable(name: "idx", scope: !5281, file: !3, line: 26, type: !7)
!5289 = !DILocation(line: 22, column: 67, scope: !5281)
!5290 = !DILocation(line: 23, column: 31, scope: !5281)
!5291 = !DILocation(line: 25, column: 2, scope: !5281)
!5292 = !DILocation(line: 25, column: 20, scope: !5281)
!5293 = !DILocation(line: 26, column: 2, scope: !5281)
!5294 = !DILocation(line: 26, column: 15, scope: !5281)
!5295 = !DILocation(line: 28, column: 13, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 28, column: 2)
!5297 = !DILocation(line: 28, column: 18, scope: !5296)
!5298 = !DILocation(line: 28, column: 11, scope: !5296)
!5299 = !DILocation(line: 28, column: 7, scope: !5296)
!5300 = !DILocation(line: 28, column: 27, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 28, column: 2)
!5302 = !DILocation(line: 28, column: 32, scope: !5301)
!5303 = !DILocation(line: 28, column: 37, scope: !5301)
!5304 = !DILocation(line: 28, column: 2, scope: !5296)
!5305 = !DILocation(line: 29, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 29, column: 7)
!5307 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 28, column: 55)
!5308 = !DILocation(line: 29, column: 12, scope: !5306)
!5309 = !DILocation(line: 29, column: 17, scope: !5306)
!5310 = !DILocation(line: 29, column: 7, scope: !5307)
!5311 = !DILocation(line: 30, column: 8, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 30, column: 8)
!5313 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 29, column: 28)
!5314 = !DILocation(line: 30, column: 15, scope: !5312)
!5315 = !DILocation(line: 30, column: 12, scope: !5312)
!5316 = !DILocation(line: 30, column: 8, scope: !5313)
!5317 = !DILocation(line: 31, column: 5, scope: !5312)
!5318 = !DILocation(line: 32, column: 7, scope: !5313)
!5319 = !DILocation(line: 33, column: 3, scope: !5313)
!5320 = !DILocation(line: 34, column: 2, scope: !5307)
!5321 = !DILocation(line: 28, column: 51, scope: !5301)
!5322 = !DILocation(line: 28, column: 2, scope: !5301)
!5323 = distinct !{!5323, !5304, !5324, !4619, !4620}
!5324 = !DILocation(line: 34, column: 2, scope: !5296)
!5325 = !DILocation(line: 36, column: 9, scope: !5281)
!5326 = !DILocation(line: 37, column: 1, scope: !5281)
!5327 = !DILocation(line: 36, column: 2, scope: !5281)
!5328 = distinct !DISubprogram(name: "sparse_keymap_entry_by_index", scope: !3, file: !3, line: 39, type: !177, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5329)
!5329 = !{!5330, !5331, !5332, !5333}
!5330 = !DILocalVariable(name: "dev", arg: 1, scope: !5328, file: !3, line: 39, type: !204)
!5331 = !DILocalVariable(name: "index", arg: 2, scope: !5328, file: !3, line: 40, type: !7)
!5332 = !DILocalVariable(name: "key", scope: !5328, file: !3, line: 42, type: !179)
!5333 = !DILocalVariable(name: "key_cnt", scope: !5328, file: !3, line: 43, type: !7)
!5334 = !DILocation(line: 39, column: 73, scope: !5328)
!5335 = !DILocation(line: 40, column: 26, scope: !5328)
!5336 = !DILocation(line: 42, column: 2, scope: !5328)
!5337 = !DILocation(line: 42, column: 20, scope: !5328)
!5338 = !DILocation(line: 43, column: 2, scope: !5328)
!5339 = !DILocation(line: 43, column: 15, scope: !5328)
!5340 = !DILocation(line: 45, column: 13, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 45, column: 2)
!5342 = !DILocation(line: 45, column: 18, scope: !5341)
!5343 = !DILocation(line: 45, column: 11, scope: !5341)
!5344 = !DILocation(line: 45, column: 7, scope: !5341)
!5345 = !DILocation(line: 45, column: 27, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 45, column: 2)
!5347 = !DILocation(line: 45, column: 32, scope: !5346)
!5348 = !DILocation(line: 45, column: 37, scope: !5346)
!5349 = !DILocation(line: 45, column: 2, scope: !5341)
!5350 = !DILocation(line: 46, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 46, column: 7)
!5352 = !DILocation(line: 46, column: 12, scope: !5351)
!5353 = !DILocation(line: 46, column: 17, scope: !5351)
!5354 = !DILocation(line: 46, column: 7, scope: !5346)
!5355 = !DILocation(line: 47, column: 15, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 47, column: 8)
!5357 = !DILocation(line: 47, column: 21, scope: !5356)
!5358 = !DILocation(line: 47, column: 18, scope: !5356)
!5359 = !DILocation(line: 47, column: 8, scope: !5351)
!5360 = !DILocation(line: 48, column: 12, scope: !5356)
!5361 = !DILocation(line: 48, column: 5, scope: !5356)
!5362 = !DILocation(line: 46, column: 20, scope: !5351)
!5363 = !DILocation(line: 45, column: 51, scope: !5346)
!5364 = !DILocation(line: 45, column: 2, scope: !5346)
!5365 = distinct !{!5365, !5349, !5366, !4619, !4620}
!5366 = !DILocation(line: 48, column: 12, scope: !5341)
!5367 = !DILocation(line: 50, column: 2, scope: !5328)
!5368 = !DILocation(line: 51, column: 1, scope: !5328)
!5369 = !DISubprogram(name: "input_scancode_to_scalar", scope: !206, file: !206, line: 503, type: !5370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!85, !247, !259}
!5372 = distinct !DISubprogram(name: "set_bit", scope: !5373, file: !5373, line: 26, type: !5374, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5373 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !133, !4790}
!5376 = !{!5377, !5378}
!5377 = !DILocalVariable(name: "nr", arg: 1, scope: !5372, file: !5373, line: 26, type: !133)
!5378 = !DILocalVariable(name: "addr", arg: 2, scope: !5372, file: !5373, line: 26, type: !4790)
!5379 = !DILocation(line: 26, column: 42, scope: !5372)
!5380 = !DILocation(line: 26, column: 70, scope: !5372)
!5381 = !DILocation(line: 28, column: 26, scope: !5372)
!5382 = !DILocation(line: 28, column: 33, scope: !5372)
!5383 = !DILocation(line: 28, column: 31, scope: !5372)
!5384 = !DILocation(line: 28, column: 2, scope: !5372)
!5385 = !DILocation(line: 29, column: 15, scope: !5372)
!5386 = !DILocation(line: 29, column: 19, scope: !5372)
!5387 = !DILocation(line: 29, column: 2, scope: !5372)
!5388 = !DILocation(line: 30, column: 1, scope: !5372)
!5389 = distinct !DISubprogram(name: "clear_bit", scope: !5373, file: !5373, line: 39, type: !5374, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5390)
!5390 = !{!5391, !5392}
!5391 = !DILocalVariable(name: "nr", arg: 1, scope: !5389, file: !5373, line: 39, type: !133)
!5392 = !DILocalVariable(name: "addr", arg: 2, scope: !5389, file: !5373, line: 39, type: !4790)
!5393 = !DILocation(line: 39, column: 44, scope: !5389)
!5394 = !DILocation(line: 39, column: 72, scope: !5389)
!5395 = !DILocation(line: 41, column: 26, scope: !5389)
!5396 = !DILocation(line: 41, column: 33, scope: !5389)
!5397 = !DILocation(line: 41, column: 31, scope: !5389)
!5398 = !DILocation(line: 41, column: 2, scope: !5389)
!5399 = !DILocation(line: 42, column: 17, scope: !5389)
!5400 = !DILocation(line: 42, column: 21, scope: !5389)
!5401 = !DILocation(line: 42, column: 2, scope: !5389)
!5402 = !DILocation(line: 43, column: 1, scope: !5389)
!5403 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5126, file: !5126, line: 80, type: !5127, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5404)
!5404 = !{!5405, !5406}
!5405 = !DILocalVariable(name: "v", arg: 1, scope: !5403, file: !5126, line: 80, type: !5129)
!5406 = !DILocalVariable(name: "size", arg: 2, scope: !5403, file: !5126, line: 80, type: !971)
!5407 = !DILocation(line: 80, column: 74, scope: !5403)
!5408 = !DILocation(line: 80, column: 84, scope: !5403)
!5409 = !DILocation(line: 82, column: 20, scope: !5403)
!5410 = !DILocation(line: 82, column: 23, scope: !5403)
!5411 = !DILocation(line: 82, column: 2, scope: !5403)
!5412 = !DILocation(line: 83, column: 2, scope: !5403)
!5413 = !DILocation(line: 84, column: 1, scope: !5403)
!5414 = distinct !DISubprogram(name: "arch_set_bit", scope: !5143, file: !5143, line: 52, type: !5374, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5415)
!5415 = !{!5416, !5417}
!5416 = !DILocalVariable(name: "nr", arg: 1, scope: !5414, file: !5143, line: 52, type: !133)
!5417 = !DILocalVariable(name: "addr", arg: 2, scope: !5414, file: !5143, line: 52, type: !4790)
!5418 = !DILocation(line: 52, column: 19, scope: !5414)
!5419 = !DILocation(line: 52, column: 47, scope: !5414)
!5420 = !DILocation(line: 54, column: 27, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5414, file: !5143, line: 54, column: 6)
!5422 = !DILocation(line: 54, column: 6, scope: !5421)
!5423 = !DILocation(line: 54, column: 6, scope: !5414)
!5424 = !DILocation(line: 56, column: 6, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5421, file: !5143, line: 54, column: 32)
!5426 = !DILocation(line: 57, column: 12, scope: !5425)
!5427 = !DILocation(line: 55, column: 3, scope: !5425)
!5428 = !{i64 2148210148, i64 2148210187, i64 2148210208, i64 2148210245, i64 2148210268, i64 2148210138}
!5429 = !DILocation(line: 59, column: 2, scope: !5425)
!5430 = !DILocation(line: 61, column: 8, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5421, file: !5143, line: 59, column: 9)
!5432 = !DILocation(line: 61, column: 32, scope: !5431)
!5433 = !DILocation(line: 60, column: 3, scope: !5431)
!5434 = !{i64 2148210433, i64 2148210472, i64 2148210493, i64 2148210530, i64 2148210553, i64 2148210423}
!5435 = !DILocation(line: 63, column: 1, scope: !5414)
!5436 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5143, file: !5143, line: 72, type: !5374, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5437)
!5437 = !{!5438, !5439}
!5438 = !DILocalVariable(name: "nr", arg: 1, scope: !5436, file: !5143, line: 72, type: !133)
!5439 = !DILocalVariable(name: "addr", arg: 2, scope: !5436, file: !5143, line: 72, type: !4790)
!5440 = !DILocation(line: 72, column: 21, scope: !5436)
!5441 = !DILocation(line: 72, column: 49, scope: !5436)
!5442 = !DILocation(line: 74, column: 27, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5436, file: !5143, line: 74, column: 6)
!5444 = !DILocation(line: 74, column: 6, scope: !5443)
!5445 = !DILocation(line: 74, column: 6, scope: !5436)
!5446 = !DILocation(line: 76, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5443, file: !5143, line: 74, column: 32)
!5448 = !DILocation(line: 77, column: 13, scope: !5447)
!5449 = !DILocation(line: 77, column: 12, scope: !5447)
!5450 = !DILocation(line: 75, column: 3, scope: !5447)
!5451 = !{i64 2148211436, i64 2148211475, i64 2148211496, i64 2148211533, i64 2148211556, i64 2148211426}
!5452 = !DILocation(line: 78, column: 2, scope: !5447)
!5453 = !DILocation(line: 80, column: 8, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5443, file: !5143, line: 78, column: 9)
!5455 = !DILocation(line: 80, column: 32, scope: !5454)
!5456 = !DILocation(line: 79, column: 3, scope: !5454)
!5457 = !{i64 2148211721, i64 2148211760, i64 2148211781, i64 2148211818, i64 2148211841, i64 2148211711}
!5458 = !DILocation(line: 82, column: 1, scope: !5436)
