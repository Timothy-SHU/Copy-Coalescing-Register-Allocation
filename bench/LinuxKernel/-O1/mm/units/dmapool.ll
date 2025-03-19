; ModuleID = 'mm/dmapool.c'
source_filename = "mm/dmapool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_pool_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_pool_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_pool_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_pool_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_pool_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_pool_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_pool_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_pool_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dmam_pool_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dmam_pool_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dmam_pool_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dmam_pool_destroy ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.dma_pool = type { %struct.list_head, %struct.spinlock, ptr, i64, i64, i64, ptr, i32, i32, i32, [32 x i8], %struct.list_head }
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
%struct.dma_page = type { %struct.list_head, ptr, i64 }
%struct.dma_block = type { ptr, i64 }

@pools_reg_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pools_reg_lock, i64 16), ptr getelementptr (i8, ptr @pools_reg_lock, i64 16) } }, align 8, !dbg !0
@pools_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pools_lock, i64 16), ptr getelementptr (i8, ptr @pools_lock, i64 16) } }, align 8, !dbg !4621
@dev_attr_pools = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @pools_show, ptr null }, align 8, !dbg !4625
@__UNIQUE_ID___addressable_dma_pool_create293 = internal global ptr @dma_pool_create, section ".discard.addressable", align 8, !dbg !4586
@.str = private unnamed_addr constant [12 x i8] c"%s %s busy\0A\00", align 1, !dbg !4588
@__func__.dma_pool_destroy = private unnamed_addr constant [17 x i8] c"dma_pool_destroy\00", align 1, !dbg !4591
@__UNIQUE_ID___addressable_dma_pool_destroy294 = internal global ptr @dma_pool_destroy, section ".discard.addressable", align 8, !dbg !4596
@__UNIQUE_ID___addressable_dma_pool_alloc295 = internal global ptr @dma_pool_alloc, section ".discard.addressable", align 8, !dbg !4598
@__UNIQUE_ID___addressable_dma_pool_free296 = internal global ptr @dma_pool_free, section ".discard.addressable", align 8, !dbg !4600
@.str.1 = private unnamed_addr constant [18 x i8] c"dmam_pool_release\00", align 1, !dbg !4602
@__UNIQUE_ID___addressable_dmam_pool_create297 = internal global ptr @dmam_pool_create, section ".discard.addressable", align 8, !dbg !4607
@.str.2 = private unnamed_addr constant [13 x i8] c"mm/dmapool.c\00", align 1, !dbg !4609
@__UNIQUE_ID___addressable_dmam_pool_destroy298 = internal global ptr @dmam_pool_destroy, section ".discard.addressable", align 8, !dbg !4614
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4616
@.str.4 = private unnamed_addr constant [6 x i8] c"pools\00", align 1, !dbg !4623
@.str.5 = private unnamed_addr constant [16 x i8] c"poolinfo - 0.1\0A\00", align 1, !dbg !4639
@.str.6 = private unnamed_addr constant [26 x i8] c"%-16s %4zu %4zu %4u %2zu\0A\00", align 1, !dbg !4641
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4646
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@init_on_alloc = external dso_local global %struct.static_key_false, align 8
@init_on_free = external dso_local global %struct.static_key_false, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_dma_pool_create293, ptr @__UNIQUE_ID___addressable_dma_pool_destroy294, ptr @__UNIQUE_ID___addressable_dma_pool_alloc295, ptr @__UNIQUE_ID___addressable_dma_pool_free296, ptr @__UNIQUE_ID___addressable_dmam_pool_create297, ptr @__UNIQUE_ID___addressable_dmam_pool_destroy298, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_pool_create(ptr noundef %name, ptr noundef %dev, i64 noundef %size, i64 noundef %align, i64 noundef %boundary) #0 align 16 !dbg !4659 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %boundary.addr = alloca i64, align 8
  %retval1 = alloca ptr, align 8
  %allocation = alloca i64, align 8
  %empty = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x289 = alloca i64, align 8
  %__UNIQUE_ID___y290 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x291 = alloca i64, align 8
  %__UNIQUE_ID___y292 = alloca i64, align 8
  %tmp29 = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %err = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4663, metadata !DIExpression()), !dbg !4680
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4664, metadata !DIExpression()), !dbg !4681
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4665, metadata !DIExpression()), !dbg !4682
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !4666, metadata !DIExpression()), !dbg !4683
  store i64 %boundary, ptr %boundary.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boundary.addr, metadata !4667, metadata !DIExpression()), !dbg !4684
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #16, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4668, metadata !DIExpression()), !dbg !4686
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocation) #16, !dbg !4687
  call void @llvm.dbg.declare(metadata ptr %allocation, metadata !4669, metadata !DIExpression()), !dbg !4688
  call void @llvm.lifetime.start.p0(i64 1, ptr %empty) #16, !dbg !4689
  call void @llvm.dbg.declare(metadata ptr %empty, metadata !4670, metadata !DIExpression()), !dbg !4690
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4691
  %tobool = icmp ne ptr %0, null, !dbg !4691
  br i1 %tobool, label %if.end, label %if.then, !dbg !4693

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !4694

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %align.addr, align 8, !dbg !4695
  %cmp = icmp eq i64 %1, 0, !dbg !4697
  br i1 %cmp, label %if.then2, label %if.else, !dbg !4698

if.then2:                                         ; preds = %if.end
  store i64 1, ptr %align.addr, align 8, !dbg !4699
  br label %if.end6, !dbg !4700

if.else:                                          ; preds = %if.end
  %2 = load i64, ptr %align.addr, align 8, !dbg !4701
  %3 = load i64, ptr %align.addr, align 8, !dbg !4703
  %sub = sub i64 %3, 1, !dbg !4704
  %and = and i64 %2, %sub, !dbg !4705
  %tobool3 = icmp ne i64 %and, 0, !dbg !4705
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4706

if.then4:                                         ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !4707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !4707

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4708
  %cmp7 = icmp eq i64 %4, 0, !dbg !4710
  br i1 %cmp7, label %if.then9, label %lor.lhs.false, !dbg !4711

lor.lhs.false:                                    ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4712
  %cmp8 = icmp ugt i64 %5, 2147483647, !dbg !4713
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4714

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  store ptr null, ptr %retval, align 8, !dbg !4715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !4715

if.end10:                                         ; preds = %lor.lhs.false
  %6 = load i64, ptr %size.addr, align 8, !dbg !4716
  %cmp11 = icmp ult i64 %6, 16, !dbg !4718
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4719

if.then12:                                        ; preds = %if.end10
  store i64 16, ptr %size.addr, align 8, !dbg !4720
  br label %if.end13, !dbg !4721

if.end13:                                         ; preds = %if.then12, %if.end10
  %7 = load i64, ptr %size.addr, align 8, !dbg !4722
  %8 = load i64, ptr %align.addr, align 8, !dbg !4722
  %sub14 = sub i64 %8, 1, !dbg !4722
  %add = add i64 %7, %sub14, !dbg !4722
  %9 = load i64, ptr %align.addr, align 8, !dbg !4722
  %sub15 = sub i64 %9, 1, !dbg !4722
  %not = xor i64 %sub15, -1, !dbg !4722
  %and16 = and i64 %add, %not, !dbg !4722
  store i64 %and16, ptr %size.addr, align 8, !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x289) #16, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x289, metadata !4671, metadata !DIExpression()), !dbg !4724
  %10 = load i64, ptr %size.addr, align 8, !dbg !4724
  store i64 %10, ptr %__UNIQUE_ID___x289, align 8, !dbg !4724
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y290) #16, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y290, metadata !4673, metadata !DIExpression()), !dbg !4724
  store i64 4096, ptr %__UNIQUE_ID___y290, align 8, !dbg !4724
  %11 = load i64, ptr %__UNIQUE_ID___x289, align 8, !dbg !4724
  %12 = load i64, ptr %__UNIQUE_ID___y290, align 8, !dbg !4724
  %cmp17 = icmp ugt i64 %11, %12, !dbg !4724
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !4724

cond.true:                                        ; preds = %if.end13
  %13 = load i64, ptr %__UNIQUE_ID___x289, align 8, !dbg !4724
  br label %cond.end, !dbg !4724

cond.false:                                       ; preds = %if.end13
  %14 = load i64, ptr %__UNIQUE_ID___y290, align 8, !dbg !4724
  br label %cond.end, !dbg !4724

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !4724
  store i64 %cond, ptr %tmp, align 8, !dbg !4724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y290) #16, !dbg !4725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x289) #16, !dbg !4725
  %15 = load i64, ptr %tmp, align 8, !dbg !4724
  store i64 %15, ptr %allocation, align 8, !dbg !4726
  %16 = load i64, ptr %boundary.addr, align 8, !dbg !4727
  %tobool18 = icmp ne i64 %16, 0, !dbg !4727
  br i1 %tobool18, label %if.else20, label %if.then19, !dbg !4729

if.then19:                                        ; preds = %cond.end
  %17 = load i64, ptr %allocation, align 8, !dbg !4730
  store i64 %17, ptr %boundary.addr, align 8, !dbg !4731
  br label %if.end28, !dbg !4732

if.else20:                                        ; preds = %cond.end
  %18 = load i64, ptr %boundary.addr, align 8, !dbg !4733
  %19 = load i64, ptr %size.addr, align 8, !dbg !4735
  %cmp21 = icmp ult i64 %18, %19, !dbg !4736
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22, !dbg !4737

lor.lhs.false22:                                  ; preds = %if.else20
  %20 = load i64, ptr %boundary.addr, align 8, !dbg !4738
  %21 = load i64, ptr %boundary.addr, align 8, !dbg !4739
  %sub23 = sub i64 %21, 1, !dbg !4740
  %and24 = and i64 %20, %sub23, !dbg !4741
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4741
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4742

if.then26:                                        ; preds = %lor.lhs.false22, %if.else20
  store ptr null, ptr %retval, align 8, !dbg !4743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !4743

if.end27:                                         ; preds = %lor.lhs.false22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x291) #16, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x291, metadata !4674, metadata !DIExpression()), !dbg !4744
  %22 = load i64, ptr %boundary.addr, align 8, !dbg !4744
  store i64 %22, ptr %__UNIQUE_ID___x291, align 8, !dbg !4744
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y292) #16, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y292, metadata !4676, metadata !DIExpression()), !dbg !4744
  %23 = load i64, ptr %allocation, align 8, !dbg !4744
  store i64 %23, ptr %__UNIQUE_ID___y292, align 8, !dbg !4744
  %24 = load i64, ptr %__UNIQUE_ID___x291, align 8, !dbg !4744
  %25 = load i64, ptr %__UNIQUE_ID___y292, align 8, !dbg !4744
  %cmp30 = icmp ult i64 %24, %25, !dbg !4744
  br i1 %cmp30, label %cond.true31, label %cond.false32, !dbg !4744

cond.true31:                                      ; preds = %if.end28
  %26 = load i64, ptr %__UNIQUE_ID___x291, align 8, !dbg !4744
  br label %cond.end33, !dbg !4744

cond.false32:                                     ; preds = %if.end28
  %27 = load i64, ptr %__UNIQUE_ID___y292, align 8, !dbg !4744
  br label %cond.end33, !dbg !4744

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i64 [ %26, %cond.true31 ], [ %27, %cond.false32 ], !dbg !4744
  store i64 %cond34, ptr %tmp29, align 8, !dbg !4744
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y292) #16, !dbg !4745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x291) #16, !dbg !4745
  %28 = load i64, ptr %tmp29, align 8, !dbg !4744
  store i64 %28, ptr %boundary.addr, align 8, !dbg !4746
  %call = call noalias ptr @kzalloc(i64 noundef 128, i32 noundef 3264) #17, !dbg !4747
  store ptr %call, ptr %retval1, align 8, !dbg !4748
  %29 = load ptr, ptr %retval1, align 8, !dbg !4749
  %tobool35 = icmp ne ptr %29, null, !dbg !4749
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !4751

if.then36:                                        ; preds = %cond.end33
  %30 = load ptr, ptr %retval1, align 8, !dbg !4752
  store ptr %30, ptr %retval, align 8, !dbg !4753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !4753

if.end37:                                         ; preds = %cond.end33
  %31 = load ptr, ptr %retval1, align 8, !dbg !4754
  %name38 = getelementptr inbounds %struct.dma_pool, ptr %31, i32 0, i32 10, !dbg !4755
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name38, i64 0, i64 0, !dbg !4754
  %32 = load ptr, ptr %name.addr, align 8, !dbg !4756
  %call39 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %32, i64 noundef 32) #18, !dbg !4757
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !4758
  %34 = load ptr, ptr %retval1, align 8, !dbg !4759
  %dev40 = getelementptr inbounds %struct.dma_pool, ptr %34, i32 0, i32 6, !dbg !4760
  store ptr %33, ptr %dev40, align 8, !dbg !4761
  %35 = load ptr, ptr %retval1, align 8, !dbg !4762
  %page_list = getelementptr inbounds %struct.dma_pool, ptr %35, i32 0, i32 0, !dbg !4763
  call void @INIT_LIST_HEAD(ptr noundef %page_list) #18, !dbg !4764
  br label %do.body, !dbg !4765

do.body:                                          ; preds = %if.end37
  %36 = load ptr, ptr %retval1, align 8, !dbg !4766
  %lock = getelementptr inbounds %struct.dma_pool, ptr %36, i32 0, i32 1, !dbg !4766
  %call41 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !4766
  %37 = load ptr, ptr %retval1, align 8, !dbg !4766
  %lock42 = getelementptr inbounds %struct.dma_pool, ptr %37, i32 0, i32 1, !dbg !4766
  %38 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4766
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %38, i32 0, i32 0, !dbg !4766
  %39 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4766
  %counter = getelementptr inbounds %struct.atomic_t, ptr %39, i32 0, i32 0, !dbg !4766
  store i32 0, ptr %counter, align 4, !dbg !4766
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock42, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4766
  br label %do.cond, !dbg !4766

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4766

do.end:                                           ; preds = %do.cond
  %40 = load i64, ptr %size.addr, align 8, !dbg !4768
  %conv = trunc i64 %40 to i32, !dbg !4768
  %41 = load ptr, ptr %retval1, align 8, !dbg !4769
  %size43 = getelementptr inbounds %struct.dma_pool, ptr %41, i32 0, i32 7, !dbg !4770
  store i32 %conv, ptr %size43, align 8, !dbg !4771
  %42 = load i64, ptr %boundary.addr, align 8, !dbg !4772
  %conv44 = trunc i64 %42 to i32, !dbg !4772
  %43 = load ptr, ptr %retval1, align 8, !dbg !4773
  %boundary45 = getelementptr inbounds %struct.dma_pool, ptr %43, i32 0, i32 9, !dbg !4774
  store i32 %conv44, ptr %boundary45, align 8, !dbg !4775
  %44 = load i64, ptr %allocation, align 8, !dbg !4776
  %conv46 = trunc i64 %44 to i32, !dbg !4776
  %45 = load ptr, ptr %retval1, align 8, !dbg !4777
  %allocation47 = getelementptr inbounds %struct.dma_pool, ptr %45, i32 0, i32 8, !dbg !4778
  store i32 %conv46, ptr %allocation47, align 4, !dbg !4779
  %46 = load ptr, ptr %retval1, align 8, !dbg !4780
  %pools = getelementptr inbounds %struct.dma_pool, ptr %46, i32 0, i32 11, !dbg !4781
  call void @INIT_LIST_HEAD(ptr noundef %pools) #18, !dbg !4782
  call void @mutex_lock(ptr noundef @pools_reg_lock) #18, !dbg !4783
  call void @mutex_lock(ptr noundef @pools_lock) #18, !dbg !4784
  %47 = load ptr, ptr %dev.addr, align 8, !dbg !4785
  %dma_pools = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 20, !dbg !4786
  %call48 = call i32 @list_empty(ptr noundef %dma_pools) #18, !dbg !4787
  %tobool49 = icmp ne i32 %call48, 0, !dbg !4787
  %frombool = zext i1 %tobool49 to i8, !dbg !4788
  store i8 %frombool, ptr %empty, align 1, !dbg !4788
  %48 = load ptr, ptr %retval1, align 8, !dbg !4789
  %pools50 = getelementptr inbounds %struct.dma_pool, ptr %48, i32 0, i32 11, !dbg !4790
  %49 = load ptr, ptr %dev.addr, align 8, !dbg !4791
  %dma_pools51 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 20, !dbg !4792
  call void @list_add(ptr noundef %pools50, ptr noundef %dma_pools51) #18, !dbg !4793
  call void @mutex_unlock(ptr noundef @pools_lock) #18, !dbg !4794
  %50 = load i8, ptr %empty, align 1, !dbg !4795, !range !4796, !noundef !911
  %tobool52 = trunc i8 %50 to i1, !dbg !4795
  br i1 %tobool52, label %if.then53, label %if.end59, !dbg !4797

if.then53:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4798
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4677, metadata !DIExpression()), !dbg !4799
  %51 = load ptr, ptr %dev.addr, align 8, !dbg !4800
  %call54 = call i32 @device_create_file(ptr noundef %51, ptr noundef @dev_attr_pools) #18, !dbg !4801
  store i32 %call54, ptr %err, align 4, !dbg !4802
  %52 = load i32, ptr %err, align 4, !dbg !4803
  %tobool55 = icmp ne i32 %52, 0, !dbg !4803
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !4805

if.then56:                                        ; preds = %if.then53
  call void @mutex_lock(ptr noundef @pools_lock) #18, !dbg !4806
  %53 = load ptr, ptr %retval1, align 8, !dbg !4808
  %pools57 = getelementptr inbounds %struct.dma_pool, ptr %53, i32 0, i32 11, !dbg !4809
  call void @list_del(ptr noundef %pools57) #18, !dbg !4810
  call void @mutex_unlock(ptr noundef @pools_lock) #18, !dbg !4811
  call void @mutex_unlock(ptr noundef @pools_reg_lock) #18, !dbg !4812
  %54 = load ptr, ptr %retval1, align 8, !dbg !4813
  call void @kfree(ptr noundef %54) #18, !dbg !4814
  store ptr null, ptr %retval, align 8, !dbg !4815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4815

if.end58:                                         ; preds = %if.then53
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4816
  br label %cleanup, !dbg !4816

cleanup:                                          ; preds = %if.end58, %if.then56
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4816
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end59, !dbg !4817

if.end59:                                         ; preds = %cleanup.cont, %do.end
  call void @mutex_unlock(ptr noundef @pools_reg_lock) #18, !dbg !4818
  %55 = load ptr, ptr %retval1, align 8, !dbg !4819
  store ptr %55, ptr %retval, align 8, !dbg !4820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !4820

cleanup60:                                        ; preds = %if.end59, %cleanup, %if.then36, %if.then26, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %empty) #16, !dbg !4821
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocation) #16, !dbg !4821
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #16, !dbg !4821
  %56 = load ptr, ptr %retval, align 8, !dbg !4821
  ret ptr %56, !dbg !4821
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4822 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4826, metadata !DIExpression()), !dbg !4828
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4827, metadata !DIExpression()), !dbg !4829
  %0 = load i64, ptr %size.addr, align 8, !dbg !4830
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4831
  %or = or i32 %1, 256, !dbg !4832
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4833
  ret ptr %call, !dbg !4834
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4835 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !4839 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  br label %do.body, !dbg !4846

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4847

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4849

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4847

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4851
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4851
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4851
  store volatile ptr %0, ptr %next, align 8, !dbg !4851
  br label %do.end3, !dbg !4851

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4847

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4853

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4854

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4856

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4854

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4858
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4858
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4858
  store volatile ptr %2, ptr %prev, align 8, !dbg !4858
  br label %do.end9, !dbg !4858

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4854

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !4861 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4869
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4870
  ret ptr %1, !dbg !4871
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4872 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !4876 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  br label %do.body, !dbg !4884

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4886

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4884
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4884
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4884
  store ptr %1, ptr %tmp, align 8, !dbg !4886
  %2 = load ptr, ptr %tmp, align 8, !dbg !4884
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4888
  %cmp = icmp eq ptr %2, %3, !dbg !4889
  %conv = zext i1 %cmp to i32, !dbg !4889
  ret i32 %conv, !dbg !4890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4891 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4895, metadata !DIExpression()), !dbg !4897
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4896, metadata !DIExpression()), !dbg !4898
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4899
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4900
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4901
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4902
  %3 = load ptr, ptr %next, align 8, !dbg !4902
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !4903
  ret void, !dbg !4904
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4905 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4906 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !4911 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4915
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !4916
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4917
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4918
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4919
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4920
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4921
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4922
  ret void, !dbg !4923
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4924 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_pool_destroy(ptr noundef %pool) #0 align 16 !dbg !4927 {
entry:
  %pool.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %empty = alloca i8, align 1
  %busy = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr30 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4931, metadata !DIExpression()), !dbg !4944
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4932, metadata !DIExpression()), !dbg !4946
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4933, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 1, ptr %empty) #16, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %empty, metadata !4934, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0(i64 1, ptr %busy) #16, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %busy, metadata !4935, metadata !DIExpression()), !dbg !4950
  store i8 0, ptr %busy, align 1, !dbg !4950
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !4951
  %tobool = icmp ne ptr %0, null, !dbg !4951
  %lnot = xor i1 %tobool, true, !dbg !4951
  %lnot1 = xor i1 %lnot, true, !dbg !4951
  %lnot2 = xor i1 %lnot1, true, !dbg !4951
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4951
  %conv = sext i32 %lnot.ext to i64, !dbg !4951
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4951
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4951
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4954

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @pools_reg_lock) #18, !dbg !4955
  call void @mutex_lock(ptr noundef @pools_lock) #18, !dbg !4956
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !4957
  %pools = getelementptr inbounds %struct.dma_pool, ptr %1, i32 0, i32 11, !dbg !4958
  call void @list_del(ptr noundef %pools) #18, !dbg !4959
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !4960
  %dev = getelementptr inbounds %struct.dma_pool, ptr %2, i32 0, i32 6, !dbg !4961
  %3 = load ptr, ptr %dev, align 8, !dbg !4961
  %dma_pools = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 20, !dbg !4962
  %call = call i32 @list_empty(ptr noundef %dma_pools) #18, !dbg !4963
  %tobool4 = icmp ne i32 %call, 0, !dbg !4963
  %frombool = zext i1 %tobool4 to i8, !dbg !4964
  store i8 %frombool, ptr %empty, align 1, !dbg !4964
  call void @mutex_unlock(ptr noundef @pools_lock) #18, !dbg !4965
  %4 = load i8, ptr %empty, align 1, !dbg !4966, !range !4796, !noundef !911
  %tobool5 = trunc i8 %4 to i1, !dbg !4966
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !4968

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !4969
  %dev7 = getelementptr inbounds %struct.dma_pool, ptr %5, i32 0, i32 6, !dbg !4970
  %6 = load ptr, ptr %dev7, align 8, !dbg !4970
  call void @device_remove_file(ptr noundef %6, ptr noundef @dev_attr_pools) #18, !dbg !4971
  br label %if.end8, !dbg !4971

if.end8:                                          ; preds = %if.then6, %if.end
  call void @mutex_unlock(ptr noundef @pools_reg_lock) #18, !dbg !4972
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !4973
  %nr_active = getelementptr inbounds %struct.dma_pool, ptr %7, i32 0, i32 4, !dbg !4975
  %8 = load i64, ptr %nr_active, align 8, !dbg !4975
  %tobool9 = icmp ne i64 %8, 0, !dbg !4973
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4976

if.then10:                                        ; preds = %if.end8
  br label %do.body, !dbg !4977

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !4980

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4980

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !4977
  %dev11 = getelementptr inbounds %struct.dma_pool, ptr %9, i32 0, i32 6, !dbg !4977
  %10 = load ptr, ptr %dev11, align 8, !dbg !4977
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !4977
  %name = getelementptr inbounds %struct.dma_pool, ptr %11, i32 0, i32 10, !dbg !4977
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !4977
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef @.str, ptr noundef @__func__.dma_pool_destroy, ptr noundef %arraydecay) #19, !dbg !4977
  store i8 1, ptr %busy, align 1, !dbg !4982
  br label %if.end12, !dbg !4983

if.end12:                                         ; preds = %do.end, %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4936, metadata !DIExpression()), !dbg !4984
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !4984
  %page_list = getelementptr inbounds %struct.dma_pool, ptr %12, i32 0, i32 0, !dbg !4984
  %next = getelementptr inbounds %struct.list_head, ptr %page_list, i32 0, i32 0, !dbg !4984
  %13 = load ptr, ptr %next, align 8, !dbg !4984
  store ptr %13, ptr %__mptr, align 8, !dbg !4984
  %14 = load ptr, ptr %__mptr, align 8, !dbg !4984
  %add.ptr = getelementptr i8, ptr %14, i64 0, !dbg !4984
  store ptr %add.ptr, ptr %tmp13, align 8, !dbg !4984
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4985
  %15 = load ptr, ptr %tmp13, align 8, !dbg !4984
  store ptr %15, ptr %page, align 8, !dbg !4985
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #16, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !4939, metadata !DIExpression()), !dbg !4986
  %16 = load ptr, ptr %page, align 8, !dbg !4986
  %page_list15 = getelementptr inbounds %struct.dma_page, ptr %16, i32 0, i32 0, !dbg !4986
  %next16 = getelementptr inbounds %struct.list_head, ptr %page_list15, i32 0, i32 0, !dbg !4986
  %17 = load ptr, ptr %next16, align 8, !dbg !4986
  store ptr %17, ptr %__mptr14, align 8, !dbg !4986
  %18 = load ptr, ptr %__mptr14, align 8, !dbg !4986
  %add.ptr18 = getelementptr i8, ptr %18, i64 0, !dbg !4986
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !4986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #16, !dbg !4985
  %19 = load ptr, ptr %tmp17, align 8, !dbg !4986
  store ptr %19, ptr %tmp, align 8, !dbg !4985
  br label %for.cond, !dbg !4985

for.cond:                                         ; preds = %for.inc, %if.end12
  %20 = load ptr, ptr %page, align 8, !dbg !4987
  %page_list19 = getelementptr inbounds %struct.dma_page, ptr %20, i32 0, i32 0, !dbg !4987
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !4987
  %page_list20 = getelementptr inbounds %struct.dma_pool, ptr %21, i32 0, i32 0, !dbg !4987
  %cmp = icmp eq ptr %page_list19, %page_list20, !dbg !4987
  %lnot22 = xor i1 %cmp, true, !dbg !4987
  br i1 %lnot22, label %for.body, label %for.end, !dbg !4985

for.body:                                         ; preds = %for.cond
  %22 = load i8, ptr %busy, align 1, !dbg !4988, !range !4796, !noundef !911
  %tobool24 = trunc i8 %22 to i1, !dbg !4988
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !4991

if.then25:                                        ; preds = %for.body
  %23 = load ptr, ptr %pool.addr, align 8, !dbg !4992
  %dev26 = getelementptr inbounds %struct.dma_pool, ptr %23, i32 0, i32 6, !dbg !4993
  %24 = load ptr, ptr %dev26, align 8, !dbg !4993
  %25 = load ptr, ptr %pool.addr, align 8, !dbg !4994
  %allocation = getelementptr inbounds %struct.dma_pool, ptr %25, i32 0, i32 8, !dbg !4995
  %26 = load i32, ptr %allocation, align 4, !dbg !4995
  %conv27 = zext i32 %26 to i64, !dbg !4994
  %27 = load ptr, ptr %page, align 8, !dbg !4996
  %vaddr = getelementptr inbounds %struct.dma_page, ptr %27, i32 0, i32 1, !dbg !4997
  %28 = load ptr, ptr %vaddr, align 8, !dbg !4997
  %29 = load ptr, ptr %page, align 8, !dbg !4998
  %dma = getelementptr inbounds %struct.dma_page, ptr %29, i32 0, i32 2, !dbg !4999
  %30 = load i64, ptr %dma, align 8, !dbg !4999
  call void @dma_free_coherent(ptr noundef %24, i64 noundef %conv27, ptr noundef %28, i64 noundef %30) #18, !dbg !5000
  br label %if.end28, !dbg !5000

if.end28:                                         ; preds = %if.then25, %for.body
  %31 = load ptr, ptr %page, align 8, !dbg !5001
  %page_list29 = getelementptr inbounds %struct.dma_page, ptr %31, i32 0, i32 0, !dbg !5002
  call void @list_del(ptr noundef %page_list29) #18, !dbg !5003
  %32 = load ptr, ptr %page, align 8, !dbg !5004
  call void @kfree(ptr noundef %32) #18, !dbg !5005
  br label %for.inc, !dbg !5006

for.inc:                                          ; preds = %if.end28
  %33 = load ptr, ptr %tmp, align 8, !dbg !4987
  store ptr %33, ptr %page, align 8, !dbg !4987
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr30) #16, !dbg !5007
  call void @llvm.dbg.declare(metadata ptr %__mptr30, metadata !4941, metadata !DIExpression()), !dbg !5007
  %34 = load ptr, ptr %tmp, align 8, !dbg !5007
  %page_list31 = getelementptr inbounds %struct.dma_page, ptr %34, i32 0, i32 0, !dbg !5007
  %next32 = getelementptr inbounds %struct.list_head, ptr %page_list31, i32 0, i32 0, !dbg !5007
  %35 = load ptr, ptr %next32, align 8, !dbg !5007
  store ptr %35, ptr %__mptr30, align 8, !dbg !5007
  %36 = load ptr, ptr %__mptr30, align 8, !dbg !5007
  %add.ptr34 = getelementptr i8, ptr %36, i64 0, !dbg !5007
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr30) #16, !dbg !4987
  %37 = load ptr, ptr %tmp33, align 8, !dbg !5007
  store ptr %37, ptr %tmp, align 8, !dbg !4987
  br label %for.cond, !dbg !4987, !llvm.loop !5008

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %pool.addr, align 8, !dbg !5012
  call void @kfree(ptr noundef %38) #18, !dbg !5013
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5014
  br label %cleanup, !dbg !5014

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %busy) #16, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 1, ptr %empty) #16, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !5014
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5014

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5015 dso_local void @device_remove_file(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5018 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_free_coherent(ptr noundef %dev, i64 noundef %size, ptr noundef %cpu_addr, i64 noundef %dma_handle) #5 align 16 !dbg !5022 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca ptr, align 8
  %dma_handle.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5027, metadata !DIExpression()), !dbg !5031
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5028, metadata !DIExpression()), !dbg !5032
  store ptr %cpu_addr, ptr %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_addr.addr, metadata !5029, metadata !DIExpression()), !dbg !5033
  store i64 %dma_handle, ptr %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_handle.addr, metadata !5030, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5035
  %1 = load i64, ptr %size.addr, align 8, !dbg !5036
  %2 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !5037
  %3 = load i64, ptr %dma_handle.addr, align 8, !dbg !5038
  call void @dma_free_attrs(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 0) #18, !dbg !5039
  ret void, !dbg !5040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_pool_alloc(ptr noundef %pool, i32 noundef %mem_flags, ptr noundef %handle) #0 align 16 !dbg !5041 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %mem_flags.addr = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %page = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5046, metadata !DIExpression()), !dbg !5064
  store i32 %mem_flags, ptr %mem_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_flags.addr, metadata !5047, metadata !DIExpression()), !dbg !5065
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5048, metadata !DIExpression()), !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %block, metadata !5049, metadata !DIExpression()), !dbg !5068
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !5069
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5050, metadata !DIExpression()), !dbg !5070
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5051, metadata !DIExpression()), !dbg !5072
  %0 = load i32, ptr %mem_flags.addr, align 4, !dbg !5073
  call void @might_alloc(i32 noundef %0) #18, !dbg !5074
  br label %do.body, !dbg !5075

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5076

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5052, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5056, metadata !DIExpression()), !dbg !5077
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5077
  %conv = zext i1 %cmp to i32, !dbg !5077
  store i32 1, ptr %tmp, align 4, !dbg !5077
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5078
  %1 = load i32, ptr %tmp, align 4, !dbg !5077
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5078
  %lock = getelementptr inbounds %struct.dma_pool, ptr %2, i32 0, i32 1, !dbg !5078
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5078
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5078
  store i64 %call2, ptr %flags, align 8, !dbg !5078
  br label %do.cond, !dbg !5078

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5078

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5076

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5076

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5079
  %call5 = call ptr @pool_block_pop(ptr noundef %3) #18, !dbg !5080
  store ptr %call5, ptr %block, align 8, !dbg !5081
  %4 = load ptr, ptr %block, align 8, !dbg !5082
  %tobool = icmp ne ptr %4, null, !dbg !5082
  br i1 %tobool, label %if.end25, label %if.then, !dbg !5083

if.then:                                          ; preds = %do.end4
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5084
  %lock6 = getelementptr inbounds %struct.dma_pool, ptr %5, i32 0, i32 1, !dbg !5085
  %6 = load i64, ptr %flags, align 8, !dbg !5086
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %6) #18, !dbg !5087
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5088
  %8 = load i32, ptr %mem_flags.addr, align 4, !dbg !5089
  %and = and i32 %8, -257, !dbg !5090
  %call7 = call ptr @pool_alloc_page(ptr noundef %7, i32 noundef %and) #18, !dbg !5091
  store ptr %call7, ptr %page, align 8, !dbg !5092
  %9 = load ptr, ptr %page, align 8, !dbg !5093
  %tobool8 = icmp ne ptr %9, null, !dbg !5093
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !5095

if.then9:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !5096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5096

if.end:                                           ; preds = %if.then
  br label %do.body10, !dbg !5097

do.body10:                                        ; preds = %if.end
  br label %do.body11, !dbg !5098

do.body11:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #16, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !5057, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #16, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !5063, metadata !DIExpression()), !dbg !5099
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !5099
  %conv15 = zext i1 %cmp14 to i32, !dbg !5099
  store i32 1, ptr %tmp16, align 4, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #16, !dbg !5100
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #16, !dbg !5100
  %10 = load i32, ptr %tmp16, align 4, !dbg !5099
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !5100
  %lock17 = getelementptr inbounds %struct.dma_pool, ptr %11, i32 0, i32 1, !dbg !5100
  %call18 = call ptr @spinlock_check(ptr noundef %lock17) #18, !dbg !5100
  %call19 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call18) #18, !dbg !5100
  store i64 %call19, ptr %flags, align 8, !dbg !5100
  br label %do.cond20, !dbg !5100

do.cond20:                                        ; preds = %do.body11
  br label %do.end21, !dbg !5100

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !5098

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5098

do.end23:                                         ; preds = %do.cond22
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5101
  %13 = load ptr, ptr %page, align 8, !dbg !5102
  call void @pool_initialise_page(ptr noundef %12, ptr noundef %13) #18, !dbg !5103
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !5104
  %call24 = call ptr @pool_block_pop(ptr noundef %14) #18, !dbg !5105
  store ptr %call24, ptr %block, align 8, !dbg !5106
  br label %if.end25, !dbg !5107

if.end25:                                         ; preds = %do.end23, %do.end4
  %15 = load ptr, ptr %pool.addr, align 8, !dbg !5108
  %lock26 = getelementptr inbounds %struct.dma_pool, ptr %15, i32 0, i32 1, !dbg !5109
  %16 = load i64, ptr %flags, align 8, !dbg !5110
  call void @spin_unlock_irqrestore(ptr noundef %lock26, i64 noundef %16) #18, !dbg !5111
  %17 = load ptr, ptr %block, align 8, !dbg !5112
  %dma = getelementptr inbounds %struct.dma_block, ptr %17, i32 0, i32 1, !dbg !5113
  %18 = load i64, ptr %dma, align 8, !dbg !5113
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !5114
  store i64 %18, ptr %19, align 8, !dbg !5115
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !5116
  %21 = load ptr, ptr %block, align 8, !dbg !5117
  %22 = load i32, ptr %mem_flags.addr, align 4, !dbg !5118
  call void @pool_check_block(ptr noundef %20, ptr noundef %21, i32 noundef %22) #18, !dbg !5119
  %23 = load i32, ptr %mem_flags.addr, align 4, !dbg !5120
  %call27 = call zeroext i1 @want_init_on_alloc(i32 noundef %23) #18, !dbg !5122
  br i1 %call27, label %if.then28, label %if.end30, !dbg !5123

if.then28:                                        ; preds = %if.end25
  %24 = load ptr, ptr %block, align 8, !dbg !5124
  %25 = load ptr, ptr %pool.addr, align 8, !dbg !5125
  %size = getelementptr inbounds %struct.dma_pool, ptr %25, i32 0, i32 7, !dbg !5126
  %26 = load i32, ptr %size, align 8, !dbg !5126
  %conv29 = zext i32 %26 to i64, !dbg !5125
  call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %conv29, i1 false), !dbg !5127
  br label %if.end30, !dbg !5127

if.end30:                                         ; preds = %if.then28, %if.end25
  %27 = load ptr, ptr %block, align 8, !dbg !5128
  store ptr %27, ptr %retval, align 8, !dbg !5129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5129

cleanup:                                          ; preds = %if.end30, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5130
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !5130
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !5130
  %28 = load ptr, ptr %retval, align 8, !dbg !5130
  ret ptr %28, !dbg !5130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_alloc(i32 noundef %gfp_mask) #5 align 16 !dbg !5131 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5138
  call void @fs_reclaim_acquire(i32 noundef %0) #18, !dbg !5139
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5140
  call void @fs_reclaim_release(i32 noundef %1) #18, !dbg !5141
  br label %do.body, !dbg !5142

do.body:                                          ; preds = %entry
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5143
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %2) #18, !dbg !5143
  br i1 %call, label %if.then, label %if.end, !dbg !5146

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !5143

do.body1:                                         ; preds = %if.then
  call void @might_resched() #18, !dbg !5147
  br label %do.end, !dbg !5147

do.end:                                           ; preds = %do.body1
  br label %if.end, !dbg !5147

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end2, !dbg !5146

do.end2:                                          ; preds = %if.end
  ret void, !dbg !5149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5150 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pool_block_pop(ptr noundef %pool) #0 align 16 !dbg !5154 {
entry:
  %pool.addr = alloca ptr, align 8
  %block = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5158, metadata !DIExpression()), !dbg !5160
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !5161
  call void @llvm.dbg.declare(metadata ptr %block, metadata !5159, metadata !DIExpression()), !dbg !5162
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5163
  %next_block = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 2, !dbg !5164
  %1 = load ptr, ptr %next_block, align 8, !dbg !5164
  store ptr %1, ptr %block, align 8, !dbg !5162
  %2 = load ptr, ptr %block, align 8, !dbg !5165
  %tobool = icmp ne ptr %2, null, !dbg !5165
  br i1 %tobool, label %if.then, label %if.end, !dbg !5167

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %block, align 8, !dbg !5168
  %next_block1 = getelementptr inbounds %struct.dma_block, ptr %3, i32 0, i32 0, !dbg !5170
  %4 = load ptr, ptr %next_block1, align 8, !dbg !5170
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5171
  %next_block2 = getelementptr inbounds %struct.dma_pool, ptr %5, i32 0, i32 2, !dbg !5172
  store ptr %4, ptr %next_block2, align 8, !dbg !5173
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5174
  %nr_active = getelementptr inbounds %struct.dma_pool, ptr %6, i32 0, i32 4, !dbg !5175
  %7 = load i64, ptr %nr_active, align 8, !dbg !5176
  %inc = add i64 %7, 1, !dbg !5176
  store i64 %inc, ptr %nr_active, align 8, !dbg !5176
  br label %if.end, !dbg !5177

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %block, align 8, !dbg !5178
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !5179
  ret ptr %8, !dbg !5180
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !5181 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5185, metadata !DIExpression()), !dbg !5191
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5186, metadata !DIExpression()), !dbg !5192
  br label %do.body, !dbg !5193

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5187, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5190, metadata !DIExpression()), !dbg !5194
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5194
  %conv = zext i1 %cmp to i32, !dbg !5194
  store i32 1, ptr %tmp, align 4, !dbg !5194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5195
  %0 = load i32, ptr %tmp, align 4, !dbg !5194
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5195
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5195
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5195
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !5195
  br label %do.end, !dbg !5195

do.end:                                           ; preds = %do.body
  ret void, !dbg !5196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pool_alloc_page(ptr noundef %pool, i32 noundef %mem_flags) #0 align 16 !dbg !5197 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %mem_flags.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5201, metadata !DIExpression()), !dbg !5204
  store i32 %mem_flags, ptr %mem_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_flags.addr, metadata !5202, metadata !DIExpression()), !dbg !5205
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5203, metadata !DIExpression()), !dbg !5207
  %0 = load i32, ptr %mem_flags.addr, align 4, !dbg !5208
  %call = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef %0) #17, !dbg !5209
  store ptr %call, ptr %page, align 8, !dbg !5210
  %1 = load ptr, ptr %page, align 8, !dbg !5211
  %tobool = icmp ne ptr %1, null, !dbg !5211
  br i1 %tobool, label %if.end, label %if.then, !dbg !5213

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5214

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5215
  %dev = getelementptr inbounds %struct.dma_pool, ptr %2, i32 0, i32 6, !dbg !5216
  %3 = load ptr, ptr %dev, align 8, !dbg !5216
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5217
  %allocation = getelementptr inbounds %struct.dma_pool, ptr %4, i32 0, i32 8, !dbg !5218
  %5 = load i32, ptr %allocation, align 4, !dbg !5218
  %conv = zext i32 %5 to i64, !dbg !5217
  %6 = load ptr, ptr %page, align 8, !dbg !5219
  %dma = getelementptr inbounds %struct.dma_page, ptr %6, i32 0, i32 2, !dbg !5220
  %7 = load i32, ptr %mem_flags.addr, align 4, !dbg !5221
  %call1 = call ptr @dma_alloc_coherent(ptr noundef %3, i64 noundef %conv, ptr noundef %dma, i32 noundef %7) #18, !dbg !5222
  %8 = load ptr, ptr %page, align 8, !dbg !5223
  %vaddr = getelementptr inbounds %struct.dma_page, ptr %8, i32 0, i32 1, !dbg !5224
  store ptr %call1, ptr %vaddr, align 8, !dbg !5225
  %9 = load ptr, ptr %page, align 8, !dbg !5226
  %vaddr2 = getelementptr inbounds %struct.dma_page, ptr %9, i32 0, i32 1, !dbg !5228
  %10 = load ptr, ptr %vaddr2, align 8, !dbg !5228
  %tobool3 = icmp ne ptr %10, null, !dbg !5226
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5229

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %page, align 8, !dbg !5230
  call void @kfree(ptr noundef %11) #18, !dbg !5232
  store ptr null, ptr %retval, align 8, !dbg !5233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5233

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %page, align 8, !dbg !5234
  store ptr %12, ptr %retval, align 8, !dbg !5235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5235

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !5236
  %13 = load ptr, ptr %retval, align 8, !dbg !5236
  ret ptr %13, !dbg !5236
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pool_initialise_page(ptr noundef %pool, ptr noundef %page) #0 align 16 !dbg !5237 {
entry:
  %pool.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %next_boundary = alloca i32, align 4
  %offset = alloca i32, align 4
  %block = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5241, metadata !DIExpression()), !dbg !5248
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5242, metadata !DIExpression()), !dbg !5249
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_boundary) #16, !dbg !5250
  call void @llvm.dbg.declare(metadata ptr %next_boundary, metadata !5243, metadata !DIExpression()), !dbg !5251
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5252
  %boundary = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 9, !dbg !5253
  %1 = load i32, ptr %boundary, align 8, !dbg !5253
  store i32 %1, ptr %next_boundary, align 4, !dbg !5251
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #16, !dbg !5250
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5244, metadata !DIExpression()), !dbg !5254
  store i32 0, ptr %offset, align 4, !dbg !5254
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %block, metadata !5245, metadata !DIExpression()), !dbg !5256
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #16, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5246, metadata !DIExpression()), !dbg !5257
  store ptr null, ptr %first, align 8, !dbg !5257
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #16, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5247, metadata !DIExpression()), !dbg !5258
  store ptr null, ptr %last, align 8, !dbg !5258
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5259
  %3 = load ptr, ptr %page.addr, align 8, !dbg !5260
  call void @pool_init_page(ptr noundef %2, ptr noundef %3) #18, !dbg !5261
  br label %while.cond, !dbg !5262

while.cond:                                       ; preds = %if.end10, %if.then, %entry
  %4 = load i32, ptr %offset, align 4, !dbg !5263
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5264
  %size = getelementptr inbounds %struct.dma_pool, ptr %5, i32 0, i32 7, !dbg !5265
  %6 = load i32, ptr %size, align 8, !dbg !5265
  %add = add i32 %4, %6, !dbg !5266
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5267
  %allocation = getelementptr inbounds %struct.dma_pool, ptr %7, i32 0, i32 8, !dbg !5268
  %8 = load i32, ptr %allocation, align 4, !dbg !5268
  %cmp = icmp ule i32 %add, %8, !dbg !5269
  br i1 %cmp, label %while.body, label %while.end, !dbg !5262

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %offset, align 4, !dbg !5270
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !5273
  %size1 = getelementptr inbounds %struct.dma_pool, ptr %10, i32 0, i32 7, !dbg !5274
  %11 = load i32, ptr %size1, align 8, !dbg !5274
  %add2 = add i32 %9, %11, !dbg !5275
  %12 = load i32, ptr %next_boundary, align 4, !dbg !5276
  %cmp3 = icmp ugt i32 %add2, %12, !dbg !5277
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5278

if.then:                                          ; preds = %while.body
  %13 = load i32, ptr %next_boundary, align 4, !dbg !5279
  store i32 %13, ptr %offset, align 4, !dbg !5281
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !5282
  %boundary4 = getelementptr inbounds %struct.dma_pool, ptr %14, i32 0, i32 9, !dbg !5283
  %15 = load i32, ptr %boundary4, align 8, !dbg !5283
  %16 = load i32, ptr %next_boundary, align 4, !dbg !5284
  %add5 = add i32 %16, %15, !dbg !5284
  store i32 %add5, ptr %next_boundary, align 4, !dbg !5284
  br label %while.cond, !dbg !5285, !llvm.loop !5286

if.end:                                           ; preds = %while.body
  %17 = load ptr, ptr %page.addr, align 8, !dbg !5288
  %vaddr = getelementptr inbounds %struct.dma_page, ptr %17, i32 0, i32 1, !dbg !5289
  %18 = load ptr, ptr %vaddr, align 8, !dbg !5289
  %19 = load i32, ptr %offset, align 4, !dbg !5290
  %idx.ext = zext i32 %19 to i64, !dbg !5291
  %add.ptr = getelementptr i8, ptr %18, i64 %idx.ext, !dbg !5291
  store ptr %add.ptr, ptr %block, align 8, !dbg !5292
  %20 = load ptr, ptr %page.addr, align 8, !dbg !5293
  %dma = getelementptr inbounds %struct.dma_page, ptr %20, i32 0, i32 2, !dbg !5294
  %21 = load i64, ptr %dma, align 8, !dbg !5294
  %22 = load i32, ptr %offset, align 4, !dbg !5295
  %conv = zext i32 %22 to i64, !dbg !5295
  %add6 = add i64 %21, %conv, !dbg !5296
  %23 = load ptr, ptr %block, align 8, !dbg !5297
  %dma7 = getelementptr inbounds %struct.dma_block, ptr %23, i32 0, i32 1, !dbg !5298
  store i64 %add6, ptr %dma7, align 8, !dbg !5299
  %24 = load ptr, ptr %block, align 8, !dbg !5300
  %next_block = getelementptr inbounds %struct.dma_block, ptr %24, i32 0, i32 0, !dbg !5301
  store ptr null, ptr %next_block, align 8, !dbg !5302
  %25 = load ptr, ptr %last, align 8, !dbg !5303
  %tobool = icmp ne ptr %25, null, !dbg !5303
  br i1 %tobool, label %if.then8, label %if.else, !dbg !5305

if.then8:                                         ; preds = %if.end
  %26 = load ptr, ptr %block, align 8, !dbg !5306
  %27 = load ptr, ptr %last, align 8, !dbg !5307
  %next_block9 = getelementptr inbounds %struct.dma_block, ptr %27, i32 0, i32 0, !dbg !5308
  store ptr %26, ptr %next_block9, align 8, !dbg !5309
  br label %if.end10, !dbg !5307

if.else:                                          ; preds = %if.end
  %28 = load ptr, ptr %block, align 8, !dbg !5310
  store ptr %28, ptr %first, align 8, !dbg !5311
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %29 = load ptr, ptr %block, align 8, !dbg !5312
  store ptr %29, ptr %last, align 8, !dbg !5313
  %30 = load ptr, ptr %pool.addr, align 8, !dbg !5314
  %size11 = getelementptr inbounds %struct.dma_pool, ptr %30, i32 0, i32 7, !dbg !5315
  %31 = load i32, ptr %size11, align 8, !dbg !5315
  %32 = load i32, ptr %offset, align 4, !dbg !5316
  %add12 = add i32 %32, %31, !dbg !5316
  store i32 %add12, ptr %offset, align 4, !dbg !5316
  %33 = load ptr, ptr %pool.addr, align 8, !dbg !5317
  %nr_blocks = getelementptr inbounds %struct.dma_pool, ptr %33, i32 0, i32 3, !dbg !5318
  %34 = load i64, ptr %nr_blocks, align 8, !dbg !5319
  %inc = add i64 %34, 1, !dbg !5319
  store i64 %inc, ptr %nr_blocks, align 8, !dbg !5319
  br label %while.cond, !dbg !5262, !llvm.loop !5286

while.end:                                        ; preds = %while.cond
  %35 = load ptr, ptr %pool.addr, align 8, !dbg !5320
  %next_block13 = getelementptr inbounds %struct.dma_pool, ptr %35, i32 0, i32 2, !dbg !5321
  %36 = load ptr, ptr %next_block13, align 8, !dbg !5321
  %37 = load ptr, ptr %last, align 8, !dbg !5322
  %next_block14 = getelementptr inbounds %struct.dma_block, ptr %37, i32 0, i32 0, !dbg !5323
  store ptr %36, ptr %next_block14, align 8, !dbg !5324
  %38 = load ptr, ptr %first, align 8, !dbg !5325
  %39 = load ptr, ptr %pool.addr, align 8, !dbg !5326
  %next_block15 = getelementptr inbounds %struct.dma_pool, ptr %39, i32 0, i32 2, !dbg !5327
  store ptr %38, ptr %next_block15, align 8, !dbg !5328
  %40 = load ptr, ptr %page.addr, align 8, !dbg !5329
  %page_list = getelementptr inbounds %struct.dma_page, ptr %40, i32 0, i32 0, !dbg !5330
  %41 = load ptr, ptr %pool.addr, align 8, !dbg !5331
  %page_list16 = getelementptr inbounds %struct.dma_pool, ptr %41, i32 0, i32 0, !dbg !5332
  call void @list_add(ptr noundef %page_list, ptr noundef %page_list16) #18, !dbg !5333
  %42 = load ptr, ptr %pool.addr, align 8, !dbg !5334
  %nr_pages = getelementptr inbounds %struct.dma_pool, ptr %42, i32 0, i32 5, !dbg !5335
  %43 = load i64, ptr %nr_pages, align 8, !dbg !5336
  %inc17 = add i64 %43, 1, !dbg !5336
  store i64 %inc17, ptr %nr_pages, align 8, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #16, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #16, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #16, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_boundary) #16, !dbg !5337
  ret void, !dbg !5337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pool_check_block(ptr noundef %pool, ptr noundef %block, i32 noundef %mem_flags) #0 align 16 !dbg !5338 {
entry:
  %pool.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %mem_flags.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5342, metadata !DIExpression()), !dbg !5345
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !5343, metadata !DIExpression()), !dbg !5346
  store i32 %mem_flags, ptr %mem_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_flags.addr, metadata !5344, metadata !DIExpression()), !dbg !5347
  ret void, !dbg !5348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @want_init_on_alloc(i32 noundef %flags) #5 align 16 !dbg !5349 {
entry:
  %retval = alloca i1, align 1
  %flags.addr = alloca i32, align 4
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %branch4 = alloca i8, align 1
  %tmp7 = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5353, metadata !DIExpression()), !dbg !5359
  br i1 false, label %cond.true, label %cond.false, !dbg !5360

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #16, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !5354, metadata !DIExpression()), !dbg !5361
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @init_on_alloc, i1 noundef zeroext true) #18, !dbg !5362
  %lnot = xor i1 %call, true, !dbg !5362
  %frombool = zext i1 %lnot to i8, !dbg !5362
  store i8 %frombool, ptr %branch, align 1, !dbg !5362
  %0 = load i8, ptr %branch, align 1, !dbg !5361, !range !4796, !noundef !911
  %tobool = trunc i8 %0 to i1, !dbg !5361
  %lnot1 = xor i1 %tobool, true, !dbg !5361
  %lnot2 = xor i1 %lnot1, true, !dbg !5361
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5361
  %conv = sext i32 %lnot.ext to i64, !dbg !5361
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5361
  store i64 %expval, ptr %tmp, align 8, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #16, !dbg !5366
  %1 = load i64, ptr %tmp, align 8, !dbg !5361
  %tobool3 = icmp ne i64 %1, 0, !dbg !5366
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5366

cond.false:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch4) #16, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %branch4, metadata !5357, metadata !DIExpression()), !dbg !5367
  %call5 = call zeroext i1 @arch_static_branch(ptr noundef @init_on_alloc, i1 noundef zeroext false) #18, !dbg !5368
  %frombool6 = zext i1 %call5 to i8, !dbg !5368
  store i8 %frombool6, ptr %branch4, align 1, !dbg !5368
  %2 = load i8, ptr %branch4, align 1, !dbg !5367, !range !4796, !noundef !911
  %tobool8 = trunc i8 %2 to i1, !dbg !5367
  %lnot9 = xor i1 %tobool8, true, !dbg !5367
  %lnot11 = xor i1 %lnot9, true, !dbg !5367
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5367
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5367
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5367
  store i64 %expval14, ptr %tmp7, align 8, !dbg !5371
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch4) #16, !dbg !5366
  %3 = load i64, ptr %tmp7, align 8, !dbg !5367
  %tobool15 = icmp ne i64 %3, 0, !dbg !5366
  br i1 %tobool15, label %if.then, label %if.end, !dbg !5360

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !5372
  br label %return, !dbg !5372

if.end:                                           ; preds = %cond.false, %cond.true
  %4 = load i32, ptr %flags.addr, align 4, !dbg !5373
  %and = and i32 %4, 256, !dbg !5374
  %tobool16 = icmp ne i32 %and, 0, !dbg !5373
  store i1 %tobool16, ptr %retval, align 1, !dbg !5375
  br label %return, !dbg !5375

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !5376
  ret i1 %5, !dbg !5376
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_pool_free(ptr noundef %pool, ptr noundef %vaddr, i64 noundef %dma) #0 align 16 !dbg !5377 {
entry:
  %pool.addr = alloca ptr, align 8
  %vaddr.addr = alloca ptr, align 8
  %dma.addr = alloca i64, align 8
  %block = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5381, metadata !DIExpression()), !dbg !5391
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !5382, metadata !DIExpression()), !dbg !5392
  store i64 %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !5383, metadata !DIExpression()), !dbg !5393
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !5394
  call void @llvm.dbg.declare(metadata ptr %block, metadata !5384, metadata !DIExpression()), !dbg !5395
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !5396
  store ptr %0, ptr %block, align 8, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5385, metadata !DIExpression()), !dbg !5398
  br label %do.body, !dbg !5399

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5400

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5386, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5390, metadata !DIExpression()), !dbg !5401
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5401
  %conv = zext i1 %cmp to i32, !dbg !5401
  store i32 1, ptr %tmp, align 4, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5402
  %1 = load i32, ptr %tmp, align 4, !dbg !5401
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5402
  %lock = getelementptr inbounds %struct.dma_pool, ptr %2, i32 0, i32 1, !dbg !5402
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5402
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5402
  store i64 %call2, ptr %flags, align 8, !dbg !5402
  br label %do.cond, !dbg !5402

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5402

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5400

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5400

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5403
  %4 = load ptr, ptr %vaddr.addr, align 8, !dbg !5405
  %5 = load i64, ptr %dma.addr, align 8, !dbg !5406
  %call5 = call zeroext i1 @pool_block_err(ptr noundef %3, ptr noundef %4, i64 noundef %5) #18, !dbg !5407
  br i1 %call5, label %if.end, label %if.then, !dbg !5408

if.then:                                          ; preds = %do.end4
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5409
  %7 = load ptr, ptr %block, align 8, !dbg !5411
  %8 = load i64, ptr %dma.addr, align 8, !dbg !5412
  call void @pool_block_push(ptr noundef %6, ptr noundef %7, i64 noundef %8) #18, !dbg !5413
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5414
  %nr_active = getelementptr inbounds %struct.dma_pool, ptr %9, i32 0, i32 4, !dbg !5415
  %10 = load i64, ptr %nr_active, align 8, !dbg !5416
  %dec = add i64 %10, -1, !dbg !5416
  store i64 %dec, ptr %nr_active, align 8, !dbg !5416
  br label %if.end, !dbg !5417

if.end:                                           ; preds = %if.then, %do.end4
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !5418
  %lock6 = getelementptr inbounds %struct.dma_pool, ptr %11, i32 0, i32 1, !dbg !5419
  %12 = load i64, ptr %flags, align 8, !dbg !5420
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %12) #18, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5422
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !5422
  ret void, !dbg !5422
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pool_block_err(ptr noundef %pool, ptr noundef %vaddr, i64 noundef %dma) #0 align 16 !dbg !5423 {
entry:
  %pool.addr = alloca ptr, align 8
  %vaddr.addr = alloca ptr, align 8
  %dma.addr = alloca i64, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5427, metadata !DIExpression()), !dbg !5430
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !5428, metadata !DIExpression()), !dbg !5431
  store i64 %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !5429, metadata !DIExpression()), !dbg !5432
  %call = call zeroext i1 @want_init_on_free() #18, !dbg !5433
  br i1 %call, label %if.then, label %if.end, !dbg !5435

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !5436
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !5437
  %size = getelementptr inbounds %struct.dma_pool, ptr %1, i32 0, i32 7, !dbg !5438
  %2 = load i32, ptr %size, align 8, !dbg !5438
  %conv = zext i32 %2 to i64, !dbg !5437
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %conv, i1 false), !dbg !5439
  br label %if.end, !dbg !5439

if.end:                                           ; preds = %if.then, %entry
  ret i1 false, !dbg !5440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pool_block_push(ptr noundef %pool, ptr noundef %block, i64 noundef %dma) #0 align 16 !dbg !5441 {
entry:
  %pool.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %dma.addr = alloca i64, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5445, metadata !DIExpression()), !dbg !5448
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !5446, metadata !DIExpression()), !dbg !5449
  store i64 %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !5447, metadata !DIExpression()), !dbg !5450
  %0 = load i64, ptr %dma.addr, align 8, !dbg !5451
  %1 = load ptr, ptr %block.addr, align 8, !dbg !5452
  %dma1 = getelementptr inbounds %struct.dma_block, ptr %1, i32 0, i32 1, !dbg !5453
  store i64 %0, ptr %dma1, align 8, !dbg !5454
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5455
  %next_block = getelementptr inbounds %struct.dma_pool, ptr %2, i32 0, i32 2, !dbg !5456
  %3 = load ptr, ptr %next_block, align 8, !dbg !5456
  %4 = load ptr, ptr %block.addr, align 8, !dbg !5457
  %next_block2 = getelementptr inbounds %struct.dma_block, ptr %4, i32 0, i32 0, !dbg !5458
  store ptr %3, ptr %next_block2, align 8, !dbg !5459
  %5 = load ptr, ptr %block.addr, align 8, !dbg !5460
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5461
  %next_block3 = getelementptr inbounds %struct.dma_pool, ptr %6, i32 0, i32 2, !dbg !5462
  store ptr %5, ptr %next_block3, align 8, !dbg !5463
  ret void, !dbg !5464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dmam_pool_create(ptr noundef %name, ptr noundef %dev, i64 noundef %size, i64 noundef %align, i64 noundef %allocation) #0 align 16 !dbg !5465 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %allocation.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5467, metadata !DIExpression()), !dbg !5474
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5468, metadata !DIExpression()), !dbg !5475
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5469, metadata !DIExpression()), !dbg !5476
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5470, metadata !DIExpression()), !dbg !5477
  store i64 %allocation, ptr %allocation.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %allocation.addr, metadata !5471, metadata !DIExpression()), !dbg !5478
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #16, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !5472, metadata !DIExpression()), !dbg !5480
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #16, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !5473, metadata !DIExpression()), !dbg !5481
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @dmam_pool_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.1) #18, !dbg !5482
  store ptr %call, ptr %ptr, align 8, !dbg !5483
  %0 = load ptr, ptr %ptr, align 8, !dbg !5484
  %tobool = icmp ne ptr %0, null, !dbg !5484
  br i1 %tobool, label %if.end, label %if.then, !dbg !5486

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5487

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5488
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5489
  %3 = load i64, ptr %size.addr, align 8, !dbg !5490
  %4 = load i64, ptr %align.addr, align 8, !dbg !5491
  %5 = load i64, ptr %allocation.addr, align 8, !dbg !5492
  %call1 = call ptr @dma_pool_create(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #18, !dbg !5493
  %6 = load ptr, ptr %ptr, align 8, !dbg !5494
  store ptr %call1, ptr %6, align 8, !dbg !5495
  store ptr %call1, ptr %pool, align 8, !dbg !5496
  %7 = load ptr, ptr %pool, align 8, !dbg !5497
  %tobool2 = icmp ne ptr %7, null, !dbg !5497
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !5499

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5500
  %9 = load ptr, ptr %ptr, align 8, !dbg !5501
  call void @devres_add(ptr noundef %8, ptr noundef %9) #18, !dbg !5502
  br label %if.end4, !dbg !5502

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %ptr, align 8, !dbg !5503
  call void @devres_free(ptr noundef %10) #18, !dbg !5504
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %11 = load ptr, ptr %pool, align 8, !dbg !5505
  store ptr %11, ptr %retval, align 8, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5506

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #16, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #16, !dbg !5507
  %12 = load ptr, ptr %retval, align 8, !dbg !5507
  ret ptr %12, !dbg !5507
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5508 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmam_pool_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5515 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5517, metadata !DIExpression()), !dbg !5520
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5518, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #16, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !5519, metadata !DIExpression()), !dbg !5523
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5524
  %1 = load ptr, ptr %0, align 8, !dbg !5525
  store ptr %1, ptr %pool, align 8, !dbg !5523
  %2 = load ptr, ptr %pool, align 8, !dbg !5526
  call void @dma_pool_destroy(ptr noundef %2) #18, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #16, !dbg !5528
  ret void, !dbg !5528
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5529 dso_local void @devres_add(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5530 dso_local void @devres_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dmam_pool_destroy(ptr noundef %pool) #0 align 16 !dbg !5531 {
entry:
  %pool.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5533, metadata !DIExpression()), !dbg !5540
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5541
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5534, metadata !DIExpression()), !dbg !5542
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5543
  %dev1 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 6, !dbg !5544
  %1 = load ptr, ptr %dev1, align 8, !dbg !5544
  store ptr %1, ptr %dev, align 8, !dbg !5542
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5545
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5535, metadata !DIExpression()), !dbg !5545
  %2 = load ptr, ptr %dev, align 8, !dbg !5545
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5545
  %call = call i32 @devres_release(ptr noundef %2, ptr noundef @dmam_pool_release, ptr noundef @dmam_pool_match, ptr noundef %3) #18, !dbg !5545
  %tobool = icmp ne i32 %call, 0, !dbg !5545
  %lnot = xor i1 %tobool, true, !dbg !5545
  %lnot2 = xor i1 %lnot, true, !dbg !5545
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5545
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5545
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5546
  %tobool3 = icmp ne i32 %4, 0, !dbg !5546
  %lnot4 = xor i1 %tobool3, true, !dbg !5546
  %lnot6 = xor i1 %lnot4, true, !dbg !5546
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5546
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5546
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5546
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5546
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5545

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5546

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5537, metadata !DIExpression()), !dbg !5547
  store i32 2305, ptr %__flags, align 4, !dbg !5547
  br label %do.body9, !dbg !5547

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5548

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5547

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5550
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 522, i32 %5, i64 12) #16, !dbg !5550, !srcloc !5552
  br label %do.cond11, !dbg !5550

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5550

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5547

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5553

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5553

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5546
  br label %do.cond16, !dbg !5547

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5547

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5547

if.end:                                           ; preds = %do.end17, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5545
  %tobool18 = icmp ne i32 %6, 0, !dbg !5545
  %lnot19 = xor i1 %tobool18, true, !dbg !5545
  %lnot21 = xor i1 %lnot19, true, !dbg !5545
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5545
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5545
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5545
  store i64 %expval24, ptr %tmp, align 8, !dbg !5546
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5555
  %7 = load i64, ptr %tmp, align 8, !dbg !5545
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5556
  ret void, !dbg !5556
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5557 dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmam_pool_match(ptr noundef %dev, ptr noundef %res, ptr noundef %match_data) #0 align 16 !dbg !5564 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %match_data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5566, metadata !DIExpression()), !dbg !5569
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5567, metadata !DIExpression()), !dbg !5570
  store ptr %match_data, ptr %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_data.addr, metadata !5568, metadata !DIExpression()), !dbg !5571
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5572
  %1 = load ptr, ptr %0, align 8, !dbg !5573
  %2 = load ptr, ptr %match_data.addr, align 8, !dbg !5574
  %cmp = icmp eq ptr %1, %2, !dbg !5575
  %conv = zext i1 %cmp to i32, !dbg !5575
  ret i32 %conv, !dbg !5576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5577 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5579, metadata !DIExpression()), !dbg !5584
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5580, metadata !DIExpression()), !dbg !5585
  %0 = load i64, ptr %size.addr, align 8, !dbg !5586
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5587
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5588

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5589
  %tobool = icmp ne i64 %2, 0, !dbg !5589
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5590

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5581, metadata !DIExpression()), !dbg !5592
  %3 = load i64, ptr %size.addr, align 8, !dbg !5593
  %cmp = icmp ugt i64 %3, 8192, !dbg !5595
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5596

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5597
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5598
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5599
  store ptr %call, ptr %retval, align 8, !dbg !5600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5600

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5601
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5601
  store i32 %call2, ptr %index, align 4, !dbg !5602
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5603
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5604
  %9 = ptrtoint ptr %8 to i64, !dbg !5604
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5605
  %idxprom = zext i32 %call3 to i64, !dbg !5606
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5606
  %10 = load i32, ptr %index, align 4, !dbg !5607
  %idxprom4 = zext i32 %10 to i64, !dbg !5606
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5606
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5606
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5608
  %13 = load i64, ptr %size.addr, align 8, !dbg !5609
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5610
  store ptr %call6, ptr %retval, align 8, !dbg !5611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5611

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5612
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5613
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5614
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5615
  store ptr %call8, ptr %retval, align 8, !dbg !5616
  br label %return, !dbg !5616

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5617
  ret ptr %16, !dbg !5617
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5618 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !5619 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5623, metadata !DIExpression()), !dbg !5625
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5624, metadata !DIExpression()), !dbg !5626
  %0 = load i64, ptr %size.addr, align 8, !dbg !5627
  %tobool = icmp ne i64 %0, 0, !dbg !5627
  br i1 %tobool, label %if.end, label %if.then, !dbg !5629

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5630
  br label %return, !dbg !5630

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5631
  %cmp = icmp ule i64 %1, 8, !dbg !5633
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5634

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5635
  br label %return, !dbg !5635

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5636
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5638
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5639

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5640
  %cmp4 = icmp ule i64 %3, 96, !dbg !5641
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5642

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5643
  br label %return, !dbg !5643

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5644
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5646
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5647

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5648
  %cmp9 = icmp ule i64 %5, 192, !dbg !5649
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5650

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5651
  br label %return, !dbg !5651

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5652
  %cmp12 = icmp ule i64 %6, 8, !dbg !5654
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5655

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5656
  br label %return, !dbg !5656

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5657
  %cmp15 = icmp ule i64 %7, 16, !dbg !5659
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5660

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5661
  br label %return, !dbg !5661

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5662
  %cmp18 = icmp ule i64 %8, 32, !dbg !5664
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5665

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5666
  br label %return, !dbg !5666

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5667
  %cmp21 = icmp ule i64 %9, 64, !dbg !5669
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5670

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5671
  br label %return, !dbg !5671

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5672
  %cmp24 = icmp ule i64 %10, 128, !dbg !5674
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5675

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5677
  %cmp27 = icmp ule i64 %11, 256, !dbg !5679
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5680

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5681
  br label %return, !dbg !5681

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5682
  %cmp30 = icmp ule i64 %12, 512, !dbg !5684
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5685

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5686
  br label %return, !dbg !5686

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5687
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5689
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5690

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5691
  br label %return, !dbg !5691

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5692
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5694
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5695

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5696
  br label %return, !dbg !5696

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5697
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5699
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5700

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5701
  br label %return, !dbg !5701

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5702
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5704
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5705

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5706
  br label %return, !dbg !5706

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5707
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5709
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5710

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5711
  br label %return, !dbg !5711

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5712
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5714
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5715

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5716
  br label %return, !dbg !5716

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5717
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5719
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5720

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5721
  br label %return, !dbg !5721

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5722
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5724
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5725

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5726
  br label %return, !dbg !5726

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5727
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5729
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5730

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5732
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5734
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5735

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5736
  br label %return, !dbg !5736

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5737
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5739
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5740

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5741
  br label %return, !dbg !5741

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5742
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5744
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5745

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5746
  br label %return, !dbg !5746

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5747, !range !4796, !noundef !911
  %tobool69 = trunc i8 %25 to i1, !dbg !5747
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5749

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5750

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #21, !dbg !5751, !srcloc !5754
  unreachable, !dbg !5751

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5755

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5756

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5757

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5759

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5757

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #16, !dbg !5761, !srcloc !5763
  br label %do.end75, !dbg !5761

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5757

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5765
  ret i32 %26, !dbg !5765
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5766 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5772 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5780
  %and = and i32 %0, 17, !dbg !5780
  %cmp = icmp eq i32 %and, 0, !dbg !5780
  %lnot = xor i1 %cmp, true, !dbg !5780
  %lnot1 = xor i1 %lnot, true, !dbg !5780
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5780
  %conv = sext i32 %lnot.ext to i64, !dbg !5780
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5780
  %tobool = icmp ne i64 %expval, 0, !dbg !5780
  br i1 %tobool, label %if.then, label %if.end, !dbg !5782

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5783
  br label %return, !dbg !5783

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5784
  %and2 = and i32 %1, 1, !dbg !5786
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5786
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5787

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5788
  br label %return, !dbg !5788

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5791
  ret i32 %2, !dbg !5791
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5792 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5793 dso_local void @__compiletime_assert_229() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5794 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5798, metadata !DIExpression()), !dbg !5801
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5799, metadata !DIExpression()), !dbg !5802
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5800, metadata !DIExpression()), !dbg !5803
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5804
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5806
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5807
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !5808
  br i1 %call, label %if.end, label %if.then, !dbg !5809

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5810

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5811
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5812
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5813
  store ptr %3, ptr %prev1, align 8, !dbg !5814
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5815
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5816
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5817
  store ptr %5, ptr %next2, align 8, !dbg !5818
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5819
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5820
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5821
  store ptr %7, ptr %prev3, align 8, !dbg !5822
  br label %do.body, !dbg !5823

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5824

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5826

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5824

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5828
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5828
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5828
  store volatile ptr %9, ptr %next6, align 8, !dbg !5828
  br label %do.end7, !dbg !5828

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5824

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5831 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5835, metadata !DIExpression()), !dbg !5838
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5836, metadata !DIExpression()), !dbg !5839
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5837, metadata !DIExpression()), !dbg !5840
  ret i1 true, !dbg !5841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pools_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5842 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  %size = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5844, metadata !DIExpression()), !dbg !5855
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5845, metadata !DIExpression()), !dbg !5856
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5846, metadata !DIExpression()), !dbg !5857
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #16, !dbg !5858
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !5847, metadata !DIExpression()), !dbg !5859
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #16, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5848, metadata !DIExpression()), !dbg !5861
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5862
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.5) #18, !dbg !5863
  store i32 %call, ptr %size, align 4, !dbg !5864
  call void @mutex_lock(ptr noundef @pools_lock) #18, !dbg !5865
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5866
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5849, metadata !DIExpression()), !dbg !5866
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5866
  %dma_pools = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 20, !dbg !5866
  %next = getelementptr inbounds %struct.list_head, ptr %dma_pools, i32 0, i32 0, !dbg !5866
  %2 = load ptr, ptr %next, align 8, !dbg !5866
  store ptr %2, ptr %__mptr, align 8, !dbg !5866
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5866
  %add.ptr = getelementptr i8, ptr %3, i64 -112, !dbg !5866
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5866
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5867
  %4 = load ptr, ptr %tmp, align 8, !dbg !5866
  store ptr %4, ptr %pool, align 8, !dbg !5867
  br label %for.cond, !dbg !5867

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %pool, align 8, !dbg !5868
  %pools = getelementptr inbounds %struct.dma_pool, ptr %5, i32 0, i32 11, !dbg !5868
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5868
  %dma_pools1 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 20, !dbg !5868
  %cmp = icmp eq ptr %pools, %dma_pools1, !dbg !5868
  %lnot = xor i1 %cmp, true, !dbg !5868
  br i1 %lnot, label %for.body, label %for.end, !dbg !5867

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5869
  %8 = load i32, ptr %size, align 4, !dbg !5871
  %9 = load ptr, ptr %pool, align 8, !dbg !5872
  %name = getelementptr inbounds %struct.dma_pool, ptr %9, i32 0, i32 10, !dbg !5873
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !5872
  %10 = load ptr, ptr %pool, align 8, !dbg !5874
  %nr_active = getelementptr inbounds %struct.dma_pool, ptr %10, i32 0, i32 4, !dbg !5875
  %11 = load i64, ptr %nr_active, align 8, !dbg !5875
  %12 = load ptr, ptr %pool, align 8, !dbg !5876
  %nr_blocks = getelementptr inbounds %struct.dma_pool, ptr %12, i32 0, i32 3, !dbg !5877
  %13 = load i64, ptr %nr_blocks, align 8, !dbg !5877
  %14 = load ptr, ptr %pool, align 8, !dbg !5878
  %size2 = getelementptr inbounds %struct.dma_pool, ptr %14, i32 0, i32 7, !dbg !5879
  %15 = load i32, ptr %size2, align 8, !dbg !5879
  %16 = load ptr, ptr %pool, align 8, !dbg !5880
  %nr_pages = getelementptr inbounds %struct.dma_pool, ptr %16, i32 0, i32 5, !dbg !5881
  %17 = load i64, ptr %nr_pages, align 8, !dbg !5881
  %call3 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %7, i32 noundef %8, ptr noundef @.str.6, ptr noundef %arraydecay, i64 noundef %11, i64 noundef %13, i32 noundef %15, i64 noundef %17) #18, !dbg !5882
  %18 = load i32, ptr %size, align 4, !dbg !5883
  %add = add i32 %18, %call3, !dbg !5883
  store i32 %add, ptr %size, align 4, !dbg !5883
  br label %for.inc, !dbg !5884

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #16, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5852, metadata !DIExpression()), !dbg !5885
  %19 = load ptr, ptr %pool, align 8, !dbg !5885
  %pools5 = getelementptr inbounds %struct.dma_pool, ptr %19, i32 0, i32 11, !dbg !5885
  %next6 = getelementptr inbounds %struct.list_head, ptr %pools5, i32 0, i32 0, !dbg !5885
  %20 = load ptr, ptr %next6, align 8, !dbg !5885
  store ptr %20, ptr %__mptr4, align 8, !dbg !5885
  %21 = load ptr, ptr %__mptr4, align 8, !dbg !5885
  %add.ptr8 = getelementptr i8, ptr %21, i64 -112, !dbg !5885
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #16, !dbg !5868
  %22 = load ptr, ptr %tmp7, align 8, !dbg !5885
  store ptr %22, ptr %pool, align 8, !dbg !5868
  br label %for.cond, !dbg !5868, !llvm.loop !5886

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @pools_lock) #18, !dbg !5888
  %23 = load i32, ptr %size, align 4, !dbg !5889
  %conv = zext i32 %23 to i64, !dbg !5889
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #16, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #16, !dbg !5890
  ret i64 %conv, !dbg !5891
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5892 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5895 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5898 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5902
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !5904
  br i1 %call, label %if.end, label %if.then, !dbg !5905

if.then:                                          ; preds = %entry
  br label %return, !dbg !5906

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5907
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5908
  %2 = load ptr, ptr %prev, align 8, !dbg !5908
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5909
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5910
  %4 = load ptr, ptr %next, align 8, !dbg !5910
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !5911
  br label %return, !dbg !5912

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5912
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5913 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  ret i1 true, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5920 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5922, metadata !DIExpression()), !dbg !5924
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5923, metadata !DIExpression()), !dbg !5925
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5926
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5927
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5928
  store ptr %0, ptr %prev1, align 8, !dbg !5929
  br label %do.body, !dbg !5930

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5931

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5933

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5931

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5935
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5935
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5935
  store volatile ptr %2, ptr %next4, align 8, !dbg !5935
  br label %do.end5, !dbg !5935

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5931

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5938 dso_local void @dma_free_attrs(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_reclaim_acquire(i32 noundef %gfp_mask) #5 align 16 !dbg !5941 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5943, metadata !DIExpression()), !dbg !5944
  ret void, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_reclaim_release(i32 noundef %gfp_mask) #5 align 16 !dbg !5946 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  ret void, !dbg !5950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) #5 align 16 !dbg !5951 {
entry:
  %gfp_flags.addr = alloca i32, align 4
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  %0 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5959
  %and = and i32 %0, 1024, !dbg !5960
  %tobool = icmp ne i32 %and, 0, !dbg !5961
  %lnot = xor i1 %tobool, true, !dbg !5961
  %lnot1 = xor i1 %lnot, true, !dbg !5962
  ret i1 %lnot1, !dbg !5963
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !4648 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5964
  %0 = load ptr, ptr %tmp, align 8, !dbg !5964
  %call = call i32 %0() #18, !dbg !5966
  ret void, !dbg !5967
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5968 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_alloc_coherent(ptr noundef %dev, i64 noundef %size, ptr noundef %dma_handle, i32 noundef %gfp) #5 align 16 !dbg !5971 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5975, metadata !DIExpression()), !dbg !5979
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5976, metadata !DIExpression()), !dbg !5980
  store ptr %dma_handle, ptr %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_handle.addr, metadata !5977, metadata !DIExpression()), !dbg !5981
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5978, metadata !DIExpression()), !dbg !5982
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5983
  %1 = load i64, ptr %size.addr, align 8, !dbg !5984
  %2 = load ptr, ptr %dma_handle.addr, align 8, !dbg !5985
  %3 = load i32, ptr %gfp.addr, align 4, !dbg !5986
  %4 = load i32, ptr %gfp.addr, align 4, !dbg !5987
  %and = and i32 %4, 8192, !dbg !5988
  %tobool = icmp ne i32 %and, 0, !dbg !5989
  %5 = zext i1 %tobool to i64, !dbg !5989
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !5989
  %call = call ptr @dma_alloc_attrs(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %cond) #18, !dbg !5990
  ret ptr %call, !dbg !5991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local ptr @dma_alloc_attrs(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pool_init_page(ptr noundef %pool, ptr noundef %page) #0 align 16 !dbg !5995 {
entry:
  %pool.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5997, metadata !DIExpression()), !dbg !5999
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5998, metadata !DIExpression()), !dbg !6000
  ret void, !dbg !6001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !6002 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6021, metadata !DIExpression()), !dbg !6024
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6022, metadata !DIExpression()), !dbg !6025
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6026
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6027, !range !4796, !noundef !911
  %tobool = trunc i8 %1 to i1, !dbg !6027
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #16
          to label %asm.fallthrough [label %l_yes], !dbg !6028, !srcloc !6029

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6030
  br label %return, !dbg !6030

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6023), !dbg !6031
  store i1 true, ptr %retval, align 1, !dbg !6032
  br label %return, !dbg !6032

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6033
  ret i1 %2, !dbg !6033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !6034 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6038, metadata !DIExpression()), !dbg !6041
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6039, metadata !DIExpression()), !dbg !6042
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6043
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6044, !range !4796, !noundef !911
  %tobool = trunc i8 %1 to i1, !dbg !6044
  %conv = zext i1 %tobool to i32, !dbg !6044
  %or = or i32 2, %conv, !dbg !6045
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !6046, !srcloc !6047

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6048
  br label %return, !dbg !6048

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6040), !dbg !6049
  store i1 true, ptr %retval, align 1, !dbg !6050
  br label %return, !dbg !6050

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6051
  ret i1 %2, !dbg !6051
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @want_init_on_free() #5 align 16 !dbg !6052 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #16, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6054, metadata !DIExpression()), !dbg !6056
  %call = call zeroext i1 @arch_static_branch(ptr noundef @init_on_free, i1 noundef zeroext false) #18, !dbg !6057
  %frombool = zext i1 %call to i8, !dbg !6057
  store i8 %frombool, ptr %branch, align 1, !dbg !6057
  %0 = load i8, ptr %branch, align 1, !dbg !6056, !range !4796, !noundef !911
  %tobool = trunc i8 %0 to i1, !dbg !6056
  %lnot = xor i1 %tobool, true, !dbg !6056
  %lnot1 = xor i1 %lnot, true, !dbg !6056
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6056
  %conv = sext i32 %lnot.ext to i64, !dbg !6056
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6056
  store i64 %expval, ptr %tmp, align 8, !dbg !6060
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #16, !dbg !6061
  %1 = load i64, ptr %tmp, align 8, !dbg !6056
  %tobool2 = icmp ne i64 %1, 0, !dbg !6061
  ret i1 %tobool2, !dbg !6062
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657}
!llvm.ident = !{!4658}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pools_reg_lock", scope: !2, file: !3, line: 70, type: !622, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.dmapool.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/dmapool\22 -D KBUILD_BASENAME=\22dmapool\22 -D KBUILD_MODNAME=\22dmapool\22 -D __KBUILD_MODNAME=kmod_dmapool -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/dmapool.ll mm/dmapool.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4585, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/dmapool.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd2e0231bcaa23e99c83a435db6bcda7")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 364, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!156 = !{!109, !157, !163, !164, !165, !162, !182, !184, !186, !4584}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !159)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !160, line: 72, baseType: !161)
!160 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !160, line: 16, baseType: !162)
!162 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !7)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_page", file: !3, line: 63, size: 256, elements: !167)
!167 = !{!168, !174, !175}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !166, file: !3, line: 64, baseType: !169, size: 128)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !170)
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !158, line: 191, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !158, line: 191, baseType: !172, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !166, file: !3, line: 65, baseType: !164, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !166, file: !3, line: 66, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !158, line: 149, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !178, line: 23, baseType: !179)
!178 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !180, line: 31, baseType: !181)
!180 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!181 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !3, line: 48, size: 1024, elements: !188)
!188 = !{!189, !190, !231, !237, !238, !239, !240, !4579, !4580, !4581, !4582, !4583}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !187, file: !3, line: 49, baseType: !169, size: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !187, file: !3, line: 50, baseType: !191, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !192, line: 29, baseType: !193)
!192 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !192, line: 17, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !192, line: 18, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 18, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !196, file: !192, line: 19, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !200, line: 14, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !199, file: !200, line: 15, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !204, line: 44, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !204, line: 14, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 15, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 15, size: 32, elements: !209)
!209 = !{!210, !215, !223}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !208, file: !204, line: 16, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !212, file: !158, line: 173, baseType: !109, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 24, baseType: !216, size: 16)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 24, size: 16, elements: !217)
!217 = !{!218, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !216, file: !204, line: 25, baseType: !219, size: 8)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !178, line: 17, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !180, line: 21, baseType: !221)
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !216, file: !204, line: 26, baseType: !219, size: 8, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 28, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 28, size: 32, elements: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !224, file: !204, line: 29, baseType: !227, size: 16)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !178, line: 19, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !180, line: 24, baseType: !229)
!229 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !224, file: !204, line: 30, baseType: !227, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next_block", scope: !187, file: !3, line: 51, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_block", file: !3, line: 43, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next_block", scope: !233, file: !3, line: 44, baseType: !232, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !233, file: !3, line: 45, baseType: !176, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_blocks", scope: !187, file: !3, line: 52, baseType: !157, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !187, file: !3, line: 53, baseType: !157, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !187, file: !3, line: 54, baseType: !157, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !187, file: !3, line: 55, baseType: !241, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !243)
!243 = !{!244, !4133, !4134, !4137, !4138, !4191, !4261, !4262, !4263, !4264, !4265, !4272, !4364, !4377, !4387, !4391, !4393, !4394, !4395, !4399, !4406, !4407, !4410, !4413, !4417, !4521, !4522, !4523, !4524, !4525, !4526, !4556, !4557, !4558, !4561, !4564, !4573, !4574, !4575, !4576, !4577, !4578}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !242, file: !94, line: 706, baseType: !245, size: 512)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !246, line: 64, size: 512, elements: !247)
!246 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!247 = !{!248, !252, !253, !255, !302, !4020, !4123, !4128, !4129, !4130, !4131, !4132}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !246, line: 65, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !245, file: !246, line: 66, baseType: !169, size: 128, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !246, line: 67, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !245, file: !246, line: 68, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !246, line: 168, size: 768, elements: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !257, file: !246, line: 169, baseType: !169, size: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !257, file: !246, line: 170, baseType: !191, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !257, file: !246, line: 171, baseType: !245, size: 512, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !257, file: !246, line: 172, baseType: !263, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !246, line: 133, size: 192, elements: !266)
!266 = !{!267, !274, !279}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !265, file: !246, line: 134, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!109, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !246, line: 135, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!249, !272}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !265, file: !246, line: 136, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!109, !272, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !246, line: 125, size: 20736, elements: !286)
!286 = !{!287, !292, !296, !297, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !285, file: !246, line: 126, baseType: !288, size: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 192, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !285, file: !246, line: 127, baseType: !293, size: 4096, offset: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 4096, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !285, file: !246, line: 128, baseType: !109, size: 32, offset: 4288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !246, line: 129, baseType: !298, size: 16384, offset: 4320)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 16384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !285, file: !246, line: 130, baseType: !109, size: 32, offset: 20704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !245, file: !246, line: 69, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !246, line: 116, size: 384, elements: !306)
!306 = !{!307, !311, !335, !3982, !4010, !4014}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !246, line: 117, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !254}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !305, file: !246, line: 118, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !315, line: 254, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!316 = !{!317, !331}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !314, file: !315, line: 255, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !254, !325, !289}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !160, line: 73, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !160, line: 15, baseType: !324)
!324 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !315, line: 30, size: 128, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !315, line: 31, baseType: !249, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !326, file: !315, line: 32, baseType: !330, size: 16, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !229)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !314, file: !315, line: 256, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!321, !254, !325, !249, !157}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !305, file: !246, line: 119, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !315, line: 84, size: 320, elements: !340)
!340 = !{!341, !342, !346, !3978, !3980}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !315, line: 85, baseType: !249, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !339, file: !315, line: 86, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!330, !254, !325, !109}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !339, file: !315, line: 88, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!330, !254, !350, !109}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !315, line: 175, size: 512, elements: !352)
!352 = !{!353, !354, !355, !356, !3969, !3973, !3974}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !351, file: !315, line: 176, baseType: !326, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !315, line: 177, baseType: !157, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !351, file: !315, line: 178, baseType: !164, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !351, file: !315, line: 179, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !362)
!362 = !{!363, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3963, !3964, !3965, !3966, !3967, !3968}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !361, file: !14, line: 473, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !366)
!366 = !{!367, !368, !369, !377, !378, !385, !386, !389, !390, !3742, !3743, !3744, !3745, !3746, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3786, !3789, !3790, !3791, !3800, !3801, !3802, !3803}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !365, file: !14, line: 642, baseType: !330, size: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !365, file: !14, line: 643, baseType: !229, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !365, file: !14, line: 644, baseType: !370, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !371, line: 23, baseType: !372)
!371 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 21, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !372, file: !371, line: 22, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !160, line: 49, baseType: !7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !365, file: !14, line: 645, baseType: !169, size: 128, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !365, file: !14, line: 646, baseType: !379, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !371, line: 28, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 26, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !371, line: 27, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !160, line: 50, baseType: !7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !365, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !365, file: !14, line: 650, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !365, file: !14, line: 651, baseType: !387, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !365, file: !14, line: 654, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !394)
!394 = !{!395, !3570, !3580, !3584, !3588, !3592, !3596, !3600, !3604, !3608, !3612, !3613, !3617, !3621, !3658, !3687, !3691, !3697, !3701, !3705, !3709, !3713, !3717, !3723, !3727}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !393, file: !14, line: 1967, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !364, !399, !7}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !401, line: 82, size: 1536, elements: !402)
!401 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!402 = !{!403, !404, !414, !422, !423, !440, !441, !445, !458, !3553, !3554, !3555, !3556, !3562, !3563, !3564}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !400, file: !401, line: 84, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !400, file: !401, line: 85, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 275, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 275, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 275, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 69, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 64, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 65, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !400, file: !401, line: 86, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !416, line: 38, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 39, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !416, line: 39, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !400, file: !401, line: 87, baseType: !399, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !400, file: !401, line: 88, baseType: !424, size: 128, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !401, line: 49, size: 128, elements: !425)
!425 = !{!426, !437}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !401, line: 50, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !401, line: 50, size: 64, elements: !428)
!428 = !{!429, !436}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !401, line: 51, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !401, line: 51, size: 64, elements: !431)
!431 = !{!432, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !401, line: 52, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !178, line: 21, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !180, line: 27, baseType: !7)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !401, line: 52, baseType: !433, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !427, file: !401, line: 54, baseType: !177, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !401, line: 56, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !400, file: !401, line: 89, baseType: !364, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !400, file: !401, line: 91, baseType: !442, size: 256, offset: 448)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !400, file: !401, line: 94, baseType: !446, size: 64, offset: 704)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !447, line: 25, size: 64, elements: !448)
!447 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !447, line: 26, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !447, line: 26, size: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !450, file: !447, line: 28, baseType: !179, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !447, line: 30, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !447, line: 30, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !454, file: !447, line: 31, baseType: !191, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !447, line: 32, baseType: !109, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !400, file: !401, line: 95, baseType: !459, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !401, line: 128, size: 1024, align: 512, elements: !462)
!462 = !{!463, !467, !468, !475, !481, !485, !489, !493, !494, !498, !502, !3543, !3547}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !461, file: !401, line: 129, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!109, !399, !7}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !461, file: !401, line: 130, baseType: !464, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !461, file: !401, line: 131, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!109, !472, !474}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !461, file: !401, line: 132, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!109, !472, !7, !249, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !461, file: !401, line: 134, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!109, !472}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !461, file: !401, line: 135, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!109, !399}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !461, file: !401, line: 136, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !399}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !461, file: !401, line: 137, baseType: !490, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !461, file: !401, line: 138, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !399, !364}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !461, file: !401, line: 139, baseType: !499, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!289, !399, !289, !109}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !461, file: !401, line: 140, baseType: !503, size: 64, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !3542}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !508, line: 70, size: 256, elements: !509)
!508 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!509 = !{!510, !511, !3538, !3539}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !507, file: !508, line: 71, baseType: !399, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !507, file: !508, line: 72, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !514)
!514 = !{!515, !516, !519, !520, !521, !525, !1005, !1144, !1184, !1274, !1278, !1279, !1280, !1281, !1282, !1291, !1292, !1293, !1294, !1299, !1303, !1304, !1307, !1310, !1313, !1316, !1317, !1318, !1359, !3471, !3472, !3473, !3474, !3475, !3476, !3479, !3481, !3488, !3489, !3490, !3491, !3492, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !513, file: !14, line: 1191, baseType: !169, size: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !513, file: !14, line: 1192, baseType: !517, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !433)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !513, file: !14, line: 1193, baseType: !221, size: 8, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !513, file: !14, line: 1194, baseType: !162, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !513, file: !14, line: 1195, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !160, line: 88, baseType: !524)
!524 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !513, file: !14, line: 1196, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !528)
!528 = !{!529, !530, !531, !538, !542, !546, !550, !990, !991, !995, !997, !998, !999, !1001, !1002, !1003, !1004}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !527, file: !14, line: 2367, baseType: !249, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !527, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !527, file: !14, line: 2376, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!109, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !537, line: 32, flags: DIFlagFwdDecl)
!537 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !527, file: !14, line: 2377, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !527, file: !14, line: 2378, baseType: !543, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!399, !526, !109, !249, !164}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !527, file: !14, line: 2380, baseType: !547, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !512}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !527, file: !14, line: 2381, baseType: !551, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !553)
!553 = !{!554, !555, !556, !560, !582, !608, !609, !610, !611, !615, !620, !621, !641, !697, !698, !699, !700, !701, !704, !705, !706, !714, !718, !745, !766, !767, !768, !769, !778, !801, !802, !805, !808, !809, !810, !811, !812, !813, !814, !819, !820, !948, !956, !957, !958, !960, !964, !965, !969, !970, !971, !972, !974, !975, !976, !983, !984, !985, !989}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !552, file: !6, line: 403, baseType: !5, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !552, file: !6, line: 406, baseType: !169, size: 128, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !552, file: !6, line: 409, baseType: !557, size: 448, offset: 192)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 448, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 56)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !552, file: !6, line: 417, baseType: !561, size: 768, offset: 640)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !562)
!562 = !{!563, !564, !565, !566, !569}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !561, file: !6, line: 46, baseType: !245, size: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !561, file: !6, line: 47, baseType: !551, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !561, file: !6, line: 48, baseType: !254, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !561, file: !6, line: 49, baseType: !567, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !561, file: !6, line: 50, baseType: !570, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !572, line: 26, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !571, file: !572, line: 27, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !571, file: !572, line: 28, baseType: !576, size: 192, offset: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !577, line: 43, size: 192, elements: !578)
!577 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !577, line: 44, baseType: !580, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !200, line: 23, baseType: !199)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !576, file: !577, line: 45, baseType: !169, size: 128, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !552, file: !6, line: 418, baseType: !583, size: 64, offset: 1408)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !585)
!585 = !{!586, !587, !592, !596, !600, !604}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !584, file: !6, line: 54, baseType: !326, size: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !584, file: !6, line: 55, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!321, !583, !591, !289}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !584, file: !6, line: 57, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!321, !583, !591, !249, !157}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !584, file: !6, line: 59, baseType: !597, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !551, !249}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !584, file: !6, line: 60, baseType: !601, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!109, !551}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !584, file: !6, line: 61, baseType: !605, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !551}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !552, file: !6, line: 419, baseType: !249, size: 64, offset: 1472)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !552, file: !6, line: 420, baseType: !249, size: 64, offset: 1536)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !552, file: !6, line: 421, baseType: !254, size: 64, offset: 1600)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !552, file: !6, line: 424, baseType: !612, size: 64, offset: 1664)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !552, file: !6, line: 425, baseType: !616, size: 64, offset: 1728)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !178, line: 20, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !180, line: 26, baseType: !109)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !552, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !552, file: !6, line: 435, baseType: !622, size: 256, offset: 1856)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !623, line: 66, size: 256, elements: !624)
!623 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!624 = !{!625, !634, !635, !640}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !622, file: !623, line: 67, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !627, line: 13, baseType: !628)
!627 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !629, file: !158, line: 180, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !178, line: 22, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !180, line: 30, baseType: !524)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !622, file: !623, line: 68, baseType: !580, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !622, file: !623, line: 70, baseType: !636, size: 32, offset: 96)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !637, line: 15, size: 32, elements: !638)
!637 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !636, file: !637, line: 20, baseType: !211, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !622, file: !623, line: 72, baseType: !169, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !552, file: !6, line: 437, baseType: !642, size: 64, offset: 2112)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !644, line: 69, size: 320, elements: !645)
!644 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!645 = !{!646, !647, !648, !668, !670, !674, !675}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !644, line: 70, baseType: !249, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !643, file: !644, line: 71, baseType: !551, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !643, file: !644, line: 72, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !644, line: 47, size: 256, elements: !652)
!652 = !{!653, !654, !660, !664}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !644, line: 49, baseType: !7, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !651, file: !644, line: 51, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!109, !249, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !651, file: !644, line: 53, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!109, !289, !658}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !651, file: !644, line: 55, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !164}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !643, file: !644, line: 73, baseType: !669, size: 16, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !643, file: !644, line: 74, baseType: !671, size: 8, offset: 208)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !178, line: 16, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !180, line: 20, baseType: !673)
!673 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !644, line: 75, baseType: !219, size: 8, offset: 216)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !644, line: 76, baseType: !676, size: 64, offset: 256)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !644, line: 76, size: 64, elements: !677)
!677 = !{!678, !679, !686}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !676, file: !644, line: 77, baseType: !164, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !676, file: !644, line: 78, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !644, line: 86, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !682, file: !644, line: 87, baseType: !7, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !682, file: !644, line: 88, baseType: !289, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !676, file: !644, line: 79, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !644, line: 92, size: 256, elements: !690)
!690 = !{!691, !692, !693, !695, !696}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !689, file: !644, line: 94, baseType: !7, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !689, file: !644, line: 95, baseType: !7, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !689, file: !644, line: 96, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !689, file: !644, line: 97, baseType: !649, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !689, file: !644, line: 98, baseType: !164, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !552, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !552, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !552, file: !6, line: 442, baseType: !612, size: 64, offset: 2240)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !552, file: !6, line: 443, baseType: !616, size: 64, offset: 2304)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !552, file: !6, line: 444, baseType: !702, size: 8, offset: 2368)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !703)
!703 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !552, file: !6, line: 451, baseType: !702, size: 8, offset: 2376)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !552, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !552, file: !6, line: 455, baseType: !707, size: 64, offset: 2432)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !709, line: 23, size: 96, elements: !710)
!709 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !708, file: !709, line: 24, baseType: !109, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !708, file: !709, line: 24, baseType: !109, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !708, file: !709, line: 24, baseType: !109, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !552, file: !6, line: 458, baseType: !715, size: 64, offset: 2496)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!109}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !552, file: !6, line: 460, baseType: !719, size: 4032, align: 512, offset: 2560)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 4032, elements: !743)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !721)
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !720, file: !6, line: 363, baseType: !164, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !720, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !720, file: !6, line: 367, baseType: !725, size: 448, offset: 128)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !725, file: !6, line: 320, baseType: !551, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !6, line: 321, baseType: !729, size: 384, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !730, line: 40, size: 384, elements: !731)
!730 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !729, file: !730, line: 41, baseType: !733, size: 384, align: 64)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 384, align: 64, elements: !741)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !735, line: 5, size: 192, align: 64, elements: !736)
!735 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!736 = !{!737, !738, !740}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !734, file: !735, line: 6, baseType: !162, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !734, file: !735, line: 7, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !734, file: !735, line: 8, baseType: !739, size: 64, offset: 128)
!741 = !{!742}
!742 = !DISubrange(count: 2)
!743 = !{!744}
!744 = !DISubrange(count: 7)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !552, file: !6, line: 463, baseType: !746, size: 192, offset: 6592)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !747, line: 8, size: 192, elements: !748)
!747 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!748 = !{!749, !750, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !746, file: !747, line: 10, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !746, file: !747, line: 11, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !746, file: !747, line: 12, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !755, line: 59, size: 48, elements: !756)
!755 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!756 = !{!757, !761, !762, !763, !764, !765}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !754, file: !755, line: 60, baseType: !758, size: 16)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !178, line: 18, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !180, line: 23, baseType: !760)
!760 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !754, file: !755, line: 61, baseType: !758, size: 16, offset: 16)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !754, file: !755, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !754, file: !755, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !755, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !754, file: !755, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !552, file: !6, line: 465, baseType: !162, size: 64, offset: 6784)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !552, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !552, file: !6, line: 470, baseType: !169, size: 128, offset: 6912)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !552, file: !6, line: 471, baseType: !770, size: 64, offset: 7040)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !772, line: 33, size: 96, elements: !773)
!772 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!773 = !{!774, !775, !776, !777}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !771, file: !772, line: 37, baseType: !109, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !771, file: !772, line: 43, baseType: !109, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !771, file: !772, line: 45, baseType: !229, size: 16, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !772, line: 47, baseType: !229, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !552, file: !6, line: 476, baseType: !779, size: 64, offset: 7104)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !781)
!781 = !{!782, !798, !799, !800}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !780, file: !6, line: 379, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !785, line: 204, baseType: !786)
!785 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !785, line: 197, size: 192, elements: !787)
!787 = !{!788, !790, !791, !792, !794, !796}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !786, file: !785, line: 198, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !785, line: 21, baseType: !434)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !786, file: !785, line: 199, baseType: !221, size: 8, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !786, file: !785, line: 200, baseType: !221, size: 8, offset: 40)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !786, file: !785, line: 201, baseType: !793, size: 16, offset: 48)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !785, line: 17, baseType: !228)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !786, file: !785, line: 202, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !785, line: 16, baseType: !179)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !786, file: !785, line: 203, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !785, line: 22, baseType: !179)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !780, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !780, file: !6, line: 381, baseType: !289, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !780, file: !6, line: 382, baseType: !289, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !552, file: !6, line: 477, baseType: !780, size: 256, offset: 7168)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !552, file: !6, line: 480, baseType: !803, size: 64, offset: 7424)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !552, file: !6, line: 483, baseType: !806, size: 64, offset: 7488)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !552, file: !6, line: 488, baseType: !289, size: 64, offset: 7552)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !552, file: !6, line: 492, baseType: !164, size: 64, offset: 7616)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !552, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !552, file: !6, line: 495, baseType: !164, size: 64, offset: 7744)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !552, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !552, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !552, file: !6, line: 500, baseType: !815, size: 64, offset: 7872)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !817, line: 45, baseType: !818)
!817 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !552, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !552, file: !6, line: 504, baseType: !821, size: 64, offset: 8000)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !824, line: 96, size: 192, elements: !825)
!824 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!825 = !{!826, !827, !908, !912}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !823, file: !824, line: 97, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !823, file: !824, line: 98, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !824, line: 24, size: 3072, elements: !830)
!830 = !{!831, !833, !834, !835, !836, !860, !861, !862, !863, !881, !893, !894, !905, !906, !907}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !829, file: !824, line: 26, baseType: !832, size: 128)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 128, elements: !741)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !829, file: !824, line: 27, baseType: !832, size: 128, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !829, file: !824, line: 28, baseType: !109, size: 32, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !824, line: 31, baseType: !191, size: 32, align: 512, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !829, file: !824, line: 32, baseType: !837, size: 960, offset: 576)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !838, line: 206, size: 960, elements: !839)
!838 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!839 = !{!840, !849, !854, !856, !857, !859}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !837, file: !838, line: 207, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !158, line: 233, baseType: !841, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !842, file: !158, line: 234, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !841}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !837, file: !838, line: 208, baseType: !850, size: 256, offset: 64)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 256, elements: !852)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!852 = !{!853}
!853 = !DISubrange(count: 4)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !837, file: !838, line: 209, baseType: !855, size: 256, offset: 320)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !852)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !837, file: !838, line: 213, baseType: !324, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !837, file: !838, line: 215, baseType: !858, size: 256, offset: 640)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !852)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !838, line: 216, baseType: !219, size: 8, offset: 896)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !829, file: !824, line: 33, baseType: !162, size: 64, offset: 1536)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !829, file: !824, line: 34, baseType: !162, size: 64, offset: 1600)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !829, file: !824, line: 35, baseType: !702, size: 8, offset: 1664)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !829, file: !824, line: 36, baseType: !864, size: 320, offset: 1728)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !865, line: 11, size: 320, elements: !866)
!865 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!866 = !{!867, !874, !875, !880}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !864, file: !865, line: 16, baseType: !868, size: 128)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !869)
!869 = !{!870, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !158, line: 199, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !868, file: !158, line: 199, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !864, file: !865, line: 17, baseType: !162, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !864, file: !865, line: 18, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 19, baseType: !433, size: 32, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !829, file: !824, line: 37, baseType: !882, size: 256, offset: 2048)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !883, line: 98, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !882, file: !883, line: 99, baseType: !626, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !882, file: !883, line: 100, baseType: !169, size: 128, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !882, file: !883, line: 101, baseType: !888, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !883, line: 21, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !829, file: !824, line: 38, baseType: !842, size: 128, align: 64, offset: 2304)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !829, file: !824, line: 39, baseType: !895, size: 64, offset: 2432)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !824, line: 49, size: 768, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !904}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !896, file: !824, line: 50, baseType: !191, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !896, file: !824, line: 51, baseType: !855, size: 256, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !896, file: !824, line: 53, baseType: !855, size: 256, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !896, file: !824, line: 54, baseType: !162, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !896, file: !824, line: 55, baseType: !895, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !896, file: !824, line: 56, baseType: !109, size: 32, offset: 704)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !896, file: !824, line: 57, baseType: !109, size: 32, offset: 736)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !829, file: !824, line: 40, baseType: !162, size: 64, offset: 2496)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !829, file: !824, line: 42, baseType: !109, size: 32, offset: 2560)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !829, file: !824, line: 43, baseType: !822, size: 64, offset: 2624)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !823, file: !824, line: 99, baseType: !909, offset: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !910, line: 211, elements: !911)
!910 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!911 = !{}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !823, file: !824, line: 100, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !824, line: 63, size: 3008, elements: !915)
!915 = !{!916, !917, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !947}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !914, file: !824, line: 64, baseType: !895, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !914, file: !824, line: 65, baseType: !918, size: 192, offset: 64)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 192, elements: !290)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !914, file: !824, line: 67, baseType: !109, size: 32, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !914, file: !824, line: 68, baseType: !622, size: 256, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !824, line: 69, baseType: !191, size: 32, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !914, file: !824, line: 70, baseType: !622, size: 256, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !914, file: !824, line: 71, baseType: !162, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !914, file: !824, line: 72, baseType: !162, size: 64, offset: 960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !914, file: !824, line: 73, baseType: !162, size: 64, offset: 1024)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !914, file: !824, line: 74, baseType: !162, size: 64, offset: 1088)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !914, file: !824, line: 75, baseType: !162, size: 64, offset: 1152)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !914, file: !824, line: 76, baseType: !162, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !914, file: !824, line: 77, baseType: !162, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !914, file: !824, line: 78, baseType: !162, size: 64, offset: 1344)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !914, file: !824, line: 79, baseType: !702, size: 8, offset: 1408)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !914, file: !824, line: 80, baseType: !162, size: 64, offset: 1472)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !914, file: !824, line: 81, baseType: !622, size: 256, offset: 1536)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !914, file: !824, line: 82, baseType: !571, size: 256, offset: 1792)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !914, file: !824, line: 84, baseType: !211, size: 32, offset: 2048)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !914, file: !824, line: 87, baseType: !162, size: 64, offset: 2112)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !914, file: !824, line: 88, baseType: !162, size: 64, offset: 2176)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !914, file: !824, line: 89, baseType: !939, size: 704, offset: 2240)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !883, line: 111, size: 704, elements: !940)
!940 = !{!941, !942, !943, !946}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !939, file: !883, line: 112, baseType: !882, size: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !939, file: !883, line: 113, baseType: !864, size: 320, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !939, file: !883, line: 116, baseType: !944, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !883, line: 18, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !939, file: !883, line: 117, baseType: !109, size: 32, offset: 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !914, file: !824, line: 90, baseType: !822, size: 64, offset: 2944)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !552, file: !6, line: 515, baseType: !949, size: 64, offset: 8064)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !951, line: 117, size: 128, elements: !952)
!951 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !950, file: !951, line: 118, baseType: !618, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !950, file: !951, line: 119, baseType: !618, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !950, file: !951, line: 120, baseType: !324, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !552, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !552, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !552, file: !6, line: 520, baseType: !959, size: 64, offset: 8192)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !552, file: !6, line: 523, baseType: !961, size: 64, offset: 8256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !552, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !552, file: !6, line: 525, baseType: !966, size: 64, offset: 8384)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !552, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !552, file: !6, line: 533, baseType: !164, size: 64, offset: 8512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !552, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !552, file: !6, line: 535, baseType: !973, size: 64, offset: 8640)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !552, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !552, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !552, file: !6, line: 540, baseType: !977, size: 64, offset: 8768)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !979, line: 32, size: 64, elements: !980)
!979 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !978, file: !979, line: 33, baseType: !618, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !978, file: !979, line: 34, baseType: !618, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !552, file: !6, line: 563, baseType: !169, size: 128, offset: 8832)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !552, file: !6, line: 565, baseType: !169, size: 128, offset: 8960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !552, file: !6, line: 568, baseType: !986, size: 64, offset: 9088)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !552, file: !6, line: 570, baseType: !211, size: 32, offset: 9152)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !14, line: 2382, baseType: !526, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !527, file: !14, line: 2383, baseType: !992, size: 64, offset: 512)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !992, file: !158, line: 195, baseType: !871, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !527, file: !14, line: 2385, baseType: !996, offset: 576)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !910, line: 206, elements: !911)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !527, file: !14, line: 2386, baseType: !996, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !527, file: !14, line: 2387, baseType: !996, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !527, file: !14, line: 2388, baseType: !1000, offset: 576)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, elements: !290)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !527, file: !14, line: 2390, baseType: !996, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !527, file: !14, line: 2391, baseType: !996, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !527, file: !14, line: 2392, baseType: !996, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !527, file: !14, line: 2393, baseType: !996, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !513, file: !14, line: 1197, baseType: !1006, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1009)
!1009 = !{!1010, !1014, !1018, !1019, !1023, !1029, !1033, !1034, !1035, !1039, !1043, !1047, !1048, !1049, !1055, !1059, !1060, !1067, !1068, !1069, !1070, !1074, !1078, !1127, !1142, !1143}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1008, file: !14, line: 2058, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!364, !512}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1008, file: !14, line: 2059, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !364}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1008, file: !14, line: 2060, baseType: !1015, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1008, file: !14, line: 2062, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !364, !109}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1008, file: !14, line: 2063, baseType: !1024, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!109, !364, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1008, file: !14, line: 2064, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!109, !364}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1008, file: !14, line: 2065, baseType: !1015, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1008, file: !14, line: 2066, baseType: !547, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1008, file: !14, line: 2067, baseType: !1036, size: 64, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!109, !512, !109}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1008, file: !14, line: 2068, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!109, !512, !13}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1008, file: !14, line: 2069, baseType: !1044, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!109, !512}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1008, file: !14, line: 2070, baseType: !1040, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1008, file: !14, line: 2071, baseType: !1044, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1008, file: !14, line: 2072, baseType: !1050, size: 64, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!109, !399, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1008, file: !14, line: 2073, baseType: !1056, size: 64, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!109, !512, !751, !289}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1008, file: !14, line: 2074, baseType: !547, size: 64, offset: 960)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1008, file: !14, line: 2076, baseType: !1061, size: 64, offset: 1024)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!109, !1064, !399}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1066, line: 66, flags: DIFlagFwdDecl)
!1066 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1008, file: !14, line: 2077, baseType: !1061, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1008, file: !14, line: 2078, baseType: !1061, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1008, file: !14, line: 2079, baseType: !1061, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1008, file: !14, line: 2081, baseType: !1071, size: 64, offset: 1280)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!321, !512, !109, !289, !157, !522}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1008, file: !14, line: 2082, baseType: !1075, size: 64, offset: 1344)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!321, !512, !109, !249, !157, !522}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1008, file: !14, line: 2083, baseType: !1079, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1082, !364}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1110, !1111, !1112}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1084, file: !19, line: 297, baseType: !868, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1084, file: !19, line: 298, baseType: !169, size: 128, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1084, file: !19, line: 299, baseType: !169, size: 128, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1084, file: !19, line: 300, baseType: !169, size: 128, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1084, file: !19, line: 301, baseType: !622, size: 256, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1084, file: !19, line: 302, baseType: !191, size: 32, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1084, file: !19, line: 303, baseType: !211, size: 32, offset: 800)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1084, file: !19, line: 304, baseType: !512, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1084, file: !19, line: 305, baseType: !1095, size: 64, offset: 896)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1096)
!1096 = !{!1097, !1109}
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !19, line: 69, baseType: !1098, size: 32)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !19, line: 69, size: 32, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1098, file: !19, line: 70, baseType: !370, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1098, file: !19, line: 71, baseType: !379, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1098, file: !19, line: 72, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1104, line: 24, baseType: !1105)
!1104 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1104, line: 22, size: 32, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1105, file: !1104, line: 23, baseType: !1108, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1104, line: 20, baseType: !376)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1095, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1084, file: !19, line: 306, baseType: !522, size: 64, offset: 960)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1084, file: !19, line: 307, baseType: !162, size: 64, offset: 1024)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1084, file: !19, line: 308, baseType: !1113, size: 576, offset: 1088)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1114)
!1114 = !{!1115, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1126}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1113, file: !19, line: 206, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !524)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1113, file: !19, line: 207, baseType: !1116, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1113, file: !19, line: 208, baseType: !1116, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1113, file: !19, line: 209, baseType: !1116, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1113, file: !19, line: 210, baseType: !1116, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1113, file: !19, line: 211, baseType: !1116, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1113, file: !19, line: 212, baseType: !1116, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1113, file: !19, line: 213, baseType: !1124, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1125, line: 8, baseType: !633)
!1125 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1113, file: !19, line: 214, baseType: !1124, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1008, file: !14, line: 2085, baseType: !1128, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!324, !512, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1133, line: 15, size: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1134 = !{!1135, !1136, !1137, !1138, !1139}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1132, file: !1133, line: 16, baseType: !163, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1132, file: !1133, line: 19, baseType: !109, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1132, file: !1133, line: 26, baseType: !162, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1132, file: !1133, line: 33, baseType: !162, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1132, file: !1133, line: 36, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1008, file: !14, line: 2087, baseType: !1128, size: 64, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1008, file: !14, line: 2089, baseType: !547, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !513, file: !14, line: 1198, baseType: !1145, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1148)
!1148 = !{!1149, !1153, !1157, !1161, !1162, !1163, !1164, !1165, !1170, !1175, !1179}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1147, file: !19, line: 325, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!109, !1083}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1147, file: !19, line: 326, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1083, !512, !109}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1147, file: !19, line: 327, baseType: !1158, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1083}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1147, file: !19, line: 328, baseType: !1150, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1147, file: !19, line: 329, baseType: !1150, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1147, file: !19, line: 330, baseType: !1150, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1147, file: !19, line: 331, baseType: !1036, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1147, file: !19, line: 334, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1169, !364}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1147, file: !19, line: 335, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!109, !364, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1147, file: !19, line: 337, baseType: !1176, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!109, !364, !1169}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1147, file: !19, line: 339, baseType: !1180, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!109, !512, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !513, file: !14, line: 1199, baseType: !1185, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1188)
!1188 = !{!1189, !1200, !1201, !1205, !1206, !1207, !1222, !1245, !1249, !1250, !1273}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1187, file: !19, line: 431, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!109, !512, !109, !109, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1196, line: 8, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1195, file: !1196, line: 9, baseType: !506, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1195, file: !1196, line: 10, baseType: !399, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1187, file: !19, line: 432, baseType: !1036, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1187, file: !19, line: 433, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!109, !512, !7}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1187, file: !19, line: 434, baseType: !1202, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1187, file: !19, line: 435, baseType: !1036, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1187, file: !19, line: 436, baseType: !1208, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!109, !512, !109, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1212, file: !19, line: 418, baseType: !109, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1212, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1212, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1212, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1212, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1212, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1212, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1212, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1187, file: !19, line: 437, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!109, !512, !1095, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1227, file: !19, line: 346, baseType: !109, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1227, file: !19, line: 347, baseType: !177, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1227, file: !19, line: 348, baseType: !177, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1227, file: !19, line: 349, baseType: !177, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1227, file: !19, line: 350, baseType: !177, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1227, file: !19, line: 351, baseType: !177, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1227, file: !19, line: 352, baseType: !177, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1227, file: !19, line: 353, baseType: !632, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1227, file: !19, line: 355, baseType: !632, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1227, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1227, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1227, file: !19, line: 358, baseType: !177, size: 64, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1227, file: !19, line: 359, baseType: !177, size: 64, offset: 704)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1227, file: !19, line: 360, baseType: !177, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1227, file: !19, line: 361, baseType: !632, size: 64, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1227, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1187, file: !19, line: 438, baseType: !1246, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !512, !1183, !1226}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1187, file: !19, line: 440, baseType: !1223, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1187, file: !19, line: 441, baseType: !1251, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!109, !512, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1256)
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1255, file: !19, line: 412, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1255, file: !19, line: 413, baseType: !1259, size: 1344, offset: 64)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 1344, elements: !290)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1272}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !19, line: 398, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1260, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1260, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1260, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1260, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1260, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1260, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1260, file: !19, line: 406, baseType: !181, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1260, file: !19, line: 407, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !177)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1260, file: !19, line: 408, baseType: !1271, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1187, file: !19, line: 442, baseType: !1202, size: 64, offset: 640)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !513, file: !14, line: 1200, baseType: !1275, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !513, file: !14, line: 1201, baseType: !162, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !513, file: !14, line: 1202, baseType: !162, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !513, file: !14, line: 1203, baseType: !162, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !513, file: !14, line: 1204, baseType: !399, size: 64, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !513, file: !14, line: 1205, baseType: !1283, size: 320, offset: 896)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1284, line: 48, size: 320, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1283, file: !1284, line: 49, baseType: !626, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1283, file: !1284, line: 55, baseType: !626, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1283, file: !1284, line: 57, baseType: !636, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1283, file: !1284, line: 59, baseType: !580, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1283, file: !1284, line: 60, baseType: !169, size: 128, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !513, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !513, file: !14, line: 1207, baseType: !211, size: 32, offset: 1248)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !513, file: !14, line: 1209, baseType: !164, size: 64, offset: 1280)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !513, file: !14, line: 1211, baseType: !1295, size: 64, offset: 1344)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !513, file: !14, line: 1223, baseType: !1300, size: 64, offset: 1408)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !416, line: 34, size: 64, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1300, file: !416, line: 35, baseType: !419, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !513, file: !14, line: 1224, baseType: !169, size: 128, offset: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !513, file: !14, line: 1225, baseType: !1305, size: 64, offset: 1600)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !513, file: !14, line: 1226, baseType: !1308, size: 64, offset: 1664)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !513, file: !14, line: 1227, baseType: !1311, size: 64, offset: 1728)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !513, file: !14, line: 1228, baseType: !1314, size: 64, offset: 1792)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !513, file: !14, line: 1229, baseType: !868, size: 128, offset: 1856)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !513, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !513, file: !14, line: 1231, baseType: !1319, size: 2496, offset: 2048)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1325, !1357}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !19, line: 522, baseType: !7, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1319, file: !19, line: 523, baseType: !1283, size: 320, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1319, file: !19, line: 524, baseType: !1324, size: 192, offset: 384)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 192, elements: !290)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1319, file: !19, line: 525, baseType: !1326, size: 1728, offset: 576)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 1728, elements: !290)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1328)
!1328 = !{!1329, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1327, file: !19, line: 223, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1332)
!1332 = !{!1333, !1334, !1347, !1348}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1331, file: !19, line: 446, baseType: !109, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1331, file: !19, line: 447, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1337, file: !19, line: 313, baseType: !1036, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1337, file: !19, line: 314, baseType: !1036, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1337, file: !19, line: 315, baseType: !1036, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1337, file: !19, line: 316, baseType: !1036, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1337, file: !19, line: 317, baseType: !1150, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1337, file: !19, line: 318, baseType: !1150, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1337, file: !19, line: 319, baseType: !1150, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1337, file: !19, line: 320, baseType: !1180, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1331, file: !19, line: 448, baseType: !551, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1331, file: !19, line: 449, baseType: !1330, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1327, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1327, file: !19, line: 226, baseType: !169, size: 128, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1327, file: !19, line: 227, baseType: !162, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1327, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1327, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1327, file: !19, line: 230, baseType: !1116, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1327, file: !19, line: 231, baseType: !1116, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1327, file: !19, line: 232, baseType: !164, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1319, file: !19, line: 526, baseType: !1358, size: 192, offset: 2304)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 192, elements: !290)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !513, file: !14, line: 1233, baseType: !1360, size: 2368, offset: 4544)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1360, file: !14, line: 1185, baseType: !229, size: 16)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1360, file: !14, line: 1186, baseType: !229, size: 16, offset: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1360, file: !14, line: 1187, baseType: !1365, size: 2304, offset: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 2304, elements: !290)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1367, line: 12, size: 768, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1368 = !{!1369, !1383, !1384, !3469, !3470}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1366, file: !1367, line: 13, baseType: !1370, size: 384)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1371, line: 17, size: 384, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1372 = !{!1373, !1374, !1375, !1382}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1370, file: !1371, line: 18, baseType: !109, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1370, file: !1371, line: 19, baseType: !109, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1370, file: !1371, line: 20, baseType: !1376, size: 192, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1377, line: 41, baseType: !1378)
!1377 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1377, line: 37, size: 192, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !1377, line: 38, baseType: !191, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1378, file: !1377, line: 39, baseType: !169, size: 128, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1370, file: !1371, line: 22, baseType: !842, size: 128, align: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1366, file: !1367, line: 14, baseType: !694, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1366, file: !1367, line: 15, baseType: !1385, size: 64, offset: 448)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1386, line: 16, size: 64, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1385, file: !1386, line: 17, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1066, line: 746, size: 58368, elements: !1391)
!1391 = !{!1392, !1400, !1401, !1402, !1408, !1409, !1410, !1411, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1482, !1493, !1588, !1592, !1595, !1626, !1627, !1628, !1629, !1640, !1642, !1643, !1644, !1645, !1646, !1647, !1658, !1659, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1676, !1677, !1684, !1685, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2643, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2691, !2697, !2698, !2699, !2700, !2701, !2705, !2708, !2715, !2720, !2723, !2726, !2729, !2732, !2870, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2908, !2909, !2910, !2919, !2927, !2928, !2929, !2930, !2931, !2936, !2937, !2938, !2941, !2942, !2945, !2948, !2951, !2959, !2962, !2963, !3049, !3050, !3051, !3052, !3053, !3059, !3060, !3061, !3062, !3065, !3066, !3069, !3072, !3073, !3076, !3077, !3078, !3081, !3082, !3083, !3084, !3085, !3086, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3118, !3119, !3125, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3137, !3209, !3211, !3212, !3213, !3214, !3215, !3216, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3246, !3247, !3248}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1390, file: !1066, line: 752, baseType: !1393, size: 192)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1394, line: 56, size: 192, elements: !1395)
!1394 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1395 = !{!1396, !1397, !1398, !1399}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1393, file: !1394, line: 57, baseType: !162, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1393, file: !1394, line: 58, baseType: !162, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1393, file: !1394, line: 59, baseType: !433, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1393, file: !1394, line: 61, baseType: !433, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1390, file: !1066, line: 754, baseType: !7, size: 32, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1390, file: !1066, line: 767, baseType: !164, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1390, file: !1066, line: 768, baseType: !1403, size: 32, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1404, line: 113, baseType: !1405)
!1404 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1404, line: 111, size: 32, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1405, file: !1404, line: 112, baseType: !211, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !1066, line: 770, baseType: !7, size: 32, offset: 352)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1390, file: !1066, line: 771, baseType: !7, size: 32, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1390, file: !1066, line: 774, baseType: !109, size: 32, offset: 416)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1390, file: !1066, line: 775, baseType: !1412, size: 128, offset: 448)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1413, line: 58, size: 128, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1414 = !{!1415, !1421, !1426, !1427}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1412, file: !1413, line: 59, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1417, line: 60, size: 64, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1416, file: !1417, line: 61, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 60, baseType: !1422, size: 32, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1413, line: 60, size: 32, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1422, file: !1413, line: 61, baseType: !7, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1422, file: !1413, line: 62, baseType: !211, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1412, file: !1413, line: 65, baseType: !227, size: 16, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1412, file: !1413, line: 65, baseType: !227, size: 16, offset: 112)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1390, file: !1066, line: 776, baseType: !7, size: 32, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1390, file: !1066, line: 777, baseType: !162, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1390, file: !1066, line: 778, baseType: !1389, size: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1390, file: !1066, line: 787, baseType: !109, size: 32, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1390, file: !1066, line: 788, baseType: !109, size: 32, offset: 800)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1390, file: !1066, line: 790, baseType: !109, size: 32, offset: 832)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1390, file: !1066, line: 792, baseType: !109, size: 32, offset: 864)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1390, file: !1066, line: 793, baseType: !109, size: 32, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1390, file: !1066, line: 794, baseType: !109, size: 32, offset: 928)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1390, file: !1066, line: 795, baseType: !7, size: 32, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1390, file: !1066, line: 797, baseType: !1439, size: 2048, offset: 1024)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1066, line: 551, size: 2048, elements: !1440)
!1440 = !{!1441, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1461, !1464, !1465, !1466}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1439, file: !1066, line: 553, baseType: !1442, size: 128)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1066, line: 411, size: 128, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1442, file: !1066, line: 412, baseType: !162, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1442, file: !1066, line: 413, baseType: !433, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1439, file: !1066, line: 554, baseType: !734, size: 192, align: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1439, file: !1066, line: 555, baseType: !177, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1439, file: !1066, line: 556, baseType: !177, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1439, file: !1066, line: 558, baseType: !169, size: 128, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1439, file: !1066, line: 559, baseType: !7, size: 32, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1439, file: !1066, line: 561, baseType: !177, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1439, file: !1066, line: 562, baseType: !177, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1439, file: !1066, line: 563, baseType: !177, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1439, file: !1066, line: 564, baseType: !177, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1439, file: !1066, line: 565, baseType: !632, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1439, file: !1066, line: 566, baseType: !177, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1439, file: !1066, line: 568, baseType: !177, size: 64, offset: 1024)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1439, file: !1066, line: 571, baseType: !109, size: 32, offset: 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1439, file: !1066, line: 572, baseType: !1460, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1439, file: !1066, line: 574, baseType: !1462, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1066, line: 49, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1439, file: !1066, line: 576, baseType: !1462, size: 64, offset: 1280)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1439, file: !1066, line: 578, baseType: !162, size: 64, offset: 1344)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1439, file: !1066, line: 588, baseType: !1467, size: 512, align: 512, offset: 1536)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1066, line: 497, size: 512, align: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1467, file: !1066, line: 498, baseType: !177, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1467, file: !1066, line: 499, baseType: !177, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1467, file: !1066, line: 500, baseType: !177, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1467, file: !1066, line: 501, baseType: !433, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1467, file: !1066, line: 502, baseType: !433, size: 32, offset: 224)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1467, file: !1066, line: 503, baseType: !162, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1467, file: !1066, line: 504, baseType: !162, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1467, file: !1066, line: 505, baseType: !162, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1467, file: !1066, line: 506, baseType: !1478, size: 64, align: 64, offset: 448)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1066, line: 445, size: 64, align: 64, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1478, file: !1066, line: 446, baseType: !7, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1478, file: !1066, line: 447, baseType: !7, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1390, file: !1066, line: 798, baseType: !1483, size: 384, offset: 3072)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1066, line: 592, size: 384, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1483, file: !1066, line: 593, baseType: !169, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1483, file: !1066, line: 594, baseType: !162, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1483, file: !1066, line: 595, baseType: !162, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1483, file: !1066, line: 596, baseType: !7, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1483, file: !1066, line: 597, baseType: !229, size: 16, offset: 288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1483, file: !1066, line: 598, baseType: !229, size: 16, offset: 304)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1483, file: !1066, line: 600, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1390, file: !1066, line: 799, baseType: !1494, size: 1792, offset: 3456)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1066, line: 610, size: 1792, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1585, !1586}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1494, file: !1066, line: 611, baseType: !734, size: 192, align: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1494, file: !1066, line: 618, baseType: !177, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1494, file: !1066, line: 619, baseType: !177, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1494, file: !1066, line: 620, baseType: !177, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1494, file: !1066, line: 621, baseType: !177, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1494, file: !1066, line: 622, baseType: !177, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1494, file: !1066, line: 629, baseType: !632, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1494, file: !1066, line: 630, baseType: !177, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1494, file: !1066, line: 631, baseType: !7, size: 32, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1494, file: !1066, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1494, file: !1066, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1494, file: !1066, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1494, file: !1066, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1494, file: !1066, line: 662, baseType: !1510, size: 512, offset: 704)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1511)
!1511 = !{!1512, !1520, !1521, !1526, !1581, !1582, !1583, !1584}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1510, file: !25, line: 119, baseType: !1513, size: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1514, line: 9, size: 256, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1513, file: !1514, line: 10, baseType: !734, size: 192, align: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1513, file: !1514, line: 11, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1519, line: 29, baseType: !632)
!1519 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1510, file: !25, line: 120, baseType: !1518, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1510, file: !25, line: 121, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!24, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1510, file: !25, line: 122, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1529)
!1529 = !{!1530, !1555, !1556, !1559, !1564, !1565, !1576, !1580}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1528, file: !25, line: 160, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !25, line: 216, baseType: !580, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1532, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1532, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1532, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1532, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1532, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1532, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1532, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1532, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1532, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1532, file: !25, line: 227, baseType: !229, size: 16, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1532, file: !25, line: 228, baseType: !229, size: 16, offset: 208)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1532, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1532, file: !25, line: 235, baseType: !1518, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1532, file: !25, line: 236, baseType: !1525, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1532, file: !25, line: 237, baseType: !1518, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1532, file: !25, line: 238, baseType: !1525, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1532, file: !25, line: 239, baseType: !1552, size: 4096, align: 512, offset: 512)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 4096, align: 512, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 8)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1528, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1528, file: !25, line: 162, baseType: !1557, size: 32, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !160, line: 96, baseType: !109)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1528, file: !25, line: 163, baseType: !1560, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 274, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 274, size: 32, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1561, file: !406, line: 274, baseType: !410, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1528, file: !25, line: 164, baseType: !1525, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1528, file: !25, line: 165, baseType: !1566, size: 128, offset: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1514, line: 14, size: 128, elements: !1567)
!1567 = !{!1568}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1566, file: !1514, line: 15, baseType: !1569, size: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !735, line: 26, size: 128, elements: !1570)
!1570 = !{!1571, !1575}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1569, file: !735, line: 27, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !735, line: 12, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1572, file: !735, line: 13, baseType: !739, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1569, file: !735, line: 28, baseType: !739, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1528, file: !25, line: 166, baseType: !1577, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1518}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1528, file: !25, line: 167, baseType: !1518, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1510, file: !25, line: 123, baseType: !219, size: 8, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1510, file: !25, line: 124, baseType: !219, size: 8, offset: 456)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1510, file: !25, line: 125, baseType: !219, size: 8, offset: 464)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1510, file: !25, line: 126, baseType: !219, size: 8, offset: 472)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1494, file: !1066, line: 671, baseType: !1510, size: 512, offset: 1216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1494, file: !1066, line: 679, baseType: !1587, size: 64, offset: 1728)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1390, file: !1066, line: 800, baseType: !1589, size: 64, offset: 5248)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1066, line: 800, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1390, file: !1066, line: 809, baseType: !1593, size: 64, offset: 5312)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1066, line: 70, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1390, file: !1066, line: 825, baseType: !1596, size: 2048, align: 512, offset: 5632)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1066, line: 509, size: 2048, align: 512, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1596, file: !1066, line: 511, baseType: !177, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1596, file: !1066, line: 512, baseType: !177, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1596, file: !1066, line: 513, baseType: !177, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1596, file: !1066, line: 514, baseType: !177, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1596, file: !1066, line: 515, baseType: !177, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1596, file: !1066, line: 516, baseType: !177, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1596, file: !1066, line: 518, baseType: !177, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1596, file: !1066, line: 519, baseType: !177, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1596, file: !1066, line: 520, baseType: !632, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1596, file: !1066, line: 522, baseType: !177, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1596, file: !1066, line: 523, baseType: !177, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1596, file: !1066, line: 524, baseType: !632, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1596, file: !1066, line: 526, baseType: !632, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1596, file: !1066, line: 527, baseType: !177, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1596, file: !1066, line: 529, baseType: !177, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1596, file: !1066, line: 530, baseType: !177, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1596, file: !1066, line: 531, baseType: !177, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1596, file: !1066, line: 532, baseType: !177, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1596, file: !1066, line: 533, baseType: !177, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1596, file: !1066, line: 535, baseType: !177, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1596, file: !1066, line: 536, baseType: !177, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1596, file: !1066, line: 537, baseType: !177, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1596, file: !1066, line: 538, baseType: !177, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1596, file: !1066, line: 539, baseType: !177, size: 64, offset: 1472)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1596, file: !1066, line: 540, baseType: !177, size: 64, offset: 1536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1596, file: !1066, line: 541, baseType: !177, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1596, file: !1066, line: 542, baseType: !177, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1596, file: !1066, line: 543, baseType: !177, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1390, file: !1066, line: 833, baseType: !7, size: 32, offset: 7680)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1390, file: !1066, line: 836, baseType: !7, size: 32, offset: 7712)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1390, file: !1066, line: 837, baseType: !109, size: 32, offset: 7744)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1390, file: !1066, line: 838, baseType: !1630, size: 64, offset: 7808)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1633, line: 19, baseType: !1634)
!1633 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1633, line: 19, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1634, file: !1633, line: 19, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 1)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1390, file: !1066, line: 839, baseType: !1641, size: 64, offset: 7872)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1390, file: !1066, line: 840, baseType: !1632, size: 64, offset: 7936)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1390, file: !1066, line: 841, baseType: !164, size: 64, offset: 8000)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1390, file: !1066, line: 843, baseType: !229, size: 16, offset: 8064)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1390, file: !1066, line: 845, baseType: !229, size: 16, offset: 8080)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1390, file: !1066, line: 848, baseType: !109, size: 32, offset: 8096)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1390, file: !1066, line: 849, baseType: !1648, size: 32, offset: 8128)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1066, line: 718, size: 32, elements: !1649)
!1649 = !{!1650, !1657}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1648, file: !1066, line: 724, baseType: !1651, size: 32)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1066, line: 719, size: 32, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1651, file: !1066, line: 720, baseType: !219, size: 8)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1651, file: !1066, line: 721, baseType: !219, size: 8, offset: 8)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1651, file: !1066, line: 722, baseType: !219, size: 8, offset: 16)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1651, file: !1066, line: 723, baseType: !219, size: 8, offset: 24)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1648, file: !1066, line: 725, baseType: !433, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1390, file: !1066, line: 850, baseType: !169, size: 128, offset: 8192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1390, file: !1066, line: 851, baseType: !1660, size: 64, offset: 8320)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1066, line: 60, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1390, file: !1066, line: 855, baseType: !162, size: 64, offset: 8384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1390, file: !1066, line: 856, baseType: !219, size: 8, offset: 8448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1390, file: !1066, line: 857, baseType: !219, size: 8, offset: 8456)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1390, file: !1066, line: 858, baseType: !109, size: 32, offset: 8480)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1390, file: !1066, line: 859, baseType: !169, size: 128, offset: 8512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1390, file: !1066, line: 860, baseType: !109, size: 32, offset: 8640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1390, file: !1066, line: 861, baseType: !169, size: 128, offset: 8704)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1390, file: !1066, line: 873, baseType: !1670, size: 256, offset: 8832)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1066, line: 376, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1670, file: !1066, line: 381, baseType: !162, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1670, file: !1066, line: 384, baseType: !181, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1670, file: !1066, line: 389, baseType: !181, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1670, file: !1066, line: 392, baseType: !181, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1390, file: !1066, line: 875, baseType: !169, size: 128, offset: 9088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1390, file: !1066, line: 877, baseType: !1678, size: 320, offset: 9216)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1679, line: 86, size: 320, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1678, file: !1679, line: 87, baseType: !109, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1678, file: !1679, line: 88, baseType: !169, size: 128, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1678, file: !1679, line: 89, baseType: !169, size: 128, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1390, file: !1066, line: 878, baseType: !734, size: 192, align: 64, offset: 9536)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1390, file: !1066, line: 881, baseType: !1686, size: 64, offset: 9728)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1688)
!1688 = !{!1689, !2562}
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !38, line: 734, baseType: !1690, size: 10240)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !38, line: 734, size: 10240, elements: !1691)
!1691 = !{!1692, !1696, !1709, !2439, !2440, !2441, !2442, !2443, !2444, !2451, !2452, !2453, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2492, !2494, !2497, !2542, !2543, !2544, !2547, !2548, !2549, !2552, !2553, !2554, !2560, !2561}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !38, line: 739, baseType: !1693, size: 512, align: 512)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !38, line: 739, size: 512, align: 512, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1693, file: !38, line: 747, baseType: !211, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1690, file: !38, line: 750, baseType: !1697, size: 128, offset: 512)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1698, line: 218, size: 128, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1699 = !{!1700, !1707, !1708}
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1698, line: 219, baseType: !1701, size: 32)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !1698, line: 219, size: 32, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1701, file: !1698, line: 220, baseType: !191, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1701, file: !1698, line: 221, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1698, line: 197, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1698, line: 197, elements: !911)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1697, file: !1698, line: 223, baseType: !7, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1697, file: !1698, line: 224, baseType: !164, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1690, file: !38, line: 752, baseType: !1710, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!162, !1713, !162, !162, !162, !162}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1715)
!1715 = !{!1716, !1722, !1723, !1725, !1726, !1727, !1728, !1729, !1779, !1969, !1978, !1979, !1980, !2429, !2430, !2431, !2432, !2434, !2435, !2438}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !14, line: 995, baseType: !1717, size: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !14, line: 995, size: 128, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1717, file: !14, line: 996, baseType: !1416, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1717, file: !14, line: 997, baseType: !842, size: 128, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1717, file: !14, line: 998, baseType: !7, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1714, file: !14, line: 1005, baseType: !191, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1714, file: !14, line: 1006, baseType: !1724, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !7)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1714, file: !14, line: 1007, baseType: !626, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1714, file: !14, line: 1008, baseType: !622, size: 256, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1714, file: !14, line: 1009, baseType: !522, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1714, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1714, file: !14, line: 1011, baseType: !1730, size: 256, offset: 640)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1731)
!1731 = !{!1732, !1753, !1775, !1776, !1777, !1778}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1730, file: !14, line: 949, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1734, line: 34, baseType: !1735)
!1734 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1734, line: 25, size: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1735, file: !1734, line: 26, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1739, line: 27, baseType: !1740)
!1739 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1739, line: 13, size: 64, elements: !1741)
!1741 = !{!1742, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !1739, line: 14, baseType: !1743, size: 32)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1740, file: !1739, line: 14, size: 32, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1743, file: !1739, line: 15, baseType: !211, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1739, line: 16, baseType: !1747, size: 32)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !1739, line: 16, size: 32, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1747, file: !1739, line: 18, baseType: !219, size: 8)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1747, file: !1739, line: 19, baseType: !1751, size: 24, offset: 8)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 24, elements: !290)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1740, file: !1739, line: 26, baseType: !203, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1730, file: !14, line: 950, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1760, !1762, !1763, !1764, !1765}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1755, file: !30, line: 61, baseType: !1403, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1755, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !30, line: 63, baseType: !191, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1755, file: !30, line: 65, baseType: !1761, size: 256, offset: 128)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 256, elements: !852)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1755, file: !30, line: 66, baseType: !992, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1755, file: !30, line: 68, baseType: !1376, size: 192, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1755, file: !30, line: 69, baseType: !842, size: 128, align: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1755, file: !30, line: 70, baseType: !1766, offset: 768)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, elements: !1773)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1767, file: !30, line: 55, baseType: !109, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1767, file: !30, line: 56, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1773 = !{!1774}
!1774 = !DISubrange(count: -1)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1730, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1730, file: !14, line: 952, baseType: !370, size: 32, offset: 160)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1730, file: !14, line: 952, baseType: !370, size: 32, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1730, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1714, file: !14, line: 1012, baseType: !1780, size: 64, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1783, line: 110, size: 1472, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1801, !1802, !1803, !1804, !1805, !1806, !1914, !1915, !1916, !1917, !1918, !1949, !1952, !1956, !1964}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1782, file: !1783, line: 111, baseType: !626, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1782, file: !1783, line: 112, baseType: !370, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1782, file: !1783, line: 113, baseType: !379, size: 32, offset: 96)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1782, file: !1783, line: 114, baseType: !370, size: 32, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1782, file: !1783, line: 115, baseType: !379, size: 32, offset: 160)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1782, file: !1783, line: 116, baseType: !370, size: 32, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1782, file: !1783, line: 117, baseType: !379, size: 32, offset: 224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1782, file: !1783, line: 118, baseType: !370, size: 32, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1782, file: !1783, line: 119, baseType: !379, size: 32, offset: 288)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1782, file: !1783, line: 120, baseType: !7, size: 32, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1782, file: !1783, line: 121, baseType: !1796, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1797, line: 24, baseType: !1798)
!1797 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 24, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1798, file: !1797, line: 24, baseType: !177, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1782, file: !1783, line: 122, baseType: !1796, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1782, file: !1783, line: 123, baseType: !1796, size: 64, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1782, file: !1783, line: 124, baseType: !1796, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1782, file: !1783, line: 125, baseType: !1796, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1782, file: !1783, line: 127, baseType: !221, size: 8, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1782, file: !1783, line: 129, baseType: !1807, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1809, line: 195, size: 1728, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1810 = !{!1811, !1812, !1815, !1820, !1821, !1824, !1825, !1830, !1831, !1832, !1833, !1836, !1837, !1838, !1839, !1840, !1878, !1899}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1808, file: !1809, line: 196, baseType: !1403, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1808, file: !1809, line: 197, baseType: !1813, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1809, line: 28, baseType: !1814)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !618)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 198, baseType: !1816, size: 192, offset: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 198, size: 192, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1816, file: !1809, line: 199, baseType: !169, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1816, file: !1809, line: 200, baseType: !734, size: 192, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1808, file: !1809, line: 205, baseType: !1283, size: 320, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1808, file: !1809, line: 206, baseType: !1822, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1809, line: 206, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1808, file: !1809, line: 207, baseType: !164, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 208, baseType: !1826, size: 64, offset: 704)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 208, size: 64, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1826, file: !1809, line: 209, baseType: !1124, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1826, file: !1809, line: 210, baseType: !1124, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1808, file: !1809, line: 212, baseType: !1124, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1808, file: !1809, line: 213, baseType: !370, size: 32, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1808, file: !1809, line: 214, baseType: !379, size: 32, offset: 864)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1808, file: !1809, line: 215, baseType: !1834, size: 32, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1809, line: 31, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !433)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1808, file: !1809, line: 216, baseType: !229, size: 16, offset: 928)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1808, file: !1809, line: 217, baseType: !229, size: 16, offset: 944)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1808, file: !1809, line: 221, baseType: !760, size: 16, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !1809, line: 228, baseType: !162, size: 64, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 245, baseType: !1841, size: 320, offset: 1088)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 245, size: 320, elements: !1842)
!1842 = !{!1843, !1870}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1841, file: !1809, line: 246, baseType: !1844, size: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1809, line: 114, size: 320, elements: !1845)
!1845 = !{!1846, !1847, !1859, !1862, !1869}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1844, file: !1809, line: 116, baseType: !162, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1809, line: 117, baseType: !1848, size: 64, offset: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1809, line: 117, size: 64, elements: !1849)
!1849 = !{!1850, !1858}
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1809, line: 118, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1809, line: 118, size: 64, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1851, file: !1809, line: 120, baseType: !227, size: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1851, file: !1809, line: 121, baseType: !1855, size: 48, offset: 16)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 48, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 6)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1848, file: !1809, line: 127, baseType: !162, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1844, file: !1809, line: 129, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1809, line: 102, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1844, file: !1809, line: 130, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1809, line: 108, size: 192, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1864, file: !1809, line: 109, baseType: !842, size: 128, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1864, file: !1809, line: 110, baseType: !1403, size: 32, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1864, file: !1809, line: 111, baseType: !702, size: 8, offset: 160)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1844, file: !1809, line: 131, baseType: !249, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1809, line: 247, baseType: !1871, size: 320)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1809, line: 247, size: 320, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1877}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1871, file: !1809, line: 248, baseType: !162, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1871, file: !1809, line: 249, baseType: !162, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1871, file: !1809, line: 250, baseType: !1860, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1871, file: !1809, line: 251, baseType: !1863, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1871, file: !1809, line: 252, baseType: !289, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 260, baseType: !1879, size: 256, offset: 1408)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 260, size: 256, elements: !1880)
!1880 = !{!1881, !1887}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1879, file: !1809, line: 261, baseType: !1882, size: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1809, line: 134, size: 256, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1882, file: !1809, line: 135, baseType: !164, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1882, file: !1809, line: 136, baseType: !1886, size: 256)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !852)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !1809, line: 262, baseType: !1888, size: 256)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1809, line: 262, size: 256, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1888, file: !1809, line: 264, baseType: !169, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1888, file: !1809, line: 265, baseType: !1892, size: 128, offset: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1893, line: 22, size: 128, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1894 = !{!1895, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1892, file: !1893, line: 23, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1893, line: 23, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1892, file: !1893, line: 24, baseType: !162, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1808, file: !1809, line: 280, baseType: !1900, size: 64, offset: 1664)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1809, line: 176, size: 192, elements: !1902)
!1902 = !{!1903, !1912, !1913}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1901, file: !1809, line: 177, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1809, line: 171, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!109, !1807, !1908, !1910, !1807}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1901, file: !1809, line: 178, baseType: !1807, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1901, file: !1809, line: 179, baseType: !1860, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1782, file: !1783, line: 130, baseType: !1807, size: 64, offset: 832)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1782, file: !1783, line: 131, baseType: !1807, size: 64, offset: 896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1782, file: !1783, line: 132, baseType: !1807, size: 64, offset: 960)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1782, file: !1783, line: 135, baseType: !164, size: 64, offset: 1024)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1782, file: !1783, line: 137, baseType: !1919, size: 64, offset: 1088)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1921, line: 14, size: 1088, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1922 = !{!1923, !1924, !1933, !1934, !1935, !1936, !1937, !1938}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1920, file: !1921, line: 15, baseType: !1403, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1920, file: !1921, line: 17, baseType: !1925, size: 320, offset: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1926, line: 22, size: 320, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1925, file: !1926, line: 23, baseType: !580, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1925, file: !1926, line: 24, baseType: !632, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1925, file: !1926, line: 26, baseType: !169, size: 128, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1925, file: !1926, line: 28, baseType: !1932, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1920, file: !1921, line: 19, baseType: !162, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1920, file: !1921, line: 20, baseType: !626, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1920, file: !1921, line: 23, baseType: !868, size: 128, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1920, file: !1921, line: 24, baseType: !370, size: 32, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1920, file: !1921, line: 29, baseType: !626, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1920, file: !1921, line: 36, baseType: !1939, size: 320, offset: 768)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1940, line: 15, size: 320, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1939, file: !1940, line: 16, baseType: !580, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1939, file: !1940, line: 18, baseType: !109, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1939, file: !1940, line: 19, baseType: !109, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1939, file: !1940, line: 20, baseType: !109, size: 32, offset: 96)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1939, file: !1940, line: 21, baseType: !109, size: 32, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1939, file: !1940, line: 22, baseType: !162, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1939, file: !1940, line: 23, baseType: !162, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1782, file: !1783, line: 138, baseType: !1950, size: 64, offset: 1152)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !371, line: 18, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1782, file: !1783, line: 139, baseType: !1953, size: 64, offset: 1216)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1955, line: 16, flags: DIFlagFwdDecl)
!1955 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1782, file: !1783, line: 140, baseType: !1957, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1783, line: 25, size: 64, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1958, file: !1783, line: 26, baseType: !211, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1958, file: !1783, line: 27, baseType: !109, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1958, file: !1783, line: 28, baseType: !1963, offset: 64)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !1773)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1783, line: 142, baseType: !1965, size: 128, offset: 1344)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1783, line: 142, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1965, file: !1783, line: 143, baseType: !109, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1965, file: !1783, line: 144, baseType: !842, size: 128, align: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1714, file: !14, line: 1013, baseType: !1970, size: 256, offset: 960)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1970, file: !14, line: 971, baseType: !162, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1970, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1970, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1970, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1970, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1970, file: !14, line: 976, baseType: !522, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1714, file: !14, line: 1014, baseType: !1195, size: 128, offset: 1216)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1714, file: !14, line: 1015, baseType: !364, size: 64, offset: 1344)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1714, file: !14, line: 1016, baseType: !1981, size: 64, offset: 1408)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1984)
!1984 = !{!1985, !1986, !1990, !1995, !1999, !2027, !2028, !2034, !2047, !2055, !2059, !2060, !2351, !2352, !2356, !2361, !2362, !2366, !2370, !2376, !2377, !2381, !2382, !2388, !2392, !2396, !2402, !2406, !2410, !2414, !2418, !2419, !2425}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1983, file: !14, line: 1915, baseType: !551, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1983, file: !14, line: 1916, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!522, !1713, !522, !109}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1983, file: !14, line: 1917, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!321, !1713, !289, !157, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1983, file: !14, line: 1918, baseType: !1996, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!321, !1713, !249, !157, !1994}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1983, file: !14, line: 1919, baseType: !2000, size: 64, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!321, !2003, !2025}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2012, !2013, !2014, !2015}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2004, file: !14, line: 374, baseType: !1713, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2004, file: !14, line: 375, baseType: !522, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2004, file: !14, line: 376, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !2003, !324}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2004, file: !14, line: 377, baseType: !164, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2004, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2004, file: !14, line: 379, baseType: !227, size: 16, offset: 288)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !14, line: 380, baseType: !2016, size: 64, offset: 320)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !14, line: 380, size: 64, elements: !2017)
!2017 = !{!2018, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2016, file: !14, line: 386, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2016, file: !14, line: 395, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!321, !164}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1983, file: !14, line: 1920, baseType: !2000, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1983, file: !14, line: 1921, baseType: !2029, size: 64, offset: 384)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!109, !2003, !2032, !7}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1983, file: !14, line: 1923, baseType: !2035, size: 64, offset: 448)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!109, !1713, !2038}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2040)
!2040 = !{!2041, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2039, file: !14, line: 1859, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2043)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!702, !2038, !249, !109, !522, !177, !7}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2039, file: !14, line: 1860, baseType: !522, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1983, file: !14, line: 1924, baseType: !2048, size: 64, offset: 512)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2051, !1713, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2052, line: 59, baseType: !7)
!2052 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !537, line: 31, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1983, file: !14, line: 1925, baseType: !2056, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!324, !1713, !7, !162}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1983, file: !14, line: 1926, baseType: !2056, size: 64, offset: 640)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1983, file: !14, line: 1927, baseType: !2061, size: 64, offset: 704)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!109, !1713, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2066)
!2066 = !{!2067, !2076, !2077, !2085, !2092, !2093, !2098, !2099, !2104, !2105, !2108, !2344, !2345, !2346, !2347, !2348, !2349}
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !38, line: 628, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !38, line: 628, size: 128, elements: !2069)
!2069 = !{!2070, !2075}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !38, line: 629, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !38, line: 629, size: 128, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2071, file: !38, line: 631, baseType: !162, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2071, file: !38, line: 632, baseType: !162, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2068, file: !38, line: 635, baseType: !842, size: 128, align: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2065, file: !38, line: 639, baseType: !1686, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2065, file: !38, line: 640, baseType: !2078, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2079, line: 297, baseType: !2080)
!2079 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2079, line: 297, size: 64, elements: !2081)
!2081 = !{!2082}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2080, file: !2079, line: 297, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2084, line: 19, baseType: !162)
!2084 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !38, line: 646, baseType: !2086, size: 64, offset: 256)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !38, line: 646, size: 64, elements: !2087)
!2087 = !{!2088, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2086, file: !38, line: 647, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !162)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2086, file: !38, line: 648, baseType: !2090, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2065, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2065, file: !38, line: 667, baseType: !2094, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2096)
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !38, line: 580, baseType: !1283, size: 320)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2065, file: !38, line: 670, baseType: !702, size: 8, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2065, file: !38, line: 681, baseType: !2100, size: 256, offset: 512)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !38, line: 678, size: 256, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2100, file: !38, line: 679, baseType: !734, size: 192, align: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2100, file: !38, line: 680, baseType: !162, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2065, file: !38, line: 689, baseType: !169, size: 128, offset: 768)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2065, file: !38, line: 691, baseType: !2106, size: 64, offset: 896)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2065, file: !38, line: 694, baseType: !2109, size: 64, offset: 960)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2112, line: 563, size: 1024, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2113 = !{!2114, !2118, !2119, !2123, !2127, !2131, !2308, !2312, !2316, !2320, !2321, !2322, !2326, !2330, !2336, !2340}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2111, file: !2112, line: 564, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !2064}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2111, file: !2112, line: 569, baseType: !2115, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2111, file: !2112, line: 571, baseType: !2120, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!109, !2064, !162}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2111, file: !2112, line: 572, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!109, !2064}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2111, file: !2112, line: 578, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!109, !2064, !162, !162, !162}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2111, file: !2112, line: 580, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2112, line: 512, size: 896, elements: !2138)
!2138 = !{!2139, !2147, !2148, !2155, !2162, !2172, !2301, !2302, !2304, !2306}
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2112, line: 513, baseType: !2140, size: 320)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2112, line: 513, size: 320, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2140, file: !2112, line: 514, baseType: !2064, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2140, file: !2112, line: 515, baseType: !163, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2140, file: !2112, line: 516, baseType: !162, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2140, file: !2112, line: 517, baseType: !162, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2140, file: !2112, line: 518, baseType: !162, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2137, file: !2112, line: 520, baseType: !37, size: 32, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2137, file: !2112, line: 522, baseType: !2149, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2084, line: 22, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2084, line: 22, size: 64, elements: !2152)
!2152 = !{!2153}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2151, file: !2084, line: 22, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2084, line: 15, baseType: !162)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2137, file: !2112, line: 524, baseType: !2156, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2079, line: 372, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2079, line: 372, size: 64, elements: !2159)
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2158, file: !2079, line: 372, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2084, line: 16, baseType: !162)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2112, line: 527, baseType: !2163, size: 64, offset: 512)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2137, file: !2112, line: 527, size: 64, elements: !2164)
!2164 = !{!2165, !2171}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2163, file: !2112, line: 528, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2084, line: 21, baseType: !2167)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2084, line: 21, size: 64, elements: !2168)
!2168 = !{!2169}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2167, file: !2084, line: 21, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2084, line: 14, baseType: !162)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2163, file: !2112, line: 529, baseType: !2150, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2137, file: !2112, line: 534, baseType: !2173, size: 64, offset: 576)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2175)
!2175 = !{!2176, !2177, !2295, !2300}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2174, file: !38, line: 75, baseType: !162, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !38, line: 83, baseType: !2178, size: 320, offset: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !38, line: 83, size: 320, elements: !2179)
!2179 = !{!2180, !2201, !2215, !2219, !2294}
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !38, line: 84, baseType: !2181, size: 320)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !38, line: 84, size: 320, elements: !2182)
!2182 = !{!2183, !2194, !2195, !2200}
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !38, line: 90, baseType: !2184, size: 128)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2181, file: !38, line: 90, size: 128, elements: !2185)
!2185 = !{!2186, !2187, !2192, !2193}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2184, file: !38, line: 91, baseType: !169, size: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !38, line: 94, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !38, line: 94, size: 128, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2188, file: !38, line: 96, baseType: !164, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2188, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2184, file: !38, line: 102, baseType: !169, size: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2184, file: !38, line: 103, baseType: !169, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2181, file: !38, line: 106, baseType: !360, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !38, line: 107, baseType: !2196, size: 64, offset: 192)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2181, file: !38, line: 107, size: 64, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2196, file: !38, line: 108, baseType: !162, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2196, file: !38, line: 109, baseType: !162, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2181, file: !38, line: 117, baseType: !162, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !38, line: 119, baseType: !2202, size: 320)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !38, line: 119, size: 320, elements: !2203)
!2203 = !{!2204, !2205, !2208, !2209, !2210}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2202, file: !38, line: 124, baseType: !162, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2202, file: !38, line: 125, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2202, file: !38, line: 126, baseType: !162, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2202, file: !38, line: 127, baseType: !162, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !38, line: 128, baseType: !2211, size: 64, offset: 256)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !38, line: 128, size: 64, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2211, file: !38, line: 133, baseType: !162, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2211, file: !38, line: 138, baseType: !626, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !38, line: 141, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !38, line: 141, size: 64, elements: !2217)
!2217 = !{!2218}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2216, file: !38, line: 142, baseType: !162, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !38, line: 144, baseType: !2220, size: 128)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !38, line: 144, size: 128, elements: !2221)
!2221 = !{!2222, !2293}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2220, file: !38, line: 146, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2225)
!2225 = !{!2226, !2236, !2257, !2258, !2259, !2260, !2261, !2275, !2276, !2277}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2224, file: !54, line: 127, baseType: !2227, size: 384)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2228)
!2228 = !{!2229, !2230, !2232, !2233, !2234, !2235}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2227, file: !54, line: 22, baseType: !162, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2227, file: !54, line: 23, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2227, file: !54, line: 24, baseType: !2231, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2227, file: !54, line: 25, baseType: !162, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2227, file: !54, line: 26, baseType: !162, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2227, file: !54, line: 27, baseType: !162, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2224, file: !54, line: 128, baseType: !2237, size: 128, offset: 384)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2238, line: 105, size: 128, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2237, file: !2238, line: 110, baseType: !162, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2237, file: !2238, line: 118, baseType: !2242, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2238, line: 95, size: 448, elements: !2244)
!2244 = !{!2245, !2246, !2252, !2253, !2254, !2255, !2256}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2243, file: !2238, line: 96, baseType: !626, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2243, file: !2238, line: 97, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2238, line: 60, baseType: !2249)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2243, file: !2238, line: 98, baseType: !2247, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2243, file: !2238, line: 99, baseType: !702, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2243, file: !2238, line: 100, baseType: !702, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2243, file: !2238, line: 101, baseType: !842, size: 128, align: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2243, file: !2238, line: 102, baseType: !2251, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2224, file: !54, line: 129, baseType: !571, size: 256, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2224, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2224, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2224, file: !54, line: 132, baseType: !162, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2224, file: !54, line: 133, baseType: !2262, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2265)
!2265 = !{!2266, !2270, !2271}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2264, file: !54, line: 83, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !2173}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2264, file: !54, line: 89, baseType: !2132, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2264, file: !54, line: 100, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!109, !2223, !162, !162, !109}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2224, file: !54, line: 134, baseType: !164, size: 64, offset: 960)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2224, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !54, line: 136, baseType: !2278, size: 128, offset: 1088)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !54, line: 136, size: 128, elements: !2279)
!2279 = !{!2280, !2286}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2278, file: !54, line: 137, baseType: !2281, size: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2282, line: 6, size: 128, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2281, file: !2282, line: 7, baseType: !177, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2281, file: !2282, line: 8, baseType: !177, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !54, line: 138, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !54, line: 138, elements: !2288)
!2288 = !{!2289, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2287, file: !54, line: 138, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !54, line: 138, elements: !911)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2287, file: !54, line: 138, baseType: !2292)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2281, elements: !1773)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2220, file: !38, line: 147, baseType: !164, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2178, file: !38, line: 161, baseType: !842, size: 128, align: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !38, line: 164, baseType: !2296, size: 32, offset: 384)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !38, line: 164, size: 32, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2296, file: !38, line: 169, baseType: !211, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2296, file: !38, line: 177, baseType: !7, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2174, file: !38, line: 181, baseType: !211, size: 32, offset: 416)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2137, file: !2112, line: 535, baseType: !2173, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2137, file: !2112, line: 541, baseType: !2303, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2137, file: !2112, line: 545, baseType: !2305, size: 64, offset: 768)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2137, file: !2112, line: 549, baseType: !2307, size: 64, offset: 832)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2079, line: 520, baseType: !2173)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2111, file: !2112, line: 581, baseType: !2309, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!2135, !2136, !7}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2111, file: !2112, line: 582, baseType: !2313, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2135, !2136, !162, !162}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2111, file: !2112, line: 584, baseType: !2317, size: 64, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!162, !2064}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2111, file: !2112, line: 588, baseType: !2132, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2111, file: !2112, line: 591, baseType: !2132, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2111, file: !2112, line: 597, baseType: !2323, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!109, !2064, !162, !164, !109, !109}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2111, file: !2112, line: 603, baseType: !2327, size: 64, offset: 768)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!249, !2064}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2111, file: !2112, line: 613, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!109, !2064, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1066, line: 54, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2111, file: !2112, line: 625, baseType: !2337, size: 64, offset: 896)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!2334, !2064, !162}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2111, file: !2112, line: 633, baseType: !2341, size: 64, offset: 960)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2173, !2064, !162}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2065, file: !38, line: 697, baseType: !162, size: 64, offset: 1024)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2065, file: !38, line: 699, baseType: !1713, size: 64, offset: 1088)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2065, file: !38, line: 700, baseType: !164, size: 64, offset: 1152)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2065, file: !38, line: 711, baseType: !626, size: 64, offset: 1216)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2065, file: !38, line: 717, baseType: !2334, size: 64, offset: 1280)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2065, file: !38, line: 722, baseType: !2350, offset: 1344)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !911)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1983, file: !14, line: 1928, baseType: !162, size: 64, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1983, file: !14, line: 1929, baseType: !2353, size: 64, offset: 832)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!109, !364, !1713}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1983, file: !14, line: 1930, baseType: !2357, size: 64, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!109, !1713, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !164)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1983, file: !14, line: 1931, baseType: !2353, size: 64, offset: 960)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1983, file: !14, line: 1932, baseType: !2363, size: 64, offset: 1024)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!109, !1713, !522, !522, !109}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1983, file: !14, line: 1933, baseType: !2367, size: 64, offset: 1088)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!109, !109, !1713, !109}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1983, file: !14, line: 1934, baseType: !2371, size: 64, offset: 1152)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!109, !1713, !109, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1983, file: !14, line: 1935, baseType: !1710, size: 64, offset: 1216)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1983, file: !14, line: 1936, baseType: !2378, size: 64, offset: 1280)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!109, !109}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1983, file: !14, line: 1937, baseType: !2371, size: 64, offset: 1344)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1983, file: !14, line: 1938, baseType: !2383, size: 64, offset: 1408)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!321, !2386, !1713, !1994, !157, !7}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1066, line: 59, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1983, file: !14, line: 1939, baseType: !2389, size: 64, offset: 1472)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!321, !1713, !1994, !2386, !157, !7}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1983, file: !14, line: 1940, baseType: !2393, size: 64, offset: 1536)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !1713}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1983, file: !14, line: 1941, baseType: !2397, size: 64, offset: 1600)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!109, !1713, !109, !2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1983, file: !14, line: 1942, baseType: !2403, size: 64, offset: 1664)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!324, !1713, !109, !522, !522}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1983, file: !14, line: 1944, baseType: !2407, size: 64, offset: 1728)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !1064, !1713}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1983, file: !14, line: 1948, baseType: !2411, size: 64, offset: 1792)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!321, !1713, !522, !1713, !522, !157, !7}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1983, file: !14, line: 1950, baseType: !2415, size: 64, offset: 1856)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!522, !1713, !522, !1713, !522, !522, !7}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1983, file: !14, line: 1953, baseType: !2363, size: 64, offset: 1920)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1983, file: !14, line: 1954, baseType: !2420, size: 64, offset: 1984)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !2423, !7}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1983, file: !14, line: 1955, baseType: !2426, size: 64, offset: 2048)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!109, !2423, !2032, !7}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1714, file: !14, line: 1018, baseType: !177, size: 64, offset: 1472)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1714, file: !14, line: 1020, baseType: !164, size: 64, offset: 1536)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1714, file: !14, line: 1023, baseType: !164, size: 64, offset: 1600)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1714, file: !14, line: 1027, baseType: !2433, size: 64, offset: 1664)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1714, file: !14, line: 1029, baseType: !360, size: 64, offset: 1728)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1714, file: !14, line: 1030, baseType: !2436, size: 32, offset: 1792)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2437, line: 8, baseType: !433)
!2437 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1714, file: !14, line: 1031, baseType: !2436, size: 32, offset: 1824)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1690, file: !38, line: 756, baseType: !162, size: 64, offset: 704)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1690, file: !38, line: 757, baseType: !162, size: 64, offset: 768)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1690, file: !38, line: 760, baseType: !162, size: 64, offset: 832)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1690, file: !38, line: 761, baseType: !162, size: 64, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1690, file: !38, line: 763, baseType: !162, size: 64, offset: 960)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1690, file: !38, line: 764, baseType: !2445, size: 64, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2079, line: 299, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2079, line: 299, size: 64, elements: !2448)
!2448 = !{!2449}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2447, file: !2079, line: 299, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2084, line: 18, baseType: !162)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1690, file: !38, line: 773, baseType: !211, size: 32, offset: 1088)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1690, file: !38, line: 785, baseType: !211, size: 32, offset: 1120)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1690, file: !38, line: 795, baseType: !2454, size: 64, offset: 1152)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2455, file: !38, line: 727, baseType: !177, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2455, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1690, file: !38, line: 801, baseType: !162, size: 64, offset: 1216)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1690, file: !38, line: 804, baseType: !626, size: 64, offset: 1280)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1690, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1690, file: !38, line: 808, baseType: !191, size: 32, offset: 1376)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1690, file: !38, line: 823, baseType: !1283, size: 320, offset: 1408)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1690, file: !38, line: 825, baseType: !169, size: 128, offset: 1728)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1690, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1690, file: !38, line: 849, baseType: !162, size: 64, offset: 1920)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1690, file: !38, line: 850, baseType: !162, size: 64, offset: 1984)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1690, file: !38, line: 852, baseType: !162, size: 64, offset: 2048)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1690, file: !38, line: 853, baseType: !162, size: 64, offset: 2112)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1690, file: !38, line: 854, baseType: !628, size: 64, offset: 2176)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1690, file: !38, line: 855, baseType: !162, size: 64, offset: 2240)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1690, file: !38, line: 856, baseType: !162, size: 64, offset: 2304)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1690, file: !38, line: 857, baseType: !162, size: 64, offset: 2368)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1690, file: !38, line: 858, baseType: !162, size: 64, offset: 2432)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1690, file: !38, line: 865, baseType: !410, size: 32, offset: 2496)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1690, file: !38, line: 867, baseType: !191, size: 32, offset: 2528)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1690, file: !38, line: 869, baseType: !162, size: 64, offset: 2560)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1690, file: !38, line: 869, baseType: !162, size: 64, offset: 2624)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1690, file: !38, line: 869, baseType: !162, size: 64, offset: 2688)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1690, file: !38, line: 869, baseType: !162, size: 64, offset: 2752)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1690, file: !38, line: 870, baseType: !162, size: 64, offset: 2816)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1690, file: !38, line: 870, baseType: !162, size: 64, offset: 2880)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1690, file: !38, line: 870, baseType: !162, size: 64, offset: 2944)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1690, file: !38, line: 871, baseType: !162, size: 64, offset: 3008)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1690, file: !38, line: 871, baseType: !162, size: 64, offset: 3072)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1690, file: !38, line: 871, baseType: !162, size: 64, offset: 3136)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1690, file: !38, line: 871, baseType: !162, size: 64, offset: 3200)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1690, file: !38, line: 873, baseType: !2489, size: 3328, offset: 3264)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 3328, elements: !2490)
!2490 = !{!2491}
!2491 = !DISubrange(count: 52)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1690, file: !38, line: 875, baseType: !2493, size: 1280, offset: 6592)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 1280, elements: !852)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1690, file: !38, line: 877, baseType: !2495, size: 64, offset: 7872)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1690, file: !38, line: 880, baseType: !2498, size: 1088, offset: 7936)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2499, line: 72, baseType: !2500)
!2499 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2499, line: 23, size: 1088, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2509, !2510, !2511, !2512, !2539, !2540, !2541}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2500, file: !2499, line: 28, baseType: !177, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2500, file: !2499, line: 38, baseType: !628, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2500, file: !2499, line: 40, baseType: !162, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2500, file: !2499, line: 43, baseType: !1283, size: 320, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2500, file: !2499, line: 44, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2499, line: 44, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2500, file: !2499, line: 48, baseType: !162, size: 64, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2500, file: !2499, line: 59, baseType: !622, size: 256, offset: 640)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2500, file: !2499, line: 60, baseType: !164, size: 64, offset: 896)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2500, file: !2499, line: 61, baseType: !2513, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2516, line: 13, size: 1216, elements: !2517)
!2516 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2515, file: !2516, line: 14, baseType: !164, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2515, file: !2516, line: 15, baseType: !162, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2515, file: !2516, line: 17, baseType: !162, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2515, file: !2516, line: 17, baseType: !162, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2515, file: !2516, line: 18, baseType: !162, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2515, file: !2516, line: 18, baseType: !162, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2515, file: !2516, line: 19, baseType: !2525, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2515, file: !2516, line: 21, baseType: !324, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2515, file: !2516, line: 23, baseType: !324, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2515, file: !2516, line: 24, baseType: !324, size: 64, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2515, file: !2516, line: 25, baseType: !324, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2515, file: !2516, line: 26, baseType: !324, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2515, file: !2516, line: 27, baseType: !324, size: 64, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2515, file: !2516, line: 28, baseType: !324, size: 64, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2515, file: !2516, line: 29, baseType: !324, size: 64, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2515, file: !2516, line: 30, baseType: !324, size: 64, offset: 960)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2515, file: !2516, line: 31, baseType: !324, size: 64, offset: 1024)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2515, file: !2516, line: 32, baseType: !324, size: 64, offset: 1088)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2515, file: !2516, line: 33, baseType: !324, size: 64, offset: 1152)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2500, file: !2499, line: 63, baseType: !211, size: 32, offset: 1024)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2500, file: !2499, line: 69, baseType: !227, size: 16, offset: 1056)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2500, file: !2499, line: 70, baseType: !758, size: 16, offset: 1072)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !38, line: 882, baseType: !162, size: 64, offset: 9024)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1690, file: !38, line: 885, baseType: !191, size: 32, offset: 9088)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1690, file: !38, line: 886, baseType: !2545, size: 64, offset: 9152)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1690, file: !38, line: 901, baseType: !1950, size: 64, offset: 9216)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1690, file: !38, line: 904, baseType: !1713, size: 64, offset: 9280)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1690, file: !38, line: 906, baseType: !2550, size: 64, offset: 9344)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1690, file: !38, line: 930, baseType: !211, size: 32, offset: 9408)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1690, file: !38, line: 933, baseType: !211, size: 32, offset: 9440)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1690, file: !38, line: 935, baseType: !2555, size: 64, offset: 9472)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2556)
!2556 = !{!2557}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2555, file: !68, line: 104, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1690, file: !38, line: 940, baseType: !626, size: 64, offset: 9536)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1690, file: !38, line: 942, baseType: !882, size: 256, offset: 9600)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1687, file: !38, line: 986, baseType: !2563, offset: 10240)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, elements: !1773)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1390, file: !1066, line: 882, baseType: !1686, size: 64, offset: 9792)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1390, file: !1066, line: 884, baseType: !109, size: 32, offset: 9856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1390, file: !1066, line: 885, baseType: !109, size: 32, offset: 9888)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1390, file: !1066, line: 886, baseType: !109, size: 32, offset: 9920)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1390, file: !1066, line: 888, baseType: !109, size: 32, offset: 9952)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1390, file: !1066, line: 890, baseType: !162, size: 64, offset: 9984)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1390, file: !1066, line: 893, baseType: !7, size: 32, offset: 10048)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1390, file: !1066, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1390, file: !1066, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1390, file: !1066, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1390, file: !1066, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1390, file: !1066, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1390, file: !1066, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1390, file: !1066, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1390, file: !1066, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1390, file: !1066, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1390, file: !1066, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1390, file: !1066, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1390, file: !1066, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1390, file: !1066, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1390, file: !1066, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1390, file: !1066, line: 969, baseType: !162, size: 64, offset: 10176)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1390, file: !1066, line: 971, baseType: !2587, size: 448, offset: 10240)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2588)
!2588 = !{!2589, !2590, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2587, file: !62, line: 26, baseType: !162, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2587, file: !62, line: 27, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!324, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !62, line: 28, baseType: !2596, size: 320, offset: 128)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2587, file: !62, line: 28, size: 320, elements: !2597)
!2597 = !{!2598, !2608, !2633}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2596, file: !62, line: 37, baseType: !2599, size: 320)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !62, line: 30, size: 320, elements: !2600)
!2600 = !{!2601, !2603, !2604, !2605, !2606, !2607}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2599, file: !62, line: 31, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2599, file: !62, line: 32, baseType: !433, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !62, line: 33, baseType: !433, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2599, file: !62, line: 34, baseType: !433, size: 32, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2599, file: !62, line: 35, baseType: !177, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2599, file: !62, line: 36, baseType: !2602, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2596, file: !62, line: 47, baseType: !2609, size: 192)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !62, line: 39, size: 192, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2632}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2609, file: !62, line: 40, baseType: !1557, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2609, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !62, line: 42, baseType: !2614, size: 64, offset: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2609, file: !62, line: 42, size: 64, elements: !2615)
!2615 = !{!2616, !2624}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2614, file: !62, line: 43, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2619, line: 7, size: 128, elements: !2620)
!2619 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2620 = !{!2621, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2618, file: !2619, line: 8, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !160, line: 93, baseType: !524)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2618, file: !2619, line: 9, baseType: !524, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2614, file: !62, line: 44, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2627, line: 7, size: 64, elements: !2628)
!2627 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2628 = !{!2629, !2631}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2626, file: !2627, line: 8, baseType: !2630, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2627, line: 5, baseType: !618)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2626, file: !2627, line: 9, baseType: !618, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2609, file: !62, line: 46, baseType: !177, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2596, file: !62, line: 55, baseType: !2634, size: 256)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !62, line: 49, size: 256, elements: !2635)
!2635 = !{!2636, !2639, !2640, !2641, !2642}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2634, file: !62, line: 50, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2634, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2634, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2634, file: !62, line: 53, baseType: !162, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2634, file: !62, line: 54, baseType: !162, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1390, file: !1066, line: 973, baseType: !2644, size: 32, offset: 10688)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2645)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !160, line: 28, baseType: !109)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1390, file: !1066, line: 974, baseType: !2644, size: 32, offset: 10720)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1390, file: !1066, line: 978, baseType: !162, size: 64, offset: 10752)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1390, file: !1066, line: 987, baseType: !1389, size: 64, offset: 10816)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1390, file: !1066, line: 990, baseType: !1389, size: 64, offset: 10880)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1390, file: !1066, line: 995, baseType: !169, size: 128, offset: 10944)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1390, file: !1066, line: 996, baseType: !169, size: 128, offset: 11072)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1390, file: !1066, line: 997, baseType: !1389, size: 64, offset: 11200)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1390, file: !1066, line: 1005, baseType: !169, size: 128, offset: 11264)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1390, file: !1066, line: 1006, baseType: !169, size: 128, offset: 11392)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1390, file: !1066, line: 1009, baseType: !1754, size: 64, offset: 11520)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1390, file: !1066, line: 1010, baseType: !2657, size: 512, offset: 11584)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 512, elements: !852)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1390, file: !1066, line: 1011, baseType: !169, size: 128, offset: 12096)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1390, file: !1066, line: 1012, baseType: !169, size: 128, offset: 12224)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1390, file: !1066, line: 1014, baseType: !570, size: 64, offset: 12352)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1390, file: !1066, line: 1017, baseType: !751, size: 64, offset: 12416)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1390, file: !1066, line: 1020, baseType: !751, size: 64, offset: 12480)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1390, file: !1066, line: 1023, baseType: !164, size: 64, offset: 12544)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1390, file: !1066, line: 1025, baseType: !177, size: 64, offset: 12608)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1390, file: !1066, line: 1026, baseType: !177, size: 64, offset: 12672)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1390, file: !1066, line: 1031, baseType: !177, size: 64, offset: 12736)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1390, file: !1066, line: 1032, baseType: !2668, size: 192, offset: 12800)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1066, line: 324, size: 192, elements: !2669)
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2668, file: !1066, line: 326, baseType: !177, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2668, file: !1066, line: 327, baseType: !177, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2668, file: !1066, line: 328, baseType: !580, size: 32, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1390, file: !1066, line: 1041, baseType: !162, size: 64, offset: 12992)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1390, file: !1066, line: 1042, baseType: !162, size: 64, offset: 13056)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1390, file: !1066, line: 1045, baseType: !177, size: 64, offset: 13120)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1390, file: !1066, line: 1048, baseType: !177, size: 64, offset: 13184)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1390, file: !1066, line: 1051, baseType: !162, size: 64, offset: 13248)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1390, file: !1066, line: 1052, baseType: !162, size: 64, offset: 13312)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1390, file: !1066, line: 1055, baseType: !2680, size: 640, offset: 13376)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2681, line: 132, size: 640, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2682 = !{!2683, !2689, !2690}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2680, file: !2681, line: 133, baseType: !2684, size: 576)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2685, size: 576, elements: !290)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2681, line: 117, size: 192, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2685, file: !2681, line: 118, baseType: !177, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2685, file: !2681, line: 119, baseType: !1566, size: 128, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2680, file: !2681, line: 134, baseType: !7, size: 32, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2680, file: !2681, line: 135, baseType: !7, size: 32, offset: 608)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1390, file: !1066, line: 1058, baseType: !2692, size: 448, offset: 14016)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2681, line: 144, size: 448, elements: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2692, file: !2681, line: 145, baseType: !842, size: 128, align: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2692, file: !2681, line: 146, baseType: !622, size: 256, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2692, file: !2681, line: 147, baseType: !7, size: 32, offset: 384)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1390, file: !1066, line: 1064, baseType: !1780, size: 64, offset: 14464)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1390, file: !1066, line: 1067, baseType: !1780, size: 64, offset: 14528)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1390, file: !1066, line: 1070, baseType: !1780, size: 64, offset: 14592)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1390, file: !1066, line: 1074, baseType: !1807, size: 64, offset: 14656)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1390, file: !1066, line: 1084, baseType: !2702, size: 128, offset: 14720)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !2703)
!2703 = !{!2704}
!2704 = !DISubrange(count: 16)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1390, file: !1066, line: 1086, baseType: !2706, size: 64, offset: 14848)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1066, line: 55, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1390, file: !1066, line: 1089, baseType: !2709, size: 64, offset: 14912)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2710, line: 12, size: 64, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2711 = !{!2712}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2710, line: 8, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1390, file: !1066, line: 1090, baseType: !2716, size: 128, offset: 14976)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2717, line: 13, size: 128, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2716, file: !2717, line: 14, baseType: !169, size: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1390, file: !1066, line: 1097, baseType: !2721, size: 64, offset: 15104)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1066, line: 50, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1390, file: !1066, line: 1100, baseType: !2724, size: 64, offset: 15168)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1066, line: 1100, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1390, file: !1066, line: 1103, baseType: !2727, size: 64, offset: 15232)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1066, line: 53, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1390, file: !1066, line: 1107, baseType: !2730, size: 64, offset: 15296)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1066, line: 56, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1390, file: !1066, line: 1110, baseType: !2733, size: 64, offset: 15360)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2735, line: 93, size: 8768, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2784, !2793, !2794, !2796, !2797, !2798, !2801, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2839, !2840, !2847, !2857, !2860, !2861, !2864, !2865, !2866, !2867, !2868, !2869}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2734, file: !2735, line: 94, baseType: !1403, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2734, file: !2735, line: 95, baseType: !211, size: 32, offset: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2734, file: !2735, line: 96, baseType: !109, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2734, file: !2735, line: 97, baseType: !109, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2734, file: !2735, line: 98, baseType: !169, size: 128, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2734, file: !2735, line: 100, baseType: !1376, size: 192, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2734, file: !2735, line: 103, baseType: !1389, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2734, file: !2735, line: 106, baseType: !2745, size: 192, offset: 512)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1955, line: 32, size: 192, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2745, file: !1955, line: 33, baseType: !169, size: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2745, file: !1955, line: 34, baseType: !2749, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2750, line: 25, baseType: !2751)
!2750 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2750, line: 23, size: 64, elements: !2752)
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2751, file: !2750, line: 24, baseType: !1637, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2734, file: !2735, line: 109, baseType: !992, size: 64, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2734, file: !2735, line: 112, baseType: !109, size: 32, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2734, file: !2735, line: 114, baseType: !109, size: 32, offset: 800)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2734, file: !2735, line: 115, baseType: !1389, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2734, file: !2735, line: 118, baseType: !109, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2734, file: !2735, line: 119, baseType: !7, size: 32, offset: 928)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2734, file: !2735, line: 121, baseType: !2761, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2735, line: 80, size: 448, elements: !2763)
!2763 = !{!2764, !2765, !2771}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2762, file: !2735, line: 81, baseType: !211, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2762, file: !2735, line: 82, baseType: !2766, size: 128, offset: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2735, line: 75, size: 128, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2766, file: !2735, line: 76, baseType: !1389, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2766, file: !2735, line: 77, baseType: !2770, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2762, file: !2735, line: 83, baseType: !571, size: 256, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2734, file: !2735, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2734, file: !2735, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2734, file: !2735, line: 138, baseType: !7, size: 32, offset: 1056)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2734, file: !2735, line: 139, baseType: !169, size: 128, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2734, file: !2735, line: 142, baseType: !1510, size: 512, offset: 1216)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2734, file: !2735, line: 143, baseType: !1518, size: 64, offset: 1728)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2734, file: !2735, line: 150, baseType: !2779, size: 256, offset: 1792)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 256, elements: !741)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2735, line: 38, size: 128, elements: !2781)
!2781 = !{!2782, !2783}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2780, file: !2735, line: 39, baseType: !177, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2780, file: !2735, line: 40, baseType: !177, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2734, file: !2735, line: 156, baseType: !2785, size: 192, offset: 2048)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2735, line: 66, size: 192, elements: !2786)
!2786 = !{!2787}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2785, file: !2735, line: 67, baseType: !2788, size: 192)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2735, line: 47, size: 192, elements: !2789)
!2789 = !{!2790, !2791, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2788, file: !2735, line: 48, baseType: !628, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2788, file: !2735, line: 49, baseType: !628, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2788, file: !2735, line: 50, baseType: !628, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2734, file: !2735, line: 160, baseType: !2680, size: 640, offset: 2240)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2734, file: !2735, line: 163, baseType: !2795, size: 256, offset: 2880)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 256, elements: !852)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2734, file: !2735, line: 169, baseType: !1754, size: 64, offset: 3136)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2734, file: !2735, line: 172, baseType: !109, size: 32, offset: 3200)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2734, file: !2735, line: 174, baseType: !2799, size: 64, offset: 3264)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2735, line: 174, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2734, file: !2735, line: 185, baseType: !2802, size: 64, offset: 3328)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 860, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 853, size: 64, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2803, file: !406, line: 858, baseType: !405, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2803, file: !406, line: 859, baseType: !191, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2734, file: !2735, line: 186, baseType: !177, size: 64, offset: 3392)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2734, file: !2735, line: 186, baseType: !177, size: 64, offset: 3456)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2734, file: !2735, line: 186, baseType: !177, size: 64, offset: 3520)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2734, file: !2735, line: 186, baseType: !177, size: 64, offset: 3584)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2734, file: !2735, line: 187, baseType: !177, size: 64, offset: 3648)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2734, file: !2735, line: 188, baseType: !177, size: 64, offset: 3712)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2734, file: !2735, line: 189, baseType: !2668, size: 192, offset: 3776)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2734, file: !2735, line: 190, baseType: !162, size: 64, offset: 3968)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2734, file: !2735, line: 190, baseType: !162, size: 64, offset: 4032)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2734, file: !2735, line: 190, baseType: !162, size: 64, offset: 4096)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2734, file: !2735, line: 190, baseType: !162, size: 64, offset: 4160)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2734, file: !2735, line: 191, baseType: !162, size: 64, offset: 4224)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2734, file: !2735, line: 191, baseType: !162, size: 64, offset: 4288)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2734, file: !2735, line: 191, baseType: !162, size: 64, offset: 4352)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2734, file: !2735, line: 191, baseType: !162, size: 64, offset: 4416)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2734, file: !2735, line: 192, baseType: !162, size: 64, offset: 4480)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2734, file: !2735, line: 192, baseType: !162, size: 64, offset: 4544)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2734, file: !2735, line: 192, baseType: !162, size: 64, offset: 4608)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2734, file: !2735, line: 192, baseType: !162, size: 64, offset: 4672)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2734, file: !2735, line: 193, baseType: !162, size: 64, offset: 4736)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2734, file: !2735, line: 193, baseType: !162, size: 64, offset: 4800)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2734, file: !2735, line: 194, baseType: !2829, size: 448, offset: 4864)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2830, line: 12, size: 448, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2829, file: !2830, line: 15, baseType: !177, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2829, file: !2830, line: 17, baseType: !177, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2829, file: !2830, line: 19, baseType: !177, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2829, file: !2830, line: 21, baseType: !177, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2829, file: !2830, line: 29, baseType: !177, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2829, file: !2830, line: 35, baseType: !177, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2829, file: !2830, line: 44, baseType: !177, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2734, file: !2735, line: 202, baseType: !181, size: 64, offset: 5312)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2734, file: !2735, line: 213, baseType: !2841, size: 2048, offset: 5376)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2842, size: 2048, elements: !2703)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2843, line: 43, size: 128, elements: !2844)
!2843 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2842, file: !2843, line: 44, baseType: !161, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2842, file: !2843, line: 45, baseType: !161, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2734, file: !2735, line: 216, baseType: !2848, size: 448, offset: 7424)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2735, line: 30, size: 448, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2848, file: !2735, line: 31, baseType: !109, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2848, file: !2735, line: 32, baseType: !324, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2848, file: !2735, line: 33, baseType: !162, size: 64, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2848, file: !2735, line: 34, baseType: !177, size: 64, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2848, file: !2735, line: 34, baseType: !177, size: 64, offset: 256)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2848, file: !2735, line: 35, baseType: !162, size: 64, offset: 320)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2848, file: !2735, line: 35, baseType: !162, size: 64, offset: 384)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2734, file: !2735, line: 219, baseType: !2858, size: 64, offset: 7872)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2735, line: 219, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2734, file: !2735, line: 222, baseType: !7, size: 32, offset: 7936)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2734, file: !2735, line: 223, baseType: !2862, size: 64, offset: 8000)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2735, line: 223, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2734, file: !2735, line: 230, baseType: !702, size: 8, offset: 8064)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2734, file: !2735, line: 231, baseType: !760, size: 16, offset: 8080)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2734, file: !2735, line: 232, baseType: !760, size: 16, offset: 8096)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2734, file: !2735, line: 234, baseType: !1686, size: 64, offset: 8128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2734, file: !2735, line: 237, baseType: !622, size: 256, offset: 8192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2734, file: !2735, line: 243, baseType: !1283, size: 320, offset: 8448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1390, file: !1066, line: 1111, baseType: !2871, size: 64, offset: 15424)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2735, line: 20, size: 16640, elements: !2873)
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2872, file: !2735, line: 21, baseType: !191, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2872, file: !2735, line: 22, baseType: !1403, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2872, file: !2735, line: 23, baseType: !1376, size: 192, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2872, file: !2735, line: 24, baseType: !2878, size: 16384, offset: 256)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2879, size: 16384, elements: !294)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1955, line: 51, size: 256, elements: !2880)
!2880 = !{!2881}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2879, file: !1955, line: 52, baseType: !2882, size: 256)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1955, line: 37, size: 256, elements: !2883)
!2883 = !{!2884, !2891, !2892, !2896}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2882, file: !1955, line: 39, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2886, line: 83, baseType: !2887)
!2886 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2886, line: 82, baseType: !2889)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !109}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2882, file: !1955, line: 40, baseType: !162, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2882, file: !1955, line: 46, baseType: !2893, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2886, line: 86, baseType: !2894)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2886, line: 85, baseType: !987)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2882, file: !1955, line: 48, baseType: !2749, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1390, file: !1066, line: 1112, baseType: !2749, size: 64, offset: 15488)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1390, file: !1066, line: 1113, baseType: !2749, size: 64, offset: 15552)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1390, file: !1066, line: 1115, baseType: !2749, size: 64, offset: 15616)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1390, file: !1066, line: 1116, baseType: !2745, size: 192, offset: 15680)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1390, file: !1066, line: 1117, baseType: !162, size: 64, offset: 15872)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1390, file: !1066, line: 1118, baseType: !157, size: 64, offset: 15936)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1390, file: !1066, line: 1119, baseType: !7, size: 32, offset: 16000)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1390, file: !1066, line: 1121, baseType: !841, size: 64, offset: 16064)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1390, file: !1066, line: 1125, baseType: !2906, size: 64, offset: 16128)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1066, line: 43, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1390, file: !1066, line: 1127, baseType: !370, size: 32, offset: 16192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1390, file: !1066, line: 1128, baseType: !7, size: 32, offset: 16224)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1390, file: !1066, line: 1130, baseType: !2911, size: 128, offset: 16256)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2912, line: 37, size: 128, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2913 = !{!2914, !2915, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2911, file: !2912, line: 38, baseType: !109, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2911, file: !2912, line: 39, baseType: !211, size: 32, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2911, file: !2912, line: 40, baseType: !2917, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2912, line: 24, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1390, file: !1066, line: 1131, baseType: !2920, size: 256, offset: 16384)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2921, line: 12, size: 256, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2920, file: !2921, line: 13, baseType: !289, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2920, file: !2921, line: 14, baseType: !162, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2920, file: !2921, line: 15, baseType: !162, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2920, file: !2921, line: 16, baseType: !702, size: 8, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1390, file: !1066, line: 1134, baseType: !177, size: 64, offset: 16640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1390, file: !1066, line: 1135, baseType: !177, size: 64, offset: 16704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1390, file: !1066, line: 1138, baseType: !191, size: 32, offset: 16768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1390, file: !1066, line: 1141, baseType: !580, size: 32, offset: 16800)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1390, file: !1066, line: 1143, baseType: !2932, size: 64, offset: 16832)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1066, line: 735, size: 64, elements: !2933)
!2933 = !{!2934}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2932, file: !1066, line: 736, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1390, file: !1066, line: 1147, baseType: !1569, size: 128, offset: 16896)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1390, file: !1066, line: 1149, baseType: !1389, size: 64, offset: 17024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1390, file: !1066, line: 1151, baseType: !2939, size: 64, offset: 17088)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1066, line: 1151, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1390, file: !1066, line: 1188, baseType: !164, size: 64, offset: 17152)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1390, file: !1066, line: 1191, baseType: !2943, size: 64, offset: 17216)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1066, line: 44, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1390, file: !1066, line: 1194, baseType: !2946, size: 64, offset: 17280)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1066, line: 45, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1390, file: !1066, line: 1197, baseType: !2949, size: 64, offset: 17344)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1066, line: 61, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1390, file: !1066, line: 1199, baseType: !2952, size: 64, offset: 17408)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2954, line: 99, size: 128, elements: !2955)
!2954 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2955 = !{!2956, !2957, !2958}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2953, file: !2954, line: 100, baseType: !626, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2953, file: !2954, line: 101, baseType: !211, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2953, file: !2954, line: 103, baseType: !229, size: 16, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1390, file: !1066, line: 1202, baseType: !2960, size: 64, offset: 17472)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1066, line: 48, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1390, file: !1066, line: 1205, baseType: !162, size: 64, offset: 17536)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1390, file: !1066, line: 1206, baseType: !2964, size: 64, offset: 17600)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1955, line: 14, baseType: !2966)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1955, line: 12, size: 384, elements: !2967)
!2967 = !{!2968}
!2968 = !DIDerivedType(tag: DW_TAG_member, scope: !2966, file: !1955, line: 13, baseType: !2969, size: 384)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !1955, line: 13, size: 384, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2969, file: !1955, line: 13, baseType: !109, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2969, file: !1955, line: 13, baseType: !109, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2969, file: !1955, line: 13, baseType: !109, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2969, file: !1955, line: 13, baseType: !2975, size: 256, offset: 128)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2976, line: 37, size: 256, elements: !2977)
!2976 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2977 = !{!2978, !2983, !2996, !3002, !3011, !3038, !3043}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2975, file: !2976, line: 42, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 39, size: 64, elements: !2980)
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2979, file: !2976, line: 40, baseType: !2645, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2979, file: !2976, line: 41, baseType: !376, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2975, file: !2976, line: 50, baseType: !2984, size: 192)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 45, size: 192, elements: !2985)
!2985 = !{!2986, !2988, !2989, !2995}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2984, file: !2976, line: 46, baseType: !2987, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !160, line: 95, baseType: !109)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2984, file: !2976, line: 47, baseType: !109, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2984, file: !2976, line: 48, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2976, line: 11, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2976, line: 8, size: 64, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2991, file: !2976, line: 9, baseType: !109, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2991, file: !2976, line: 10, baseType: !164, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2984, file: !2976, line: 49, baseType: !109, size: 32, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2975, file: !2976, line: 57, baseType: !2997, size: 128)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 53, size: 128, elements: !2998)
!2998 = !{!2999, !3000, !3001}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2997, file: !2976, line: 54, baseType: !2645, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2997, file: !2976, line: 55, baseType: !376, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2997, file: !2976, line: 56, baseType: !2990, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2975, file: !2976, line: 66, baseType: !3003, size: 256)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 60, size: 256, elements: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3010}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3003, file: !2976, line: 61, baseType: !2645, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3003, file: !2976, line: 62, baseType: !376, size: 32, offset: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3003, file: !2976, line: 63, baseType: !109, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3003, file: !2976, line: 64, baseType: !3009, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !160, line: 94, baseType: !323)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3003, file: !2976, line: 65, baseType: !3009, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2975, file: !2976, line: 105, baseType: !3012, size: 256)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 69, size: 256, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3012, file: !2976, line: 70, baseType: !164, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !3012, file: !2976, line: 79, baseType: !3016, size: 192, offset: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3012, file: !2976, line: 79, size: 192, elements: !3017)
!3017 = !{!3018, !3019, !3020, !3027, !3032}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3016, file: !2976, line: 81, baseType: !109, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3016, file: !2976, line: 86, baseType: !760, size: 16)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3016, file: !2976, line: 92, baseType: !3021, size: 192)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !2976, line: 88, size: 192, elements: !3022)
!3022 = !{!3023, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3021, file: !2976, line: 89, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 64, elements: !1553)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3021, file: !2976, line: 90, baseType: !164, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3021, file: !2976, line: 91, baseType: !164, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3016, file: !2976, line: 97, baseType: !3028, size: 96)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !2976, line: 94, size: 96, elements: !3029)
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3028, file: !2976, line: 95, baseType: !3024, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3028, file: !2976, line: 96, baseType: !434, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3016, file: !2976, line: 103, baseType: !3033, size: 128)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !2976, line: 99, size: 128, elements: !3034)
!3034 = !{!3035, !3036, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3033, file: !2976, line: 100, baseType: !162, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3033, file: !2976, line: 101, baseType: !434, size: 32, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3033, file: !2976, line: 102, baseType: !434, size: 32, offset: 96)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2975, file: !2976, line: 111, baseType: !3039, size: 128)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 108, size: 128, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3039, file: !2976, line: 109, baseType: !324, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3039, file: !2976, line: 110, baseType: !109, size: 32, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2975, file: !2976, line: 118, baseType: !3044, size: 128)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !2976, line: 114, size: 128, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3044, file: !2976, line: 115, baseType: !164, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3044, file: !2976, line: 116, baseType: !109, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3044, file: !2976, line: 117, baseType: !7, size: 32, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1390, file: !1066, line: 1208, baseType: !2829, size: 448, offset: 17664)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1390, file: !1066, line: 1215, baseType: !177, size: 64, offset: 18112)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1390, file: !1066, line: 1217, baseType: !177, size: 64, offset: 18176)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1390, file: !1066, line: 1219, baseType: !177, size: 64, offset: 18240)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1390, file: !1066, line: 1223, baseType: !3054, size: 64, offset: 18304)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3055, line: 99, baseType: !3056)
!3055 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3055, line: 99, size: 64, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3056, file: !3055, line: 99, baseType: !1637, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1390, file: !1066, line: 1225, baseType: !405, size: 32, offset: 18368)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1390, file: !1066, line: 1226, baseType: !109, size: 32, offset: 18400)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1390, file: !1066, line: 1227, baseType: !109, size: 32, offset: 18432)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1390, file: !1066, line: 1231, baseType: !3063, size: 64, offset: 18496)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1066, line: 1231, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1390, file: !1066, line: 1233, baseType: !169, size: 128, offset: 18560)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1390, file: !1066, line: 1240, baseType: !3067, size: 64, offset: 18688)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1066, line: 62, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1390, file: !1066, line: 1242, baseType: !3070, size: 64, offset: 18752)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1066, line: 1242, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1390, file: !1066, line: 1244, baseType: !169, size: 128, offset: 18816)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1390, file: !1066, line: 1245, baseType: !3074, size: 64, offset: 18944)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1066, line: 51, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1390, file: !1066, line: 1246, baseType: !622, size: 256, offset: 19008)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1390, file: !1066, line: 1247, baseType: !7, size: 32, offset: 19264)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1390, file: !1066, line: 1250, baseType: !3079, size: 64, offset: 19328)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1066, line: 57, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1390, file: !1066, line: 1251, baseType: !622, size: 256, offset: 19392)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1390, file: !1066, line: 1252, baseType: !169, size: 128, offset: 19648)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1390, file: !1066, line: 1259, baseType: !2334, size: 64, offset: 19776)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1390, file: !1066, line: 1260, baseType: !760, size: 16, offset: 19840)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1390, file: !1066, line: 1261, baseType: !760, size: 16, offset: 19856)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1390, file: !1066, line: 1314, baseType: !3087, size: 64, offset: 19904)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3089, line: 62, size: 256, align: 256, elements: !3090)
!3089 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096, !3097}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3088, file: !3089, line: 75, baseType: !434, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3088, file: !3089, line: 90, baseType: !434, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3088, file: !3089, line: 112, baseType: !179, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !3089, line: 132, baseType: !434, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3088, file: !3089, line: 140, baseType: !434, size: 32, offset: 160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3088, file: !3089, line: 149, baseType: !434, size: 32, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3088, file: !3089, line: 154, baseType: !3098, offset: 224)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, elements: !1773)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1390, file: !1066, line: 1315, baseType: !433, size: 32, offset: 19968)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1390, file: !1066, line: 1316, baseType: !433, size: 32, offset: 20000)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1390, file: !1066, line: 1321, baseType: !162, size: 64, offset: 20032)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1390, file: !1066, line: 1325, baseType: !109, size: 32, offset: 20096)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1390, file: !1066, line: 1326, baseType: !109, size: 32, offset: 20128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1390, file: !1066, line: 1327, baseType: !109, size: 32, offset: 20160)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1390, file: !1066, line: 1328, baseType: !109, size: 32, offset: 20192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1390, file: !1066, line: 1329, baseType: !842, size: 128, align: 64, offset: 20224)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1390, file: !1066, line: 1332, baseType: !3108, size: 128, offset: 20352)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3109, line: 51, size: 128, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3110 = !{!3111, !3116, !3117}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3108, file: !3109, line: 60, baseType: !3112, size: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3113, line: 7, size: 64, elements: !3114)
!3113 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3112, file: !3113, line: 12, baseType: !1634, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3108, file: !3109, line: 63, baseType: !702, size: 8, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3108, file: !3109, line: 70, baseType: !702, size: 8, offset: 72)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1390, file: !1066, line: 1335, baseType: !2386, size: 64, offset: 20480)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1390, file: !1066, line: 1337, baseType: !3120, size: 128, offset: 20544)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3109, line: 39, size: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3120, file: !3109, line: 40, baseType: !2173, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3120, file: !3109, line: 42, baseType: !434, size: 32, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3120, file: !3109, line: 43, baseType: !434, size: 32, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1390, file: !1066, line: 1340, baseType: !3126, size: 64, offset: 20672)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1066, line: 69, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1390, file: !1066, line: 1351, baseType: !109, size: 32, offset: 20736)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1390, file: !1066, line: 1352, baseType: !109, size: 32, offset: 20768)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1390, file: !1066, line: 1354, baseType: !162, size: 64, offset: 20800)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1390, file: !1066, line: 1364, baseType: !177, size: 64, offset: 20864)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1390, file: !1066, line: 1365, baseType: !177, size: 64, offset: 20928)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1390, file: !1066, line: 1412, baseType: !162, size: 64, offset: 20992)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1390, file: !1066, line: 1453, baseType: !3135, size: 64, offset: 21056)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1066, line: 1453, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1390, file: !1066, line: 1457, baseType: !3138, size: 64, offset: 21120)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3140)
!3140 = !{!3141, !3142, !3161, !3164, !3165, !3198, !3208}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3139, file: !68, line: 62, baseType: !67, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !68, line: 64, baseType: !3143, size: 192, offset: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3139, file: !68, line: 64, size: 192, elements: !3144)
!3144 = !{!3145, !3156}
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3143, file: !68, line: 65, baseType: !3146, size: 192)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !68, line: 65, size: 192, elements: !3147)
!3147 = !{!3148, !3155}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3146, file: !68, line: 66, baseType: !3149, size: 128)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3150, line: 50, size: 128, elements: !3151)
!3150 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3149, file: !3150, line: 52, baseType: !162, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3149, file: !3150, line: 54, baseType: !7, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3149, file: !3150, line: 55, baseType: !7, size: 32, offset: 96)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3146, file: !68, line: 67, baseType: !162, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3143, file: !68, line: 70, baseType: !3157, size: 192)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !68, line: 70, size: 192, elements: !3158)
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3157, file: !68, line: 71, baseType: !842, size: 128, align: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3157, file: !68, line: 72, baseType: !162, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3139, file: !68, line: 76, baseType: !3162, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3139, file: !68, line: 77, baseType: !162, size: 64, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3139, file: !68, line: 79, baseType: !3166, size: 64, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3150, line: 25, size: 256, elements: !3168)
!3168 = !{!3169, !3175, !3179}
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3150, line: 26, baseType: !3170, size: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3167, file: !3150, line: 26, size: 128, elements: !3171)
!3171 = !{!3172, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3170, file: !3150, line: 27, baseType: !3173, size: 128)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !2703)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3170, file: !3150, line: 28, baseType: !3173, size: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3167, file: !3150, line: 31, baseType: !3176, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3178)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3150, line: 23, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3150, line: 33, baseType: !3180, size: 64, offset: 192)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3167, file: !3150, line: 33, size: 64, elements: !3181)
!3181 = !{!3182, !3188, !3193}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3180, file: !3150, line: 38, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3180, file: !3150, line: 34, size: 64, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3183, file: !3150, line: 35, baseType: !618, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3183, file: !3150, line: 36, baseType: !219, size: 8, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3183, file: !3150, line: 37, baseType: !219, size: 8, offset: 40)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3180, file: !3150, line: 42, baseType: !3189, size: 16)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3180, file: !3150, line: 39, size: 16, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3189, file: !3150, line: 40, baseType: !219, size: 8)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3189, file: !3150, line: 41, baseType: !219, size: 8, offset: 8)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3180, file: !3150, line: 46, baseType: !3194, size: 16)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3180, file: !3150, line: 43, size: 16, elements: !3195)
!3195 = !{!3196, !3197}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3194, file: !3150, line: 44, baseType: !219, size: 8)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3194, file: !3150, line: 45, baseType: !219, size: 8, offset: 8)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3139, file: !68, line: 81, baseType: !3199, size: 64, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3200, file: !68, line: 86, baseType: !3162, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3200, file: !68, line: 87, baseType: !162, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3200, file: !68, line: 88, baseType: !162, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3200, file: !68, line: 89, baseType: !162, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3200, file: !68, line: 90, baseType: !702, size: 8, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3200, file: !68, line: 92, baseType: !3199, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3139, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1390, file: !1066, line: 1463, baseType: !3210, offset: 21184)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1066, line: 739, elements: !911)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !1066, line: 1470, baseType: !842, size: 128, align: 64, offset: 21184)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1390, file: !1066, line: 1471, baseType: !1403, size: 32, offset: 21312)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1390, file: !1066, line: 1472, baseType: !109, size: 32, offset: 21344)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1390, file: !1066, line: 1474, baseType: !1389, size: 64, offset: 21376)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1390, file: !1066, line: 1475, baseType: !864, size: 320, offset: 21440)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1390, file: !1066, line: 1478, baseType: !3217, size: 64, offset: 21760)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3219, line: 49, size: 512, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3227, !3228, !3229, !3231}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3218, file: !3219, line: 50, baseType: !3217, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3218, file: !3219, line: 51, baseType: !164, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3218, file: !3219, line: 52, baseType: !162, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !3219, line: 53, baseType: !162, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3218, file: !3219, line: 54, baseType: !3226, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3218, file: !3219, line: 56, baseType: !7, size: 32, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3218, file: !3219, line: 58, baseType: !7, size: 32, offset: 352)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3218, file: !3219, line: 59, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !177)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3218, file: !3219, line: 60, baseType: !2525, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1390, file: !1066, line: 1482, baseType: !1403, size: 32, offset: 21824)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1390, file: !1066, line: 1489, baseType: !164, size: 64, offset: 21888)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1390, file: !1066, line: 1504, baseType: !164, size: 64, offset: 21952)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1390, file: !1066, line: 1505, baseType: !179, size: 64, offset: 22016)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1390, file: !1066, line: 1506, baseType: !177, size: 64, offset: 22080)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1390, file: !1066, line: 1507, baseType: !179, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1390, file: !1066, line: 1508, baseType: !179, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1390, file: !1066, line: 1509, baseType: !179, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1390, file: !1066, line: 1510, baseType: !842, size: 128, align: 64, offset: 22208)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1390, file: !1066, line: 1511, baseType: !109, size: 32, offset: 22336)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1390, file: !1066, line: 1515, baseType: !3243, size: 64, offset: 22400)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1417, line: 56, size: 64, elements: !3244)
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3243, file: !1417, line: 57, baseType: !1420, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1390, file: !1066, line: 1518, baseType: !3243, size: 64, offset: 22464)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1390, file: !1066, line: 1528, baseType: !842, size: 128, align: 64, offset: 22528)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1390, file: !1066, line: 1552, baseType: !3249, size: 35328, offset: 23040)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3250, line: 430, size: 35328, elements: !3251)
!3250 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3251 = !{!3252, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3281, !3282, !3283, !3284, !3285, !3286, !3289, !3290, !3291, !3292}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3249, file: !3250, line: 432, baseType: !3253, size: 192)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3254, size: 192, elements: !290)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3255, line: 16, size: 64, elements: !3256)
!3255 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3254, file: !3255, line: 17, baseType: !227, size: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3254, file: !3255, line: 18, baseType: !227, size: 16, offset: 16)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3254, file: !3255, line: 19, baseType: !227, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3254, file: !3255, line: 19, baseType: !227, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3254, file: !3255, line: 19, baseType: !227, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3254, file: !3255, line: 19, baseType: !227, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3254, file: !3255, line: 19, baseType: !227, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3254, file: !3255, line: 20, baseType: !227, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3254, file: !3255, line: 20, baseType: !227, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3254, file: !3255, line: 20, baseType: !227, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3254, file: !3255, line: 20, baseType: !227, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3254, file: !3255, line: 20, baseType: !227, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3254, file: !3255, line: 20, baseType: !227, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3249, file: !3250, line: 436, baseType: !162, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3249, file: !3250, line: 440, baseType: !229, size: 16, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3249, file: !3250, line: 441, baseType: !229, size: 16, offset: 272)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3249, file: !3250, line: 442, baseType: !229, size: 16, offset: 288)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3249, file: !3250, line: 443, baseType: !229, size: 16, offset: 304)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3249, file: !3250, line: 447, baseType: !162, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3249, file: !3250, line: 448, baseType: !162, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3249, file: !3250, line: 459, baseType: !3278, size: 256, offset: 448)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 256, elements: !852)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3250, line: 428, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3249, file: !3250, line: 461, baseType: !162, size: 64, offset: 704)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3249, file: !3250, line: 463, baseType: !162, size: 64, offset: 768)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3249, file: !3250, line: 465, baseType: !162, size: 64, offset: 832)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3249, file: !3250, line: 466, baseType: !162, size: 64, offset: 896)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3249, file: !3250, line: 467, baseType: !162, size: 64, offset: 960)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3249, file: !3250, line: 473, baseType: !3287, size: 64, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3250, line: 10, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3249, file: !3250, line: 480, baseType: !162, size: 64, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3249, file: !3250, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3249, file: !3250, line: 491, baseType: !433, size: 32, offset: 1184)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3249, file: !3250, line: 501, baseType: !3293, size: 33792, offset: 1536)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3294, line: 448, size: 33792, elements: !3295)
!3294 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3295 = !{!3296, !3297, !3298, !3460, !3461, !3467, !3468}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3293, file: !3294, line: 461, baseType: !7, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3293, file: !3294, line: 468, baseType: !162, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3293, file: !3294, line: 476, baseType: !3299, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3294, line: 356, size: 33280, align: 512, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3300, file: !3294, line: 358, baseType: !7, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3300, file: !3294, line: 361, baseType: !7, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3300, file: !3294, line: 364, baseType: !177, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3300, file: !3294, line: 367, baseType: !177, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3300, file: !3294, line: 370, baseType: !177, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3300, file: !3294, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3300, file: !3294, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3300, file: !3294, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3300, file: !3294, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3300, file: !3294, line: 397, baseType: !3312, size: 32768, offset: 512)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3294, line: 348, size: 32768, elements: !3313)
!3313 = !{!3314, !3329, !3366, !3443, !3456}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3312, file: !3294, line: 349, baseType: !3315, size: 896)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3294, line: 12, size: 896, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3328}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3315, file: !3294, line: 13, baseType: !433, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3315, file: !3294, line: 14, baseType: !433, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3315, file: !3294, line: 15, baseType: !433, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3315, file: !3294, line: 16, baseType: !433, size: 32, offset: 96)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3315, file: !3294, line: 17, baseType: !433, size: 32, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3315, file: !3294, line: 18, baseType: !433, size: 32, offset: 160)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3315, file: !3294, line: 19, baseType: !433, size: 32, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3315, file: !3294, line: 22, baseType: !3325, size: 640, offset: 224)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 640, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 20)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3315, file: !3294, line: 25, baseType: !433, size: 32, offset: 864)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3312, file: !3294, line: 350, baseType: !3330, size: 4096, align: 128)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3294, line: 34, size: 4096, align: 128, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3351, !3352, !3353, !3355, !3357, !3361}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3330, file: !3294, line: 35, baseType: !227, size: 16)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3330, file: !3294, line: 36, baseType: !227, size: 16, offset: 16)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3330, file: !3294, line: 37, baseType: !227, size: 16, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3330, file: !3294, line: 38, baseType: !227, size: 16, offset: 48)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3294, line: 39, baseType: !3337, size: 128, offset: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3294, line: 39, size: 128, elements: !3338)
!3338 = !{!3339, !3344}
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3337, file: !3294, line: 40, baseType: !3340, size: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3294, line: 40, size: 128, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3340, file: !3294, line: 41, baseType: !177, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3340, file: !3294, line: 42, baseType: !177, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3337, file: !3294, line: 44, baseType: !3345, size: 128)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3294, line: 44, size: 128, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3345, file: !3294, line: 45, baseType: !433, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3345, file: !3294, line: 46, baseType: !433, size: 32, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3345, file: !3294, line: 47, baseType: !433, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3345, file: !3294, line: 48, baseType: !433, size: 32, offset: 96)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3330, file: !3294, line: 51, baseType: !433, size: 32, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3330, file: !3294, line: 52, baseType: !433, size: 32, offset: 224)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3330, file: !3294, line: 55, baseType: !3354, size: 1024, offset: 256)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 1024, elements: !443)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3330, file: !3294, line: 58, baseType: !3356, size: 2048, offset: 1280)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2048, elements: !294)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3330, file: !3294, line: 60, baseType: !3358, size: 384, offset: 3328)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !3359)
!3359 = !{!3360}
!3360 = !DISubrange(count: 12)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3294, line: 62, baseType: !3362, size: 384, offset: 3712)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3294, line: 62, size: 384, elements: !3363)
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3362, file: !3294, line: 63, baseType: !3358, size: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3362, file: !3294, line: 64, baseType: !3358, size: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3312, file: !3294, line: 351, baseType: !3367, size: 1088)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3294, line: 79, size: 1088, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3442}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3367, file: !3294, line: 80, baseType: !433, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3367, file: !3294, line: 81, baseType: !433, size: 32, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3367, file: !3294, line: 82, baseType: !433, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3367, file: !3294, line: 83, baseType: !433, size: 32, offset: 96)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3367, file: !3294, line: 84, baseType: !433, size: 32, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3367, file: !3294, line: 85, baseType: !433, size: 32, offset: 160)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3367, file: !3294, line: 86, baseType: !433, size: 32, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3367, file: !3294, line: 88, baseType: !3325, size: 640, offset: 224)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3367, file: !3294, line: 89, baseType: !219, size: 8, offset: 864)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3367, file: !3294, line: 90, baseType: !219, size: 8, offset: 872)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3367, file: !3294, line: 91, baseType: !219, size: 8, offset: 880)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3367, file: !3294, line: 92, baseType: !219, size: 8, offset: 888)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3367, file: !3294, line: 93, baseType: !219, size: 8, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3367, file: !3294, line: 94, baseType: !219, size: 8, offset: 904)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3367, file: !3294, line: 95, baseType: !3384, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3386, line: 11, size: 128, elements: !3387)
!3386 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3385, file: !3386, line: 12, baseType: !324, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3385, file: !3386, line: 13, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3392, line: 103, size: 1344, elements: !3393)
!3392 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3422, !3423, !3424}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3391, file: !3392, line: 109, baseType: !162, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3391, file: !3392, line: 110, baseType: !162, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3391, file: !3392, line: 111, baseType: !162, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3391, file: !3392, line: 112, baseType: !162, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3391, file: !3392, line: 113, baseType: !162, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3391, file: !3392, line: 114, baseType: !162, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3391, file: !3392, line: 117, baseType: !162, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3391, file: !3392, line: 118, baseType: !162, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3391, file: !3392, line: 119, baseType: !162, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3391, file: !3392, line: 120, baseType: !162, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3391, file: !3392, line: 121, baseType: !162, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3391, file: !3392, line: 122, baseType: !162, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3391, file: !3392, line: 123, baseType: !162, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3391, file: !3392, line: 124, baseType: !162, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3391, file: !3392, line: 125, baseType: !162, size: 64, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3391, file: !3392, line: 139, baseType: !162, size: 64, offset: 960)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3391, file: !3392, line: 142, baseType: !162, size: 64, offset: 1024)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3391, file: !3392, line: 144, baseType: !3412, size: 64, offset: 1088)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3391, file: !3392, line: 144, size: 64, elements: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3412, file: !3392, line: 146, baseType: !227, size: 16)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3412, file: !3392, line: 148, baseType: !177, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3412, file: !3392, line: 150, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3392, line: 59, size: 64, elements: !3418)
!3418 = !{!3419, !3420, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3417, file: !3392, line: 61, baseType: !177, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3417, file: !3392, line: 63, baseType: !177, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3417, file: !3392, line: 65, baseType: !177, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3391, file: !3392, line: 153, baseType: !162, size: 64, offset: 1152)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3391, file: !3392, line: 154, baseType: !162, size: 64, offset: 1216)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3391, file: !3392, line: 156, baseType: !3425, size: 64, offset: 1280)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3391, file: !3392, line: 156, size: 64, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3425, file: !3392, line: 158, baseType: !227, size: 16)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3425, file: !3392, line: 160, baseType: !177, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3425, file: !3392, line: 162, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3392, line: 69, size: 64, elements: !3431)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3430, file: !3392, line: 71, baseType: !177, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3430, file: !3392, line: 73, baseType: !177, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3430, file: !3392, line: 75, baseType: !177, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3430, file: !3392, line: 77, baseType: !177, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3430, file: !3392, line: 80, baseType: !177, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3430, file: !3392, line: 83, baseType: !177, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3430, file: !3392, line: 86, baseType: !177, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3430, file: !3392, line: 88, baseType: !177, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3430, file: !3392, line: 93, baseType: !177, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3430, file: !3392, line: 100, baseType: !177, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3367, file: !3294, line: 96, baseType: !433, size: 32, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3312, file: !3294, line: 352, baseType: !3444, size: 4608, align: 512)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3294, line: 333, size: 4608, align: 512, elements: !3445)
!3445 = !{!3446, !3447, !3454}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3444, file: !3294, line: 334, baseType: !3330, size: 4096, align: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3444, file: !3294, line: 335, baseType: !3448, size: 512, offset: 4096)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3294, line: 312, size: 512, elements: !3449)
!3449 = !{!3450, !3451, !3452}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3448, file: !3294, line: 313, baseType: !177, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3448, file: !3294, line: 314, baseType: !177, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3448, file: !3294, line: 315, baseType: !3453, size: 384, offset: 128)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 384, elements: !1856)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3444, file: !3294, line: 336, baseType: !3455, offset: 4608)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, elements: !1773)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3312, file: !3294, line: 353, baseType: !3457, size: 32768)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 32768, elements: !3458)
!3458 = !{!3459}
!3459 = !DISubrange(count: 4096)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3293, file: !3294, line: 484, baseType: !3299, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3293, file: !3294, line: 491, baseType: !3462, size: 128, offset: 256)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3294, line: 404, size: 128, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3462, file: !3294, line: 424, baseType: !177, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3462, file: !3294, line: 432, baseType: !7, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3462, file: !3294, line: 440, baseType: !7, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3293, file: !3294, line: 498, baseType: !3462, size: 128, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3293, file: !3294, line: 508, baseType: !3300, size: 33280, align: 512, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1366, file: !1367, line: 16, baseType: !1376, size: 192, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1366, file: !1367, line: 17, baseType: !211, size: 32, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !513, file: !14, line: 1240, baseType: !164, size: 64, offset: 6912)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !513, file: !14, line: 1243, baseType: !433, size: 32, offset: 6976)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !513, file: !14, line: 1245, baseType: !1124, size: 64, offset: 7040)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !513, file: !14, line: 1246, baseType: !1124, size: 64, offset: 7104)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !513, file: !14, line: 1248, baseType: !434, size: 32, offset: 7168)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !513, file: !14, line: 1249, baseType: !3477, size: 64, offset: 7232)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !513, file: !14, line: 1252, baseType: !3480, size: 256, offset: 7296)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !443)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !513, file: !14, line: 1253, baseType: !3482, size: 128, offset: 7552)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3483, line: 21, baseType: !3484)
!3483 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3483, line: 19, size: 128, elements: !3485)
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3484, file: !3483, line: 20, baseType: !3487, size: 128)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !2703)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !513, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !513, file: !14, line: 1261, baseType: !622, size: 256, offset: 7744)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !513, file: !14, line: 1267, baseType: !249, size: 64, offset: 8000)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !513, file: !14, line: 1269, baseType: !459, size: 64, offset: 8064)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !513, file: !14, line: 1271, baseType: !3493, size: 448, offset: 8128)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1133, line: 63, size: 448, elements: !3494)
!3494 = !{!3495, !3500, !3501, !3502, !3503, !3504, !3505}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3493, file: !1133, line: 64, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!162, !3499, !1131}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3493, file: !1133, line: 66, baseType: !3496, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3493, file: !1133, line: 69, baseType: !324, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3493, file: !1133, line: 70, baseType: !109, size: 32, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3493, file: !1133, line: 71, baseType: !7, size: 32, offset: 224)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3493, file: !1133, line: 74, baseType: !169, size: 128, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3493, file: !1133, line: 85, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !513, file: !14, line: 1274, baseType: !626, size: 64, offset: 8576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !513, file: !14, line: 1280, baseType: !626, size: 64, offset: 8640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !513, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !513, file: !14, line: 1286, baseType: !2436, size: 32, offset: 8736)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !513, file: !14, line: 1289, baseType: !944, size: 64, offset: 8768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !513, file: !14, line: 1290, baseType: !992, size: 64, offset: 8832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !513, file: !14, line: 1297, baseType: !1950, size: 64, offset: 8896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !513, file: !14, line: 1304, baseType: !3515, size: 64, offset: 8960)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3516, line: 49, size: 64, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3515, file: !3516, line: 50, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3516, line: 41, size: 512, align: 512, elements: !3521)
!3521 = !{!3522, !3523, !3528}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3520, file: !3516, line: 43, baseType: !191, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3520, file: !3516, line: 45, baseType: !3524, size: 192, offset: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3516, line: 29, size: 192, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3524, file: !3516, line: 30, baseType: !169, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3524, file: !3516, line: 32, baseType: !324, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3520, file: !3516, line: 46, baseType: !324, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !513, file: !14, line: 1305, baseType: !3515, size: 64, offset: 9024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !513, file: !14, line: 1306, baseType: !842, size: 128, align: 64, offset: 9088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !513, file: !14, line: 1307, baseType: !882, size: 256, offset: 9216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !513, file: !14, line: 1309, baseType: !622, size: 256, offset: 9472)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !513, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !513, file: !14, line: 1317, baseType: !191, size: 32, align: 512, offset: 10240)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !513, file: !14, line: 1318, baseType: !169, size: 128, offset: 10304)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !513, file: !14, line: 1320, baseType: !191, size: 32, offset: 10432)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !513, file: !14, line: 1321, baseType: !169, size: 128, offset: 10496)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !507, file: !508, line: 73, baseType: !109, size: 32, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !507, file: !508, line: 74, baseType: !3540, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1797, line: 42, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !461, file: !401, line: 141, baseType: !3544, size: 64, offset: 704)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!109, !1193, !702}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !461, file: !401, line: 142, baseType: !3548, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!399, !399, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !400, file: !401, line: 96, baseType: !512, size: 64, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !400, file: !401, line: 97, baseType: !162, size: 64, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !400, file: !401, line: 98, baseType: !164, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 100, baseType: !3557, size: 128, offset: 1024)
!3557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 100, size: 128, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3557, file: !401, line: 101, baseType: !169, size: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3557, file: !401, line: 102, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !400, file: !401, line: 104, baseType: !169, size: 128, offset: 1152)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !400, file: !401, line: 105, baseType: !169, size: 128, offset: 1280)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !400, file: !401, line: 113, baseType: !3565, size: 128, offset: 1408)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 109, size: 128, elements: !3566)
!3566 = !{!3567, !3568, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3565, file: !401, line: 110, baseType: !868, size: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3565, file: !401, line: 111, baseType: !415, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3565, file: !401, line: 112, baseType: !842, size: 128, align: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !393, file: !14, line: 1968, baseType: !3571, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!249, !399, !364, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3576, line: 10, size: 128, elements: !3577)
!3576 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3575, file: !3576, line: 11, baseType: !665, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3575, file: !3576, line: 12, baseType: !164, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !393, file: !14, line: 1969, baseType: !3581, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!109, !3540, !364, !109}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !393, file: !14, line: 1970, baseType: !3585, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!387, !364, !109, !702}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !393, file: !14, line: 1972, baseType: !3589, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!109, !399, !289, !109}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !393, file: !14, line: 1974, baseType: !3593, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!109, !3540, !364, !399, !330, !702}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !393, file: !14, line: 1976, baseType: !3597, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!109, !399, !364, !399}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !393, file: !14, line: 1977, baseType: !3601, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!109, !364, !399}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !393, file: !14, line: 1978, baseType: !3605, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!109, !3540, !364, !399, !249}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !393, file: !14, line: 1980, baseType: !3609, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!109, !3540, !364, !399, !330}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !393, file: !14, line: 1982, baseType: !3601, size: 64, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !393, file: !14, line: 1983, baseType: !3614, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!109, !3540, !364, !399, !330, !517}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !393, file: !14, line: 1985, baseType: !3618, size: 64, offset: 768)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!109, !3540, !364, !399, !364, !399, !7}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !393, file: !14, line: 1987, baseType: !3622, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!109, !3540, !399, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3640, !3649, !3650, !3655, !3656, !3657}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3626, file: !14, line: 227, baseType: !7, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3626, file: !14, line: 228, baseType: !330, size: 16, offset: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !14, line: 241, baseType: !3631, size: 32, offset: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3626, file: !14, line: 241, size: 32, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3631, file: !14, line: 242, baseType: !370, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3631, file: !14, line: 243, baseType: !3635, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3636, line: 16, baseType: !3637)
!3636 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3636, line: 14, size: 32, elements: !3638)
!3638 = !{!3639}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3637, file: !3636, line: 15, baseType: !375, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !14, line: 245, baseType: !3641, size: 32, offset: 96)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3626, file: !14, line: 245, size: 32, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3641, file: !14, line: 246, baseType: !379, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3641, file: !14, line: 247, baseType: !3645, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3636, line: 20, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3636, line: 18, size: 32, elements: !3647)
!3647 = !{!3648}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3646, file: !3636, line: 19, baseType: !383, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3626, file: !14, line: 249, baseType: !522, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3626, file: !14, line: 250, baseType: !3651, size: 128, offset: 192)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1125, line: 13, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3651, file: !1125, line: 14, baseType: !1124, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3651, file: !1125, line: 15, baseType: !324, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3626, file: !14, line: 251, baseType: !3651, size: 128, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3626, file: !14, line: 252, baseType: !3651, size: 128, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3626, file: !14, line: 259, baseType: !1713, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !393, file: !14, line: 1988, baseType: !3659, size: 64, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!109, !3540, !1193, !3662, !433, !7}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3664, line: 22, size: 1280, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3663, file: !3664, line: 23, baseType: !433, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3663, file: !3664, line: 24, baseType: !330, size: 16, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3663, file: !3664, line: 25, baseType: !7, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3663, file: !3664, line: 26, baseType: !1835, size: 32, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3663, file: !3664, line: 27, baseType: !177, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3663, file: !3664, line: 28, baseType: !177, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3663, file: !3664, line: 41, baseType: !177, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3663, file: !3664, line: 42, baseType: !517, size: 32, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3663, file: !3664, line: 43, baseType: !517, size: 32, offset: 352)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3663, file: !3664, line: 44, baseType: !370, size: 32, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3663, file: !3664, line: 45, baseType: !379, size: 32, offset: 416)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3663, file: !3664, line: 46, baseType: !522, size: 64, offset: 448)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3663, file: !3664, line: 47, baseType: !3651, size: 128, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3663, file: !3664, line: 48, baseType: !3651, size: 128, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3663, file: !3664, line: 49, baseType: !3651, size: 128, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3663, file: !3664, line: 50, baseType: !3651, size: 128, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3663, file: !3664, line: 51, baseType: !177, size: 64, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3663, file: !3664, line: 52, baseType: !177, size: 64, offset: 1088)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3663, file: !3664, line: 53, baseType: !433, size: 32, offset: 1152)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3663, file: !3664, line: 54, baseType: !433, size: 32, offset: 1184)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3663, file: !3664, line: 55, baseType: !177, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !393, file: !14, line: 1990, baseType: !3688, size: 64, offset: 960)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!321, !399, !289, !157}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !393, file: !14, line: 1991, baseType: !3692, size: 64, offset: 1024)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !364, !3695, !177, !177}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !393, file: !14, line: 1993, baseType: !3698, size: 64, offset: 1088)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !364, !109}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !393, file: !14, line: 1994, baseType: !3702, size: 64, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !364, !399, !1713, !7, !330}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !393, file: !14, line: 1997, baseType: !3706, size: 64, offset: 1216)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!109, !3540, !364, !1713, !330}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !393, file: !14, line: 1999, baseType: !3710, size: 64, offset: 1280)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!387, !3540, !399, !109}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !393, file: !14, line: 2001, baseType: !3714, size: 64, offset: 1344)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!109, !3540, !399, !387, !109}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !393, file: !14, line: 2003, baseType: !3718, size: 64, offset: 1408)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!109, !3540, !399, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !393, file: !14, line: 2005, baseType: !3724, size: 64, offset: 1472)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!109, !399, !3721}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !393, file: !14, line: 2006, baseType: !3728, size: 64, offset: 1536)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!3731, !364}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3733)
!3733 = !{!3734, !3741}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3732, file: !14, line: 3193, baseType: !3735, size: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3736, line: 296, size: 128, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3735, file: !3736, line: 297, baseType: !191, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3735, file: !3736, line: 299, baseType: !163, size: 32, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3735, file: !3736, line: 300, baseType: !164, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3732, file: !14, line: 3194, baseType: !433, size: 32, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !365, file: !14, line: 655, baseType: !512, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !365, file: !14, line: 656, baseType: !360, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !365, file: !14, line: 659, baseType: !164, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !365, file: !14, line: 663, baseType: !162, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 671, baseType: !3747, size: 32, offset: 704)
!3747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 671, size: 32, elements: !3748)
!3748 = !{!3749, !3751}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3747, file: !14, line: 672, baseType: !3750, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3747, file: !14, line: 673, baseType: !7, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !365, file: !14, line: 675, baseType: !517, size: 32, offset: 736)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !365, file: !14, line: 676, baseType: !522, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !365, file: !14, line: 677, baseType: !3651, size: 128, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !365, file: !14, line: 678, baseType: !3651, size: 128, offset: 960)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !365, file: !14, line: 679, baseType: !3651, size: 128, offset: 1088)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !365, file: !14, line: 680, baseType: !191, size: 32, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !365, file: !14, line: 681, baseType: !229, size: 16, offset: 1248)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !365, file: !14, line: 682, baseType: !219, size: 8, offset: 1264)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !365, file: !14, line: 683, baseType: !219, size: 8, offset: 1272)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !365, file: !14, line: 684, baseType: !1271, size: 64, offset: 1280)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !365, file: !14, line: 691, baseType: !162, size: 64, offset: 1344)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !365, file: !14, line: 692, baseType: !1283, size: 320, offset: 1408)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !365, file: !14, line: 694, baseType: !162, size: 64, offset: 1728)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !365, file: !14, line: 695, baseType: !162, size: 64, offset: 1792)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !365, file: !14, line: 697, baseType: !868, size: 128, offset: 1856)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !365, file: !14, line: 698, baseType: !169, size: 128, offset: 1984)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !365, file: !14, line: 707, baseType: !169, size: 128, offset: 2112)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !365, file: !14, line: 708, baseType: !169, size: 128, offset: 2240)
!3770 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 709, baseType: !3771, size: 128, offset: 2368)
!3771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 709, size: 128, elements: !3772)
!3772 = !{!3773, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3771, file: !14, line: 710, baseType: !992, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3771, file: !14, line: 711, baseType: !842, size: 128, align: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !365, file: !14, line: 713, baseType: !628, size: 64, offset: 2496)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !365, file: !14, line: 714, baseType: !628, size: 64, offset: 2560)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !365, file: !14, line: 715, baseType: !211, size: 32, offset: 2624)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !365, file: !14, line: 716, baseType: !211, size: 32, offset: 2656)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !365, file: !14, line: 717, baseType: !211, size: 32, offset: 2688)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !365, file: !14, line: 719, baseType: !211, size: 32, offset: 2720)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 721, baseType: !3782, size: 64, offset: 2752)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 721, size: 64, elements: !3783)
!3783 = !{!3784, !3785}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3782, file: !14, line: 722, baseType: !1981, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3782, file: !14, line: 723, baseType: !1015, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !365, file: !14, line: 725, baseType: !3787, size: 64, offset: 2816)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !365, file: !14, line: 726, baseType: !361, size: 1536, align: 64, offset: 2880)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !365, file: !14, line: 727, baseType: !169, size: 128, offset: 4416)
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 728, baseType: !3792, size: 64, offset: 4544)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 728, size: 64, elements: !3793)
!3793 = !{!3794, !3795, !3798, !3799}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3792, file: !14, line: 729, baseType: !2386, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3792, file: !14, line: 730, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3792, file: !14, line: 731, baseType: !289, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3792, file: !14, line: 732, baseType: !7, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !365, file: !14, line: 735, baseType: !434, size: 32, offset: 4608)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !365, file: !14, line: 738, baseType: !434, size: 32, offset: 4640)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !365, file: !14, line: 739, baseType: !3477, size: 64, offset: 4672)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !365, file: !14, line: 750, baseType: !164, size: 64, offset: 4736)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !361, file: !14, line: 474, baseType: !3735, size: 128, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !361, file: !14, line: 475, baseType: !1283, size: 320, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !361, file: !14, line: 476, baseType: !163, size: 32, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !361, file: !14, line: 477, baseType: !211, size: 32, offset: 544)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !361, file: !14, line: 482, baseType: !1569, size: 128, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !361, file: !14, line: 483, baseType: !162, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !361, file: !14, line: 484, baseType: !162, size: 64, offset: 768)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !361, file: !14, line: 485, baseType: !3812, size: 64, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3815)
!3815 = !{!3816, !3820, !3890, !3894, !3898, !3904, !3908, !3912, !3917, !3921, !3925, !3929, !3930, !3934, !3938, !3942, !3947, !3951, !3958, !3959}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3814, file: !14, line: 405, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !2173, !1027}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3814, file: !14, line: 406, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!109, !1713, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3826)
!3826 = !{!3827, !3857, !3871}
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !38, line: 295, baseType: !3828, size: 512)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !38, line: 295, size: 512, elements: !3829)
!3829 = !{!3830, !3856}
!3830 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !38, line: 296, baseType: !3831, size: 448)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !38, line: 296, size: 448, elements: !3832)
!3832 = !{!3833, !3834, !3843, !3844, !3845, !3854, !3855}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3831, file: !38, line: 298, baseType: !162, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !38, line: 299, baseType: !3835, size: 128, offset: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3831, file: !38, line: 299, size: 128, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3835, file: !38, line: 300, baseType: !169, size: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !38, line: 302, baseType: !3839, size: 128)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3835, file: !38, line: 302, size: 128, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3839, file: !38, line: 303, baseType: !164, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3839, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3831, file: !38, line: 310, baseType: !360, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3831, file: !38, line: 311, baseType: !162, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !38, line: 312, baseType: !3846, size: 64, offset: 320)
!3846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3831, file: !38, line: 312, size: 64, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3846, file: !38, line: 313, baseType: !164, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3846, file: !38, line: 314, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3852)
!3852 = !{!3853}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3851, file: !38, line: 256, baseType: !162, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3831, file: !38, line: 316, baseType: !211, size: 32, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3831, file: !38, line: 317, baseType: !211, size: 32, offset: 416)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3828, file: !38, line: 323, baseType: !2174, size: 512, align: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !38, line: 325, baseType: !3858, size: 512, offset: 512)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !38, line: 325, size: 512, elements: !3859)
!3859 = !{!3860, !3870}
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3858, file: !38, line: 326, baseType: !3861, size: 320)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3858, file: !38, line: 326, size: 320, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3861, file: !38, line: 327, baseType: !162, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3861, file: !38, line: 328, baseType: !162, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3861, file: !38, line: 329, baseType: !162, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3861, file: !38, line: 331, baseType: !211, size: 32, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3861, file: !38, line: 332, baseType: !211, size: 32, offset: 224)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3861, file: !38, line: 333, baseType: !211, size: 32, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3861, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3858, file: !38, line: 339, baseType: !2174, size: 512, align: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !38, line: 341, baseType: !3872, size: 512, offset: 1024)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !38, line: 341, size: 512, elements: !3873)
!3873 = !{!3874, !3883, !3889}
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !38, line: 342, baseType: !3875, size: 384)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !38, line: 342, size: 384, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3875, file: !38, line: 343, baseType: !162, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3875, file: !38, line: 344, baseType: !162, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3875, file: !38, line: 346, baseType: !164, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3875, file: !38, line: 347, baseType: !164, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3875, file: !38, line: 348, baseType: !164, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3875, file: !38, line: 349, baseType: !164, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !38, line: 352, baseType: !3884, size: 256)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !38, line: 352, size: 256, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3884, file: !38, line: 353, baseType: !162, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3884, file: !38, line: 354, baseType: !162, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3884, file: !38, line: 356, baseType: !169, size: 128, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3872, file: !38, line: 359, baseType: !2174, size: 512, align: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3814, file: !14, line: 409, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!109, !360, !1027}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3814, file: !14, line: 412, baseType: !3895, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!702, !360, !3824}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3814, file: !14, line: 414, baseType: !3899, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3814, file: !14, line: 416, baseType: !3905, size: 64, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!109, !1713, !360, !522, !7, !3226, !2401}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3814, file: !14, line: 419, baseType: !3909, size: 64, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!109, !1713, !360, !522, !7, !7, !2173, !164}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3814, file: !14, line: 424, baseType: !3913, size: 64, offset: 448)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!3916, !360, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !177)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3814, file: !14, line: 425, baseType: !3918, size: 64, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3824, !157, !157}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3814, file: !14, line: 426, baseType: !3922, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!702, !3824, !163}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3814, file: !14, line: 427, baseType: !3926, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !3824}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3814, file: !14, line: 428, baseType: !2000, size: 64, offset: 704)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3814, file: !14, line: 433, baseType: !3931, size: 64, offset: 768)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!109, !360, !3824, !3824, !74}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3814, file: !14, line: 435, baseType: !3935, size: 64, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!109, !3824}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3814, file: !14, line: 436, baseType: !3939, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!702, !3824, !157, !157}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3814, file: !14, line: 438, baseType: !3943, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3824, !3946, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3814, file: !14, line: 439, baseType: !3948, size: 64, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!109, !360, !2173}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3814, file: !14, line: 442, baseType: !3952, size: 64, offset: 1088)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!109, !3955, !1713, !3957}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3814, file: !14, line: 444, baseType: !2393, size: 64, offset: 1152)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3814, file: !14, line: 445, baseType: !3960, size: 64, offset: 1216)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!109, !2003, !2025}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !14, line: 486, baseType: !162, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !361, file: !14, line: 487, baseType: !1283, size: 320, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !361, file: !14, line: 488, baseType: !2436, size: 32, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !361, file: !14, line: 489, baseType: !191, size: 32, offset: 1312)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !361, file: !14, line: 490, baseType: !169, size: 128, offset: 1344)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !361, file: !14, line: 491, baseType: !164, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !351, file: !315, line: 180, baseType: !3970, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!321, !1713, !254, !350, !289, !522, !157}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !351, file: !315, line: 182, baseType: !3970, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !351, file: !315, line: 184, baseType: !3975, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!109, !1713, !254, !350, !2064}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !339, file: !315, line: 90, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !339, file: !315, line: 91, baseType: !3981, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !305, file: !246, line: 120, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3986, !272}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3989)
!3989 = !{!3990, !3991, !3995, !3999, !4005, !4009}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3988, file: !82, line: 40, baseType: !81, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3988, file: !82, line: 41, baseType: !3992, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!702}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3988, file: !82, line: 42, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!164}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3988, file: !82, line: 43, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!2525, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3988, file: !82, line: 44, baseType: !4006, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!2525}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3988, file: !82, line: 45, baseType: !665, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !305, file: !246, line: 121, baseType: !4011, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!2525, !272}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !305, file: !246, line: 122, baseType: !4015, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !272, !4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !245, file: !246, line: 70, baseType: !4021, size: 64, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !537, line: 190, size: 1152, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4115, !4116, !4117, !4118, !4119, !4122}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4022, file: !537, line: 191, baseType: !211, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4022, file: !537, line: 192, baseType: !211, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4022, file: !537, line: 202, baseType: !4021, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4022, file: !537, line: 203, baseType: !249, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4022, file: !537, line: 205, baseType: !734, size: 192, align: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4022, file: !537, line: 207, baseType: !2525, size: 64, offset: 384)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4022, file: !537, line: 208, baseType: !7, size: 32, offset: 448)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !537, line: 209, baseType: !4032, size: 256, offset: 512)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4022, file: !537, line: 209, size: 256, elements: !4033)
!4033 = !{!4034, !4043, !4047}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4032, file: !537, line: 210, baseType: !4035, size: 256)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !537, line: 153, size: 256, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4042}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4035, file: !537, line: 154, baseType: !162, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4035, file: !537, line: 156, baseType: !1572, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4035, file: !537, line: 162, baseType: !4040, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !537, line: 162, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4035, file: !537, line: 167, baseType: !162, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4032, file: !537, line: 211, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !537, line: 170, size: 64, elements: !4045)
!4045 = !{!4046}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4044, file: !537, line: 171, baseType: !4021, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4032, file: !537, line: 212, baseType: !4048, size: 256)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !537, line: 174, size: 256, elements: !4049)
!4049 = !{!4050, !4110, !4113, !4114}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4048, file: !537, line: 175, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !537, line: 271, size: 768, elements: !4054)
!4054 = !{!4055, !4075, !4079, !4083, !4087, !4091, !4095, !4099, !4100, !4101, !4102, !4106}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4053, file: !537, line: 276, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!109, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !537, line: 251, size: 1216, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4060, file: !537, line: 253, baseType: !4021, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4060, file: !537, line: 254, baseType: !1713, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4060, file: !537, line: 255, baseType: !1064, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4060, file: !537, line: 256, baseType: !164, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4060, file: !537, line: 259, baseType: !622, size: 256, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4060, file: !537, line: 260, baseType: !622, size: 256, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4060, file: !537, line: 261, baseType: !109, size: 32, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4060, file: !537, line: 262, baseType: !169, size: 128, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4060, file: !537, line: 263, baseType: !289, size: 64, offset: 960)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4060, file: !537, line: 265, baseType: !157, size: 64, offset: 1024)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4060, file: !537, line: 266, baseType: !702, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4060, file: !537, line: 267, baseType: !702, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4060, file: !537, line: 268, baseType: !2109, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4053, file: !537, line: 277, baseType: !4076, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !4059}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4053, file: !537, line: 290, baseType: !4080, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!109, !1064, !164}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4053, file: !537, line: 292, baseType: !4084, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!164, !1064, !1994}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4053, file: !537, line: 293, baseType: !4088, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!164, !1064, !164, !1994}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4053, file: !537, line: 294, baseType: !4092, size: 64, offset: 320)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !1064, !164}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4053, file: !537, line: 296, baseType: !4096, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!321, !4059, !289, !157, !522}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4053, file: !537, line: 306, baseType: !157, size: 64, offset: 448)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4053, file: !537, line: 313, baseType: !702, size: 8, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4053, file: !537, line: 314, baseType: !4096, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4053, file: !537, line: 317, baseType: !4103, size: 64, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!2051, !4059, !2053}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4053, file: !537, line: 320, baseType: !4107, size: 64, offset: 704)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!109, !4059, !2064}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4048, file: !537, line: 176, baseType: !4111, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !537, line: 35, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4048, file: !537, line: 177, baseType: !522, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4048, file: !537, line: 178, baseType: !4021, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4022, file: !537, line: 215, baseType: !164, size: 64, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4022, file: !537, line: 221, baseType: !177, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4022, file: !537, line: 223, baseType: !229, size: 16, offset: 896)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4022, file: !537, line: 224, baseType: !330, size: 16, offset: 912)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4022, file: !537, line: 225, baseType: !4120, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !537, line: 36, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4022, file: !537, line: 227, baseType: !842, size: 128, align: 64, offset: 1024)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !245, file: !246, line: 71, baseType: !4124, size: 32, offset: 448)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4125, line: 19, size: 32, elements: !4126)
!4125 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4126 = !{!4127}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4124, file: !4125, line: 20, baseType: !1403, size: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !245, file: !246, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !245, file: !246, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !245, file: !246, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !245, file: !246, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !245, file: !246, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !94, line: 707, baseType: !241, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !242, file: !94, line: 709, baseType: !4135, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !242, file: !94, line: 711, baseType: !249, size: 64, offset: 640)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !94, line: 712, baseType: !4139, size: 64, offset: 704)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4151, !4156, !4160}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4141, file: !94, line: 90, baseType: !249, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4141, file: !94, line: 91, baseType: !336, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4141, file: !94, line: 92, baseType: !4146, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!109, !4149, !284}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4141, file: !94, line: 93, baseType: !4152, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!289, !4149, !4155, !4018, !4019}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4141, file: !94, line: 95, baseType: !4157, size: 64, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !241}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4141, file: !94, line: 97, baseType: !4161, size: 64, offset: 320)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4164)
!4164 = !{!4165, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4163, file: !101, line: 287, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!109, !241}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4163, file: !101, line: 288, baseType: !4157, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4163, file: !101, line: 289, baseType: !4166, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4163, file: !101, line: 290, baseType: !4166, size: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4163, file: !101, line: 291, baseType: !4166, size: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4163, file: !101, line: 292, baseType: !4166, size: 64, offset: 320)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4163, file: !101, line: 293, baseType: !4166, size: 64, offset: 384)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4163, file: !101, line: 294, baseType: !4166, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4163, file: !101, line: 295, baseType: !4166, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4163, file: !101, line: 296, baseType: !4166, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4163, file: !101, line: 297, baseType: !4166, size: 64, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4163, file: !101, line: 298, baseType: !4166, size: 64, offset: 704)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4163, file: !101, line: 299, baseType: !4166, size: 64, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4163, file: !101, line: 300, baseType: !4166, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4163, file: !101, line: 301, baseType: !4166, size: 64, offset: 896)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4163, file: !101, line: 302, baseType: !4166, size: 64, offset: 960)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4163, file: !101, line: 303, baseType: !4166, size: 64, offset: 1024)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4163, file: !101, line: 304, baseType: !4166, size: 64, offset: 1088)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4163, file: !101, line: 305, baseType: !4166, size: 64, offset: 1152)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4163, file: !101, line: 306, baseType: !4166, size: 64, offset: 1216)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4163, file: !101, line: 307, baseType: !4166, size: 64, offset: 1280)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4163, file: !101, line: 308, baseType: !4166, size: 64, offset: 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4163, file: !101, line: 309, baseType: !4166, size: 64, offset: 1408)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !242, file: !94, line: 714, baseType: !4192, size: 64, offset: 768)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4194)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4195, line: 80, size: 1344, elements: !4196)
!4195 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4260}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4194, file: !4195, line: 81, baseType: !249, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4194, file: !4195, line: 82, baseType: !249, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4194, file: !4195, line: 83, baseType: !336, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4194, file: !4195, line: 84, baseType: !336, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4194, file: !4195, line: 85, baseType: !336, size: 64, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4194, file: !4195, line: 87, baseType: !4203, size: 64, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!109, !241, !4206}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4212, !4213, !4214, !4215, !4219, !4223, !4224, !4225, !4226, !4227, !4235, !4236, !4237, !4238, !4239, !4240}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4207, file: !88, line: 97, baseType: !249, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4207, file: !88, line: 98, baseType: !4192, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4207, file: !88, line: 100, baseType: !551, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4207, file: !88, line: 101, baseType: !249, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4207, file: !88, line: 103, baseType: !702, size: 8, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4207, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4207, file: !88, line: 106, baseType: !4216, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4207, file: !88, line: 107, baseType: !4220, size: 64, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4222)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4207, file: !88, line: 109, baseType: !4166, size: 64, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4207, file: !88, line: 110, baseType: !4157, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4207, file: !88, line: 111, baseType: !4166, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4207, file: !88, line: 112, baseType: !4157, size: 64, offset: 640)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4207, file: !88, line: 113, baseType: !4228, size: 64, offset: 704)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!109, !241, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4233)
!4233 = !{!4234}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4232, file: !101, line: 59, baseType: !109, size: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4207, file: !88, line: 114, baseType: !4166, size: 64, offset: 768)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4207, file: !88, line: 115, baseType: !336, size: 64, offset: 832)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4207, file: !88, line: 116, baseType: !336, size: 64, offset: 896)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4207, file: !88, line: 118, baseType: !4161, size: 64, offset: 960)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4207, file: !88, line: 119, baseType: !4157, size: 64, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4207, file: !88, line: 121, baseType: !4241, size: 64, offset: 1088)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4194, file: !4195, line: 88, baseType: !4146, size: 64, offset: 384)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4194, file: !4195, line: 89, baseType: !4166, size: 64, offset: 448)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4194, file: !4195, line: 90, baseType: !4157, size: 64, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4194, file: !4195, line: 91, baseType: !4157, size: 64, offset: 576)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4194, file: !4195, line: 92, baseType: !4157, size: 64, offset: 640)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4194, file: !4195, line: 94, baseType: !4166, size: 64, offset: 704)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4194, file: !4195, line: 95, baseType: !4166, size: 64, offset: 768)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4194, file: !4195, line: 97, baseType: !4228, size: 64, offset: 832)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4194, file: !4195, line: 98, baseType: !4166, size: 64, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4194, file: !4195, line: 100, baseType: !4166, size: 64, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4194, file: !4195, line: 102, baseType: !4166, size: 64, offset: 1024)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4194, file: !4195, line: 103, baseType: !4157, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4194, file: !4195, line: 105, baseType: !4161, size: 64, offset: 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4194, file: !4195, line: 107, baseType: !4257, size: 64, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4259)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4195, line: 107, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4194, file: !4195, line: 109, baseType: !702, size: 8, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !242, file: !94, line: 715, baseType: !4206, size: 64, offset: 832)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !242, file: !94, line: 717, baseType: !164, size: 64, offset: 896)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !242, file: !94, line: 719, baseType: !164, size: 64, offset: 960)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !242, file: !94, line: 721, baseType: !622, size: 256, offset: 1024)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !242, file: !94, line: 725, baseType: !4266, size: 448, offset: 1280)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4266, file: !94, line: 518, baseType: !169, size: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4266, file: !94, line: 519, baseType: !169, size: 128, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4266, file: !94, line: 520, baseType: !169, size: 128, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4266, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !242, file: !94, line: 726, baseType: !4273, size: 2496, offset: 1728)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4357, !4361}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4273, file: !101, line: 664, baseType: !4231, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4273, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4273, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4273, file: !101, line: 667, baseType: !702, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4273, file: !101, line: 668, baseType: !702, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4273, file: !101, line: 669, baseType: !702, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4273, file: !101, line: 670, baseType: !702, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4273, file: !101, line: 671, baseType: !702, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4273, file: !101, line: 672, baseType: !702, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4273, file: !101, line: 673, baseType: !702, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4273, file: !101, line: 674, baseType: !702, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4273, file: !101, line: 675, baseType: !433, size: 32, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4273, file: !101, line: 676, baseType: !191, size: 32, offset: 96)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4273, file: !101, line: 678, baseType: !169, size: 128, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4273, file: !101, line: 679, baseType: !571, size: 256, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4273, file: !101, line: 680, baseType: !4291, size: 64, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4293, line: 43, size: 1536, elements: !4294)
!4293 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4292, file: !4293, line: 44, baseType: !249, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4292, file: !4293, line: 45, baseType: !109, size: 32, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4292, file: !4293, line: 46, baseType: !169, size: 128, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4292, file: !4293, line: 47, baseType: !191, size: 32, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4292, file: !4293, line: 48, baseType: !4300, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4292, file: !4293, line: 49, baseType: !864, size: 320, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4292, file: !4293, line: 50, baseType: !162, size: 64, offset: 704)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4292, file: !4293, line: 51, baseType: !1518, size: 64, offset: 768)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4292, file: !4293, line: 52, baseType: !1518, size: 64, offset: 832)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4292, file: !4293, line: 53, baseType: !1518, size: 64, offset: 896)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4292, file: !4293, line: 54, baseType: !1518, size: 64, offset: 960)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4292, file: !4293, line: 55, baseType: !1518, size: 64, offset: 1024)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4292, file: !4293, line: 56, baseType: !162, size: 64, offset: 1088)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4292, file: !4293, line: 57, baseType: !162, size: 64, offset: 1152)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4292, file: !4293, line: 58, baseType: !162, size: 64, offset: 1216)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4292, file: !4293, line: 59, baseType: !162, size: 64, offset: 1280)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4292, file: !4293, line: 60, baseType: !162, size: 64, offset: 1344)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4292, file: !4293, line: 61, baseType: !241, size: 64, offset: 1408)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4292, file: !4293, line: 62, baseType: !702, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4292, file: !4293, line: 63, baseType: !702, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4273, file: !101, line: 681, baseType: !702, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4273, file: !101, line: 682, baseType: !702, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4273, file: !101, line: 683, baseType: !702, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4273, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4273, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4273, file: !101, line: 690, baseType: !1510, size: 512, offset: 640)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4273, file: !101, line: 691, baseType: !177, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4273, file: !101, line: 692, baseType: !882, size: 256, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4273, file: !101, line: 693, baseType: !1376, size: 192, offset: 1472)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4273, file: !101, line: 694, baseType: !4300, size: 64, offset: 1664)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4273, file: !101, line: 695, baseType: !211, size: 32, offset: 1728)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4273, file: !101, line: 696, baseType: !211, size: 32, offset: 1760)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4273, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4273, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4273, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4273, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4273, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4273, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4273, file: !101, line: 703, baseType: !702, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4273, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4273, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4273, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4273, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4273, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4273, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4273, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4273, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4273, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4273, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4273, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4273, file: !101, line: 715, baseType: !177, size: 64, offset: 2048)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4273, file: !101, line: 716, baseType: !177, size: 64, offset: 2112)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4273, file: !101, line: 717, baseType: !177, size: 64, offset: 2176)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4273, file: !101, line: 718, baseType: !177, size: 64, offset: 2240)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4273, file: !101, line: 720, baseType: !4352, size: 64, offset: 2304)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4354)
!4354 = !{!4355, !4356}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4353, file: !101, line: 633, baseType: !191, size: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4353, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4273, file: !101, line: 721, baseType: !4358, size: 64, offset: 2368)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !241, !618}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4273, file: !101, line: 722, baseType: !4362, size: 64, offset: 2432)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !242, file: !94, line: 727, baseType: !4365, size: 64, offset: 4224)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4374, !4375, !4376}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4366, file: !101, line: 743, baseType: !4163, size: 1472)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4366, file: !101, line: 744, baseType: !4166, size: 64, offset: 1472)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4366, file: !101, line: 745, baseType: !4371, size: 64, offset: 1536)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{null, !241, !702}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4366, file: !101, line: 746, baseType: !4166, size: 64, offset: 1600)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4366, file: !101, line: 747, baseType: !4157, size: 64, offset: 1664)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4366, file: !101, line: 748, baseType: !4157, size: 64, offset: 1728)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !242, file: !94, line: 736, baseType: !4378, size: 128, offset: 4288)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4379)
!4379 = !{!4380, !4384}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4378, file: !94, line: 531, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4383, line: 13, flags: DIFlagFwdDecl)
!4383 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4378, file: !94, line: 532, baseType: !4385, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !242, file: !94, line: 738, baseType: !4388, size: 64, offset: 4416)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4390)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !242, file: !94, line: 740, baseType: !4392, size: 64, offset: 4480)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !242, file: !94, line: 741, baseType: !177, size: 64, offset: 4544)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !242, file: !94, line: 746, baseType: !177, size: 64, offset: 4608)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !242, file: !94, line: 747, baseType: !4396, size: 64, offset: 4672)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4398)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !242, file: !94, line: 749, baseType: !4400, size: 64, offset: 4736)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4402)
!4402 = !{!4403, !4404, !4405}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4401, file: !94, line: 433, baseType: !7, size: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4401, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4401, file: !94, line: 435, baseType: !162, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !242, file: !94, line: 751, baseType: !169, size: 128, offset: 4800)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !242, file: !94, line: 762, baseType: !4408, size: 64, offset: 4928)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !242, file: !94, line: 770, baseType: !4411, offset: 4992)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4412, line: 5, elements: !911)
!4412 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !242, file: !94, line: 772, baseType: !4414, size: 64, offset: 4992)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4416, line: 18, flags: DIFlagFwdDecl)
!4416 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !242, file: !94, line: 773, baseType: !4418, size: 64, offset: 5056)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4420, line: 41, size: 512, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4421 = !{!4422, !4423, !4517, !4518, !4519, !4520}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4419, file: !4420, line: 42, baseType: !4418, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4419, file: !4420, line: 43, baseType: !4424, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4420, line: 125, size: 1408, elements: !4427)
!4427 = !{!4428, !4432, !4436, !4442, !4446, !4447, !4452, !4456, !4460, !4464, !4468, !4469, !4473, !4477, !4481, !4492, !4493, !4494, !4495, !4505, !4509, !4513}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4426, file: !4420, line: 126, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!4418, !4418}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4426, file: !4420, line: 127, baseType: !4433, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4418}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4426, file: !4420, line: 128, baseType: !4437, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!702, !4440}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4419)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4426, file: !4420, line: 129, baseType: !4443, size: 64, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!2525, !4440, !4149}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4426, file: !4420, line: 131, baseType: !4437, size: 64, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4426, file: !4420, line: 133, baseType: !4448, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4451, !4440}
!4451 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4420, line: 132, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4426, file: !4420, line: 134, baseType: !4453, size: 64, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!702, !4440, !249}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4426, file: !4420, line: 136, baseType: !4457, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!109, !4440, !249, !7, !164, !157}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4426, file: !4420, line: 141, baseType: !4461, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!109, !4440, !249, !959, !157}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4426, file: !4420, line: 144, baseType: !4465, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!249, !4440}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4426, file: !4420, line: 145, baseType: !4465, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4426, file: !4420, line: 146, baseType: !4470, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4418, !4440}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4426, file: !4420, line: 148, baseType: !4474, size: 64, offset: 768)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!4418, !4440, !4418}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4426, file: !4420, line: 151, baseType: !4478, size: 64, offset: 832)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!4418, !4440, !249}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4426, file: !4420, line: 153, baseType: !4482, size: 64, offset: 896)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!109, !4440, !249, !249, !7, !7, !4485}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4420, line: 94, size: 640, elements: !4487)
!4487 = !{!4488, !4489, !4490}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4486, file: !4420, line: 95, baseType: !4418, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4486, file: !4420, line: 96, baseType: !7, size: 32, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4486, file: !4420, line: 97, baseType: !4491, size: 512, offset: 128)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 512, elements: !1553)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4426, file: !4420, line: 158, baseType: !4474, size: 64, offset: 960)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4426, file: !4420, line: 161, baseType: !4470, size: 64, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4426, file: !4420, line: 163, baseType: !4429, size: 64, offset: 1088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4426, file: !4420, line: 164, baseType: !4496, size: 64, offset: 1152)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!109, !4440, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4420, line: 73, size: 128, elements: !4501)
!4501 = !{!4502, !4503, !4504}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4500, file: !4420, line: 74, baseType: !7, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4500, file: !4420, line: 75, baseType: !7, size: 32, offset: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4500, file: !4420, line: 76, baseType: !4440, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4426, file: !4420, line: 166, baseType: !4506, size: 64, offset: 1216)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!164, !4418, !109}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4426, file: !4420, line: 167, baseType: !4510, size: 64, offset: 1280)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!109, !4440, !7}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4426, file: !4420, line: 168, baseType: !4514, size: 64, offset: 1344)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!109, !4418}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4419, file: !4420, line: 44, baseType: !241, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4419, file: !4420, line: 45, baseType: !169, size: 128, offset: 192)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4419, file: !4420, line: 46, baseType: !169, size: 128, offset: 320)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4419, file: !4420, line: 47, baseType: !219, size: 8, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !242, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !242, file: !94, line: 778, baseType: !517, size: 32, offset: 5152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !242, file: !94, line: 779, baseType: !433, size: 32, offset: 5184)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !242, file: !94, line: 781, baseType: !191, size: 32, offset: 5216)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !242, file: !94, line: 782, baseType: !169, size: 128, offset: 5248)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !242, file: !94, line: 784, baseType: !4527, size: 64, offset: 5376)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4530, line: 52, size: 768, elements: !4531)
!4530 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4540, !4544, !4545, !4546, !4547, !4551, !4555}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4529, file: !4530, line: 53, baseType: !249, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4529, file: !4530, line: 55, baseType: !336, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4529, file: !4530, line: 56, baseType: !336, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4529, file: !4530, line: 58, baseType: !4146, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4529, file: !4530, line: 59, baseType: !4537, size: 64, offset: 256)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!289, !4149, !4155}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4529, file: !4530, line: 61, baseType: !4541, size: 64, offset: 320)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !4527}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4529, file: !4530, line: 62, baseType: !4157, size: 64, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4529, file: !4530, line: 64, baseType: !4166, size: 64, offset: 448)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4529, file: !4530, line: 66, baseType: !3986, size: 64, offset: 512)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4529, file: !4530, line: 67, baseType: !4548, size: 64, offset: 576)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!2525, !4149}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4529, file: !4530, line: 69, baseType: !4552, size: 64, offset: 640)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !4149, !4018, !4019}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4529, file: !4530, line: 71, baseType: !4161, size: 64, offset: 704)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !242, file: !94, line: 785, baseType: !336, size: 64, offset: 5440)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !94, line: 787, baseType: !4157, size: 64, offset: 5504)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !242, file: !94, line: 788, baseType: !4559, size: 64, offset: 5568)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !242, file: !94, line: 789, baseType: !4562, size: 64, offset: 5632)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !242, file: !94, line: 791, baseType: !4565, size: 64, offset: 5696)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4572}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4566, file: !94, line: 598, baseType: !116, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4566, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4566, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4566, file: !94, line: 601, baseType: !702, size: 8, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4566, file: !94, line: 602, baseType: !702, size: 8, offset: 104)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !242, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !242, file: !94, line: 795, baseType: !702, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !242, file: !94, line: 796, baseType: !702, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !242, file: !94, line: 797, baseType: !702, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !242, file: !94, line: 798, baseType: !702, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !242, file: !94, line: 799, baseType: !702, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !3, line: 56, baseType: !7, size: 32, offset: 512)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "allocation", scope: !187, file: !3, line: 57, baseType: !7, size: 32, offset: 544)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "boundary", scope: !187, file: !3, line: 58, baseType: !7, size: 32, offset: 576)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !3, line: 59, baseType: !3480, size: 256, offset: 608)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "pools", scope: !187, file: !3, line: 60, baseType: !169, size: 128, offset: 896)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4585 = !{!4586, !4588, !4591, !4596, !4598, !4600, !4602, !4607, !4609, !4614, !4616, !0, !4621, !4623, !4625, !4639, !4641, !4646}
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_pool_create293", scope: !2, file: !3, line: 298, type: !164, isLocal: true, isDefinition: true)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !4590, isLocal: true, isDefinition: true)
!4590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 96, elements: !3359)
!4591 = !DIGlobalVariableExpression(var: !4592, expr: !DIExpression())
!4592 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !4593, isLocal: true, isDefinition: true)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 136, elements: !4594)
!4594 = !{!4595}
!4595 = !DISubrange(count: 17)
!4596 = !DIGlobalVariableExpression(var: !4597, expr: !DIExpression())
!4597 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_pool_destroy294", scope: !2, file: !3, line: 392, type: !164, isLocal: true, isDefinition: true)
!4598 = !DIGlobalVariableExpression(var: !4599, expr: !DIExpression())
!4599 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_pool_alloc295", scope: !2, file: !3, line: 439, type: !164, isLocal: true, isDefinition: true)
!4600 = !DIGlobalVariableExpression(var: !4601, expr: !DIExpression())
!4601 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_pool_free296", scope: !2, file: !3, line: 462, type: !164, isLocal: true, isDefinition: true)
!4602 = !DIGlobalVariableExpression(var: !4603, expr: !DIExpression())
!4603 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !4604, isLocal: true, isDefinition: true)
!4604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 144, elements: !4605)
!4605 = !{!4606}
!4606 = !DISubrange(count: 18)
!4607 = !DIGlobalVariableExpression(var: !4608, expr: !DIExpression())
!4608 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dmam_pool_create297", scope: !2, file: !3, line: 510, type: !164, isLocal: true, isDefinition: true)
!4609 = !DIGlobalVariableExpression(var: !4610, expr: !DIExpression())
!4610 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !4611, isLocal: true, isDefinition: true)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 104, elements: !4612)
!4612 = !{!4613}
!4613 = !DISubrange(count: 13)
!4614 = !DIGlobalVariableExpression(var: !4615, expr: !DIExpression())
!4615 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dmam_pool_destroy298", scope: !2, file: !3, line: 524, type: !164, isLocal: true, isDefinition: true)
!4616 = !DIGlobalVariableExpression(var: !4617, expr: !DIExpression())
!4617 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !4618, isLocal: true, isDefinition: true)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 168, elements: !4619)
!4619 = !{!4620}
!4620 = !DISubrange(count: 21)
!4621 = !DIGlobalVariableExpression(var: !4622, expr: !DIExpression())
!4622 = distinct !DIGlobalVariable(name: "pools_lock", scope: !2, file: !3, line: 69, type: !622, isLocal: true, isDefinition: true)
!4623 = !DIGlobalVariableExpression(var: !4624, expr: !DIExpression())
!4624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !1855, isLocal: true, isDefinition: true)
!4625 = !DIGlobalVariableExpression(var: !4626, expr: !DIExpression())
!4626 = distinct !DIGlobalVariable(name: "dev_attr_pools", scope: !2, file: !3, line: 92, type: !4627, isLocal: true, isDefinition: true)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !4628)
!4628 = !{!4629, !4630, !4635}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4627, file: !94, line: 107, baseType: !326, size: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4627, file: !94, line: 108, baseType: !4631, size: 64, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!321, !241, !4634, !289}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4627, file: !94, line: 110, baseType: !4636, size: 64, offset: 192)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!321, !241, !4634, !249, !157}
!4639 = !DIGlobalVariableExpression(var: !4640, expr: !DIExpression())
!4640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !2702, isLocal: true, isDefinition: true)
!4641 = !DIGlobalVariableExpression(var: !4642, expr: !DIExpression())
!4642 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !4643, isLocal: true, isDefinition: true)
!4643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 208, elements: !4644)
!4644 = !{!4645}
!4645 = !DISubrange(count: 26)
!4646 = !DIGlobalVariableExpression(var: !4647, expr: !DIExpression())
!4647 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !4648, file: !4649, line: 112, type: !164, isLocal: true, isDefinition: true)
!4648 = distinct !DISubprogram(name: "might_resched", scope: !4649, file: !4649, line: 110, type: !987, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4649 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4650 = !{i32 7, !"Dwarf Version", i32 5}
!4651 = !{i32 2, !"Debug Info Version", i32 3}
!4652 = !{i32 1, !"wchar_size", i32 2}
!4653 = !{i32 8, !"cf-protection-branch", i32 1}
!4654 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4655 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4656 = !{i32 1, !"Code Model", i32 2}
!4657 = !{i32 1, !"override-stack-alignment", i32 8}
!4658 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4659 = distinct !DISubprogram(name: "dma_pool_create", scope: !3, file: !3, line: 224, type: !4660, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!186, !249, !241, !157, !157, !157}
!4662 = !{!4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4673, !4674, !4676, !4677}
!4663 = !DILocalVariable(name: "name", arg: 1, scope: !4659, file: !3, line: 224, type: !249)
!4664 = !DILocalVariable(name: "dev", arg: 2, scope: !4659, file: !3, line: 224, type: !241)
!4665 = !DILocalVariable(name: "size", arg: 3, scope: !4659, file: !3, line: 225, type: !157)
!4666 = !DILocalVariable(name: "align", arg: 4, scope: !4659, file: !3, line: 225, type: !157)
!4667 = !DILocalVariable(name: "boundary", arg: 5, scope: !4659, file: !3, line: 225, type: !157)
!4668 = !DILocalVariable(name: "retval", scope: !4659, file: !3, line: 227, type: !186)
!4669 = !DILocalVariable(name: "allocation", scope: !4659, file: !3, line: 228, type: !157)
!4670 = !DILocalVariable(name: "empty", scope: !4659, file: !3, line: 229, type: !702)
!4671 = !DILocalVariable(name: "__UNIQUE_ID___x289", scope: !4672, file: !3, line: 245, type: !157)
!4672 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 245, column: 15)
!4673 = !DILocalVariable(name: "__UNIQUE_ID___y290", scope: !4672, file: !3, line: 245, type: !157)
!4674 = !DILocalVariable(name: "__UNIQUE_ID___x291", scope: !4675, file: !3, line: 252, type: !157)
!4675 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 252, column: 13)
!4676 = !DILocalVariable(name: "__UNIQUE_ID___y292", scope: !4675, file: !3, line: 252, type: !157)
!4677 = !DILocalVariable(name: "err", scope: !4678, file: !3, line: 283, type: !109)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 282, column: 13)
!4679 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 282, column: 6)
!4680 = !DILocation(line: 224, column: 46, scope: !4659)
!4681 = !DILocation(line: 224, column: 67, scope: !4659)
!4682 = !DILocation(line: 225, column: 13, scope: !4659)
!4683 = !DILocation(line: 225, column: 26, scope: !4659)
!4684 = !DILocation(line: 225, column: 40, scope: !4659)
!4685 = !DILocation(line: 227, column: 2, scope: !4659)
!4686 = !DILocation(line: 227, column: 19, scope: !4659)
!4687 = !DILocation(line: 228, column: 2, scope: !4659)
!4688 = !DILocation(line: 228, column: 9, scope: !4659)
!4689 = !DILocation(line: 229, column: 2, scope: !4659)
!4690 = !DILocation(line: 229, column: 7, scope: !4659)
!4691 = !DILocation(line: 231, column: 7, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 231, column: 6)
!4693 = !DILocation(line: 231, column: 6, scope: !4659)
!4694 = !DILocation(line: 232, column: 3, scope: !4692)
!4695 = !DILocation(line: 234, column: 6, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 234, column: 6)
!4697 = !DILocation(line: 234, column: 12, scope: !4696)
!4698 = !DILocation(line: 234, column: 6, scope: !4659)
!4699 = !DILocation(line: 235, column: 9, scope: !4696)
!4700 = !DILocation(line: 235, column: 3, scope: !4696)
!4701 = !DILocation(line: 236, column: 11, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 236, column: 11)
!4703 = !DILocation(line: 236, column: 20, scope: !4702)
!4704 = !DILocation(line: 236, column: 26, scope: !4702)
!4705 = !DILocation(line: 236, column: 17, scope: !4702)
!4706 = !DILocation(line: 236, column: 11, scope: !4696)
!4707 = !DILocation(line: 237, column: 3, scope: !4702)
!4708 = !DILocation(line: 239, column: 6, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 239, column: 6)
!4710 = !DILocation(line: 239, column: 11, scope: !4709)
!4711 = !DILocation(line: 239, column: 16, scope: !4709)
!4712 = !DILocation(line: 239, column: 19, scope: !4709)
!4713 = !DILocation(line: 239, column: 24, scope: !4709)
!4714 = !DILocation(line: 239, column: 6, scope: !4659)
!4715 = !DILocation(line: 240, column: 3, scope: !4709)
!4716 = !DILocation(line: 241, column: 6, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 241, column: 6)
!4718 = !DILocation(line: 241, column: 11, scope: !4717)
!4719 = !DILocation(line: 241, column: 6, scope: !4659)
!4720 = !DILocation(line: 242, column: 8, scope: !4717)
!4721 = !DILocation(line: 242, column: 3, scope: !4717)
!4722 = !DILocation(line: 244, column: 9, scope: !4659)
!4723 = !DILocation(line: 244, column: 7, scope: !4659)
!4724 = !DILocation(line: 245, column: 15, scope: !4672)
!4725 = !DILocation(line: 245, column: 15, scope: !4659)
!4726 = !DILocation(line: 245, column: 13, scope: !4659)
!4727 = !DILocation(line: 247, column: 7, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 247, column: 6)
!4729 = !DILocation(line: 247, column: 6, scope: !4659)
!4730 = !DILocation(line: 248, column: 14, scope: !4728)
!4731 = !DILocation(line: 248, column: 12, scope: !4728)
!4732 = !DILocation(line: 248, column: 3, scope: !4728)
!4733 = !DILocation(line: 249, column: 12, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 249, column: 11)
!4735 = !DILocation(line: 249, column: 23, scope: !4734)
!4736 = !DILocation(line: 249, column: 21, scope: !4734)
!4737 = !DILocation(line: 249, column: 29, scope: !4734)
!4738 = !DILocation(line: 249, column: 33, scope: !4734)
!4739 = !DILocation(line: 249, column: 45, scope: !4734)
!4740 = !DILocation(line: 249, column: 54, scope: !4734)
!4741 = !DILocation(line: 249, column: 42, scope: !4734)
!4742 = !DILocation(line: 249, column: 11, scope: !4728)
!4743 = !DILocation(line: 250, column: 3, scope: !4734)
!4744 = !DILocation(line: 252, column: 13, scope: !4675)
!4745 = !DILocation(line: 252, column: 13, scope: !4659)
!4746 = !DILocation(line: 252, column: 11, scope: !4659)
!4747 = !DILocation(line: 254, column: 11, scope: !4659)
!4748 = !DILocation(line: 254, column: 9, scope: !4659)
!4749 = !DILocation(line: 255, column: 7, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 255, column: 6)
!4751 = !DILocation(line: 255, column: 6, scope: !4659)
!4752 = !DILocation(line: 256, column: 10, scope: !4750)
!4753 = !DILocation(line: 256, column: 3, scope: !4750)
!4754 = !DILocation(line: 258, column: 10, scope: !4659)
!4755 = !DILocation(line: 258, column: 18, scope: !4659)
!4756 = !DILocation(line: 258, column: 24, scope: !4659)
!4757 = !DILocation(line: 258, column: 2, scope: !4659)
!4758 = !DILocation(line: 260, column: 16, scope: !4659)
!4759 = !DILocation(line: 260, column: 2, scope: !4659)
!4760 = !DILocation(line: 260, column: 10, scope: !4659)
!4761 = !DILocation(line: 260, column: 14, scope: !4659)
!4762 = !DILocation(line: 262, column: 18, scope: !4659)
!4763 = !DILocation(line: 262, column: 26, scope: !4659)
!4764 = !DILocation(line: 262, column: 2, scope: !4659)
!4765 = !DILocation(line: 263, column: 2, scope: !4659)
!4766 = !DILocation(line: 263, column: 2, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 263, column: 2)
!4768 = !DILocation(line: 264, column: 17, scope: !4659)
!4769 = !DILocation(line: 264, column: 2, scope: !4659)
!4770 = !DILocation(line: 264, column: 10, scope: !4659)
!4771 = !DILocation(line: 264, column: 15, scope: !4659)
!4772 = !DILocation(line: 265, column: 21, scope: !4659)
!4773 = !DILocation(line: 265, column: 2, scope: !4659)
!4774 = !DILocation(line: 265, column: 10, scope: !4659)
!4775 = !DILocation(line: 265, column: 19, scope: !4659)
!4776 = !DILocation(line: 266, column: 23, scope: !4659)
!4777 = !DILocation(line: 266, column: 2, scope: !4659)
!4778 = !DILocation(line: 266, column: 10, scope: !4659)
!4779 = !DILocation(line: 266, column: 21, scope: !4659)
!4780 = !DILocation(line: 267, column: 18, scope: !4659)
!4781 = !DILocation(line: 267, column: 26, scope: !4659)
!4782 = !DILocation(line: 267, column: 2, scope: !4659)
!4783 = !DILocation(line: 277, column: 2, scope: !4659)
!4784 = !DILocation(line: 278, column: 2, scope: !4659)
!4785 = !DILocation(line: 279, column: 22, scope: !4659)
!4786 = !DILocation(line: 279, column: 27, scope: !4659)
!4787 = !DILocation(line: 279, column: 10, scope: !4659)
!4788 = !DILocation(line: 279, column: 8, scope: !4659)
!4789 = !DILocation(line: 280, column: 12, scope: !4659)
!4790 = !DILocation(line: 280, column: 20, scope: !4659)
!4791 = !DILocation(line: 280, column: 28, scope: !4659)
!4792 = !DILocation(line: 280, column: 33, scope: !4659)
!4793 = !DILocation(line: 280, column: 2, scope: !4659)
!4794 = !DILocation(line: 281, column: 2, scope: !4659)
!4795 = !DILocation(line: 282, column: 6, scope: !4679)
!4796 = !{i8 0, i8 2}
!4797 = !DILocation(line: 282, column: 6, scope: !4659)
!4798 = !DILocation(line: 283, column: 3, scope: !4678)
!4799 = !DILocation(line: 283, column: 7, scope: !4678)
!4800 = !DILocation(line: 285, column: 28, scope: !4678)
!4801 = !DILocation(line: 285, column: 9, scope: !4678)
!4802 = !DILocation(line: 285, column: 7, scope: !4678)
!4803 = !DILocation(line: 286, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 286, column: 7)
!4805 = !DILocation(line: 286, column: 7, scope: !4678)
!4806 = !DILocation(line: 287, column: 4, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 286, column: 12)
!4808 = !DILocation(line: 288, column: 14, scope: !4807)
!4809 = !DILocation(line: 288, column: 22, scope: !4807)
!4810 = !DILocation(line: 288, column: 4, scope: !4807)
!4811 = !DILocation(line: 289, column: 4, scope: !4807)
!4812 = !DILocation(line: 290, column: 4, scope: !4807)
!4813 = !DILocation(line: 291, column: 10, scope: !4807)
!4814 = !DILocation(line: 291, column: 4, scope: !4807)
!4815 = !DILocation(line: 292, column: 4, scope: !4807)
!4816 = !DILocation(line: 294, column: 2, scope: !4679)
!4817 = !DILocation(line: 294, column: 2, scope: !4678)
!4818 = !DILocation(line: 295, column: 2, scope: !4659)
!4819 = !DILocation(line: 296, column: 9, scope: !4659)
!4820 = !DILocation(line: 296, column: 2, scope: !4659)
!4821 = !DILocation(line: 297, column: 1, scope: !4659)
!4822 = distinct !DISubprogram(name: "kzalloc", scope: !147, file: !147, line: 719, type: !4823, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4825)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!164, !157, !163}
!4825 = !{!4826, !4827}
!4826 = !DILocalVariable(name: "size", arg: 1, scope: !4822, file: !147, line: 719, type: !157)
!4827 = !DILocalVariable(name: "flags", arg: 2, scope: !4822, file: !147, line: 719, type: !163)
!4828 = !DILocation(line: 719, column: 52, scope: !4822)
!4829 = !DILocation(line: 719, column: 64, scope: !4822)
!4830 = !DILocation(line: 721, column: 17, scope: !4822)
!4831 = !DILocation(line: 721, column: 23, scope: !4822)
!4832 = !DILocation(line: 721, column: 29, scope: !4822)
!4833 = !DILocation(line: 721, column: 9, scope: !4822)
!4834 = !DILocation(line: 721, column: 2, scope: !4822)
!4835 = !DISubprogram(name: "strscpy", scope: !4836, file: !4836, line: 72, type: !4837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4836 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!321, !289, !249, !157}
!4839 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4840, file: !4840, line: 35, type: !4841, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4843)
!4840 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4841 = !DISubroutineType(types: !4842)
!4842 = !{null, !172}
!4843 = !{!4844}
!4844 = !DILocalVariable(name: "list", arg: 1, scope: !4839, file: !4840, line: 35, type: !172)
!4845 = !DILocation(line: 35, column: 53, scope: !4839)
!4846 = !DILocation(line: 37, column: 2, scope: !4839)
!4847 = !DILocation(line: 37, column: 2, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4839, file: !4840, line: 37, column: 2)
!4849 = !DILocation(line: 37, column: 2, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4848, file: !4840, line: 37, column: 2)
!4851 = !DILocation(line: 37, column: 2, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4848, file: !4840, line: 37, column: 2)
!4853 = !DILocation(line: 38, column: 2, scope: !4839)
!4854 = !DILocation(line: 38, column: 2, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4839, file: !4840, line: 38, column: 2)
!4856 = !DILocation(line: 38, column: 2, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4855, file: !4840, line: 38, column: 2)
!4858 = !DILocation(line: 38, column: 2, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !4840, line: 38, column: 2)
!4860 = !DILocation(line: 39, column: 1, scope: !4839)
!4861 = distinct !DISubprogram(name: "spinlock_check", scope: !4862, file: !4862, line: 324, type: !4863, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4866)
!4862 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!4865, !2305}
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!4866 = !{!4867}
!4867 = !DILocalVariable(name: "lock", arg: 1, scope: !4861, file: !4862, line: 324, type: !2305)
!4868 = !DILocation(line: 324, column: 67, scope: !4861)
!4869 = !DILocation(line: 326, column: 10, scope: !4861)
!4870 = !DILocation(line: 326, column: 16, scope: !4861)
!4871 = !DILocation(line: 326, column: 2, scope: !4861)
!4872 = !DISubprogram(name: "mutex_lock", scope: !623, file: !623, line: 227, type: !4873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !4875}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!4876 = distinct !DISubprogram(name: "list_empty", scope: !4840, file: !4840, line: 371, type: !4877, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4881)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!109, !4879}
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "head", arg: 1, scope: !4876, file: !4840, line: 371, type: !4879)
!4883 = !DILocation(line: 371, column: 54, scope: !4876)
!4884 = !DILocation(line: 373, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4876, file: !4840, line: 373, column: 9)
!4886 = !DILocation(line: 373, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4885, file: !4840, line: 373, column: 9)
!4888 = !DILocation(line: 373, column: 34, scope: !4876)
!4889 = !DILocation(line: 373, column: 31, scope: !4876)
!4890 = !DILocation(line: 373, column: 2, scope: !4876)
!4891 = distinct !DISubprogram(name: "list_add", scope: !4840, file: !4840, line: 167, type: !4892, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{null, !172, !172}
!4894 = !{!4895, !4896}
!4895 = !DILocalVariable(name: "new", arg: 1, scope: !4891, file: !4840, line: 167, type: !172)
!4896 = !DILocalVariable(name: "head", arg: 2, scope: !4891, file: !4840, line: 167, type: !172)
!4897 = !DILocation(line: 167, column: 47, scope: !4891)
!4898 = !DILocation(line: 167, column: 70, scope: !4891)
!4899 = !DILocation(line: 169, column: 13, scope: !4891)
!4900 = !DILocation(line: 169, column: 18, scope: !4891)
!4901 = !DILocation(line: 169, column: 24, scope: !4891)
!4902 = !DILocation(line: 169, column: 30, scope: !4891)
!4903 = !DILocation(line: 169, column: 2, scope: !4891)
!4904 = !DILocation(line: 170, column: 1, scope: !4891)
!4905 = !DISubprogram(name: "mutex_unlock", scope: !623, file: !623, line: 246, type: !4873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4906 = !DISubprogram(name: "device_create_file", scope: !94, file: !94, line: 259, type: !4907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!109, !241, !4909}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4627)
!4911 = distinct !DISubprogram(name: "list_del", scope: !4840, file: !4840, line: 227, type: !4841, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4912)
!4912 = !{!4913}
!4913 = !DILocalVariable(name: "entry", arg: 1, scope: !4911, file: !4840, line: 227, type: !172)
!4914 = !DILocation(line: 227, column: 47, scope: !4911)
!4915 = !DILocation(line: 229, column: 19, scope: !4911)
!4916 = !DILocation(line: 229, column: 2, scope: !4911)
!4917 = !DILocation(line: 230, column: 2, scope: !4911)
!4918 = !DILocation(line: 230, column: 9, scope: !4911)
!4919 = !DILocation(line: 230, column: 14, scope: !4911)
!4920 = !DILocation(line: 231, column: 2, scope: !4911)
!4921 = !DILocation(line: 231, column: 9, scope: !4911)
!4922 = !DILocation(line: 231, column: 14, scope: !4911)
!4923 = !DILocation(line: 232, column: 1, scope: !4911)
!4924 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !4925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{null, !2525}
!4927 = distinct !DISubprogram(name: "dma_pool_destroy", scope: !3, file: !3, line: 360, type: !4928, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4930)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{null, !186}
!4930 = !{!4931, !4932, !4933, !4934, !4935, !4936, !4939, !4941}
!4931 = !DILocalVariable(name: "pool", arg: 1, scope: !4927, file: !3, line: 360, type: !186)
!4932 = !DILocalVariable(name: "page", scope: !4927, file: !3, line: 362, type: !165)
!4933 = !DILocalVariable(name: "tmp", scope: !4927, file: !3, line: 362, type: !165)
!4934 = !DILocalVariable(name: "empty", scope: !4927, file: !3, line: 363, type: !702)
!4935 = !DILocalVariable(name: "busy", scope: !4927, file: !3, line: 363, type: !702)
!4936 = !DILocalVariable(name: "__mptr", scope: !4937, file: !3, line: 382, type: !164)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 382, column: 2)
!4938 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 382, column: 2)
!4939 = !DILocalVariable(name: "__mptr", scope: !4940, file: !3, line: 382, type: !164)
!4940 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 382, column: 2)
!4941 = !DILocalVariable(name: "__mptr", scope: !4942, file: !3, line: 382, type: !164)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 382, column: 2)
!4943 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 382, column: 2)
!4944 = !DILocation(line: 360, column: 40, scope: !4927)
!4945 = !DILocation(line: 362, column: 2, scope: !4927)
!4946 = !DILocation(line: 362, column: 19, scope: !4927)
!4947 = !DILocation(line: 362, column: 26, scope: !4927)
!4948 = !DILocation(line: 363, column: 2, scope: !4927)
!4949 = !DILocation(line: 363, column: 7, scope: !4927)
!4950 = !DILocation(line: 363, column: 14, scope: !4927)
!4951 = !DILocation(line: 365, column: 6, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 365, column: 6)
!4953 = !DILocation(line: 365, column: 6, scope: !4927)
!4954 = !DILocation(line: 366, column: 3, scope: !4952)
!4955 = !DILocation(line: 368, column: 2, scope: !4927)
!4956 = !DILocation(line: 369, column: 2, scope: !4927)
!4957 = !DILocation(line: 370, column: 12, scope: !4927)
!4958 = !DILocation(line: 370, column: 18, scope: !4927)
!4959 = !DILocation(line: 370, column: 2, scope: !4927)
!4960 = !DILocation(line: 371, column: 22, scope: !4927)
!4961 = !DILocation(line: 371, column: 28, scope: !4927)
!4962 = !DILocation(line: 371, column: 33, scope: !4927)
!4963 = !DILocation(line: 371, column: 10, scope: !4927)
!4964 = !DILocation(line: 371, column: 8, scope: !4927)
!4965 = !DILocation(line: 372, column: 2, scope: !4927)
!4966 = !DILocation(line: 373, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 373, column: 6)
!4968 = !DILocation(line: 373, column: 6, scope: !4927)
!4969 = !DILocation(line: 374, column: 22, scope: !4967)
!4970 = !DILocation(line: 374, column: 28, scope: !4967)
!4971 = !DILocation(line: 374, column: 3, scope: !4967)
!4972 = !DILocation(line: 375, column: 2, scope: !4927)
!4973 = !DILocation(line: 377, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 377, column: 6)
!4975 = !DILocation(line: 377, column: 12, scope: !4974)
!4976 = !DILocation(line: 377, column: 6, scope: !4927)
!4977 = !DILocation(line: 378, column: 3, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 378, column: 3)
!4979 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 377, column: 23)
!4980 = !DILocation(line: 378, column: 3, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 378, column: 3)
!4982 = !DILocation(line: 379, column: 8, scope: !4979)
!4983 = !DILocation(line: 380, column: 2, scope: !4979)
!4984 = !DILocation(line: 382, column: 2, scope: !4937)
!4985 = !DILocation(line: 382, column: 2, scope: !4938)
!4986 = !DILocation(line: 382, column: 2, scope: !4940)
!4987 = !DILocation(line: 382, column: 2, scope: !4943)
!4988 = !DILocation(line: 383, column: 8, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 383, column: 7)
!4990 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 382, column: 67)
!4991 = !DILocation(line: 383, column: 7, scope: !4990)
!4992 = !DILocation(line: 384, column: 22, scope: !4989)
!4993 = !DILocation(line: 384, column: 28, scope: !4989)
!4994 = !DILocation(line: 384, column: 33, scope: !4989)
!4995 = !DILocation(line: 384, column: 39, scope: !4989)
!4996 = !DILocation(line: 385, column: 8, scope: !4989)
!4997 = !DILocation(line: 385, column: 14, scope: !4989)
!4998 = !DILocation(line: 385, column: 21, scope: !4989)
!4999 = !DILocation(line: 385, column: 27, scope: !4989)
!5000 = !DILocation(line: 384, column: 4, scope: !4989)
!5001 = !DILocation(line: 386, column: 13, scope: !4990)
!5002 = !DILocation(line: 386, column: 19, scope: !4990)
!5003 = !DILocation(line: 386, column: 3, scope: !4990)
!5004 = !DILocation(line: 387, column: 9, scope: !4990)
!5005 = !DILocation(line: 387, column: 3, scope: !4990)
!5006 = !DILocation(line: 388, column: 2, scope: !4990)
!5007 = !DILocation(line: 382, column: 2, scope: !4942)
!5008 = distinct !{!5008, !4985, !5009, !5010, !5011}
!5009 = !DILocation(line: 388, column: 2, scope: !4938)
!5010 = !{!"llvm.loop.mustprogress"}
!5011 = !{!"llvm.loop.unroll.disable"}
!5012 = !DILocation(line: 390, column: 8, scope: !4927)
!5013 = !DILocation(line: 390, column: 2, scope: !4927)
!5014 = !DILocation(line: 391, column: 1, scope: !4927)
!5015 = !DISubprogram(name: "device_remove_file", scope: !94, file: !94, line: 261, type: !5016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{null, !241, !4909}
!5018 = !DISubprogram(name: "_dev_err", scope: !5019, file: !5019, line: 50, type: !5020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5019 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5020 = !DISubroutineType(types: !5021)
!5021 = !{null, !4149, !249, null}
!5022 = distinct !DISubprogram(name: "dma_free_coherent", scope: !5023, file: !5023, line: 430, type: !5024, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5026)
!5023 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !241, !157, !164, !176}
!5026 = !{!5027, !5028, !5029, !5030}
!5027 = !DILocalVariable(name: "dev", arg: 1, scope: !5022, file: !5023, line: 430, type: !241)
!5028 = !DILocalVariable(name: "size", arg: 2, scope: !5022, file: !5023, line: 430, type: !157)
!5029 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !5022, file: !5023, line: 431, type: !164)
!5030 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5022, file: !5023, line: 431, type: !176)
!5031 = !DILocation(line: 430, column: 53, scope: !5022)
!5032 = !DILocation(line: 430, column: 65, scope: !5022)
!5033 = !DILocation(line: 431, column: 9, scope: !5022)
!5034 = !DILocation(line: 431, column: 30, scope: !5022)
!5035 = !DILocation(line: 433, column: 24, scope: !5022)
!5036 = !DILocation(line: 433, column: 29, scope: !5022)
!5037 = !DILocation(line: 433, column: 35, scope: !5022)
!5038 = !DILocation(line: 433, column: 45, scope: !5022)
!5039 = !DILocation(line: 433, column: 9, scope: !5022)
!5040 = !DILocation(line: 433, column: 2, scope: !5022)
!5041 = distinct !DISubprogram(name: "dma_pool_alloc", scope: !3, file: !3, line: 404, type: !5042, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5045)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!164, !186, !163, !5044}
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!5045 = !{!5046, !5047, !5048, !5049, !5050, !5051, !5052, !5056, !5057, !5063}
!5046 = !DILocalVariable(name: "pool", arg: 1, scope: !5041, file: !3, line: 404, type: !186)
!5047 = !DILocalVariable(name: "mem_flags", arg: 2, scope: !5041, file: !3, line: 404, type: !163)
!5048 = !DILocalVariable(name: "handle", arg: 3, scope: !5041, file: !3, line: 405, type: !5044)
!5049 = !DILocalVariable(name: "block", scope: !5041, file: !3, line: 407, type: !232)
!5050 = !DILocalVariable(name: "page", scope: !5041, file: !3, line: 408, type: !165)
!5051 = !DILocalVariable(name: "flags", scope: !5041, file: !3, line: 409, type: !162)
!5052 = !DILocalVariable(name: "__dummy", scope: !5053, file: !3, line: 413, type: !162)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 413, column: 2)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 413, column: 2)
!5055 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 413, column: 2)
!5056 = !DILocalVariable(name: "__dummy2", scope: !5053, file: !3, line: 413, type: !162)
!5057 = !DILocalVariable(name: "__dummy", scope: !5058, file: !3, line: 426, type: !162)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 426, column: 3)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 426, column: 3)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 426, column: 3)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 415, column: 14)
!5062 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 415, column: 6)
!5063 = !DILocalVariable(name: "__dummy2", scope: !5058, file: !3, line: 426, type: !162)
!5064 = !DILocation(line: 404, column: 39, scope: !5041)
!5065 = !DILocation(line: 404, column: 51, scope: !5041)
!5066 = !DILocation(line: 405, column: 20, scope: !5041)
!5067 = !DILocation(line: 407, column: 2, scope: !5041)
!5068 = !DILocation(line: 407, column: 20, scope: !5041)
!5069 = !DILocation(line: 408, column: 2, scope: !5041)
!5070 = !DILocation(line: 408, column: 19, scope: !5041)
!5071 = !DILocation(line: 409, column: 2, scope: !5041)
!5072 = !DILocation(line: 409, column: 16, scope: !5041)
!5073 = !DILocation(line: 411, column: 14, scope: !5041)
!5074 = !DILocation(line: 411, column: 2, scope: !5041)
!5075 = !DILocation(line: 413, column: 2, scope: !5041)
!5076 = !DILocation(line: 413, column: 2, scope: !5055)
!5077 = !DILocation(line: 413, column: 2, scope: !5053)
!5078 = !DILocation(line: 413, column: 2, scope: !5054)
!5079 = !DILocation(line: 414, column: 25, scope: !5041)
!5080 = !DILocation(line: 414, column: 10, scope: !5041)
!5081 = !DILocation(line: 414, column: 8, scope: !5041)
!5082 = !DILocation(line: 415, column: 7, scope: !5062)
!5083 = !DILocation(line: 415, column: 6, scope: !5041)
!5084 = !DILocation(line: 420, column: 27, scope: !5061)
!5085 = !DILocation(line: 420, column: 33, scope: !5061)
!5086 = !DILocation(line: 420, column: 39, scope: !5061)
!5087 = !DILocation(line: 420, column: 3, scope: !5061)
!5088 = !DILocation(line: 422, column: 26, scope: !5061)
!5089 = !DILocation(line: 422, column: 32, scope: !5061)
!5090 = !DILocation(line: 422, column: 42, scope: !5061)
!5091 = !DILocation(line: 422, column: 10, scope: !5061)
!5092 = !DILocation(line: 422, column: 8, scope: !5061)
!5093 = !DILocation(line: 423, column: 8, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 423, column: 7)
!5095 = !DILocation(line: 423, column: 7, scope: !5061)
!5096 = !DILocation(line: 424, column: 4, scope: !5094)
!5097 = !DILocation(line: 426, column: 3, scope: !5061)
!5098 = !DILocation(line: 426, column: 3, scope: !5060)
!5099 = !DILocation(line: 426, column: 3, scope: !5058)
!5100 = !DILocation(line: 426, column: 3, scope: !5059)
!5101 = !DILocation(line: 427, column: 24, scope: !5061)
!5102 = !DILocation(line: 427, column: 30, scope: !5061)
!5103 = !DILocation(line: 427, column: 3, scope: !5061)
!5104 = !DILocation(line: 428, column: 26, scope: !5061)
!5105 = !DILocation(line: 428, column: 11, scope: !5061)
!5106 = !DILocation(line: 428, column: 9, scope: !5061)
!5107 = !DILocation(line: 429, column: 2, scope: !5061)
!5108 = !DILocation(line: 430, column: 26, scope: !5041)
!5109 = !DILocation(line: 430, column: 32, scope: !5041)
!5110 = !DILocation(line: 430, column: 38, scope: !5041)
!5111 = !DILocation(line: 430, column: 2, scope: !5041)
!5112 = !DILocation(line: 432, column: 12, scope: !5041)
!5113 = !DILocation(line: 432, column: 19, scope: !5041)
!5114 = !DILocation(line: 432, column: 3, scope: !5041)
!5115 = !DILocation(line: 432, column: 10, scope: !5041)
!5116 = !DILocation(line: 433, column: 19, scope: !5041)
!5117 = !DILocation(line: 433, column: 25, scope: !5041)
!5118 = !DILocation(line: 433, column: 32, scope: !5041)
!5119 = !DILocation(line: 433, column: 2, scope: !5041)
!5120 = !DILocation(line: 434, column: 25, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 434, column: 6)
!5122 = !DILocation(line: 434, column: 6, scope: !5121)
!5123 = !DILocation(line: 434, column: 6, scope: !5041)
!5124 = !DILocation(line: 435, column: 10, scope: !5121)
!5125 = !DILocation(line: 435, column: 20, scope: !5121)
!5126 = !DILocation(line: 435, column: 26, scope: !5121)
!5127 = !DILocation(line: 435, column: 3, scope: !5121)
!5128 = !DILocation(line: 437, column: 9, scope: !5041)
!5129 = !DILocation(line: 437, column: 2, scope: !5041)
!5130 = !DILocation(line: 438, column: 1, scope: !5041)
!5131 = distinct !DISubprogram(name: "might_alloc", scope: !5132, file: !5132, line: 301, type: !5133, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5132 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{null, !163}
!5135 = !{!5136}
!5136 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5131, file: !5132, line: 301, type: !163)
!5137 = !DILocation(line: 301, column: 38, scope: !5131)
!5138 = !DILocation(line: 303, column: 21, scope: !5131)
!5139 = !DILocation(line: 303, column: 2, scope: !5131)
!5140 = !DILocation(line: 304, column: 21, scope: !5131)
!5141 = !DILocation(line: 304, column: 2, scope: !5131)
!5142 = !DILocation(line: 306, column: 2, scope: !5131)
!5143 = !DILocation(line: 306, column: 2, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !5132, line: 306, column: 2)
!5145 = distinct !DILexicalBlock(scope: !5131, file: !5132, line: 306, column: 2)
!5146 = !DILocation(line: 306, column: 2, scope: !5145)
!5147 = !DILocation(line: 306, column: 2, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5144, file: !5132, line: 306, column: 2)
!5149 = !DILocation(line: 307, column: 1, scope: !5131)
!5150 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5151, file: !5151, line: 32, type: !5152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!162, !4865}
!5154 = distinct !DISubprogram(name: "pool_block_pop", scope: !3, file: !3, line: 181, type: !5155, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!232, !186}
!5157 = !{!5158, !5159}
!5158 = !DILocalVariable(name: "pool", arg: 1, scope: !5154, file: !3, line: 181, type: !186)
!5159 = !DILocalVariable(name: "block", scope: !5154, file: !3, line: 183, type: !232)
!5160 = !DILocation(line: 181, column: 58, scope: !5154)
!5161 = !DILocation(line: 183, column: 2, scope: !5154)
!5162 = !DILocation(line: 183, column: 20, scope: !5154)
!5163 = !DILocation(line: 183, column: 28, scope: !5154)
!5164 = !DILocation(line: 183, column: 34, scope: !5154)
!5165 = !DILocation(line: 185, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 185, column: 6)
!5167 = !DILocation(line: 185, column: 6, scope: !5154)
!5168 = !DILocation(line: 186, column: 22, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 185, column: 13)
!5170 = !DILocation(line: 186, column: 29, scope: !5169)
!5171 = !DILocation(line: 186, column: 3, scope: !5169)
!5172 = !DILocation(line: 186, column: 9, scope: !5169)
!5173 = !DILocation(line: 186, column: 20, scope: !5169)
!5174 = !DILocation(line: 187, column: 3, scope: !5169)
!5175 = !DILocation(line: 187, column: 9, scope: !5169)
!5176 = !DILocation(line: 187, column: 18, scope: !5169)
!5177 = !DILocation(line: 188, column: 2, scope: !5169)
!5178 = !DILocation(line: 189, column: 9, scope: !5154)
!5179 = !DILocation(line: 190, column: 1, scope: !5154)
!5180 = !DILocation(line: 189, column: 2, scope: !5154)
!5181 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4862, file: !4862, line: 404, type: !5182, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5184)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{null, !2305, !162}
!5184 = !{!5185, !5186, !5187, !5190}
!5185 = !DILocalVariable(name: "lock", arg: 1, scope: !5181, file: !4862, line: 404, type: !2305)
!5186 = !DILocalVariable(name: "flags", arg: 2, scope: !5181, file: !4862, line: 404, type: !162)
!5187 = !DILocalVariable(name: "__dummy", scope: !5188, file: !4862, line: 406, type: !162)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !4862, line: 406, column: 2)
!5189 = distinct !DILexicalBlock(scope: !5181, file: !4862, line: 406, column: 2)
!5190 = !DILocalVariable(name: "__dummy2", scope: !5188, file: !4862, line: 406, type: !162)
!5191 = !DILocation(line: 404, column: 64, scope: !5181)
!5192 = !DILocation(line: 404, column: 84, scope: !5181)
!5193 = !DILocation(line: 406, column: 2, scope: !5181)
!5194 = !DILocation(line: 406, column: 2, scope: !5188)
!5195 = !DILocation(line: 406, column: 2, scope: !5189)
!5196 = !DILocation(line: 407, column: 1, scope: !5181)
!5197 = distinct !DISubprogram(name: "pool_alloc_page", scope: !3, file: !3, line: 334, type: !5198, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!165, !186, !163}
!5200 = !{!5201, !5202, !5203}
!5201 = !DILocalVariable(name: "pool", arg: 1, scope: !5197, file: !3, line: 334, type: !186)
!5202 = !DILocalVariable(name: "mem_flags", arg: 2, scope: !5197, file: !3, line: 334, type: !163)
!5203 = !DILocalVariable(name: "page", scope: !5197, file: !3, line: 336, type: !165)
!5204 = !DILocation(line: 334, column: 58, scope: !5197)
!5205 = !DILocation(line: 334, column: 70, scope: !5197)
!5206 = !DILocation(line: 336, column: 2, scope: !5197)
!5207 = !DILocation(line: 336, column: 19, scope: !5197)
!5208 = !DILocation(line: 338, column: 32, scope: !5197)
!5209 = !DILocation(line: 338, column: 9, scope: !5197)
!5210 = !DILocation(line: 338, column: 7, scope: !5197)
!5211 = !DILocation(line: 339, column: 7, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 339, column: 6)
!5213 = !DILocation(line: 339, column: 6, scope: !5197)
!5214 = !DILocation(line: 340, column: 3, scope: !5212)
!5215 = !DILocation(line: 342, column: 35, scope: !5197)
!5216 = !DILocation(line: 342, column: 41, scope: !5197)
!5217 = !DILocation(line: 342, column: 46, scope: !5197)
!5218 = !DILocation(line: 342, column: 52, scope: !5197)
!5219 = !DILocation(line: 343, column: 8, scope: !5197)
!5220 = !DILocation(line: 343, column: 14, scope: !5197)
!5221 = !DILocation(line: 343, column: 19, scope: !5197)
!5222 = !DILocation(line: 342, column: 16, scope: !5197)
!5223 = !DILocation(line: 342, column: 2, scope: !5197)
!5224 = !DILocation(line: 342, column: 8, scope: !5197)
!5225 = !DILocation(line: 342, column: 14, scope: !5197)
!5226 = !DILocation(line: 344, column: 7, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 344, column: 6)
!5228 = !DILocation(line: 344, column: 13, scope: !5227)
!5229 = !DILocation(line: 344, column: 6, scope: !5197)
!5230 = !DILocation(line: 345, column: 9, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 344, column: 20)
!5232 = !DILocation(line: 345, column: 3, scope: !5231)
!5233 = !DILocation(line: 346, column: 3, scope: !5231)
!5234 = !DILocation(line: 349, column: 9, scope: !5197)
!5235 = !DILocation(line: 349, column: 2, scope: !5197)
!5236 = !DILocation(line: 350, column: 1, scope: !5197)
!5237 = distinct !DISubprogram(name: "pool_initialise_page", scope: !3, file: !3, line: 300, type: !5238, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{null, !186, !165}
!5240 = !{!5241, !5242, !5243, !5244, !5245, !5246, !5247}
!5241 = !DILocalVariable(name: "pool", arg: 1, scope: !5237, file: !3, line: 300, type: !186)
!5242 = !DILocalVariable(name: "page", arg: 2, scope: !5237, file: !3, line: 300, type: !165)
!5243 = !DILocalVariable(name: "next_boundary", scope: !5237, file: !3, line: 302, type: !7)
!5244 = !DILocalVariable(name: "offset", scope: !5237, file: !3, line: 302, type: !7)
!5245 = !DILocalVariable(name: "block", scope: !5237, file: !3, line: 303, type: !232)
!5246 = !DILocalVariable(name: "first", scope: !5237, file: !3, line: 303, type: !232)
!5247 = !DILocalVariable(name: "last", scope: !5237, file: !3, line: 303, type: !232)
!5248 = !DILocation(line: 300, column: 51, scope: !5237)
!5249 = !DILocation(line: 300, column: 74, scope: !5237)
!5250 = !DILocation(line: 302, column: 2, scope: !5237)
!5251 = !DILocation(line: 302, column: 15, scope: !5237)
!5252 = !DILocation(line: 302, column: 31, scope: !5237)
!5253 = !DILocation(line: 302, column: 37, scope: !5237)
!5254 = !DILocation(line: 302, column: 47, scope: !5237)
!5255 = !DILocation(line: 303, column: 2, scope: !5237)
!5256 = !DILocation(line: 303, column: 20, scope: !5237)
!5257 = !DILocation(line: 303, column: 28, scope: !5237)
!5258 = !DILocation(line: 303, column: 43, scope: !5237)
!5259 = !DILocation(line: 305, column: 17, scope: !5237)
!5260 = !DILocation(line: 305, column: 23, scope: !5237)
!5261 = !DILocation(line: 305, column: 2, scope: !5237)
!5262 = !DILocation(line: 306, column: 2, scope: !5237)
!5263 = !DILocation(line: 306, column: 9, scope: !5237)
!5264 = !DILocation(line: 306, column: 18, scope: !5237)
!5265 = !DILocation(line: 306, column: 24, scope: !5237)
!5266 = !DILocation(line: 306, column: 16, scope: !5237)
!5267 = !DILocation(line: 306, column: 32, scope: !5237)
!5268 = !DILocation(line: 306, column: 38, scope: !5237)
!5269 = !DILocation(line: 306, column: 29, scope: !5237)
!5270 = !DILocation(line: 307, column: 7, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 307, column: 7)
!5272 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 306, column: 50)
!5273 = !DILocation(line: 307, column: 16, scope: !5271)
!5274 = !DILocation(line: 307, column: 22, scope: !5271)
!5275 = !DILocation(line: 307, column: 14, scope: !5271)
!5276 = !DILocation(line: 307, column: 29, scope: !5271)
!5277 = !DILocation(line: 307, column: 27, scope: !5271)
!5278 = !DILocation(line: 307, column: 7, scope: !5272)
!5279 = !DILocation(line: 308, column: 13, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 307, column: 44)
!5281 = !DILocation(line: 308, column: 11, scope: !5280)
!5282 = !DILocation(line: 309, column: 21, scope: !5280)
!5283 = !DILocation(line: 309, column: 27, scope: !5280)
!5284 = !DILocation(line: 309, column: 18, scope: !5280)
!5285 = !DILocation(line: 310, column: 4, scope: !5280)
!5286 = distinct !{!5286, !5262, !5287, !5010, !5011}
!5287 = !DILocation(line: 325, column: 2, scope: !5237)
!5288 = !DILocation(line: 313, column: 11, scope: !5272)
!5289 = !DILocation(line: 313, column: 17, scope: !5272)
!5290 = !DILocation(line: 313, column: 25, scope: !5272)
!5291 = !DILocation(line: 313, column: 23, scope: !5272)
!5292 = !DILocation(line: 313, column: 9, scope: !5272)
!5293 = !DILocation(line: 314, column: 16, scope: !5272)
!5294 = !DILocation(line: 314, column: 22, scope: !5272)
!5295 = !DILocation(line: 314, column: 28, scope: !5272)
!5296 = !DILocation(line: 314, column: 26, scope: !5272)
!5297 = !DILocation(line: 314, column: 3, scope: !5272)
!5298 = !DILocation(line: 314, column: 10, scope: !5272)
!5299 = !DILocation(line: 314, column: 14, scope: !5272)
!5300 = !DILocation(line: 315, column: 3, scope: !5272)
!5301 = !DILocation(line: 315, column: 10, scope: !5272)
!5302 = !DILocation(line: 315, column: 21, scope: !5272)
!5303 = !DILocation(line: 317, column: 7, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 317, column: 7)
!5305 = !DILocation(line: 317, column: 7, scope: !5272)
!5306 = !DILocation(line: 318, column: 23, scope: !5304)
!5307 = !DILocation(line: 318, column: 4, scope: !5304)
!5308 = !DILocation(line: 318, column: 10, scope: !5304)
!5309 = !DILocation(line: 318, column: 21, scope: !5304)
!5310 = !DILocation(line: 320, column: 12, scope: !5304)
!5311 = !DILocation(line: 320, column: 10, scope: !5304)
!5312 = !DILocation(line: 321, column: 10, scope: !5272)
!5313 = !DILocation(line: 321, column: 8, scope: !5272)
!5314 = !DILocation(line: 323, column: 13, scope: !5272)
!5315 = !DILocation(line: 323, column: 19, scope: !5272)
!5316 = !DILocation(line: 323, column: 10, scope: !5272)
!5317 = !DILocation(line: 324, column: 3, scope: !5272)
!5318 = !DILocation(line: 324, column: 9, scope: !5272)
!5319 = !DILocation(line: 324, column: 18, scope: !5272)
!5320 = !DILocation(line: 327, column: 21, scope: !5237)
!5321 = !DILocation(line: 327, column: 27, scope: !5237)
!5322 = !DILocation(line: 327, column: 2, scope: !5237)
!5323 = !DILocation(line: 327, column: 8, scope: !5237)
!5324 = !DILocation(line: 327, column: 19, scope: !5237)
!5325 = !DILocation(line: 328, column: 21, scope: !5237)
!5326 = !DILocation(line: 328, column: 2, scope: !5237)
!5327 = !DILocation(line: 328, column: 8, scope: !5237)
!5328 = !DILocation(line: 328, column: 19, scope: !5237)
!5329 = !DILocation(line: 330, column: 12, scope: !5237)
!5330 = !DILocation(line: 330, column: 18, scope: !5237)
!5331 = !DILocation(line: 330, column: 30, scope: !5237)
!5332 = !DILocation(line: 330, column: 36, scope: !5237)
!5333 = !DILocation(line: 330, column: 2, scope: !5237)
!5334 = !DILocation(line: 331, column: 2, scope: !5237)
!5335 = !DILocation(line: 331, column: 8, scope: !5237)
!5336 = !DILocation(line: 331, column: 16, scope: !5237)
!5337 = !DILocation(line: 332, column: 1, scope: !5237)
!5338 = distinct !DISubprogram(name: "pool_check_block", scope: !3, file: !3, line: 164, type: !5339, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{null, !186, !232, !163}
!5341 = !{!5342, !5343, !5344}
!5342 = !DILocalVariable(name: "pool", arg: 1, scope: !5338, file: !3, line: 164, type: !186)
!5343 = !DILocalVariable(name: "block", arg: 2, scope: !5338, file: !3, line: 164, type: !232)
!5344 = !DILocalVariable(name: "mem_flags", arg: 3, scope: !5338, file: !3, line: 165, type: !163)
!5345 = !DILocation(line: 164, column: 47, scope: !5338)
!5346 = !DILocation(line: 164, column: 71, scope: !5338)
!5347 = !DILocation(line: 165, column: 15, scope: !5338)
!5348 = !DILocation(line: 167, column: 1, scope: !5338)
!5349 = distinct !DISubprogram(name: "want_init_on_alloc", scope: !2112, file: !2112, line: 3615, type: !5350, scopeLine: 3616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5352)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!702, !163}
!5352 = !{!5353, !5354, !5357}
!5353 = !DILocalVariable(name: "flags", arg: 1, scope: !5349, file: !2112, line: 3615, type: !163)
!5354 = !DILocalVariable(name: "branch", scope: !5355, file: !2112, line: 3617, type: !702)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !2112, line: 3617, column: 6)
!5356 = distinct !DILexicalBlock(scope: !5349, file: !2112, line: 3617, column: 6)
!5357 = !DILocalVariable(name: "branch", scope: !5358, file: !2112, line: 3617, type: !702)
!5358 = distinct !DILexicalBlock(scope: !5356, file: !2112, line: 3617, column: 6)
!5359 = !DILocation(line: 3615, column: 45, scope: !5349)
!5360 = !DILocation(line: 3617, column: 6, scope: !5349)
!5361 = !DILocation(line: 3617, column: 6, scope: !5355)
!5362 = !DILocation(line: 3617, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5364, file: !2112, line: 3617, column: 6)
!5364 = distinct !DILexicalBlock(scope: !5355, file: !2112, line: 3617, column: 6)
!5365 = !DILocation(line: 3617, column: 6, scope: !5364)
!5366 = !DILocation(line: 3617, column: 6, scope: !5356)
!5367 = !DILocation(line: 3617, column: 6, scope: !5358)
!5368 = !DILocation(line: 3617, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !2112, line: 3617, column: 6)
!5370 = distinct !DILexicalBlock(scope: !5358, file: !2112, line: 3617, column: 6)
!5371 = !DILocation(line: 3617, column: 6, scope: !5370)
!5372 = !DILocation(line: 3619, column: 3, scope: !5356)
!5373 = !DILocation(line: 3620, column: 9, scope: !5349)
!5374 = !DILocation(line: 3620, column: 15, scope: !5349)
!5375 = !DILocation(line: 3620, column: 2, scope: !5349)
!5376 = !DILocation(line: 3621, column: 1, scope: !5349)
!5377 = distinct !DISubprogram(name: "dma_pool_free", scope: !3, file: !3, line: 450, type: !5378, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5380)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{null, !186, !164, !176}
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5390}
!5381 = !DILocalVariable(name: "pool", arg: 1, scope: !5377, file: !3, line: 450, type: !186)
!5382 = !DILocalVariable(name: "vaddr", arg: 2, scope: !5377, file: !3, line: 450, type: !164)
!5383 = !DILocalVariable(name: "dma", arg: 3, scope: !5377, file: !3, line: 450, type: !176)
!5384 = !DILocalVariable(name: "block", scope: !5377, file: !3, line: 452, type: !232)
!5385 = !DILocalVariable(name: "flags", scope: !5377, file: !3, line: 453, type: !162)
!5386 = !DILocalVariable(name: "__dummy", scope: !5387, file: !3, line: 455, type: !162)
!5387 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 455, column: 2)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 455, column: 2)
!5389 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 455, column: 2)
!5390 = !DILocalVariable(name: "__dummy2", scope: !5387, file: !3, line: 455, type: !162)
!5391 = !DILocation(line: 450, column: 37, scope: !5377)
!5392 = !DILocation(line: 450, column: 49, scope: !5377)
!5393 = !DILocation(line: 450, column: 67, scope: !5377)
!5394 = !DILocation(line: 452, column: 2, scope: !5377)
!5395 = !DILocation(line: 452, column: 20, scope: !5377)
!5396 = !DILocation(line: 452, column: 28, scope: !5377)
!5397 = !DILocation(line: 453, column: 2, scope: !5377)
!5398 = !DILocation(line: 453, column: 16, scope: !5377)
!5399 = !DILocation(line: 455, column: 2, scope: !5377)
!5400 = !DILocation(line: 455, column: 2, scope: !5389)
!5401 = !DILocation(line: 455, column: 2, scope: !5387)
!5402 = !DILocation(line: 455, column: 2, scope: !5388)
!5403 = !DILocation(line: 456, column: 22, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 456, column: 6)
!5405 = !DILocation(line: 456, column: 28, scope: !5404)
!5406 = !DILocation(line: 456, column: 35, scope: !5404)
!5407 = !DILocation(line: 456, column: 7, scope: !5404)
!5408 = !DILocation(line: 456, column: 6, scope: !5377)
!5409 = !DILocation(line: 457, column: 19, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 456, column: 41)
!5411 = !DILocation(line: 457, column: 25, scope: !5410)
!5412 = !DILocation(line: 457, column: 32, scope: !5410)
!5413 = !DILocation(line: 457, column: 3, scope: !5410)
!5414 = !DILocation(line: 458, column: 3, scope: !5410)
!5415 = !DILocation(line: 458, column: 9, scope: !5410)
!5416 = !DILocation(line: 458, column: 18, scope: !5410)
!5417 = !DILocation(line: 459, column: 2, scope: !5410)
!5418 = !DILocation(line: 460, column: 26, scope: !5377)
!5419 = !DILocation(line: 460, column: 32, scope: !5377)
!5420 = !DILocation(line: 460, column: 38, scope: !5377)
!5421 = !DILocation(line: 460, column: 2, scope: !5377)
!5422 = !DILocation(line: 461, column: 1, scope: !5377)
!5423 = distinct !DISubprogram(name: "pool_block_err", scope: !3, file: !3, line: 169, type: !5424, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5426)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!702, !186, !164, !176}
!5426 = !{!5427, !5428, !5429}
!5427 = !DILocalVariable(name: "pool", arg: 1, scope: !5423, file: !3, line: 169, type: !186)
!5428 = !DILocalVariable(name: "vaddr", arg: 2, scope: !5423, file: !3, line: 169, type: !164)
!5429 = !DILocalVariable(name: "dma", arg: 3, scope: !5423, file: !3, line: 169, type: !176)
!5430 = !DILocation(line: 169, column: 45, scope: !5423)
!5431 = !DILocation(line: 169, column: 57, scope: !5423)
!5432 = !DILocation(line: 169, column: 75, scope: !5423)
!5433 = !DILocation(line: 171, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 171, column: 6)
!5435 = !DILocation(line: 171, column: 6, scope: !5423)
!5436 = !DILocation(line: 172, column: 10, scope: !5434)
!5437 = !DILocation(line: 172, column: 20, scope: !5434)
!5438 = !DILocation(line: 172, column: 26, scope: !5434)
!5439 = !DILocation(line: 172, column: 3, scope: !5434)
!5440 = !DILocation(line: 173, column: 2, scope: !5423)
!5441 = distinct !DISubprogram(name: "pool_block_push", scope: !3, file: !3, line: 192, type: !5442, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !186, !232, !176}
!5444 = !{!5445, !5446, !5447}
!5445 = !DILocalVariable(name: "pool", arg: 1, scope: !5441, file: !3, line: 192, type: !186)
!5446 = !DILocalVariable(name: "block", arg: 2, scope: !5441, file: !3, line: 192, type: !232)
!5447 = !DILocalVariable(name: "dma", arg: 3, scope: !5441, file: !3, line: 193, type: !176)
!5448 = !DILocation(line: 192, column: 46, scope: !5441)
!5449 = !DILocation(line: 192, column: 70, scope: !5441)
!5450 = !DILocation(line: 193, column: 19, scope: !5441)
!5451 = !DILocation(line: 195, column: 15, scope: !5441)
!5452 = !DILocation(line: 195, column: 2, scope: !5441)
!5453 = !DILocation(line: 195, column: 9, scope: !5441)
!5454 = !DILocation(line: 195, column: 13, scope: !5441)
!5455 = !DILocation(line: 196, column: 22, scope: !5441)
!5456 = !DILocation(line: 196, column: 28, scope: !5441)
!5457 = !DILocation(line: 196, column: 2, scope: !5441)
!5458 = !DILocation(line: 196, column: 9, scope: !5441)
!5459 = !DILocation(line: 196, column: 20, scope: !5441)
!5460 = !DILocation(line: 197, column: 21, scope: !5441)
!5461 = !DILocation(line: 197, column: 2, scope: !5441)
!5462 = !DILocation(line: 197, column: 8, scope: !5441)
!5463 = !DILocation(line: 197, column: 19, scope: !5441)
!5464 = !DILocation(line: 198, column: 1, scope: !5441)
!5465 = distinct !DISubprogram(name: "dmam_pool_create", scope: !3, file: !3, line: 493, type: !4660, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5466)
!5466 = !{!5467, !5468, !5469, !5470, !5471, !5472, !5473}
!5467 = !DILocalVariable(name: "name", arg: 1, scope: !5465, file: !3, line: 493, type: !249)
!5468 = !DILocalVariable(name: "dev", arg: 2, scope: !5465, file: !3, line: 493, type: !241)
!5469 = !DILocalVariable(name: "size", arg: 3, scope: !5465, file: !3, line: 494, type: !157)
!5470 = !DILocalVariable(name: "align", arg: 4, scope: !5465, file: !3, line: 494, type: !157)
!5471 = !DILocalVariable(name: "allocation", arg: 5, scope: !5465, file: !3, line: 494, type: !157)
!5472 = !DILocalVariable(name: "ptr", scope: !5465, file: !3, line: 496, type: !4584)
!5473 = !DILocalVariable(name: "pool", scope: !5465, file: !3, line: 496, type: !186)
!5474 = !DILocation(line: 493, column: 47, scope: !5465)
!5475 = !DILocation(line: 493, column: 68, scope: !5465)
!5476 = !DILocation(line: 494, column: 14, scope: !5465)
!5477 = !DILocation(line: 494, column: 27, scope: !5465)
!5478 = !DILocation(line: 494, column: 41, scope: !5465)
!5479 = !DILocation(line: 496, column: 2, scope: !5465)
!5480 = !DILocation(line: 496, column: 20, scope: !5465)
!5481 = !DILocation(line: 496, column: 26, scope: !5465)
!5482 = !DILocation(line: 498, column: 8, scope: !5465)
!5483 = !DILocation(line: 498, column: 6, scope: !5465)
!5484 = !DILocation(line: 499, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 499, column: 6)
!5486 = !DILocation(line: 499, column: 6, scope: !5465)
!5487 = !DILocation(line: 500, column: 3, scope: !5485)
!5488 = !DILocation(line: 502, column: 32, scope: !5465)
!5489 = !DILocation(line: 502, column: 38, scope: !5465)
!5490 = !DILocation(line: 502, column: 43, scope: !5465)
!5491 = !DILocation(line: 502, column: 49, scope: !5465)
!5492 = !DILocation(line: 502, column: 56, scope: !5465)
!5493 = !DILocation(line: 502, column: 16, scope: !5465)
!5494 = !DILocation(line: 502, column: 10, scope: !5465)
!5495 = !DILocation(line: 502, column: 14, scope: !5465)
!5496 = !DILocation(line: 502, column: 7, scope: !5465)
!5497 = !DILocation(line: 503, column: 6, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 503, column: 6)
!5499 = !DILocation(line: 503, column: 6, scope: !5465)
!5500 = !DILocation(line: 504, column: 14, scope: !5498)
!5501 = !DILocation(line: 504, column: 19, scope: !5498)
!5502 = !DILocation(line: 504, column: 3, scope: !5498)
!5503 = !DILocation(line: 506, column: 15, scope: !5498)
!5504 = !DILocation(line: 506, column: 3, scope: !5498)
!5505 = !DILocation(line: 508, column: 9, scope: !5465)
!5506 = !DILocation(line: 508, column: 2, scope: !5465)
!5507 = !DILocation(line: 509, column: 1, scope: !5465)
!5508 = !DISubprogram(name: "__devres_alloc_node", scope: !94, file: !94, line: 274, type: !5509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!164, !5511, !157, !163, !109, !249}
!5511 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !94, line: 271, baseType: !5512)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{null, !241, !164}
!5515 = distinct !DISubprogram(name: "dmam_pool_release", scope: !3, file: !3, line: 467, type: !5513, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5516)
!5516 = !{!5517, !5518, !5519}
!5517 = !DILocalVariable(name: "dev", arg: 1, scope: !5515, file: !3, line: 467, type: !241)
!5518 = !DILocalVariable(name: "res", arg: 2, scope: !5515, file: !3, line: 467, type: !164)
!5519 = !DILocalVariable(name: "pool", scope: !5515, file: !3, line: 469, type: !186)
!5520 = !DILocation(line: 467, column: 46, scope: !5515)
!5521 = !DILocation(line: 467, column: 57, scope: !5515)
!5522 = !DILocation(line: 469, column: 2, scope: !5515)
!5523 = !DILocation(line: 469, column: 19, scope: !5515)
!5524 = !DILocation(line: 469, column: 47, scope: !5515)
!5525 = !DILocation(line: 469, column: 26, scope: !5515)
!5526 = !DILocation(line: 471, column: 19, scope: !5515)
!5527 = !DILocation(line: 471, column: 2, scope: !5515)
!5528 = !DILocation(line: 472, column: 1, scope: !5515)
!5529 = !DISubprogram(name: "devres_add", scope: !94, file: !94, line: 286, type: !5513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5530 = !DISubprogram(name: "devres_free", scope: !94, file: !94, line: 285, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5531 = distinct !DISubprogram(name: "dmam_pool_destroy", scope: !3, file: !3, line: 518, type: !4928, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5532 = !{!5533, !5534, !5535, !5537}
!5533 = !DILocalVariable(name: "pool", arg: 1, scope: !5531, file: !3, line: 518, type: !186)
!5534 = !DILocalVariable(name: "dev", scope: !5531, file: !3, line: 520, type: !241)
!5535 = !DILocalVariable(name: "__ret_warn_on", scope: !5536, file: !3, line: 522, type: !109)
!5536 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 522, column: 2)
!5537 = !DILocalVariable(name: "__flags", scope: !5538, file: !3, line: 522, type: !109)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 522, column: 2)
!5539 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 522, column: 2)
!5540 = !DILocation(line: 518, column: 41, scope: !5531)
!5541 = !DILocation(line: 520, column: 2, scope: !5531)
!5542 = !DILocation(line: 520, column: 17, scope: !5531)
!5543 = !DILocation(line: 520, column: 23, scope: !5531)
!5544 = !DILocation(line: 520, column: 29, scope: !5531)
!5545 = !DILocation(line: 522, column: 2, scope: !5536)
!5546 = !DILocation(line: 522, column: 2, scope: !5539)
!5547 = !DILocation(line: 522, column: 2, scope: !5538)
!5548 = !DILocation(line: 522, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 522, column: 2)
!5550 = !DILocation(line: 522, column: 2, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 522, column: 2)
!5552 = !{i64 2154580992, i64 2154581021, i64 2154581067, i64 2154581125, i64 2154581179, i64 2154581233, i64 2154581288, i64 2154581319, i64 2154581627, i64 2154581633, i64 2154581680, i64 2154581703, i64 2154581729}
!5553 = !DILocation(line: 522, column: 2, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 522, column: 2)
!5555 = !DILocation(line: 522, column: 2, scope: !5531)
!5556 = !DILocation(line: 523, column: 1, scope: !5531)
!5557 = !DISubprogram(name: "devres_release", scope: !94, file: !94, line: 295, type: !5558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!109, !241, !5511, !5560, !164}
!5560 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !94, line: 272, baseType: !5561)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!109, !241, !164, !164}
!5564 = distinct !DISubprogram(name: "dmam_pool_match", scope: !3, file: !3, line: 474, type: !5562, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5565)
!5565 = !{!5566, !5567, !5568}
!5566 = !DILocalVariable(name: "dev", arg: 1, scope: !5564, file: !3, line: 474, type: !241)
!5567 = !DILocalVariable(name: "res", arg: 2, scope: !5564, file: !3, line: 474, type: !164)
!5568 = !DILocalVariable(name: "match_data", arg: 3, scope: !5564, file: !3, line: 474, type: !164)
!5569 = !DILocation(line: 474, column: 43, scope: !5564)
!5570 = !DILocation(line: 474, column: 54, scope: !5564)
!5571 = !DILocation(line: 474, column: 65, scope: !5564)
!5572 = !DILocation(line: 476, column: 30, scope: !5564)
!5573 = !DILocation(line: 476, column: 9, scope: !5564)
!5574 = !DILocation(line: 476, column: 37, scope: !5564)
!5575 = !DILocation(line: 476, column: 34, scope: !5564)
!5576 = !DILocation(line: 476, column: 2, scope: !5564)
!5577 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !4823, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5578)
!5578 = !{!5579, !5580, !5581}
!5579 = !DILocalVariable(name: "size", arg: 1, scope: !5577, file: !147, line: 591, type: !157)
!5580 = !DILocalVariable(name: "flags", arg: 2, scope: !5577, file: !147, line: 591, type: !163)
!5581 = !DILocalVariable(name: "index", scope: !5582, file: !147, line: 594, type: !7)
!5582 = distinct !DILexicalBlock(scope: !5583, file: !147, line: 593, column: 42)
!5583 = distinct !DILexicalBlock(scope: !5577, file: !147, line: 593, column: 6)
!5584 = !DILocation(line: 591, column: 61, scope: !5577)
!5585 = !DILocation(line: 591, column: 73, scope: !5577)
!5586 = !DILocation(line: 593, column: 27, scope: !5583)
!5587 = !DILocation(line: 593, column: 6, scope: !5583)
!5588 = !DILocation(line: 593, column: 33, scope: !5583)
!5589 = !DILocation(line: 593, column: 36, scope: !5583)
!5590 = !DILocation(line: 593, column: 6, scope: !5577)
!5591 = !DILocation(line: 594, column: 3, scope: !5582)
!5592 = !DILocation(line: 594, column: 16, scope: !5582)
!5593 = !DILocation(line: 596, column: 7, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5582, file: !147, line: 596, column: 7)
!5595 = !DILocation(line: 596, column: 12, scope: !5594)
!5596 = !DILocation(line: 596, column: 7, scope: !5582)
!5597 = !DILocation(line: 597, column: 25, scope: !5594)
!5598 = !DILocation(line: 597, column: 31, scope: !5594)
!5599 = !DILocation(line: 597, column: 11, scope: !5594)
!5600 = !DILocation(line: 597, column: 4, scope: !5594)
!5601 = !DILocation(line: 599, column: 11, scope: !5582)
!5602 = !DILocation(line: 599, column: 9, scope: !5582)
!5603 = !DILocation(line: 601, column: 33, scope: !5582)
!5604 = !DILocation(line: 601, column: 40, scope: !5582)
!5605 = !DILocation(line: 601, column: 20, scope: !5582)
!5606 = !DILocation(line: 601, column: 5, scope: !5582)
!5607 = !DILocation(line: 601, column: 51, scope: !5582)
!5608 = !DILocation(line: 602, column: 5, scope: !5582)
!5609 = !DILocation(line: 602, column: 12, scope: !5582)
!5610 = !DILocation(line: 600, column: 10, scope: !5582)
!5611 = !DILocation(line: 600, column: 3, scope: !5582)
!5612 = !DILocation(line: 603, column: 2, scope: !5583)
!5613 = !DILocation(line: 604, column: 19, scope: !5577)
!5614 = !DILocation(line: 604, column: 25, scope: !5577)
!5615 = !DILocation(line: 604, column: 9, scope: !5577)
!5616 = !DILocation(line: 604, column: 2, scope: !5577)
!5617 = !DILocation(line: 605, column: 1, scope: !5577)
!5618 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !4823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5619 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !5620, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!7, !157, !702}
!5622 = !{!5623, !5624}
!5623 = !DILocalVariable(name: "size", arg: 1, scope: !5619, file: !147, line: 444, type: !157)
!5624 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5619, file: !147, line: 445, type: !702)
!5625 = !DILocation(line: 444, column: 60, scope: !5619)
!5626 = !DILocation(line: 445, column: 16, scope: !5619)
!5627 = !DILocation(line: 447, column: 7, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 447, column: 6)
!5629 = !DILocation(line: 447, column: 6, scope: !5619)
!5630 = !DILocation(line: 448, column: 3, scope: !5628)
!5631 = !DILocation(line: 450, column: 6, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 450, column: 6)
!5633 = !DILocation(line: 450, column: 11, scope: !5632)
!5634 = !DILocation(line: 450, column: 6, scope: !5619)
!5635 = !DILocation(line: 451, column: 3, scope: !5632)
!5636 = !DILocation(line: 453, column: 32, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 453, column: 6)
!5638 = !DILocation(line: 453, column: 37, scope: !5637)
!5639 = !DILocation(line: 453, column: 42, scope: !5637)
!5640 = !DILocation(line: 453, column: 45, scope: !5637)
!5641 = !DILocation(line: 453, column: 50, scope: !5637)
!5642 = !DILocation(line: 453, column: 6, scope: !5619)
!5643 = !DILocation(line: 454, column: 3, scope: !5637)
!5644 = !DILocation(line: 455, column: 32, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 455, column: 6)
!5646 = !DILocation(line: 455, column: 37, scope: !5645)
!5647 = !DILocation(line: 455, column: 43, scope: !5645)
!5648 = !DILocation(line: 455, column: 46, scope: !5645)
!5649 = !DILocation(line: 455, column: 51, scope: !5645)
!5650 = !DILocation(line: 455, column: 6, scope: !5619)
!5651 = !DILocation(line: 456, column: 3, scope: !5645)
!5652 = !DILocation(line: 457, column: 6, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 457, column: 6)
!5654 = !DILocation(line: 457, column: 11, scope: !5653)
!5655 = !DILocation(line: 457, column: 6, scope: !5619)
!5656 = !DILocation(line: 457, column: 26, scope: !5653)
!5657 = !DILocation(line: 458, column: 6, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 458, column: 6)
!5659 = !DILocation(line: 458, column: 11, scope: !5658)
!5660 = !DILocation(line: 458, column: 6, scope: !5619)
!5661 = !DILocation(line: 458, column: 26, scope: !5658)
!5662 = !DILocation(line: 459, column: 6, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 459, column: 6)
!5664 = !DILocation(line: 459, column: 11, scope: !5663)
!5665 = !DILocation(line: 459, column: 6, scope: !5619)
!5666 = !DILocation(line: 459, column: 26, scope: !5663)
!5667 = !DILocation(line: 460, column: 6, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 460, column: 6)
!5669 = !DILocation(line: 460, column: 11, scope: !5668)
!5670 = !DILocation(line: 460, column: 6, scope: !5619)
!5671 = !DILocation(line: 460, column: 26, scope: !5668)
!5672 = !DILocation(line: 461, column: 6, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 461, column: 6)
!5674 = !DILocation(line: 461, column: 11, scope: !5673)
!5675 = !DILocation(line: 461, column: 6, scope: !5619)
!5676 = !DILocation(line: 461, column: 26, scope: !5673)
!5677 = !DILocation(line: 462, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 462, column: 6)
!5679 = !DILocation(line: 462, column: 11, scope: !5678)
!5680 = !DILocation(line: 462, column: 6, scope: !5619)
!5681 = !DILocation(line: 462, column: 26, scope: !5678)
!5682 = !DILocation(line: 463, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 463, column: 6)
!5684 = !DILocation(line: 463, column: 11, scope: !5683)
!5685 = !DILocation(line: 463, column: 6, scope: !5619)
!5686 = !DILocation(line: 463, column: 26, scope: !5683)
!5687 = !DILocation(line: 464, column: 6, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 464, column: 6)
!5689 = !DILocation(line: 464, column: 11, scope: !5688)
!5690 = !DILocation(line: 464, column: 6, scope: !5619)
!5691 = !DILocation(line: 464, column: 26, scope: !5688)
!5692 = !DILocation(line: 465, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 465, column: 6)
!5694 = !DILocation(line: 465, column: 11, scope: !5693)
!5695 = !DILocation(line: 465, column: 6, scope: !5619)
!5696 = !DILocation(line: 465, column: 26, scope: !5693)
!5697 = !DILocation(line: 466, column: 6, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 466, column: 6)
!5699 = !DILocation(line: 466, column: 11, scope: !5698)
!5700 = !DILocation(line: 466, column: 6, scope: !5619)
!5701 = !DILocation(line: 466, column: 26, scope: !5698)
!5702 = !DILocation(line: 467, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 467, column: 6)
!5704 = !DILocation(line: 467, column: 11, scope: !5703)
!5705 = !DILocation(line: 467, column: 6, scope: !5619)
!5706 = !DILocation(line: 467, column: 26, scope: !5703)
!5707 = !DILocation(line: 468, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 468, column: 6)
!5709 = !DILocation(line: 468, column: 11, scope: !5708)
!5710 = !DILocation(line: 468, column: 6, scope: !5619)
!5711 = !DILocation(line: 468, column: 26, scope: !5708)
!5712 = !DILocation(line: 469, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 469, column: 6)
!5714 = !DILocation(line: 469, column: 11, scope: !5713)
!5715 = !DILocation(line: 469, column: 6, scope: !5619)
!5716 = !DILocation(line: 469, column: 26, scope: !5713)
!5717 = !DILocation(line: 470, column: 6, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 470, column: 6)
!5719 = !DILocation(line: 470, column: 11, scope: !5718)
!5720 = !DILocation(line: 470, column: 6, scope: !5619)
!5721 = !DILocation(line: 470, column: 26, scope: !5718)
!5722 = !DILocation(line: 471, column: 6, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 471, column: 6)
!5724 = !DILocation(line: 471, column: 11, scope: !5723)
!5725 = !DILocation(line: 471, column: 6, scope: !5619)
!5726 = !DILocation(line: 471, column: 26, scope: !5723)
!5727 = !DILocation(line: 472, column: 6, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 472, column: 6)
!5729 = !DILocation(line: 472, column: 11, scope: !5728)
!5730 = !DILocation(line: 472, column: 6, scope: !5619)
!5731 = !DILocation(line: 472, column: 26, scope: !5728)
!5732 = !DILocation(line: 473, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 473, column: 6)
!5734 = !DILocation(line: 473, column: 11, scope: !5733)
!5735 = !DILocation(line: 473, column: 6, scope: !5619)
!5736 = !DILocation(line: 473, column: 26, scope: !5733)
!5737 = !DILocation(line: 474, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 474, column: 6)
!5739 = !DILocation(line: 474, column: 11, scope: !5738)
!5740 = !DILocation(line: 474, column: 6, scope: !5619)
!5741 = !DILocation(line: 474, column: 27, scope: !5738)
!5742 = !DILocation(line: 475, column: 6, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 475, column: 6)
!5744 = !DILocation(line: 475, column: 11, scope: !5743)
!5745 = !DILocation(line: 475, column: 6, scope: !5619)
!5746 = !DILocation(line: 475, column: 32, scope: !5743)
!5747 = !DILocation(line: 477, column: 50, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5619, file: !147, line: 477, column: 6)
!5749 = !DILocation(line: 477, column: 6, scope: !5619)
!5750 = !DILocation(line: 478, column: 3, scope: !5748)
!5751 = !DILocation(line: 478, column: 3, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5753, file: !147, line: 478, column: 3)
!5753 = distinct !DILexicalBlock(scope: !5748, file: !147, line: 478, column: 3)
!5754 = !{i32 -2141577598}
!5755 = !DILocation(line: 478, column: 3, scope: !5753)
!5756 = !DILocation(line: 480, column: 3, scope: !5748)
!5757 = !DILocation(line: 480, column: 3, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5748, file: !147, line: 480, column: 3)
!5759 = !DILocation(line: 480, column: 3, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5758, file: !147, line: 480, column: 3)
!5761 = !DILocation(line: 480, column: 3, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5758, file: !147, line: 480, column: 3)
!5763 = !{i64 2153389901, i64 2153389930, i64 2153389976, i64 2153390034, i64 2153390088, i64 2153390142, i64 2153390197, i64 2153390228}
!5764 = !DILocation(line: 483, column: 2, scope: !5619)
!5765 = !DILocation(line: 484, column: 1, scope: !5619)
!5766 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !5767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!164, !5769, !163, !157}
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5771, line: 11, flags: DIFlagFwdDecl)
!5771 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5772 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !5773, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5775)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!146, !163, !162}
!5775 = !{!5776, !5777}
!5776 = !DILocalVariable(name: "flags", arg: 1, scope: !5772, file: !147, line: 401, type: !163)
!5777 = !DILocalVariable(name: "caller", arg: 2, scope: !5772, file: !147, line: 401, type: !162)
!5778 = !DILocation(line: 401, column: 67, scope: !5772)
!5779 = !DILocation(line: 401, column: 88, scope: !5772)
!5780 = !DILocation(line: 407, column: 6, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5772, file: !147, line: 407, column: 6)
!5782 = !DILocation(line: 407, column: 6, scope: !5772)
!5783 = !DILocation(line: 413, column: 3, scope: !5781)
!5784 = !DILocation(line: 423, column: 38, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5772, file: !147, line: 423, column: 6)
!5786 = !DILocation(line: 423, column: 44, scope: !5785)
!5787 = !DILocation(line: 423, column: 6, scope: !5772)
!5788 = !DILocation(line: 424, column: 3, scope: !5785)
!5789 = !DILocation(line: 426, column: 3, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5772, file: !147, line: 425, column: 6)
!5791 = !DILocation(line: 429, column: 1, scope: !5772)
!5792 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !4823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5793 = !DISubprogram(name: "__compiletime_assert_229", scope: !147, file: !147, line: 478, type: !987, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5794 = distinct !DISubprogram(name: "__list_add", scope: !4840, file: !4840, line: 146, type: !5795, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5797)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{null, !172, !172, !172}
!5797 = !{!5798, !5799, !5800}
!5798 = !DILocalVariable(name: "new", arg: 1, scope: !5794, file: !4840, line: 146, type: !172)
!5799 = !DILocalVariable(name: "prev", arg: 2, scope: !5794, file: !4840, line: 147, type: !172)
!5800 = !DILocalVariable(name: "next", arg: 3, scope: !5794, file: !4840, line: 148, type: !172)
!5801 = !DILocation(line: 146, column: 49, scope: !5794)
!5802 = !DILocation(line: 147, column: 28, scope: !5794)
!5803 = !DILocation(line: 148, column: 28, scope: !5794)
!5804 = !DILocation(line: 150, column: 24, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5794, file: !4840, line: 150, column: 6)
!5806 = !DILocation(line: 150, column: 29, scope: !5805)
!5807 = !DILocation(line: 150, column: 35, scope: !5805)
!5808 = !DILocation(line: 150, column: 7, scope: !5805)
!5809 = !DILocation(line: 150, column: 6, scope: !5794)
!5810 = !DILocation(line: 151, column: 3, scope: !5805)
!5811 = !DILocation(line: 153, column: 15, scope: !5794)
!5812 = !DILocation(line: 153, column: 2, scope: !5794)
!5813 = !DILocation(line: 153, column: 8, scope: !5794)
!5814 = !DILocation(line: 153, column: 13, scope: !5794)
!5815 = !DILocation(line: 154, column: 14, scope: !5794)
!5816 = !DILocation(line: 154, column: 2, scope: !5794)
!5817 = !DILocation(line: 154, column: 7, scope: !5794)
!5818 = !DILocation(line: 154, column: 12, scope: !5794)
!5819 = !DILocation(line: 155, column: 14, scope: !5794)
!5820 = !DILocation(line: 155, column: 2, scope: !5794)
!5821 = !DILocation(line: 155, column: 7, scope: !5794)
!5822 = !DILocation(line: 155, column: 12, scope: !5794)
!5823 = !DILocation(line: 156, column: 2, scope: !5794)
!5824 = !DILocation(line: 156, column: 2, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5794, file: !4840, line: 156, column: 2)
!5826 = !DILocation(line: 156, column: 2, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5825, file: !4840, line: 156, column: 2)
!5828 = !DILocation(line: 156, column: 2, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5825, file: !4840, line: 156, column: 2)
!5830 = !DILocation(line: 157, column: 1, scope: !5794)
!5831 = distinct !DISubprogram(name: "__list_add_valid", scope: !4840, file: !4840, line: 128, type: !5832, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5834)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!702, !172, !172, !172}
!5834 = !{!5835, !5836, !5837}
!5835 = !DILocalVariable(name: "new", arg: 1, scope: !5831, file: !4840, line: 128, type: !172)
!5836 = !DILocalVariable(name: "prev", arg: 2, scope: !5831, file: !4840, line: 129, type: !172)
!5837 = !DILocalVariable(name: "next", arg: 3, scope: !5831, file: !4840, line: 130, type: !172)
!5838 = !DILocation(line: 128, column: 55, scope: !5831)
!5839 = !DILocation(line: 129, column: 23, scope: !5831)
!5840 = !DILocation(line: 130, column: 23, scope: !5831)
!5841 = !DILocation(line: 132, column: 2, scope: !5831)
!5842 = distinct !DISubprogram(name: "pools_show", scope: !3, file: !3, line: 72, type: !4632, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5843 = !{!5844, !5845, !5846, !5847, !5848, !5849, !5852}
!5844 = !DILocalVariable(name: "dev", arg: 1, scope: !5842, file: !3, line: 72, type: !241)
!5845 = !DILocalVariable(name: "attr", arg: 2, scope: !5842, file: !3, line: 72, type: !4634)
!5846 = !DILocalVariable(name: "buf", arg: 3, scope: !5842, file: !3, line: 72, type: !289)
!5847 = !DILocalVariable(name: "pool", scope: !5842, file: !3, line: 74, type: !186)
!5848 = !DILocalVariable(name: "size", scope: !5842, file: !3, line: 75, type: !7)
!5849 = !DILocalVariable(name: "__mptr", scope: !5850, file: !3, line: 80, type: !164)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 80, column: 2)
!5851 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 80, column: 2)
!5852 = !DILocalVariable(name: "__mptr", scope: !5853, file: !3, line: 80, type: !164)
!5853 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 80, column: 2)
!5854 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 80, column: 2)
!5855 = !DILocation(line: 72, column: 42, scope: !5842)
!5856 = !DILocation(line: 72, column: 72, scope: !5842)
!5857 = !DILocation(line: 72, column: 84, scope: !5842)
!5858 = !DILocation(line: 74, column: 2, scope: !5842)
!5859 = !DILocation(line: 74, column: 19, scope: !5842)
!5860 = !DILocation(line: 75, column: 2, scope: !5842)
!5861 = !DILocation(line: 75, column: 11, scope: !5842)
!5862 = !DILocation(line: 77, column: 20, scope: !5842)
!5863 = !DILocation(line: 77, column: 9, scope: !5842)
!5864 = !DILocation(line: 77, column: 7, scope: !5842)
!5865 = !DILocation(line: 79, column: 2, scope: !5842)
!5866 = !DILocation(line: 80, column: 2, scope: !5850)
!5867 = !DILocation(line: 80, column: 2, scope: !5851)
!5868 = !DILocation(line: 80, column: 2, scope: !5854)
!5869 = !DILocation(line: 82, column: 25, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 80, column: 52)
!5871 = !DILocation(line: 82, column: 30, scope: !5870)
!5872 = !DILocation(line: 83, column: 11, scope: !5870)
!5873 = !DILocation(line: 83, column: 17, scope: !5870)
!5874 = !DILocation(line: 83, column: 23, scope: !5870)
!5875 = !DILocation(line: 83, column: 29, scope: !5870)
!5876 = !DILocation(line: 84, column: 11, scope: !5870)
!5877 = !DILocation(line: 84, column: 17, scope: !5870)
!5878 = !DILocation(line: 84, column: 28, scope: !5870)
!5879 = !DILocation(line: 84, column: 34, scope: !5870)
!5880 = !DILocation(line: 85, column: 11, scope: !5870)
!5881 = !DILocation(line: 85, column: 17, scope: !5870)
!5882 = !DILocation(line: 82, column: 11, scope: !5870)
!5883 = !DILocation(line: 82, column: 8, scope: !5870)
!5884 = !DILocation(line: 86, column: 2, scope: !5870)
!5885 = !DILocation(line: 80, column: 2, scope: !5853)
!5886 = distinct !{!5886, !5867, !5887, !5010, !5011}
!5887 = !DILocation(line: 86, column: 2, scope: !5851)
!5888 = !DILocation(line: 87, column: 2, scope: !5842)
!5889 = !DILocation(line: 89, column: 9, scope: !5842)
!5890 = !DILocation(line: 90, column: 1, scope: !5842)
!5891 = !DILocation(line: 89, column: 2, scope: !5842)
!5892 = !DISubprogram(name: "sysfs_emit", scope: !315, file: !315, line: 357, type: !5893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!109, !289, !249, null}
!5895 = !DISubprogram(name: "sysfs_emit_at", scope: !315, file: !315, line: 359, type: !5896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!109, !289, !109, !249, null}
!5898 = distinct !DISubprogram(name: "__list_del_entry", scope: !4840, file: !4840, line: 213, type: !4841, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5899 = !{!5900}
!5900 = !DILocalVariable(name: "entry", arg: 1, scope: !5898, file: !4840, line: 213, type: !172)
!5901 = !DILocation(line: 213, column: 55, scope: !5898)
!5902 = !DILocation(line: 215, column: 30, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5898, file: !4840, line: 215, column: 6)
!5904 = !DILocation(line: 215, column: 7, scope: !5903)
!5905 = !DILocation(line: 215, column: 6, scope: !5898)
!5906 = !DILocation(line: 216, column: 3, scope: !5903)
!5907 = !DILocation(line: 218, column: 13, scope: !5898)
!5908 = !DILocation(line: 218, column: 20, scope: !5898)
!5909 = !DILocation(line: 218, column: 26, scope: !5898)
!5910 = !DILocation(line: 218, column: 33, scope: !5898)
!5911 = !DILocation(line: 218, column: 2, scope: !5898)
!5912 = !DILocation(line: 219, column: 1, scope: !5898)
!5913 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4840, file: !4840, line: 134, type: !5914, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5916)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!702, !172}
!5916 = !{!5917}
!5917 = !DILocalVariable(name: "entry", arg: 1, scope: !5913, file: !4840, line: 134, type: !172)
!5918 = !DILocation(line: 134, column: 61, scope: !5913)
!5919 = !DILocation(line: 136, column: 2, scope: !5913)
!5920 = distinct !DISubprogram(name: "__list_del", scope: !4840, file: !4840, line: 193, type: !4892, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5921 = !{!5922, !5923}
!5922 = !DILocalVariable(name: "prev", arg: 1, scope: !5920, file: !4840, line: 193, type: !172)
!5923 = !DILocalVariable(name: "next", arg: 2, scope: !5920, file: !4840, line: 193, type: !172)
!5924 = !DILocation(line: 193, column: 50, scope: !5920)
!5925 = !DILocation(line: 193, column: 75, scope: !5920)
!5926 = !DILocation(line: 195, column: 15, scope: !5920)
!5927 = !DILocation(line: 195, column: 2, scope: !5920)
!5928 = !DILocation(line: 195, column: 8, scope: !5920)
!5929 = !DILocation(line: 195, column: 13, scope: !5920)
!5930 = !DILocation(line: 196, column: 2, scope: !5920)
!5931 = !DILocation(line: 196, column: 2, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5920, file: !4840, line: 196, column: 2)
!5933 = !DILocation(line: 196, column: 2, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5932, file: !4840, line: 196, column: 2)
!5935 = !DILocation(line: 196, column: 2, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5932, file: !4840, line: 196, column: 2)
!5937 = !DILocation(line: 197, column: 1, scope: !5920)
!5938 = !DISubprogram(name: "dma_free_attrs", scope: !5023, file: !5023, line: 130, type: !5939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{null, !241, !157, !164, !176, !162}
!5941 = distinct !DISubprogram(name: "fs_reclaim_acquire", scope: !5132, file: !5132, line: 263, type: !5133, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5942 = !{!5943}
!5943 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5941, file: !5132, line: 263, type: !163)
!5944 = !DILocation(line: 263, column: 45, scope: !5941)
!5945 = !DILocation(line: 263, column: 57, scope: !5941)
!5946 = distinct !DISubprogram(name: "fs_reclaim_release", scope: !5132, file: !5132, line: 264, type: !5133, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5947)
!5947 = !{!5948}
!5948 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5946, file: !5132, line: 264, type: !163)
!5949 = !DILocation(line: 264, column: 45, scope: !5946)
!5950 = !DILocation(line: 264, column: 57, scope: !5946)
!5951 = distinct !DISubprogram(name: "gfpflags_allow_blocking", scope: !5952, file: !5952, line: 34, type: !5953, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5956)
!5952 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!702, !5955}
!5955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!5956 = !{!5957}
!5957 = !DILocalVariable(name: "gfp_flags", arg: 1, scope: !5951, file: !5952, line: 34, type: !5955)
!5958 = !DILocation(line: 34, column: 56, scope: !5951)
!5959 = !DILocation(line: 36, column: 12, scope: !5951)
!5960 = !DILocation(line: 36, column: 22, scope: !5951)
!5961 = !DILocation(line: 36, column: 10, scope: !5951)
!5962 = !DILocation(line: 36, column: 9, scope: !5951)
!5963 = !DILocation(line: 36, column: 2, scope: !5951)
!5964 = !DILocation(line: 112, column: 2, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !4648, file: !4649, line: 112, column: 2)
!5966 = !DILocation(line: 112, column: 2, scope: !4648)
!5967 = !DILocation(line: 113, column: 1, scope: !4648)
!5968 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5151, file: !5151, line: 43, type: !5969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{null, !4865, !162}
!5971 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !5023, file: !5023, line: 423, type: !5972, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5974)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!164, !241, !157, !5044, !163}
!5974 = !{!5975, !5976, !5977, !5978}
!5975 = !DILocalVariable(name: "dev", arg: 1, scope: !5971, file: !5023, line: 423, type: !241)
!5976 = !DILocalVariable(name: "size", arg: 2, scope: !5971, file: !5023, line: 423, type: !157)
!5977 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !5971, file: !5023, line: 424, type: !5044)
!5978 = !DILocalVariable(name: "gfp", arg: 4, scope: !5971, file: !5023, line: 424, type: !163)
!5979 = !DILocation(line: 423, column: 55, scope: !5971)
!5980 = !DILocation(line: 423, column: 67, scope: !5971)
!5981 = !DILocation(line: 424, column: 15, scope: !5971)
!5982 = !DILocation(line: 424, column: 33, scope: !5971)
!5983 = !DILocation(line: 426, column: 25, scope: !5971)
!5984 = !DILocation(line: 426, column: 30, scope: !5971)
!5985 = !DILocation(line: 426, column: 36, scope: !5971)
!5986 = !DILocation(line: 426, column: 48, scope: !5971)
!5987 = !DILocation(line: 427, column: 5, scope: !5971)
!5988 = !DILocation(line: 427, column: 9, scope: !5971)
!5989 = !DILocation(line: 427, column: 4, scope: !5971)
!5990 = !DILocation(line: 426, column: 9, scope: !5971)
!5991 = !DILocation(line: 426, column: 2, scope: !5971)
!5992 = !DISubprogram(name: "dma_alloc_attrs", scope: !5023, file: !5023, line: 128, type: !5993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!164, !241, !157, !5044, !163, !162}
!5995 = distinct !DISubprogram(name: "pool_init_page", scope: !3, file: !3, line: 176, type: !5238, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5996)
!5996 = !{!5997, !5998}
!5997 = !DILocalVariable(name: "pool", arg: 1, scope: !5995, file: !3, line: 176, type: !186)
!5998 = !DILocalVariable(name: "page", arg: 2, scope: !5995, file: !3, line: 176, type: !165)
!5999 = !DILocation(line: 176, column: 45, scope: !5995)
!6000 = !DILocation(line: 176, column: 68, scope: !5995)
!6001 = !DILocation(line: 178, column: 1, scope: !5995)
!6002 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !6003, file: !6003, line: 53, type: !6004, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6020)
!6003 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!702, !6006, !6019}
!6006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6007)
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6008, size: 64)
!6008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !951, line: 85, size: 128, elements: !6009)
!6009 = !{!6010, !6011}
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6008, file: !951, line: 86, baseType: !211, size: 32)
!6011 = !DIDerivedType(tag: DW_TAG_member, scope: !6008, file: !951, line: 101, baseType: !6012, size: 64, offset: 64)
!6012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6008, file: !951, line: 101, size: 64, elements: !6013)
!6013 = !{!6014, !6015, !6016}
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6012, file: !951, line: 102, baseType: !162, size: 64)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6012, file: !951, line: 103, baseType: !949, size: 64)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6012, file: !951, line: 104, baseType: !6017, size: 64)
!6017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6018, size: 64)
!6018 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !951, line: 104, flags: DIFlagFwdDecl)
!6019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!6020 = !{!6021, !6022, !6023}
!6021 = !DILocalVariable(name: "key", arg: 1, scope: !6002, file: !6003, line: 53, type: !6006)
!6022 = !DILocalVariable(name: "branch", arg: 2, scope: !6002, file: !6003, line: 53, type: !6019)
!6023 = !DILabel(scope: !6002, name: "l_yes", file: !6003, line: 61)
!6024 = !DILocation(line: 53, column: 79, scope: !6002)
!6025 = !DILocation(line: 53, column: 95, scope: !6002)
!6026 = !DILocation(line: 58, column: 13, scope: !6002)
!6027 = !DILocation(line: 58, column: 24, scope: !6002)
!6028 = !DILocation(line: 55, column: 2, scope: !6002)
!6029 = !{i64 1546027, i64 1546050, i64 2149030797, i64 2149030818, i64 2149030844, i64 2149030877, i64 2149030911, i64 2149030935}
!6030 = !DILocation(line: 60, column: 2, scope: !6002)
!6031 = !DILocation(line: 61, column: 1, scope: !6002)
!6032 = !DILocation(line: 62, column: 2, scope: !6002)
!6033 = !DILocation(line: 63, column: 1, scope: !6002)
!6034 = distinct !DISubprogram(name: "arch_static_branch", scope: !6003, file: !6003, line: 25, type: !6035, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6037)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!702, !6007, !702}
!6037 = !{!6038, !6039, !6040}
!6038 = !DILocalVariable(name: "key", arg: 1, scope: !6034, file: !6003, line: 25, type: !6007)
!6039 = !DILocalVariable(name: "branch", arg: 2, scope: !6034, file: !6003, line: 25, type: !702)
!6040 = !DILabel(scope: !6034, name: "l_yes", file: !6003, line: 33)
!6041 = !DILocation(line: 25, column: 67, scope: !6034)
!6042 = !DILocation(line: 25, column: 77, scope: !6034)
!6043 = !DILocation(line: 30, column: 13, scope: !6034)
!6044 = !DILocation(line: 30, column: 28, scope: !6034)
!6045 = !DILocation(line: 30, column: 26, scope: !6034)
!6046 = !DILocation(line: 27, column: 2, scope: !6034)
!6047 = !{i64 1545417, i64 1545461, i64 2149030144, i64 2149030165, i64 2149030191, i64 2149030224, i64 2149030258, i64 2149030282}
!6048 = !DILocation(line: 32, column: 2, scope: !6034)
!6049 = !DILocation(line: 33, column: 1, scope: !6034)
!6050 = !DILocation(line: 34, column: 2, scope: !6034)
!6051 = !DILocation(line: 35, column: 1, scope: !6034)
!6052 = distinct !DISubprogram(name: "want_init_on_free", scope: !2112, file: !2112, line: 3624, type: !3993, scopeLine: 3625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6053)
!6053 = !{!6054}
!6054 = !DILocalVariable(name: "branch", scope: !6055, file: !2112, line: 3626, type: !702)
!6055 = distinct !DILexicalBlock(scope: !6052, file: !2112, line: 3626, column: 9)
!6056 = !DILocation(line: 3626, column: 9, scope: !6055)
!6057 = !DILocation(line: 3626, column: 9, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6059, file: !2112, line: 3626, column: 9)
!6059 = distinct !DILexicalBlock(scope: !6055, file: !2112, line: 3626, column: 9)
!6060 = !DILocation(line: 3626, column: 9, scope: !6059)
!6061 = !DILocation(line: 3626, column: 9, scope: !6052)
!6062 = !DILocation(line: 3626, column: 2, scope: !6052)
