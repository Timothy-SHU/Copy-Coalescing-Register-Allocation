; ModuleID = 'drivers/i2c/algos/i2c-algo-bit.c'
source_filename = "drivers/i2c/algos/i2c-algo-bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i2c_bit_algo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad i2c_bit_algo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i2c_bit_add_bus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad i2c_bit_add_bus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i2c_bit_add_numbered_bus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad i2c_bit_add_numbered_bus ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, [2 x i64] }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_bit_test = internal constant [22 x i8] c"i2c_algo_bit.bit_test\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@bit_test = internal global i32 0, align 4, !dbg !5570
@__param_bit_test = internal constant %struct.kernel_param { ptr @__param_str_bit_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @bit_test } }, section "__param", align 8, !dbg !5398
@__UNIQUE_ID_bit_testtype334 = internal constant [35 x i8] c"i2c_algo_bit.parmtype=bit_test:int\00", section ".modinfo", align 1, !dbg !5400
@__UNIQUE_ID_bit_test335 = internal constant [76 x i8] c"i2c_algo_bit.parm=bit_test:lines testing - 0 off; 1 report; 2 fail if stuck\00", section ".modinfo", align 1, !dbg !5405
@i2c_bit_algo = hidden constant %struct.i2c_algorithm { ptr @bit_xfer, ptr @bit_xfer_atomic, ptr null, ptr null, ptr @bit_func }, align 8, !dbg !5410
@__UNIQUE_ID___addressable_i2c_bit_algo336 = internal global ptr @i2c_bit_algo, section ".discard.addressable", align 8, !dbg !5544
@__UNIQUE_ID___addressable_i2c_bit_add_bus337 = internal global ptr @i2c_bit_add_bus, section ".discard.addressable", align 8, !dbg !5546
@__UNIQUE_ID___addressable_i2c_bit_add_numbered_bus338 = internal global ptr @i2c_bit_add_numbered_bus, section ".discard.addressable", align 8, !dbg !5548
@__UNIQUE_ID_author339 = internal constant [60 x i8] c"i2c_algo_bit.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1, !dbg !5550
@__UNIQUE_ID_description340 = internal constant [55 x i8] c"i2c_algo_bit.description=I2C-Bus bit-banging algorithm\00", section ".modinfo", align 1, !dbg !5555
@__UNIQUE_ID_file341 = internal constant [49 x i8] c"i2c_algo_bit.file=drivers/i2c/algos/i2c-algo-bit\00", section ".modinfo", align 1, !dbg !5560
@__UNIQUE_ID_license342 = internal constant [25 x i8] c"i2c_algo_bit.license=GPL\00", section ".modinfo", align 1, !dbg !5565
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [31 x i8] c"died at extended address code\0A\00", align 1, !dbg !5572
@.str.1 = private unnamed_addr constant [26 x i8] c"died at 2nd address code\0A\00", align 1, !dbg !5577
@.str.2 = private unnamed_addr constant [31 x i8] c"died at repeated address code\0A\00", align 1, !dbg !5582
@.str.3 = private unnamed_addr constant [38 x i8] c"readbytes: invalid block length (%d)\0A\00", align 1, !dbg !5584
@.str.4 = private unnamed_addr constant [28 x i8] c"readbytes: ack/nak timeout\0A\00", align 1, !dbg !5589
@.str.5 = private unnamed_addr constant [25 x i8] c"sendbytes: NAK bailout.\0A\00", align 1, !dbg !5594
@.str.6 = private unnamed_addr constant [21 x i8] c"sendbytes: error %d\0A\00", align 1, !dbg !5597
@.str.7 = private unnamed_addr constant [34 x i8] c"not flagged for atomic transfers\0A\00", align 1, !dbg !5602
@i2c_bit_quirk_no_clk_stretch = internal constant %struct.i2c_adapter_quirks { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8, !dbg !5655
@.str.8 = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SDA\0A\00", align 1, !dbg !5605
@.str.9 = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SCL\0A\00", align 1, !dbg !5608
@.str.10 = private unnamed_addr constant [23 x i8] c"Bus may be unreliable\0A\00", align 1, !dbg !5610
@.str.11 = private unnamed_addr constant [47 x i8] c"\016%s: SDA is write-only, testing not possible\0A\00", align 1, !dbg !5615
@.str.12 = private unnamed_addr constant [47 x i8] c"\016%s: SCL is write-only, testing not possible\0A\00", align 1, !dbg !5620
@.str.13 = private unnamed_addr constant [45 x i8] c"\014%s: bus seems to be busy (scl=%d, sda=%d)\0A\00", align 1, !dbg !5622
@.str.14 = private unnamed_addr constant [23 x i8] c"\014%s: SDA stuck high!\0A\00", align 1, !dbg !5627
@.str.15 = private unnamed_addr constant [49 x i8] c"\014%s: SCL unexpected low while pulling SDA low!\0A\00", align 1, !dbg !5629
@.str.16 = private unnamed_addr constant [22 x i8] c"\014%s: SDA stuck low!\0A\00", align 1, !dbg !5632
@.str.17 = private unnamed_addr constant [50 x i8] c"\014%s: SCL unexpected low while pulling SDA high!\0A\00", align 1, !dbg !5637
@.str.18 = private unnamed_addr constant [23 x i8] c"\014%s: SCL stuck high!\0A\00", align 1, !dbg !5642
@.str.19 = private unnamed_addr constant [49 x i8] c"\014%s: SDA unexpected low while pulling SCL low!\0A\00", align 1, !dbg !5644
@.str.20 = private unnamed_addr constant [22 x i8] c"\014%s: SCL stuck low!\0A\00", align 1, !dbg !5646
@.str.21 = private unnamed_addr constant [50 x i8] c"\014%s: SDA unexpected low while pulling SCL high!\0A\00", align 1, !dbg !5648
@.str.22 = private unnamed_addr constant [15 x i8] c"\016%s: Test OK\0A\00", align 1, !dbg !5650
@llvm.compiler.used = appending global [10 x ptr] [ptr @__param_bit_test, ptr @__UNIQUE_ID_bit_testtype334, ptr @__UNIQUE_ID_bit_test335, ptr @__UNIQUE_ID___addressable_i2c_bit_algo336, ptr @__UNIQUE_ID___addressable_i2c_bit_add_bus337, ptr @__UNIQUE_ID___addressable_i2c_bit_add_numbered_bus338, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bit_xfer(ptr noundef %i2c_adap, ptr noundef %msgs, i32 noundef %num) #0 align 16 !dbg !5667 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %msgs.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %pmsg = alloca ptr, align 8
  %adap = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %nak_ok = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !5669, metadata !DIExpression()), !dbg !5698
  store ptr %msgs, ptr %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msgs.addr, metadata !5670, metadata !DIExpression()), !dbg !5699
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5671, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmsg) #8, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %pmsg, metadata !5672, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !5673, metadata !DIExpression()), !dbg !5704
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5705
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !5706
  %1 = load ptr, ptr %algo_data, align 8, !dbg !5706
  store ptr %1, ptr %adap, align 8, !dbg !5704
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5694, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5695, metadata !DIExpression()), !dbg !5709
  call void @llvm.lifetime.start.p0(i64 2, ptr %nak_ok) #8, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %nak_ok, metadata !5696, metadata !DIExpression()), !dbg !5711
  %2 = load ptr, ptr %adap, align 8, !dbg !5712
  %pre_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 5, !dbg !5714
  %3 = load ptr, ptr %pre_xfer, align 8, !dbg !5714
  %tobool = icmp ne ptr %3, null, !dbg !5712
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5715

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %adap, align 8, !dbg !5716
  %pre_xfer1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 5, !dbg !5718
  %5 = load ptr, ptr %pre_xfer1, align 8, !dbg !5718
  %6 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5719
  %call = call i32 %5(ptr noundef %6) #9, !dbg !5716
  store i32 %call, ptr %ret, align 4, !dbg !5720
  %7 = load i32, ptr %ret, align 4, !dbg !5721
  %cmp = icmp slt i32 %7, 0, !dbg !5723
  br i1 %cmp, label %if.then2, label %if.end, !dbg !5724

if.then2:                                         ; preds = %if.then
  %8 = load i32, ptr %ret, align 4, !dbg !5725
  store i32 %8, ptr %retval, align 4, !dbg !5726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5726

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5727

if.end3:                                          ; preds = %if.end, %entry
  br label %do.body, !dbg !5728

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !5729

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5729

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %adap, align 8, !dbg !5731
  call void @i2c_start(ptr noundef %9) #9, !dbg !5732
  store i32 0, ptr %i, align 4, !dbg !5733
  br label %for.cond, !dbg !5735

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load i32, ptr %i, align 4, !dbg !5736
  %11 = load i32, ptr %num.addr, align 4, !dbg !5738
  %cmp4 = icmp slt i32 %10, %11, !dbg !5739
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5740

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %msgs.addr, align 8, !dbg !5741
  %13 = load i32, ptr %i, align 4, !dbg !5743
  %idxprom = sext i32 %13 to i64, !dbg !5741
  %arrayidx = getelementptr %struct.i2c_msg, ptr %12, i64 %idxprom, !dbg !5741
  store ptr %arrayidx, ptr %pmsg, align 8, !dbg !5744
  %14 = load ptr, ptr %pmsg, align 8, !dbg !5745
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1, !dbg !5746
  %15 = load i16, ptr %flags, align 2, !dbg !5746
  %conv = zext i16 %15 to i32, !dbg !5745
  %and = and i32 %conv, 4096, !dbg !5747
  %conv5 = trunc i32 %and to i16, !dbg !5745
  store i16 %conv5, ptr %nak_ok, align 2, !dbg !5748
  %16 = load ptr, ptr %pmsg, align 8, !dbg !5749
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1, !dbg !5751
  %17 = load i16, ptr %flags6, align 2, !dbg !5751
  %conv7 = zext i16 %17 to i32, !dbg !5749
  %and8 = and i32 %conv7, 16384, !dbg !5752
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5752
  br i1 %tobool9, label %if.end37, label %if.then10, !dbg !5753

if.then10:                                        ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !dbg !5754
  %tobool11 = icmp ne i32 %18, 0, !dbg !5754
  br i1 %tobool11, label %if.then12, label %if.end27, !dbg !5757

if.then12:                                        ; preds = %if.then10
  %19 = load ptr, ptr %msgs.addr, align 8, !dbg !5758
  %20 = load i32, ptr %i, align 4, !dbg !5761
  %sub = sub i32 %20, 1, !dbg !5762
  %idxprom13 = sext i32 %sub to i64, !dbg !5758
  %arrayidx14 = getelementptr %struct.i2c_msg, ptr %19, i64 %idxprom13, !dbg !5758
  %flags15 = getelementptr inbounds %struct.i2c_msg, ptr %arrayidx14, i32 0, i32 1, !dbg !5763
  %21 = load i16, ptr %flags15, align 2, !dbg !5763
  %conv16 = zext i16 %21 to i32, !dbg !5758
  %and17 = and i32 %conv16, 32768, !dbg !5764
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5764
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !5765

if.then19:                                        ; preds = %if.then12
  br label %do.body20, !dbg !5766

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !5768

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5768

do.end22:                                         ; preds = %do.cond21
  %22 = load ptr, ptr %adap, align 8, !dbg !5770
  call void @i2c_stop(ptr noundef %22) #9, !dbg !5771
  %23 = load ptr, ptr %adap, align 8, !dbg !5772
  call void @i2c_start(ptr noundef %23) #9, !dbg !5773
  br label %if.end26, !dbg !5774

if.else:                                          ; preds = %if.then12
  br label %do.body23, !dbg !5775

do.body23:                                        ; preds = %if.else
  br label %do.cond24, !dbg !5777

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5777

do.end25:                                         ; preds = %do.cond24
  %24 = load ptr, ptr %adap, align 8, !dbg !5779
  call void @i2c_repstart(ptr noundef %24) #9, !dbg !5780
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.end22
  br label %if.end27, !dbg !5781

if.end27:                                         ; preds = %if.end26, %if.then10
  %25 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5782
  %26 = load ptr, ptr %pmsg, align 8, !dbg !5783
  %call28 = call i32 @bit_doAddress(ptr noundef %25, ptr noundef %26) #9, !dbg !5784
  store i32 %call28, ptr %ret, align 4, !dbg !5785
  %27 = load i32, ptr %ret, align 4, !dbg !5786
  %cmp29 = icmp ne i32 %27, 0, !dbg !5788
  br i1 %cmp29, label %land.lhs.true, label %if.end36, !dbg !5789

land.lhs.true:                                    ; preds = %if.end27
  %28 = load i16, ptr %nak_ok, align 2, !dbg !5790
  %tobool31 = icmp ne i16 %28, 0, !dbg !5790
  br i1 %tobool31, label %if.end36, label %if.then32, !dbg !5791

if.then32:                                        ; preds = %land.lhs.true
  br label %do.body33, !dbg !5792

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !5794

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5794

do.end35:                                         ; preds = %do.cond34
  br label %bailout, !dbg !5796

if.end36:                                         ; preds = %land.lhs.true, %if.end27
  br label %if.end37, !dbg !5797

if.end37:                                         ; preds = %if.end36, %for.body
  %29 = load ptr, ptr %pmsg, align 8, !dbg !5798
  %flags38 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1, !dbg !5800
  %30 = load i16, ptr %flags38, align 2, !dbg !5800
  %conv39 = zext i16 %30 to i32, !dbg !5798
  %and40 = and i32 %conv39, 1, !dbg !5801
  %tobool41 = icmp ne i32 %and40, 0, !dbg !5801
  br i1 %tobool41, label %if.then42, label %if.else60, !dbg !5802

if.then42:                                        ; preds = %if.end37
  %31 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5803
  %32 = load ptr, ptr %pmsg, align 8, !dbg !5805
  %call43 = call i32 @readbytes(ptr noundef %31, ptr noundef %32) #9, !dbg !5806
  store i32 %call43, ptr %ret, align 4, !dbg !5807
  %33 = load i32, ptr %ret, align 4, !dbg !5808
  %cmp44 = icmp sge i32 %33, 1, !dbg !5810
  br i1 %cmp44, label %if.then46, label %if.end50, !dbg !5811

if.then46:                                        ; preds = %if.then42
  br label %do.body47, !dbg !5812

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !5813

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5813

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !5813

if.end50:                                         ; preds = %do.end49, %if.then42
  %34 = load i32, ptr %ret, align 4, !dbg !5815
  %35 = load ptr, ptr %pmsg, align 8, !dbg !5817
  %len = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 2, !dbg !5818
  %36 = load i16, ptr %len, align 4, !dbg !5818
  %conv51 = zext i16 %36 to i32, !dbg !5817
  %cmp52 = icmp slt i32 %34, %conv51, !dbg !5819
  br i1 %cmp52, label %if.then54, label %if.end59, !dbg !5820

if.then54:                                        ; preds = %if.end50
  %37 = load i32, ptr %ret, align 4, !dbg !5821
  %cmp55 = icmp sge i32 %37, 0, !dbg !5824
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !5825

if.then57:                                        ; preds = %if.then54
  store i32 -5, ptr %ret, align 4, !dbg !5826
  br label %if.end58, !dbg !5827

if.end58:                                         ; preds = %if.then57, %if.then54
  br label %bailout, !dbg !5828

if.end59:                                         ; preds = %if.end50
  br label %if.end79, !dbg !5829

if.else60:                                        ; preds = %if.end37
  %38 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5830
  %39 = load ptr, ptr %pmsg, align 8, !dbg !5832
  %call61 = call i32 @sendbytes(ptr noundef %38, ptr noundef %39) #9, !dbg !5833
  store i32 %call61, ptr %ret, align 4, !dbg !5834
  %40 = load i32, ptr %ret, align 4, !dbg !5835
  %cmp62 = icmp sge i32 %40, 1, !dbg !5837
  br i1 %cmp62, label %if.then64, label %if.end68, !dbg !5838

if.then64:                                        ; preds = %if.else60
  br label %do.body65, !dbg !5839

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !5840

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !5840

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !5840

if.end68:                                         ; preds = %do.end67, %if.else60
  %41 = load i32, ptr %ret, align 4, !dbg !5842
  %42 = load ptr, ptr %pmsg, align 8, !dbg !5844
  %len69 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 2, !dbg !5845
  %43 = load i16, ptr %len69, align 4, !dbg !5845
  %conv70 = zext i16 %43 to i32, !dbg !5844
  %cmp71 = icmp slt i32 %41, %conv70, !dbg !5846
  br i1 %cmp71, label %if.then73, label %if.end78, !dbg !5847

if.then73:                                        ; preds = %if.end68
  %44 = load i32, ptr %ret, align 4, !dbg !5848
  %cmp74 = icmp sge i32 %44, 0, !dbg !5851
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !5852

if.then76:                                        ; preds = %if.then73
  store i32 -5, ptr %ret, align 4, !dbg !5853
  br label %if.end77, !dbg !5854

if.end77:                                         ; preds = %if.then76, %if.then73
  br label %bailout, !dbg !5855

if.end78:                                         ; preds = %if.end68
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end59
  br label %for.inc, !dbg !5856

for.inc:                                          ; preds = %if.end79
  %45 = load i32, ptr %i, align 4, !dbg !5857
  %inc = add i32 %45, 1, !dbg !5857
  store i32 %inc, ptr %i, align 4, !dbg !5857
  br label %for.cond, !dbg !5858, !llvm.loop !5859

for.end:                                          ; preds = %for.cond
  %46 = load i32, ptr %i, align 4, !dbg !5863
  store i32 %46, ptr %ret, align 4, !dbg !5864
  br label %bailout, !dbg !5865

bailout:                                          ; preds = %for.end, %if.end77, %if.end58, %do.end35
  call void @llvm.dbg.label(metadata !5697), !dbg !5866
  br label %do.body80, !dbg !5867

do.body80:                                        ; preds = %bailout
  br label %do.cond81, !dbg !5868

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !5868

do.end82:                                         ; preds = %do.cond81
  %47 = load ptr, ptr %adap, align 8, !dbg !5870
  call void @i2c_stop(ptr noundef %47) #9, !dbg !5871
  %48 = load ptr, ptr %adap, align 8, !dbg !5872
  %post_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %48, i32 0, i32 6, !dbg !5874
  %49 = load ptr, ptr %post_xfer, align 8, !dbg !5874
  %tobool83 = icmp ne ptr %49, null, !dbg !5872
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !5875

if.then84:                                        ; preds = %do.end82
  %50 = load ptr, ptr %adap, align 8, !dbg !5876
  %post_xfer85 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %50, i32 0, i32 6, !dbg !5877
  %51 = load ptr, ptr %post_xfer85, align 8, !dbg !5877
  %52 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5878
  call void %51(ptr noundef %52) #9, !dbg !5876
  br label %if.end86, !dbg !5876

if.end86:                                         ; preds = %if.then84, %do.end82
  %53 = load i32, ptr %ret, align 4, !dbg !5879
  store i32 %53, ptr %retval, align 4, !dbg !5880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5880

cleanup:                                          ; preds = %if.end86, %if.then2
  call void @llvm.lifetime.end.p0(i64 2, ptr %nak_ok) #8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmsg) #8, !dbg !5881
  %54 = load i32, ptr %retval, align 4, !dbg !5881
  ret i32 %54, !dbg !5881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bit_xfer_atomic(ptr noundef %i2c_adap, ptr noundef %msgs, i32 noundef %num) #0 align 16 !dbg !5882 {
entry:
  %i2c_adap.addr = alloca ptr, align 8
  %msgs.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %adap = alloca ptr, align 8
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !5884, metadata !DIExpression()), !dbg !5888
  store ptr %msgs, ptr %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msgs.addr, metadata !5885, metadata !DIExpression()), !dbg !5889
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5886, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !5887, metadata !DIExpression()), !dbg !5892
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5893
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !5894
  %1 = load ptr, ptr %algo_data, align 8, !dbg !5894
  store ptr %1, ptr %adap, align 8, !dbg !5892
  %2 = load ptr, ptr %adap, align 8, !dbg !5895
  %can_do_atomic = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 9, !dbg !5897
  %3 = load i8, ptr %can_do_atomic, align 8, !dbg !5897, !range !5898, !noundef !608
  %tobool = trunc i8 %3 to i1, !dbg !5897
  br i1 %tobool, label %if.end, label %if.then, !dbg !5899

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5900

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5902

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5902

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5900
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9, !dbg !5900
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.7) #10, !dbg !5900
  br label %if.end, !dbg !5904

if.end:                                           ; preds = %do.end, %entry
  %5 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !5905
  %6 = load ptr, ptr %msgs.addr, align 8, !dbg !5906
  %7 = load i32, ptr %num.addr, align 4, !dbg !5907
  %call = call i32 @bit_xfer(ptr noundef %5, ptr noundef %6, i32 noundef %7) #9, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !5909
  ret i32 %call, !dbg !5910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bit_func(ptr noundef %adap) #0 align 16 !dbg !5911 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !5913, metadata !DIExpression()), !dbg !5914
  ret i32 268402719, !dbg !5915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i2c_bit_add_bus(ptr noundef %adap) #0 align 16 !dbg !5916 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !5920
  %call = call i32 @__i2c_bit_add_bus(ptr noundef %0, ptr noundef @i2c_add_adapter) #9, !dbg !5921
  ret i32 %call, !dbg !5922
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__i2c_bit_add_bus(ptr noundef %adap, ptr noundef %add_adapter) #0 align 16 !dbg !5923 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca ptr, align 8
  %add_adapter.addr = alloca ptr, align 8
  %bit_adap = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !5927, metadata !DIExpression()), !dbg !5931
  store ptr %add_adapter, ptr %add_adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %add_adapter.addr, metadata !5928, metadata !DIExpression()), !dbg !5932
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit_adap) #8, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %bit_adap, metadata !5929, metadata !DIExpression()), !dbg !5934
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !5935
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !5936
  %1 = load ptr, ptr %algo_data, align 8, !dbg !5936
  store ptr %1, ptr %bit_adap, align 8, !dbg !5934
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5937
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5930, metadata !DIExpression()), !dbg !5938
  %2 = load i32, ptr @bit_test, align 4, !dbg !5939
  %tobool = icmp ne i32 %2, 0, !dbg !5939
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5941

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %adap.addr, align 8, !dbg !5942
  %call = call i32 @test_bus(ptr noundef %3) #9, !dbg !5944
  store i32 %call, ptr %ret, align 4, !dbg !5945
  %4 = load i32, ptr @bit_test, align 4, !dbg !5946
  %cmp = icmp sge i32 %4, 2, !dbg !5948
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5949

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %ret, align 4, !dbg !5950
  %cmp1 = icmp slt i32 %5, 0, !dbg !5951
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5952

if.then2:                                         ; preds = %land.lhs.true
  store i32 -19, ptr %retval, align 4, !dbg !5953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5953

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end3, !dbg !5954

if.end3:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %adap.addr, align 8, !dbg !5955
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2, !dbg !5956
  store ptr @i2c_bit_algo, ptr %algo, align 8, !dbg !5957
  %7 = load ptr, ptr %adap.addr, align 8, !dbg !5958
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 8, !dbg !5959
  store i32 3, ptr %retries, align 4, !dbg !5960
  %8 = load ptr, ptr %bit_adap, align 8, !dbg !5961
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %8, i32 0, i32 4, !dbg !5963
  %9 = load ptr, ptr %getscl, align 8, !dbg !5963
  %cmp4 = icmp eq ptr %9, null, !dbg !5964
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5965

if.then5:                                         ; preds = %if.end3
  %10 = load ptr, ptr %adap.addr, align 8, !dbg !5966
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 17, !dbg !5967
  store ptr @i2c_bit_quirk_no_clk_stretch, ptr %quirks, align 8, !dbg !5968
  br label %if.end6, !dbg !5966

if.end6:                                          ; preds = %if.then5, %if.end3
  %11 = load ptr, ptr %add_adapter.addr, align 8, !dbg !5969
  %12 = load ptr, ptr %adap.addr, align 8, !dbg !5970
  %call7 = call i32 %11(ptr noundef %12) #9, !dbg !5969
  store i32 %call7, ptr %ret, align 4, !dbg !5971
  %13 = load i32, ptr %ret, align 4, !dbg !5972
  %cmp8 = icmp slt i32 %13, 0, !dbg !5974
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5975

if.then9:                                         ; preds = %if.end6
  %14 = load i32, ptr %ret, align 4, !dbg !5976
  store i32 %14, ptr %retval, align 4, !dbg !5977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5977

if.end10:                                         ; preds = %if.end6
  %15 = load ptr, ptr %bit_adap, align 8, !dbg !5978
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %15, i32 0, i32 3, !dbg !5980
  %16 = load ptr, ptr %getsda, align 8, !dbg !5980
  %cmp11 = icmp eq ptr %16, null, !dbg !5981
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5982

if.then12:                                        ; preds = %if.end10
  br label %do.body, !dbg !5983

do.body:                                          ; preds = %if.then12
  br label %do.cond, !dbg !5985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5985

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %adap.addr, align 8, !dbg !5983
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9, !dbg !5983
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.8) #10, !dbg !5983
  br label %if.end13, !dbg !5987

if.end13:                                         ; preds = %do.end, %if.end10
  %18 = load ptr, ptr %bit_adap, align 8, !dbg !5988
  %getscl14 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %18, i32 0, i32 4, !dbg !5990
  %19 = load ptr, ptr %getscl14, align 8, !dbg !5990
  %cmp15 = icmp eq ptr %19, null, !dbg !5991
  br i1 %cmp15, label %if.then16, label %if.end21, !dbg !5992

if.then16:                                        ; preds = %if.end13
  br label %do.body17, !dbg !5993

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !5995

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5995

do.end19:                                         ; preds = %do.cond18
  %20 = load ptr, ptr %adap.addr, align 8, !dbg !5993
  %dev20 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9, !dbg !5993
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20, ptr noundef @.str.9) #10, !dbg !5993
  br label %if.end21, !dbg !5997

if.end21:                                         ; preds = %do.end19, %if.end13
  %21 = load ptr, ptr %bit_adap, align 8, !dbg !5998
  %getsda22 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %21, i32 0, i32 3, !dbg !6000
  %22 = load ptr, ptr %getsda22, align 8, !dbg !6000
  %cmp23 = icmp eq ptr %22, null, !dbg !6001
  br i1 %cmp23, label %if.then26, label %lor.lhs.false, !dbg !6002

lor.lhs.false:                                    ; preds = %if.end21
  %23 = load ptr, ptr %bit_adap, align 8, !dbg !6003
  %getscl24 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %23, i32 0, i32 4, !dbg !6004
  %24 = load ptr, ptr %getscl24, align 8, !dbg !6004
  %cmp25 = icmp eq ptr %24, null, !dbg !6005
  br i1 %cmp25, label %if.then26, label %if.end31, !dbg !6006

if.then26:                                        ; preds = %lor.lhs.false, %if.end21
  br label %do.body27, !dbg !6007

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !6009

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6009

do.end29:                                         ; preds = %do.cond28
  %25 = load ptr, ptr %adap.addr, align 8, !dbg !6007
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9, !dbg !6007
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef @.str.10) #10, !dbg !6007
  br label %if.end31, !dbg !6011

if.end31:                                         ; preds = %do.end29, %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !6012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6012

cleanup:                                          ; preds = %if.end31, %if.then9, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6013
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit_adap) #8, !dbg !6013
  %26 = load i32, ptr %retval, align 4, !dbg !6013
  ret i32 %26, !dbg !6013
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i2c_bit_add_numbered_bus(ptr noundef %adap) #0 align 16 !dbg !6014 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6018
  %call = call i32 @__i2c_bit_add_bus(ptr noundef %0, ptr noundef @i2c_add_numbered_adapter) #9, !dbg !6019
  ret i32 %call, !dbg !6020
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i2c_start(ptr noundef %adap) #0 align 16 !dbg !6021 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6025, metadata !DIExpression()), !dbg !6026
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6027
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 1, !dbg !6027
  %1 = load ptr, ptr %setsda, align 8, !dbg !6027
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6027
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 0, !dbg !6027
  %3 = load ptr, ptr %data, align 8, !dbg !6027
  call void %1(ptr noundef %3, i32 noundef 0) #9, !dbg !6027
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6028
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7, !dbg !6028
  %5 = load i32, ptr %udelay, align 8, !dbg !6028
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !6028
  br i1 %6, label %if.then, label %if.else4, !dbg !6031

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %adap.addr, align 8, !dbg !6032
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 7, !dbg !6032
  %8 = load i32, ptr %udelay1, align 8, !dbg !6032
  %div = sdiv i32 %8, 20000, !dbg !6032
  %cmp = icmp sge i32 %div, 1, !dbg !6032
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6035

if.then2:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6032
  br label %if.end, !dbg !6032

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6032
  %udelay3 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 7, !dbg !6032
  %10 = load i32, ptr %udelay3, align 8, !dbg !6032
  %conv = sext i32 %10 to i64, !dbg !6032
  %mul = mul i64 %conv, 4295, !dbg !6032
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6032
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !6035

if.else4:                                         ; preds = %entry
  %11 = load ptr, ptr %adap.addr, align 8, !dbg !6036
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 7, !dbg !6036
  %12 = load i32, ptr %udelay5, align 8, !dbg !6036
  %conv6 = sext i32 %12 to i64, !dbg !6036
  call void @__udelay(i64 noundef %conv6) #9, !dbg !6036
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  %13 = load ptr, ptr %adap.addr, align 8, !dbg !6038
  call void @scllo(ptr noundef %13) #9, !dbg !6039
  ret void, !dbg !6040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i2c_stop(ptr noundef %adap) #0 align 16 !dbg !6041 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6045
  call void @sdalo(ptr noundef %0) #9, !dbg !6046
  %1 = load ptr, ptr %adap.addr, align 8, !dbg !6047
  %call = call i32 @sclhi(ptr noundef %1) #9, !dbg !6048
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6049
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 1, !dbg !6049
  %3 = load ptr, ptr %setsda, align 8, !dbg !6049
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6049
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 0, !dbg !6049
  %5 = load ptr, ptr %data, align 8, !dbg !6049
  call void %3(ptr noundef %5, i32 noundef 1) #9, !dbg !6049
  %6 = load ptr, ptr %adap.addr, align 8, !dbg !6050
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %6, i32 0, i32 7, !dbg !6050
  %7 = load i32, ptr %udelay, align 8, !dbg !6050
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !6050
  br i1 %8, label %if.then, label %if.else4, !dbg !6053

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6054
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 7, !dbg !6054
  %10 = load i32, ptr %udelay1, align 8, !dbg !6054
  %div = sdiv i32 %10, 20000, !dbg !6054
  %cmp = icmp sge i32 %div, 1, !dbg !6054
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6057

if.then2:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6054
  br label %if.end, !dbg !6054

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %adap.addr, align 8, !dbg !6054
  %udelay3 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 7, !dbg !6054
  %12 = load i32, ptr %udelay3, align 8, !dbg !6054
  %conv = sext i32 %12 to i64, !dbg !6054
  %mul = mul i64 %conv, 4295, !dbg !6054
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6054
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !6057

if.else4:                                         ; preds = %entry
  %13 = load ptr, ptr %adap.addr, align 8, !dbg !6058
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %13, i32 0, i32 7, !dbg !6058
  %14 = load i32, ptr %udelay5, align 8, !dbg !6058
  %conv6 = sext i32 %14 to i64, !dbg !6058
  call void @__udelay(i64 noundef %conv6) #9, !dbg !6058
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  ret void, !dbg !6060
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i2c_repstart(ptr noundef %adap) #0 align 16 !dbg !6061 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6065
  call void @sdahi(ptr noundef %0) #9, !dbg !6066
  %1 = load ptr, ptr %adap.addr, align 8, !dbg !6067
  %call = call i32 @sclhi(ptr noundef %1) #9, !dbg !6068
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6069
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 1, !dbg !6069
  %3 = load ptr, ptr %setsda, align 8, !dbg !6069
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6069
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 0, !dbg !6069
  %5 = load ptr, ptr %data, align 8, !dbg !6069
  call void %3(ptr noundef %5, i32 noundef 0) #9, !dbg !6069
  %6 = load ptr, ptr %adap.addr, align 8, !dbg !6070
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %6, i32 0, i32 7, !dbg !6070
  %7 = load i32, ptr %udelay, align 8, !dbg !6070
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !6070
  br i1 %8, label %if.then, label %if.else4, !dbg !6073

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6074
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 7, !dbg !6074
  %10 = load i32, ptr %udelay1, align 8, !dbg !6074
  %div = sdiv i32 %10, 20000, !dbg !6074
  %cmp = icmp sge i32 %div, 1, !dbg !6074
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6077

if.then2:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6074
  br label %if.end, !dbg !6074

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %adap.addr, align 8, !dbg !6074
  %udelay3 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 7, !dbg !6074
  %12 = load i32, ptr %udelay3, align 8, !dbg !6074
  %conv = sext i32 %12 to i64, !dbg !6074
  %mul = mul i64 %conv, 4295, !dbg !6074
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6074
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !6077

if.else4:                                         ; preds = %entry
  %13 = load ptr, ptr %adap.addr, align 8, !dbg !6078
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %13, i32 0, i32 7, !dbg !6078
  %14 = load i32, ptr %udelay5, align 8, !dbg !6078
  %conv6 = sext i32 %14 to i64, !dbg !6078
  call void @__udelay(i64 noundef %conv6) #9, !dbg !6078
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  %15 = load ptr, ptr %adap.addr, align 8, !dbg !6080
  call void @scllo(ptr noundef %15) #9, !dbg !6081
  ret void, !dbg !6082
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bit_doAddress(ptr noundef %i2c_adap, ptr noundef %msg) #0 align 16 !dbg !6083 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %flags = alloca i16, align 2
  %nak_ok = alloca i16, align 2
  %adap = alloca ptr, align 8
  %addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %retries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6087, metadata !DIExpression()), !dbg !6095
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !6088, metadata !DIExpression()), !dbg !6096
  call void @llvm.lifetime.start.p0(i64 2, ptr %flags) #8, !dbg !6097
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6089, metadata !DIExpression()), !dbg !6098
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !6099
  %flags1 = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 1, !dbg !6100
  %1 = load i16, ptr %flags1, align 2, !dbg !6100
  store i16 %1, ptr %flags, align 2, !dbg !6098
  call void @llvm.lifetime.start.p0(i64 2, ptr %nak_ok) #8, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %nak_ok, metadata !6090, metadata !DIExpression()), !dbg !6102
  %2 = load ptr, ptr %msg.addr, align 8, !dbg !6103
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1, !dbg !6104
  %3 = load i16, ptr %flags2, align 2, !dbg !6104
  %conv = zext i16 %3 to i32, !dbg !6103
  %and = and i32 %conv, 4096, !dbg !6105
  %conv3 = trunc i32 %and to i16, !dbg !6103
  store i16 %conv3, ptr %nak_ok, align 2, !dbg !6102
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6091, metadata !DIExpression()), !dbg !6107
  %4 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6108
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 3, !dbg !6109
  %5 = load ptr, ptr %algo_data, align 8, !dbg !6109
  store ptr %5, ptr %adap, align 8, !dbg !6107
  call void @llvm.lifetime.start.p0(i64 1, ptr %addr) #8, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6092, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6093, metadata !DIExpression()), !dbg !6113
  call void @llvm.lifetime.start.p0(i64 4, ptr %retries) #8, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %retries, metadata !6094, metadata !DIExpression()), !dbg !6114
  %6 = load i16, ptr %nak_ok, align 2, !dbg !6115
  %conv4 = zext i16 %6 to i32, !dbg !6115
  %tobool = icmp ne i32 %conv4, 0, !dbg !6115
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6115

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6115

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6116
  %retries5 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 8, !dbg !6117
  %8 = load i32, ptr %retries5, align 4, !dbg !6117
  br label %cond.end, !dbg !6115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %8, %cond.false ], !dbg !6115
  store i32 %cond, ptr %retries, align 4, !dbg !6118
  %9 = load i16, ptr %flags, align 2, !dbg !6119
  %conv6 = zext i16 %9 to i32, !dbg !6119
  %and7 = and i32 %conv6, 16, !dbg !6121
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6121
  br i1 %tobool8, label %if.then, label %if.else, !dbg !6122

if.then:                                          ; preds = %cond.end
  %10 = load ptr, ptr %msg.addr, align 8, !dbg !6123
  %addr9 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 0, !dbg !6125
  %11 = load i16, ptr %addr9, align 8, !dbg !6125
  %conv10 = zext i16 %11 to i32, !dbg !6123
  %shr = ashr i32 %conv10, 7, !dbg !6126
  %and11 = and i32 %shr, 6, !dbg !6127
  %or = or i32 240, %and11, !dbg !6128
  %conv12 = trunc i32 %or to i8, !dbg !6129
  store i8 %conv12, ptr %addr, align 1, !dbg !6130
  br label %do.body, !dbg !6131

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6132

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6134
  %13 = load i8, ptr %addr, align 1, !dbg !6135
  %14 = load i32, ptr %retries, align 4, !dbg !6136
  %call = call i32 @try_address(ptr noundef %12, i8 noundef zeroext %13, i32 noundef %14) #9, !dbg !6137
  store i32 %call, ptr %ret, align 4, !dbg !6138
  %15 = load i32, ptr %ret, align 4, !dbg !6139
  %cmp = icmp ne i32 %15, 1, !dbg !6141
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6142

land.lhs.true:                                    ; preds = %do.end
  %16 = load i16, ptr %nak_ok, align 2, !dbg !6143
  %tobool14 = icmp ne i16 %16, 0, !dbg !6143
  br i1 %tobool14, label %if.end, label %if.then15, !dbg !6144

if.then15:                                        ; preds = %land.lhs.true
  br label %do.body16, !dbg !6145

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !6148

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6148

do.end18:                                         ; preds = %do.cond17
  %17 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6145
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9, !dbg !6145
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str) #10, !dbg !6145
  store i32 -6, ptr %retval, align 4, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

if.end:                                           ; preds = %land.lhs.true, %do.end
  %18 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6151
  %19 = load ptr, ptr %msg.addr, align 8, !dbg !6152
  %addr19 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 0, !dbg !6153
  %20 = load i16, ptr %addr19, align 8, !dbg !6153
  %conv20 = zext i16 %20 to i32, !dbg !6152
  %and21 = and i32 %conv20, 255, !dbg !6154
  %conv22 = trunc i32 %and21 to i8, !dbg !6152
  %call23 = call i32 @i2c_outb(ptr noundef %18, i8 noundef zeroext %conv22) #9, !dbg !6155
  store i32 %call23, ptr %ret, align 4, !dbg !6156
  %21 = load i32, ptr %ret, align 4, !dbg !6157
  %cmp24 = icmp ne i32 %21, 1, !dbg !6159
  br i1 %cmp24, label %land.lhs.true26, label %if.end33, !dbg !6160

land.lhs.true26:                                  ; preds = %if.end
  %22 = load i16, ptr %nak_ok, align 2, !dbg !6161
  %tobool27 = icmp ne i16 %22, 0, !dbg !6161
  br i1 %tobool27, label %if.end33, label %if.then28, !dbg !6162

if.then28:                                        ; preds = %land.lhs.true26
  br label %do.body29, !dbg !6163

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !6166

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6166

do.end31:                                         ; preds = %do.cond30
  %23 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6163
  %dev32 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9, !dbg !6163
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef @.str.1) #10, !dbg !6163
  store i32 -6, ptr %retval, align 4, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6168

if.end33:                                         ; preds = %land.lhs.true26, %if.end
  %24 = load i16, ptr %flags, align 2, !dbg !6169
  %conv34 = zext i16 %24 to i32, !dbg !6169
  %and35 = and i32 %conv34, 1, !dbg !6171
  %tobool36 = icmp ne i32 %and35, 0, !dbg !6171
  br i1 %tobool36, label %if.then37, label %if.end55, !dbg !6172

if.then37:                                        ; preds = %if.end33
  br label %do.body38, !dbg !6173

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !6175

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6175

do.end40:                                         ; preds = %do.cond39
  %25 = load ptr, ptr %adap, align 8, !dbg !6177
  call void @i2c_repstart(ptr noundef %25) #9, !dbg !6178
  %26 = load i8, ptr %addr, align 1, !dbg !6179
  %conv41 = zext i8 %26 to i32, !dbg !6179
  %or42 = or i32 %conv41, 1, !dbg !6179
  %conv43 = trunc i32 %or42 to i8, !dbg !6179
  store i8 %conv43, ptr %addr, align 1, !dbg !6179
  %27 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6180
  %28 = load i8, ptr %addr, align 1, !dbg !6181
  %29 = load i32, ptr %retries, align 4, !dbg !6182
  %call44 = call i32 @try_address(ptr noundef %27, i8 noundef zeroext %28, i32 noundef %29) #9, !dbg !6183
  store i32 %call44, ptr %ret, align 4, !dbg !6184
  %30 = load i32, ptr %ret, align 4, !dbg !6185
  %cmp45 = icmp ne i32 %30, 1, !dbg !6187
  br i1 %cmp45, label %land.lhs.true47, label %if.end54, !dbg !6188

land.lhs.true47:                                  ; preds = %do.end40
  %31 = load i16, ptr %nak_ok, align 2, !dbg !6189
  %tobool48 = icmp ne i16 %31, 0, !dbg !6189
  br i1 %tobool48, label %if.end54, label %if.then49, !dbg !6190

if.then49:                                        ; preds = %land.lhs.true47
  br label %do.body50, !dbg !6191

do.body50:                                        ; preds = %if.then49
  br label %do.cond51, !dbg !6194

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !6194

do.end52:                                         ; preds = %do.cond51
  %32 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6191
  %dev53 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 9, !dbg !6191
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef @.str.2) #10, !dbg !6191
  store i32 -5, ptr %retval, align 4, !dbg !6196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6196

if.end54:                                         ; preds = %land.lhs.true47, %do.end40
  br label %if.end55, !dbg !6197

if.end55:                                         ; preds = %if.end54, %if.end33
  br label %if.end71, !dbg !6198

if.else:                                          ; preds = %cond.end
  %33 = load ptr, ptr %msg.addr, align 8, !dbg !6199
  %call56 = call zeroext i8 @i2c_8bit_addr_from_msg(ptr noundef %33) #9, !dbg !6201
  store i8 %call56, ptr %addr, align 1, !dbg !6202
  %34 = load i16, ptr %flags, align 2, !dbg !6203
  %conv57 = zext i16 %34 to i32, !dbg !6203
  %and58 = and i32 %conv57, 8192, !dbg !6205
  %tobool59 = icmp ne i32 %and58, 0, !dbg !6205
  br i1 %tobool59, label %if.then60, label %if.end63, !dbg !6206

if.then60:                                        ; preds = %if.else
  %35 = load i8, ptr %addr, align 1, !dbg !6207
  %conv61 = zext i8 %35 to i32, !dbg !6207
  %xor = xor i32 %conv61, 1, !dbg !6207
  %conv62 = trunc i32 %xor to i8, !dbg !6207
  store i8 %conv62, ptr %addr, align 1, !dbg !6207
  br label %if.end63, !dbg !6208

if.end63:                                         ; preds = %if.then60, %if.else
  %36 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6209
  %37 = load i8, ptr %addr, align 1, !dbg !6210
  %38 = load i32, ptr %retries, align 4, !dbg !6211
  %call64 = call i32 @try_address(ptr noundef %36, i8 noundef zeroext %37, i32 noundef %38) #9, !dbg !6212
  store i32 %call64, ptr %ret, align 4, !dbg !6213
  %39 = load i32, ptr %ret, align 4, !dbg !6214
  %cmp65 = icmp ne i32 %39, 1, !dbg !6216
  br i1 %cmp65, label %land.lhs.true67, label %if.end70, !dbg !6217

land.lhs.true67:                                  ; preds = %if.end63
  %40 = load i16, ptr %nak_ok, align 2, !dbg !6218
  %tobool68 = icmp ne i16 %40, 0, !dbg !6218
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !6219

if.then69:                                        ; preds = %land.lhs.true67
  store i32 -6, ptr %retval, align 4, !dbg !6220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6220

if.end70:                                         ; preds = %land.lhs.true67, %if.end63
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end55
  store i32 0, ptr %retval, align 4, !dbg !6221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6221

cleanup:                                          ; preds = %if.end71, %if.then69, %do.end52, %do.end31, %do.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %retries) #8, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 1, ptr %addr) #8, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 2, ptr %nak_ok) #8, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 2, ptr %flags) #8, !dbg !6222
  %41 = load i32, ptr %retval, align 4, !dbg !6222
  ret i32 %41, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readbytes(ptr noundef %i2c_adap, ptr noundef %msg) #0 align 16 !dbg !6223 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %inval = alloca i32, align 4
  %rdcount = alloca i32, align 4
  %temp = alloca ptr, align 8
  %count = alloca i32, align 4
  %flags = alloca i32, align 4
  %adap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6225, metadata !DIExpression()), !dbg !6233
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !6226, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 4, ptr %inval) #8, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %inval, metadata !6227, metadata !DIExpression()), !dbg !6236
  call void @llvm.lifetime.start.p0(i64 4, ptr %rdcount) #8, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %rdcount, metadata !6228, metadata !DIExpression()), !dbg !6238
  store i32 0, ptr %rdcount, align 4, !dbg !6238
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #8, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !6229, metadata !DIExpression()), !dbg !6240
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !6241
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 3, !dbg !6242
  %1 = load ptr, ptr %buf, align 8, !dbg !6242
  store ptr %1, ptr %temp, align 8, !dbg !6240
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #8, !dbg !6243
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6230, metadata !DIExpression()), !dbg !6244
  %2 = load ptr, ptr %msg.addr, align 8, !dbg !6245
  %len = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2, !dbg !6246
  %3 = load i16, ptr %len, align 4, !dbg !6246
  %conv = zext i16 %3 to i32, !dbg !6245
  store i32 %conv, ptr %count, align 4, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #8, !dbg !6247
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6231, metadata !DIExpression()), !dbg !6248
  %4 = load ptr, ptr %msg.addr, align 8, !dbg !6249
  %flags1 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1, !dbg !6250
  %5 = load i16, ptr %flags1, align 2, !dbg !6250
  %conv2 = zext i16 %5 to i32, !dbg !6249
  store i32 %conv2, ptr %flags, align 4, !dbg !6248
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6232, metadata !DIExpression()), !dbg !6252
  %6 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6253
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 3, !dbg !6254
  %7 = load ptr, ptr %algo_data, align 8, !dbg !6254
  store ptr %7, ptr %adap, align 8, !dbg !6252
  %8 = load ptr, ptr %adap, align 8, !dbg !6255
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %8, i32 0, i32 3, !dbg !6257
  %9 = load ptr, ptr %getsda, align 8, !dbg !6257
  %tobool = icmp ne ptr %9, null, !dbg !6255
  br i1 %tobool, label %if.end, label %if.then, !dbg !6258

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !6259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6259

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6260

while.cond:                                       ; preds = %if.end40, %if.end
  %10 = load i32, ptr %count, align 4, !dbg !6261
  %cmp = icmp sgt i32 %10, 0, !dbg !6262
  br i1 %cmp, label %while.body, label %while.end, !dbg !6260

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6263
  %call = call i32 @i2c_inb(ptr noundef %11) #9, !dbg !6265
  store i32 %call, ptr %inval, align 4, !dbg !6266
  %12 = load i32, ptr %inval, align 4, !dbg !6267
  %cmp4 = icmp sge i32 %12, 0, !dbg !6269
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !6270

if.then6:                                         ; preds = %while.body
  %13 = load i32, ptr %inval, align 4, !dbg !6271
  %conv7 = trunc i32 %13 to i8, !dbg !6271
  %14 = load ptr, ptr %temp, align 8, !dbg !6273
  store i8 %conv7, ptr %14, align 1, !dbg !6274
  %15 = load i32, ptr %rdcount, align 4, !dbg !6275
  %inc = add i32 %15, 1, !dbg !6275
  store i32 %inc, ptr %rdcount, align 4, !dbg !6275
  br label %if.end8, !dbg !6276

if.else:                                          ; preds = %while.body
  br label %while.end, !dbg !6277

if.end8:                                          ; preds = %if.then6
  %16 = load ptr, ptr %temp, align 8, !dbg !6279
  %incdec.ptr = getelementptr i8, ptr %16, i32 1, !dbg !6279
  store ptr %incdec.ptr, ptr %temp, align 8, !dbg !6279
  %17 = load i32, ptr %count, align 4, !dbg !6280
  %dec = add i32 %17, -1, !dbg !6280
  store i32 %dec, ptr %count, align 4, !dbg !6280
  %18 = load i32, ptr %rdcount, align 4, !dbg !6281
  %cmp9 = icmp eq i32 %18, 1, !dbg !6283
  br i1 %cmp9, label %land.lhs.true, label %if.end28, !dbg !6284

land.lhs.true:                                    ; preds = %if.end8
  %19 = load i32, ptr %flags, align 4, !dbg !6285
  %and = and i32 %19, 1024, !dbg !6286
  %tobool11 = icmp ne i32 %and, 0, !dbg !6286
  br i1 %tobool11, label %if.then12, label %if.end28, !dbg !6287

if.then12:                                        ; preds = %land.lhs.true
  %20 = load i32, ptr %inval, align 4, !dbg !6288
  %cmp13 = icmp sle i32 %20, 0, !dbg !6291
  br i1 %cmp13, label %if.then17, label %lor.lhs.false, !dbg !6292

lor.lhs.false:                                    ; preds = %if.then12
  %21 = load i32, ptr %inval, align 4, !dbg !6293
  %cmp15 = icmp sgt i32 %21, 32, !dbg !6294
  br i1 %cmp15, label %if.then17, label %if.end23, !dbg !6295

if.then17:                                        ; preds = %lor.lhs.false, %if.then12
  %22 = load i32, ptr %flags, align 4, !dbg !6296
  %and18 = and i32 %22, 2048, !dbg !6299
  %tobool19 = icmp ne i32 %and18, 0, !dbg !6299
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !6300

if.then20:                                        ; preds = %if.then17
  %23 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6301
  %call21 = call i32 @acknak(ptr noundef %23, i32 noundef 0) #9, !dbg !6302
  br label %if.end22, !dbg !6302

if.end22:                                         ; preds = %if.then20, %if.then17
  br label %do.body, !dbg !6303

do.body:                                          ; preds = %if.end22
  br label %do.cond, !dbg !6305

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6305

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6303
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9, !dbg !6303
  %25 = load i32, ptr %inval, align 4, !dbg !6303
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.3, i32 noundef %25) #10, !dbg !6303
  store i32 -71, ptr %retval, align 4, !dbg !6307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6307

if.end23:                                         ; preds = %lor.lhs.false
  %26 = load i32, ptr %inval, align 4, !dbg !6308
  %27 = load i32, ptr %count, align 4, !dbg !6309
  %add = add i32 %27, %26, !dbg !6309
  store i32 %add, ptr %count, align 4, !dbg !6309
  %28 = load i32, ptr %inval, align 4, !dbg !6310
  %29 = load ptr, ptr %msg.addr, align 8, !dbg !6311
  %len24 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 2, !dbg !6312
  %30 = load i16, ptr %len24, align 4, !dbg !6313
  %conv25 = zext i16 %30 to i32, !dbg !6313
  %add26 = add i32 %conv25, %28, !dbg !6313
  %conv27 = trunc i32 %add26 to i16, !dbg !6313
  store i16 %conv27, ptr %len24, align 4, !dbg !6313
  br label %if.end28, !dbg !6314

if.end28:                                         ; preds = %if.end23, %land.lhs.true, %if.end8
  br label %do.body29, !dbg !6315

do.body29:                                        ; preds = %if.end28
  br label %do.cond30, !dbg !6316

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6316

do.end31:                                         ; preds = %do.cond30
  %31 = load i32, ptr %flags, align 4, !dbg !6318
  %and32 = and i32 %31, 2048, !dbg !6320
  %tobool33 = icmp ne i32 %and32, 0, !dbg !6320
  br i1 %tobool33, label %if.end40, label %if.then34, !dbg !6321

if.then34:                                        ; preds = %do.end31
  %32 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6322
  %33 = load i32, ptr %count, align 4, !dbg !6324
  %call35 = call i32 @acknak(ptr noundef %32, i32 noundef %33) #9, !dbg !6325
  store i32 %call35, ptr %inval, align 4, !dbg !6326
  %34 = load i32, ptr %inval, align 4, !dbg !6327
  %cmp36 = icmp slt i32 %34, 0, !dbg !6329
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !6330

if.then38:                                        ; preds = %if.then34
  %35 = load i32, ptr %inval, align 4, !dbg !6331
  store i32 %35, ptr %retval, align 4, !dbg !6332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6332

if.end39:                                         ; preds = %if.then34
  br label %if.end40, !dbg !6333

if.end40:                                         ; preds = %if.end39, %do.end31
  br label %while.cond, !dbg !6260, !llvm.loop !6334

while.end:                                        ; preds = %if.else, %while.cond
  %36 = load i32, ptr %rdcount, align 4, !dbg !6336
  store i32 %36, ptr %retval, align 4, !dbg !6337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6337

cleanup:                                          ; preds = %while.end, %if.then38, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 4, ptr %rdcount) #8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 4, ptr %inval) #8, !dbg !6338
  %37 = load i32, ptr %retval, align 4, !dbg !6338
  ret i32 %37, !dbg !6338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sendbytes(ptr noundef %i2c_adap, ptr noundef %msg) #0 align 16 !dbg !6339 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %count = alloca i32, align 4
  %nak_ok = alloca i16, align 2
  %retval3 = alloca i32, align 4
  %wrcount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6341, metadata !DIExpression()), !dbg !6348
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !6342, metadata !DIExpression()), !dbg !6349
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #8, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !6343, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !6352
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 3, !dbg !6353
  %1 = load ptr, ptr %buf, align 8, !dbg !6353
  store ptr %1, ptr %temp, align 8, !dbg !6351
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #8, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6344, metadata !DIExpression()), !dbg !6355
  %2 = load ptr, ptr %msg.addr, align 8, !dbg !6356
  %len = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2, !dbg !6357
  %3 = load i16, ptr %len, align 4, !dbg !6357
  %conv = zext i16 %3 to i32, !dbg !6356
  store i32 %conv, ptr %count, align 4, !dbg !6355
  call void @llvm.lifetime.start.p0(i64 2, ptr %nak_ok) #8, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %nak_ok, metadata !6345, metadata !DIExpression()), !dbg !6359
  %4 = load ptr, ptr %msg.addr, align 8, !dbg !6360
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1, !dbg !6361
  %5 = load i16, ptr %flags, align 2, !dbg !6361
  %conv1 = zext i16 %5 to i32, !dbg !6360
  %and = and i32 %conv1, 4096, !dbg !6362
  %conv2 = trunc i32 %and to i16, !dbg !6360
  store i16 %conv2, ptr %nak_ok, align 2, !dbg !6359
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval3) #8, !dbg !6363
  call void @llvm.dbg.declare(metadata ptr %retval3, metadata !6346, metadata !DIExpression()), !dbg !6364
  call void @llvm.lifetime.start.p0(i64 4, ptr %wrcount) #8, !dbg !6365
  call void @llvm.dbg.declare(metadata ptr %wrcount, metadata !6347, metadata !DIExpression()), !dbg !6366
  store i32 0, ptr %wrcount, align 4, !dbg !6366
  br label %while.cond, !dbg !6367

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %count, align 4, !dbg !6368
  %cmp = icmp sgt i32 %6, 0, !dbg !6369
  br i1 %cmp, label %while.body, label %while.end, !dbg !6367

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6370
  %8 = load ptr, ptr %temp, align 8, !dbg !6372
  %9 = load i8, ptr %8, align 1, !dbg !6373
  %call = call i32 @i2c_outb(ptr noundef %7, i8 noundef zeroext %9) #9, !dbg !6374
  store i32 %call, ptr %retval3, align 4, !dbg !6375
  %10 = load i32, ptr %retval3, align 4, !dbg !6376
  %cmp5 = icmp sgt i32 %10, 0, !dbg !6378
  br i1 %cmp5, label %if.then, label %lor.lhs.false, !dbg !6379

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i16, ptr %nak_ok, align 2, !dbg !6380
  %conv7 = zext i16 %11 to i32, !dbg !6380
  %tobool = icmp ne i32 %conv7, 0, !dbg !6380
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !6381

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load i32, ptr %retval3, align 4, !dbg !6382
  %cmp8 = icmp eq i32 %12, 0, !dbg !6383
  br i1 %cmp8, label %if.then, label %if.else, !dbg !6384

if.then:                                          ; preds = %land.lhs.true, %while.body
  %13 = load i32, ptr %count, align 4, !dbg !6385
  %dec = add i32 %13, -1, !dbg !6385
  store i32 %dec, ptr %count, align 4, !dbg !6385
  %14 = load ptr, ptr %temp, align 8, !dbg !6387
  %incdec.ptr = getelementptr i8, ptr %14, i32 1, !dbg !6387
  store ptr %incdec.ptr, ptr %temp, align 8, !dbg !6387
  %15 = load i32, ptr %wrcount, align 4, !dbg !6388
  %inc = add i32 %15, 1, !dbg !6388
  store i32 %inc, ptr %wrcount, align 4, !dbg !6388
  br label %if.end, !dbg !6389

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %16 = load i32, ptr %retval3, align 4, !dbg !6390
  %cmp10 = icmp eq i32 %16, 0, !dbg !6392
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !6393

if.then12:                                        ; preds = %if.else
  br label %do.body, !dbg !6394

do.body:                                          ; preds = %if.then12
  br label %do.cond, !dbg !6397

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6397

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6394
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9, !dbg !6394
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.5) #10, !dbg !6394
  store i32 -5, ptr %retval, align 4, !dbg !6399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6399

if.else13:                                        ; preds = %if.else
  br label %do.body14, !dbg !6400

do.body14:                                        ; preds = %if.else13
  br label %do.cond15, !dbg !6403

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6403

do.end16:                                         ; preds = %do.cond15
  %18 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6400
  %dev17 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9, !dbg !6400
  %19 = load i32, ptr %retval3, align 4, !dbg !6400
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef @.str.6, i32 noundef %19) #10, !dbg !6400
  %20 = load i32, ptr %retval3, align 4, !dbg !6405
  store i32 %20, ptr %retval, align 4, !dbg !6406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6406

if.end:                                           ; preds = %if.then
  br label %while.cond, !dbg !6367, !llvm.loop !6407

while.end:                                        ; preds = %while.cond
  %21 = load i32, ptr %wrcount, align 4, !dbg !6409
  store i32 %21, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

cleanup:                                          ; preds = %while.end, %do.end16, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %wrcount) #8, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval3) #8, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 2, ptr %nak_ok) #8, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #8, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #8, !dbg !6411
  %22 = load i32, ptr %retval, align 4, !dbg !6411
  ret i32 %22, !dbg !6411
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6412 dso_local void @__bad_udelay() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6414 dso_local void @__const_udelay(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6417 dso_local void @__udelay(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scllo(ptr noundef %adap) #5 align 16 !dbg !6418 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6422
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 2, !dbg !6422
  %1 = load ptr, ptr %setscl, align 8, !dbg !6422
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6422
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 0, !dbg !6422
  %3 = load ptr, ptr %data, align 8, !dbg !6422
  call void %1(ptr noundef %3, i32 noundef 0) #9, !dbg !6422
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6423
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7, !dbg !6423
  %5 = load i32, ptr %udelay, align 8, !dbg !6423
  %div = sdiv i32 %5, 2, !dbg !6423
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !6423
  br i1 %6, label %if.then, label %if.else7, !dbg !6426

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %adap.addr, align 8, !dbg !6427
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 7, !dbg !6427
  %8 = load i32, ptr %udelay1, align 8, !dbg !6427
  %div2 = sdiv i32 %8, 2, !dbg !6427
  %div3 = sdiv i32 %div2, 20000, !dbg !6427
  %cmp = icmp sge i32 %div3, 1, !dbg !6427
  br i1 %cmp, label %if.then4, label %if.else, !dbg !6430

if.then4:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6427
  br label %if.end, !dbg !6427

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6427
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 7, !dbg !6427
  %10 = load i32, ptr %udelay5, align 8, !dbg !6427
  %div6 = sdiv i32 %10, 2, !dbg !6427
  %conv = sext i32 %div6 to i64, !dbg !6427
  %mul = mul i64 %conv, 4295, !dbg !6427
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6427
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end11, !dbg !6430

if.else7:                                         ; preds = %entry
  %11 = load ptr, ptr %adap.addr, align 8, !dbg !6431
  %udelay8 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 7, !dbg !6431
  %12 = load i32, ptr %udelay8, align 8, !dbg !6431
  %div9 = sdiv i32 %12, 2, !dbg !6431
  %conv10 = sext i32 %div9 to i64, !dbg !6431
  call void @__udelay(i64 noundef %conv10) #9, !dbg !6431
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.end
  ret void, !dbg !6433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sdalo(ptr noundef %adap) #5 align 16 !dbg !6434 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6436, metadata !DIExpression()), !dbg !6437
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6438
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 1, !dbg !6438
  %1 = load ptr, ptr %setsda, align 8, !dbg !6438
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6438
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 0, !dbg !6438
  %3 = load ptr, ptr %data, align 8, !dbg !6438
  call void %1(ptr noundef %3, i32 noundef 0) #9, !dbg !6438
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6439
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7, !dbg !6439
  %5 = load i32, ptr %udelay, align 8, !dbg !6439
  %add = add i32 %5, 1, !dbg !6439
  %div = sdiv i32 %add, 2, !dbg !6439
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !6439
  br i1 %6, label %if.then, label %if.else9, !dbg !6442

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %adap.addr, align 8, !dbg !6443
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 7, !dbg !6443
  %8 = load i32, ptr %udelay1, align 8, !dbg !6443
  %add2 = add i32 %8, 1, !dbg !6443
  %div3 = sdiv i32 %add2, 2, !dbg !6443
  %div4 = sdiv i32 %div3, 20000, !dbg !6443
  %cmp = icmp sge i32 %div4, 1, !dbg !6443
  br i1 %cmp, label %if.then5, label %if.else, !dbg !6446

if.then5:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6443
  br label %if.end, !dbg !6443

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6443
  %udelay6 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 7, !dbg !6443
  %10 = load i32, ptr %udelay6, align 8, !dbg !6443
  %add7 = add i32 %10, 1, !dbg !6443
  %div8 = sdiv i32 %add7, 2, !dbg !6443
  %conv = sext i32 %div8 to i64, !dbg !6443
  %mul = mul i64 %conv, 4295, !dbg !6443
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6443
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end14, !dbg !6446

if.else9:                                         ; preds = %entry
  %11 = load ptr, ptr %adap.addr, align 8, !dbg !6447
  %udelay10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 7, !dbg !6447
  %12 = load i32, ptr %udelay10, align 8, !dbg !6447
  %add11 = add i32 %12, 1, !dbg !6447
  %div12 = sdiv i32 %add11, 2, !dbg !6447
  %conv13 = sext i32 %div12 to i64, !dbg !6447
  call void @__udelay(i64 noundef %conv13) #9, !dbg !6447
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.end
  ret void, !dbg !6449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sclhi(ptr noundef %adap) #0 align 16 !dbg !6450 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6454, metadata !DIExpression()), !dbg !6457
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #8, !dbg !6458
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6455, metadata !DIExpression()), !dbg !6459
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6460
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 2, !dbg !6460
  %1 = load ptr, ptr %setscl, align 8, !dbg !6460
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6460
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 0, !dbg !6460
  %3 = load ptr, ptr %data, align 8, !dbg !6460
  call void %1(ptr noundef %3, i32 noundef 1) #9, !dbg !6460
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6461
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 4, !dbg !6463
  %5 = load ptr, ptr %getscl, align 8, !dbg !6463
  %tobool = icmp ne ptr %5, null, !dbg !6461
  br i1 %tobool, label %if.end, label %if.then, !dbg !6464

if.then:                                          ; preds = %entry
  br label %done, !dbg !6465

if.end:                                           ; preds = %entry
  %6 = load volatile i64, ptr @jiffies, align 64, !dbg !6466
  store i64 %6, ptr %start, align 8, !dbg !6467
  br label %while.cond, !dbg !6468

while.cond:                                       ; preds = %if.end12, %if.end
  %7 = load ptr, ptr %adap.addr, align 8, !dbg !6469
  %getscl1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 4, !dbg !6469
  %8 = load ptr, ptr %getscl1, align 8, !dbg !6469
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6469
  %data2 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 0, !dbg !6469
  %10 = load ptr, ptr %data2, align 8, !dbg !6469
  %call = call i32 %8(ptr noundef %10) #9, !dbg !6469
  %tobool3 = icmp ne i32 %call, 0, !dbg !6470
  %lnot = xor i1 %tobool3, true, !dbg !6470
  br i1 %lnot, label %while.body, label %while.end, !dbg !6468

while.body:                                       ; preds = %while.cond
  %11 = load i64, ptr %start, align 8, !dbg !6471
  %12 = load ptr, ptr %adap.addr, align 8, !dbg !6471
  %timeout = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %12, i32 0, i32 8, !dbg !6471
  %13 = load i32, ptr %timeout, align 4, !dbg !6471
  %conv = sext i32 %13 to i64, !dbg !6471
  %add = add i64 %11, %conv, !dbg !6471
  %14 = load volatile i64, ptr @jiffies, align 64, !dbg !6471
  %sub = sub i64 %add, %14, !dbg !6471
  %cmp = icmp slt i64 %sub, 0, !dbg !6471
  br i1 %cmp, label %if.then5, label %if.end12, !dbg !6474

if.then5:                                         ; preds = %while.body
  %15 = load ptr, ptr %adap.addr, align 8, !dbg !6475
  %getscl6 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %15, i32 0, i32 4, !dbg !6475
  %16 = load ptr, ptr %getscl6, align 8, !dbg !6475
  %17 = load ptr, ptr %adap.addr, align 8, !dbg !6475
  %data7 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %17, i32 0, i32 0, !dbg !6475
  %18 = load ptr, ptr %data7, align 8, !dbg !6475
  %call8 = call i32 %16(ptr noundef %18) #9, !dbg !6475
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6475
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6478

if.then10:                                        ; preds = %if.then5
  br label %while.end, !dbg !6479

if.end11:                                         ; preds = %if.then5
  store i32 -110, ptr %retval, align 4, !dbg !6480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6480

if.end12:                                         ; preds = %while.body
  call void @cpu_relax() #9, !dbg !6481
  br label %while.cond, !dbg !6468, !llvm.loop !6482

while.end:                                        ; preds = %if.then10, %while.cond
  br label %done, !dbg !6468

done:                                             ; preds = %while.end, %if.then
  call void @llvm.dbg.label(metadata !6456), !dbg !6484
  %19 = load ptr, ptr %adap.addr, align 8, !dbg !6485
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %19, i32 0, i32 7, !dbg !6485
  %20 = load i32, ptr %udelay, align 8, !dbg !6485
  %21 = call i1 @llvm.is.constant.i32(i32 %20), !dbg !6485
  br i1 %21, label %if.then13, label %if.else21, !dbg !6488

if.then13:                                        ; preds = %done
  %22 = load ptr, ptr %adap.addr, align 8, !dbg !6489
  %udelay14 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %22, i32 0, i32 7, !dbg !6489
  %23 = load i32, ptr %udelay14, align 8, !dbg !6489
  %div = sdiv i32 %23, 20000, !dbg !6489
  %cmp15 = icmp sge i32 %div, 1, !dbg !6489
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !6492

if.then17:                                        ; preds = %if.then13
  call void @__bad_udelay() #9, !dbg !6489
  br label %if.end20, !dbg !6489

if.else:                                          ; preds = %if.then13
  %24 = load ptr, ptr %adap.addr, align 8, !dbg !6489
  %udelay18 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %24, i32 0, i32 7, !dbg !6489
  %25 = load i32, ptr %udelay18, align 8, !dbg !6489
  %conv19 = sext i32 %25 to i64, !dbg !6489
  %mul = mul i64 %conv19, 4295, !dbg !6489
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6489
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  br label %if.end24, !dbg !6492

if.else21:                                        ; preds = %done
  %26 = load ptr, ptr %adap.addr, align 8, !dbg !6493
  %udelay22 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %26, i32 0, i32 7, !dbg !6493
  %27 = load i32, ptr %udelay22, align 8, !dbg !6493
  %conv23 = sext i32 %27 to i64, !dbg !6493
  call void @__udelay(i64 noundef %conv23) #9, !dbg !6493
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end20
  store i32 0, ptr %retval, align 4, !dbg !6495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6495

cleanup:                                          ; preds = %if.end24, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #8, !dbg !6496
  %28 = load i32, ptr %retval, align 4, !dbg !6496
  ret i32 %28, !dbg !6496
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !6497 {
entry:
  call void @rep_nop() #9, !dbg !6499
  ret void, !dbg !6500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !6501 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6502, !srcloc !6503
  ret void, !dbg !6504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sdahi(ptr noundef %adap) #5 align 16 !dbg !6505 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6509
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 1, !dbg !6509
  %1 = load ptr, ptr %setsda, align 8, !dbg !6509
  %2 = load ptr, ptr %adap.addr, align 8, !dbg !6509
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %2, i32 0, i32 0, !dbg !6509
  %3 = load ptr, ptr %data, align 8, !dbg !6509
  call void %1(ptr noundef %3, i32 noundef 1) #9, !dbg !6509
  %4 = load ptr, ptr %adap.addr, align 8, !dbg !6510
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7, !dbg !6510
  %5 = load i32, ptr %udelay, align 8, !dbg !6510
  %add = add i32 %5, 1, !dbg !6510
  %div = sdiv i32 %add, 2, !dbg !6510
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !6510
  br i1 %6, label %if.then, label %if.else9, !dbg !6513

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %adap.addr, align 8, !dbg !6514
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 7, !dbg !6514
  %8 = load i32, ptr %udelay1, align 8, !dbg !6514
  %add2 = add i32 %8, 1, !dbg !6514
  %div3 = sdiv i32 %add2, 2, !dbg !6514
  %div4 = sdiv i32 %div3, 20000, !dbg !6514
  %cmp = icmp sge i32 %div4, 1, !dbg !6514
  br i1 %cmp, label %if.then5, label %if.else, !dbg !6517

if.then5:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6514
  br label %if.end, !dbg !6514

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %adap.addr, align 8, !dbg !6514
  %udelay6 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 7, !dbg !6514
  %10 = load i32, ptr %udelay6, align 8, !dbg !6514
  %add7 = add i32 %10, 1, !dbg !6514
  %div8 = sdiv i32 %add7, 2, !dbg !6514
  %conv = sext i32 %div8 to i64, !dbg !6514
  %mul = mul i64 %conv, 4295, !dbg !6514
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6514
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end14, !dbg !6517

if.else9:                                         ; preds = %entry
  %11 = load ptr, ptr %adap.addr, align 8, !dbg !6518
  %udelay10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 7, !dbg !6518
  %12 = load i32, ptr %udelay10, align 8, !dbg !6518
  %add11 = add i32 %12, 1, !dbg !6518
  %div12 = sdiv i32 %add11, 2, !dbg !6518
  %conv13 = sext i32 %div12 to i64, !dbg !6518
  call void @__udelay(i64 noundef %conv13) #9, !dbg !6518
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.end
  ret void, !dbg !6520
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_address(ptr noundef %i2c_adap, i8 noundef zeroext %addr, i32 noundef %retries) #0 align 16 !dbg !6521 {
entry:
  %i2c_adap.addr = alloca ptr, align 8
  %addr.addr = alloca i8, align 1
  %retries.addr = alloca i32, align 4
  %adap = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6525, metadata !DIExpression()), !dbg !6531
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6526, metadata !DIExpression()), !dbg !6532
  store i32 %retries, ptr %retries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %retries.addr, metadata !6527, metadata !DIExpression()), !dbg !6533
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6528, metadata !DIExpression()), !dbg !6535
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6536
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !6537
  %1 = load ptr, ptr %algo_data, align 8, !dbg !6537
  store ptr %1, ptr %adap, align 8, !dbg !6535
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6529, metadata !DIExpression()), !dbg !6539
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6530, metadata !DIExpression()), !dbg !6540
  store i32 0, ptr %ret, align 4, !dbg !6540
  store i32 0, ptr %i, align 4, !dbg !6541
  br label %for.cond, !dbg !6543

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6544
  %3 = load i32, ptr %retries.addr, align 4, !dbg !6546
  %cmp = icmp sle i32 %2, %3, !dbg !6547
  br i1 %cmp, label %for.body, label %for.end, !dbg !6548

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6549
  %5 = load i8, ptr %addr.addr, align 1, !dbg !6551
  %call = call i32 @i2c_outb(ptr noundef %4, i8 noundef zeroext %5) #9, !dbg !6552
  store i32 %call, ptr %ret, align 4, !dbg !6553
  %6 = load i32, ptr %ret, align 4, !dbg !6554
  %cmp1 = icmp eq i32 %6, 1, !dbg !6556
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !6557

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !6558
  %8 = load i32, ptr %retries.addr, align 4, !dbg !6559
  %cmp2 = icmp eq i32 %7, %8, !dbg !6560
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6561

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !6562

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !6563

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6564

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6564

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %adap, align 8, !dbg !6566
  call void @i2c_stop(ptr noundef %9) #9, !dbg !6567
  %10 = load ptr, ptr %adap, align 8, !dbg !6568
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %10, i32 0, i32 7, !dbg !6568
  %11 = load i32, ptr %udelay, align 8, !dbg !6568
  %12 = call i1 @llvm.is.constant.i32(i32 %11), !dbg !6568
  br i1 %12, label %if.then3, label %if.else9, !dbg !6571

if.then3:                                         ; preds = %do.end
  %13 = load ptr, ptr %adap, align 8, !dbg !6572
  %udelay4 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %13, i32 0, i32 7, !dbg !6572
  %14 = load i32, ptr %udelay4, align 8, !dbg !6572
  %div = sdiv i32 %14, 20000, !dbg !6572
  %cmp5 = icmp sge i32 %div, 1, !dbg !6572
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !6575

if.then6:                                         ; preds = %if.then3
  call void @__bad_udelay() #9, !dbg !6572
  br label %if.end8, !dbg !6572

if.else:                                          ; preds = %if.then3
  %15 = load ptr, ptr %adap, align 8, !dbg !6572
  %udelay7 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %15, i32 0, i32 7, !dbg !6572
  %16 = load i32, ptr %udelay7, align 8, !dbg !6572
  %conv = sext i32 %16 to i64, !dbg !6572
  %mul = mul i64 %conv, 4295, !dbg !6572
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6572
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  br label %if.end12, !dbg !6575

if.else9:                                         ; preds = %do.end
  %17 = load ptr, ptr %adap, align 8, !dbg !6576
  %udelay10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %17, i32 0, i32 7, !dbg !6576
  %18 = load i32, ptr %udelay10, align 8, !dbg !6576
  %conv11 = sext i32 %18 to i64, !dbg !6576
  call void @__udelay(i64 noundef %conv11) #9, !dbg !6576
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.end8
  call void @yield() #9, !dbg !6578
  br label %do.body13, !dbg !6579

do.body13:                                        ; preds = %if.end12
  br label %do.cond14, !dbg !6580

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6580

do.end15:                                         ; preds = %do.cond14
  %19 = load ptr, ptr %adap, align 8, !dbg !6582
  call void @i2c_start(ptr noundef %19) #9, !dbg !6583
  br label %for.inc, !dbg !6584

for.inc:                                          ; preds = %do.end15
  %20 = load i32, ptr %i, align 4, !dbg !6585
  %inc = add i32 %20, 1, !dbg !6585
  store i32 %inc, ptr %i, align 4, !dbg !6585
  br label %for.cond, !dbg !6586, !llvm.loop !6587

for.end:                                          ; preds = %if.then, %for.cond
  %21 = load i32, ptr %i, align 4, !dbg !6589
  %tobool = icmp ne i32 %21, 0, !dbg !6589
  br i1 %tobool, label %land.lhs.true, label %if.end21, !dbg !6591

land.lhs.true:                                    ; preds = %for.end
  %22 = load i32, ptr %ret, align 4, !dbg !6592
  %tobool16 = icmp ne i32 %22, 0, !dbg !6592
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !6593

if.then17:                                        ; preds = %land.lhs.true
  br label %do.body18, !dbg !6594

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !6595

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6595

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !6595

if.end21:                                         ; preds = %do.end20, %land.lhs.true, %for.end
  %23 = load i32, ptr %ret, align 4, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !6598
  ret i32 %23, !dbg !6599
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6600 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i2c_outb(ptr noundef %i2c_adap, i8 noundef zeroext %c) #0 align 16 !dbg !6604 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %sb = alloca i32, align 4
  %ack = alloca i32, align 4
  %adap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6608, metadata !DIExpression()), !dbg !6614
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !6609, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6610, metadata !DIExpression()), !dbg !6617
  call void @llvm.lifetime.start.p0(i64 4, ptr %sb) #8, !dbg !6618
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !6611, metadata !DIExpression()), !dbg !6619
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack) #8, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %ack, metadata !6612, metadata !DIExpression()), !dbg !6621
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6622
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6613, metadata !DIExpression()), !dbg !6623
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6624
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !6625
  %1 = load ptr, ptr %algo_data, align 8, !dbg !6625
  store ptr %1, ptr %adap, align 8, !dbg !6623
  store i32 7, ptr %i, align 4, !dbg !6626
  br label %for.cond, !dbg !6628

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6629
  %cmp = icmp sge i32 %2, 0, !dbg !6631
  br i1 %cmp, label %for.body, label %for.end, !dbg !6632

for.body:                                         ; preds = %for.cond
  %3 = load i8, ptr %c.addr, align 1, !dbg !6633
  %conv = zext i8 %3 to i32, !dbg !6633
  %4 = load i32, ptr %i, align 4, !dbg !6635
  %shr = ashr i32 %conv, %4, !dbg !6636
  %and = and i32 %shr, 1, !dbg !6637
  store i32 %and, ptr %sb, align 4, !dbg !6638
  %5 = load ptr, ptr %adap, align 8, !dbg !6639
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 1, !dbg !6639
  %6 = load ptr, ptr %setsda, align 8, !dbg !6639
  %7 = load ptr, ptr %adap, align 8, !dbg !6639
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 0, !dbg !6639
  %8 = load ptr, ptr %data, align 8, !dbg !6639
  %9 = load i32, ptr %sb, align 4, !dbg !6639
  call void %6(ptr noundef %8, i32 noundef %9) #9, !dbg !6639
  %10 = load ptr, ptr %adap, align 8, !dbg !6640
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %10, i32 0, i32 7, !dbg !6640
  %11 = load i32, ptr %udelay, align 8, !dbg !6640
  %add = add i32 %11, 1, !dbg !6640
  %div = sdiv i32 %add, 2, !dbg !6640
  %12 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !6640
  br i1 %12, label %if.then, label %if.else12, !dbg !6643

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %adap, align 8, !dbg !6644
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %13, i32 0, i32 7, !dbg !6644
  %14 = load i32, ptr %udelay1, align 8, !dbg !6644
  %add2 = add i32 %14, 1, !dbg !6644
  %div3 = sdiv i32 %add2, 2, !dbg !6644
  %div4 = sdiv i32 %div3, 20000, !dbg !6644
  %cmp5 = icmp sge i32 %div4, 1, !dbg !6644
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !6647

if.then7:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !6644
  br label %if.end, !dbg !6644

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %adap, align 8, !dbg !6644
  %udelay8 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %15, i32 0, i32 7, !dbg !6644
  %16 = load i32, ptr %udelay8, align 8, !dbg !6644
  %add9 = add i32 %16, 1, !dbg !6644
  %div10 = sdiv i32 %add9, 2, !dbg !6644
  %conv11 = sext i32 %div10 to i64, !dbg !6644
  %mul = mul i64 %conv11, 4295, !dbg !6644
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6644
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end17, !dbg !6647

if.else12:                                        ; preds = %for.body
  %17 = load ptr, ptr %adap, align 8, !dbg !6648
  %udelay13 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %17, i32 0, i32 7, !dbg !6648
  %18 = load i32, ptr %udelay13, align 8, !dbg !6648
  %add14 = add i32 %18, 1, !dbg !6648
  %div15 = sdiv i32 %add14, 2, !dbg !6648
  %conv16 = sext i32 %div15 to i64, !dbg !6648
  call void @__udelay(i64 noundef %conv16) #9, !dbg !6648
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.end
  %19 = load ptr, ptr %adap, align 8, !dbg !6650
  %call = call i32 @sclhi(ptr noundef %19) #9, !dbg !6652
  %cmp18 = icmp slt i32 %call, 0, !dbg !6653
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6654

if.then20:                                        ; preds = %if.end17
  br label %do.body, !dbg !6655

do.body:                                          ; preds = %if.then20
  br label %do.cond, !dbg !6657

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6657

do.end:                                           ; preds = %do.cond
  store i32 -110, ptr %retval, align 4, !dbg !6659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6659

if.end21:                                         ; preds = %if.end17
  %20 = load ptr, ptr %adap, align 8, !dbg !6660
  call void @scllo(ptr noundef %20) #9, !dbg !6661
  br label %for.inc, !dbg !6662

for.inc:                                          ; preds = %if.end21
  %21 = load i32, ptr %i, align 4, !dbg !6663
  %dec = add i32 %21, -1, !dbg !6663
  store i32 %dec, ptr %i, align 4, !dbg !6663
  br label %for.cond, !dbg !6664, !llvm.loop !6665

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %adap, align 8, !dbg !6667
  call void @sdahi(ptr noundef %22) #9, !dbg !6668
  %23 = load ptr, ptr %adap, align 8, !dbg !6669
  %call22 = call i32 @sclhi(ptr noundef %23) #9, !dbg !6671
  %cmp23 = icmp slt i32 %call22, 0, !dbg !6672
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !6673

if.then25:                                        ; preds = %for.end
  br label %do.body26, !dbg !6674

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !6676

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6676

do.end28:                                         ; preds = %do.cond27
  store i32 -110, ptr %retval, align 4, !dbg !6678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6678

if.end29:                                         ; preds = %for.end
  %24 = load ptr, ptr %adap, align 8, !dbg !6679
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %24, i32 0, i32 3, !dbg !6680
  %25 = load ptr, ptr %getsda, align 8, !dbg !6680
  %tobool = icmp ne ptr %25, null, !dbg !6679
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6681

lor.rhs:                                          ; preds = %if.end29
  %26 = load ptr, ptr %adap, align 8, !dbg !6682
  %getsda30 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %26, i32 0, i32 3, !dbg !6682
  %27 = load ptr, ptr %getsda30, align 8, !dbg !6682
  %28 = load ptr, ptr %adap, align 8, !dbg !6682
  %data31 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %28, i32 0, i32 0, !dbg !6682
  %29 = load ptr, ptr %data31, align 8, !dbg !6682
  %call32 = call i32 %27(ptr noundef %29) #9, !dbg !6682
  %tobool33 = icmp ne i32 %call32, 0, !dbg !6683
  %lnot = xor i1 %tobool33, true, !dbg !6683
  br label %lor.end, !dbg !6681

lor.end:                                          ; preds = %lor.rhs, %if.end29
  %30 = phi i1 [ true, %if.end29 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32, !dbg !6681
  store i32 %lor.ext, ptr %ack, align 4, !dbg !6684
  br label %do.body34, !dbg !6685

do.body34:                                        ; preds = %lor.end
  br label %do.cond35, !dbg !6686

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6686

do.end36:                                         ; preds = %do.cond35
  %31 = load ptr, ptr %adap, align 8, !dbg !6688
  call void @scllo(ptr noundef %31) #9, !dbg !6689
  %32 = load i32, ptr %ack, align 4, !dbg !6690
  store i32 %32, ptr %retval, align 4, !dbg !6691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6691

cleanup:                                          ; preds = %do.end36, %do.end28, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack) #8, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 4, ptr %sb) #8, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !6692
  %33 = load i32, ptr %retval, align 4, !dbg !6692
  ret i32 %33, !dbg !6692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @i2c_8bit_addr_from_msg(ptr noundef %msg) #5 align 16 !dbg !6693 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !6699, metadata !DIExpression()), !dbg !6700
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !6701
  %addr = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 0, !dbg !6702
  %1 = load i16, ptr %addr, align 8, !dbg !6702
  %conv = zext i16 %1 to i32, !dbg !6701
  %shl = shl i32 %conv, 1, !dbg !6703
  %2 = load ptr, ptr %msg.addr, align 8, !dbg !6704
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1, !dbg !6705
  %3 = load i16, ptr %flags, align 2, !dbg !6705
  %conv1 = zext i16 %3 to i32, !dbg !6704
  %and = and i32 %conv1, 1, !dbg !6706
  %tobool = icmp ne i32 %and, 0, !dbg !6704
  %4 = zext i1 %tobool to i64, !dbg !6704
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6704
  %or = or i32 %shl, %cond, !dbg !6707
  %conv2 = trunc i32 %or to i8, !dbg !6708
  ret i8 %conv2, !dbg !6709
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6710 dso_local void @yield() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i2c_inb(ptr noundef %i2c_adap) #0 align 16 !dbg !6711 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %indata = alloca i8, align 1
  %adap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6713, metadata !DIExpression()), !dbg !6717
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !6718
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6714, metadata !DIExpression()), !dbg !6719
  call void @llvm.lifetime.start.p0(i64 1, ptr %indata) #8, !dbg !6720
  call void @llvm.dbg.declare(metadata ptr %indata, metadata !6715, metadata !DIExpression()), !dbg !6721
  store i8 0, ptr %indata, align 1, !dbg !6721
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6716, metadata !DIExpression()), !dbg !6723
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6724
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !6725
  %1 = load ptr, ptr %algo_data, align 8, !dbg !6725
  store ptr %1, ptr %adap, align 8, !dbg !6723
  %2 = load ptr, ptr %adap, align 8, !dbg !6726
  call void @sdahi(ptr noundef %2) #9, !dbg !6727
  store i32 0, ptr %i, align 4, !dbg !6728
  br label %for.cond, !dbg !6730

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !6731
  %cmp = icmp slt i32 %3, 8, !dbg !6733
  br i1 %cmp, label %for.body, label %for.end, !dbg !6734

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %adap, align 8, !dbg !6735
  %call = call i32 @sclhi(ptr noundef %4) #9, !dbg !6738
  %cmp1 = icmp slt i32 %call, 0, !dbg !6739
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6740

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !6741

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6743

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6743

do.end:                                           ; preds = %do.cond
  store i32 -110, ptr %retval, align 4, !dbg !6745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6745

if.end:                                           ; preds = %for.body
  %5 = load i8, ptr %indata, align 1, !dbg !6746
  %conv = zext i8 %5 to i32, !dbg !6746
  %mul = mul i32 %conv, 2, !dbg !6746
  %conv2 = trunc i32 %mul to i8, !dbg !6746
  store i8 %conv2, ptr %indata, align 1, !dbg !6746
  %6 = load ptr, ptr %adap, align 8, !dbg !6747
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %6, i32 0, i32 3, !dbg !6747
  %7 = load ptr, ptr %getsda, align 8, !dbg !6747
  %8 = load ptr, ptr %adap, align 8, !dbg !6747
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %8, i32 0, i32 0, !dbg !6747
  %9 = load ptr, ptr %data, align 8, !dbg !6747
  %call3 = call i32 %7(ptr noundef %9) #9, !dbg !6747
  %tobool = icmp ne i32 %call3, 0, !dbg !6747
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !6749

if.then4:                                         ; preds = %if.end
  %10 = load i8, ptr %indata, align 1, !dbg !6750
  %conv5 = zext i8 %10 to i32, !dbg !6750
  %or = or i32 %conv5, 1, !dbg !6750
  %conv6 = trunc i32 %or to i8, !dbg !6750
  store i8 %conv6, ptr %indata, align 1, !dbg !6750
  br label %if.end7, !dbg !6751

if.end7:                                          ; preds = %if.then4, %if.end
  %11 = load ptr, ptr %adap, align 8, !dbg !6752
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %11, i32 0, i32 2, !dbg !6752
  %12 = load ptr, ptr %setscl, align 8, !dbg !6752
  %13 = load ptr, ptr %adap, align 8, !dbg !6752
  %data8 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %13, i32 0, i32 0, !dbg !6752
  %14 = load ptr, ptr %data8, align 8, !dbg !6752
  call void %12(ptr noundef %14, i32 noundef 0) #9, !dbg !6752
  %15 = load i32, ptr %i, align 4, !dbg !6753
  %cmp9 = icmp eq i32 %15, 7, !dbg !6753
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !6753

cond.true:                                        ; preds = %if.end7
  %16 = load ptr, ptr %adap, align 8, !dbg !6753
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %16, i32 0, i32 7, !dbg !6753
  %17 = load i32, ptr %udelay, align 8, !dbg !6753
  %div = sdiv i32 %17, 2, !dbg !6753
  br label %cond.end, !dbg !6753

cond.false:                                       ; preds = %if.end7
  %18 = load ptr, ptr %adap, align 8, !dbg !6753
  %udelay11 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %18, i32 0, i32 7, !dbg !6753
  %19 = load i32, ptr %udelay11, align 8, !dbg !6753
  br label %cond.end, !dbg !6753

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %19, %cond.false ], !dbg !6753
  %20 = call i1 @llvm.is.constant.i32(i32 %cond), !dbg !6753
  br i1 %20, label %if.then12, label %if.else38, !dbg !6756

if.then12:                                        ; preds = %cond.end
  %21 = load i32, ptr %i, align 4, !dbg !6757
  %cmp13 = icmp eq i32 %21, 7, !dbg !6757
  br i1 %cmp13, label %cond.true15, label %cond.false18, !dbg !6757

cond.true15:                                      ; preds = %if.then12
  %22 = load ptr, ptr %adap, align 8, !dbg !6757
  %udelay16 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %22, i32 0, i32 7, !dbg !6757
  %23 = load i32, ptr %udelay16, align 8, !dbg !6757
  %div17 = sdiv i32 %23, 2, !dbg !6757
  br label %cond.end20, !dbg !6757

cond.false18:                                     ; preds = %if.then12
  %24 = load ptr, ptr %adap, align 8, !dbg !6757
  %udelay19 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %24, i32 0, i32 7, !dbg !6757
  %25 = load i32, ptr %udelay19, align 8, !dbg !6757
  br label %cond.end20, !dbg !6757

cond.end20:                                       ; preds = %cond.false18, %cond.true15
  %cond21 = phi i32 [ %div17, %cond.true15 ], [ %25, %cond.false18 ], !dbg !6757
  %div22 = sdiv i32 %cond21, 20000, !dbg !6757
  %cmp23 = icmp sge i32 %div22, 1, !dbg !6757
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !6760

if.then25:                                        ; preds = %cond.end20
  call void @__bad_udelay() #9, !dbg !6757
  br label %if.end37, !dbg !6757

if.else:                                          ; preds = %cond.end20
  %26 = load i32, ptr %i, align 4, !dbg !6757
  %cmp26 = icmp eq i32 %26, 7, !dbg !6757
  br i1 %cmp26, label %cond.true28, label %cond.false31, !dbg !6757

cond.true28:                                      ; preds = %if.else
  %27 = load ptr, ptr %adap, align 8, !dbg !6757
  %udelay29 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %27, i32 0, i32 7, !dbg !6757
  %28 = load i32, ptr %udelay29, align 8, !dbg !6757
  %div30 = sdiv i32 %28, 2, !dbg !6757
  br label %cond.end33, !dbg !6757

cond.false31:                                     ; preds = %if.else
  %29 = load ptr, ptr %adap, align 8, !dbg !6757
  %udelay32 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %29, i32 0, i32 7, !dbg !6757
  %30 = load i32, ptr %udelay32, align 8, !dbg !6757
  br label %cond.end33, !dbg !6757

cond.end33:                                       ; preds = %cond.false31, %cond.true28
  %cond34 = phi i32 [ %div30, %cond.true28 ], [ %30, %cond.false31 ], !dbg !6757
  %conv35 = sext i32 %cond34 to i64, !dbg !6757
  %mul36 = mul i64 %conv35, 4295, !dbg !6757
  call void @__const_udelay(i64 noundef %mul36) #9, !dbg !6757
  br label %if.end37

if.end37:                                         ; preds = %cond.end33, %if.then25
  br label %if.end49, !dbg !6760

if.else38:                                        ; preds = %cond.end
  %31 = load i32, ptr %i, align 4, !dbg !6761
  %cmp39 = icmp eq i32 %31, 7, !dbg !6761
  br i1 %cmp39, label %cond.true41, label %cond.false44, !dbg !6761

cond.true41:                                      ; preds = %if.else38
  %32 = load ptr, ptr %adap, align 8, !dbg !6761
  %udelay42 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %32, i32 0, i32 7, !dbg !6761
  %33 = load i32, ptr %udelay42, align 8, !dbg !6761
  %div43 = sdiv i32 %33, 2, !dbg !6761
  br label %cond.end46, !dbg !6761

cond.false44:                                     ; preds = %if.else38
  %34 = load ptr, ptr %adap, align 8, !dbg !6761
  %udelay45 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %34, i32 0, i32 7, !dbg !6761
  %35 = load i32, ptr %udelay45, align 8, !dbg !6761
  br label %cond.end46, !dbg !6761

cond.end46:                                       ; preds = %cond.false44, %cond.true41
  %cond47 = phi i32 [ %div43, %cond.true41 ], [ %35, %cond.false44 ], !dbg !6761
  %conv48 = sext i32 %cond47 to i64, !dbg !6761
  call void @__udelay(i64 noundef %conv48) #9, !dbg !6761
  br label %if.end49

if.end49:                                         ; preds = %cond.end46, %if.end37
  br label %for.inc, !dbg !6763

for.inc:                                          ; preds = %if.end49
  %36 = load i32, ptr %i, align 4, !dbg !6764
  %inc = add i32 %36, 1, !dbg !6764
  store i32 %inc, ptr %i, align 4, !dbg !6764
  br label %for.cond, !dbg !6765, !llvm.loop !6766

for.end:                                          ; preds = %for.cond
  %37 = load i8, ptr %indata, align 1, !dbg !6768
  %conv50 = zext i8 %37 to i32, !dbg !6768
  store i32 %conv50, ptr %retval, align 4, !dbg !6769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6769

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !6770
  call void @llvm.lifetime.end.p0(i64 1, ptr %indata) #8, !dbg !6770
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !6770
  %38 = load i32, ptr %retval, align 4, !dbg !6770
  ret i32 %38, !dbg !6770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acknak(ptr noundef %i2c_adap, i32 noundef %is_ack) #0 align 16 !dbg !6771 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %is_ack.addr = alloca i32, align 4
  %adap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6775, metadata !DIExpression()), !dbg !6778
  store i32 %is_ack, ptr %is_ack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %is_ack.addr, metadata !6776, metadata !DIExpression()), !dbg !6779
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6780
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6777, metadata !DIExpression()), !dbg !6781
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6782
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !6783
  %1 = load ptr, ptr %algo_data, align 8, !dbg !6783
  store ptr %1, ptr %adap, align 8, !dbg !6781
  %2 = load i32, ptr %is_ack.addr, align 4, !dbg !6784
  %tobool = icmp ne i32 %2, 0, !dbg !6784
  br i1 %tobool, label %if.then, label %if.end, !dbg !6786

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %adap, align 8, !dbg !6787
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %3, i32 0, i32 1, !dbg !6787
  %4 = load ptr, ptr %setsda, align 8, !dbg !6787
  %5 = load ptr, ptr %adap, align 8, !dbg !6787
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 0, !dbg !6787
  %6 = load ptr, ptr %data, align 8, !dbg !6787
  call void %4(ptr noundef %6, i32 noundef 0) #9, !dbg !6787
  br label %if.end, !dbg !6787

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %adap, align 8, !dbg !6788
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %7, i32 0, i32 7, !dbg !6788
  %8 = load i32, ptr %udelay, align 8, !dbg !6788
  %add = add i32 %8, 1, !dbg !6788
  %div = sdiv i32 %add, 2, !dbg !6788
  %9 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !6788
  br i1 %9, label %if.then1, label %if.else11, !dbg !6791

if.then1:                                         ; preds = %if.end
  %10 = load ptr, ptr %adap, align 8, !dbg !6792
  %udelay2 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %10, i32 0, i32 7, !dbg !6792
  %11 = load i32, ptr %udelay2, align 8, !dbg !6792
  %add3 = add i32 %11, 1, !dbg !6792
  %div4 = sdiv i32 %add3, 2, !dbg !6792
  %div5 = sdiv i32 %div4, 20000, !dbg !6792
  %cmp = icmp sge i32 %div5, 1, !dbg !6792
  br i1 %cmp, label %if.then6, label %if.else, !dbg !6795

if.then6:                                         ; preds = %if.then1
  call void @__bad_udelay() #9, !dbg !6792
  br label %if.end10, !dbg !6792

if.else:                                          ; preds = %if.then1
  %12 = load ptr, ptr %adap, align 8, !dbg !6792
  %udelay7 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %12, i32 0, i32 7, !dbg !6792
  %13 = load i32, ptr %udelay7, align 8, !dbg !6792
  %add8 = add i32 %13, 1, !dbg !6792
  %div9 = sdiv i32 %add8, 2, !dbg !6792
  %conv = sext i32 %div9 to i64, !dbg !6792
  %mul = mul i64 %conv, 4295, !dbg !6792
  call void @__const_udelay(i64 noundef %mul) #9, !dbg !6792
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  br label %if.end16, !dbg !6795

if.else11:                                        ; preds = %if.end
  %14 = load ptr, ptr %adap, align 8, !dbg !6796
  %udelay12 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %14, i32 0, i32 7, !dbg !6796
  %15 = load i32, ptr %udelay12, align 8, !dbg !6796
  %add13 = add i32 %15, 1, !dbg !6796
  %div14 = sdiv i32 %add13, 2, !dbg !6796
  %conv15 = sext i32 %div14 to i64, !dbg !6796
  call void @__udelay(i64 noundef %conv15) #9, !dbg !6796
  br label %if.end16

if.end16:                                         ; preds = %if.else11, %if.end10
  %16 = load ptr, ptr %adap, align 8, !dbg !6798
  %call = call i32 @sclhi(ptr noundef %16) #9, !dbg !6800
  %cmp17 = icmp slt i32 %call, 0, !dbg !6801
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !6802

if.then19:                                        ; preds = %if.end16
  br label %do.body, !dbg !6803

do.body:                                          ; preds = %if.then19
  br label %do.cond, !dbg !6806

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6806

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6803
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9, !dbg !6803
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.4) #10, !dbg !6803
  store i32 -110, ptr %retval, align 4, !dbg !6808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6808

if.end20:                                         ; preds = %if.end16
  %18 = load ptr, ptr %adap, align 8, !dbg !6809
  call void @scllo(ptr noundef %18) #9, !dbg !6810
  store i32 0, ptr %retval, align 4, !dbg !6811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6811

cleanup:                                          ; preds = %if.end20, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !6812
  %19 = load i32, ptr %retval, align 4, !dbg !6812
  ret i32 %19, !dbg !6812
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6813 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_bus(ptr noundef %i2c_adap) #0 align 16 !dbg !6814 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca ptr, align 8
  %adap = alloca ptr, align 8
  %name = alloca ptr, align 8
  %scl = alloca i32, align 4
  %sda = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %tmp105 = alloca i32, align 4
  %tmp119 = alloca i32, align 4
  %tmp134 = alloca i32, align 4
  %tmp148 = alloca i32, align 4
  %tmp158 = alloca i32, align 4
  store ptr %i2c_adap, ptr %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i2c_adap.addr, metadata !6816, metadata !DIExpression()), !dbg !6823
  call void @llvm.lifetime.start.p0(i64 8, ptr %adap) #8, !dbg !6824
  call void @llvm.dbg.declare(metadata ptr %adap, metadata !6817, metadata !DIExpression()), !dbg !6825
  %0 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6826
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3, !dbg !6827
  %1 = load ptr, ptr %algo_data, align 8, !dbg !6827
  store ptr %1, ptr %adap, align 8, !dbg !6825
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !6828
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6818, metadata !DIExpression()), !dbg !6829
  %2 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6830
  %name1 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 12, !dbg !6831
  %arraydecay = getelementptr inbounds [48 x i8], ptr %name1, i64 0, i64 0, !dbg !6830
  store ptr %arraydecay, ptr %name, align 8, !dbg !6829
  call void @llvm.lifetime.start.p0(i64 4, ptr %scl) #8, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %scl, metadata !6819, metadata !DIExpression()), !dbg !6833
  call void @llvm.lifetime.start.p0(i64 4, ptr %sda) #8, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %sda, metadata !6820, metadata !DIExpression()), !dbg !6834
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6821, metadata !DIExpression()), !dbg !6835
  %3 = load ptr, ptr %adap, align 8, !dbg !6836
  %pre_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %3, i32 0, i32 5, !dbg !6838
  %4 = load ptr, ptr %pre_xfer, align 8, !dbg !6838
  %tobool = icmp ne ptr %4, null, !dbg !6836
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6839

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %adap, align 8, !dbg !6840
  %pre_xfer2 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 5, !dbg !6842
  %6 = load ptr, ptr %pre_xfer2, align 8, !dbg !6842
  %7 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !6843
  %call = call i32 %6(ptr noundef %7) #9, !dbg !6840
  store i32 %call, ptr %ret, align 4, !dbg !6844
  %8 = load i32, ptr %ret, align 4, !dbg !6845
  %cmp = icmp slt i32 %8, 0, !dbg !6847
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6848

if.then3:                                         ; preds = %if.then
  store i32 -19, ptr %retval, align 4, !dbg !6849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6849

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6850

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %adap, align 8, !dbg !6851
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %9, i32 0, i32 3, !dbg !6853
  %10 = load ptr, ptr %getsda, align 8, !dbg !6853
  %cmp5 = icmp eq ptr %10, null, !dbg !6854
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !6855

if.then6:                                         ; preds = %if.end4
  br label %do.body, !dbg !6856

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !6858

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6858

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %name, align 8, !dbg !6856
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef %11) #10, !dbg !6856
  store i32 %call7, ptr %tmp, align 4, !dbg !6858
  %12 = load i32, ptr %tmp, align 4, !dbg !6856
  br label %if.end8, !dbg !6860

if.end8:                                          ; preds = %do.end, %if.end4
  %13 = load ptr, ptr %adap, align 8, !dbg !6861
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %13, i32 0, i32 4, !dbg !6863
  %14 = load ptr, ptr %getscl, align 8, !dbg !6863
  %cmp9 = icmp eq ptr %14, null, !dbg !6864
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !6865

if.then10:                                        ; preds = %if.end8
  br label %do.body11, !dbg !6866

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !6868

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6868

do.end13:                                         ; preds = %do.cond12
  %15 = load ptr, ptr %name, align 8, !dbg !6866
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %15) #10, !dbg !6866
  store i32 %call15, ptr %tmp14, align 4, !dbg !6868
  %16 = load i32, ptr %tmp14, align 4, !dbg !6866
  br label %if.end16, !dbg !6870

if.end16:                                         ; preds = %do.end13, %if.end8
  %17 = load ptr, ptr %adap, align 8, !dbg !6871
  %getsda17 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %17, i32 0, i32 3, !dbg !6872
  %18 = load ptr, ptr %getsda17, align 8, !dbg !6872
  %tobool18 = icmp ne ptr %18, null, !dbg !6871
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !6871

cond.true:                                        ; preds = %if.end16
  %19 = load ptr, ptr %adap, align 8, !dbg !6873
  %getsda19 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %19, i32 0, i32 3, !dbg !6873
  %20 = load ptr, ptr %getsda19, align 8, !dbg !6873
  %21 = load ptr, ptr %adap, align 8, !dbg !6873
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %21, i32 0, i32 0, !dbg !6873
  %22 = load ptr, ptr %data, align 8, !dbg !6873
  %call20 = call i32 %20(ptr noundef %22) #9, !dbg !6873
  br label %cond.end, !dbg !6871

cond.false:                                       ; preds = %if.end16
  br label %cond.end, !dbg !6871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call20, %cond.true ], [ 1, %cond.false ], !dbg !6871
  store i32 %cond, ptr %sda, align 4, !dbg !6874
  %23 = load ptr, ptr %adap, align 8, !dbg !6875
  %getscl21 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %23, i32 0, i32 4, !dbg !6876
  %24 = load ptr, ptr %getscl21, align 8, !dbg !6876
  %tobool22 = icmp ne ptr %24, null, !dbg !6875
  br i1 %tobool22, label %cond.true23, label %cond.false27, !dbg !6875

cond.true23:                                      ; preds = %cond.end
  %25 = load ptr, ptr %adap, align 8, !dbg !6877
  %getscl24 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %25, i32 0, i32 4, !dbg !6877
  %26 = load ptr, ptr %getscl24, align 8, !dbg !6877
  %27 = load ptr, ptr %adap, align 8, !dbg !6877
  %data25 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %27, i32 0, i32 0, !dbg !6877
  %28 = load ptr, ptr %data25, align 8, !dbg !6877
  %call26 = call i32 %26(ptr noundef %28) #9, !dbg !6877
  br label %cond.end28, !dbg !6875

cond.false27:                                     ; preds = %cond.end
  br label %cond.end28, !dbg !6875

cond.end28:                                       ; preds = %cond.false27, %cond.true23
  %cond29 = phi i32 [ %call26, %cond.true23 ], [ 1, %cond.false27 ], !dbg !6875
  store i32 %cond29, ptr %scl, align 4, !dbg !6878
  %29 = load i32, ptr %scl, align 4, !dbg !6879
  %tobool30 = icmp ne i32 %29, 0, !dbg !6879
  br i1 %tobool30, label %lor.lhs.false, label %if.then32, !dbg !6881

lor.lhs.false:                                    ; preds = %cond.end28
  %30 = load i32, ptr %sda, align 4, !dbg !6882
  %tobool31 = icmp ne i32 %30, 0, !dbg !6882
  br i1 %tobool31, label %if.end38, label %if.then32, !dbg !6883

if.then32:                                        ; preds = %lor.lhs.false, %cond.end28
  br label %do.body33, !dbg !6884

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !6887

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !6887

do.end35:                                         ; preds = %do.cond34
  %31 = load ptr, ptr %name, align 8, !dbg !6884
  %32 = load i32, ptr %scl, align 4, !dbg !6884
  %33 = load i32, ptr %sda, align 4, !dbg !6884
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %31, i32 noundef %32, i32 noundef %33) #10, !dbg !6884
  store i32 %call37, ptr %tmp36, align 4, !dbg !6887
  %34 = load i32, ptr %tmp36, align 4, !dbg !6884
  br label %bailout, !dbg !6889

if.end38:                                         ; preds = %lor.lhs.false
  %35 = load ptr, ptr %adap, align 8, !dbg !6890
  call void @sdalo(ptr noundef %35) #9, !dbg !6891
  %36 = load ptr, ptr %adap, align 8, !dbg !6892
  %getsda39 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %36, i32 0, i32 3, !dbg !6894
  %37 = load ptr, ptr %getsda39, align 8, !dbg !6894
  %tobool40 = icmp ne ptr %37, null, !dbg !6892
  br i1 %tobool40, label %land.lhs.true, label %if.end51, !dbg !6895

land.lhs.true:                                    ; preds = %if.end38
  %38 = load ptr, ptr %adap, align 8, !dbg !6896
  %getsda41 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %38, i32 0, i32 3, !dbg !6896
  %39 = load ptr, ptr %getsda41, align 8, !dbg !6896
  %40 = load ptr, ptr %adap, align 8, !dbg !6896
  %data42 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %40, i32 0, i32 0, !dbg !6896
  %41 = load ptr, ptr %data42, align 8, !dbg !6896
  %call43 = call i32 %39(ptr noundef %41) #9, !dbg !6896
  %tobool44 = icmp ne i32 %call43, 0, !dbg !6896
  br i1 %tobool44, label %if.then45, label %if.end51, !dbg !6897

if.then45:                                        ; preds = %land.lhs.true
  br label %do.body46, !dbg !6898

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !6901

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6901

do.end48:                                         ; preds = %do.cond47
  %42 = load ptr, ptr %name, align 8, !dbg !6898
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef %42) #10, !dbg !6898
  store i32 %call50, ptr %tmp49, align 4, !dbg !6901
  %43 = load i32, ptr %tmp49, align 4, !dbg !6898
  br label %bailout, !dbg !6903

if.end51:                                         ; preds = %land.lhs.true, %if.end38
  %44 = load ptr, ptr %adap, align 8, !dbg !6904
  %getscl52 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %44, i32 0, i32 4, !dbg !6906
  %45 = load ptr, ptr %getscl52, align 8, !dbg !6906
  %tobool53 = icmp ne ptr %45, null, !dbg !6904
  br i1 %tobool53, label %land.lhs.true54, label %if.end65, !dbg !6907

land.lhs.true54:                                  ; preds = %if.end51
  %46 = load ptr, ptr %adap, align 8, !dbg !6908
  %getscl55 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %46, i32 0, i32 4, !dbg !6908
  %47 = load ptr, ptr %getscl55, align 8, !dbg !6908
  %48 = load ptr, ptr %adap, align 8, !dbg !6908
  %data56 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %48, i32 0, i32 0, !dbg !6908
  %49 = load ptr, ptr %data56, align 8, !dbg !6908
  %call57 = call i32 %47(ptr noundef %49) #9, !dbg !6908
  %tobool58 = icmp ne i32 %call57, 0, !dbg !6908
  br i1 %tobool58, label %if.end65, label %if.then59, !dbg !6909

if.then59:                                        ; preds = %land.lhs.true54
  br label %do.body60, !dbg !6910

do.body60:                                        ; preds = %if.then59
  br label %do.cond61, !dbg !6913

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6913

do.end62:                                         ; preds = %do.cond61
  %50 = load ptr, ptr %name, align 8, !dbg !6910
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, ptr noundef %50) #10, !dbg !6910
  store i32 %call64, ptr %tmp63, align 4, !dbg !6913
  %51 = load i32, ptr %tmp63, align 4, !dbg !6910
  br label %bailout, !dbg !6915

if.end65:                                         ; preds = %land.lhs.true54, %if.end51
  %52 = load ptr, ptr %adap, align 8, !dbg !6916
  call void @sdahi(ptr noundef %52) #9, !dbg !6917
  %53 = load ptr, ptr %adap, align 8, !dbg !6918
  %getsda66 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %53, i32 0, i32 3, !dbg !6920
  %54 = load ptr, ptr %getsda66, align 8, !dbg !6920
  %tobool67 = icmp ne ptr %54, null, !dbg !6918
  br i1 %tobool67, label %land.lhs.true68, label %if.end79, !dbg !6921

land.lhs.true68:                                  ; preds = %if.end65
  %55 = load ptr, ptr %adap, align 8, !dbg !6922
  %getsda69 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %55, i32 0, i32 3, !dbg !6922
  %56 = load ptr, ptr %getsda69, align 8, !dbg !6922
  %57 = load ptr, ptr %adap, align 8, !dbg !6922
  %data70 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %57, i32 0, i32 0, !dbg !6922
  %58 = load ptr, ptr %data70, align 8, !dbg !6922
  %call71 = call i32 %56(ptr noundef %58) #9, !dbg !6922
  %tobool72 = icmp ne i32 %call71, 0, !dbg !6922
  br i1 %tobool72, label %if.end79, label %if.then73, !dbg !6923

if.then73:                                        ; preds = %land.lhs.true68
  br label %do.body74, !dbg !6924

do.body74:                                        ; preds = %if.then73
  br label %do.cond75, !dbg !6927

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !6927

do.end76:                                         ; preds = %do.cond75
  %59 = load ptr, ptr %name, align 8, !dbg !6924
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef %59) #10, !dbg !6924
  store i32 %call78, ptr %tmp77, align 4, !dbg !6927
  %60 = load i32, ptr %tmp77, align 4, !dbg !6924
  br label %bailout, !dbg !6929

if.end79:                                         ; preds = %land.lhs.true68, %if.end65
  %61 = load ptr, ptr %adap, align 8, !dbg !6930
  %getscl80 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %61, i32 0, i32 4, !dbg !6932
  %62 = load ptr, ptr %getscl80, align 8, !dbg !6932
  %tobool81 = icmp ne ptr %62, null, !dbg !6930
  br i1 %tobool81, label %land.lhs.true82, label %if.end93, !dbg !6933

land.lhs.true82:                                  ; preds = %if.end79
  %63 = load ptr, ptr %adap, align 8, !dbg !6934
  %getscl83 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %63, i32 0, i32 4, !dbg !6934
  %64 = load ptr, ptr %getscl83, align 8, !dbg !6934
  %65 = load ptr, ptr %adap, align 8, !dbg !6934
  %data84 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %65, i32 0, i32 0, !dbg !6934
  %66 = load ptr, ptr %data84, align 8, !dbg !6934
  %call85 = call i32 %64(ptr noundef %66) #9, !dbg !6934
  %tobool86 = icmp ne i32 %call85, 0, !dbg !6934
  br i1 %tobool86, label %if.end93, label %if.then87, !dbg !6935

if.then87:                                        ; preds = %land.lhs.true82
  br label %do.body88, !dbg !6936

do.body88:                                        ; preds = %if.then87
  br label %do.cond89, !dbg !6939

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !6939

do.end90:                                         ; preds = %do.cond89
  %67 = load ptr, ptr %name, align 8, !dbg !6936
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, ptr noundef %67) #10, !dbg !6936
  store i32 %call92, ptr %tmp91, align 4, !dbg !6939
  %68 = load i32, ptr %tmp91, align 4, !dbg !6936
  br label %bailout, !dbg !6941

if.end93:                                         ; preds = %land.lhs.true82, %if.end79
  %69 = load ptr, ptr %adap, align 8, !dbg !6942
  call void @scllo(ptr noundef %69) #9, !dbg !6943
  %70 = load ptr, ptr %adap, align 8, !dbg !6944
  %getscl94 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %70, i32 0, i32 4, !dbg !6946
  %71 = load ptr, ptr %getscl94, align 8, !dbg !6946
  %tobool95 = icmp ne ptr %71, null, !dbg !6944
  br i1 %tobool95, label %land.lhs.true96, label %if.end107, !dbg !6947

land.lhs.true96:                                  ; preds = %if.end93
  %72 = load ptr, ptr %adap, align 8, !dbg !6948
  %getscl97 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %72, i32 0, i32 4, !dbg !6948
  %73 = load ptr, ptr %getscl97, align 8, !dbg !6948
  %74 = load ptr, ptr %adap, align 8, !dbg !6948
  %data98 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %74, i32 0, i32 0, !dbg !6948
  %75 = load ptr, ptr %data98, align 8, !dbg !6948
  %call99 = call i32 %73(ptr noundef %75) #9, !dbg !6948
  %tobool100 = icmp ne i32 %call99, 0, !dbg !6948
  br i1 %tobool100, label %if.then101, label %if.end107, !dbg !6949

if.then101:                                       ; preds = %land.lhs.true96
  br label %do.body102, !dbg !6950

do.body102:                                       ; preds = %if.then101
  br label %do.cond103, !dbg !6953

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !6953

do.end104:                                        ; preds = %do.cond103
  %76 = load ptr, ptr %name, align 8, !dbg !6950
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18, ptr noundef %76) #10, !dbg !6950
  store i32 %call106, ptr %tmp105, align 4, !dbg !6953
  %77 = load i32, ptr %tmp105, align 4, !dbg !6950
  br label %bailout, !dbg !6955

if.end107:                                        ; preds = %land.lhs.true96, %if.end93
  %78 = load ptr, ptr %adap, align 8, !dbg !6956
  %getsda108 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %78, i32 0, i32 3, !dbg !6958
  %79 = load ptr, ptr %getsda108, align 8, !dbg !6958
  %tobool109 = icmp ne ptr %79, null, !dbg !6956
  br i1 %tobool109, label %land.lhs.true110, label %if.end121, !dbg !6959

land.lhs.true110:                                 ; preds = %if.end107
  %80 = load ptr, ptr %adap, align 8, !dbg !6960
  %getsda111 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %80, i32 0, i32 3, !dbg !6960
  %81 = load ptr, ptr %getsda111, align 8, !dbg !6960
  %82 = load ptr, ptr %adap, align 8, !dbg !6960
  %data112 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %82, i32 0, i32 0, !dbg !6960
  %83 = load ptr, ptr %data112, align 8, !dbg !6960
  %call113 = call i32 %81(ptr noundef %83) #9, !dbg !6960
  %tobool114 = icmp ne i32 %call113, 0, !dbg !6960
  br i1 %tobool114, label %if.end121, label %if.then115, !dbg !6961

if.then115:                                       ; preds = %land.lhs.true110
  br label %do.body116, !dbg !6962

do.body116:                                       ; preds = %if.then115
  br label %do.cond117, !dbg !6965

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !6965

do.end118:                                        ; preds = %do.cond117
  %84 = load ptr, ptr %name, align 8, !dbg !6962
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, ptr noundef %84) #10, !dbg !6962
  store i32 %call120, ptr %tmp119, align 4, !dbg !6965
  %85 = load i32, ptr %tmp119, align 4, !dbg !6962
  br label %bailout, !dbg !6967

if.end121:                                        ; preds = %land.lhs.true110, %if.end107
  %86 = load ptr, ptr %adap, align 8, !dbg !6968
  %call122 = call i32 @sclhi(ptr noundef %86) #9, !dbg !6969
  %87 = load ptr, ptr %adap, align 8, !dbg !6970
  %getscl123 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %87, i32 0, i32 4, !dbg !6972
  %88 = load ptr, ptr %getscl123, align 8, !dbg !6972
  %tobool124 = icmp ne ptr %88, null, !dbg !6970
  br i1 %tobool124, label %land.lhs.true125, label %if.end136, !dbg !6973

land.lhs.true125:                                 ; preds = %if.end121
  %89 = load ptr, ptr %adap, align 8, !dbg !6974
  %getscl126 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %89, i32 0, i32 4, !dbg !6974
  %90 = load ptr, ptr %getscl126, align 8, !dbg !6974
  %91 = load ptr, ptr %adap, align 8, !dbg !6974
  %data127 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %91, i32 0, i32 0, !dbg !6974
  %92 = load ptr, ptr %data127, align 8, !dbg !6974
  %call128 = call i32 %90(ptr noundef %92) #9, !dbg !6974
  %tobool129 = icmp ne i32 %call128, 0, !dbg !6974
  br i1 %tobool129, label %if.end136, label %if.then130, !dbg !6975

if.then130:                                       ; preds = %land.lhs.true125
  br label %do.body131, !dbg !6976

do.body131:                                       ; preds = %if.then130
  br label %do.cond132, !dbg !6979

do.cond132:                                       ; preds = %do.body131
  br label %do.end133, !dbg !6979

do.end133:                                        ; preds = %do.cond132
  %93 = load ptr, ptr %name, align 8, !dbg !6976
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20, ptr noundef %93) #10, !dbg !6976
  store i32 %call135, ptr %tmp134, align 4, !dbg !6979
  %94 = load i32, ptr %tmp134, align 4, !dbg !6976
  br label %bailout, !dbg !6981

if.end136:                                        ; preds = %land.lhs.true125, %if.end121
  %95 = load ptr, ptr %adap, align 8, !dbg !6982
  %getsda137 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %95, i32 0, i32 3, !dbg !6984
  %96 = load ptr, ptr %getsda137, align 8, !dbg !6984
  %tobool138 = icmp ne ptr %96, null, !dbg !6982
  br i1 %tobool138, label %land.lhs.true139, label %if.end150, !dbg !6985

land.lhs.true139:                                 ; preds = %if.end136
  %97 = load ptr, ptr %adap, align 8, !dbg !6986
  %getsda140 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %97, i32 0, i32 3, !dbg !6986
  %98 = load ptr, ptr %getsda140, align 8, !dbg !6986
  %99 = load ptr, ptr %adap, align 8, !dbg !6986
  %data141 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %99, i32 0, i32 0, !dbg !6986
  %100 = load ptr, ptr %data141, align 8, !dbg !6986
  %call142 = call i32 %98(ptr noundef %100) #9, !dbg !6986
  %tobool143 = icmp ne i32 %call142, 0, !dbg !6986
  br i1 %tobool143, label %if.end150, label %if.then144, !dbg !6987

if.then144:                                       ; preds = %land.lhs.true139
  br label %do.body145, !dbg !6988

do.body145:                                       ; preds = %if.then144
  br label %do.cond146, !dbg !6991

do.cond146:                                       ; preds = %do.body145
  br label %do.end147, !dbg !6991

do.end147:                                        ; preds = %do.cond146
  %101 = load ptr, ptr %name, align 8, !dbg !6988
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef @.str.21, ptr noundef %101) #10, !dbg !6988
  store i32 %call149, ptr %tmp148, align 4, !dbg !6991
  %102 = load i32, ptr %tmp148, align 4, !dbg !6988
  br label %bailout, !dbg !6993

if.end150:                                        ; preds = %land.lhs.true139, %if.end136
  %103 = load ptr, ptr %adap, align 8, !dbg !6994
  %post_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %103, i32 0, i32 6, !dbg !6996
  %104 = load ptr, ptr %post_xfer, align 8, !dbg !6996
  %tobool151 = icmp ne ptr %104, null, !dbg !6994
  br i1 %tobool151, label %if.then152, label %if.end154, !dbg !6997

if.then152:                                       ; preds = %if.end150
  %105 = load ptr, ptr %adap, align 8, !dbg !6998
  %post_xfer153 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %105, i32 0, i32 6, !dbg !6999
  %106 = load ptr, ptr %post_xfer153, align 8, !dbg !6999
  %107 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !7000
  call void %106(ptr noundef %107) #9, !dbg !6998
  br label %if.end154, !dbg !6998

if.end154:                                        ; preds = %if.then152, %if.end150
  br label %do.body155, !dbg !7001

do.body155:                                       ; preds = %if.end154
  br label %do.cond156, !dbg !7003

do.cond156:                                       ; preds = %do.body155
  br label %do.end157, !dbg !7003

do.end157:                                        ; preds = %do.cond156
  %108 = load ptr, ptr %name, align 8, !dbg !7001
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22, ptr noundef %108) #10, !dbg !7001
  store i32 %call159, ptr %tmp158, align 4, !dbg !7003
  %109 = load i32, ptr %tmp158, align 4, !dbg !7001
  store i32 0, ptr %retval, align 4, !dbg !7005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7005

bailout:                                          ; preds = %do.end147, %do.end133, %do.end118, %do.end104, %do.end90, %do.end76, %do.end62, %do.end48, %do.end35
  call void @llvm.dbg.label(metadata !6822), !dbg !7006
  %110 = load ptr, ptr %adap, align 8, !dbg !7007
  call void @sdahi(ptr noundef %110) #9, !dbg !7008
  %111 = load ptr, ptr %adap, align 8, !dbg !7009
  %call160 = call i32 @sclhi(ptr noundef %111) #9, !dbg !7010
  %112 = load ptr, ptr %adap, align 8, !dbg !7011
  %post_xfer161 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %112, i32 0, i32 6, !dbg !7013
  %113 = load ptr, ptr %post_xfer161, align 8, !dbg !7013
  %tobool162 = icmp ne ptr %113, null, !dbg !7011
  br i1 %tobool162, label %if.then163, label %if.end165, !dbg !7014

if.then163:                                       ; preds = %bailout
  %114 = load ptr, ptr %adap, align 8, !dbg !7015
  %post_xfer164 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %114, i32 0, i32 6, !dbg !7016
  %115 = load ptr, ptr %post_xfer164, align 8, !dbg !7016
  %116 = load ptr, ptr %i2c_adap.addr, align 8, !dbg !7017
  call void %115(ptr noundef %116) #9, !dbg !7015
  br label %if.end165, !dbg !7015

if.end165:                                        ; preds = %if.then163, %bailout
  store i32 -19, ptr %retval, align 4, !dbg !7018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7018

cleanup:                                          ; preds = %if.end165, %do.end157, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 4, ptr %sda) #8, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 4, ptr %scl) #8, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 8, ptr %adap) #8, !dbg !7019
  %117 = load i32, ptr %retval, align 4, !dbg !7019
  ret i32 %117, !dbg !7019
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7020 dso_local i32 @_printk(ptr noundef, ...) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665}
!llvm.ident = !{!5666}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_bit_test", scope: !2, file: !3, line: 36, type: !5657, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/i2c/algos/.i2c-algo-bit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/i2c/algos/i2c-algo-bit\22 -D KBUILD_BASENAME=\22i2c_algo_bit\22 -D KBUILD_MODNAME=\22i2c_algo_bit\22 -D __KBUILD_MODNAME=kmod_i2c_algo_bit -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/i2c/algos/i2c-algo-bit.ll drivers/i2c/algos/i2c-algo-bit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !278, globals: !5397, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/algos/i2c-algo-bit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8c4b45254f6da3427e7f8e13e1bea017")
!4 = !{!5, !13, !18, !23, !31, !127, !135, !151, !157, !163, !170, !175, !183, !190, !196, !215, !221, !230, !235, !240, !246, !258, !264, !271}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !152, line: 54, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USRQUOTA", value: 0)
!155 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!156 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 45, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 487, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !171, line: 65, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!174 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !176, line: 620, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!179 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!180 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!181 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!182 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !176, line: 597, baseType: !42, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!186 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!187 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!188 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!189 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !191, line: 30, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!194 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!195 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !197, line: 12, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!199 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!200 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!201 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!202 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!203 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!204 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!205 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!206 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!207 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!208 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!209 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!210 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!211 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!212 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!213 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!214 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !216, line: 26, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!219 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!220 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !164, line: 547, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!224 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!225 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!226 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!227 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!228 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!229 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !164, line: 564, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!233 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!234 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !164, line: 577, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!238 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !164, line: 503, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!244 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !247, line: 44, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257}
!249 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!250 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!251 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!252 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!253 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!254 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!255 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!256 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!257 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !259, line: 16, baseType: !7, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "TT_NONE", value: 0)
!262 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!263 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !265, line: 51, baseType: !7, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!266 = !{!267, !268, !269, !270}
!267 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!268 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!269 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!270 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !272, line: 15, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!275 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!276 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!277 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!278 = !{!279, !40, !368}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !281)
!281 = !{!282, !283, !284, !288, !5084, !5110, !5111, !5112, !5113, !5117, !5120, !5121, !5122, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5188, !5192, !5210, !5227, !5228, !5229, !5230, !5239, !5262, !5263, !5266, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5280, !5281, !5360, !5368, !5369, !5370, !5371, !5375, !5376, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5393, !5394, !5395, !5396}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !6, line: 403, baseType: !5, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !280, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !6, line: 409, baseType: !285, size: 448, offset: 192)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 56)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !280, file: !6, line: 417, baseType: !289, size: 768, offset: 640)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !290)
!290 = !{!291, !5078, !5079, !5080, !5083}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !289, file: !6, line: 46, baseType: !292, size: 512)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !293, line: 64, size: 512, elements: !294)
!293 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!294 = !{!295, !296, !297, !299, !346, !5071, !5072, !5073, !5074, !5075, !5076, !5077}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !293, line: 65, baseType: !36, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !292, file: !293, line: 66, baseType: !117, size: 128, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !292, file: !293, line: 67, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !292, file: !293, line: 68, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !293, line: 168, size: 768, elements: !302)
!302 = !{!303, !304, !305, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !301, file: !293, line: 169, baseType: !117, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !301, file: !293, line: 170, baseType: !79, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !301, file: !293, line: 171, baseType: !292, size: 512, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !301, file: !293, line: 172, baseType: !307, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !293, line: 133, size: 192, elements: !310)
!310 = !{!311, !318, !323}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !309, file: !293, line: 134, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!42, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !293, line: 135, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!36, !316}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !309, file: !293, line: 136, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!42, !316, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !293, line: 125, size: 20736, elements: !330)
!330 = !{!331, !336, !340, !341, !345}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !329, file: !293, line: 126, baseType: !332, size: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 192, elements: !334)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!334 = !{!335}
!335 = !DISubrange(count: 3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !329, file: !293, line: 127, baseType: !337, size: 4096, offset: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 4096, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !329, file: !293, line: 128, baseType: !42, size: 32, offset: 4288)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !329, file: !293, line: 129, baseType: !342, size: 16384, offset: 4320)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !329, file: !293, line: 130, baseType: !42, size: 32, offset: 20704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !292, file: !293, line: 69, baseType: !347, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !293, line: 116, size: 384, elements: !350)
!350 = !{!351, !355, !378, !5059, !5063, !5067}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !349, file: !293, line: 117, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !298}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !349, file: !293, line: 118, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !359, line: 254, size: 128, elements: !360)
!359 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!360 = !{!361, !374}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !358, file: !359, line: 255, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !298, !369, !333}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !368)
!368 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !359, line: 30, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !359, line: 31, baseType: !36, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !370, file: !359, line: 32, baseType: !44, size: 16, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !358, file: !359, line: 256, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!365, !298, !369, !36, !55}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !349, file: !293, line: 119, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !359, line: 84, size: 320, elements: !383)
!383 = !{!384, !385, !389, !5055, !5057}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !359, line: 85, baseType: !36, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !382, file: !359, line: 86, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!44, !298, !369, !42}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !382, file: !359, line: 88, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!44, !298, !393, !42}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !359, line: 175, size: 512, elements: !395)
!395 = !{!396, !397, !398, !399, !5046, !5050, !5051}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !394, file: !359, line: 176, baseType: !370, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !394, file: !359, line: 177, baseType: !55, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !394, file: !359, line: 178, baseType: !40, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !394, file: !359, line: 179, baseType: !400, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !405)
!405 = !{!406, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !5040, !5041, !5042, !5043, !5044, !5045}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !404, file: !19, line: 473, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !409)
!409 = !{!410, !411, !412, !420, !421, !428, !429, !432, !433, !4830, !4831, !4832, !4833, !4834, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4874, !4877, !4878, !4879, !4888, !4889, !4890, !4891}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !408, file: !19, line: 642, baseType: !44, size: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !408, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !408, file: !19, line: 644, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !414, line: 23, baseType: !415)
!414 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 21, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !415, file: !414, line: 22, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !408, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !408, file: !19, line: 646, baseType: !422, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !414, line: 28, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 26, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !423, file: !414, line: 27, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !408, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !408, file: !19, line: 650, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !408, file: !19, line: 651, baseType: !430, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !408, file: !19, line: 654, baseType: !434, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !437)
!437 = !{!438, !4664, !4674, !4678, !4682, !4686, !4690, !4694, !4698, !4702, !4706, !4707, !4711, !4715, !4752, !4781, !4785, !4791, !4795, !4799, !4803, !4807, !4811, !4817, !4821}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !436, file: !19, line: 1967, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !407, !442, !7}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !444, line: 82, size: 1536, elements: !445)
!444 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!445 = !{!446, !447, !457, !465, !466, !486, !487, !491, !504, !4647, !4648, !4649, !4650, !4656, !4657, !4658}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !443, file: !444, line: 84, baseType: !7, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !443, file: !444, line: 85, baseType: !448, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !449, line: 275, baseType: !450)
!449 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !449, line: 275, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !450, file: !449, line: 275, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !449, line: 69, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !449, line: 64, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !454, file: !449, line: 65, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !444, line: 86, baseType: !458, size: 128, offset: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !459, line: 38, size: 128, elements: !460)
!459 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!460 = !{!461, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !459, line: 39, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !458, file: !459, line: 39, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !443, file: !444, line: 87, baseType: !442, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !443, file: !444, line: 88, baseType: !467, size: 128, offset: 256)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !444, line: 49, size: 128, elements: !468)
!468 = !{!469, !483}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !444, line: 50, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !444, line: 50, size: 64, elements: !471)
!471 = !{!472, !479}
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !444, line: 51, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !444, line: 51, size: 64, elements: !474)
!474 = !{!475, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !473, file: !444, line: 52, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !473, file: !444, line: 52, baseType: !476, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !470, file: !444, line: 54, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !482)
!482 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !444, line: 56, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !443, file: !444, line: 89, baseType: !407, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !443, file: !444, line: 91, baseType: !488, size: 256, offset: 448)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !443, file: !444, line: 94, baseType: !492, size: 64, offset: 704)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !493, line: 25, size: 64, elements: !494)
!493 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !493, line: 26, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !493, line: 26, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !496, file: !493, line: 28, baseType: !481, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !493, line: 30, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !496, file: !493, line: 30, size: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !500, file: !493, line: 31, baseType: !79, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !500, file: !493, line: 32, baseType: !42, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !443, file: !444, line: 95, baseType: !505, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !444, line: 128, size: 1024, align: 512, elements: !508)
!508 = !{!509, !513, !514, !521, !527, !531, !535, !539, !540, !544, !548, !4637, !4641}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !507, file: !444, line: 129, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!42, !442, !7}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !507, file: !444, line: 130, baseType: !510, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !507, file: !444, line: 131, baseType: !515, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!42, !518, !520}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !507, file: !444, line: 132, baseType: !522, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!42, !518, !7, !36, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !507, file: !444, line: 134, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!42, !518}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !507, file: !444, line: 135, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!42, !442}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !507, file: !444, line: 136, baseType: !536, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !442}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !507, file: !444, line: 137, baseType: !536, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !507, file: !444, line: 138, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !442, !407}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !507, file: !444, line: 139, baseType: !545, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!333, !442, !333, !42}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !507, file: !444, line: 140, baseType: !549, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !4636}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !554, line: 70, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!555 = !{!556, !557, !4632, !4633}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !553, file: !554, line: 71, baseType: !442, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !553, file: !554, line: 72, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !560)
!560 = !{!561, !562, !565, !566, !567, !568, !617, !1987, !2027, !2112, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2129, !2133, !2134, !2868, !2871, !2941, !2944, !2945, !2946, !2987, !4567, !4568, !4569, !4570, !4571, !4572, !4575, !4576, !4582, !4583, !4584, !4585, !4586, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !559, file: !19, line: 1191, baseType: !117, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !559, file: !19, line: 1192, baseType: !563, size: 32, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !476)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !559, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !559, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !559, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !559, file: !19, line: 1196, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !571)
!571 = !{!572, !573, !574, !581, !585, !589, !593, !594, !595, !605, !609, !610, !611, !613, !614, !615, !616}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !19, line: 2367, baseType: !36, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !570, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !570, file: !19, line: 2376, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!42, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !580, line: 32, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !570, file: !19, line: 2377, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !570, file: !19, line: 2378, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!442, !569, !42, !36, !40}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !570, file: !19, line: 2380, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !558}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !570, file: !19, line: 2381, baseType: !279, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !19, line: 2382, baseType: !569, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !570, file: !19, line: 2383, baseType: !596, size: 64, offset: 512)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !596, file: !45, line: 195, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !45, line: 199, baseType: !599, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !600, file: !45, line: 199, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !570, file: !19, line: 2385, baseType: !606, offset: 576)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !607, line: 206, elements: !608)
!607 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!608 = !{}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !570, file: !19, line: 2386, baseType: !606, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !570, file: !19, line: 2387, baseType: !606, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !570, file: !19, line: 2388, baseType: !612, offset: 576)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, elements: !334)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !570, file: !19, line: 2390, baseType: !606, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !570, file: !19, line: 2391, baseType: !606, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !570, file: !19, line: 2392, baseType: !606, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !570, file: !19, line: 2393, baseType: !606, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !559, file: !19, line: 1197, baseType: !618, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !621)
!621 = !{!622, !626, !630, !631, !635, !659, !663, !664, !665, !669, !673, !677, !678, !679, !685, !690, !691, !1912, !1913, !1914, !1915, !1919, !1923, !1970, !1985, !1986}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !620, file: !19, line: 2058, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!407, !558}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !620, file: !19, line: 2059, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !407}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !620, file: !19, line: 2060, baseType: !627, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !620, file: !19, line: 2062, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !407, !42}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !620, file: !19, line: 2063, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!42, !407, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !640, file: !14, line: 43, baseType: !368, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !640, file: !14, line: 45, baseType: !368, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !640, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !640, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !640, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !640, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !640, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !640, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !640, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !640, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !640, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !640, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !640, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !640, file: !14, line: 78, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !620, file: !19, line: 2064, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!42, !407}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !620, file: !19, line: 2065, baseType: !627, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !620, file: !19, line: 2066, baseType: !590, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !620, file: !19, line: 2067, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!42, !558, !42}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !620, file: !19, line: 2068, baseType: !670, size: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!42, !558, !18}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !620, file: !19, line: 2069, baseType: !674, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!42, !558}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !620, file: !19, line: 2070, baseType: !670, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !620, file: !19, line: 2071, baseType: !674, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !620, file: !19, line: 2072, baseType: !680, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!42, !442, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !620, file: !19, line: 2073, baseType: !686, size: 64, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!42, !558, !689, !333}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !620, file: !19, line: 2074, baseType: !590, size: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !620, file: !19, line: 2076, baseType: !692, size: 64, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!42, !695, !442}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !697, line: 17, size: 960, elements: !698)
!697 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !727, !748, !749, !1911}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !696, file: !697, line: 18, baseType: !333, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !696, file: !697, line: 19, baseType: !55, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !696, file: !697, line: 20, baseType: !55, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !696, file: !697, line: 21, baseType: !55, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !696, file: !697, line: 22, baseType: !55, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !696, file: !697, line: 23, baseType: !61, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !696, file: !697, line: 24, baseType: !61, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !696, file: !697, line: 25, baseType: !707, size: 256, offset: 448)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !708, line: 66, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!709 = !{!710, !719, !721, !726}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !707, file: !708, line: 67, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !712, line: 13, baseType: !713)
!712 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !714, file: !45, line: 180, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !707, file: !708, line: 68, baseType: !720, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !707, file: !708, line: 70, baseType: !722, size: 32, offset: 96)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !723, line: 15, size: 32, elements: !724)
!723 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !722, file: !723, line: 20, baseType: !69, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !707, file: !708, line: 72, baseType: !117, size: 128, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !696, file: !697, line: 26, baseType: !728, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !697, line: 32, size: 256, elements: !731)
!731 = !{!732, !736, !740, !744}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !730, file: !697, line: 33, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!40, !695, !60}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !730, file: !697, line: 34, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !695, !40}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !697, line: 35, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!40, !695, !40, !60}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !730, file: !697, line: 36, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!42, !695, !40}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !696, file: !697, line: 27, baseType: !42, size: 32, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !696, file: !697, line: 28, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !753)
!753 = !{!754, !773, !774, !776, !777, !778, !779, !780, !837, !1196, !1205, !1211, !1212, !1901, !1902, !1903, !1904, !1906, !1907, !1910}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !19, line: 995, baseType: !755, size: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !19, line: 995, size: 128, elements: !756)
!756 = !{!757, !763, !772}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !755, file: !19, line: 996, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !759, line: 60, size: 64, elements: !760)
!759 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !759, line: 61, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !755, file: !19, line: 997, baseType: !764, size: 128, align: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !765)
!765 = !{!766, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !45, line: 233, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !764, file: !45, line: 234, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !767}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !755, file: !19, line: 998, baseType: !7, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !752, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !752, file: !19, line: 1006, baseType: !775, size: 32, offset: 160)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !752, file: !19, line: 1007, baseType: !711, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !752, file: !19, line: 1008, baseType: !707, size: 256, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !752, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !752, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !752, file: !19, line: 1011, baseType: !781, size: 256, offset: 640)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !782)
!782 = !{!783, !804, !833, !834, !835, !836}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !19, line: 949, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !785, line: 34, baseType: !786)
!785 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !785, line: 25, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !786, file: !785, line: 26, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !790, line: 27, baseType: !791)
!790 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !790, line: 13, size: 64, elements: !792)
!792 = !{!793, !803}
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !790, line: 14, baseType: !794, size: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !790, line: 14, size: 32, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !794, file: !790, line: 15, baseType: !69, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !790, line: 16, baseType: !798, size: 32)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !790, line: 16, size: 32, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !798, file: !790, line: 18, baseType: !103, size: 8)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !798, file: !790, line: 19, baseType: !802, size: 24, offset: 8)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !334)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !791, file: !790, line: 26, baseType: !91, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !781, file: !19, line: 950, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !807)
!807 = !{!808, !814, !815, !816, !820, !821, !822, !823}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !806, file: !24, line: 61, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !810, line: 113, baseType: !811)
!810 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !810, line: 111, size: 32, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !811, file: !810, line: 112, baseType: !69, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !806, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !806, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !806, file: !24, line: 65, baseType: !817, size: 256, offset: 128)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 256, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 4)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !806, file: !24, line: 66, baseType: !596, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !806, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !806, file: !24, line: 69, baseType: !764, size: 128, align: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !806, file: !24, line: 70, baseType: !824, offset: 768)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, elements: !831)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !825, file: !24, line: 55, baseType: !42, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !825, file: !24, line: 56, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!831 = !{!832}
!832 = !DISubrange(count: -1)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !781, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !781, file: !19, line: 952, baseType: !413, size: 32, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !781, file: !19, line: 952, baseType: !413, size: 32, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !781, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !752, file: !19, line: 1012, baseType: !838, size: 64, offset: 896)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !841, line: 110, size: 1472, elements: !842)
!841 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !859, !860, !861, !862, !863, !864, !994, !995, !996, !997, !998, !1029, !1182, !1183, !1191}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !840, file: !841, line: 111, baseType: !711, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !840, file: !841, line: 112, baseType: !413, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !840, file: !841, line: 113, baseType: !422, size: 32, offset: 96)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !840, file: !841, line: 114, baseType: !413, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !840, file: !841, line: 115, baseType: !422, size: 32, offset: 160)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !840, file: !841, line: 116, baseType: !413, size: 32, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !840, file: !841, line: 117, baseType: !422, size: 32, offset: 224)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !840, file: !841, line: 118, baseType: !413, size: 32, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !840, file: !841, line: 119, baseType: !422, size: 32, offset: 288)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !840, file: !841, line: 120, baseType: !7, size: 32, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !840, file: !841, line: 121, baseType: !854, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !855, line: 24, baseType: !856)
!855 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !855, line: 24, size: 64, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !856, file: !855, line: 24, baseType: !480, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !840, file: !841, line: 122, baseType: !854, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !840, file: !841, line: 123, baseType: !854, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !840, file: !841, line: 124, baseType: !854, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !840, file: !841, line: 125, baseType: !854, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !840, file: !841, line: 127, baseType: !107, size: 8, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !840, file: !841, line: 129, baseType: !865, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !867, line: 195, size: 1728, elements: !868)
!867 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!868 = !{!869, !870, !875, !887, !896, !899, !900, !907, !908, !909, !910, !913, !914, !915, !917, !918, !958, !979}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !866, file: !867, line: 196, baseType: !809, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !866, file: !867, line: 197, baseType: !871, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !867, line: 28, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !867, line: 198, baseType: !876, size: 192, offset: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 198, size: 192, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !876, file: !867, line: 199, baseType: !117, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !876, file: !867, line: 200, baseType: !880, size: 192, align: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !881, line: 5, size: 192, align: 64, elements: !882)
!881 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!882 = !{!883, !884, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !880, file: !881, line: 6, baseType: !59, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !880, file: !881, line: 7, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !880, file: !881, line: 8, baseType: !885, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !866, file: !867, line: 205, baseType: !888, size: 320, offset: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !889, line: 48, size: 320, elements: !890)
!889 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!890 = !{!891, !892, !893, !894, !895}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !888, file: !889, line: 49, baseType: !711, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !888, file: !889, line: 55, baseType: !711, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !888, file: !889, line: 57, baseType: !722, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !888, file: !889, line: 59, baseType: !720, size: 32, offset: 160)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !888, file: !889, line: 60, baseType: !117, size: 128, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !866, file: !867, line: 206, baseType: !897, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !867, line: 206, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !866, file: !867, line: 207, baseType: !40, size: 64, offset: 640)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !867, line: 208, baseType: !901, size: 64, offset: 704)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 208, size: 64, elements: !902)
!902 = !{!903, !906}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !901, file: !867, line: 209, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !905, line: 8, baseType: !718)
!905 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!906 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !901, file: !867, line: 210, baseType: !904, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !866, file: !867, line: 212, baseType: !904, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !866, file: !867, line: 213, baseType: !413, size: 32, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !866, file: !867, line: 214, baseType: !422, size: 32, offset: 864)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !866, file: !867, line: 215, baseType: !911, size: 32, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !867, line: 31, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !476)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !866, file: !867, line: 216, baseType: !46, size: 16, offset: 928)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !866, file: !867, line: 217, baseType: !46, size: 16, offset: 944)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !866, file: !867, line: 221, baseType: !916, size: 16, offset: 960)
!916 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !866, file: !867, line: 228, baseType: !59, size: 64, offset: 1024)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !867, line: 245, baseType: !919, size: 320, offset: 1088)
!919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 245, size: 320, elements: !920)
!920 = !{!921, !950}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !919, file: !867, line: 246, baseType: !922, size: 320)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !867, line: 114, size: 320, elements: !923)
!923 = !{!924, !925, !937, !940, !949}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !922, file: !867, line: 116, baseType: !59, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !867, line: 117, baseType: !926, size: 64, offset: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !867, line: 117, size: 64, elements: !927)
!927 = !{!928, !936}
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !867, line: 118, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !867, line: 118, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !929, file: !867, line: 120, baseType: !113, size: 16)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !929, file: !867, line: 121, baseType: !933, size: 48, offset: 16)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 6)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !926, file: !867, line: 127, baseType: !59, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !922, file: !867, line: 129, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !867, line: 102, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !922, file: !867, line: 130, baseType: !941, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !867, line: 108, size: 192, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !942, file: !867, line: 109, baseType: !764, size: 128, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !942, file: !867, line: 110, baseType: !809, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !942, file: !867, line: 111, baseType: !947, size: 8, offset: 160)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !948)
!948 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !922, file: !867, line: 131, baseType: !36, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !867, line: 247, baseType: !951, size: 320)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !867, line: 247, size: 320, elements: !952)
!952 = !{!953, !954, !955, !956, !957}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !951, file: !867, line: 248, baseType: !59, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !951, file: !867, line: 249, baseType: !59, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !951, file: !867, line: 250, baseType: !938, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !951, file: !867, line: 251, baseType: !941, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !951, file: !867, line: 252, baseType: !333, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !867, line: 260, baseType: !959, size: 256, offset: 1408)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 260, size: 256, elements: !960)
!960 = !{!961, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !959, file: !867, line: 261, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !867, line: 134, size: 256, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !962, file: !867, line: 135, baseType: !40, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !962, file: !867, line: 136, baseType: !966, size: 256)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !818)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !867, line: 262, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !867, line: 262, size: 256, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !968, file: !867, line: 264, baseType: !117, size: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !968, file: !867, line: 265, baseType: !972, size: 128, offset: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !973, line: 22, size: 128, elements: !974)
!973 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!974 = !{!975, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !972, file: !973, line: 23, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !973, line: 23, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !972, file: !973, line: 24, baseType: !59, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !866, file: !867, line: 280, baseType: !980, size: 64, offset: 1664)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !867, line: 176, size: 192, elements: !982)
!982 = !{!983, !992, !993}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !981, file: !867, line: 177, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !867, line: 171, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!42, !865, !988, !990, !865}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !981, file: !867, line: 178, baseType: !865, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !981, file: !867, line: 179, baseType: !938, size: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !840, file: !841, line: 130, baseType: !865, size: 64, offset: 832)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !840, file: !841, line: 131, baseType: !865, size: 64, offset: 896)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !840, file: !841, line: 132, baseType: !865, size: 64, offset: 960)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !840, file: !841, line: 135, baseType: !40, size: 64, offset: 1024)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !840, file: !841, line: 137, baseType: !999, size: 64, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1001, line: 14, size: 1088, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1002 = !{!1003, !1004, !1013, !1014, !1015, !1016, !1017, !1018}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1000, file: !1001, line: 15, baseType: !809, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1000, file: !1001, line: 17, baseType: !1005, size: 320, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1006, line: 22, size: 320, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1007 = !{!1008, !1009, !1010, !1011}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1005, file: !1006, line: 23, baseType: !720, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1005, file: !1006, line: 24, baseType: !717, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1005, file: !1006, line: 26, baseType: !117, size: 128, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1005, file: !1006, line: 28, baseType: !1012, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1000, file: !1001, line: 19, baseType: !59, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1000, file: !1001, line: 20, baseType: !711, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1000, file: !1001, line: 23, baseType: !600, size: 128, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1000, file: !1001, line: 24, baseType: !413, size: 32, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1000, file: !1001, line: 29, baseType: !711, size: 64, offset: 704)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1000, file: !1001, line: 36, baseType: !1019, size: 320, offset: 768)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1020, line: 15, size: 320, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1019, file: !1020, line: 16, baseType: !720, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1019, file: !1020, line: 18, baseType: !42, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1019, file: !1020, line: 19, baseType: !42, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1019, file: !1020, line: 20, baseType: !42, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1019, file: !1020, line: 21, baseType: !42, size: 32, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1019, file: !1020, line: 22, baseType: !59, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1019, file: !1020, line: 23, baseType: !59, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !840, file: !841, line: 138, baseType: !1030, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1032, line: 68, size: 4800, elements: !1033)
!1032 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1033 = !{!1034, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1073, !1074, !1075, !1076, !1077, !1078, !1090, !1163, !1164, !1178, !1180}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1031, file: !1032, line: 69, baseType: !1035, size: 576)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1032, line: 23, size: 576, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1035, file: !1032, line: 24, baseType: !476, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !1032, line: 25, baseType: !1039, size: 512, offset: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !1032, line: 25, size: 512, elements: !1040)
!1040 = !{!1041, !1050}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1039, file: !1032, line: 26, baseType: !1042, size: 480)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 480, elements: !1048)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1032, line: 17, size: 96, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1043, file: !1032, line: 18, baseType: !476, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1043, file: !1032, line: 19, baseType: !476, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1043, file: !1032, line: 20, baseType: !476, size: 32, offset: 64)
!1048 = !{!1049}
!1049 = !DISubrange(count: 5)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !1032, line: 27, baseType: !1051, size: 128)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1032, line: 27, size: 128, elements: !1052)
!1052 = !{!1053, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1051, file: !1032, line: 28, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1051, file: !1032, line: 29, baseType: !1054, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1031, file: !1032, line: 70, baseType: !1035, size: 576, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1031, file: !1032, line: 71, baseType: !1035, size: 576, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1031, file: !1032, line: 72, baseType: !1030, size: 64, offset: 1728)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1031, file: !1032, line: 73, baseType: !42, size: 32, offset: 1792)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1031, file: !1032, line: 74, baseType: !413, size: 32, offset: 1824)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1031, file: !1032, line: 75, baseType: !422, size: 32, offset: 1856)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1031, file: !1032, line: 76, baseType: !1063, size: 192, offset: 1920)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1064, line: 9, size: 192, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1065 = !{!1066, !1067, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1063, file: !1064, line: 10, baseType: !711, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1063, file: !1064, line: 11, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1064, line: 7, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1063, file: !1064, line: 12, baseType: !7, size: 32, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !1064, line: 13, baseType: !809, size: 32, offset: 160)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !1032, line: 77, baseType: !59, size: 64, offset: 2112)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1031, file: !1032, line: 80, baseType: !947, size: 8, offset: 2176)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1031, file: !1032, line: 88, baseType: !117, size: 128, offset: 2240)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1031, file: !1032, line: 89, baseType: !865, size: 64, offset: 2368)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1031, file: !1032, line: 90, baseType: !888, size: 320, offset: 2432)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1031, file: !1032, line: 97, baseType: !1079, size: 256, offset: 2752)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1080, line: 98, size: 256, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1079, file: !1080, line: 99, baseType: !711, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1079, file: !1080, line: 100, baseType: !117, size: 128, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1079, file: !1080, line: 101, baseType: !1085, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1080, line: 21, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1031, file: !1032, line: 99, baseType: !1091, size: 768, offset: 3008)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !1092)
!1092 = !{!1093, !1098}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1091, file: !32, line: 200, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!42, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1091, file: !32, line: 201, baseType: !1099, size: 704, offset: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !1100)
!1100 = !{!1101, !1159}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1099, file: !32, line: 195, baseType: !1102, size: 640)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !1103)
!1103 = !{!1104, !1116, !1128, !1129, !1149, !1150, !1152, !1158}
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !32, line: 174, baseType: !1105, size: 192)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1102, file: !32, line: 174, size: 192, elements: !1106)
!1106 = !{!1107, !1115}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !32, line: 175, baseType: !1108, size: 192)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1105, file: !32, line: 175, size: 192, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1108, file: !32, line: 176, baseType: !53, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1108, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1108, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1108, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1108, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1105, file: !32, line: 182, baseType: !764, size: 128, align: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1102, file: !32, line: 184, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1119, line: 26, size: 256, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1118, file: !1119, line: 27, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1118, file: !1119, line: 28, baseType: !1123, size: 192, offset: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1124, line: 43, size: 192, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1123, file: !1124, line: 44, baseType: !720, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1123, file: !1124, line: 45, baseType: !117, size: 128, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1102, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1102, file: !32, line: 186, baseType: !1130, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1132)
!1132 = !{!1133, !1134, !1138, !1145}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1131, file: !32, line: 205, baseType: !1091, size: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1131, file: !32, line: 206, baseType: !1135, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!1097, !1130}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1131, file: !32, line: 207, baseType: !1139, size: 64, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1131, file: !32, line: 209, baseType: !1146, size: 64, offset: 896)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!42, !1142, !53}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1102, file: !32, line: 187, baseType: !1097, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1102, file: !32, line: 188, baseType: !1151, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1102, file: !32, line: 189, baseType: !1153, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1154, file: !32, line: 158, baseType: !880, size: 192, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1154, file: !32, line: 159, baseType: !1142, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1102, file: !32, line: 190, baseType: !596, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1099, file: !32, line: 196, baseType: !1160, size: 64, offset: 640)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !881, line: 12, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1160, file: !881, line: 13, baseType: !885, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1031, file: !1032, line: 100, baseType: !1142, size: 64, offset: 3776)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1031, file: !1032, line: 102, baseType: !1165, size: 64, offset: 3840)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1032, line: 107, size: 1152, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1176}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1166, file: !1032, line: 108, baseType: !600, size: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1166, file: !1032, line: 109, baseType: !1030, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1166, file: !1032, line: 110, baseType: !413, size: 32, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1166, file: !1032, line: 111, baseType: !69, size: 32, offset: 224)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1166, file: !1032, line: 112, baseType: !1173, size: 640, offset: 256)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 640, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 10)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1166, file: !1032, line: 113, baseType: !1177, size: 256, offset: 896)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 256, elements: !818)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1031, file: !1032, line: 103, baseType: !1179, size: 640, offset: 3904)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 640, elements: !1174)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1031, file: !1032, line: 104, baseType: !1181, size: 256, offset: 4544)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !818)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !840, file: !841, line: 139, baseType: !1165, size: 64, offset: 1216)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !840, file: !841, line: 140, baseType: !1184, size: 64, offset: 1280)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !841, line: 25, size: 64, elements: !1186)
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1185, file: !841, line: 26, baseType: !69, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1185, file: !841, line: 27, baseType: !42, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1185, file: !841, line: 28, baseType: !1190, offset: 64)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, elements: !831)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !841, line: 142, baseType: !1192, size: 128, offset: 1344)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !841, line: 142, size: 128, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1192, file: !841, line: 143, baseType: !42, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1192, file: !841, line: 144, baseType: !764, size: 128, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !752, file: !19, line: 1013, baseType: !1197, size: 256, offset: 960)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1197, file: !19, line: 971, baseType: !59, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1197, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1197, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1197, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1197, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1197, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !752, file: !19, line: 1014, baseType: !1206, size: 128, offset: 1216)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1207, line: 8, size: 128, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1206, file: !1207, line: 9, baseType: !552, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1206, file: !1207, line: 10, baseType: !442, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !752, file: !19, line: 1015, baseType: !407, size: 64, offset: 1344)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !752, file: !19, line: 1016, baseType: !1213, size: 64, offset: 1408)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1216)
!1216 = !{!1217, !1218, !1223, !1227, !1231, !1785, !1786, !1792, !1805, !1813, !1817, !1818, !1822, !1823, !1827, !1832, !1833, !1837, !1841, !1847, !1848, !1852, !1853, !1860, !1864, !1868, !1874, !1878, !1882, !1886, !1890, !1891, !1897}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1215, file: !19, line: 1915, baseType: !279, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1215, file: !19, line: 1916, baseType: !1219, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!61, !1222, !61, !42}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1215, file: !19, line: 1917, baseType: !1224, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!365, !1222, !333, !55, !60}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1215, file: !19, line: 1918, baseType: !1228, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!365, !1222, !36, !55, !60}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1215, file: !19, line: 1919, baseType: !1232, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!365, !1235, !1782}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1244, !1245, !1246, !1247}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1236, file: !19, line: 374, baseType: !1222, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1236, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1236, file: !19, line: 376, baseType: !1241, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1235, !368}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1236, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1236, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1236, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !19, line: 380, baseType: !1248, size: 64, offset: 320)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !19, line: 380, size: 64, elements: !1249)
!1249 = !{!1250, !1778}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1248, file: !19, line: 386, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1253, line: 998, size: 448, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1254 = !{!1255, !1764, !1765}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1252, file: !1253, line: 999, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1258)
!1258 = !{!1259, !1731, !1745}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !136, line: 295, baseType: !1260, size: 512)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !136, line: 295, size: 512, elements: !1261)
!1261 = !{!1262, !1288}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !136, line: 296, baseType: !1263, size: 448)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !136, line: 296, size: 448, elements: !1264)
!1264 = !{!1265, !1266, !1275, !1276, !1277, !1286, !1287}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !136, line: 298, baseType: !59, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !136, line: 299, baseType: !1267, size: 128, offset: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !136, line: 299, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1267, file: !136, line: 300, baseType: !117, size: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !136, line: 302, baseType: !1271, size: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1267, file: !136, line: 302, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1271, file: !136, line: 303, baseType: !40, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1271, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1263, file: !136, line: 310, baseType: !403, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1263, file: !136, line: 311, baseType: !59, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !136, line: 312, baseType: !1278, size: 64, offset: 320)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !136, line: 312, size: 64, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1278, file: !136, line: 313, baseType: !40, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1278, file: !136, line: 314, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1283, file: !136, line: 256, baseType: !59, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1263, file: !136, line: 316, baseType: !69, size: 32, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1263, file: !136, line: 317, baseType: !69, size: 32, offset: 416)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1260, file: !136, line: 323, baseType: !1289, size: 512, align: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1290)
!1290 = !{!1291, !1292, !1725, !1730}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !136, line: 75, baseType: !59, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !136, line: 83, baseType: !1293, size: 320, offset: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !136, line: 83, size: 320, elements: !1294)
!1294 = !{!1295, !1316, !1330, !1334, !1724}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !136, line: 84, baseType: !1296, size: 320)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !136, line: 84, size: 320, elements: !1297)
!1297 = !{!1298, !1309, !1310, !1315}
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !136, line: 90, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !136, line: 90, size: 128, elements: !1300)
!1300 = !{!1301, !1302, !1307, !1308}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1299, file: !136, line: 91, baseType: !117, size: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !136, line: 94, baseType: !1303, size: 128)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !136, line: 94, size: 128, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1303, file: !136, line: 96, baseType: !40, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1303, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1299, file: !136, line: 102, baseType: !117, size: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1299, file: !136, line: 103, baseType: !117, size: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1296, file: !136, line: 106, baseType: !403, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !136, line: 107, baseType: !1311, size: 64, offset: 192)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !136, line: 107, size: 64, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1311, file: !136, line: 108, baseType: !59, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1311, file: !136, line: 109, baseType: !59, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1296, file: !136, line: 117, baseType: !59, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !136, line: 119, baseType: !1317, size: 320)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !136, line: 119, size: 320, elements: !1318)
!1318 = !{!1319, !1320, !1323, !1324, !1325}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1317, file: !136, line: 124, baseType: !59, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1317, file: !136, line: 125, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1317, file: !136, line: 126, baseType: !59, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1317, file: !136, line: 127, baseType: !59, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !136, line: 128, baseType: !1326, size: 64, offset: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !136, line: 128, size: 64, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1326, file: !136, line: 133, baseType: !59, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1326, file: !136, line: 138, baseType: !711, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !136, line: 141, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !136, line: 141, size: 64, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1331, file: !136, line: 142, baseType: !59, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !136, line: 144, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !136, line: 144, size: 128, elements: !1336)
!1336 = !{!1337, !1723}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1335, file: !136, line: 146, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1340)
!1340 = !{!1341, !1351, !1372, !1373, !1374, !1375, !1376, !1705, !1706, !1707}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1339, file: !128, line: 127, baseType: !1342, size: 384)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1343)
!1343 = !{!1344, !1345, !1347, !1348, !1349, !1350}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1342, file: !128, line: 22, baseType: !59, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1342, file: !128, line: 23, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1342, file: !128, line: 24, baseType: !1346, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1342, file: !128, line: 25, baseType: !59, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1342, file: !128, line: 26, baseType: !59, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1342, file: !128, line: 27, baseType: !59, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1339, file: !128, line: 128, baseType: !1352, size: 128, offset: 384)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1353, line: 105, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1352, file: !1353, line: 110, baseType: !59, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1352, file: !1353, line: 118, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1353, line: 95, size: 448, elements: !1359)
!1359 = !{!1360, !1361, !1367, !1368, !1369, !1370, !1371}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1358, file: !1353, line: 96, baseType: !711, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1358, file: !1353, line: 97, baseType: !1362, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1353, line: 60, baseType: !1364)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1358, file: !1353, line: 98, baseType: !1362, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1358, file: !1353, line: 99, baseType: !947, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1358, file: !1353, line: 100, baseType: !947, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1358, file: !1353, line: 101, baseType: !764, size: 128, align: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1358, file: !1353, line: 102, baseType: !1366, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1339, file: !128, line: 129, baseType: !1118, size: 256, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1339, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1339, file: !128, line: 131, baseType: !7, size: 32, offset: 800)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1339, file: !128, line: 132, baseType: !59, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1339, file: !128, line: 133, baseType: !1377, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1380)
!1380 = !{!1381, !1386, !1701}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1379, file: !128, line: 83, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1379, file: !128, line: 89, baseType: !1387, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1393, line: 512, size: 896, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1394 = !{!1395, !1668, !1669, !1676, !1683, !1693, !1694, !1695, !1697, !1699}
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1393, line: 513, baseType: !1396, size: 320)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !1393, line: 513, size: 320, elements: !1397)
!1397 = !{!1398, !1663, !1665, !1666, !1667}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1396, file: !1393, line: 514, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1401)
!1401 = !{!1402, !1411, !1568, !1574, !1581, !1582, !1587, !1588, !1593, !1594, !1597, !1656, !1657, !1658, !1659, !1660, !1661}
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !136, line: 628, baseType: !1403, size: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !136, line: 628, size: 128, elements: !1404)
!1404 = !{!1405, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !136, line: 629, baseType: !1406, size: 128)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !136, line: 629, size: 128, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1406, file: !136, line: 631, baseType: !59, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1406, file: !136, line: 632, baseType: !59, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1403, file: !136, line: 635, baseType: !764, size: 128, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1400, file: !136, line: 639, baseType: !1412, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !1414)
!1414 = !{!1415, !1566}
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !136, line: 734, baseType: !1416, size: 10240)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !136, line: 734, size: 10240, elements: !1417)
!1417 = !{!1418, !1422, !1435, !1439, !1440, !1441, !1442, !1443, !1444, !1453, !1454, !1455, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1494, !1496, !1499, !1546, !1547, !1548, !1551, !1552, !1553, !1556, !1557, !1558, !1564, !1565}
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !136, line: 739, baseType: !1419, size: 512, align: 512)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !136, line: 739, size: 512, align: 512, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1419, file: !136, line: 747, baseType: !69, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1416, file: !136, line: 750, baseType: !1423, size: 128, offset: 512)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1424, line: 218, size: 128, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1425 = !{!1426, !1433, !1434}
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 219, baseType: !1427, size: 32)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 219, size: 32, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1427, file: !1424, line: 220, baseType: !79, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1427, file: !1424, line: 221, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1424, line: 197, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1424, line: 197, elements: !608)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1423, file: !1424, line: 223, baseType: !7, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1423, file: !1424, line: 224, baseType: !40, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1416, file: !136, line: 752, baseType: !1436, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!59, !1222, !59, !59, !59, !59}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1416, file: !136, line: 756, baseType: !59, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1416, file: !136, line: 757, baseType: !59, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1416, file: !136, line: 760, baseType: !59, size: 64, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1416, file: !136, line: 761, baseType: !59, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1416, file: !136, line: 763, baseType: !59, size: 64, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1416, file: !136, line: 764, baseType: !1445, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1447, line: 299, baseType: !1448)
!1447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1447, line: 299, size: 64, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1448, file: !1447, line: 299, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1452, line: 18, baseType: !59)
!1452 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1416, file: !136, line: 773, baseType: !69, size: 32, offset: 1088)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1416, file: !136, line: 785, baseType: !69, size: 32, offset: 1120)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1416, file: !136, line: 795, baseType: !1456, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1457, file: !136, line: 727, baseType: !480, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1457, file: !136, line: 728, baseType: !42, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1416, file: !136, line: 801, baseType: !59, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1416, file: !136, line: 804, baseType: !711, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1416, file: !136, line: 806, baseType: !42, size: 32, offset: 1344)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1416, file: !136, line: 808, baseType: !79, size: 32, offset: 1376)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1416, file: !136, line: 823, baseType: !888, size: 320, offset: 1408)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1416, file: !136, line: 825, baseType: !117, size: 128, offset: 1728)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1416, file: !136, line: 845, baseType: !42, size: 32, offset: 1856)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1416, file: !136, line: 849, baseType: !59, size: 64, offset: 1920)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1416, file: !136, line: 850, baseType: !59, size: 64, offset: 1984)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1416, file: !136, line: 852, baseType: !59, size: 64, offset: 2048)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1416, file: !136, line: 853, baseType: !59, size: 64, offset: 2112)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1416, file: !136, line: 854, baseType: !713, size: 64, offset: 2176)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1416, file: !136, line: 855, baseType: !59, size: 64, offset: 2240)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1416, file: !136, line: 856, baseType: !59, size: 64, offset: 2304)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1416, file: !136, line: 857, baseType: !59, size: 64, offset: 2368)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1416, file: !136, line: 858, baseType: !59, size: 64, offset: 2432)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1416, file: !136, line: 865, baseType: !453, size: 32, offset: 2496)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1416, file: !136, line: 867, baseType: !79, size: 32, offset: 2528)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1416, file: !136, line: 869, baseType: !59, size: 64, offset: 2560)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1416, file: !136, line: 869, baseType: !59, size: 64, offset: 2624)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1416, file: !136, line: 869, baseType: !59, size: 64, offset: 2688)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1416, file: !136, line: 869, baseType: !59, size: 64, offset: 2752)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1416, file: !136, line: 870, baseType: !59, size: 64, offset: 2816)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1416, file: !136, line: 870, baseType: !59, size: 64, offset: 2880)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1416, file: !136, line: 870, baseType: !59, size: 64, offset: 2944)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1416, file: !136, line: 871, baseType: !59, size: 64, offset: 3008)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1416, file: !136, line: 871, baseType: !59, size: 64, offset: 3072)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1416, file: !136, line: 871, baseType: !59, size: 64, offset: 3136)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1416, file: !136, line: 871, baseType: !59, size: 64, offset: 3200)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1416, file: !136, line: 873, baseType: !1491, size: 3328, offset: 3264)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 52)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1416, file: !136, line: 875, baseType: !1495, size: 1280, offset: 6592)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 1280, elements: !818)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1416, file: !136, line: 877, baseType: !1497, size: 64, offset: 7872)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1416, file: !136, line: 880, baseType: !1500, size: 1088, offset: 7936)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1501, line: 72, baseType: !1502)
!1501 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1501, line: 23, size: 1088, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1511, !1512, !1513, !1514, !1541, !1542, !1543}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1502, file: !1501, line: 28, baseType: !480, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1502, file: !1501, line: 38, baseType: !713, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1502, file: !1501, line: 40, baseType: !59, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1502, file: !1501, line: 43, baseType: !888, size: 320, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1502, file: !1501, line: 44, baseType: !1509, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1501, line: 44, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !1501, line: 48, baseType: !59, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1501, line: 59, baseType: !707, size: 256, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1502, file: !1501, line: 60, baseType: !40, size: 64, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1502, file: !1501, line: 61, baseType: !1515, size: 64, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1518, line: 13, size: 1216, elements: !1519)
!1518 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1517, file: !1518, line: 14, baseType: !40, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1517, file: !1518, line: 15, baseType: !59, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1517, file: !1518, line: 17, baseType: !59, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1517, file: !1518, line: 17, baseType: !59, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1517, file: !1518, line: 18, baseType: !59, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1517, file: !1518, line: 18, baseType: !59, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1517, file: !1518, line: 19, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1517, file: !1518, line: 21, baseType: !368, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1517, file: !1518, line: 23, baseType: !368, size: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1517, file: !1518, line: 24, baseType: !368, size: 64, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1517, file: !1518, line: 25, baseType: !368, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1517, file: !1518, line: 26, baseType: !368, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1517, file: !1518, line: 27, baseType: !368, size: 64, offset: 768)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1517, file: !1518, line: 28, baseType: !368, size: 64, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1517, file: !1518, line: 29, baseType: !368, size: 64, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1517, file: !1518, line: 30, baseType: !368, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1517, file: !1518, line: 31, baseType: !368, size: 64, offset: 1024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1517, file: !1518, line: 32, baseType: !368, size: 64, offset: 1088)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1517, file: !1518, line: 33, baseType: !368, size: 64, offset: 1152)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1502, file: !1501, line: 63, baseType: !69, size: 32, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1502, file: !1501, line: 69, baseType: !113, size: 16, offset: 1056)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1502, file: !1501, line: 70, baseType: !1544, size: 16, offset: 1072)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !916)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !136, line: 882, baseType: !59, size: 64, offset: 9024)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1416, file: !136, line: 885, baseType: !79, size: 32, offset: 9088)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1416, file: !136, line: 886, baseType: !1549, size: 64, offset: 9152)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1416, file: !136, line: 901, baseType: !1030, size: 64, offset: 9216)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1416, file: !136, line: 904, baseType: !1222, size: 64, offset: 9280)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1416, file: !136, line: 906, baseType: !1554, size: 64, offset: 9344)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1416, file: !136, line: 930, baseType: !69, size: 32, offset: 9408)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1416, file: !136, line: 933, baseType: !69, size: 32, offset: 9440)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1416, file: !136, line: 935, baseType: !1559, size: 64, offset: 9472)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !265, line: 103, size: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1559, file: !265, line: 104, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !265, line: 101, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1416, file: !136, line: 940, baseType: !711, size: 64, offset: 9536)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1416, file: !136, line: 942, baseType: !1079, size: 256, offset: 9600)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1413, file: !136, line: 986, baseType: !1567, offset: 10240)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !831)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1400, file: !136, line: 640, baseType: !1569, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1447, line: 297, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1447, line: 297, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1570, file: !1447, line: 297, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1452, line: 19, baseType: !59)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !136, line: 646, baseType: !1575, size: 64, offset: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !136, line: 646, size: 64, elements: !1576)
!1576 = !{!1577, !1580}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1575, file: !136, line: 647, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !59)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1575, file: !136, line: 648, baseType: !1579, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1400, file: !136, line: 666, baseType: !42, size: 32, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1400, file: !136, line: 667, baseType: !1583, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1584, file: !136, line: 580, baseType: !888, size: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1400, file: !136, line: 670, baseType: !947, size: 8, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1400, file: !136, line: 681, baseType: !1589, size: 256, offset: 512)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !136, line: 678, size: 256, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1589, file: !136, line: 679, baseType: !880, size: 192, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1589, file: !136, line: 680, baseType: !59, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1400, file: !136, line: 689, baseType: !117, size: 128, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1400, file: !136, line: 691, baseType: !1595, size: 64, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1400, file: !136, line: 694, baseType: !1598, size: 64, offset: 960)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1393, line: 563, size: 1024, elements: !1601)
!1601 = !{!1602, !1606, !1607, !1611, !1615, !1619, !1620, !1624, !1628, !1632, !1633, !1634, !1638, !1642, !1648, !1652}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1600, file: !1393, line: 564, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1399}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1600, file: !1393, line: 569, baseType: !1603, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1600, file: !1393, line: 571, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!42, !1399, !59}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1600, file: !1393, line: 572, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!42, !1399}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1600, file: !1393, line: 578, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!42, !1399, !59, !59, !59}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1600, file: !1393, line: 580, baseType: !1387, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1600, file: !1393, line: 581, baseType: !1621, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1390, !1391, !7}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1600, file: !1393, line: 582, baseType: !1625, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!1390, !1391, !59, !59}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1600, file: !1393, line: 584, baseType: !1629, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!59, !1399}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1600, file: !1393, line: 588, baseType: !1387, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1600, file: !1393, line: 591, baseType: !1387, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1600, file: !1393, line: 597, baseType: !1635, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!42, !1399, !59, !40, !42, !42}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1600, file: !1393, line: 603, baseType: !1639, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!36, !1399}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1600, file: !1393, line: 613, baseType: !1643, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!42, !1399, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !136, line: 717, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1600, file: !1393, line: 625, baseType: !1649, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1646, !1399, !59}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1600, file: !1393, line: 633, baseType: !1653, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1385, !1399, !59}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1400, file: !136, line: 697, baseType: !59, size: 64, offset: 1024)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1400, file: !136, line: 699, baseType: !1222, size: 64, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1400, file: !136, line: 700, baseType: !40, size: 64, offset: 1152)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1400, file: !136, line: 711, baseType: !711, size: 64, offset: 1216)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1400, file: !136, line: 717, baseType: !1646, size: 64, offset: 1280)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1400, file: !136, line: 722, baseType: !1662, offset: 1344)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !608)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1396, file: !1393, line: 515, baseType: !1664, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1396, file: !1393, line: 516, baseType: !59, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1396, file: !1393, line: 517, baseType: !59, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1396, file: !1393, line: 518, baseType: !59, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1392, file: !1393, line: 520, baseType: !135, size: 32, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1392, file: !1393, line: 522, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1452, line: 22, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1452, line: 22, size: 64, elements: !1673)
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1672, file: !1452, line: 22, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1452, line: 15, baseType: !59)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1392, file: !1393, line: 524, baseType: !1677, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1447, line: 372, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1447, line: 372, size: 64, elements: !1680)
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1679, file: !1447, line: 372, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1452, line: 16, baseType: !59)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1393, line: 527, baseType: !1684, size: 64, offset: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !1393, line: 527, size: 64, elements: !1685)
!1685 = !{!1686, !1692}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1684, file: !1393, line: 528, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1452, line: 21, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1452, line: 21, size: 64, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1688, file: !1452, line: 21, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1452, line: 14, baseType: !59)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1684, file: !1393, line: 529, baseType: !1671, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1392, file: !1393, line: 534, baseType: !1385, size: 64, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1392, file: !1393, line: 535, baseType: !1385, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1392, file: !1393, line: 541, baseType: !1696, size: 64, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1392, file: !1393, line: 545, baseType: !1698, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1392, file: !1393, line: 549, baseType: !1700, size: 64, offset: 832)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1447, line: 520, baseType: !1385)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1379, file: !128, line: 100, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!42, !1338, !59, !59, !42}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1339, file: !128, line: 134, baseType: !40, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1339, file: !128, line: 135, baseType: !42, size: 32, offset: 1024)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !128, line: 136, baseType: !1708, size: 128, offset: 1088)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !128, line: 136, size: 128, elements: !1709)
!1709 = !{!1710, !1716}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1708, file: !128, line: 137, baseType: !1711, size: 128)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1712, line: 6, size: 128, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1711, file: !1712, line: 7, baseType: !480, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1711, file: !1712, line: 8, baseType: !480, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !128, line: 138, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !128, line: 138, elements: !1718)
!1718 = !{!1719, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1717, file: !128, line: 138, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !128, line: 138, elements: !608)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1717, file: !128, line: 138, baseType: !1722)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1711, elements: !831)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1335, file: !136, line: 147, baseType: !40, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1293, file: !136, line: 161, baseType: !764, size: 128, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !136, line: 164, baseType: !1726, size: 32, offset: 384)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !136, line: 164, size: 32, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1726, file: !136, line: 169, baseType: !69, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1726, file: !136, line: 177, baseType: !7, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1289, file: !136, line: 181, baseType: !69, size: 32, offset: 416)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !136, line: 325, baseType: !1732, size: 512, offset: 512)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !136, line: 325, size: 512, elements: !1733)
!1733 = !{!1734, !1744}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !136, line: 326, baseType: !1735, size: 320)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !136, line: 326, size: 320, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1735, file: !136, line: 327, baseType: !59, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1735, file: !136, line: 328, baseType: !59, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1735, file: !136, line: 329, baseType: !59, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1735, file: !136, line: 331, baseType: !69, size: 32, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1735, file: !136, line: 332, baseType: !69, size: 32, offset: 224)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1735, file: !136, line: 333, baseType: !69, size: 32, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1735, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1732, file: !136, line: 339, baseType: !1289, size: 512, align: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !136, line: 341, baseType: !1746, size: 512, offset: 1024)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !136, line: 341, size: 512, elements: !1747)
!1747 = !{!1748, !1757, !1763}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !136, line: 342, baseType: !1749, size: 384)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !136, line: 342, size: 384, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1749, file: !136, line: 343, baseType: !59, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1749, file: !136, line: 344, baseType: !59, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1749, file: !136, line: 346, baseType: !40, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1749, file: !136, line: 347, baseType: !40, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1749, file: !136, line: 348, baseType: !40, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1749, file: !136, line: 349, baseType: !40, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !136, line: 352, baseType: !1758, size: 256)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !136, line: 352, size: 256, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1758, file: !136, line: 353, baseType: !59, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1758, file: !136, line: 354, baseType: !59, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1758, file: !136, line: 356, baseType: !117, size: 128, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1746, file: !136, line: 359, baseType: !1289, size: 512, align: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1252, file: !1253, line: 1000, baseType: !42, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1252, file: !1253, line: 1001, baseType: !1766, size: 320, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1777}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !75, line: 31, baseType: !7, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1767, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1767, file: !75, line: 33, baseType: !1772, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!42, !1776, !7, !42, !40}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1767, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1248, file: !19, line: 395, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!365, !40}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1784, line: 17, flags: DIFlagFwdDecl)
!1784 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1215, file: !19, line: 1920, baseType: !1232, size: 64, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1215, file: !19, line: 1921, baseType: !1787, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!42, !1235, !1790, !7}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1215, file: !19, line: 1923, baseType: !1793, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!42, !1222, !1796}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !1798)
!1798 = !{!1799, !1804}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1797, file: !19, line: 1859, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!947, !1796, !36, !42, !61, !480, !7}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1797, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1215, file: !19, line: 1924, baseType: !1806, size: 64, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1809, !1222, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1810, line: 59, baseType: !7)
!1810 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !580, line: 31, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1215, file: !19, line: 1925, baseType: !1814, size: 64, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!368, !1222, !7, !59}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1215, file: !19, line: 1926, baseType: !1814, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1215, file: !19, line: 1927, baseType: !1819, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!42, !1222, !1399}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1215, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1215, file: !19, line: 1929, baseType: !1824, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!42, !407, !1222}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1215, file: !19, line: 1930, baseType: !1828, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!42, !1222, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1215, file: !19, line: 1931, baseType: !1824, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1215, file: !19, line: 1932, baseType: !1834, size: 64, offset: 1024)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!42, !1222, !61, !61, !42}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1215, file: !19, line: 1933, baseType: !1838, size: 64, offset: 1088)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!42, !42, !1222, !42}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1215, file: !19, line: 1934, baseType: !1842, size: 64, offset: 1152)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!42, !1222, !42, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1215, file: !19, line: 1935, baseType: !1436, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1215, file: !19, line: 1936, baseType: !1849, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!42, !42}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1215, file: !19, line: 1937, baseType: !1842, size: 64, offset: 1344)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1215, file: !19, line: 1938, baseType: !1854, size: 64, offset: 1408)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!365, !1857, !1222, !60, !55, !7}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1859, line: 59, flags: DIFlagFwdDecl)
!1859 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1215, file: !19, line: 1939, baseType: !1861, size: 64, offset: 1472)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!365, !1222, !60, !1857, !55, !7}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1215, file: !19, line: 1940, baseType: !1865, size: 64, offset: 1536)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1222}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1215, file: !19, line: 1941, baseType: !1869, size: 64, offset: 1600)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!42, !1222, !42, !1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1215, file: !19, line: 1942, baseType: !1875, size: 64, offset: 1664)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!368, !1222, !42, !61, !61}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1215, file: !19, line: 1944, baseType: !1879, size: 64, offset: 1728)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !695, !1222}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1215, file: !19, line: 1948, baseType: !1883, size: 64, offset: 1792)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!365, !1222, !61, !1222, !61, !55, !7}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1215, file: !19, line: 1950, baseType: !1887, size: 64, offset: 1856)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!61, !1222, !61, !1222, !61, !61, !7}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1215, file: !19, line: 1953, baseType: !1834, size: 64, offset: 1920)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1215, file: !19, line: 1954, baseType: !1892, size: 64, offset: 1984)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!42, !1895, !7}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1215, file: !19, line: 1955, baseType: !1898, size: 64, offset: 2048)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!42, !1895, !1790, !7}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !752, file: !19, line: 1018, baseType: !480, size: 64, offset: 1472)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !752, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !752, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !752, file: !19, line: 1027, baseType: !1905, size: 64, offset: 1664)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !752, file: !19, line: 1029, baseType: !403, size: 64, offset: 1728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !752, file: !19, line: 1030, baseType: !1908, size: 32, offset: 1792)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1909, line: 8, baseType: !476)
!1909 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !752, file: !19, line: 1031, baseType: !1908, size: 32, offset: 1824)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !696, file: !697, line: 29, baseType: !40, size: 64, offset: 896)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !620, file: !19, line: 2077, baseType: !692, size: 64, offset: 1088)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !620, file: !19, line: 2078, baseType: !692, size: 64, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !620, file: !19, line: 2079, baseType: !692, size: 64, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !620, file: !19, line: 2081, baseType: !1916, size: 64, offset: 1280)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!365, !558, !42, !333, !55, !61}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !620, file: !19, line: 2082, baseType: !1920, size: 64, offset: 1344)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!365, !558, !42, !36, !55, !61}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !620, file: !19, line: 2083, baseType: !1924, size: 64, offset: 1408)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1927, !407}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !152, line: 296, size: 1664, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1955, !1956, !1957}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1929, file: !152, line: 297, baseType: !600, size: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1929, file: !152, line: 298, baseType: !117, size: 128, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1929, file: !152, line: 299, baseType: !117, size: 128, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1929, file: !152, line: 300, baseType: !117, size: 128, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1929, file: !152, line: 301, baseType: !707, size: 256, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1929, file: !152, line: 302, baseType: !79, size: 32, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1929, file: !152, line: 303, baseType: !69, size: 32, offset: 800)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1929, file: !152, line: 304, baseType: !558, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1929, file: !152, line: 305, baseType: !1940, size: 64, offset: 896)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !152, line: 68, size: 64, elements: !1941)
!1941 = !{!1942, !1954}
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !152, line: 69, baseType: !1943, size: 32)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !152, line: 69, size: 32, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1943, file: !152, line: 70, baseType: !413, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1943, file: !152, line: 71, baseType: !422, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1943, file: !152, line: 72, baseType: !1948, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1949, line: 24, baseType: !1950)
!1949 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1949, line: 22, size: 32, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1950, file: !1949, line: 23, baseType: !1953, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1949, line: 20, baseType: !419)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1940, file: !152, line: 74, baseType: !151, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1929, file: !152, line: 306, baseType: !61, size: 64, offset: 960)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1929, file: !152, line: 307, baseType: !59, size: 64, offset: 1024)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1929, file: !152, line: 308, baseType: !1958, size: 576, offset: 1088)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !152, line: 205, size: 576, elements: !1959)
!1959 = !{!1960, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1958, file: !152, line: 206, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !152, line: 66, baseType: !63)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1958, file: !152, line: 207, baseType: !1961, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1958, file: !152, line: 208, baseType: !1961, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1958, file: !152, line: 209, baseType: !1961, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1958, file: !152, line: 210, baseType: !1961, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1958, file: !152, line: 211, baseType: !1961, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1958, file: !152, line: 212, baseType: !1961, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1958, file: !152, line: 213, baseType: !904, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1958, file: !152, line: 214, baseType: !904, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !620, file: !19, line: 2085, baseType: !1971, size: 64, offset: 1472)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!368, !558, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1976, line: 15, size: 256, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1977 = !{!1978, !1979, !1980, !1981, !1982}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1975, file: !1976, line: 16, baseType: !1664, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1975, file: !1976, line: 19, baseType: !42, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1975, file: !1976, line: 26, baseType: !59, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1975, file: !1976, line: 33, baseType: !59, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1975, file: !1976, line: 36, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !620, file: !19, line: 2087, baseType: !1971, size: 64, offset: 1536)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !620, file: !19, line: 2089, baseType: !590, size: 64, offset: 1600)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !559, file: !19, line: 1198, baseType: !1988, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !152, line: 324, size: 704, elements: !1991)
!1991 = !{!1992, !1996, !2000, !2004, !2005, !2006, !2007, !2008, !2013, !2018, !2022}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1990, file: !152, line: 325, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!42, !1928}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1990, file: !152, line: 326, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!1928, !558, !42}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1990, file: !152, line: 327, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1928}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1990, file: !152, line: 328, baseType: !1993, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1990, file: !152, line: 329, baseType: !1993, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1990, file: !152, line: 330, baseType: !1993, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1990, file: !152, line: 331, baseType: !666, size: 64, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1990, file: !152, line: 334, baseType: !2009, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!2012, !407}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1990, file: !152, line: 335, baseType: !2014, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!42, !407, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1990, file: !152, line: 337, baseType: !2019, size: 64, offset: 576)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!42, !407, !2012}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1990, file: !152, line: 339, baseType: !2023, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!42, !558, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !559, file: !19, line: 1199, baseType: !2028, size: 64, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !152, line: 430, size: 704, elements: !2031)
!2031 = !{!2032, !2038, !2039, !2043, !2044, !2045, !2060, !2083, !2087, !2088, !2111}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2030, file: !152, line: 431, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!42, !558, !42, !42, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2030, file: !152, line: 432, baseType: !666, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2030, file: !152, line: 433, baseType: !2040, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!42, !558, !7}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2030, file: !152, line: 434, baseType: !2040, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2030, file: !152, line: 435, baseType: !666, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2030, file: !152, line: 436, baseType: !2046, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!42, !558, !42, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !152, line: 417, size: 256, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2050, file: !152, line: 418, baseType: !42, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2050, file: !152, line: 419, baseType: !7, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2050, file: !152, line: 420, baseType: !7, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2050, file: !152, line: 422, baseType: !7, size: 32, offset: 96)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2050, file: !152, line: 423, baseType: !7, size: 32, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2050, file: !152, line: 424, baseType: !7, size: 32, offset: 160)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2050, file: !152, line: 425, baseType: !7, size: 32, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2050, file: !152, line: 426, baseType: !7, size: 32, offset: 224)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2030, file: !152, line: 437, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!42, !558, !1940, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !152, line: 345, size: 960, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2065, file: !152, line: 346, baseType: !42, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2065, file: !152, line: 347, baseType: !480, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2065, file: !152, line: 348, baseType: !480, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2065, file: !152, line: 349, baseType: !480, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2065, file: !152, line: 350, baseType: !480, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2065, file: !152, line: 351, baseType: !480, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2065, file: !152, line: 352, baseType: !480, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2065, file: !152, line: 353, baseType: !717, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2065, file: !152, line: 355, baseType: !717, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2065, file: !152, line: 356, baseType: !42, size: 32, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2065, file: !152, line: 357, baseType: !42, size: 32, offset: 608)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2065, file: !152, line: 358, baseType: !480, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2065, file: !152, line: 359, baseType: !480, size: 64, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2065, file: !152, line: 360, baseType: !480, size: 64, offset: 768)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2065, file: !152, line: 361, baseType: !717, size: 64, offset: 832)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2065, file: !152, line: 362, baseType: !42, size: 32, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2030, file: !152, line: 438, baseType: !2084, size: 64, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!42, !558, !2026, !2064}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2030, file: !152, line: 440, baseType: !2061, size: 64, offset: 512)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2030, file: !152, line: 441, baseType: !2089, size: 64, offset: 576)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!42, !558, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !152, line: 411, size: 1408, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2093, file: !152, line: 412, baseType: !7, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2093, file: !152, line: 413, baseType: !2097, size: 1344, offset: 64)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 1344, elements: !334)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !152, line: 397, size: 448, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2110}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !152, line: 398, baseType: !7, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2098, file: !152, line: 399, baseType: !7, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2098, file: !152, line: 401, baseType: !7, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2098, file: !152, line: 402, baseType: !7, size: 32, offset: 96)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2098, file: !152, line: 403, baseType: !7, size: 32, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2098, file: !152, line: 404, baseType: !7, size: 32, offset: 160)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2098, file: !152, line: 405, baseType: !7, size: 32, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2098, file: !152, line: 406, baseType: !482, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2098, file: !152, line: 407, baseType: !2109, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !480)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2098, file: !152, line: 408, baseType: !2109, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2030, file: !152, line: 442, baseType: !2040, size: 64, offset: 640)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !559, file: !19, line: 1200, baseType: !2113, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !559, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !559, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !559, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !559, file: !19, line: 1204, baseType: !442, size: 64, offset: 832)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !559, file: !19, line: 1205, baseType: !888, size: 320, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !559, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !559, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !559, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !559, file: !19, line: 1211, baseType: !2125, size: 64, offset: 1344)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !559, file: !19, line: 1223, baseType: !2130, size: 64, offset: 1408)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !459, line: 34, size: 64, elements: !2131)
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2130, file: !459, line: 35, baseType: !462, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !559, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !559, file: !19, line: 1225, baseType: !2135, size: 64, offset: 1600)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2137, line: 40, size: 7424, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2138 = !{!2139, !2141, !2142, !2145, !2149, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2176, !2177}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2136, file: !2137, line: 41, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !480)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2136, file: !2137, line: 42, baseType: !2140, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2136, file: !2137, line: 43, baseType: !2143, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1859, line: 1453, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2136, file: !2137, line: 44, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2148, line: 74, flags: DIFlagFwdDecl)
!2148 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2136, file: !2137, line: 45, baseType: !2150, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2137, line: 45, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2136, file: !2137, line: 46, baseType: !59, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2136, file: !2137, line: 47, baseType: !947, size: 8, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2136, file: !2137, line: 48, baseType: !103, size: 8, offset: 392)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2136, file: !2137, line: 49, baseType: !947, size: 8, offset: 400)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2136, file: !2137, line: 50, baseType: !947, size: 8, offset: 408)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2136, file: !2137, line: 51, baseType: !563, size: 32, offset: 416)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2136, file: !2137, line: 52, baseType: !69, size: 32, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2136, file: !2137, line: 53, baseType: !79, size: 32, offset: 480)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2136, file: !2137, line: 54, baseType: !407, size: 64, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2136, file: !2137, line: 55, baseType: !40, size: 64, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2136, file: !2137, line: 56, baseType: !40, size: 64, offset: 640)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2136, file: !2137, line: 57, baseType: !2164, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2166)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2137, line: 57, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2136, file: !2137, line: 58, baseType: !707, size: 256, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2136, file: !2137, line: 60, baseType: !42, size: 32, offset: 1024)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2136, file: !2137, line: 61, baseType: !42, size: 32, offset: 1056)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2136, file: !2137, line: 62, baseType: !298, size: 64, offset: 1088)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2136, file: !2137, line: 65, baseType: !707, size: 256, offset: 1152)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2136, file: !2137, line: 66, baseType: !558, size: 64, offset: 1408)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2136, file: !2137, line: 68, baseType: !2174, size: 64, offset: 1472)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2137, line: 68, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2136, file: !2137, line: 72, baseType: !947, size: 8, offset: 1536)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2136, file: !2137, line: 77, baseType: !2178, size: 5824, offset: 1600)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 705, size: 5824, elements: !2179)
!2179 = !{!2180, !2181, !2183, !2186, !2187, !2240, !2329, !2330, !2331, !2332, !2333, !2340, !2515, !2528, !2755, !2759, !2761, !2762, !2763, !2767, !2774, !2775, !2778, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2845, !2846, !2847, !2850, !2853, !2862, !2863, !2864, !2865, !2866, !2867}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2178, file: !164, line: 706, baseType: !292, size: 512)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2178, file: !164, line: 707, baseType: !2182, size: 64, offset: 512)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2178, file: !164, line: 709, baseType: !2184, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 37, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2178, file: !164, line: 711, baseType: !36, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2178, file: !164, line: 712, baseType: !2188, size: 64, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 89, size: 384, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2200, !2205, !2209}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2190, file: !164, line: 90, baseType: !36, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2190, file: !164, line: 91, baseType: !379, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2190, file: !164, line: 92, baseType: !2195, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!42, !2198, !328}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2178)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2190, file: !164, line: 93, baseType: !2201, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!333, !2198, !2204, !1143, !1144}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2190, file: !164, line: 95, baseType: !2206, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !2182}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2190, file: !164, line: 97, baseType: !2210, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !176, line: 286, size: 1472, elements: !2213)
!2213 = !{!2214, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2212, file: !176, line: 287, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!42, !2182}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2212, file: !176, line: 288, baseType: !2206, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2212, file: !176, line: 289, baseType: !2215, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2212, file: !176, line: 290, baseType: !2215, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2212, file: !176, line: 291, baseType: !2215, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2212, file: !176, line: 292, baseType: !2215, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2212, file: !176, line: 293, baseType: !2215, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2212, file: !176, line: 294, baseType: !2215, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2212, file: !176, line: 295, baseType: !2215, size: 64, offset: 512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2212, file: !176, line: 296, baseType: !2215, size: 64, offset: 576)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2212, file: !176, line: 297, baseType: !2215, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2212, file: !176, line: 298, baseType: !2215, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2212, file: !176, line: 299, baseType: !2215, size: 64, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2212, file: !176, line: 300, baseType: !2215, size: 64, offset: 832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2212, file: !176, line: 301, baseType: !2215, size: 64, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2212, file: !176, line: 302, baseType: !2215, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2212, file: !176, line: 303, baseType: !2215, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2212, file: !176, line: 304, baseType: !2215, size: 64, offset: 1088)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2212, file: !176, line: 305, baseType: !2215, size: 64, offset: 1152)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2212, file: !176, line: 306, baseType: !2215, size: 64, offset: 1216)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2212, file: !176, line: 307, baseType: !2215, size: 64, offset: 1280)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2212, file: !176, line: 308, baseType: !2215, size: 64, offset: 1344)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2212, file: !176, line: 309, baseType: !2215, size: 64, offset: 1408)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2178, file: !164, line: 714, baseType: !2241, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2244, line: 80, size: 1344, elements: !2245)
!2244 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2328}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2243, file: !2244, line: 81, baseType: !36, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2243, file: !2244, line: 82, baseType: !36, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2243, file: !2244, line: 83, baseType: !379, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2243, file: !2244, line: 84, baseType: !379, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2243, file: !2244, line: 85, baseType: !379, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2243, file: !2244, line: 87, baseType: !2252, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!42, !2182, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 96, size: 1152, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2278, !2291, !2292, !2293, !2294, !2295, !2303, !2304, !2305, !2306, !2307, !2308}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2256, file: !158, line: 97, baseType: !36, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2256, file: !158, line: 98, baseType: !2241, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2256, file: !158, line: 100, baseType: !279, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2256, file: !158, line: 101, baseType: !36, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2256, file: !158, line: 103, baseType: !947, size: 8, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2256, file: !158, line: 104, baseType: !157, size: 32, offset: 288)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2256, file: !158, line: 106, baseType: !2265, size: 64, offset: 320)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2268, line: 282, size: 1600, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2269 = !{!2270, !2272, !2273, !2277}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2267, file: !2268, line: 283, baseType: !2271, size: 256)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !489)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2267, file: !2268, line: 284, baseType: !2271, size: 256, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2267, file: !2268, line: 285, baseType: !2274, size: 1024, offset: 512)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !2275)
!2275 = !{!2276}
!2276 = !DISubrange(count: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2267, file: !2268, line: 286, baseType: !1527, size: 64, offset: 1536)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2256, file: !158, line: 107, baseType: !2279, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2268, line: 217, size: 256, elements: !2282)
!2282 = !{!2283, !2287, !2289, !2290}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2281, file: !2268, line: 218, baseType: !2284, size: 128)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !2285)
!2285 = !{!2286}
!2286 = !DISubrange(count: 16)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2281, file: !2268, line: 219, baseType: !2288, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2268, line: 15, baseType: !59)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2281, file: !2268, line: 220, baseType: !477, size: 32, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2281, file: !2268, line: 221, baseType: !477, size: 32, offset: 224)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2256, file: !158, line: 109, baseType: !2215, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2256, file: !158, line: 110, baseType: !2206, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2256, file: !158, line: 111, baseType: !2215, size: 64, offset: 576)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2256, file: !158, line: 112, baseType: !2206, size: 64, offset: 640)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2256, file: !158, line: 113, baseType: !2296, size: 64, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!42, !2182, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !176, line: 60, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !176, line: 58, size: 32, elements: !2301)
!2301 = !{!2302}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2300, file: !176, line: 59, baseType: !42, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2256, file: !158, line: 114, baseType: !2215, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2256, file: !158, line: 115, baseType: !379, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2256, file: !158, line: 116, baseType: !379, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2256, file: !158, line: 118, baseType: !2210, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2256, file: !158, line: 119, baseType: !2206, size: 64, offset: 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2256, file: !158, line: 121, baseType: !2309, size: 64, offset: 1088)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 121, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2243, file: !2244, line: 88, baseType: !2195, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2243, file: !2244, line: 89, baseType: !2215, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2243, file: !2244, line: 90, baseType: !2206, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2243, file: !2244, line: 91, baseType: !2206, size: 64, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2243, file: !2244, line: 92, baseType: !2206, size: 64, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2243, file: !2244, line: 94, baseType: !2215, size: 64, offset: 704)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2243, file: !2244, line: 95, baseType: !2215, size: 64, offset: 768)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2243, file: !2244, line: 97, baseType: !2296, size: 64, offset: 832)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2243, file: !2244, line: 98, baseType: !2215, size: 64, offset: 896)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2243, file: !2244, line: 100, baseType: !2215, size: 64, offset: 960)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2243, file: !2244, line: 102, baseType: !2215, size: 64, offset: 1024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2243, file: !2244, line: 103, baseType: !2206, size: 64, offset: 1088)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2243, file: !2244, line: 105, baseType: !2210, size: 64, offset: 1152)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2243, file: !2244, line: 107, baseType: !2325, size: 64, offset: 1216)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2327)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2244, line: 107, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2243, file: !2244, line: 109, baseType: !947, size: 8, offset: 1280)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2178, file: !164, line: 715, baseType: !2255, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2178, file: !164, line: 717, baseType: !40, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2178, file: !164, line: 719, baseType: !40, size: 64, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2178, file: !164, line: 721, baseType: !707, size: 256, offset: 1024)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2178, file: !164, line: 725, baseType: !2334, size: 448, offset: 1280)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 517, size: 448, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2334, file: !164, line: 518, baseType: !117, size: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2334, file: !164, line: 519, baseType: !117, size: 128, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2334, file: !164, line: 520, baseType: !117, size: 128, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2334, file: !164, line: 521, baseType: !163, size: 32, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2178, file: !164, line: 726, baseType: !2341, size: 2496, offset: 1728)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !176, line: 663, size: 2496, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2398, !2399, !2400, !2401, !2402, !2403, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2508, !2512}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2341, file: !176, line: 664, baseType: !2299, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2341, file: !176, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2341, file: !176, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2341, file: !176, line: 667, baseType: !947, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2341, file: !176, line: 668, baseType: !947, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2341, file: !176, line: 669, baseType: !947, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2341, file: !176, line: 670, baseType: !947, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2341, file: !176, line: 671, baseType: !947, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2341, file: !176, line: 672, baseType: !947, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2341, file: !176, line: 673, baseType: !947, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2341, file: !176, line: 674, baseType: !947, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2341, file: !176, line: 675, baseType: !476, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2341, file: !176, line: 676, baseType: !79, size: 32, offset: 96)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2341, file: !176, line: 678, baseType: !117, size: 128, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2341, file: !176, line: 679, baseType: !1118, size: 256, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2341, file: !176, line: 680, baseType: !2359, size: 64, offset: 512)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2361, line: 43, size: 1536, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2370, !2382, !2383, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2360, file: !2361, line: 44, baseType: !36, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2360, file: !2361, line: 45, baseType: !42, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2360, file: !2361, line: 46, baseType: !117, size: 128, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2360, file: !2361, line: 47, baseType: !79, size: 32, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2360, file: !2361, line: 48, baseType: !2368, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !176, line: 629, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2360, file: !2361, line: 49, baseType: !2371, size: 320, offset: 384)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2372, line: 11, size: 320, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2373 = !{!2374, !2375, !2376, !2381}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2371, file: !2372, line: 16, baseType: !600, size: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2371, file: !2372, line: 17, baseType: !59, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2371, file: !2372, line: 18, baseType: !2377, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !2372, line: 19, baseType: !476, size: 32, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2360, file: !2361, line: 50, baseType: !59, size: 64, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2360, file: !2361, line: 51, baseType: !2384, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2385, line: 29, baseType: !717)
!2385 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2360, file: !2361, line: 52, baseType: !2384, size: 64, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2360, file: !2361, line: 53, baseType: !2384, size: 64, offset: 896)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2360, file: !2361, line: 54, baseType: !2384, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2360, file: !2361, line: 55, baseType: !2384, size: 64, offset: 1024)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2360, file: !2361, line: 56, baseType: !59, size: 64, offset: 1088)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2360, file: !2361, line: 57, baseType: !59, size: 64, offset: 1152)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2360, file: !2361, line: 58, baseType: !59, size: 64, offset: 1216)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2360, file: !2361, line: 59, baseType: !59, size: 64, offset: 1280)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2360, file: !2361, line: 60, baseType: !59, size: 64, offset: 1344)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2360, file: !2361, line: 61, baseType: !2182, size: 64, offset: 1408)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2360, file: !2361, line: 62, baseType: !947, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2360, file: !2361, line: 63, baseType: !947, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2341, file: !176, line: 681, baseType: !947, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2341, file: !176, line: 682, baseType: !947, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2341, file: !176, line: 683, baseType: !947, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2341, file: !176, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2341, file: !176, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2341, file: !176, line: 690, baseType: !2404, size: 512, offset: 640)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !171, line: 118, size: 512, elements: !2405)
!2405 = !{!2406, !2412, !2413, !2418, !2470, !2471, !2472, !2473}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2404, file: !171, line: 119, baseType: !2407, size: 256)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2408, line: 9, size: 256, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2407, file: !2408, line: 10, baseType: !880, size: 192, align: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2407, file: !2408, line: 11, baseType: !2384, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2404, file: !171, line: 120, baseType: !2384, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2404, file: !171, line: 121, baseType: !2414, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!170, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2404, file: !171, line: 122, baseType: !2419, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !171, line: 159, size: 512, align: 512, elements: !2421)
!2421 = !{!2422, !2447, !2448, !2451, !2456, !2457, !2465, !2469}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2420, file: !171, line: 160, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !171, line: 215, size: 4608, align: 512, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2424, file: !171, line: 216, baseType: !720, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2424, file: !171, line: 217, baseType: !7, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2424, file: !171, line: 218, baseType: !7, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2424, file: !171, line: 219, baseType: !7, size: 32, offset: 96)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2424, file: !171, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2424, file: !171, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2424, file: !171, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2424, file: !171, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2424, file: !171, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2424, file: !171, line: 226, baseType: !7, size: 32, offset: 160)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2424, file: !171, line: 227, baseType: !46, size: 16, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2424, file: !171, line: 228, baseType: !46, size: 16, offset: 208)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2424, file: !171, line: 229, baseType: !7, size: 32, offset: 224)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2424, file: !171, line: 235, baseType: !2384, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2424, file: !171, line: 236, baseType: !2417, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2424, file: !171, line: 237, baseType: !2384, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2424, file: !171, line: 238, baseType: !2417, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2424, file: !171, line: 239, baseType: !2444, size: 4096, align: 512, offset: 512)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 4096, align: 512, elements: !2445)
!2445 = !{!2446}
!2446 = !DISubrange(count: 8)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2420, file: !171, line: 161, baseType: !7, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2420, file: !171, line: 162, baseType: !2449, size: 32, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2420, file: !171, line: 163, baseType: !2452, size: 32, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !449, line: 274, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !449, line: 274, size: 32, elements: !2454)
!2454 = !{!2455}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2453, file: !449, line: 274, baseType: !453, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2420, file: !171, line: 164, baseType: !2417, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2420, file: !171, line: 165, baseType: !2458, size: 128, offset: 256)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2408, line: 14, size: 128, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2458, file: !2408, line: 15, baseType: !2461, size: 128)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !881, line: 26, size: 128, elements: !2462)
!2462 = !{!2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2461, file: !881, line: 27, baseType: !1160, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2461, file: !881, line: 28, baseType: !885, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2420, file: !171, line: 166, baseType: !2466, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!2384}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2420, file: !171, line: 167, baseType: !2384, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2404, file: !171, line: 123, baseType: !103, size: 8, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2404, file: !171, line: 124, baseType: !103, size: 8, offset: 456)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2404, file: !171, line: 125, baseType: !103, size: 8, offset: 464)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2404, file: !171, line: 126, baseType: !103, size: 8, offset: 472)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2341, file: !176, line: 691, baseType: !480, size: 64, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2341, file: !176, line: 692, baseType: !1079, size: 256, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2341, file: !176, line: 693, baseType: !74, size: 192, offset: 1472)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2341, file: !176, line: 694, baseType: !2368, size: 64, offset: 1664)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2341, file: !176, line: 695, baseType: !69, size: 32, offset: 1728)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2341, file: !176, line: 696, baseType: !69, size: 32, offset: 1760)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2341, file: !176, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2341, file: !176, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2341, file: !176, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2341, file: !176, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2341, file: !176, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2341, file: !176, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2341, file: !176, line: 703, baseType: !947, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2341, file: !176, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2341, file: !176, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2341, file: !176, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2341, file: !176, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2341, file: !176, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2341, file: !176, line: 709, baseType: !7, size: 32, offset: 1824)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2341, file: !176, line: 710, baseType: !175, size: 32, offset: 1856)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2341, file: !176, line: 711, baseType: !183, size: 32, offset: 1888)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2341, file: !176, line: 712, baseType: !183, size: 32, offset: 1920)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2341, file: !176, line: 713, baseType: !42, size: 32, offset: 1952)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2341, file: !176, line: 714, baseType: !42, size: 32, offset: 1984)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2341, file: !176, line: 715, baseType: !480, size: 64, offset: 2048)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2341, file: !176, line: 716, baseType: !480, size: 64, offset: 2112)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2341, file: !176, line: 717, baseType: !480, size: 64, offset: 2176)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2341, file: !176, line: 718, baseType: !480, size: 64, offset: 2240)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2341, file: !176, line: 720, baseType: !2503, size: 64, offset: 2304)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !176, line: 632, size: 64, elements: !2505)
!2505 = !{!2506, !2507}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2504, file: !176, line: 633, baseType: !79, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2504, file: !176, line: 634, baseType: !7, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2341, file: !176, line: 721, baseType: !2509, size: 64, offset: 2368)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !2182, !873}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2341, file: !176, line: 722, baseType: !2513, size: 64, offset: 2432)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !176, line: 722, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2178, file: !164, line: 727, baseType: !2516, size: 64, offset: 4224)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !176, line: 742, size: 1792, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2525, !2526, !2527}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2517, file: !176, line: 743, baseType: !2212, size: 1472)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2517, file: !176, line: 744, baseType: !2215, size: 64, offset: 1472)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2517, file: !176, line: 745, baseType: !2522, size: 64, offset: 1536)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2182, !947}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2517, file: !176, line: 746, baseType: !2215, size: 64, offset: 1600)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2517, file: !176, line: 747, baseType: !2206, size: 64, offset: 1664)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2517, file: !176, line: 748, baseType: !2206, size: 64, offset: 1728)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2178, file: !164, line: 736, baseType: !2529, size: 128, offset: 4288)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !164, line: 529, size: 128, elements: !2530)
!2530 = !{!2531, !2752}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2529, file: !164, line: 531, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2534, line: 150, size: 1408, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!2535 = !{!2536, !2537, !2538, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2734, !2735, !2736, !2737, !2741, !2742, !2743, !2750}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2533, file: !2534, line: 151, baseType: !117, size: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2533, file: !2534, line: 152, baseType: !36, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2533, file: !2534, line: 153, baseType: !2539, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !2534, line: 88, size: 640, elements: !2542)
!2542 = !{!2543, !2673, !2684, !2689, !2693, !2701, !2705, !2709, !2716, !2720}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2541, file: !2534, line: 89, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!42, !2532, !2547, !196}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2549, line: 48, size: 1152, elements: !2550)
!2549 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!2550 = !{!2551, !2552, !2554, !2555, !2659, !2667, !2668, !2669, !2670, !2671, !2672}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2548, file: !2549, line: 49, baseType: !36, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2548, file: !2549, line: 50, baseType: !2553, size: 32, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2549, line: 25, baseType: !476)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2548, file: !2549, line: 51, baseType: !36, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2548, file: !2549, line: 52, baseType: !2556, size: 512, offset: 192)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2557, line: 41, size: 512, elements: !2558)
!2557 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2558 = !{!2559, !2561, !2655, !2656, !2657, !2658}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2556, file: !2557, line: 42, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2556, file: !2557, line: 43, baseType: !2562, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2557, line: 125, size: 1408, elements: !2565)
!2565 = !{!2566, !2570, !2574, !2580, !2584, !2585, !2589, !2593, !2597, !2602, !2606, !2607, !2611, !2615, !2619, !2630, !2631, !2632, !2633, !2643, !2647, !2651}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2564, file: !2557, line: 126, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2560, !2560}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2564, file: !2557, line: 127, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2560}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2564, file: !2557, line: 128, baseType: !2575, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!947, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2556)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2564, file: !2557, line: 129, baseType: !2581, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!1527, !2578, !2198}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2564, file: !2557, line: 131, baseType: !2575, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2564, file: !2557, line: 133, baseType: !2586, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!190, !2578}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2564, file: !2557, line: 134, baseType: !2590, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!947, !2578, !36}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2564, file: !2557, line: 136, baseType: !2594, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!42, !2578, !36, !7, !40, !55}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2564, file: !2557, line: 141, baseType: !2598, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!42, !2578, !36, !2601, !55}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2564, file: !2557, line: 144, baseType: !2603, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!36, !2578}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2564, file: !2557, line: 145, baseType: !2603, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2564, file: !2557, line: 146, baseType: !2608, size: 64, offset: 704)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!2560, !2578}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2564, file: !2557, line: 148, baseType: !2612, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!2560, !2578, !2560}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2564, file: !2557, line: 151, baseType: !2616, size: 64, offset: 832)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!2560, !2578, !36}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2564, file: !2557, line: 153, baseType: !2620, size: 64, offset: 896)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!42, !2578, !36, !36, !7, !7, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2557, line: 94, size: 640, elements: !2625)
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2624, file: !2557, line: 95, baseType: !2560, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2624, file: !2557, line: 96, baseType: !7, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2624, file: !2557, line: 97, baseType: !2629, size: 512, offset: 128)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 512, elements: !2445)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2564, file: !2557, line: 158, baseType: !2612, size: 64, offset: 960)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2564, file: !2557, line: 161, baseType: !2608, size: 64, offset: 1024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2564, file: !2557, line: 163, baseType: !2567, size: 64, offset: 1088)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2564, file: !2557, line: 164, baseType: !2634, size: 64, offset: 1152)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!42, !2578, !2637}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2557, line: 73, size: 128, elements: !2639)
!2639 = !{!2640, !2641, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2638, file: !2557, line: 74, baseType: !7, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2638, file: !2557, line: 75, baseType: !7, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2638, file: !2557, line: 76, baseType: !2578, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2564, file: !2557, line: 166, baseType: !2644, size: 64, offset: 1216)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!40, !2560, !42}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2564, file: !2557, line: 167, baseType: !2648, size: 64, offset: 1280)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!42, !2578, !7}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2564, file: !2557, line: 168, baseType: !2652, size: 64, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!42, !2560}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2556, file: !2557, line: 44, baseType: !2182, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2556, file: !2557, line: 45, baseType: !117, size: 128, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2556, file: !2557, line: 46, baseType: !117, size: 128, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !2557, line: 47, baseType: !103, size: 8, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2548, file: !2549, line: 54, baseType: !2660, size: 64, offset: 704)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2549, line: 28, size: 256, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2661, file: !2549, line: 29, baseType: !333, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2661, file: !2549, line: 30, baseType: !42, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2661, file: !2549, line: 31, baseType: !40, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2661, file: !2549, line: 32, baseType: !2660, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2548, file: !2549, line: 55, baseType: !2660, size: 64, offset: 768)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2548, file: !2549, line: 56, baseType: !2547, size: 64, offset: 832)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2548, file: !2549, line: 57, baseType: !2547, size: 64, offset: 896)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2548, file: !2549, line: 58, baseType: !2547, size: 64, offset: 960)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2548, file: !2549, line: 62, baseType: !59, size: 64, offset: 1024)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2548, file: !2549, line: 63, baseType: !40, size: 64, offset: 1088)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2541, file: !2534, line: 91, baseType: !2674, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!42, !2532, !2677, !196}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !2534, line: 63, size: 640, elements: !2679)
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2678, file: !2534, line: 64, baseType: !2560, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2678, file: !2534, line: 65, baseType: !42, size: 32, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2678, file: !2534, line: 66, baseType: !2683, size: 512, offset: 96)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 512, elements: !2285)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2541, file: !2534, line: 93, baseType: !2685, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!42, !2532, !7, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !45, line: 170, baseType: !59)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2541, file: !2534, line: 94, baseType: !2690, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2532, !7}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2541, file: !2534, line: 95, baseType: !2694, size: 64, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!42, !2532, !2547, !2697, !7, !2699, !2700}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2541, file: !2534, line: 100, baseType: !2702, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!42, !2532, !7, !7, !40}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2541, file: !2534, line: 102, baseType: !2706, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2532, !7, !7}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2541, file: !2534, line: 104, baseType: !2710, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!42, !2532, !2713, !947}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2715, line: 11, flags: DIFlagFwdDecl)
!2715 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2541, file: !2534, line: 105, baseType: !2717, size: 64, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2532, !2713}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2541, file: !2534, line: 106, baseType: !2721, size: 64, offset: 576)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!42, !2532, !2677, !2699, !2700}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2533, file: !2534, line: 154, baseType: !40, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !2534, line: 155, baseType: !7, size: 32, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2533, file: !2534, line: 156, baseType: !7, size: 32, offset: 352)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2533, file: !2534, line: 157, baseType: !707, size: 256, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2533, file: !2534, line: 158, baseType: !2532, size: 64, offset: 640)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2533, file: !2534, line: 161, baseType: !2560, size: 64, offset: 704)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2533, file: !2534, line: 162, baseType: !196, size: 32, offset: 768)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2533, file: !2534, line: 163, baseType: !2732, size: 64, offset: 832)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !2534, line: 117, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2533, file: !2534, line: 164, baseType: !2182, size: 64, offset: 896)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !2533, file: !2534, line: 165, baseType: !2182, size: 64, offset: 960)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2533, file: !2534, line: 167, baseType: !2532, size: 64, offset: 1024)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !2533, file: !2534, line: 170, baseType: !2738, size: 64, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2740)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !2534, line: 49, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2533, file: !2534, line: 174, baseType: !2688, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2533, file: !2534, line: 175, baseType: !7, size: 32, offset: 1216)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2533, file: !2534, line: 176, baseType: !2744, size: 128, offset: 1280)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2745, line: 296, size: 128, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2746 = !{!2747, !2748, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2744, file: !2745, line: 297, baseType: !79, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2744, file: !2745, line: 299, baseType: !1664, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2744, file: !2745, line: 300, baseType: !40, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !2533, file: !2534, line: 177, baseType: !2751, offset: 1408)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, elements: !831)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2529, file: !164, line: 532, baseType: !2753, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !164, line: 49, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2178, file: !164, line: 738, baseType: !2756, size: 64, offset: 4416)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 738, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2178, file: !164, line: 740, baseType: !2760, size: 64, offset: 4480)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2178, file: !164, line: 741, baseType: !480, size: 64, offset: 4544)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2178, file: !164, line: 746, baseType: !480, size: 64, offset: 4608)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2178, file: !164, line: 747, baseType: !2764, size: 64, offset: 4672)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2766)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 747, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2178, file: !164, line: 749, baseType: !2768, size: 64, offset: 4736)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 428, size: 128, elements: !2770)
!2770 = !{!2771, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2769, file: !164, line: 433, baseType: !7, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2769, file: !164, line: 434, baseType: !7, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2769, file: !164, line: 435, baseType: !59, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2178, file: !164, line: 751, baseType: !117, size: 128, offset: 4800)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2178, file: !164, line: 762, baseType: !2776, size: 64, offset: 4928)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !164, line: 762, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2178, file: !164, line: 770, baseType: !2779, offset: 4992)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2780, line: 5, elements: !608)
!2780 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2178, file: !164, line: 772, baseType: !2547, size: 64, offset: 4992)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2178, file: !164, line: 773, baseType: !2560, size: 64, offset: 5056)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2178, file: !164, line: 776, baseType: !42, size: 32, offset: 5120)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2178, file: !164, line: 778, baseType: !563, size: 32, offset: 5152)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2178, file: !164, line: 779, baseType: !476, size: 32, offset: 5184)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2178, file: !164, line: 781, baseType: !79, size: 32, offset: 5216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2178, file: !164, line: 782, baseType: !117, size: 128, offset: 5248)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2178, file: !164, line: 784, baseType: !2789, size: 64, offset: 5376)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2792, line: 52, size: 768, elements: !2793)
!2792 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2802, !2806, !2807, !2808, !2836, !2840, !2844}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2791, file: !2792, line: 53, baseType: !36, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2791, file: !2792, line: 55, baseType: !379, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2791, file: !2792, line: 56, baseType: !379, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2791, file: !2792, line: 58, baseType: !2195, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2791, file: !2792, line: 59, baseType: !2799, size: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!333, !2198, !2204}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2791, file: !2792, line: 61, baseType: !2803, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2789}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2791, file: !2792, line: 62, baseType: !2206, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2791, file: !2792, line: 64, baseType: !2215, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2791, file: !2792, line: 66, baseType: !2809, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !216, line: 39, size: 384, elements: !2812)
!2812 = !{!2813, !2814, !2818, !2822, !2828, !2832}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2811, file: !216, line: 40, baseType: !215, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2811, file: !216, line: 41, baseType: !2815, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!947}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2811, file: !216, line: 42, baseType: !2819, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!40}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2811, file: !216, line: 43, baseType: !2823, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!1527, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !216, line: 19, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2811, file: !216, line: 44, baseType: !2829, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!1527}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2811, file: !216, line: 45, baseType: !2833, size: 64, offset: 320)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !40}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2791, file: !2792, line: 67, baseType: !2837, size: 64, offset: 576)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!1527, !2198}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2791, file: !2792, line: 69, baseType: !2841, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2198, !1143, !1144}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2791, file: !2792, line: 71, baseType: !2210, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2178, file: !164, line: 785, baseType: !379, size: 64, offset: 5440)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2178, file: !164, line: 787, baseType: !2206, size: 64, offset: 5504)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2178, file: !164, line: 788, baseType: !2848, size: 64, offset: 5568)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 46, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2178, file: !164, line: 789, baseType: !2851, size: 64, offset: 5632)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 48, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2178, file: !164, line: 791, baseType: !2854, size: 64, offset: 5696)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !164, line: 597, size: 128, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2855, file: !164, line: 598, baseType: !221, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2855, file: !164, line: 599, baseType: !230, size: 32, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2855, file: !164, line: 600, baseType: !235, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2855, file: !164, line: 601, baseType: !947, size: 8, offset: 96)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2855, file: !164, line: 602, baseType: !947, size: 8, offset: 104)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2178, file: !164, line: 793, baseType: !240, size: 32, offset: 5760)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2178, file: !164, line: 795, baseType: !947, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2178, file: !164, line: 796, baseType: !947, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2178, file: !164, line: 797, baseType: !947, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2178, file: !164, line: 798, baseType: !947, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2178, file: !164, line: 799, baseType: !947, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !559, file: !19, line: 1226, baseType: !2869, size: 64, offset: 1664)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !559, file: !19, line: 1227, baseType: !2872, size: 64, offset: 1728)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !247, line: 163, size: 6848, elements: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2933, !2934, !2935, !2936, !2938, !2939, !2940}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2873, file: !247, line: 164, baseType: !480, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2873, file: !247, line: 165, baseType: !880, size: 192, align: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2873, file: !247, line: 166, baseType: !117, size: 128, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2873, file: !247, line: 167, baseType: !59, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2873, file: !247, line: 168, baseType: !59, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2873, file: !247, line: 170, baseType: !2881, size: 32, offset: 512)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2882, line: 19, size: 32, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2881, file: !2882, line: 20, baseType: !809, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2873, file: !247, line: 171, baseType: !7, size: 32, offset: 544)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2873, file: !247, line: 172, baseType: !7, size: 32, offset: 576)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2873, file: !247, line: 173, baseType: !7, size: 32, offset: 608)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2873, file: !247, line: 173, baseType: !7, size: 32, offset: 640)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2873, file: !247, line: 179, baseType: !711, size: 64, offset: 704)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2873, file: !247, line: 184, baseType: !59, size: 64, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2873, file: !247, line: 186, baseType: !2892, size: 4672, offset: 832)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !247, line: 105, size: 4672, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2918, !2919, !2920, !2921, !2922, !2931, !2932}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2892, file: !247, line: 106, baseType: !2872, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2892, file: !247, line: 108, baseType: !59, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2892, file: !247, line: 109, baseType: !59, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2892, file: !247, line: 111, baseType: !117, size: 128, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2892, file: !247, line: 112, baseType: !117, size: 128, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2892, file: !247, line: 113, baseType: !117, size: 128, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2892, file: !247, line: 114, baseType: !117, size: 128, offset: 576)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2892, file: !247, line: 115, baseType: !79, size: 32, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2892, file: !247, line: 117, baseType: !69, size: 32, offset: 736)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2892, file: !247, line: 118, baseType: !1495, size: 1280, offset: 768)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2892, file: !247, line: 120, baseType: !59, size: 64, offset: 2048)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2892, file: !247, line: 121, baseType: !59, size: 64, offset: 2112)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2892, file: !247, line: 122, baseType: !59, size: 64, offset: 2176)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2892, file: !247, line: 123, baseType: !59, size: 64, offset: 2240)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2892, file: !247, line: 124, baseType: !59, size: 64, offset: 2304)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2892, file: !247, line: 132, baseType: !59, size: 64, offset: 2368)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2892, file: !247, line: 133, baseType: !59, size: 64, offset: 2432)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2892, file: !247, line: 135, baseType: !2912, size: 384, offset: 2496)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2913, line: 76, size: 384, elements: !2914)
!2913 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2912, file: !2913, line: 78, baseType: !1005, size: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2912, file: !2913, line: 80, baseType: !7, size: 32, offset: 320)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2912, file: !2913, line: 81, baseType: !720, size: 32, offset: 352)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2892, file: !247, line: 136, baseType: !42, size: 32, offset: 2880)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2892, file: !247, line: 137, baseType: !246, size: 32, offset: 2912)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2892, file: !247, line: 139, baseType: !79, size: 32, offset: 2944)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2892, file: !247, line: 140, baseType: !117, size: 128, offset: 3008)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2892, file: !247, line: 141, baseType: !2923, size: 704, offset: 3136)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1080, line: 111, size: 704, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2930}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2923, file: !1080, line: 112, baseType: !1079, size: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2923, file: !1080, line: 113, baseType: !2371, size: 320, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2923, file: !1080, line: 116, baseType: !2928, size: 64, offset: 576)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1080, line: 18, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2923, file: !1080, line: 117, baseType: !42, size: 32, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2892, file: !247, line: 142, baseType: !2923, size: 704, offset: 3840)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2892, file: !247, line: 144, baseType: !117, size: 128, offset: 4544)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2873, file: !247, line: 187, baseType: !117, size: 128, offset: 5504)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2873, file: !247, line: 193, baseType: !74, size: 192, offset: 5632)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2873, file: !247, line: 195, baseType: !2182, size: 64, offset: 5824)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2873, file: !247, line: 196, baseType: !2937, size: 512, offset: 5888)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !338)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2873, file: !247, line: 197, baseType: !2182, size: 64, offset: 6400)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2873, file: !247, line: 199, baseType: !2371, size: 320, offset: 6464)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2873, file: !247, line: 202, baseType: !442, size: 64, offset: 6784)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !559, file: !19, line: 1228, baseType: !2942, size: 64, offset: 1792)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !559, file: !19, line: 1229, baseType: !600, size: 128, offset: 1856)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !559, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !559, file: !19, line: 1231, baseType: !2947, size: 2496, offset: 2048)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !152, line: 521, size: 2496, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2953, !2985}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2947, file: !152, line: 522, baseType: !7, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2947, file: !152, line: 523, baseType: !888, size: 320, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2947, file: !152, line: 524, baseType: !2952, size: 192, offset: 384)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !334)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2947, file: !152, line: 525, baseType: !2954, size: 1728, offset: 576)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 1728, elements: !334)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !152, line: 222, size: 576, elements: !2956)
!2956 = !{!2957, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2955, file: !152, line: 223, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !152, line: 445, size: 256, elements: !2960)
!2960 = !{!2961, !2962, !2975, !2976}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2959, file: !152, line: 446, baseType: !42, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2959, file: !152, line: 447, baseType: !2963, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2965)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !152, line: 312, size: 512, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2965, file: !152, line: 313, baseType: !666, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2965, file: !152, line: 314, baseType: !666, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2965, file: !152, line: 315, baseType: !666, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2965, file: !152, line: 316, baseType: !666, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2965, file: !152, line: 317, baseType: !1993, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2965, file: !152, line: 318, baseType: !1993, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2965, file: !152, line: 319, baseType: !1993, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2965, file: !152, line: 320, baseType: !2023, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2959, file: !152, line: 448, baseType: !279, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2959, file: !152, line: 449, baseType: !2958, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2955, file: !152, line: 224, baseType: !42, size: 32, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2955, file: !152, line: 226, baseType: !117, size: 128, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2955, file: !152, line: 227, baseType: !59, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2955, file: !152, line: 228, baseType: !7, size: 32, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2955, file: !152, line: 229, baseType: !7, size: 32, offset: 352)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2955, file: !152, line: 230, baseType: !1961, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2955, file: !152, line: 231, baseType: !1961, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2955, file: !152, line: 232, baseType: !40, size: 64, offset: 512)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2947, file: !152, line: 526, baseType: !2986, size: 192, offset: 2304)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2963, size: 192, elements: !334)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !559, file: !19, line: 1233, baseType: !2988, size: 2368, offset: 4544)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !2989)
!2989 = !{!2990, !2991, !2992}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2988, file: !19, line: 1185, baseType: !46, size: 16)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2988, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2988, file: !19, line: 1187, baseType: !2993, size: 2304, offset: 64)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2994, size: 2304, elements: !334)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2995, line: 12, size: 768, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2996 = !{!2997, !3005, !3006, !4565, !4566}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2994, file: !2995, line: 13, baseType: !2998, size: 384)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2999, line: 17, size: 384, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2998, file: !2999, line: 18, baseType: !42, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2998, file: !2999, line: 19, baseType: !42, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2998, file: !2999, line: 20, baseType: !74, size: 192, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2998, file: !2999, line: 22, baseType: !764, size: 128, align: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2994, file: !2995, line: 14, baseType: !2700, size: 64, offset: 384)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2994, file: !2995, line: 15, baseType: !3007, size: 64, offset: 448)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3008, line: 16, size: 64, elements: !3009)
!3008 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3007, file: !3008, line: 17, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1859, line: 746, size: 58368, elements: !3013)
!3013 = !{!3014, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3094, !3105, !3125, !3129, !3132, !3163, !3164, !3165, !3166, !3177, !3179, !3180, !3181, !3182, !3183, !3184, !3195, !3196, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3213, !3214, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3302, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3350, !3356, !3357, !3358, !3359, !3360, !3362, !3365, !3372, !3377, !3380, !3383, !3386, !3771, !3971, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4009, !4010, !4011, !4020, !4028, !4029, !4030, !4031, !4032, !4037, !4038, !4039, !4042, !4043, !4046, !4049, !4055, !4062, !4065, !4066, !4152, !4153, !4154, !4155, !4156, !4162, !4163, !4164, !4165, !4166, !4167, !4170, !4173, !4174, !4177, !4178, !4179, !4182, !4183, !4184, !4185, !4186, !4187, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4219, !4220, !4226, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4308, !4310, !4311, !4312, !4313, !4314, !4315, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4344, !4345, !4346}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3012, file: !1859, line: 752, baseType: !3015, size: 192)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3016, line: 56, size: 192, elements: !3017)
!3016 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3017 = !{!3018, !3019, !3020, !3021}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3015, file: !3016, line: 57, baseType: !59, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3015, file: !3016, line: 58, baseType: !59, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3015, file: !3016, line: 59, baseType: !476, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3015, file: !3016, line: 61, baseType: !476, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3012, file: !1859, line: 754, baseType: !7, size: 32, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3012, file: !1859, line: 767, baseType: !40, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3012, file: !1859, line: 768, baseType: !809, size: 32, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3012, file: !1859, line: 770, baseType: !7, size: 32, offset: 352)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3012, file: !1859, line: 771, baseType: !7, size: 32, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3012, file: !1859, line: 774, baseType: !42, size: 32, offset: 416)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3012, file: !1859, line: 775, baseType: !3029, size: 128, offset: 448)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3030, line: 58, size: 128, elements: !3031)
!3030 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3031 = !{!3032, !3033, !3038, !3039}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3029, file: !3030, line: 59, baseType: !758, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !3029, file: !3030, line: 60, baseType: !3034, size: 32, offset: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3029, file: !3030, line: 60, size: 32, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3034, file: !3030, line: 61, baseType: !7, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3034, file: !3030, line: 62, baseType: !69, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3029, file: !3030, line: 65, baseType: !113, size: 16, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3029, file: !3030, line: 65, baseType: !113, size: 16, offset: 112)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3012, file: !1859, line: 776, baseType: !7, size: 32, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3012, file: !1859, line: 777, baseType: !59, size: 64, offset: 640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3012, file: !1859, line: 778, baseType: !3011, size: 64, offset: 704)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3012, file: !1859, line: 787, baseType: !42, size: 32, offset: 768)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3012, file: !1859, line: 788, baseType: !42, size: 32, offset: 800)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3012, file: !1859, line: 790, baseType: !42, size: 32, offset: 832)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3012, file: !1859, line: 792, baseType: !42, size: 32, offset: 864)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3012, file: !1859, line: 793, baseType: !42, size: 32, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3012, file: !1859, line: 794, baseType: !42, size: 32, offset: 928)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3012, file: !1859, line: 795, baseType: !7, size: 32, offset: 960)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3012, file: !1859, line: 797, baseType: !3051, size: 2048, offset: 1024)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1859, line: 551, size: 2048, elements: !3052)
!3052 = !{!3053, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3073, !3076, !3077, !3078}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3051, file: !1859, line: 553, baseType: !3054, size: 128)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1859, line: 411, size: 128, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3054, file: !1859, line: 412, baseType: !59, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3054, file: !1859, line: 413, baseType: !476, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3051, file: !1859, line: 554, baseType: !880, size: 192, align: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3051, file: !1859, line: 555, baseType: !480, size: 64, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3051, file: !1859, line: 556, baseType: !480, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3051, file: !1859, line: 558, baseType: !117, size: 128, offset: 448)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3051, file: !1859, line: 559, baseType: !7, size: 32, offset: 576)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3051, file: !1859, line: 561, baseType: !480, size: 64, offset: 640)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3051, file: !1859, line: 562, baseType: !480, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3051, file: !1859, line: 563, baseType: !480, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3051, file: !1859, line: 564, baseType: !480, size: 64, offset: 832)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3051, file: !1859, line: 565, baseType: !717, size: 64, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3051, file: !1859, line: 566, baseType: !480, size: 64, offset: 960)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3051, file: !1859, line: 568, baseType: !480, size: 64, offset: 1024)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3051, file: !1859, line: 571, baseType: !42, size: 32, offset: 1088)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3051, file: !1859, line: 572, baseType: !3072, size: 64, offset: 1152)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3051, file: !1859, line: 574, baseType: !3074, size: 64, offset: 1216)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1859, line: 49, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3051, file: !1859, line: 576, baseType: !3074, size: 64, offset: 1280)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3051, file: !1859, line: 578, baseType: !59, size: 64, offset: 1344)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3051, file: !1859, line: 588, baseType: !3079, size: 512, align: 512, offset: 1536)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1859, line: 497, size: 512, align: 512, elements: !3080)
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3079, file: !1859, line: 498, baseType: !480, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3079, file: !1859, line: 499, baseType: !480, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3079, file: !1859, line: 500, baseType: !480, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3079, file: !1859, line: 501, baseType: !476, size: 32, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3079, file: !1859, line: 502, baseType: !476, size: 32, offset: 224)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3079, file: !1859, line: 503, baseType: !59, size: 64, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3079, file: !1859, line: 504, baseType: !59, size: 64, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3079, file: !1859, line: 505, baseType: !59, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3079, file: !1859, line: 506, baseType: !3090, size: 64, align: 64, offset: 448)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1859, line: 445, size: 64, align: 64, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3090, file: !1859, line: 446, baseType: !7, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3090, file: !1859, line: 447, baseType: !7, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3012, file: !1859, line: 798, baseType: !3095, size: 384, offset: 3072)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1859, line: 592, size: 384, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102, !3103}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3095, file: !1859, line: 593, baseType: !117, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3095, file: !1859, line: 594, baseType: !59, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3095, file: !1859, line: 595, baseType: !59, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3095, file: !1859, line: 596, baseType: !7, size: 32, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3095, file: !1859, line: 597, baseType: !46, size: 16, offset: 288)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3095, file: !1859, line: 598, baseType: !46, size: 16, offset: 304)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3095, file: !1859, line: 600, baseType: !3104, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3012, file: !1859, line: 799, baseType: !3106, size: 1792, offset: 3456)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1859, line: 610, size: 1792, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3106, file: !1859, line: 611, baseType: !880, size: 192, align: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3106, file: !1859, line: 618, baseType: !480, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3106, file: !1859, line: 619, baseType: !480, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3106, file: !1859, line: 620, baseType: !480, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3106, file: !1859, line: 621, baseType: !480, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3106, file: !1859, line: 622, baseType: !480, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3106, file: !1859, line: 629, baseType: !717, size: 64, offset: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3106, file: !1859, line: 630, baseType: !480, size: 64, offset: 576)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3106, file: !1859, line: 631, baseType: !7, size: 32, offset: 640)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3106, file: !1859, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3106, file: !1859, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3106, file: !1859, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3106, file: !1859, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3106, file: !1859, line: 662, baseType: !2404, size: 512, offset: 704)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3106, file: !1859, line: 671, baseType: !2404, size: 512, offset: 1216)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3106, file: !1859, line: 679, baseType: !3124, size: 64, offset: 1728)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3012, file: !1859, line: 800, baseType: !3126, size: 64, offset: 5248)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3128)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1859, line: 800, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3012, file: !1859, line: 809, baseType: !3130, size: 64, offset: 5312)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1859, line: 70, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3012, file: !1859, line: 825, baseType: !3133, size: 2048, align: 512, offset: 5632)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1859, line: 509, size: 2048, align: 512, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3133, file: !1859, line: 511, baseType: !480, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3133, file: !1859, line: 512, baseType: !480, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3133, file: !1859, line: 513, baseType: !480, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3133, file: !1859, line: 514, baseType: !480, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3133, file: !1859, line: 515, baseType: !480, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3133, file: !1859, line: 516, baseType: !480, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3133, file: !1859, line: 518, baseType: !480, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3133, file: !1859, line: 519, baseType: !480, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3133, file: !1859, line: 520, baseType: !717, size: 64, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3133, file: !1859, line: 522, baseType: !480, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3133, file: !1859, line: 523, baseType: !480, size: 64, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3133, file: !1859, line: 524, baseType: !717, size: 64, offset: 704)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3133, file: !1859, line: 526, baseType: !717, size: 64, offset: 768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3133, file: !1859, line: 527, baseType: !480, size: 64, offset: 832)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3133, file: !1859, line: 529, baseType: !480, size: 64, offset: 896)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3133, file: !1859, line: 530, baseType: !480, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3133, file: !1859, line: 531, baseType: !480, size: 64, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3133, file: !1859, line: 532, baseType: !480, size: 64, offset: 1088)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3133, file: !1859, line: 533, baseType: !480, size: 64, offset: 1152)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3133, file: !1859, line: 535, baseType: !480, size: 64, offset: 1216)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3133, file: !1859, line: 536, baseType: !480, size: 64, offset: 1280)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3133, file: !1859, line: 537, baseType: !480, size: 64, offset: 1344)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3133, file: !1859, line: 538, baseType: !480, size: 64, offset: 1408)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3133, file: !1859, line: 539, baseType: !480, size: 64, offset: 1472)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3133, file: !1859, line: 540, baseType: !480, size: 64, offset: 1536)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3133, file: !1859, line: 541, baseType: !480, size: 64, offset: 1600)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3133, file: !1859, line: 542, baseType: !480, size: 64, offset: 1664)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3133, file: !1859, line: 543, baseType: !480, size: 64, offset: 1728)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3012, file: !1859, line: 833, baseType: !7, size: 32, offset: 7680)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3012, file: !1859, line: 836, baseType: !7, size: 32, offset: 7712)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3012, file: !1859, line: 837, baseType: !42, size: 32, offset: 7744)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3012, file: !1859, line: 838, baseType: !3167, size: 64, offset: 7808)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3169)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3170, line: 19, baseType: !3171)
!3170 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3170, line: 19, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3171, file: !3170, line: 19, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !3175)
!3175 = !{!3176}
!3176 = !DISubrange(count: 1)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3012, file: !1859, line: 839, baseType: !3178, size: 64, offset: 7872)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3012, file: !1859, line: 840, baseType: !3169, size: 64, offset: 7936)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3012, file: !1859, line: 841, baseType: !40, size: 64, offset: 8000)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3012, file: !1859, line: 843, baseType: !46, size: 16, offset: 8064)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3012, file: !1859, line: 845, baseType: !46, size: 16, offset: 8080)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3012, file: !1859, line: 848, baseType: !42, size: 32, offset: 8096)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3012, file: !1859, line: 849, baseType: !3185, size: 32, offset: 8128)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1859, line: 718, size: 32, elements: !3186)
!3186 = !{!3187, !3194}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3185, file: !1859, line: 724, baseType: !3188, size: 32)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !1859, line: 719, size: 32, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3188, file: !1859, line: 720, baseType: !103, size: 8)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3188, file: !1859, line: 721, baseType: !103, size: 8, offset: 8)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3188, file: !1859, line: 722, baseType: !103, size: 8, offset: 16)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3188, file: !1859, line: 723, baseType: !103, size: 8, offset: 24)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3185, file: !1859, line: 725, baseType: !476, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3012, file: !1859, line: 850, baseType: !117, size: 128, offset: 8192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3012, file: !1859, line: 851, baseType: !3197, size: 64, offset: 8320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1859, line: 60, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3012, file: !1859, line: 855, baseType: !59, size: 64, offset: 8384)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3012, file: !1859, line: 856, baseType: !103, size: 8, offset: 8448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3012, file: !1859, line: 857, baseType: !103, size: 8, offset: 8456)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3012, file: !1859, line: 858, baseType: !42, size: 32, offset: 8480)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3012, file: !1859, line: 859, baseType: !117, size: 128, offset: 8512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3012, file: !1859, line: 860, baseType: !42, size: 32, offset: 8640)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3012, file: !1859, line: 861, baseType: !117, size: 128, offset: 8704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3012, file: !1859, line: 873, baseType: !3207, size: 256, offset: 8832)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1859, line: 376, size: 256, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3207, file: !1859, line: 381, baseType: !59, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3207, file: !1859, line: 384, baseType: !482, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3207, file: !1859, line: 389, baseType: !482, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3207, file: !1859, line: 392, baseType: !482, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3012, file: !1859, line: 875, baseType: !117, size: 128, offset: 9088)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3012, file: !1859, line: 877, baseType: !3215, size: 320, offset: 9216)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3216, line: 86, size: 320, elements: !3217)
!3216 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3217 = !{!3218, !3219, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3215, file: !3216, line: 87, baseType: !42, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3215, file: !3216, line: 88, baseType: !117, size: 128, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3215, file: !3216, line: 89, baseType: !117, size: 128, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3012, file: !1859, line: 878, baseType: !880, size: 192, align: 64, offset: 9536)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3012, file: !1859, line: 881, baseType: !1412, size: 64, offset: 9728)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3012, file: !1859, line: 882, baseType: !1412, size: 64, offset: 9792)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3012, file: !1859, line: 884, baseType: !42, size: 32, offset: 9856)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3012, file: !1859, line: 885, baseType: !42, size: 32, offset: 9888)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3012, file: !1859, line: 886, baseType: !42, size: 32, offset: 9920)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3012, file: !1859, line: 888, baseType: !42, size: 32, offset: 9952)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3012, file: !1859, line: 890, baseType: !59, size: 64, offset: 9984)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3012, file: !1859, line: 893, baseType: !7, size: 32, offset: 10048)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3012, file: !1859, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3012, file: !1859, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3012, file: !1859, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3012, file: !1859, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3012, file: !1859, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3012, file: !1859, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3012, file: !1859, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3012, file: !1859, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3012, file: !1859, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3012, file: !1859, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3012, file: !1859, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3012, file: !1859, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3012, file: !1859, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3012, file: !1859, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3012, file: !1859, line: 969, baseType: !59, size: 64, offset: 10176)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3012, file: !1859, line: 971, baseType: !3246, size: 448, offset: 10240)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !259, line: 25, size: 448, elements: !3247)
!3247 = !{!3248, !3249, !3254}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3246, file: !259, line: 26, baseType: !59, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3246, file: !259, line: 27, baseType: !3250, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!368, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3246, file: !259, line: 28, baseType: !3255, size: 320, offset: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3246, file: !259, line: 28, size: 320, elements: !3256)
!3256 = !{!3257, !3267, !3292}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3255, file: !259, line: 37, baseType: !3258, size: 320)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !259, line: 30, size: 320, elements: !3259)
!3259 = !{!3260, !3262, !3263, !3264, !3265, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3258, file: !259, line: 31, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3258, file: !259, line: 32, baseType: !476, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3258, file: !259, line: 33, baseType: !476, size: 32, offset: 96)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3258, file: !259, line: 34, baseType: !476, size: 32, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3258, file: !259, line: 35, baseType: !480, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3258, file: !259, line: 36, baseType: !3261, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3255, file: !259, line: 47, baseType: !3268, size: 192)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !259, line: 39, size: 192, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3291}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3268, file: !259, line: 40, baseType: !2449, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3268, file: !259, line: 41, baseType: !258, size: 32, offset: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !259, line: 42, baseType: !3273, size: 64, offset: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !259, line: 42, size: 64, elements: !3274)
!3274 = !{!3275, !3283}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3273, file: !259, line: 43, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3278, line: 7, size: 128, elements: !3279)
!3278 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3279 = !{!3280, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3277, file: !3278, line: 8, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3277, file: !3278, line: 9, baseType: !63, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3273, file: !259, line: 44, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3286, line: 7, size: 64, elements: !3287)
!3286 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3287 = !{!3288, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3285, file: !3286, line: 8, baseType: !3289, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3286, line: 5, baseType: !873)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3285, file: !3286, line: 9, baseType: !873, size: 32, offset: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3268, file: !259, line: 46, baseType: !480, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3255, file: !259, line: 55, baseType: !3293, size: 256)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !259, line: 49, size: 256, elements: !3294)
!3294 = !{!3295, !3298, !3299, !3300, !3301}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3293, file: !259, line: 50, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !259, line: 14, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3293, file: !259, line: 51, baseType: !42, size: 32, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3293, file: !259, line: 52, baseType: !42, size: 32, offset: 96)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3293, file: !259, line: 53, baseType: !59, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3293, file: !259, line: 54, baseType: !59, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3012, file: !1859, line: 973, baseType: !3303, size: 32, offset: 10688)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !3304)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3012, file: !1859, line: 974, baseType: !3303, size: 32, offset: 10720)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3012, file: !1859, line: 978, baseType: !59, size: 64, offset: 10752)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3012, file: !1859, line: 987, baseType: !3011, size: 64, offset: 10816)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3012, file: !1859, line: 990, baseType: !3011, size: 64, offset: 10880)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3012, file: !1859, line: 995, baseType: !117, size: 128, offset: 10944)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3012, file: !1859, line: 996, baseType: !117, size: 128, offset: 11072)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3012, file: !1859, line: 997, baseType: !3011, size: 64, offset: 11200)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3012, file: !1859, line: 1005, baseType: !117, size: 128, offset: 11264)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3012, file: !1859, line: 1006, baseType: !117, size: 128, offset: 11392)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3012, file: !1859, line: 1009, baseType: !805, size: 64, offset: 11520)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3012, file: !1859, line: 1010, baseType: !3316, size: 512, offset: 11584)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 512, elements: !818)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3012, file: !1859, line: 1011, baseType: !117, size: 128, offset: 12096)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3012, file: !1859, line: 1012, baseType: !117, size: 128, offset: 12224)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3012, file: !1859, line: 1014, baseType: !1117, size: 64, offset: 12352)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3012, file: !1859, line: 1017, baseType: !689, size: 64, offset: 12416)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3012, file: !1859, line: 1020, baseType: !689, size: 64, offset: 12480)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3012, file: !1859, line: 1023, baseType: !40, size: 64, offset: 12544)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3012, file: !1859, line: 1025, baseType: !480, size: 64, offset: 12608)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3012, file: !1859, line: 1026, baseType: !480, size: 64, offset: 12672)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3012, file: !1859, line: 1031, baseType: !480, size: 64, offset: 12736)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3012, file: !1859, line: 1032, baseType: !3327, size: 192, offset: 12800)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1859, line: 324, size: 192, elements: !3328)
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3327, file: !1859, line: 326, baseType: !480, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3327, file: !1859, line: 327, baseType: !480, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3327, file: !1859, line: 328, baseType: !720, size: 32, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3012, file: !1859, line: 1041, baseType: !59, size: 64, offset: 12992)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3012, file: !1859, line: 1042, baseType: !59, size: 64, offset: 13056)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3012, file: !1859, line: 1045, baseType: !480, size: 64, offset: 13120)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3012, file: !1859, line: 1048, baseType: !480, size: 64, offset: 13184)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3012, file: !1859, line: 1051, baseType: !59, size: 64, offset: 13248)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3012, file: !1859, line: 1052, baseType: !59, size: 64, offset: 13312)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3012, file: !1859, line: 1055, baseType: !3339, size: 640, offset: 13376)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3340, line: 132, size: 640, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3341 = !{!3342, !3348, !3349}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3339, file: !3340, line: 133, baseType: !3343, size: 576)
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3344, size: 576, elements: !334)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3340, line: 117, size: 192, elements: !3345)
!3345 = !{!3346, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3344, file: !3340, line: 118, baseType: !480, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3344, file: !3340, line: 119, baseType: !2458, size: 128, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3339, file: !3340, line: 134, baseType: !7, size: 32, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3339, file: !3340, line: 135, baseType: !7, size: 32, offset: 608)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3012, file: !1859, line: 1058, baseType: !3351, size: 448, offset: 14016)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3340, line: 144, size: 448, elements: !3352)
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3351, file: !3340, line: 145, baseType: !764, size: 128, align: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3351, file: !3340, line: 146, baseType: !707, size: 256, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3351, file: !3340, line: 147, baseType: !7, size: 32, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3012, file: !1859, line: 1064, baseType: !838, size: 64, offset: 14464)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3012, file: !1859, line: 1067, baseType: !838, size: 64, offset: 14528)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3012, file: !1859, line: 1070, baseType: !838, size: 64, offset: 14592)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3012, file: !1859, line: 1074, baseType: !865, size: 64, offset: 14656)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3012, file: !1859, line: 1084, baseType: !3361, size: 128, offset: 14720)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !2285)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3012, file: !1859, line: 1086, baseType: !3363, size: 64, offset: 14848)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1859, line: 55, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3012, file: !1859, line: 1089, baseType: !3366, size: 64, offset: 14912)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3367, line: 12, size: 64, elements: !3368)
!3367 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3366, file: !3367, line: 13, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3367, line: 8, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3012, file: !1859, line: 1090, baseType: !3373, size: 128, offset: 14976)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3374, line: 13, size: 128, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3373, file: !3374, line: 14, baseType: !117, size: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3012, file: !1859, line: 1097, baseType: !3378, size: 64, offset: 15104)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1859, line: 50, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3012, file: !1859, line: 1100, baseType: !3381, size: 64, offset: 15168)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1859, line: 1100, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3012, file: !1859, line: 1103, baseType: !3384, size: 64, offset: 15232)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1859, line: 53, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3012, file: !1859, line: 1107, baseType: !3387, size: 64, offset: 15296)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3389, line: 31, size: 576, elements: !3390)
!3389 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3390 = !{!3391, !3392, !3395, !3398, !3401, !3402, !3405, !3408, !3409}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3388, file: !3389, line: 32, baseType: !809, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3388, file: !3389, line: 33, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3389, line: 9, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3388, file: !3389, line: 34, baseType: !3396, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3389, line: 10, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3388, file: !3389, line: 35, baseType: !3399, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3389, line: 8, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3388, file: !3389, line: 36, baseType: !829, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3388, file: !3389, line: 37, baseType: !3403, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !867, line: 34, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3388, file: !3389, line: 38, baseType: !3406, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3389, line: 38, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3388, file: !3389, line: 39, baseType: !3406, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3388, file: !3389, line: 40, baseType: !3410, size: 64, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3412, line: 771, size: 384, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3411, file: !3412, line: 772, baseType: !1063, size: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3411, file: !3412, line: 773, baseType: !1030, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3411, file: !3412, line: 774, baseType: !1165, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3411, file: !3412, line: 775, baseType: !3418, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3420, line: 209, size: 4736, elements: !3421)
!3420 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3421 = !{!3422, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3419, file: !3420, line: 215, baseType: !3423, size: 896)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3424, size: 896, elements: !3571)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3420, line: 152, size: 1600, elements: !3426)
!3426 = !{!3427, !3622, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3749}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3425, file: !3420, line: 154, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3420, line: 389, size: 7872, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3534, !3540, !3541, !3545, !3546, !3547, !3548, !3549, !3550, !3568, !3569, !3573, !3574, !3575, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3609, !3612, !3613, !3620}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3429, file: !3420, line: 391, baseType: !3425, size: 1600)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3429, file: !3420, line: 393, baseType: !59, size: 64, offset: 1600)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3429, file: !3420, line: 401, baseType: !42, size: 32, offset: 1664)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3429, file: !3420, line: 404, baseType: !42, size: 32, offset: 1696)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3429, file: !3420, line: 417, baseType: !42, size: 32, offset: 1728)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3429, file: !3420, line: 418, baseType: !42, size: 32, offset: 1760)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3429, file: !3420, line: 419, baseType: !42, size: 32, offset: 1792)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3429, file: !3420, line: 432, baseType: !42, size: 32, offset: 1824)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3429, file: !3420, line: 433, baseType: !42, size: 32, offset: 1856)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3429, file: !3420, line: 434, baseType: !42, size: 32, offset: 1888)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3429, file: !3420, line: 436, baseType: !42, size: 32, offset: 1920)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3429, file: !3420, line: 439, baseType: !7, size: 32, offset: 1952)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3429, file: !3420, line: 441, baseType: !3444, size: 64, offset: 1984)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !580, line: 190, size: 1152, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3526, !3527, !3528, !3529, !3530, !3533}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3445, file: !580, line: 191, baseType: !69, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3445, file: !580, line: 192, baseType: !69, size: 32, offset: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3445, file: !580, line: 202, baseType: !3444, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3445, file: !580, line: 203, baseType: !36, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3445, file: !580, line: 205, baseType: !880, size: 192, align: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3445, file: !580, line: 207, baseType: !1527, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3445, file: !580, line: 208, baseType: !7, size: 32, offset: 448)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !580, line: 209, baseType: !3455, size: 256, offset: 512)
!3455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3445, file: !580, line: 209, size: 256, elements: !3456)
!3456 = !{!3457, !3466, !3470}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3455, file: !580, line: 210, baseType: !3458, size: 256)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !580, line: 153, size: 256, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3465}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3458, file: !580, line: 154, baseType: !59, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3458, file: !580, line: 156, baseType: !1160, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3458, file: !580, line: 162, baseType: !3463, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !580, line: 162, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3458, file: !580, line: 167, baseType: !59, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3455, file: !580, line: 211, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !580, line: 170, size: 64, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3467, file: !580, line: 171, baseType: !3444, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3455, file: !580, line: 212, baseType: !3471, size: 256)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !580, line: 174, size: 256, elements: !3472)
!3472 = !{!3473, !3521, !3524, !3525}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3471, file: !580, line: 175, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !580, line: 271, size: 768, elements: !3477)
!3477 = !{!3478, !3498, !3502, !3503, !3504, !3505, !3506, !3510, !3511, !3512, !3513, !3517}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3476, file: !580, line: 276, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!42, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !580, line: 251, size: 1216, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3483, file: !580, line: 253, baseType: !3444, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3483, file: !580, line: 254, baseType: !1222, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3483, file: !580, line: 255, baseType: !695, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3483, file: !580, line: 256, baseType: !40, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3483, file: !580, line: 259, baseType: !707, size: 256, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3483, file: !580, line: 260, baseType: !707, size: 256, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3483, file: !580, line: 261, baseType: !42, size: 32, offset: 768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3483, file: !580, line: 262, baseType: !117, size: 128, offset: 832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3483, file: !580, line: 263, baseType: !333, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3483, file: !580, line: 265, baseType: !55, size: 64, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3483, file: !580, line: 266, baseType: !947, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3483, file: !580, line: 267, baseType: !947, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3483, file: !580, line: 268, baseType: !1598, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3476, file: !580, line: 277, baseType: !3499, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !3482}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3476, file: !580, line: 290, baseType: !745, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3476, file: !580, line: 292, baseType: !733, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3476, file: !580, line: 293, baseType: !741, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3476, file: !580, line: 294, baseType: !737, size: 64, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3476, file: !580, line: 296, baseType: !3507, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!365, !3482, !333, !55, !61}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3476, file: !580, line: 306, baseType: !55, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3476, file: !580, line: 313, baseType: !947, size: 8, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3476, file: !580, line: 314, baseType: !3507, size: 64, offset: 576)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3476, file: !580, line: 317, baseType: !3514, size: 64, offset: 640)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!1809, !3482, !1811}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3476, file: !580, line: 320, baseType: !3518, size: 64, offset: 704)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!42, !3482, !1399}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3471, file: !580, line: 176, baseType: !3522, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !580, line: 35, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3471, file: !580, line: 177, baseType: !61, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3471, file: !580, line: 178, baseType: !3444, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3445, file: !580, line: 215, baseType: !40, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3445, file: !580, line: 221, baseType: !480, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3445, file: !580, line: 223, baseType: !46, size: 16, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3445, file: !580, line: 224, baseType: !44, size: 16, offset: 912)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3445, file: !580, line: 225, baseType: !3531, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !580, line: 36, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3445, file: !580, line: 227, baseType: !764, size: 128, align: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3429, file: !3420, line: 442, baseType: !3535, size: 448, offset: 2048)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3420, line: 138, size: 448, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3535, file: !3420, line: 140, baseType: !3444, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3535, file: !3420, line: 141, baseType: !59, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3535, file: !3420, line: 142, baseType: !2371, size: 320, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3429, file: !3420, line: 443, baseType: !3535, size: 448, offset: 2496)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3429, file: !3420, line: 446, baseType: !3542, offset: 2944)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3535, elements: !3543)
!3543 = !{!3544}
!3544 = !DISubrange(count: 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3429, file: !3420, line: 455, baseType: !113, size: 16, offset: 2944)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3429, file: !3420, line: 456, baseType: !113, size: 16, offset: 2960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3429, file: !3420, line: 457, baseType: !113, size: 16, offset: 2976)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3429, file: !3420, line: 458, baseType: !113, size: 16, offset: 2992)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3429, file: !3420, line: 461, baseType: !3423, size: 896, offset: 3008)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3429, file: !3420, line: 463, baseType: !3551, size: 64, offset: 3904)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3420, line: 537, size: 41664, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3567}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3552, file: !3420, line: 538, baseType: !3463, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3552, file: !3420, line: 541, baseType: !7, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3552, file: !3420, line: 544, baseType: !42, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3552, file: !3420, line: 547, baseType: !117, size: 128, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3552, file: !3420, line: 548, baseType: !764, size: 128, align: 64, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3552, file: !3420, line: 555, baseType: !3429, size: 7872, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3552, file: !3420, line: 558, baseType: !3428, size: 64, offset: 8256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3552, file: !3420, line: 561, baseType: !69, size: 32, offset: 8320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3552, file: !3420, line: 564, baseType: !7, size: 32, offset: 8352)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3552, file: !3420, line: 567, baseType: !3564, size: 32768, offset: 8384)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !3565)
!3565 = !{!3566}
!3566 = !DISubrange(count: 4096)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3552, file: !3420, line: 570, baseType: !2937, size: 512, offset: 41152)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3429, file: !3420, line: 469, baseType: !117, size: 128, offset: 3968)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3429, file: !3420, line: 478, baseType: !3570, size: 1792, offset: 4096)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 14)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3429, file: !3420, line: 487, baseType: !3428, size: 64, offset: 5888)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3429, file: !3420, line: 488, baseType: !3428, size: 64, offset: 5952)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3429, file: !3420, line: 491, baseType: !3576, size: 64, offset: 6016)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3420, line: 327, size: 896, elements: !3578)
!3578 = !{!3579, !3582, !3592, !3593, !3594, !3595, !3596}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3577, file: !3420, line: 332, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3581, line: 64, elements: !608)
!3581 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3577, file: !3420, line: 333, baseType: !3583, size: 192)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3420, line: 299, size: 192, elements: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3583, file: !3420, line: 300, baseType: !3586, size: 192)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3587, line: 17, size: 192, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3586, file: !3587, line: 18, baseType: !480, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3586, file: !3587, line: 19, baseType: !480, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3586, file: !3587, line: 20, baseType: !482, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3577, file: !3420, line: 339, baseType: !3583, size: 192, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3577, file: !3420, line: 347, baseType: !3583, size: 192, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3577, file: !3420, line: 353, baseType: !3583, size: 192, offset: 576)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3577, file: !3420, line: 366, baseType: !3428, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3577, file: !3420, line: 367, baseType: !3428, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3429, file: !3420, line: 492, baseType: !117, size: 128, offset: 6080)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3429, file: !3420, line: 495, baseType: !3583, size: 192, offset: 6208)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3429, file: !3420, line: 496, baseType: !3583, size: 192, offset: 6400)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3429, file: !3420, line: 497, baseType: !3327, size: 192, offset: 6592)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3429, file: !3420, line: 503, baseType: !117, size: 128, offset: 6784)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3429, file: !3420, line: 504, baseType: !707, size: 256, offset: 6912)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3429, file: !3420, line: 507, baseType: !74, size: 192, offset: 7168)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3429, file: !3420, line: 510, baseType: !1079, size: 256, offset: 7360)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3429, file: !3420, line: 513, baseType: !3606, size: 64, offset: 7616)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3608, line: 214, elements: !608)
!3608 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3429, file: !3420, line: 516, baseType: !3610, offset: 7680)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3611, line: 76, elements: !608)
!3611 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3429, file: !3420, line: 519, baseType: !69, size: 32, offset: 7680)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3429, file: !3420, line: 522, baseType: !3614, size: 128, offset: 7712)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3420, line: 370, size: 128, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3614, file: !3420, line: 372, baseType: !947, size: 8)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3614, file: !3420, line: 375, baseType: !42, size: 32, offset: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3614, file: !3420, line: 380, baseType: !42, size: 32, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3614, file: !3420, line: 386, baseType: !42, size: 32, offset: 96)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3429, file: !3420, line: 529, baseType: !3621, offset: 7872)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3428, elements: !831)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3425, file: !3420, line: 157, baseType: !3623, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3420, line: 669, size: 1984, elements: !3625)
!3625 = !{!3626, !3630, !3634, !3638, !3639, !3640, !3641, !3645, !3649, !3650, !3656, !3660, !3661, !3665, !3669, !3673, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3694, !3695, !3732, !3733}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3624, file: !3420, line: 670, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!3424, !3424}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3624, file: !3420, line: 671, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!42, !3424}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3624, file: !3420, line: 672, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3424}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3624, file: !3420, line: 673, baseType: !3635, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3624, file: !3420, line: 674, baseType: !3635, size: 64, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3624, file: !3420, line: 675, baseType: !3635, size: 64, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3624, file: !3420, line: 676, baseType: !3642, size: 64, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3424, !42}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3624, file: !3420, line: 677, baseType: !3646, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!42, !695, !3424}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3624, file: !3420, line: 679, baseType: !3646, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3624, file: !3420, line: 682, baseType: !3651, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!42, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3420, line: 30, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3624, file: !3420, line: 683, baseType: !3657, size: 64, offset: 640)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3654}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3624, file: !3420, line: 684, baseType: !3657, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3624, file: !3420, line: 685, baseType: !3662, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3624, file: !3420, line: 686, baseType: !3666, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!42, !3011, !3418}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3624, file: !3420, line: 688, baseType: !3670, size: 64, offset: 896)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !3011, !3418}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3624, file: !3420, line: 689, baseType: !3674, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{null, !3011}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3624, file: !3420, line: 690, baseType: !3674, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3624, file: !3420, line: 691, baseType: !3674, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3624, file: !3420, line: 692, baseType: !3635, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3624, file: !3420, line: 694, baseType: !947, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3624, file: !3420, line: 707, baseType: !947, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3624, file: !3420, line: 719, baseType: !947, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3624, file: !3420, line: 722, baseType: !42, size: 32, offset: 1248)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !3420, line: 723, baseType: !36, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3624, file: !3420, line: 726, baseType: !36, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3624, file: !3420, line: 729, baseType: !3551, size: 64, offset: 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3624, file: !3420, line: 732, baseType: !3688, size: 192, offset: 1472)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3689, line: 19, size: 192, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3690 = !{!3691, !3692, !3693}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3688, file: !3689, line: 20, baseType: !2744, size: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3688, file: !3689, line: 21, baseType: !7, size: 32, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3688, file: !3689, line: 22, baseType: !7, size: 32, offset: 160)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3624, file: !3420, line: 738, baseType: !117, size: 128, offset: 1664)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3624, file: !3420, line: 744, baseType: !3696, size: 64, offset: 1792)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3420, line: 580, size: 1728, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3708, !3709, !3710, !3714, !3718, !3719, !3720, !3721, !3722, !3726, !3730, !3731}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3697, file: !3420, line: 586, baseType: !2937, size: 512)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3697, file: !3420, line: 587, baseType: !59, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3697, file: !3420, line: 593, baseType: !55, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !3420, line: 596, baseType: !7, size: 32, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3697, file: !3420, line: 604, baseType: !7, size: 32, offset: 672)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3697, file: !3420, line: 610, baseType: !3623, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3697, file: !3420, line: 611, baseType: !117, size: 128, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3697, file: !3420, line: 612, baseType: !3707, size: 64, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3697, file: !3420, line: 614, baseType: !3479, size: 64, offset: 960)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3697, file: !3420, line: 615, baseType: !3499, size: 64, offset: 1024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3697, file: !3420, line: 621, baseType: !3711, size: 64, offset: 1088)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!480, !3424, !3696}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3697, file: !3420, line: 625, baseType: !3715, size: 64, offset: 1152)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!717, !3424, !3696}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3697, file: !3420, line: 628, baseType: !745, size: 64, offset: 1216)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3697, file: !3420, line: 631, baseType: !733, size: 64, offset: 1280)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3697, file: !3420, line: 632, baseType: !741, size: 64, offset: 1344)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3697, file: !3420, line: 633, baseType: !737, size: 64, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3697, file: !3420, line: 640, baseType: !3723, size: 64, offset: 1472)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!42, !3424, !3696, !480}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3697, file: !3420, line: 645, baseType: !3727, size: 64, offset: 1536)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!42, !3424, !3696, !717}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3697, file: !3420, line: 654, baseType: !3507, size: 64, offset: 1600)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3697, file: !3420, line: 657, baseType: !3514, size: 64, offset: 1664)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3624, file: !3420, line: 745, baseType: !3696, size: 64, offset: 1856)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3624, file: !3420, line: 754, baseType: !7, size: 32, offset: 1920)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3425, file: !3420, line: 160, baseType: !1352, size: 128, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3425, file: !3420, line: 163, baseType: !117, size: 128, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3425, file: !3420, line: 164, baseType: !117, size: 128, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3425, file: !3420, line: 167, baseType: !117, size: 128, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3425, file: !3420, line: 173, baseType: !42, size: 32, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3425, file: !3420, line: 175, baseType: !7, size: 32, offset: 672)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3425, file: !3420, line: 183, baseType: !480, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3425, file: !3420, line: 189, baseType: !69, size: 32, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3425, file: !3420, line: 192, baseType: !1079, size: 256, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3425, file: !3420, line: 193, baseType: !3744, size: 448, offset: 1088)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1080, line: 120, size: 448, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3744, file: !1080, line: 121, baseType: !1079, size: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3744, file: !1080, line: 122, baseType: !764, size: 128, align: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3744, file: !1080, line: 125, baseType: !2928, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3425, file: !3420, line: 199, baseType: !3424, size: 64, offset: 1536)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3419, file: !3420, line: 218, baseType: !809, size: 32, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3419, file: !3420, line: 226, baseType: !3418, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3419, file: !3420, line: 229, baseType: !3428, size: 64, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3419, file: !3420, line: 232, baseType: !42, size: 32, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3419, file: !3420, line: 241, baseType: !117, size: 128, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3419, file: !3420, line: 242, baseType: !117, size: 128, offset: 1280)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3419, file: !3420, line: 243, baseType: !117, size: 128, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3419, file: !3420, line: 246, baseType: !117, size: 128, offset: 1536)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3419, file: !3420, line: 255, baseType: !3570, size: 1792, offset: 1664)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3419, file: !3420, line: 258, baseType: !117, size: 128, offset: 3456)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3419, file: !3420, line: 259, baseType: !117, size: 128, offset: 3584)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3419, file: !3420, line: 265, baseType: !600, size: 128, offset: 3712)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3419, file: !3420, line: 271, baseType: !117, size: 128, offset: 3840)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3419, file: !3420, line: 277, baseType: !117, size: 128, offset: 3968)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3419, file: !3420, line: 278, baseType: !117, size: 128, offset: 4096)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3419, file: !3420, line: 279, baseType: !117, size: 128, offset: 4224)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3419, file: !3420, line: 288, baseType: !3428, size: 64, offset: 4352)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3419, file: !3420, line: 289, baseType: !3428, size: 64, offset: 4416)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3419, file: !3420, line: 290, baseType: !3418, size: 64, offset: 4480)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3419, file: !3420, line: 293, baseType: !947, size: 8, offset: 4544)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3419, file: !3420, line: 296, baseType: !764, size: 128, align: 64, offset: 4608)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3012, file: !1859, line: 1110, baseType: !3772, size: 64, offset: 15360)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3774, line: 93, size: 8768, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3826, !3835, !3836, !3838, !3839, !3840, !3843, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3881, !3882, !3889, !3899, !3961, !3962, !3965, !3966, !3967, !3968, !3969, !3970}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3773, file: !3774, line: 94, baseType: !809, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3773, file: !3774, line: 95, baseType: !69, size: 32, offset: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3773, file: !3774, line: 96, baseType: !42, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3773, file: !3774, line: 97, baseType: !42, size: 32, offset: 96)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3773, file: !3774, line: 98, baseType: !117, size: 128, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3773, file: !3774, line: 100, baseType: !74, size: 192, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3773, file: !3774, line: 103, baseType: !3011, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3773, file: !3774, line: 106, baseType: !3784, size: 192, offset: 512)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3785, line: 32, size: 192, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3784, file: !3785, line: 33, baseType: !117, size: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3784, file: !3785, line: 34, baseType: !3789, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3790, line: 25, baseType: !3791)
!3790 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3790, line: 23, size: 64, elements: !3792)
!3792 = !{!3793}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3791, file: !3790, line: 24, baseType: !3174, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3773, file: !3774, line: 109, baseType: !596, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3773, file: !3774, line: 112, baseType: !42, size: 32, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3773, file: !3774, line: 114, baseType: !42, size: 32, offset: 800)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3773, file: !3774, line: 115, baseType: !3011, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3773, file: !3774, line: 118, baseType: !42, size: 32, offset: 896)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3773, file: !3774, line: 119, baseType: !7, size: 32, offset: 928)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3773, file: !3774, line: 121, baseType: !3801, size: 64, offset: 960)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3774, line: 80, size: 448, elements: !3803)
!3803 = !{!3804, !3805, !3811}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3802, file: !3774, line: 81, baseType: !69, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3802, file: !3774, line: 82, baseType: !3806, size: 128, offset: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3774, line: 75, size: 128, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3806, file: !3774, line: 76, baseType: !3011, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3806, file: !3774, line: 77, baseType: !3810, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3802, file: !3774, line: 83, baseType: !1118, size: 256, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3773, file: !3774, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3773, file: !3774, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3773, file: !3774, line: 138, baseType: !7, size: 32, offset: 1056)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3773, file: !3774, line: 139, baseType: !117, size: 128, offset: 1088)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3773, file: !3774, line: 142, baseType: !2404, size: 512, offset: 1216)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3773, file: !3774, line: 143, baseType: !2384, size: 64, offset: 1728)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3773, file: !3774, line: 150, baseType: !3819, size: 256, offset: 1792)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3820, size: 256, elements: !3824)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3774, line: 38, size: 128, elements: !3821)
!3821 = !{!3822, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3820, file: !3774, line: 39, baseType: !480, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3820, file: !3774, line: 40, baseType: !480, size: 64, offset: 64)
!3824 = !{!3825}
!3825 = !DISubrange(count: 2)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3773, file: !3774, line: 156, baseType: !3827, size: 192, offset: 2048)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3774, line: 66, size: 192, elements: !3828)
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3827, file: !3774, line: 67, baseType: !3830, size: 192)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3774, line: 47, size: 192, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3830, file: !3774, line: 48, baseType: !713, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3830, file: !3774, line: 49, baseType: !713, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3830, file: !3774, line: 50, baseType: !713, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3773, file: !3774, line: 160, baseType: !3339, size: 640, offset: 2240)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3773, file: !3774, line: 163, baseType: !3837, size: 256, offset: 2880)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 256, elements: !818)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3773, file: !3774, line: 169, baseType: !805, size: 64, offset: 3136)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3773, file: !3774, line: 172, baseType: !42, size: 32, offset: 3200)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3773, file: !3774, line: 174, baseType: !3841, size: 64, offset: 3264)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3774, line: 174, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3773, file: !3774, line: 185, baseType: !3844, size: 64, offset: 3328)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !449, line: 860, baseType: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 853, size: 64, elements: !3846)
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3845, file: !449, line: 858, baseType: !448, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3845, file: !449, line: 859, baseType: !79, size: 32, offset: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3773, file: !3774, line: 186, baseType: !480, size: 64, offset: 3392)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3773, file: !3774, line: 186, baseType: !480, size: 64, offset: 3456)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3773, file: !3774, line: 186, baseType: !480, size: 64, offset: 3520)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3773, file: !3774, line: 186, baseType: !480, size: 64, offset: 3584)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3773, file: !3774, line: 187, baseType: !480, size: 64, offset: 3648)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3773, file: !3774, line: 188, baseType: !480, size: 64, offset: 3712)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3773, file: !3774, line: 189, baseType: !3327, size: 192, offset: 3776)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3773, file: !3774, line: 190, baseType: !59, size: 64, offset: 3968)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3773, file: !3774, line: 190, baseType: !59, size: 64, offset: 4032)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3773, file: !3774, line: 190, baseType: !59, size: 64, offset: 4096)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3773, file: !3774, line: 190, baseType: !59, size: 64, offset: 4160)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3773, file: !3774, line: 191, baseType: !59, size: 64, offset: 4224)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3773, file: !3774, line: 191, baseType: !59, size: 64, offset: 4288)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3773, file: !3774, line: 191, baseType: !59, size: 64, offset: 4352)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3773, file: !3774, line: 191, baseType: !59, size: 64, offset: 4416)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3773, file: !3774, line: 192, baseType: !59, size: 64, offset: 4480)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3773, file: !3774, line: 192, baseType: !59, size: 64, offset: 4544)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3773, file: !3774, line: 192, baseType: !59, size: 64, offset: 4608)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3773, file: !3774, line: 192, baseType: !59, size: 64, offset: 4672)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3773, file: !3774, line: 193, baseType: !59, size: 64, offset: 4736)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3773, file: !3774, line: 193, baseType: !59, size: 64, offset: 4800)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3773, file: !3774, line: 194, baseType: !3871, size: 448, offset: 4864)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3872, line: 12, size: 448, elements: !3873)
!3872 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3871, file: !3872, line: 15, baseType: !480, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3871, file: !3872, line: 17, baseType: !480, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3871, file: !3872, line: 19, baseType: !480, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3871, file: !3872, line: 21, baseType: !480, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3871, file: !3872, line: 29, baseType: !480, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3871, file: !3872, line: 35, baseType: !480, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3871, file: !3872, line: 44, baseType: !480, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3773, file: !3774, line: 202, baseType: !482, size: 64, offset: 5312)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3773, file: !3774, line: 213, baseType: !3883, size: 2048, offset: 5376)
!3883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3884, size: 2048, elements: !2285)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3885, line: 43, size: 128, elements: !3886)
!3885 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3884, file: !3885, line: 44, baseType: !58, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3884, file: !3885, line: 45, baseType: !58, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3773, file: !3774, line: 216, baseType: !3890, size: 448, offset: 7424)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3774, line: 30, size: 448, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3890, file: !3774, line: 31, baseType: !42, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3890, file: !3774, line: 32, baseType: !368, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3890, file: !3774, line: 33, baseType: !59, size: 64, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3890, file: !3774, line: 34, baseType: !480, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3890, file: !3774, line: 34, baseType: !480, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3890, file: !3774, line: 35, baseType: !59, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3890, file: !3774, line: 35, baseType: !59, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3773, file: !3774, line: 219, baseType: !3900, size: 64, offset: 7872)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3902, line: 41, size: 3456, elements: !3903)
!3902 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3901, file: !3902, line: 47, baseType: !114, size: 16)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3901, file: !3902, line: 48, baseType: !477, size: 32, offset: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3901, file: !3902, line: 54, baseType: !105, size: 8, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3901, file: !3902, line: 55, baseType: !105, size: 8, offset: 72)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3901, file: !3902, line: 73, baseType: !481, size: 64, align: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3901, file: !3902, line: 74, baseType: !481, size: 64, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3901, file: !3902, line: 81, baseType: !481, size: 64, offset: 256)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3901, file: !3902, line: 82, baseType: !481, size: 64, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3901, file: !3902, line: 85, baseType: !481, size: 64, offset: 384)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3901, file: !3902, line: 86, baseType: !481, size: 64, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3901, file: !3902, line: 94, baseType: !481, size: 64, offset: 512)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3901, file: !3902, line: 102, baseType: !481, size: 64, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3901, file: !3902, line: 107, baseType: !2271, size: 256, offset: 640)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3901, file: !3902, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3901, file: !3902, line: 110, baseType: !3919, size: 24, offset: 904)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !334)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3901, file: !3902, line: 111, baseType: !477, size: 32, align: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3901, file: !3902, line: 113, baseType: !477, size: 32, offset: 992)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3901, file: !3902, line: 114, baseType: !477, size: 32, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3901, file: !3902, line: 115, baseType: !477, size: 32, offset: 1056)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3901, file: !3902, line: 117, baseType: !477, size: 32, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3901, file: !3902, line: 118, baseType: !481, size: 64, align: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3901, file: !3902, line: 120, baseType: !481, size: 64, offset: 1216)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3901, file: !3902, line: 121, baseType: !481, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3901, file: !3902, line: 122, baseType: !481, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3901, file: !3902, line: 123, baseType: !481, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3901, file: !3902, line: 133, baseType: !481, size: 64, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3901, file: !3902, line: 137, baseType: !481, size: 64, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3901, file: !3902, line: 142, baseType: !481, size: 64, offset: 1600)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3901, file: !3902, line: 143, baseType: !481, size: 64, offset: 1664)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3901, file: !3902, line: 146, baseType: !481, size: 64, offset: 1728)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3901, file: !3902, line: 147, baseType: !481, size: 64, offset: 1792)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3901, file: !3902, line: 148, baseType: !481, size: 64, offset: 1856)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3901, file: !3902, line: 149, baseType: !481, size: 64, offset: 1920)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3901, file: !3902, line: 154, baseType: !481, size: 64, offset: 1984)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3901, file: !3902, line: 155, baseType: !481, size: 64, offset: 2048)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3901, file: !3902, line: 156, baseType: !481, size: 64, offset: 2112)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3901, file: !3902, line: 158, baseType: !481, size: 64, offset: 2176)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3901, file: !3902, line: 159, baseType: !481, size: 64, offset: 2240)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3901, file: !3902, line: 162, baseType: !481, size: 64, offset: 2304)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3901, file: !3902, line: 163, baseType: !481, size: 64, offset: 2368)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3901, file: !3902, line: 164, baseType: !481, size: 64, offset: 2432)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3901, file: !3902, line: 167, baseType: !481, size: 64, offset: 2496)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3901, file: !3902, line: 168, baseType: !481, size: 64, offset: 2560)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3901, file: !3902, line: 171, baseType: !481, size: 64, offset: 2624)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3901, file: !3902, line: 172, baseType: !481, size: 64, offset: 2688)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3901, file: !3902, line: 175, baseType: !481, size: 64, offset: 2752)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3901, file: !3902, line: 178, baseType: !481, size: 64, offset: 2816)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3901, file: !3902, line: 179, baseType: !481, size: 64, offset: 2880)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3901, file: !3902, line: 182, baseType: !477, size: 32, offset: 2944)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3901, file: !3902, line: 186, baseType: !481, size: 64, align: 64, offset: 3008)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3901, file: !3902, line: 194, baseType: !481, size: 64, offset: 3072)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3901, file: !3902, line: 195, baseType: !481, size: 64, offset: 3136)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3901, file: !3902, line: 199, baseType: !481, size: 64, offset: 3200)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3901, file: !3902, line: 200, baseType: !481, size: 64, offset: 3264)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3901, file: !3902, line: 203, baseType: !481, size: 64, offset: 3328)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3901, file: !3902, line: 204, baseType: !481, size: 64, offset: 3392)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3773, file: !3774, line: 222, baseType: !7, size: 32, offset: 7936)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3773, file: !3774, line: 223, baseType: !3963, size: 64, offset: 8000)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3774, line: 223, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3773, file: !3774, line: 230, baseType: !947, size: 8, offset: 8064)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3773, file: !3774, line: 231, baseType: !916, size: 16, offset: 8080)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3773, file: !3774, line: 232, baseType: !916, size: 16, offset: 8096)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3773, file: !3774, line: 234, baseType: !1412, size: 64, offset: 8128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3773, file: !3774, line: 237, baseType: !707, size: 256, offset: 8192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3773, file: !3774, line: 243, baseType: !888, size: 320, offset: 8448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3012, file: !1859, line: 1111, baseType: !3972, size: 64, offset: 15424)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3774, line: 20, size: 16640, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3973, file: !3774, line: 21, baseType: !79, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3973, file: !3774, line: 22, baseType: !809, size: 32, offset: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3973, file: !3774, line: 23, baseType: !74, size: 192, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3973, file: !3774, line: 24, baseType: !3979, size: 16384, offset: 256)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3980, size: 16384, elements: !338)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3785, line: 51, size: 256, elements: !3981)
!3981 = !{!3982}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3980, file: !3785, line: 52, baseType: !3983, size: 256)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3785, line: 37, size: 256, elements: !3984)
!3984 = !{!3985, !3992, !3993, !3997}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3983, file: !3785, line: 39, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3987, line: 83, baseType: !3988)
!3987 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3987, line: 82, baseType: !3990)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !42}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3983, file: !3785, line: 40, baseType: !59, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3983, file: !3785, line: 46, baseType: !3994, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3987, line: 86, baseType: !3995)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3987, line: 85, baseType: !3663)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3983, file: !3785, line: 48, baseType: !3789, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3012, file: !1859, line: 1112, baseType: !3789, size: 64, offset: 15488)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3012, file: !1859, line: 1113, baseType: !3789, size: 64, offset: 15552)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3012, file: !1859, line: 1115, baseType: !3789, size: 64, offset: 15616)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3012, file: !1859, line: 1116, baseType: !3784, size: 192, offset: 15680)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3012, file: !1859, line: 1117, baseType: !59, size: 64, offset: 15872)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3012, file: !1859, line: 1118, baseType: !55, size: 64, offset: 15936)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3012, file: !1859, line: 1119, baseType: !7, size: 32, offset: 16000)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3012, file: !1859, line: 1121, baseType: !767, size: 64, offset: 16064)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3012, file: !1859, line: 1125, baseType: !4007, size: 64, offset: 16128)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1859, line: 43, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3012, file: !1859, line: 1127, baseType: !413, size: 32, offset: 16192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3012, file: !1859, line: 1128, baseType: !7, size: 32, offset: 16224)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3012, file: !1859, line: 1130, baseType: !4012, size: 128, offset: 16256)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4013, line: 37, size: 128, elements: !4014)
!4013 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4014 = !{!4015, !4016, !4017}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4012, file: !4013, line: 38, baseType: !42, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4012, file: !4013, line: 39, baseType: !69, size: 32, offset: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4012, file: !4013, line: 40, baseType: !4018, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4013, line: 24, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3012, file: !1859, line: 1131, baseType: !4021, size: 256, offset: 16384)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4022, line: 12, size: 256, elements: !4023)
!4022 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4021, file: !4022, line: 13, baseType: !333, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4021, file: !4022, line: 14, baseType: !59, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4021, file: !4022, line: 15, baseType: !59, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4021, file: !4022, line: 16, baseType: !947, size: 8, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3012, file: !1859, line: 1134, baseType: !480, size: 64, offset: 16640)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3012, file: !1859, line: 1135, baseType: !480, size: 64, offset: 16704)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3012, file: !1859, line: 1138, baseType: !79, size: 32, offset: 16768)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3012, file: !1859, line: 1141, baseType: !720, size: 32, offset: 16800)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3012, file: !1859, line: 1143, baseType: !4033, size: 64, offset: 16832)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1859, line: 735, size: 64, elements: !4034)
!4034 = !{!4035}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4033, file: !1859, line: 736, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3012, file: !1859, line: 1147, baseType: !2461, size: 128, offset: 16896)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3012, file: !1859, line: 1149, baseType: !3011, size: 64, offset: 17024)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3012, file: !1859, line: 1151, baseType: !4040, size: 64, offset: 17088)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1859, line: 1151, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3012, file: !1859, line: 1188, baseType: !40, size: 64, offset: 17152)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3012, file: !1859, line: 1191, baseType: !4044, size: 64, offset: 17216)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1859, line: 44, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3012, file: !1859, line: 1194, baseType: !4047, size: 64, offset: 17280)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1859, line: 45, flags: DIFlagFwdDecl)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3012, file: !1859, line: 1197, baseType: !4050, size: 64, offset: 17344)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4052, line: 155, size: 64, elements: !4053)
!4052 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4053 = !{!4054}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4051, file: !4052, line: 157, baseType: !59, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3012, file: !1859, line: 1199, baseType: !4056, size: 64, offset: 17408)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2148, line: 99, size: 128, elements: !4058)
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4057, file: !2148, line: 100, baseType: !711, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4057, file: !2148, line: 101, baseType: !69, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4057, file: !2148, line: 103, baseType: !46, size: 16, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3012, file: !1859, line: 1202, baseType: !4063, size: 64, offset: 17472)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1859, line: 48, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3012, file: !1859, line: 1205, baseType: !59, size: 64, offset: 17536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3012, file: !1859, line: 1206, baseType: !4067, size: 64, offset: 17600)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3785, line: 14, baseType: !4069)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3785, line: 12, size: 384, elements: !4070)
!4070 = !{!4071}
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !3785, line: 13, baseType: !4072, size: 384)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !3785, line: 13, size: 384, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4072, file: !3785, line: 13, baseType: !42, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4072, file: !3785, line: 13, baseType: !42, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4072, file: !3785, line: 13, baseType: !42, size: 32, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4072, file: !3785, line: 13, baseType: !4078, size: 256, offset: 128)
!4078 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4079, line: 37, size: 256, elements: !4080)
!4079 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4080 = !{!4081, !4086, !4099, !4105, !4114, !4141, !4146}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4078, file: !4079, line: 42, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 39, size: 64, elements: !4083)
!4083 = !{!4084, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4082, file: !4079, line: 40, baseType: !3304, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4082, file: !4079, line: 41, baseType: !419, size: 32, offset: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4078, file: !4079, line: 50, baseType: !4087, size: 192)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 45, size: 192, elements: !4088)
!4088 = !{!4089, !4091, !4092, !4098}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4087, file: !4079, line: 46, baseType: !4090, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4087, file: !4079, line: 47, baseType: !42, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4087, file: !4079, line: 48, baseType: !4093, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4079, line: 11, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4079, line: 8, size: 64, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4094, file: !4079, line: 9, baseType: !42, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4094, file: !4079, line: 10, baseType: !40, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4087, file: !4079, line: 49, baseType: !42, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4078, file: !4079, line: 57, baseType: !4100, size: 128)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 53, size: 128, elements: !4101)
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4100, file: !4079, line: 54, baseType: !3304, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4100, file: !4079, line: 55, baseType: !419, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4100, file: !4079, line: 56, baseType: !4093, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4078, file: !4079, line: 66, baseType: !4106, size: 256)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 60, size: 256, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4113}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4106, file: !4079, line: 61, baseType: !3304, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4106, file: !4079, line: 62, baseType: !419, size: 32, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4106, file: !4079, line: 63, baseType: !42, size: 32, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4106, file: !4079, line: 64, baseType: !4112, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !367)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4106, file: !4079, line: 65, baseType: !4112, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4078, file: !4079, line: 105, baseType: !4115, size: 256)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 69, size: 256, elements: !4116)
!4116 = !{!4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4115, file: !4079, line: 70, baseType: !40, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4115, file: !4079, line: 79, baseType: !4119, size: 192, offset: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4115, file: !4079, line: 79, size: 192, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4130, !4135}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4119, file: !4079, line: 81, baseType: !42, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4119, file: !4079, line: 86, baseType: !916, size: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4119, file: !4079, line: 92, baseType: !4124, size: 192)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !4079, line: 88, size: 192, elements: !4125)
!4125 = !{!4126, !4128, !4129}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4124, file: !4079, line: 89, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !2445)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4124, file: !4079, line: 90, baseType: !40, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4124, file: !4079, line: 91, baseType: !40, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4119, file: !4079, line: 97, baseType: !4131, size: 96)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !4079, line: 94, size: 96, elements: !4132)
!4132 = !{!4133, !4134}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4131, file: !4079, line: 95, baseType: !4127, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4131, file: !4079, line: 96, baseType: !477, size: 32, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4119, file: !4079, line: 103, baseType: !4136, size: 128)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !4079, line: 99, size: 128, elements: !4137)
!4137 = !{!4138, !4139, !4140}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4136, file: !4079, line: 100, baseType: !59, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4136, file: !4079, line: 101, baseType: !477, size: 32, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4136, file: !4079, line: 102, baseType: !477, size: 32, offset: 96)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4078, file: !4079, line: 111, baseType: !4142, size: 128)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 108, size: 128, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4142, file: !4079, line: 109, baseType: !368, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4142, file: !4079, line: 110, baseType: !42, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4078, file: !4079, line: 118, baseType: !4147, size: 128)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 114, size: 128, elements: !4148)
!4148 = !{!4149, !4150, !4151}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4147, file: !4079, line: 115, baseType: !40, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4147, file: !4079, line: 116, baseType: !42, size: 32, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4147, file: !4079, line: 117, baseType: !7, size: 32, offset: 96)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3012, file: !1859, line: 1208, baseType: !3871, size: 448, offset: 17664)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3012, file: !1859, line: 1215, baseType: !480, size: 64, offset: 18112)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3012, file: !1859, line: 1217, baseType: !480, size: 64, offset: 18176)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3012, file: !1859, line: 1219, baseType: !480, size: 64, offset: 18240)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3012, file: !1859, line: 1223, baseType: !4157, size: 64, offset: 18304)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4158, line: 99, baseType: !4159)
!4158 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4158, line: 99, size: 64, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4159, file: !4158, line: 99, baseType: !3174, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3012, file: !1859, line: 1225, baseType: !448, size: 32, offset: 18368)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3012, file: !1859, line: 1226, baseType: !42, size: 32, offset: 18400)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3012, file: !1859, line: 1227, baseType: !42, size: 32, offset: 18432)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3012, file: !1859, line: 1231, baseType: !3418, size: 64, offset: 18496)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3012, file: !1859, line: 1233, baseType: !117, size: 128, offset: 18560)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3012, file: !1859, line: 1240, baseType: !4168, size: 64, offset: 18688)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1859, line: 62, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3012, file: !1859, line: 1242, baseType: !4171, size: 64, offset: 18752)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1859, line: 1242, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3012, file: !1859, line: 1244, baseType: !117, size: 128, offset: 18816)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3012, file: !1859, line: 1245, baseType: !4175, size: 64, offset: 18944)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1859, line: 51, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3012, file: !1859, line: 1246, baseType: !707, size: 256, offset: 19008)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3012, file: !1859, line: 1247, baseType: !7, size: 32, offset: 19264)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3012, file: !1859, line: 1250, baseType: !4180, size: 64, offset: 19328)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1859, line: 57, flags: DIFlagFwdDecl)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3012, file: !1859, line: 1251, baseType: !707, size: 256, offset: 19392)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3012, file: !1859, line: 1252, baseType: !117, size: 128, offset: 19648)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3012, file: !1859, line: 1259, baseType: !1646, size: 64, offset: 19776)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3012, file: !1859, line: 1260, baseType: !916, size: 16, offset: 19840)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3012, file: !1859, line: 1261, baseType: !916, size: 16, offset: 19856)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3012, file: !1859, line: 1314, baseType: !4188, size: 64, offset: 19904)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4190, line: 62, size: 256, align: 256, elements: !4191)
!4190 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4197, !4198}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4189, file: !4190, line: 75, baseType: !477, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4189, file: !4190, line: 90, baseType: !477, size: 32, offset: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4189, file: !4190, line: 112, baseType: !481, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4189, file: !4190, line: 132, baseType: !477, size: 32, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4189, file: !4190, line: 140, baseType: !477, size: 32, offset: 160)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4189, file: !4190, line: 149, baseType: !477, size: 32, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4189, file: !4190, line: 154, baseType: !4199, offset: 224)
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !831)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3012, file: !1859, line: 1315, baseType: !476, size: 32, offset: 19968)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3012, file: !1859, line: 1316, baseType: !476, size: 32, offset: 20000)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3012, file: !1859, line: 1321, baseType: !59, size: 64, offset: 20032)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3012, file: !1859, line: 1325, baseType: !42, size: 32, offset: 20096)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3012, file: !1859, line: 1326, baseType: !42, size: 32, offset: 20128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3012, file: !1859, line: 1327, baseType: !42, size: 32, offset: 20160)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3012, file: !1859, line: 1328, baseType: !42, size: 32, offset: 20192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3012, file: !1859, line: 1329, baseType: !764, size: 128, align: 64, offset: 20224)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3012, file: !1859, line: 1332, baseType: !4209, size: 128, offset: 20352)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4210, line: 51, size: 128, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4211 = !{!4212, !4217, !4218}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4209, file: !4210, line: 60, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4214, line: 7, size: 64, elements: !4215)
!4214 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4215 = !{!4216}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4213, file: !4214, line: 12, baseType: !3171, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4209, file: !4210, line: 63, baseType: !947, size: 8, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4209, file: !4210, line: 70, baseType: !947, size: 8, offset: 72)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3012, file: !1859, line: 1335, baseType: !1857, size: 64, offset: 20480)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3012, file: !1859, line: 1337, baseType: !4221, size: 128, offset: 20544)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4210, line: 39, size: 128, elements: !4222)
!4222 = !{!4223, !4224, !4225}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4221, file: !4210, line: 40, baseType: !1385, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4221, file: !4210, line: 42, baseType: !477, size: 32, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4221, file: !4210, line: 43, baseType: !477, size: 32, offset: 96)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3012, file: !1859, line: 1340, baseType: !4227, size: 64, offset: 20672)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1859, line: 69, flags: DIFlagFwdDecl)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3012, file: !1859, line: 1351, baseType: !42, size: 32, offset: 20736)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3012, file: !1859, line: 1352, baseType: !42, size: 32, offset: 20768)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3012, file: !1859, line: 1354, baseType: !59, size: 64, offset: 20800)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3012, file: !1859, line: 1364, baseType: !480, size: 64, offset: 20864)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3012, file: !1859, line: 1365, baseType: !480, size: 64, offset: 20928)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3012, file: !1859, line: 1412, baseType: !59, size: 64, offset: 20992)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3012, file: !1859, line: 1453, baseType: !2143, size: 64, offset: 21056)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3012, file: !1859, line: 1457, baseType: !4237, size: 64, offset: 21120)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !265, line: 61, size: 576, elements: !4239)
!4239 = !{!4240, !4241, !4260, !4263, !4264, !4297, !4307}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4238, file: !265, line: 62, baseType: !264, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !265, line: 64, baseType: !4242, size: 192, offset: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !265, line: 64, size: 192, elements: !4243)
!4243 = !{!4244, !4255}
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !4242, file: !265, line: 65, baseType: !4245, size: 192)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4242, file: !265, line: 65, size: 192, elements: !4246)
!4246 = !{!4247, !4254}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4245, file: !265, line: 66, baseType: !4248, size: 128)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4249, line: 50, size: 128, elements: !4250)
!4249 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4250 = !{!4251, !4252, !4253}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4248, file: !4249, line: 52, baseType: !59, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4248, file: !4249, line: 54, baseType: !7, size: 32, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4248, file: !4249, line: 55, baseType: !7, size: 32, offset: 96)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4245, file: !265, line: 67, baseType: !59, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, scope: !4242, file: !265, line: 70, baseType: !4256, size: 192)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4242, file: !265, line: 70, size: 192, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4256, file: !265, line: 71, baseType: !764, size: 128, align: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4256, file: !265, line: 72, baseType: !59, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4238, file: !265, line: 76, baseType: !4261, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !265, line: 76, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4238, file: !265, line: 77, baseType: !59, size: 64, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4238, file: !265, line: 79, baseType: !4265, size: 64, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4249, line: 25, size: 256, elements: !4267)
!4267 = !{!4268, !4274, !4278}
!4268 = !DIDerivedType(tag: DW_TAG_member, scope: !4266, file: !4249, line: 26, baseType: !4269, size: 128)
!4269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4266, file: !4249, line: 26, size: 128, elements: !4270)
!4270 = !{!4271, !4273}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4269, file: !4249, line: 27, baseType: !4272, size: 128)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !2285)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4269, file: !4249, line: 28, baseType: !4272, size: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4266, file: !4249, line: 31, baseType: !4275, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4277)
!4277 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4249, line: 23, flags: DIFlagFwdDecl)
!4278 = !DIDerivedType(tag: DW_TAG_member, scope: !4266, file: !4249, line: 33, baseType: !4279, size: 64, offset: 192)
!4279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4266, file: !4249, line: 33, size: 64, elements: !4280)
!4280 = !{!4281, !4287, !4292}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4279, file: !4249, line: 38, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4249, line: 34, size: 64, elements: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4282, file: !4249, line: 35, baseType: !873, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4282, file: !4249, line: 36, baseType: !103, size: 8, offset: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4282, file: !4249, line: 37, baseType: !103, size: 8, offset: 40)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4279, file: !4249, line: 42, baseType: !4288, size: 16)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4249, line: 39, size: 16, elements: !4289)
!4289 = !{!4290, !4291}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4288, file: !4249, line: 40, baseType: !103, size: 8)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4288, file: !4249, line: 41, baseType: !103, size: 8, offset: 8)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4279, file: !4249, line: 46, baseType: !4293, size: 16)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4249, line: 43, size: 16, elements: !4294)
!4294 = !{!4295, !4296}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4293, file: !4249, line: 44, baseType: !103, size: 8)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4293, file: !4249, line: 45, baseType: !103, size: 8, offset: 8)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4238, file: !265, line: 81, baseType: !4298, size: 64, offset: 448)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !265, line: 85, size: 384, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4299, file: !265, line: 86, baseType: !4261, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4299, file: !265, line: 87, baseType: !59, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4299, file: !265, line: 88, baseType: !59, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4299, file: !265, line: 89, baseType: !59, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4299, file: !265, line: 90, baseType: !947, size: 8, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4299, file: !265, line: 92, baseType: !4298, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4238, file: !265, line: 82, baseType: !7, size: 32, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3012, file: !1859, line: 1463, baseType: !4309, offset: 21184)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1859, line: 739, elements: !608)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3012, file: !1859, line: 1470, baseType: !764, size: 128, align: 64, offset: 21184)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3012, file: !1859, line: 1471, baseType: !809, size: 32, offset: 21312)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3012, file: !1859, line: 1472, baseType: !42, size: 32, offset: 21344)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3012, file: !1859, line: 1474, baseType: !3011, size: 64, offset: 21376)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3012, file: !1859, line: 1475, baseType: !2371, size: 320, offset: 21440)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3012, file: !1859, line: 1478, baseType: !4316, size: 64, offset: 21760)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1784, line: 49, size: 512, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4325, !4326, !4327, !4329}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4317, file: !1784, line: 50, baseType: !4316, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4317, file: !1784, line: 51, baseType: !40, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4317, file: !1784, line: 52, baseType: !59, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4317, file: !1784, line: 53, baseType: !59, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4317, file: !1784, line: 54, baseType: !4324, size: 64, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4317, file: !1784, line: 56, baseType: !7, size: 32, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4317, file: !1784, line: 58, baseType: !7, size: 32, offset: 352)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4317, file: !1784, line: 59, baseType: !4328, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !45, line: 159, baseType: !480)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4317, file: !1784, line: 60, baseType: !1527, size: 64, offset: 448)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3012, file: !1859, line: 1482, baseType: !809, size: 32, offset: 21824)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3012, file: !1859, line: 1489, baseType: !40, size: 64, offset: 21888)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3012, file: !1859, line: 1504, baseType: !40, size: 64, offset: 21952)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3012, file: !1859, line: 1505, baseType: !481, size: 64, offset: 22016)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3012, file: !1859, line: 1506, baseType: !480, size: 64, offset: 22080)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3012, file: !1859, line: 1507, baseType: !481, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3012, file: !1859, line: 1508, baseType: !481, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3012, file: !1859, line: 1509, baseType: !481, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3012, file: !1859, line: 1510, baseType: !764, size: 128, align: 64, offset: 22208)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3012, file: !1859, line: 1511, baseType: !42, size: 32, offset: 22336)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3012, file: !1859, line: 1515, baseType: !4341, size: 64, offset: 22400)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !759, line: 56, size: 64, elements: !4342)
!4342 = !{!4343}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4341, file: !759, line: 57, baseType: !762, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3012, file: !1859, line: 1518, baseType: !4341, size: 64, offset: 22464)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3012, file: !1859, line: 1528, baseType: !764, size: 128, align: 64, offset: 22528)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3012, file: !1859, line: 1552, baseType: !4347, size: 35328, offset: 23040)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4348, line: 430, size: 35328, elements: !4349)
!4348 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4349 = !{!4350, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4379, !4380, !4381, !4382, !4383, !4384, !4387, !4388, !4389, !4390}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4347, file: !4348, line: 432, baseType: !4351, size: 192)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4352, size: 192, elements: !334)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4353, line: 16, size: 64, elements: !4354)
!4353 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4352, file: !4353, line: 17, baseType: !113, size: 16)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4352, file: !4353, line: 18, baseType: !113, size: 16, offset: 16)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4352, file: !4353, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4352, file: !4353, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4352, file: !4353, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4352, file: !4353, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4352, file: !4353, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4352, file: !4353, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4352, file: !4353, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4352, file: !4353, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4352, file: !4353, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4352, file: !4353, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4352, file: !4353, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4347, file: !4348, line: 436, baseType: !59, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4347, file: !4348, line: 440, baseType: !46, size: 16, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4347, file: !4348, line: 441, baseType: !46, size: 16, offset: 272)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4347, file: !4348, line: 442, baseType: !46, size: 16, offset: 288)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4347, file: !4348, line: 443, baseType: !46, size: 16, offset: 304)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4347, file: !4348, line: 447, baseType: !59, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4347, file: !4348, line: 448, baseType: !59, size: 64, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4347, file: !4348, line: 459, baseType: !4376, size: 256, offset: 448)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4377, size: 256, elements: !818)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4348, line: 428, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4347, file: !4348, line: 461, baseType: !59, size: 64, offset: 704)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4347, file: !4348, line: 463, baseType: !59, size: 64, offset: 768)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4347, file: !4348, line: 465, baseType: !59, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4347, file: !4348, line: 466, baseType: !59, size: 64, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4347, file: !4348, line: 467, baseType: !59, size: 64, offset: 960)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4347, file: !4348, line: 473, baseType: !4385, size: 64, offset: 1024)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4348, line: 10, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4347, file: !4348, line: 480, baseType: !59, size: 64, offset: 1088)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4347, file: !4348, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4347, file: !4348, line: 491, baseType: !476, size: 32, offset: 1184)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4347, file: !4348, line: 501, baseType: !4391, size: 33792, offset: 1536)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4392, line: 448, size: 33792, elements: !4393)
!4392 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4393 = !{!4394, !4395, !4396, !4556, !4557, !4563, !4564}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4391, file: !4392, line: 461, baseType: !7, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4391, file: !4392, line: 468, baseType: !59, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4391, file: !4392, line: 476, baseType: !4397, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4392, line: 356, size: 33280, align: 512, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4398, file: !4392, line: 358, baseType: !7, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4398, file: !4392, line: 361, baseType: !7, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4398, file: !4392, line: 364, baseType: !480, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4398, file: !4392, line: 367, baseType: !480, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4398, file: !4392, line: 370, baseType: !480, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4398, file: !4392, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4398, file: !4392, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4398, file: !4392, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4398, file: !4392, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4398, file: !4392, line: 397, baseType: !4410, size: 32768, offset: 512)
!4410 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4392, line: 348, size: 32768, elements: !4411)
!4411 = !{!4412, !4427, !4464, !4541, !4554}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4410, file: !4392, line: 349, baseType: !4413, size: 896)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4392, line: 12, size: 896, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4426}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4413, file: !4392, line: 13, baseType: !476, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4413, file: !4392, line: 14, baseType: !476, size: 32, offset: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4413, file: !4392, line: 15, baseType: !476, size: 32, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4413, file: !4392, line: 16, baseType: !476, size: 32, offset: 96)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4413, file: !4392, line: 17, baseType: !476, size: 32, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4413, file: !4392, line: 18, baseType: !476, size: 32, offset: 160)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4413, file: !4392, line: 19, baseType: !476, size: 32, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4413, file: !4392, line: 22, baseType: !4423, size: 640, offset: 224)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 640, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 20)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4413, file: !4392, line: 25, baseType: !476, size: 32, offset: 864)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4410, file: !4392, line: 350, baseType: !4428, size: 4096, align: 128)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4392, line: 34, size: 4096, align: 128, elements: !4429)
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4449, !4450, !4451, !4453, !4455, !4459}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4428, file: !4392, line: 35, baseType: !113, size: 16)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4428, file: !4392, line: 36, baseType: !113, size: 16, offset: 16)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4428, file: !4392, line: 37, baseType: !113, size: 16, offset: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4428, file: !4392, line: 38, baseType: !113, size: 16, offset: 48)
!4434 = !DIDerivedType(tag: DW_TAG_member, scope: !4428, file: !4392, line: 39, baseType: !4435, size: 128, offset: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4428, file: !4392, line: 39, size: 128, elements: !4436)
!4436 = !{!4437, !4442}
!4437 = !DIDerivedType(tag: DW_TAG_member, scope: !4435, file: !4392, line: 40, baseType: !4438, size: 128)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4435, file: !4392, line: 40, size: 128, elements: !4439)
!4439 = !{!4440, !4441}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4438, file: !4392, line: 41, baseType: !480, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4438, file: !4392, line: 42, baseType: !480, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, scope: !4435, file: !4392, line: 44, baseType: !4443, size: 128)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4435, file: !4392, line: 44, size: 128, elements: !4444)
!4444 = !{!4445, !4446, !4447, !4448}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4443, file: !4392, line: 45, baseType: !476, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4443, file: !4392, line: 46, baseType: !476, size: 32, offset: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4443, file: !4392, line: 47, baseType: !476, size: 32, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4443, file: !4392, line: 48, baseType: !476, size: 32, offset: 96)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4428, file: !4392, line: 51, baseType: !476, size: 32, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4428, file: !4392, line: 52, baseType: !476, size: 32, offset: 224)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4428, file: !4392, line: 55, baseType: !4452, size: 1024, offset: 256)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 1024, elements: !489)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4428, file: !4392, line: 58, baseType: !4454, size: 2048, offset: 1280)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 2048, elements: !338)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4428, file: !4392, line: 60, baseType: !4456, size: 384, offset: 3328)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, elements: !4457)
!4457 = !{!4458}
!4458 = !DISubrange(count: 12)
!4459 = !DIDerivedType(tag: DW_TAG_member, scope: !4428, file: !4392, line: 62, baseType: !4460, size: 384, offset: 3712)
!4460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4428, file: !4392, line: 62, size: 384, elements: !4461)
!4461 = !{!4462, !4463}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4460, file: !4392, line: 63, baseType: !4456, size: 384)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4460, file: !4392, line: 64, baseType: !4456, size: 384)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4410, file: !4392, line: 351, baseType: !4465, size: 1088)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4392, line: 79, size: 1088, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4540}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4465, file: !4392, line: 80, baseType: !476, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4465, file: !4392, line: 81, baseType: !476, size: 32, offset: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4465, file: !4392, line: 82, baseType: !476, size: 32, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4465, file: !4392, line: 83, baseType: !476, size: 32, offset: 96)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4465, file: !4392, line: 84, baseType: !476, size: 32, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4465, file: !4392, line: 85, baseType: !476, size: 32, offset: 160)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4465, file: !4392, line: 86, baseType: !476, size: 32, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4465, file: !4392, line: 88, baseType: !4423, size: 640, offset: 224)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4465, file: !4392, line: 89, baseType: !103, size: 8, offset: 864)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4465, file: !4392, line: 90, baseType: !103, size: 8, offset: 872)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4465, file: !4392, line: 91, baseType: !103, size: 8, offset: 880)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4465, file: !4392, line: 92, baseType: !103, size: 8, offset: 888)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4465, file: !4392, line: 93, baseType: !103, size: 8, offset: 896)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4465, file: !4392, line: 94, baseType: !103, size: 8, offset: 904)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4465, file: !4392, line: 95, baseType: !4482, size: 64, offset: 960)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4484, line: 11, size: 128, elements: !4485)
!4484 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4485 = !{!4486, !4487}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4483, file: !4484, line: 12, baseType: !368, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4483, file: !4484, line: 13, baseType: !4488, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4490, line: 103, size: 1344, elements: !4491)
!4490 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4520, !4521, !4522}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4489, file: !4490, line: 109, baseType: !59, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4489, file: !4490, line: 110, baseType: !59, size: 64, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4489, file: !4490, line: 111, baseType: !59, size: 64, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4489, file: !4490, line: 112, baseType: !59, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4489, file: !4490, line: 113, baseType: !59, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4489, file: !4490, line: 114, baseType: !59, size: 64, offset: 320)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4489, file: !4490, line: 117, baseType: !59, size: 64, offset: 384)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4489, file: !4490, line: 118, baseType: !59, size: 64, offset: 448)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4489, file: !4490, line: 119, baseType: !59, size: 64, offset: 512)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4489, file: !4490, line: 120, baseType: !59, size: 64, offset: 576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4489, file: !4490, line: 121, baseType: !59, size: 64, offset: 640)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4489, file: !4490, line: 122, baseType: !59, size: 64, offset: 704)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4489, file: !4490, line: 123, baseType: !59, size: 64, offset: 768)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4489, file: !4490, line: 124, baseType: !59, size: 64, offset: 832)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4489, file: !4490, line: 125, baseType: !59, size: 64, offset: 896)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4489, file: !4490, line: 139, baseType: !59, size: 64, offset: 960)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4489, file: !4490, line: 142, baseType: !59, size: 64, offset: 1024)
!4509 = !DIDerivedType(tag: DW_TAG_member, scope: !4489, file: !4490, line: 144, baseType: !4510, size: 64, offset: 1088)
!4510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4489, file: !4490, line: 144, size: 64, elements: !4511)
!4511 = !{!4512, !4513, !4514}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4510, file: !4490, line: 146, baseType: !113, size: 16)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4510, file: !4490, line: 148, baseType: !480, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4510, file: !4490, line: 150, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4490, line: 59, size: 64, elements: !4516)
!4516 = !{!4517, !4518, !4519}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4515, file: !4490, line: 61, baseType: !480, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4515, file: !4490, line: 63, baseType: !480, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4515, file: !4490, line: 65, baseType: !480, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4489, file: !4490, line: 153, baseType: !59, size: 64, offset: 1152)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4489, file: !4490, line: 154, baseType: !59, size: 64, offset: 1216)
!4522 = !DIDerivedType(tag: DW_TAG_member, scope: !4489, file: !4490, line: 156, baseType: !4523, size: 64, offset: 1280)
!4523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4489, file: !4490, line: 156, size: 64, elements: !4524)
!4524 = !{!4525, !4526, !4527}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4523, file: !4490, line: 158, baseType: !113, size: 16)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4523, file: !4490, line: 160, baseType: !480, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4523, file: !4490, line: 162, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4490, line: 69, size: 64, elements: !4529)
!4529 = !{!4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4528, file: !4490, line: 71, baseType: !480, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4528, file: !4490, line: 73, baseType: !480, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4528, file: !4490, line: 75, baseType: !480, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4528, file: !4490, line: 77, baseType: !480, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4528, file: !4490, line: 80, baseType: !480, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4528, file: !4490, line: 83, baseType: !480, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4528, file: !4490, line: 86, baseType: !480, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4528, file: !4490, line: 88, baseType: !480, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4528, file: !4490, line: 93, baseType: !480, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4528, file: !4490, line: 100, baseType: !480, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4465, file: !4392, line: 96, baseType: !476, size: 32, offset: 1024)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4410, file: !4392, line: 352, baseType: !4542, size: 4608, align: 512)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4392, line: 333, size: 4608, align: 512, elements: !4543)
!4543 = !{!4544, !4545, !4552}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4542, file: !4392, line: 334, baseType: !4428, size: 4096, align: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4542, file: !4392, line: 335, baseType: !4546, size: 512, offset: 4096)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4392, line: 312, size: 512, elements: !4547)
!4547 = !{!4548, !4549, !4550}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4546, file: !4392, line: 313, baseType: !480, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4546, file: !4392, line: 314, baseType: !480, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4546, file: !4392, line: 315, baseType: !4551, size: 384, offset: 128)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 384, elements: !934)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4542, file: !4392, line: 336, baseType: !4553, offset: 4608)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !831)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4410, file: !4392, line: 353, baseType: !4555, size: 32768)
!4555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !3565)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4391, file: !4392, line: 484, baseType: !4397, size: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4391, file: !4392, line: 491, baseType: !4558, size: 128, offset: 256)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4392, line: 404, size: 128, elements: !4559)
!4559 = !{!4560, !4561, !4562}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4558, file: !4392, line: 424, baseType: !480, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4558, file: !4392, line: 432, baseType: !7, size: 32, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4558, file: !4392, line: 440, baseType: !7, size: 32, offset: 96)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4391, file: !4392, line: 498, baseType: !4558, size: 128, offset: 384)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4391, file: !4392, line: 508, baseType: !4398, size: 33280, align: 512, offset: 512)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2994, file: !2995, line: 16, baseType: !74, size: 192, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2994, file: !2995, line: 17, baseType: !69, size: 32, offset: 704)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !559, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !559, file: !19, line: 1243, baseType: !476, size: 32, offset: 6976)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !559, file: !19, line: 1245, baseType: !904, size: 64, offset: 7040)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !559, file: !19, line: 1246, baseType: !904, size: 64, offset: 7104)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !559, file: !19, line: 1248, baseType: !477, size: 32, offset: 7168)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !559, file: !19, line: 1249, baseType: !4573, size: 64, offset: 7232)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !559, file: !19, line: 1252, baseType: !2271, size: 256, offset: 7296)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !559, file: !19, line: 1253, baseType: !4577, size: 128, offset: 7552)
!4577 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4578, line: 21, baseType: !4579)
!4578 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4578, line: 19, size: 128, elements: !4580)
!4580 = !{!4581}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4579, file: !4578, line: 20, baseType: !2284, size: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !559, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !559, file: !19, line: 1261, baseType: !707, size: 256, offset: 7744)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !559, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !559, file: !19, line: 1269, baseType: !505, size: 64, offset: 8064)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !559, file: !19, line: 1271, baseType: !4587, size: 448, offset: 8128)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1976, line: 63, size: 448, elements: !4588)
!4588 = !{!4589, !4594, !4595, !4596, !4597, !4598, !4599}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4587, file: !1976, line: 64, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!59, !4593, !1974}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4587, file: !1976, line: 66, baseType: !4590, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4587, file: !1976, line: 69, baseType: !368, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4587, file: !1976, line: 70, baseType: !42, size: 32, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4587, file: !1976, line: 71, baseType: !7, size: 32, offset: 224)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4587, file: !1976, line: 74, baseType: !117, size: 128, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4587, file: !1976, line: 85, baseType: !4600, size: 64, offset: 384)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !559, file: !19, line: 1274, baseType: !711, size: 64, offset: 8576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !559, file: !19, line: 1280, baseType: !711, size: 64, offset: 8640)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !559, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !559, file: !19, line: 1286, baseType: !1908, size: 32, offset: 8736)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !559, file: !19, line: 1289, baseType: !2928, size: 64, offset: 8768)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !559, file: !19, line: 1290, baseType: !596, size: 64, offset: 8832)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !559, file: !19, line: 1297, baseType: !1030, size: 64, offset: 8896)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !559, file: !19, line: 1304, baseType: !4609, size: 64, offset: 8960)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4610, line: 49, size: 64, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4611 = !{!4612}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4609, file: !4610, line: 50, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4610, line: 41, size: 512, align: 512, elements: !4615)
!4615 = !{!4616, !4617, !4622}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4614, file: !4610, line: 43, baseType: !79, size: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4614, file: !4610, line: 45, baseType: !4618, size: 192, offset: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4610, line: 29, size: 192, elements: !4619)
!4619 = !{!4620, !4621}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4618, file: !4610, line: 30, baseType: !117, size: 128)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4618, file: !4610, line: 32, baseType: !368, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4614, file: !4610, line: 46, baseType: !368, size: 64, offset: 256)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !559, file: !19, line: 1305, baseType: !4609, size: 64, offset: 9024)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !559, file: !19, line: 1306, baseType: !764, size: 128, align: 64, offset: 9088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !559, file: !19, line: 1307, baseType: !1079, size: 256, offset: 9216)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !559, file: !19, line: 1309, baseType: !707, size: 256, offset: 9472)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !559, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !559, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !559, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !559, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !559, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !553, file: !554, line: 73, baseType: !42, size: 32, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !553, file: !554, line: 74, baseType: !4634, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !855, line: 42, flags: DIFlagFwdDecl)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !507, file: !444, line: 141, baseType: !4638, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!42, !2036, !947}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !507, file: !444, line: 142, baseType: !4642, size: 64, offset: 768)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!442, !442, !4645}
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !443, file: !444, line: 96, baseType: !558, size: 64, offset: 832)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !443, file: !444, line: 97, baseType: !59, size: 64, offset: 896)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !443, file: !444, line: 98, baseType: !40, size: 64, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !444, line: 100, baseType: !4651, size: 128, offset: 1024)
!4651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !444, line: 100, size: 128, elements: !4652)
!4652 = !{!4653, !4654}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4651, file: !444, line: 101, baseType: !117, size: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4651, file: !444, line: 102, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !443, file: !444, line: 104, baseType: !117, size: 128, offset: 1152)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !443, file: !444, line: 105, baseType: !117, size: 128, offset: 1280)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !443, file: !444, line: 113, baseType: !4659, size: 128, offset: 1408)
!4659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !444, line: 109, size: 128, elements: !4660)
!4660 = !{!4661, !4662, !4663}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4659, file: !444, line: 110, baseType: !600, size: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4659, file: !444, line: 111, baseType: !458, size: 128)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4659, file: !444, line: 112, baseType: !764, size: 128, align: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !436, file: !19, line: 1968, baseType: !4665, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!36, !442, !407, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4670, line: 10, size: 128, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4669, file: !4670, line: 11, baseType: !2833, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4669, file: !4670, line: 12, baseType: !40, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !436, file: !19, line: 1969, baseType: !4675, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!42, !4634, !407, !42}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !436, file: !19, line: 1970, baseType: !4679, size: 64, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!430, !407, !42, !947}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !436, file: !19, line: 1972, baseType: !4683, size: 64, offset: 256)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!42, !442, !333, !42}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !436, file: !19, line: 1974, baseType: !4687, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!42, !4634, !407, !442, !44, !947}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !436, file: !19, line: 1976, baseType: !4691, size: 64, offset: 384)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!42, !442, !407, !442}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !436, file: !19, line: 1977, baseType: !4695, size: 64, offset: 448)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!42, !407, !442}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !436, file: !19, line: 1978, baseType: !4699, size: 64, offset: 512)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!42, !4634, !407, !442, !36}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !436, file: !19, line: 1980, baseType: !4703, size: 64, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!42, !4634, !407, !442, !44}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !436, file: !19, line: 1982, baseType: !4695, size: 64, offset: 640)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !436, file: !19, line: 1983, baseType: !4708, size: 64, offset: 704)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!42, !4634, !407, !442, !44, !563}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !436, file: !19, line: 1985, baseType: !4712, size: 64, offset: 768)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!42, !4634, !407, !442, !407, !442, !7}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !436, file: !19, line: 1987, baseType: !4716, size: 64, offset: 832)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!42, !4634, !442, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4734, !4743, !4744, !4749, !4750, !4751}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4720, file: !19, line: 227, baseType: !7, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4720, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !19, line: 241, baseType: !4725, size: 32, offset: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !19, line: 241, size: 32, elements: !4726)
!4726 = !{!4727, !4728}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4725, file: !19, line: 242, baseType: !413, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4725, file: !19, line: 243, baseType: !4729, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4730, line: 16, baseType: !4731)
!4730 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4730, line: 14, size: 32, elements: !4732)
!4732 = !{!4733}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4731, file: !4730, line: 15, baseType: !418, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !19, line: 245, baseType: !4735, size: 32, offset: 96)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !19, line: 245, size: 32, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4735, file: !19, line: 246, baseType: !422, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4735, file: !19, line: 247, baseType: !4739, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4730, line: 20, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4730, line: 18, size: 32, elements: !4741)
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4740, file: !4730, line: 19, baseType: !426, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4720, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4720, file: !19, line: 250, baseType: !4745, size: 128, offset: 192)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !905, line: 13, size: 128, elements: !4746)
!4746 = !{!4747, !4748}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4745, file: !905, line: 14, baseType: !904, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4745, file: !905, line: 15, baseType: !368, size: 64, offset: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4720, file: !19, line: 251, baseType: !4745, size: 128, offset: 320)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4720, file: !19, line: 252, baseType: !4745, size: 128, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4720, file: !19, line: 259, baseType: !1222, size: 64, offset: 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !436, file: !19, line: 1988, baseType: !4753, size: 64, offset: 896)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!42, !4634, !2036, !4756, !476, !7}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4758, line: 22, size: 1280, elements: !4759)
!4758 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4759 = !{!4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4757, file: !4758, line: 23, baseType: !476, size: 32)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4757, file: !4758, line: 24, baseType: !44, size: 16, offset: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4757, file: !4758, line: 25, baseType: !7, size: 32, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4757, file: !4758, line: 26, baseType: !912, size: 32, offset: 96)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4757, file: !4758, line: 27, baseType: !480, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4757, file: !4758, line: 28, baseType: !480, size: 64, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4757, file: !4758, line: 41, baseType: !480, size: 64, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4757, file: !4758, line: 42, baseType: !563, size: 32, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4757, file: !4758, line: 43, baseType: !563, size: 32, offset: 352)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4757, file: !4758, line: 44, baseType: !413, size: 32, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4757, file: !4758, line: 45, baseType: !422, size: 32, offset: 416)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4757, file: !4758, line: 46, baseType: !61, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4757, file: !4758, line: 47, baseType: !4745, size: 128, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4757, file: !4758, line: 48, baseType: !4745, size: 128, offset: 640)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4757, file: !4758, line: 49, baseType: !4745, size: 128, offset: 768)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4757, file: !4758, line: 50, baseType: !4745, size: 128, offset: 896)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4757, file: !4758, line: 51, baseType: !480, size: 64, offset: 1024)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4757, file: !4758, line: 52, baseType: !480, size: 64, offset: 1088)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4757, file: !4758, line: 53, baseType: !476, size: 32, offset: 1152)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4757, file: !4758, line: 54, baseType: !476, size: 32, offset: 1184)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4757, file: !4758, line: 55, baseType: !480, size: 64, offset: 1216)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !436, file: !19, line: 1990, baseType: !4782, size: 64, offset: 960)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!365, !442, !333, !55}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !436, file: !19, line: 1991, baseType: !4786, size: 64, offset: 1024)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!42, !407, !4789, !480, !480}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !436, file: !19, line: 1993, baseType: !4792, size: 64, offset: 1088)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!42, !407, !42}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !436, file: !19, line: 1994, baseType: !4796, size: 64, offset: 1152)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!42, !407, !442, !1222, !7, !44}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !436, file: !19, line: 1997, baseType: !4800, size: 64, offset: 1216)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!42, !4634, !407, !1222, !44}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !436, file: !19, line: 1999, baseType: !4804, size: 64, offset: 1280)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!430, !4634, !442, !42}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !436, file: !19, line: 2001, baseType: !4808, size: 64, offset: 1344)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!42, !4634, !442, !430, !42}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !436, file: !19, line: 2003, baseType: !4812, size: 64, offset: 1408)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!42, !4634, !442, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !436, file: !19, line: 2005, baseType: !4818, size: 64, offset: 1472)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!42, !442, !4815}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !436, file: !19, line: 2006, baseType: !4822, size: 64, offset: 1536)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!4825, !407}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4826, file: !19, line: 3193, baseType: !2744, size: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4826, file: !19, line: 3194, baseType: !476, size: 32, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !408, file: !19, line: 655, baseType: !558, size: 64, offset: 448)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !408, file: !19, line: 656, baseType: !403, size: 64, offset: 512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !408, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !408, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!4834 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !19, line: 671, baseType: !4835, size: 32, offset: 704)
!4835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !19, line: 671, size: 32, elements: !4836)
!4836 = !{!4837, !4839}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4835, file: !19, line: 672, baseType: !4838, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4835, file: !19, line: 673, baseType: !7, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !408, file: !19, line: 675, baseType: !563, size: 32, offset: 736)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !408, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !408, file: !19, line: 677, baseType: !4745, size: 128, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !408, file: !19, line: 678, baseType: !4745, size: 128, offset: 960)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !408, file: !19, line: 679, baseType: !4745, size: 128, offset: 1088)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !408, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !408, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !408, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !408, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !408, file: !19, line: 684, baseType: !2109, size: 64, offset: 1280)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !408, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !408, file: !19, line: 692, baseType: !888, size: 320, offset: 1408)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !408, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !408, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !408, file: !19, line: 697, baseType: !600, size: 128, offset: 1856)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !408, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !408, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !408, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!4858 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !19, line: 709, baseType: !4859, size: 128, offset: 2368)
!4859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !19, line: 709, size: 128, elements: !4860)
!4860 = !{!4861, !4862}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4859, file: !19, line: 710, baseType: !596, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4859, file: !19, line: 711, baseType: !764, size: 128, align: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !408, file: !19, line: 713, baseType: !713, size: 64, offset: 2496)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !408, file: !19, line: 714, baseType: !713, size: 64, offset: 2560)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !408, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !408, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !408, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !408, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!4869 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !19, line: 721, baseType: !4870, size: 64, offset: 2752)
!4870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !19, line: 721, size: 64, elements: !4871)
!4871 = !{!4872, !4873}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4870, file: !19, line: 722, baseType: !1213, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4870, file: !19, line: 723, baseType: !627, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !408, file: !19, line: 725, baseType: !4875, size: 64, offset: 2816)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !408, file: !19, line: 726, baseType: !404, size: 1536, align: 64, offset: 2880)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !408, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!4879 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !19, line: 728, baseType: !4880, size: 64, offset: 4544)
!4880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !19, line: 728, size: 64, elements: !4881)
!4881 = !{!4882, !4883, !4886, !4887}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4880, file: !19, line: 729, baseType: !1857, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4880, file: !19, line: 730, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4880, file: !19, line: 731, baseType: !333, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4880, file: !19, line: 732, baseType: !7, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !408, file: !19, line: 735, baseType: !477, size: 32, offset: 4608)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !408, file: !19, line: 738, baseType: !477, size: 32, offset: 4640)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !408, file: !19, line: 739, baseType: !4573, size: 64, offset: 4672)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !408, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !404, file: !19, line: 474, baseType: !2744, size: 128, offset: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !404, file: !19, line: 475, baseType: !888, size: 320, offset: 192)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !404, file: !19, line: 476, baseType: !1664, size: 32, offset: 512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !404, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !404, file: !19, line: 482, baseType: !2461, size: 128, offset: 576)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !404, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !404, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !404, file: !19, line: 485, baseType: !4900, size: 64, offset: 832)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4902)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !4903)
!4903 = !{!4904, !4908, !4912, !4916, !4920, !4936, !4940, !4944, !4948, !4952, !4956, !4960, !4961, !4965, !4969, !4973, !4978, !4982, !5035, !5036}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4902, file: !19, line: 405, baseType: !4905, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!42, !1385, !639}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4902, file: !19, line: 406, baseType: !4909, size: 64, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!42, !1222, !1256}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4902, file: !19, line: 409, baseType: !4913, size: 64, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!42, !403, !639}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4902, file: !19, line: 412, baseType: !4917, size: 64, offset: 192)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!947, !403, !1256}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4902, file: !19, line: 414, baseType: !4921, size: 64, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1253, line: 1276, size: 448, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4931, !4932, !4933, !4934, !4935}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4925, file: !1253, line: 1277, baseType: !1222, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4925, file: !1253, line: 1278, baseType: !403, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4925, file: !1253, line: 1279, baseType: !4930, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4925, file: !1253, line: 1281, baseType: !59, size: 64, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4925, file: !1253, line: 1282, baseType: !7, size: 32, offset: 256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4925, file: !1253, line: 1283, baseType: !7, size: 32, offset: 288)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4925, file: !1253, line: 1284, baseType: !947, size: 8, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4925, file: !1253, line: 1285, baseType: !59, size: 64, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4902, file: !19, line: 416, baseType: !4937, size: 64, offset: 320)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!42, !1222, !403, !61, !7, !4324, !1873}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4902, file: !19, line: 419, baseType: !4941, size: 64, offset: 384)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!42, !1222, !403, !61, !7, !7, !1385, !40}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4902, file: !19, line: 424, baseType: !4945, size: 64, offset: 448)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!2140, !403, !2140}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4902, file: !19, line: 425, baseType: !4949, size: 64, offset: 512)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !1256, !55, !55}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4902, file: !19, line: 426, baseType: !4953, size: 64, offset: 576)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!947, !1256, !1664}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4902, file: !19, line: 427, baseType: !4957, size: 64, offset: 640)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !1256}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4902, file: !19, line: 428, baseType: !1232, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4902, file: !19, line: 433, baseType: !4962, size: 64, offset: 768)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!42, !403, !1256, !1256, !271}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4902, file: !19, line: 435, baseType: !4966, size: 64, offset: 832)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!42, !1256}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4902, file: !19, line: 436, baseType: !4970, size: 64, offset: 896)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!947, !1256, !55, !55}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4902, file: !19, line: 438, baseType: !4974, size: 64, offset: 960)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{null, !1256, !4977, !4977}
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4902, file: !19, line: 439, baseType: !4979, size: 64, offset: 1024)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!42, !403, !1385}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4902, file: !19, line: 442, baseType: !4983, size: 64, offset: 1088)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!42, !4986, !1222, !5034}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4052, line: 282, size: 2176, elements: !4988)
!4988 = !{!4989, !4990, !4991, !4992, !4993, !4995, !4996, !4998, !5005, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4987, file: !4052, line: 283, baseType: !1352, size: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4987, file: !4052, line: 284, baseType: !59, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4987, file: !4052, line: 285, baseType: !916, size: 16, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4987, file: !4052, line: 286, baseType: !3215, size: 320, offset: 256)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4987, file: !4052, line: 287, baseType: !4994, size: 8, offset: 576)
!4994 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4987, file: !4052, line: 288, baseType: !7, size: 32, offset: 608)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !4987, file: !4052, line: 289, baseType: !4997, size: 64, offset: 640)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !4987, file: !4052, line: 290, baseType: !4999, size: 64, offset: 704)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4052, line: 250, size: 64, elements: !5001)
!5001 = !{!5002, !5003, !5004}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5000, file: !4052, line: 251, baseType: !79, size: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5000, file: !4052, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5000, file: !4052, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4987, file: !4052, line: 291, baseType: !5006, size: 128, offset: 768)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4052, line: 274, size: 128, elements: !5007)
!5007 = !{!5008, !5009}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5006, file: !4052, line: 275, baseType: !5000, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5006, file: !4052, line: 276, baseType: !5000, size: 64, offset: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !4987, file: !4052, line: 292, baseType: !7, size: 32, offset: 896)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !4987, file: !4052, line: 293, baseType: !7, size: 32, offset: 928)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4987, file: !4052, line: 294, baseType: !7, size: 32, offset: 960)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !4987, file: !4052, line: 295, baseType: !7, size: 32, offset: 992)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !4987, file: !4052, line: 296, baseType: !7, size: 32, offset: 1024)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !4987, file: !4052, line: 297, baseType: !7, size: 32, offset: 1056)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !4987, file: !4052, line: 298, baseType: !2700, size: 64, offset: 1088)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !4987, file: !4052, line: 299, baseType: !5018, size: 64, offset: 1152)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4052, line: 269, size: 96, elements: !5020)
!5020 = !{!5021, !5022}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5019, file: !4052, line: 270, baseType: !5000, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5019, file: !4052, line: 271, baseType: !7, size: 32, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !4987, file: !4052, line: 300, baseType: !1160, size: 64, offset: 1216)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4987, file: !4052, line: 301, baseType: !2135, size: 64, offset: 1280)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !4987, file: !4052, line: 302, baseType: !1222, size: 64, offset: 1344)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !4987, file: !4052, line: 303, baseType: !7, size: 32, offset: 1408)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !4987, file: !4052, line: 304, baseType: !1118, size: 256, offset: 1472)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4987, file: !4052, line: 305, baseType: !79, size: 32, offset: 1728)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !4987, file: !4052, line: 318, baseType: !79, size: 32, offset: 1760)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !4987, file: !4052, line: 322, baseType: !1079, size: 256, offset: 1792)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !4987, file: !4052, line: 323, baseType: !5006, size: 128, offset: 2048)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !4987, file: !4052, line: 324, baseType: !5033, offset: 2176)
!5033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3215, elements: !831)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4902, file: !19, line: 444, baseType: !1865, size: 64, offset: 1152)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4902, file: !19, line: 445, baseType: !5037, size: 64, offset: 1216)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!42, !1235, !1782}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !404, file: !19, line: 487, baseType: !888, size: 320, offset: 960)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !404, file: !19, line: 488, baseType: !1908, size: 32, offset: 1280)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !404, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !404, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !404, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !394, file: !359, line: 180, baseType: !5047, size: 64, offset: 320)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!365, !1222, !298, !393, !333, !61, !55}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !394, file: !359, line: 182, baseType: !5047, size: 64, offset: 384)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !394, file: !359, line: 184, baseType: !5052, size: 64, offset: 448)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!42, !1222, !298, !393, !1399}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !382, file: !359, line: 90, baseType: !5056, size: 64, offset: 192)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !382, file: !359, line: 91, baseType: !5058, size: 64, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !349, file: !293, line: 120, baseType: !5060, size: 64, offset: 192)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!2809, !316}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !349, file: !293, line: 121, baseType: !5064, size: 64, offset: 256)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!1527, !316}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !349, file: !293, line: 122, baseType: !5068, size: 64, offset: 320)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{null, !316, !1143, !1144}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !292, file: !293, line: 70, baseType: !3444, size: 64, offset: 384)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !292, file: !293, line: 71, baseType: !2881, size: 32, offset: 448)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !292, file: !293, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !292, file: !293, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !292, file: !293, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !292, file: !293, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !292, file: !293, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !289, file: !6, line: 47, baseType: !279, size: 64, offset: 512)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !289, file: !6, line: 48, baseType: !298, size: 64, offset: 576)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !289, file: !6, line: 49, baseType: !5081, size: 64, offset: 640)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !289, file: !6, line: 50, baseType: !1117, size: 64, offset: 704)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !280, file: !6, line: 418, baseType: !5085, size: 64, offset: 1408)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5087)
!5087 = !{!5088, !5089, !5094, !5098, !5102, !5106}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5086, file: !6, line: 54, baseType: !370, size: 128)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5086, file: !6, line: 55, baseType: !5090, size: 64, offset: 128)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!365, !5085, !5093, !333}
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5086, file: !6, line: 57, baseType: !5095, size: 64, offset: 192)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!365, !5085, !5093, !36, !55}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5086, file: !6, line: 59, baseType: !5099, size: 64, offset: 256)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !279, !36}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5086, file: !6, line: 60, baseType: !5103, size: 64, offset: 320)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!42, !279}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5086, file: !6, line: 61, baseType: !5107, size: 64, offset: 384)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !279}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !280, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !280, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !280, file: !6, line: 421, baseType: !298, size: 64, offset: 1600)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !280, file: !6, line: 424, baseType: !5114, size: 64, offset: 1664)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5116)
!5116 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !280, file: !6, line: 425, baseType: !5118, size: 64, offset: 1728)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !280, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !280, file: !6, line: 435, baseType: !707, size: 256, offset: 1856)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !280, file: !6, line: 437, baseType: !5123, size: 64, offset: 2112)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5125, line: 69, size: 320, elements: !5126)
!5125 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5126 = !{!5127, !5128, !5129, !5146, !5148, !5151, !5152}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5124, file: !5125, line: 70, baseType: !36, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5124, file: !5125, line: 71, baseType: !279, size: 64, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5124, file: !5125, line: 72, baseType: !5130, size: 64, offset: 128)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5132)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5125, line: 47, size: 256, elements: !5133)
!5133 = !{!5134, !5135, !5141, !5145}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5132, file: !5125, line: 49, baseType: !7, size: 32)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5132, file: !5125, line: 51, baseType: !5136, size: 64, offset: 64)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!42, !36, !5139}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5124)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5132, file: !5125, line: 53, baseType: !5142, size: 64, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!42, !333, !5139}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5132, file: !5125, line: 55, baseType: !2833, size: 64, offset: 192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5124, file: !5125, line: 73, baseType: !5147, size: 16, offset: 192)
!5147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5124, file: !5125, line: 74, baseType: !5149, size: 8, offset: 208)
!5149 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !5150)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !4994)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5124, file: !5125, line: 75, baseType: !103, size: 8, offset: 216)
!5152 = !DIDerivedType(tag: DW_TAG_member, scope: !5124, file: !5125, line: 76, baseType: !5153, size: 64, offset: 256)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5124, file: !5125, line: 76, size: 64, elements: !5154)
!5154 = !{!5155, !5156, !5163}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5153, file: !5125, line: 77, baseType: !40, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5153, file: !5125, line: 78, baseType: !5157, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5159)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5125, line: 86, size: 128, elements: !5160)
!5160 = !{!5161, !5162}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5159, file: !5125, line: 87, baseType: !7, size: 32)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5159, file: !5125, line: 88, baseType: !333, size: 64, offset: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5153, file: !5125, line: 79, baseType: !5164, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5166)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5125, line: 92, size: 256, elements: !5167)
!5167 = !{!5168, !5169, !5170, !5171, !5172}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5166, file: !5125, line: 94, baseType: !7, size: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5166, file: !5125, line: 95, baseType: !7, size: 32, offset: 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5166, file: !5125, line: 96, baseType: !2700, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5166, file: !5125, line: 97, baseType: !5130, size: 64, offset: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5166, file: !5125, line: 98, baseType: !40, size: 64, offset: 192)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !280, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !280, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !280, file: !6, line: 442, baseType: !5114, size: 64, offset: 2240)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !280, file: !6, line: 443, baseType: !5118, size: 64, offset: 2304)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !280, file: !6, line: 444, baseType: !947, size: 8, offset: 2368)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !280, file: !6, line: 451, baseType: !947, size: 8, offset: 2376)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !280, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !280, file: !6, line: 455, baseType: !5181, size: 64, offset: 2432)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5183, line: 23, size: 96, elements: !5184)
!5183 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5184 = !{!5185, !5186, !5187}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5182, file: !5183, line: 24, baseType: !42, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5182, file: !5183, line: 24, baseType: !42, size: 32, offset: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5182, file: !5183, line: 24, baseType: !42, size: 32, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !280, file: !6, line: 458, baseType: !5189, size: 64, offset: 2496)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!42}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !280, file: !6, line: 460, baseType: !5193, size: 4032, align: 512, offset: 2560)
!5193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5194, size: 4032, elements: !5208)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5195)
!5195 = !{!5196, !5197, !5198}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5194, file: !6, line: 363, baseType: !40, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5194, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5194, file: !6, line: 367, baseType: !5199, size: 448, offset: 128)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5200)
!5200 = !{!5201, !5202}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5199, file: !6, line: 320, baseType: !279, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5199, file: !6, line: 321, baseType: !5203, size: 384, offset: 64)
!5203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5204, line: 40, size: 384, elements: !5205)
!5204 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5205 = !{!5206}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5203, file: !5204, line: 41, baseType: !5207, size: 384, align: 64)
!5207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 384, align: 64, elements: !3824)
!5208 = !{!5209}
!5209 = !DISubrange(count: 7)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !280, file: !6, line: 463, baseType: !5211, size: 192, offset: 6592)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5212, line: 8, size: 192, elements: !5213)
!5212 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5213 = !{!5214, !5215, !5216}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5211, file: !5212, line: 10, baseType: !7, size: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5211, file: !5212, line: 11, baseType: !689, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5211, file: !5212, line: 12, baseType: !5217, size: 64, offset: 128)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5219, line: 59, size: 48, elements: !5220)
!5219 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5220 = !{!5221, !5222, !5223, !5224, !5225, !5226}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5218, file: !5219, line: 60, baseType: !1544, size: 16)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5218, file: !5219, line: 61, baseType: !1544, size: 16, offset: 16)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5218, file: !5219, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5218, file: !5219, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5218, file: !5219, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5218, file: !5219, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !280, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !280, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !280, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !280, file: !6, line: 471, baseType: !5231, size: 64, offset: 7040)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5233, line: 33, size: 96, elements: !5234)
!5233 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5234 = !{!5235, !5236, !5237, !5238}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5232, file: !5233, line: 37, baseType: !42, size: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5232, file: !5233, line: 43, baseType: !42, size: 32, offset: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5232, file: !5233, line: 45, baseType: !46, size: 16, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5232, file: !5233, line: 47, baseType: !46, size: 16, offset: 80)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !280, file: !6, line: 476, baseType: !5240, size: 64, offset: 7104)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5242)
!5242 = !{!5243, !5259, !5260, !5261}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5241, file: !6, line: 379, baseType: !5244, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5246, line: 204, baseType: !5247)
!5246 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5246, line: 197, size: 192, elements: !5248)
!5248 = !{!5249, !5251, !5252, !5253, !5255, !5257}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5247, file: !5246, line: 198, baseType: !5250, size: 32)
!5250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5246, line: 21, baseType: !477)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5247, file: !5246, line: 199, baseType: !107, size: 8, offset: 32)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5247, file: !5246, line: 200, baseType: !107, size: 8, offset: 40)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5247, file: !5246, line: 201, baseType: !5254, size: 16, offset: 48)
!5254 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5246, line: 17, baseType: !114)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5247, file: !5246, line: 202, baseType: !5256, size: 64, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5246, line: 16, baseType: !481)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5247, file: !5246, line: 203, baseType: !5258, size: 64, offset: 128)
!5258 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5246, line: 22, baseType: !481)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5241, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5241, file: !6, line: 381, baseType: !333, size: 64, offset: 128)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5241, file: !6, line: 382, baseType: !333, size: 64, offset: 192)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !280, file: !6, line: 477, baseType: !5241, size: 256, offset: 7168)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !280, file: !6, line: 480, baseType: !5264, size: 64, offset: 7424)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !280, file: !6, line: 483, baseType: !5267, size: 64, offset: 7488)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !280, file: !6, line: 488, baseType: !333, size: 64, offset: 7552)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !280, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !280, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !280, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !280, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !280, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !280, file: !6, line: 500, baseType: !5276, size: 64, offset: 7872)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5278, line: 45, baseType: !5279)
!5278 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !280, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !280, file: !6, line: 504, baseType: !5282, size: 64, offset: 8000)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5285, line: 96, size: 192, elements: !5286)
!5285 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5286 = !{!5287, !5288, !5330, !5332}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5284, file: !5285, line: 97, baseType: !7, size: 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5284, file: !5285, line: 98, baseType: !5289, size: 64, offset: 64)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5285, line: 24, size: 3072, elements: !5291)
!5291 = !{!5292, !5294, !5295, !5296, !5297, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5327, !5328, !5329}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5290, file: !5285, line: 26, baseType: !5293, size: 128)
!5293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 128, elements: !3824)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5290, file: !5285, line: 27, baseType: !5293, size: 128, offset: 128)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5290, file: !5285, line: 28, baseType: !42, size: 32, offset: 256)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5290, file: !5285, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5290, file: !5285, line: 32, baseType: !5298, size: 960, offset: 576)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5299, line: 206, size: 960, elements: !5300)
!5299 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5300 = !{!5301, !5302, !5305, !5307, !5308, !5309}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5298, file: !5299, line: 207, baseType: !767, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5298, file: !5299, line: 208, baseType: !5303, size: 256, offset: 64)
!5303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5304, size: 256, elements: !818)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5298, file: !5299, line: 209, baseType: !5306, size: 256, offset: 320)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !818)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5298, file: !5299, line: 213, baseType: !368, size: 64, offset: 576)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5298, file: !5299, line: 215, baseType: !1181, size: 256, offset: 640)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5298, file: !5299, line: 216, baseType: !103, size: 8, offset: 896)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5290, file: !5285, line: 33, baseType: !59, size: 64, offset: 1536)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5290, file: !5285, line: 34, baseType: !59, size: 64, offset: 1600)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5290, file: !5285, line: 35, baseType: !947, size: 8, offset: 1664)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5290, file: !5285, line: 36, baseType: !2371, size: 320, offset: 1728)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5290, file: !5285, line: 37, baseType: !1079, size: 256, offset: 2048)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5290, file: !5285, line: 38, baseType: !764, size: 128, align: 64, offset: 2304)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5290, file: !5285, line: 39, baseType: !5317, size: 64, offset: 2432)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5285, line: 49, size: 768, elements: !5319)
!5319 = !{!5320, !5321, !5322, !5323, !5324, !5325, !5326}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5318, file: !5285, line: 50, baseType: !79, size: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5318, file: !5285, line: 51, baseType: !5306, size: 256, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5318, file: !5285, line: 53, baseType: !5306, size: 256, offset: 320)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5318, file: !5285, line: 54, baseType: !59, size: 64, offset: 576)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5318, file: !5285, line: 55, baseType: !5317, size: 64, offset: 640)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5318, file: !5285, line: 56, baseType: !42, size: 32, offset: 704)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5318, file: !5285, line: 57, baseType: !42, size: 32, offset: 736)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5290, file: !5285, line: 40, baseType: !59, size: 64, offset: 2496)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5290, file: !5285, line: 42, baseType: !42, size: 32, offset: 2560)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5290, file: !5285, line: 43, baseType: !5283, size: 64, offset: 2624)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5284, file: !5285, line: 99, baseType: !5331, offset: 128)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !607, line: 211, elements: !608)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5284, file: !5285, line: 100, baseType: !5333, size: 64, offset: 128)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5285, line: 63, size: 3008, elements: !5335)
!5335 = !{!5336, !5337, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5334, file: !5285, line: 64, baseType: !5317, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5334, file: !5285, line: 65, baseType: !5338, size: 192, offset: 64)
!5338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5317, size: 192, elements: !334)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5334, file: !5285, line: 67, baseType: !42, size: 32, offset: 256)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5334, file: !5285, line: 68, baseType: !707, size: 256, offset: 320)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5334, file: !5285, line: 69, baseType: !79, size: 32, offset: 576)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5334, file: !5285, line: 70, baseType: !707, size: 256, offset: 640)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5334, file: !5285, line: 71, baseType: !59, size: 64, offset: 896)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5334, file: !5285, line: 72, baseType: !59, size: 64, offset: 960)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5334, file: !5285, line: 73, baseType: !59, size: 64, offset: 1024)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5334, file: !5285, line: 74, baseType: !59, size: 64, offset: 1088)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5334, file: !5285, line: 75, baseType: !59, size: 64, offset: 1152)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5334, file: !5285, line: 76, baseType: !59, size: 64, offset: 1216)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5334, file: !5285, line: 77, baseType: !59, size: 64, offset: 1280)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5334, file: !5285, line: 78, baseType: !59, size: 64, offset: 1344)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5334, file: !5285, line: 79, baseType: !947, size: 8, offset: 1408)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5334, file: !5285, line: 80, baseType: !59, size: 64, offset: 1472)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5334, file: !5285, line: 81, baseType: !707, size: 256, offset: 1536)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5334, file: !5285, line: 82, baseType: !1118, size: 256, offset: 1792)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5334, file: !5285, line: 84, baseType: !69, size: 32, offset: 2048)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5334, file: !5285, line: 87, baseType: !59, size: 64, offset: 2112)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5334, file: !5285, line: 88, baseType: !59, size: 64, offset: 2176)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5334, file: !5285, line: 89, baseType: !2923, size: 704, offset: 2240)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5334, file: !5285, line: 90, baseType: !5283, size: 64, offset: 2944)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !280, file: !6, line: 515, baseType: !5361, size: 64, offset: 8064)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5363, line: 117, size: 128, elements: !5364)
!5363 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5364 = !{!5365, !5366, !5367}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5362, file: !5363, line: 118, baseType: !873, size: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5362, file: !5363, line: 119, baseType: !873, size: 32, offset: 32)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5362, file: !5363, line: 120, baseType: !368, size: 64, offset: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !280, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !280, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !280, file: !6, line: 520, baseType: !2601, size: 64, offset: 8192)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !280, file: !6, line: 523, baseType: !5372, size: 64, offset: 8256)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !280, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !280, file: !6, line: 525, baseType: !5377, size: 64, offset: 8384)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !280, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !280, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !280, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !280, file: !6, line: 535, baseType: !2699, size: 64, offset: 8640)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !280, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !280, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !280, file: !6, line: 540, baseType: !5387, size: 64, offset: 8768)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5389, line: 32, size: 64, elements: !5390)
!5389 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5390 = !{!5391, !5392}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5388, file: !5389, line: 33, baseType: !873, size: 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5388, file: !5389, line: 34, baseType: !873, size: 32, offset: 32)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !280, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !280, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !280, file: !6, line: 568, baseType: !3662, size: 64, offset: 9088)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !280, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!5397 = !{!5398, !5400, !5405, !5410, !5544, !5546, !5548, !5550, !5555, !5560, !5565, !5570, !0, !5572, !5577, !5582, !5584, !5589, !5594, !5597, !5602, !5605, !5608, !5610, !5615, !5620, !5622, !5627, !5629, !5632, !5637, !5642, !5644, !5646, !5648, !5650, !5655}
!5398 = !DIGlobalVariableExpression(var: !5399, expr: !DIExpression())
!5399 = distinct !DIGlobalVariable(name: "__param_bit_test", scope: !2, file: !3, line: 36, type: !5140, isLocal: true, isDefinition: true, align: 64)
!5400 = !DIGlobalVariableExpression(var: !5401, expr: !DIExpression())
!5401 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bit_testtype334", scope: !2, file: !3, line: 36, type: !5402, isLocal: true, isDefinition: true, align: 8)
!5402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 280, elements: !5403)
!5403 = !{!5404}
!5404 = !DISubrange(count: 35)
!5405 = !DIGlobalVariableExpression(var: !5406, expr: !DIExpression())
!5406 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bit_test335", scope: !2, file: !3, line: 37, type: !5407, isLocal: true, isDefinition: true, align: 8)
!5407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 608, elements: !5408)
!5408 = !{!5409}
!5409 = !DISubrange(count: 76)
!5410 = !DIGlobalVariableExpression(var: !5411, expr: !DIExpression())
!5411 = distinct !DIGlobalVariable(name: "i2c_bit_algo", scope: !2, file: !3, line: 621, type: !5412, isLocal: false, isDefinition: true)
!5412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5413)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !5414, line: 541, size: 320, elements: !5415)
!5414 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c371ab7e96755740ab83c38b9c0c7064")
!5415 = !{!5416, !5525, !5526, !5539, !5540}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5413, file: !5414, line: 551, baseType: !5417, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!42, !5420, !5516, !42}
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !5414, line: 719, size: 8320, elements: !5422)
!5422 = !{!5423, !5424, !5425, !5427, !5428, !5442, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5462, !5463, !5464, !5465, !5497, !5508, !5509, !5513, !5514}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5421, file: !5414, line: 720, baseType: !279, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5421, file: !5414, line: 721, baseType: !7, size: 32, offset: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5421, file: !5414, line: 722, baseType: !5426, size: 64, offset: 128)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5421, file: !5414, line: 723, baseType: !40, size: 64, offset: 192)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5421, file: !5414, line: 726, baseType: !5429, size: 64, offset: 256)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5431)
!5431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !5414, line: 579, size: 192, elements: !5432)
!5432 = !{!5433, !5437, !5441}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5431, file: !5414, line: 580, baseType: !5434, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{null, !5420, !7}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5431, file: !5414, line: 581, baseType: !5438, size: 64, offset: 64)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!42, !5420, !7}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5431, file: !5414, line: 582, baseType: !5434, size: 64, offset: 128)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5421, file: !5414, line: 727, baseType: !5443, size: 256, offset: 320)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5444, line: 57, size: 256, elements: !5445)
!5444 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!5445 = !{!5446}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "rtmutex", scope: !5443, file: !5444, line: 58, baseType: !5447, size: 256)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !5444, line: 23, size: 256, elements: !5448)
!5448 = !{!5449, !5450, !5451}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5447, file: !5444, line: 24, baseType: !720, size: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5447, file: !5444, line: 25, baseType: !2461, size: 128, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5447, file: !5444, line: 26, baseType: !3011, size: 64, offset: 192)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5421, file: !5414, line: 728, baseType: !5443, size: 256, offset: 576)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5421, file: !5414, line: 730, baseType: !42, size: 32, offset: 832)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5421, file: !5414, line: 731, baseType: !42, size: 32, offset: 864)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5421, file: !5414, line: 732, baseType: !2178, size: 5824, offset: 896)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5421, file: !5414, line: 733, baseType: !59, size: 64, offset: 6720)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5421, file: !5414, line: 737, baseType: !42, size: 32, offset: 6784)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5421, file: !5414, line: 738, baseType: !5459, size: 384, offset: 6816)
!5459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 384, elements: !5460)
!5460 = !{!5461}
!5461 = !DISubrange(count: 48)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5421, file: !5414, line: 739, baseType: !1118, size: 256, offset: 7232)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5421, file: !5414, line: 741, baseType: !707, size: 256, offset: 7488)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5421, file: !5414, line: 742, baseType: !117, size: 128, offset: 7744)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5421, file: !5414, line: 744, baseType: !5466, size: 64, offset: 7872)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !5414, line: 640, size: 832, elements: !5468)
!5468 = !{!5469, !5473, !5474, !5478, !5479, !5480, !5481, !5485, !5486, !5489, !5490, !5493, !5496}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5467, file: !5414, line: 641, baseType: !5470, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!42, !5420}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5467, file: !5414, line: 643, baseType: !5470, size: 64, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5467, file: !5414, line: 644, baseType: !5475, size: 64, offset: 128)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !5420, !42}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5467, file: !5414, line: 645, baseType: !5470, size: 64, offset: 192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5467, file: !5414, line: 646, baseType: !5475, size: 64, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5467, file: !5414, line: 647, baseType: !5470, size: 64, offset: 320)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5467, file: !5414, line: 649, baseType: !5482, size: 64, offset: 384)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !5420}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5467, file: !5414, line: 650, baseType: !5482, size: 64, offset: 448)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5467, file: !5414, line: 653, baseType: !5487, size: 64, offset: 512)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !5414, line: 653, flags: DIFlagFwdDecl)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5467, file: !5414, line: 654, baseType: !5487, size: 64, offset: 576)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5467, file: !5414, line: 655, baseType: !5491, size: 64, offset: 640)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5414, line: 655, flags: DIFlagFwdDecl)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5467, file: !5414, line: 656, baseType: !5494, size: 64, offset: 704)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5414, line: 656, flags: DIFlagFwdDecl)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5467, file: !5414, line: 657, baseType: !5494, size: 64, offset: 768)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5421, file: !5414, line: 745, baseType: !5498, size: 64, offset: 7936)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5500)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !5414, line: 686, size: 192, elements: !5501)
!5501 = !{!5502, !5503, !5504, !5505, !5506, !5507}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5500, file: !5414, line: 687, baseType: !480, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5500, file: !5414, line: 688, baseType: !42, size: 32, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5500, file: !5414, line: 689, baseType: !113, size: 16, offset: 96)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5500, file: !5414, line: 690, baseType: !113, size: 16, offset: 112)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5500, file: !5414, line: 691, baseType: !113, size: 16, offset: 128)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5500, file: !5414, line: 692, baseType: !113, size: 16, offset: 144)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5421, file: !5414, line: 747, baseType: !2532, size: 64, offset: 8000)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "bus_regulator", scope: !5421, file: !5414, line: 748, baseType: !5510, size: 64, offset: 8064)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5512, line: 169, flags: DIFlagFwdDecl)
!5512 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa9aafdb67bf9ffb34156cb06827210c")
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs", scope: !5421, file: !5414, line: 750, baseType: !442, size: 64, offset: 8128)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "addrs_in_instantiation", scope: !5421, file: !5414, line: 753, baseType: !5515, size: 128, offset: 8192)
!5515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !3824)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5518, line: 73, size: 128, elements: !5519)
!5518 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26895887cd35ff637ccd2046d4f4311d")
!5519 = !{!5520, !5521, !5522, !5523}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5517, file: !5518, line: 74, baseType: !114, size: 16)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5517, file: !5518, line: 75, baseType: !114, size: 16, offset: 16)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5517, file: !5518, line: 85, baseType: !114, size: 16, offset: 32)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5517, file: !5518, line: 86, baseType: !5524, size: 64, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5413, file: !5414, line: 553, baseType: !5417, size: 64, offset: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5413, file: !5414, line: 555, baseType: !5527, size: 64, offset: 128)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!42, !5420, !113, !46, !38, !103, !42, !5530}
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5518, line: 141, size: 272, elements: !5532)
!5532 = !{!5533, !5534, !5535}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5531, file: !5518, line: 142, baseType: !105, size: 8)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5531, file: !5518, line: 143, baseType: !114, size: 16)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5531, file: !5518, line: 144, baseType: !5536, size: 272)
!5536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 272, elements: !5537)
!5537 = !{!5538}
!5538 = !DISubrange(count: 34)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5413, file: !5414, line: 558, baseType: !5527, size: 64, offset: 192)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5413, file: !5414, line: 563, baseType: !5541, size: 64, offset: 256)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!476, !5420}
!5544 = !DIGlobalVariableExpression(var: !5545, expr: !DIExpression())
!5545 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_i2c_bit_algo336", scope: !2, file: !3, line: 626, type: !40, isLocal: true, isDefinition: true)
!5546 = !DIGlobalVariableExpression(var: !5547, expr: !DIExpression())
!5547 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_i2c_bit_add_bus337", scope: !2, file: !3, line: 678, type: !40, isLocal: true, isDefinition: true)
!5548 = !DIGlobalVariableExpression(var: !5549, expr: !DIExpression())
!5549 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_i2c_bit_add_numbered_bus338", scope: !2, file: !3, line: 684, type: !40, isLocal: true, isDefinition: true)
!5550 = !DIGlobalVariableExpression(var: !5551, expr: !DIExpression())
!5551 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author339", scope: !2, file: !3, line: 686, type: !5552, isLocal: true, isDefinition: true, align: 8)
!5552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 480, elements: !5553)
!5553 = !{!5554}
!5554 = !DISubrange(count: 60)
!5555 = !DIGlobalVariableExpression(var: !5556, expr: !DIExpression())
!5556 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description340", scope: !2, file: !3, line: 687, type: !5557, isLocal: true, isDefinition: true, align: 8)
!5557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 440, elements: !5558)
!5558 = !{!5559}
!5559 = !DISubrange(count: 55)
!5560 = !DIGlobalVariableExpression(var: !5561, expr: !DIExpression())
!5561 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file341", scope: !2, file: !3, line: 688, type: !5562, isLocal: true, isDefinition: true, align: 8)
!5562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 392, elements: !5563)
!5563 = !{!5564}
!5564 = !DISubrange(count: 49)
!5565 = !DIGlobalVariableExpression(var: !5566, expr: !DIExpression())
!5566 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license342", scope: !2, file: !3, line: 688, type: !5567, isLocal: true, isDefinition: true, align: 8)
!5567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 200, elements: !5568)
!5568 = !{!5569}
!5569 = !DISubrange(count: 25)
!5570 = !DIGlobalVariableExpression(var: !5571, expr: !DIExpression())
!5571 = distinct !DIGlobalVariable(name: "bit_test", scope: !2, file: !3, line: 35, type: !42, isLocal: true, isDefinition: true)
!5572 = !DIGlobalVariableExpression(var: !5573, expr: !DIExpression())
!5573 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !5574, isLocal: true, isDefinition: true)
!5574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 248, elements: !5575)
!5575 = !{!5576}
!5576 = !DISubrange(count: 31)
!5577 = !DIGlobalVariableExpression(var: !5578, expr: !DIExpression())
!5578 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !5579, isLocal: true, isDefinition: true)
!5579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 208, elements: !5580)
!5580 = !{!5581}
!5581 = !DISubrange(count: 26)
!5582 = !DIGlobalVariableExpression(var: !5583, expr: !DIExpression())
!5583 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !5574, isLocal: true, isDefinition: true)
!5584 = !DIGlobalVariableExpression(var: !5585, expr: !DIExpression())
!5585 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !5586, isLocal: true, isDefinition: true)
!5586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 304, elements: !5587)
!5587 = !{!5588}
!5588 = !DISubrange(count: 38)
!5589 = !DIGlobalVariableExpression(var: !5590, expr: !DIExpression())
!5590 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !5591, isLocal: true, isDefinition: true)
!5591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 224, elements: !5592)
!5592 = !{!5593}
!5593 = !DISubrange(count: 28)
!5594 = !DIGlobalVariableExpression(var: !5595, expr: !DIExpression())
!5595 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !5596, isLocal: true, isDefinition: true)
!5596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 200, elements: !5568)
!5597 = !DIGlobalVariableExpression(var: !5598, expr: !DIExpression())
!5598 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !5599, isLocal: true, isDefinition: true)
!5599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !5600)
!5600 = !{!5601}
!5601 = !DISubrange(count: 21)
!5602 = !DIGlobalVariableExpression(var: !5603, expr: !DIExpression())
!5603 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !5604, isLocal: true, isDefinition: true)
!5604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 272, elements: !5537)
!5605 = !DIGlobalVariableExpression(var: !5606, expr: !DIExpression())
!5606 = distinct !DIGlobalVariable(scope: null, file: !3, line: 663, type: !5607, isLocal: true, isDefinition: true)
!5607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 280, elements: !5403)
!5608 = !DIGlobalVariableExpression(var: !5609, expr: !DIExpression())
!5609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !5607, isLocal: true, isDefinition: true)
!5610 = !DIGlobalVariableExpression(var: !5611, expr: !DIExpression())
!5611 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !5612, isLocal: true, isDefinition: true)
!5612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 184, elements: !5613)
!5613 = !{!5614}
!5614 = !DISubrange(count: 23)
!5615 = !DIGlobalVariableExpression(var: !5616, expr: !DIExpression())
!5616 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !5617, isLocal: true, isDefinition: true)
!5617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !5618)
!5618 = !{!5619}
!5619 = !DISubrange(count: 47)
!5620 = !DIGlobalVariableExpression(var: !5621, expr: !DIExpression())
!5621 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !5617, isLocal: true, isDefinition: true)
!5622 = !DIGlobalVariableExpression(var: !5623, expr: !DIExpression())
!5623 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !5624, isLocal: true, isDefinition: true)
!5624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 360, elements: !5625)
!5625 = !{!5626}
!5626 = !DISubrange(count: 45)
!5627 = !DIGlobalVariableExpression(var: !5628, expr: !DIExpression())
!5628 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !5612, isLocal: true, isDefinition: true)
!5629 = !DIGlobalVariableExpression(var: !5630, expr: !DIExpression())
!5630 = distinct !DIGlobalVariable(scope: null, file: !3, line: 260, type: !5631, isLocal: true, isDefinition: true)
!5631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 392, elements: !5563)
!5632 = !DIGlobalVariableExpression(var: !5633, expr: !DIExpression())
!5633 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !5634, isLocal: true, isDefinition: true)
!5634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 176, elements: !5635)
!5635 = !{!5636}
!5636 = !DISubrange(count: 22)
!5637 = !DIGlobalVariableExpression(var: !5638, expr: !DIExpression())
!5638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !5639, isLocal: true, isDefinition: true)
!5639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 400, elements: !5640)
!5640 = !{!5641}
!5641 = !DISubrange(count: 50)
!5642 = !DIGlobalVariableExpression(var: !5643, expr: !DIExpression())
!5643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !5612, isLocal: true, isDefinition: true)
!5644 = !DIGlobalVariableExpression(var: !5645, expr: !DIExpression())
!5645 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !5631, isLocal: true, isDefinition: true)
!5646 = !DIGlobalVariableExpression(var: !5647, expr: !DIExpression())
!5647 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !5634, isLocal: true, isDefinition: true)
!5648 = !DIGlobalVariableExpression(var: !5649, expr: !DIExpression())
!5649 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !5639, isLocal: true, isDefinition: true)
!5650 = !DIGlobalVariableExpression(var: !5651, expr: !DIExpression())
!5651 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !5652, isLocal: true, isDefinition: true)
!5652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 120, elements: !5653)
!5653 = !{!5654}
!5654 = !DISubrange(count: 15)
!5655 = !DIGlobalVariableExpression(var: !5656, expr: !DIExpression())
!5656 = distinct !DIGlobalVariable(name: "i2c_bit_quirk_no_clk_stretch", scope: !2, file: !3, line: 628, type: !5499, isLocal: true, isDefinition: true)
!5657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 176, elements: !5635)
!5658 = !{i32 7, !"Dwarf Version", i32 5}
!5659 = !{i32 2, !"Debug Info Version", i32 3}
!5660 = !{i32 1, !"wchar_size", i32 2}
!5661 = !{i32 8, !"cf-protection-branch", i32 1}
!5662 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5663 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5664 = !{i32 1, !"Code Model", i32 2}
!5665 = !{i32 1, !"override-stack-alignment", i32 8}
!5666 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5667 = distinct !DISubprogram(name: "bit_xfer", scope: !3, file: !3, line: 520, type: !5418, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5668)
!5668 = !{!5669, !5670, !5671, !5672, !5673, !5694, !5695, !5696, !5697}
!5669 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !5667, file: !3, line: 520, type: !5420)
!5670 = !DILocalVariable(name: "msgs", arg: 2, scope: !5667, file: !3, line: 521, type: !5516)
!5671 = !DILocalVariable(name: "num", arg: 3, scope: !5667, file: !3, line: 521, type: !42)
!5672 = !DILocalVariable(name: "pmsg", scope: !5667, file: !3, line: 523, type: !5516)
!5673 = !DILocalVariable(name: "adap", scope: !5667, file: !3, line: 524, type: !5674)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algo_bit_data", file: !5676, line: 21, size: 576, elements: !5677)
!5676 = !DIFile(filename: "./include/linux/i2c-algo-bit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f101d0cfe7d50e23f1ca905c0217494")
!5677 = !{!5678, !5679, !5683, !5684, !5688, !5689, !5690, !5691, !5692, !5693}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5675, file: !5676, line: 22, baseType: !40, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "setsda", scope: !5675, file: !5676, line: 23, baseType: !5680, size: 64, offset: 64)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{null, !40, !42}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "setscl", scope: !5675, file: !5676, line: 24, baseType: !5680, size: 64, offset: 128)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "getsda", scope: !5675, file: !5676, line: 25, baseType: !5685, size: 64, offset: 192)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!42, !40}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "getscl", scope: !5675, file: !5676, line: 26, baseType: !5685, size: 64, offset: 256)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "pre_xfer", scope: !5675, file: !5676, line: 27, baseType: !5470, size: 64, offset: 320)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "post_xfer", scope: !5675, file: !5676, line: 28, baseType: !5482, size: 64, offset: 384)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "udelay", scope: !5675, file: !5676, line: 31, baseType: !42, size: 32, offset: 448)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5675, file: !5676, line: 35, baseType: !42, size: 32, offset: 480)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_atomic", scope: !5675, file: !5676, line: 36, baseType: !947, size: 8, offset: 512)
!5694 = !DILocalVariable(name: "i", scope: !5667, file: !3, line: 525, type: !42)
!5695 = !DILocalVariable(name: "ret", scope: !5667, file: !3, line: 525, type: !42)
!5696 = !DILocalVariable(name: "nak_ok", scope: !5667, file: !3, line: 526, type: !46)
!5697 = !DILabel(scope: !5667, name: "bailout", file: !3, line: 586)
!5698 = !DILocation(line: 520, column: 41, scope: !5667)
!5699 = !DILocation(line: 521, column: 22, scope: !5667)
!5700 = !DILocation(line: 521, column: 34, scope: !5667)
!5701 = !DILocation(line: 523, column: 2, scope: !5667)
!5702 = !DILocation(line: 523, column: 18, scope: !5667)
!5703 = !DILocation(line: 524, column: 2, scope: !5667)
!5704 = !DILocation(line: 524, column: 28, scope: !5667)
!5705 = !DILocation(line: 524, column: 35, scope: !5667)
!5706 = !DILocation(line: 524, column: 45, scope: !5667)
!5707 = !DILocation(line: 525, column: 2, scope: !5667)
!5708 = !DILocation(line: 525, column: 6, scope: !5667)
!5709 = !DILocation(line: 525, column: 9, scope: !5667)
!5710 = !DILocation(line: 526, column: 2, scope: !5667)
!5711 = !DILocation(line: 526, column: 17, scope: !5667)
!5712 = !DILocation(line: 528, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 528, column: 6)
!5714 = !DILocation(line: 528, column: 12, scope: !5713)
!5715 = !DILocation(line: 528, column: 6, scope: !5667)
!5716 = !DILocation(line: 529, column: 9, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 528, column: 22)
!5718 = !DILocation(line: 529, column: 15, scope: !5717)
!5719 = !DILocation(line: 529, column: 24, scope: !5717)
!5720 = !DILocation(line: 529, column: 7, scope: !5717)
!5721 = !DILocation(line: 530, column: 7, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 530, column: 7)
!5723 = !DILocation(line: 530, column: 11, scope: !5722)
!5724 = !DILocation(line: 530, column: 7, scope: !5717)
!5725 = !DILocation(line: 531, column: 11, scope: !5722)
!5726 = !DILocation(line: 531, column: 4, scope: !5722)
!5727 = !DILocation(line: 532, column: 2, scope: !5717)
!5728 = !DILocation(line: 534, column: 2, scope: !5667)
!5729 = !DILocation(line: 534, column: 2, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 534, column: 2)
!5731 = !DILocation(line: 535, column: 12, scope: !5667)
!5732 = !DILocation(line: 535, column: 2, scope: !5667)
!5733 = !DILocation(line: 536, column: 9, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 536, column: 2)
!5735 = !DILocation(line: 536, column: 7, scope: !5734)
!5736 = !DILocation(line: 536, column: 14, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 536, column: 2)
!5738 = !DILocation(line: 536, column: 18, scope: !5737)
!5739 = !DILocation(line: 536, column: 16, scope: !5737)
!5740 = !DILocation(line: 536, column: 2, scope: !5734)
!5741 = !DILocation(line: 537, column: 11, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 536, column: 28)
!5743 = !DILocation(line: 537, column: 16, scope: !5742)
!5744 = !DILocation(line: 537, column: 8, scope: !5742)
!5745 = !DILocation(line: 538, column: 12, scope: !5742)
!5746 = !DILocation(line: 538, column: 18, scope: !5742)
!5747 = !DILocation(line: 538, column: 24, scope: !5742)
!5748 = !DILocation(line: 538, column: 10, scope: !5742)
!5749 = !DILocation(line: 539, column: 9, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 539, column: 7)
!5751 = !DILocation(line: 539, column: 15, scope: !5750)
!5752 = !DILocation(line: 539, column: 21, scope: !5750)
!5753 = !DILocation(line: 539, column: 7, scope: !5742)
!5754 = !DILocation(line: 540, column: 8, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 540, column: 8)
!5756 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 539, column: 39)
!5757 = !DILocation(line: 540, column: 8, scope: !5756)
!5758 = !DILocation(line: 541, column: 9, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 541, column: 9)
!5760 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 540, column: 11)
!5761 = !DILocation(line: 541, column: 14, scope: !5759)
!5762 = !DILocation(line: 541, column: 16, scope: !5759)
!5763 = !DILocation(line: 541, column: 21, scope: !5759)
!5764 = !DILocation(line: 541, column: 27, scope: !5759)
!5765 = !DILocation(line: 541, column: 9, scope: !5760)
!5766 = !DILocation(line: 542, column: 6, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 541, column: 41)
!5768 = !DILocation(line: 542, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 542, column: 6)
!5770 = !DILocation(line: 544, column: 15, scope: !5767)
!5771 = !DILocation(line: 544, column: 6, scope: !5767)
!5772 = !DILocation(line: 545, column: 16, scope: !5767)
!5773 = !DILocation(line: 545, column: 6, scope: !5767)
!5774 = !DILocation(line: 546, column: 5, scope: !5767)
!5775 = !DILocation(line: 547, column: 6, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 546, column: 12)
!5777 = !DILocation(line: 547, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 547, column: 6)
!5779 = !DILocation(line: 549, column: 19, scope: !5776)
!5780 = !DILocation(line: 549, column: 6, scope: !5776)
!5781 = !DILocation(line: 551, column: 4, scope: !5760)
!5782 = !DILocation(line: 552, column: 24, scope: !5756)
!5783 = !DILocation(line: 552, column: 34, scope: !5756)
!5784 = !DILocation(line: 552, column: 10, scope: !5756)
!5785 = !DILocation(line: 552, column: 8, scope: !5756)
!5786 = !DILocation(line: 553, column: 9, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 553, column: 8)
!5788 = !DILocation(line: 553, column: 13, scope: !5787)
!5789 = !DILocation(line: 553, column: 19, scope: !5787)
!5790 = !DILocation(line: 553, column: 23, scope: !5787)
!5791 = !DILocation(line: 553, column: 8, scope: !5756)
!5792 = !DILocation(line: 554, column: 5, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 553, column: 31)
!5794 = !DILocation(line: 554, column: 5, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 554, column: 5)
!5796 = !DILocation(line: 557, column: 5, scope: !5793)
!5797 = !DILocation(line: 559, column: 3, scope: !5756)
!5798 = !DILocation(line: 560, column: 7, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 560, column: 7)
!5800 = !DILocation(line: 560, column: 13, scope: !5799)
!5801 = !DILocation(line: 560, column: 19, scope: !5799)
!5802 = !DILocation(line: 560, column: 7, scope: !5742)
!5803 = !DILocation(line: 562, column: 20, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 560, column: 31)
!5805 = !DILocation(line: 562, column: 30, scope: !5804)
!5806 = !DILocation(line: 562, column: 10, scope: !5804)
!5807 = !DILocation(line: 562, column: 8, scope: !5804)
!5808 = !DILocation(line: 563, column: 8, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 563, column: 8)
!5810 = !DILocation(line: 563, column: 12, scope: !5809)
!5811 = !DILocation(line: 563, column: 8, scope: !5804)
!5812 = !DILocation(line: 564, column: 5, scope: !5809)
!5813 = !DILocation(line: 564, column: 5, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 564, column: 5)
!5815 = !DILocation(line: 566, column: 8, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 566, column: 8)
!5817 = !DILocation(line: 566, column: 14, scope: !5816)
!5818 = !DILocation(line: 566, column: 20, scope: !5816)
!5819 = !DILocation(line: 566, column: 12, scope: !5816)
!5820 = !DILocation(line: 566, column: 8, scope: !5804)
!5821 = !DILocation(line: 567, column: 9, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 567, column: 9)
!5823 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 566, column: 25)
!5824 = !DILocation(line: 567, column: 13, scope: !5822)
!5825 = !DILocation(line: 567, column: 9, scope: !5823)
!5826 = !DILocation(line: 568, column: 10, scope: !5822)
!5827 = !DILocation(line: 568, column: 6, scope: !5822)
!5828 = !DILocation(line: 569, column: 5, scope: !5823)
!5829 = !DILocation(line: 571, column: 3, scope: !5804)
!5830 = !DILocation(line: 573, column: 20, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 571, column: 10)
!5832 = !DILocation(line: 573, column: 30, scope: !5831)
!5833 = !DILocation(line: 573, column: 10, scope: !5831)
!5834 = !DILocation(line: 573, column: 8, scope: !5831)
!5835 = !DILocation(line: 574, column: 8, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 574, column: 8)
!5837 = !DILocation(line: 574, column: 12, scope: !5836)
!5838 = !DILocation(line: 574, column: 8, scope: !5831)
!5839 = !DILocation(line: 575, column: 5, scope: !5836)
!5840 = !DILocation(line: 575, column: 5, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 575, column: 5)
!5842 = !DILocation(line: 577, column: 8, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 577, column: 8)
!5844 = !DILocation(line: 577, column: 14, scope: !5843)
!5845 = !DILocation(line: 577, column: 20, scope: !5843)
!5846 = !DILocation(line: 577, column: 12, scope: !5843)
!5847 = !DILocation(line: 577, column: 8, scope: !5831)
!5848 = !DILocation(line: 578, column: 9, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 578, column: 9)
!5850 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 577, column: 25)
!5851 = !DILocation(line: 578, column: 13, scope: !5849)
!5852 = !DILocation(line: 578, column: 9, scope: !5850)
!5853 = !DILocation(line: 579, column: 10, scope: !5849)
!5854 = !DILocation(line: 579, column: 6, scope: !5849)
!5855 = !DILocation(line: 580, column: 5, scope: !5850)
!5856 = !DILocation(line: 583, column: 2, scope: !5742)
!5857 = !DILocation(line: 536, column: 24, scope: !5737)
!5858 = !DILocation(line: 536, column: 2, scope: !5737)
!5859 = distinct !{!5859, !5740, !5860, !5861, !5862}
!5860 = !DILocation(line: 583, column: 2, scope: !5734)
!5861 = !{!"llvm.loop.mustprogress"}
!5862 = !{!"llvm.loop.unroll.disable"}
!5863 = !DILocation(line: 584, column: 8, scope: !5667)
!5864 = !DILocation(line: 584, column: 6, scope: !5667)
!5865 = !DILocation(line: 584, column: 2, scope: !5667)
!5866 = !DILocation(line: 586, column: 1, scope: !5667)
!5867 = !DILocation(line: 587, column: 2, scope: !5667)
!5868 = !DILocation(line: 587, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 587, column: 2)
!5870 = !DILocation(line: 588, column: 11, scope: !5667)
!5871 = !DILocation(line: 588, column: 2, scope: !5667)
!5872 = !DILocation(line: 590, column: 6, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 590, column: 6)
!5874 = !DILocation(line: 590, column: 12, scope: !5873)
!5875 = !DILocation(line: 590, column: 6, scope: !5667)
!5876 = !DILocation(line: 591, column: 3, scope: !5873)
!5877 = !DILocation(line: 591, column: 9, scope: !5873)
!5878 = !DILocation(line: 591, column: 19, scope: !5873)
!5879 = !DILocation(line: 592, column: 9, scope: !5667)
!5880 = !DILocation(line: 592, column: 2, scope: !5667)
!5881 = !DILocation(line: 593, column: 1, scope: !5667)
!5882 = distinct !DISubprogram(name: "bit_xfer_atomic", scope: !3, file: !3, line: 601, type: !5418, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5883)
!5883 = !{!5884, !5885, !5886, !5887}
!5884 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !5882, file: !3, line: 601, type: !5420)
!5885 = !DILocalVariable(name: "msgs", arg: 2, scope: !5882, file: !3, line: 601, type: !5516)
!5886 = !DILocalVariable(name: "num", arg: 3, scope: !5882, file: !3, line: 602, type: !42)
!5887 = !DILocalVariable(name: "adap", scope: !5882, file: !3, line: 604, type: !5674)
!5888 = !DILocation(line: 601, column: 48, scope: !5882)
!5889 = !DILocation(line: 601, column: 73, scope: !5882)
!5890 = !DILocation(line: 602, column: 11, scope: !5882)
!5891 = !DILocation(line: 604, column: 2, scope: !5882)
!5892 = !DILocation(line: 604, column: 28, scope: !5882)
!5893 = !DILocation(line: 604, column: 35, scope: !5882)
!5894 = !DILocation(line: 604, column: 45, scope: !5882)
!5895 = !DILocation(line: 606, column: 7, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 606, column: 6)
!5897 = !DILocation(line: 606, column: 13, scope: !5896)
!5898 = !{i8 0, i8 2}
!5899 = !DILocation(line: 606, column: 6, scope: !5882)
!5900 = !DILocation(line: 607, column: 3, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 607, column: 3)
!5902 = !DILocation(line: 607, column: 3, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 607, column: 3)
!5904 = !DILocation(line: 607, column: 3, scope: !5896)
!5905 = !DILocation(line: 609, column: 18, scope: !5882)
!5906 = !DILocation(line: 609, column: 28, scope: !5882)
!5907 = !DILocation(line: 609, column: 34, scope: !5882)
!5908 = !DILocation(line: 609, column: 9, scope: !5882)
!5909 = !DILocation(line: 610, column: 1, scope: !5882)
!5910 = !DILocation(line: 609, column: 2, scope: !5882)
!5911 = distinct !DISubprogram(name: "bit_func", scope: !3, file: !3, line: 612, type: !5542, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5912)
!5912 = !{!5913}
!5913 = !DILocalVariable(name: "adap", arg: 1, scope: !5911, file: !3, line: 612, type: !5420)
!5914 = !DILocation(line: 612, column: 41, scope: !5911)
!5915 = !DILocation(line: 614, column: 2, scope: !5911)
!5916 = distinct !DISubprogram(name: "i2c_bit_add_bus", scope: !3, file: !3, line: 674, type: !5471, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5917)
!5917 = !{!5918}
!5918 = !DILocalVariable(name: "adap", arg: 1, scope: !5916, file: !3, line: 674, type: !5420)
!5919 = !DILocation(line: 674, column: 41, scope: !5916)
!5920 = !DILocation(line: 676, column: 27, scope: !5916)
!5921 = !DILocation(line: 676, column: 9, scope: !5916)
!5922 = !DILocation(line: 676, column: 2, scope: !5916)
!5923 = distinct !DISubprogram(name: "__i2c_bit_add_bus", scope: !3, file: !3, line: 635, type: !5924, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5926)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!42, !5420, !5470}
!5926 = !{!5927, !5928, !5929, !5930}
!5927 = !DILocalVariable(name: "adap", arg: 1, scope: !5923, file: !3, line: 635, type: !5420)
!5928 = !DILocalVariable(name: "add_adapter", arg: 2, scope: !5923, file: !3, line: 636, type: !5470)
!5929 = !DILocalVariable(name: "bit_adap", scope: !5923, file: !3, line: 638, type: !5674)
!5930 = !DILocalVariable(name: "ret", scope: !5923, file: !3, line: 639, type: !42)
!5931 = !DILocation(line: 635, column: 50, scope: !5923)
!5932 = !DILocation(line: 636, column: 15, scope: !5923)
!5933 = !DILocation(line: 638, column: 2, scope: !5923)
!5934 = !DILocation(line: 638, column: 28, scope: !5923)
!5935 = !DILocation(line: 638, column: 39, scope: !5923)
!5936 = !DILocation(line: 638, column: 45, scope: !5923)
!5937 = !DILocation(line: 639, column: 2, scope: !5923)
!5938 = !DILocation(line: 639, column: 6, scope: !5923)
!5939 = !DILocation(line: 641, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 641, column: 6)
!5941 = !DILocation(line: 641, column: 6, scope: !5923)
!5942 = !DILocation(line: 642, column: 18, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 641, column: 16)
!5944 = !DILocation(line: 642, column: 9, scope: !5943)
!5945 = !DILocation(line: 642, column: 7, scope: !5943)
!5946 = !DILocation(line: 643, column: 7, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 643, column: 7)
!5948 = !DILocation(line: 643, column: 16, scope: !5947)
!5949 = !DILocation(line: 643, column: 21, scope: !5947)
!5950 = !DILocation(line: 643, column: 24, scope: !5947)
!5951 = !DILocation(line: 643, column: 28, scope: !5947)
!5952 = !DILocation(line: 643, column: 7, scope: !5943)
!5953 = !DILocation(line: 644, column: 4, scope: !5947)
!5954 = !DILocation(line: 645, column: 2, scope: !5943)
!5955 = !DILocation(line: 648, column: 2, scope: !5923)
!5956 = !DILocation(line: 648, column: 8, scope: !5923)
!5957 = !DILocation(line: 648, column: 13, scope: !5923)
!5958 = !DILocation(line: 649, column: 2, scope: !5923)
!5959 = !DILocation(line: 649, column: 8, scope: !5923)
!5960 = !DILocation(line: 649, column: 16, scope: !5923)
!5961 = !DILocation(line: 650, column: 6, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 650, column: 6)
!5963 = !DILocation(line: 650, column: 16, scope: !5962)
!5964 = !DILocation(line: 650, column: 23, scope: !5962)
!5965 = !DILocation(line: 650, column: 6, scope: !5923)
!5966 = !DILocation(line: 651, column: 3, scope: !5962)
!5967 = !DILocation(line: 651, column: 9, scope: !5962)
!5968 = !DILocation(line: 651, column: 16, scope: !5962)
!5969 = !DILocation(line: 658, column: 8, scope: !5923)
!5970 = !DILocation(line: 658, column: 20, scope: !5923)
!5971 = !DILocation(line: 658, column: 6, scope: !5923)
!5972 = !DILocation(line: 659, column: 6, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 659, column: 6)
!5974 = !DILocation(line: 659, column: 10, scope: !5973)
!5975 = !DILocation(line: 659, column: 6, scope: !5923)
!5976 = !DILocation(line: 660, column: 10, scope: !5973)
!5977 = !DILocation(line: 660, column: 3, scope: !5973)
!5978 = !DILocation(line: 662, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 662, column: 6)
!5980 = !DILocation(line: 662, column: 16, scope: !5979)
!5981 = !DILocation(line: 662, column: 23, scope: !5979)
!5982 = !DILocation(line: 662, column: 6, scope: !5923)
!5983 = !DILocation(line: 663, column: 3, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 663, column: 3)
!5985 = !DILocation(line: 663, column: 3, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 663, column: 3)
!5987 = !DILocation(line: 663, column: 3, scope: !5979)
!5988 = !DILocation(line: 665, column: 6, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 665, column: 6)
!5990 = !DILocation(line: 665, column: 16, scope: !5989)
!5991 = !DILocation(line: 665, column: 23, scope: !5989)
!5992 = !DILocation(line: 665, column: 6, scope: !5923)
!5993 = !DILocation(line: 666, column: 3, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5989, file: !3, line: 666, column: 3)
!5995 = !DILocation(line: 666, column: 3, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 666, column: 3)
!5997 = !DILocation(line: 666, column: 3, scope: !5989)
!5998 = !DILocation(line: 668, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 668, column: 6)
!6000 = !DILocation(line: 668, column: 16, scope: !5999)
!6001 = !DILocation(line: 668, column: 23, scope: !5999)
!6002 = !DILocation(line: 668, column: 31, scope: !5999)
!6003 = !DILocation(line: 668, column: 34, scope: !5999)
!6004 = !DILocation(line: 668, column: 44, scope: !5999)
!6005 = !DILocation(line: 668, column: 51, scope: !5999)
!6006 = !DILocation(line: 668, column: 6, scope: !5923)
!6007 = !DILocation(line: 669, column: 3, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 669, column: 3)
!6009 = !DILocation(line: 669, column: 3, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 669, column: 3)
!6011 = !DILocation(line: 669, column: 3, scope: !5999)
!6012 = !DILocation(line: 671, column: 2, scope: !5923)
!6013 = !DILocation(line: 672, column: 1, scope: !5923)
!6014 = distinct !DISubprogram(name: "i2c_bit_add_numbered_bus", scope: !3, file: !3, line: 680, type: !5471, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6015)
!6015 = !{!6016}
!6016 = !DILocalVariable(name: "adap", arg: 1, scope: !6014, file: !3, line: 680, type: !5420)
!6017 = !DILocation(line: 680, column: 50, scope: !6014)
!6018 = !DILocation(line: 682, column: 27, scope: !6014)
!6019 = !DILocation(line: 682, column: 9, scope: !6014)
!6020 = !DILocation(line: 682, column: 2, scope: !6014)
!6021 = distinct !DISubprogram(name: "i2c_start", scope: !3, file: !3, line: 115, type: !6022, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6024)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !5674}
!6024 = !{!6025}
!6025 = !DILocalVariable(name: "adap", arg: 1, scope: !6021, file: !3, line: 115, type: !5674)
!6026 = !DILocation(line: 115, column: 49, scope: !6021)
!6027 = !DILocation(line: 118, column: 2, scope: !6021)
!6028 = !DILocation(line: 119, column: 2, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6030, file: !3, line: 119, column: 2)
!6030 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 119, column: 2)
!6031 = !DILocation(line: 119, column: 2, scope: !6030)
!6032 = !DILocation(line: 119, column: 2, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 119, column: 2)
!6034 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 119, column: 2)
!6035 = !DILocation(line: 119, column: 2, scope: !6034)
!6036 = !DILocation(line: 119, column: 2, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 119, column: 2)
!6038 = !DILocation(line: 120, column: 8, scope: !6021)
!6039 = !DILocation(line: 120, column: 2, scope: !6021)
!6040 = !DILocation(line: 121, column: 1, scope: !6021)
!6041 = distinct !DISubprogram(name: "i2c_stop", scope: !3, file: !3, line: 134, type: !6022, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6042)
!6042 = !{!6043}
!6043 = !DILocalVariable(name: "adap", arg: 1, scope: !6041, file: !3, line: 134, type: !5674)
!6044 = !DILocation(line: 134, column: 48, scope: !6041)
!6045 = !DILocation(line: 137, column: 8, scope: !6041)
!6046 = !DILocation(line: 137, column: 2, scope: !6041)
!6047 = !DILocation(line: 138, column: 8, scope: !6041)
!6048 = !DILocation(line: 138, column: 2, scope: !6041)
!6049 = !DILocation(line: 139, column: 2, scope: !6041)
!6050 = !DILocation(line: 140, column: 2, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 140, column: 2)
!6052 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 140, column: 2)
!6053 = !DILocation(line: 140, column: 2, scope: !6052)
!6054 = !DILocation(line: 140, column: 2, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 140, column: 2)
!6056 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 140, column: 2)
!6057 = !DILocation(line: 140, column: 2, scope: !6056)
!6058 = !DILocation(line: 140, column: 2, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 140, column: 2)
!6060 = !DILocation(line: 141, column: 1, scope: !6041)
!6061 = distinct !DISubprogram(name: "i2c_repstart", scope: !3, file: !3, line: 123, type: !6022, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6062 = !{!6063}
!6063 = !DILocalVariable(name: "adap", arg: 1, scope: !6061, file: !3, line: 123, type: !5674)
!6064 = !DILocation(line: 123, column: 52, scope: !6061)
!6065 = !DILocation(line: 126, column: 8, scope: !6061)
!6066 = !DILocation(line: 126, column: 2, scope: !6061)
!6067 = !DILocation(line: 127, column: 8, scope: !6061)
!6068 = !DILocation(line: 127, column: 2, scope: !6061)
!6069 = !DILocation(line: 128, column: 2, scope: !6061)
!6070 = !DILocation(line: 129, column: 2, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 129, column: 2)
!6072 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 129, column: 2)
!6073 = !DILocation(line: 129, column: 2, scope: !6072)
!6074 = !DILocation(line: 129, column: 2, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 129, column: 2)
!6076 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 129, column: 2)
!6077 = !DILocation(line: 129, column: 2, scope: !6076)
!6078 = !DILocation(line: 129, column: 2, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 129, column: 2)
!6080 = !DILocation(line: 130, column: 8, scope: !6061)
!6081 = !DILocation(line: 130, column: 2, scope: !6061)
!6082 = !DILocation(line: 131, column: 1, scope: !6061)
!6083 = distinct !DISubprogram(name: "bit_doAddress", scope: !3, file: !3, line: 466, type: !6084, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6086)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!42, !5420, !5516}
!6086 = !{!6087, !6088, !6089, !6090, !6091, !6092, !6093, !6094}
!6087 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6083, file: !3, line: 466, type: !5420)
!6088 = !DILocalVariable(name: "msg", arg: 2, scope: !6083, file: !3, line: 466, type: !5516)
!6089 = !DILocalVariable(name: "flags", scope: !6083, file: !3, line: 468, type: !46)
!6090 = !DILocalVariable(name: "nak_ok", scope: !6083, file: !3, line: 469, type: !46)
!6091 = !DILocalVariable(name: "adap", scope: !6083, file: !3, line: 470, type: !5674)
!6092 = !DILocalVariable(name: "addr", scope: !6083, file: !3, line: 472, type: !107)
!6093 = !DILocalVariable(name: "ret", scope: !6083, file: !3, line: 473, type: !42)
!6094 = !DILocalVariable(name: "retries", scope: !6083, file: !3, line: 473, type: !42)
!6095 = !DILocation(line: 466, column: 46, scope: !6083)
!6096 = !DILocation(line: 466, column: 72, scope: !6083)
!6097 = !DILocation(line: 468, column: 2, scope: !6083)
!6098 = !DILocation(line: 468, column: 17, scope: !6083)
!6099 = !DILocation(line: 468, column: 25, scope: !6083)
!6100 = !DILocation(line: 468, column: 30, scope: !6083)
!6101 = !DILocation(line: 469, column: 2, scope: !6083)
!6102 = !DILocation(line: 469, column: 17, scope: !6083)
!6103 = !DILocation(line: 469, column: 26, scope: !6083)
!6104 = !DILocation(line: 469, column: 31, scope: !6083)
!6105 = !DILocation(line: 469, column: 37, scope: !6083)
!6106 = !DILocation(line: 470, column: 2, scope: !6083)
!6107 = !DILocation(line: 470, column: 28, scope: !6083)
!6108 = !DILocation(line: 470, column: 35, scope: !6083)
!6109 = !DILocation(line: 470, column: 45, scope: !6083)
!6110 = !DILocation(line: 472, column: 2, scope: !6083)
!6111 = !DILocation(line: 472, column: 16, scope: !6083)
!6112 = !DILocation(line: 473, column: 2, scope: !6083)
!6113 = !DILocation(line: 473, column: 6, scope: !6083)
!6114 = !DILocation(line: 473, column: 11, scope: !6083)
!6115 = !DILocation(line: 475, column: 12, scope: !6083)
!6116 = !DILocation(line: 475, column: 25, scope: !6083)
!6117 = !DILocation(line: 475, column: 35, scope: !6083)
!6118 = !DILocation(line: 475, column: 10, scope: !6083)
!6119 = !DILocation(line: 477, column: 6, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 477, column: 6)
!6121 = !DILocation(line: 477, column: 12, scope: !6120)
!6122 = !DILocation(line: 477, column: 6, scope: !6083)
!6123 = !DILocation(line: 479, column: 19, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 477, column: 25)
!6125 = !DILocation(line: 479, column: 24, scope: !6124)
!6126 = !DILocation(line: 479, column: 29, scope: !6124)
!6127 = !DILocation(line: 479, column: 35, scope: !6124)
!6128 = !DILocation(line: 479, column: 15, scope: !6124)
!6129 = !DILocation(line: 479, column: 10, scope: !6124)
!6130 = !DILocation(line: 479, column: 8, scope: !6124)
!6131 = !DILocation(line: 480, column: 3, scope: !6124)
!6132 = !DILocation(line: 480, column: 3, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 480, column: 3)
!6134 = !DILocation(line: 482, column: 21, scope: !6124)
!6135 = !DILocation(line: 482, column: 31, scope: !6124)
!6136 = !DILocation(line: 482, column: 37, scope: !6124)
!6137 = !DILocation(line: 482, column: 9, scope: !6124)
!6138 = !DILocation(line: 482, column: 7, scope: !6124)
!6139 = !DILocation(line: 483, column: 8, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 483, column: 7)
!6141 = !DILocation(line: 483, column: 12, scope: !6140)
!6142 = !DILocation(line: 483, column: 18, scope: !6140)
!6143 = !DILocation(line: 483, column: 22, scope: !6140)
!6144 = !DILocation(line: 483, column: 7, scope: !6124)
!6145 = !DILocation(line: 484, column: 4, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 484, column: 4)
!6147 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 483, column: 31)
!6148 = !DILocation(line: 484, column: 4, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 484, column: 4)
!6150 = !DILocation(line: 486, column: 4, scope: !6147)
!6151 = !DILocation(line: 489, column: 18, scope: !6124)
!6152 = !DILocation(line: 489, column: 28, scope: !6124)
!6153 = !DILocation(line: 489, column: 33, scope: !6124)
!6154 = !DILocation(line: 489, column: 38, scope: !6124)
!6155 = !DILocation(line: 489, column: 9, scope: !6124)
!6156 = !DILocation(line: 489, column: 7, scope: !6124)
!6157 = !DILocation(line: 490, column: 8, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 490, column: 7)
!6159 = !DILocation(line: 490, column: 12, scope: !6158)
!6160 = !DILocation(line: 490, column: 18, scope: !6158)
!6161 = !DILocation(line: 490, column: 22, scope: !6158)
!6162 = !DILocation(line: 490, column: 7, scope: !6124)
!6163 = !DILocation(line: 492, column: 4, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 492, column: 4)
!6165 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 490, column: 30)
!6166 = !DILocation(line: 492, column: 4, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 492, column: 4)
!6168 = !DILocation(line: 493, column: 4, scope: !6165)
!6169 = !DILocation(line: 495, column: 7, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 495, column: 7)
!6171 = !DILocation(line: 495, column: 13, scope: !6170)
!6172 = !DILocation(line: 495, column: 7, scope: !6124)
!6173 = !DILocation(line: 496, column: 4, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 495, column: 25)
!6175 = !DILocation(line: 496, column: 4, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 496, column: 4)
!6177 = !DILocation(line: 498, column: 17, scope: !6174)
!6178 = !DILocation(line: 498, column: 4, scope: !6174)
!6179 = !DILocation(line: 500, column: 9, scope: !6174)
!6180 = !DILocation(line: 501, column: 22, scope: !6174)
!6181 = !DILocation(line: 501, column: 32, scope: !6174)
!6182 = !DILocation(line: 501, column: 38, scope: !6174)
!6183 = !DILocation(line: 501, column: 10, scope: !6174)
!6184 = !DILocation(line: 501, column: 8, scope: !6174)
!6185 = !DILocation(line: 502, column: 9, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 502, column: 8)
!6187 = !DILocation(line: 502, column: 13, scope: !6186)
!6188 = !DILocation(line: 502, column: 19, scope: !6186)
!6189 = !DILocation(line: 502, column: 23, scope: !6186)
!6190 = !DILocation(line: 502, column: 8, scope: !6174)
!6191 = !DILocation(line: 503, column: 5, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6193, file: !3, line: 503, column: 5)
!6193 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 502, column: 31)
!6194 = !DILocation(line: 503, column: 5, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 503, column: 5)
!6196 = !DILocation(line: 505, column: 5, scope: !6193)
!6197 = !DILocation(line: 507, column: 3, scope: !6174)
!6198 = !DILocation(line: 508, column: 2, scope: !6124)
!6199 = !DILocation(line: 509, column: 33, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 508, column: 9)
!6201 = !DILocation(line: 509, column: 10, scope: !6200)
!6202 = !DILocation(line: 509, column: 8, scope: !6200)
!6203 = !DILocation(line: 510, column: 7, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 510, column: 7)
!6205 = !DILocation(line: 510, column: 13, scope: !6204)
!6206 = !DILocation(line: 510, column: 7, scope: !6200)
!6207 = !DILocation(line: 511, column: 9, scope: !6204)
!6208 = !DILocation(line: 511, column: 4, scope: !6204)
!6209 = !DILocation(line: 512, column: 21, scope: !6200)
!6210 = !DILocation(line: 512, column: 31, scope: !6200)
!6211 = !DILocation(line: 512, column: 37, scope: !6200)
!6212 = !DILocation(line: 512, column: 9, scope: !6200)
!6213 = !DILocation(line: 512, column: 7, scope: !6200)
!6214 = !DILocation(line: 513, column: 8, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 513, column: 7)
!6216 = !DILocation(line: 513, column: 12, scope: !6215)
!6217 = !DILocation(line: 513, column: 18, scope: !6215)
!6218 = !DILocation(line: 513, column: 22, scope: !6215)
!6219 = !DILocation(line: 513, column: 7, scope: !6200)
!6220 = !DILocation(line: 514, column: 4, scope: !6215)
!6221 = !DILocation(line: 517, column: 2, scope: !6083)
!6222 = !DILocation(line: 518, column: 1, scope: !6083)
!6223 = distinct !DISubprogram(name: "readbytes", scope: !3, file: !3, line: 401, type: !6084, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6224 = !{!6225, !6226, !6227, !6228, !6229, !6230, !6231, !6232}
!6225 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6223, file: !3, line: 401, type: !5420)
!6226 = !DILocalVariable(name: "msg", arg: 2, scope: !6223, file: !3, line: 401, type: !5516)
!6227 = !DILocalVariable(name: "inval", scope: !6223, file: !3, line: 403, type: !42)
!6228 = !DILocalVariable(name: "rdcount", scope: !6223, file: !3, line: 404, type: !42)
!6229 = !DILocalVariable(name: "temp", scope: !6223, file: !3, line: 405, type: !4997)
!6230 = !DILocalVariable(name: "count", scope: !6223, file: !3, line: 406, type: !42)
!6231 = !DILocalVariable(name: "flags", scope: !6223, file: !3, line: 407, type: !4838)
!6232 = !DILocalVariable(name: "adap", scope: !6223, file: !3, line: 408, type: !5674)
!6233 = !DILocation(line: 401, column: 42, scope: !6223)
!6234 = !DILocation(line: 401, column: 68, scope: !6223)
!6235 = !DILocation(line: 403, column: 2, scope: !6223)
!6236 = !DILocation(line: 403, column: 6, scope: !6223)
!6237 = !DILocation(line: 404, column: 2, scope: !6223)
!6238 = !DILocation(line: 404, column: 6, scope: !6223)
!6239 = !DILocation(line: 405, column: 2, scope: !6223)
!6240 = !DILocation(line: 405, column: 17, scope: !6223)
!6241 = !DILocation(line: 405, column: 24, scope: !6223)
!6242 = !DILocation(line: 405, column: 29, scope: !6223)
!6243 = !DILocation(line: 406, column: 2, scope: !6223)
!6244 = !DILocation(line: 406, column: 6, scope: !6223)
!6245 = !DILocation(line: 406, column: 14, scope: !6223)
!6246 = !DILocation(line: 406, column: 19, scope: !6223)
!6247 = !DILocation(line: 407, column: 2, scope: !6223)
!6248 = !DILocation(line: 407, column: 17, scope: !6223)
!6249 = !DILocation(line: 407, column: 25, scope: !6223)
!6250 = !DILocation(line: 407, column: 30, scope: !6223)
!6251 = !DILocation(line: 408, column: 2, scope: !6223)
!6252 = !DILocation(line: 408, column: 28, scope: !6223)
!6253 = !DILocation(line: 408, column: 35, scope: !6223)
!6254 = !DILocation(line: 408, column: 45, scope: !6223)
!6255 = !DILocation(line: 410, column: 7, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 410, column: 6)
!6257 = !DILocation(line: 410, column: 13, scope: !6256)
!6258 = !DILocation(line: 410, column: 6, scope: !6223)
!6259 = !DILocation(line: 411, column: 3, scope: !6256)
!6260 = !DILocation(line: 413, column: 2, scope: !6223)
!6261 = !DILocation(line: 413, column: 9, scope: !6223)
!6262 = !DILocation(line: 413, column: 15, scope: !6223)
!6263 = !DILocation(line: 414, column: 19, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 413, column: 20)
!6265 = !DILocation(line: 414, column: 11, scope: !6264)
!6266 = !DILocation(line: 414, column: 9, scope: !6264)
!6267 = !DILocation(line: 415, column: 7, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 415, column: 7)
!6269 = !DILocation(line: 415, column: 13, scope: !6268)
!6270 = !DILocation(line: 415, column: 7, scope: !6264)
!6271 = !DILocation(line: 416, column: 12, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 415, column: 19)
!6273 = !DILocation(line: 416, column: 5, scope: !6272)
!6274 = !DILocation(line: 416, column: 10, scope: !6272)
!6275 = !DILocation(line: 417, column: 11, scope: !6272)
!6276 = !DILocation(line: 418, column: 3, scope: !6272)
!6277 = !DILocation(line: 419, column: 4, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 418, column: 10)
!6279 = !DILocation(line: 422, column: 7, scope: !6264)
!6280 = !DILocation(line: 423, column: 8, scope: !6264)
!6281 = !DILocation(line: 427, column: 7, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 427, column: 7)
!6283 = !DILocation(line: 427, column: 15, scope: !6282)
!6284 = !DILocation(line: 427, column: 20, scope: !6282)
!6285 = !DILocation(line: 427, column: 24, scope: !6282)
!6286 = !DILocation(line: 427, column: 30, scope: !6282)
!6287 = !DILocation(line: 427, column: 7, scope: !6264)
!6288 = !DILocation(line: 428, column: 8, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 428, column: 8)
!6290 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 427, column: 49)
!6291 = !DILocation(line: 428, column: 14, scope: !6289)
!6292 = !DILocation(line: 428, column: 19, scope: !6289)
!6293 = !DILocation(line: 428, column: 22, scope: !6289)
!6294 = !DILocation(line: 428, column: 28, scope: !6289)
!6295 = !DILocation(line: 428, column: 8, scope: !6290)
!6296 = !DILocation(line: 429, column: 11, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 429, column: 9)
!6298 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 428, column: 51)
!6299 = !DILocation(line: 429, column: 17, scope: !6297)
!6300 = !DILocation(line: 429, column: 9, scope: !6298)
!6301 = !DILocation(line: 430, column: 13, scope: !6297)
!6302 = !DILocation(line: 430, column: 6, scope: !6297)
!6303 = !DILocation(line: 431, column: 5, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 431, column: 5)
!6305 = !DILocation(line: 431, column: 5, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6304, file: !3, line: 431, column: 5)
!6307 = !DILocation(line: 434, column: 5, scope: !6298)
!6308 = !DILocation(line: 439, column: 13, scope: !6290)
!6309 = !DILocation(line: 439, column: 10, scope: !6290)
!6310 = !DILocation(line: 440, column: 16, scope: !6290)
!6311 = !DILocation(line: 440, column: 4, scope: !6290)
!6312 = !DILocation(line: 440, column: 9, scope: !6290)
!6313 = !DILocation(line: 440, column: 13, scope: !6290)
!6314 = !DILocation(line: 441, column: 3, scope: !6290)
!6315 = !DILocation(line: 443, column: 3, scope: !6264)
!6316 = !DILocation(line: 443, column: 3, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 443, column: 3)
!6318 = !DILocation(line: 449, column: 9, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 449, column: 7)
!6320 = !DILocation(line: 449, column: 15, scope: !6319)
!6321 = !DILocation(line: 449, column: 7, scope: !6264)
!6322 = !DILocation(line: 450, column: 19, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 449, column: 35)
!6324 = !DILocation(line: 450, column: 29, scope: !6323)
!6325 = !DILocation(line: 450, column: 12, scope: !6323)
!6326 = !DILocation(line: 450, column: 10, scope: !6323)
!6327 = !DILocation(line: 451, column: 8, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 451, column: 8)
!6329 = !DILocation(line: 451, column: 14, scope: !6328)
!6330 = !DILocation(line: 451, column: 8, scope: !6323)
!6331 = !DILocation(line: 452, column: 12, scope: !6328)
!6332 = !DILocation(line: 452, column: 5, scope: !6328)
!6333 = !DILocation(line: 453, column: 3, scope: !6323)
!6334 = distinct !{!6334, !6260, !6335, !5861, !5862}
!6335 = !DILocation(line: 454, column: 2, scope: !6223)
!6336 = !DILocation(line: 455, column: 9, scope: !6223)
!6337 = !DILocation(line: 455, column: 2, scope: !6223)
!6338 = !DILocation(line: 456, column: 1, scope: !6223)
!6339 = distinct !DISubprogram(name: "sendbytes", scope: !3, file: !3, line: 344, type: !6084, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6340)
!6340 = !{!6341, !6342, !6343, !6344, !6345, !6346, !6347}
!6341 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6339, file: !3, line: 344, type: !5420)
!6342 = !DILocalVariable(name: "msg", arg: 2, scope: !6339, file: !3, line: 344, type: !5516)
!6343 = !DILocalVariable(name: "temp", scope: !6339, file: !3, line: 346, type: !484)
!6344 = !DILocalVariable(name: "count", scope: !6339, file: !3, line: 347, type: !42)
!6345 = !DILocalVariable(name: "nak_ok", scope: !6339, file: !3, line: 348, type: !46)
!6346 = !DILocalVariable(name: "retval", scope: !6339, file: !3, line: 349, type: !42)
!6347 = !DILocalVariable(name: "wrcount", scope: !6339, file: !3, line: 350, type: !42)
!6348 = !DILocation(line: 344, column: 42, scope: !6339)
!6349 = !DILocation(line: 344, column: 68, scope: !6339)
!6350 = !DILocation(line: 346, column: 2, scope: !6339)
!6351 = !DILocation(line: 346, column: 23, scope: !6339)
!6352 = !DILocation(line: 346, column: 30, scope: !6339)
!6353 = !DILocation(line: 346, column: 35, scope: !6339)
!6354 = !DILocation(line: 347, column: 2, scope: !6339)
!6355 = !DILocation(line: 347, column: 6, scope: !6339)
!6356 = !DILocation(line: 347, column: 14, scope: !6339)
!6357 = !DILocation(line: 347, column: 19, scope: !6339)
!6358 = !DILocation(line: 348, column: 2, scope: !6339)
!6359 = !DILocation(line: 348, column: 17, scope: !6339)
!6360 = !DILocation(line: 348, column: 26, scope: !6339)
!6361 = !DILocation(line: 348, column: 31, scope: !6339)
!6362 = !DILocation(line: 348, column: 37, scope: !6339)
!6363 = !DILocation(line: 349, column: 2, scope: !6339)
!6364 = !DILocation(line: 349, column: 6, scope: !6339)
!6365 = !DILocation(line: 350, column: 2, scope: !6339)
!6366 = !DILocation(line: 350, column: 6, scope: !6339)
!6367 = !DILocation(line: 352, column: 2, scope: !6339)
!6368 = !DILocation(line: 352, column: 9, scope: !6339)
!6369 = !DILocation(line: 352, column: 15, scope: !6339)
!6370 = !DILocation(line: 353, column: 21, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 352, column: 20)
!6372 = !DILocation(line: 353, column: 32, scope: !6371)
!6373 = !DILocation(line: 353, column: 31, scope: !6371)
!6374 = !DILocation(line: 353, column: 12, scope: !6371)
!6375 = !DILocation(line: 353, column: 10, scope: !6371)
!6376 = !DILocation(line: 356, column: 8, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 356, column: 7)
!6378 = !DILocation(line: 356, column: 15, scope: !6377)
!6379 = !DILocation(line: 356, column: 20, scope: !6377)
!6380 = !DILocation(line: 356, column: 24, scope: !6377)
!6381 = !DILocation(line: 356, column: 31, scope: !6377)
!6382 = !DILocation(line: 356, column: 35, scope: !6377)
!6383 = !DILocation(line: 356, column: 42, scope: !6377)
!6384 = !DILocation(line: 356, column: 7, scope: !6371)
!6385 = !DILocation(line: 357, column: 9, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 356, column: 50)
!6387 = !DILocation(line: 358, column: 8, scope: !6386)
!6388 = !DILocation(line: 359, column: 11, scope: !6386)
!6389 = !DILocation(line: 365, column: 3, scope: !6386)
!6390 = !DILocation(line: 365, column: 14, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 365, column: 14)
!6392 = !DILocation(line: 365, column: 21, scope: !6391)
!6393 = !DILocation(line: 365, column: 14, scope: !6377)
!6394 = !DILocation(line: 366, column: 4, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 366, column: 4)
!6396 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 365, column: 27)
!6397 = !DILocation(line: 366, column: 4, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 366, column: 4)
!6399 = !DILocation(line: 367, column: 4, scope: !6396)
!6400 = !DILocation(line: 377, column: 4, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 377, column: 4)
!6402 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 376, column: 10)
!6403 = !DILocation(line: 377, column: 4, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 377, column: 4)
!6405 = !DILocation(line: 379, column: 11, scope: !6402)
!6406 = !DILocation(line: 379, column: 4, scope: !6402)
!6407 = distinct !{!6407, !6367, !6408, !5861, !5862}
!6408 = !DILocation(line: 381, column: 2, scope: !6339)
!6409 = !DILocation(line: 382, column: 9, scope: !6339)
!6410 = !DILocation(line: 382, column: 2, scope: !6339)
!6411 = !DILocation(line: 383, column: 1, scope: !6339)
!6412 = !DISubprogram(name: "__bad_udelay", scope: !6413, file: !6413, line: 6, type: !3663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6413 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!6414 = !DISubprogram(name: "__const_udelay", scope: !6413, file: !6413, line: 11, type: !6415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6415 = !DISubroutineType(types: !6416)
!6416 = !{null, !59}
!6417 = !DISubprogram(name: "__udelay", scope: !6413, file: !6413, line: 9, type: !6415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6418 = distinct !DISubprogram(name: "scllo", scope: !3, file: !3, line: 65, type: !6022, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6419)
!6419 = !{!6420}
!6420 = !DILocalVariable(name: "adap", arg: 1, scope: !6418, file: !3, line: 65, type: !5674)
!6421 = !DILocation(line: 65, column: 52, scope: !6418)
!6422 = !DILocation(line: 67, column: 2, scope: !6418)
!6423 = !DILocation(line: 68, column: 2, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 68, column: 2)
!6425 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 68, column: 2)
!6426 = !DILocation(line: 68, column: 2, scope: !6425)
!6427 = !DILocation(line: 68, column: 2, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 68, column: 2)
!6429 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 68, column: 2)
!6430 = !DILocation(line: 68, column: 2, scope: !6429)
!6431 = !DILocation(line: 68, column: 2, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 68, column: 2)
!6433 = !DILocation(line: 69, column: 1, scope: !6418)
!6434 = distinct !DISubprogram(name: "sdalo", scope: !3, file: !3, line: 53, type: !6022, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6435)
!6435 = !{!6436}
!6436 = !DILocalVariable(name: "adap", arg: 1, scope: !6434, file: !3, line: 53, type: !5674)
!6437 = !DILocation(line: 53, column: 52, scope: !6434)
!6438 = !DILocation(line: 55, column: 2, scope: !6434)
!6439 = !DILocation(line: 56, column: 2, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 56, column: 2)
!6441 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 56, column: 2)
!6442 = !DILocation(line: 56, column: 2, scope: !6441)
!6443 = !DILocation(line: 56, column: 2, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 56, column: 2)
!6445 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 56, column: 2)
!6446 = !DILocation(line: 56, column: 2, scope: !6445)
!6447 = !DILocation(line: 56, column: 2, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 56, column: 2)
!6449 = !DILocation(line: 57, column: 1, scope: !6434)
!6450 = distinct !DISubprogram(name: "sclhi", scope: !3, file: !3, line: 75, type: !6451, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6453)
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!42, !5674}
!6453 = !{!6454, !6455, !6456}
!6454 = !DILocalVariable(name: "adap", arg: 1, scope: !6450, file: !3, line: 75, type: !5674)
!6455 = !DILocalVariable(name: "start", scope: !6450, file: !3, line: 77, type: !59)
!6456 = !DILabel(scope: !6450, name: "done", file: !3, line: 108)
!6457 = !DILocation(line: 75, column: 44, scope: !6450)
!6458 = !DILocation(line: 77, column: 2, scope: !6450)
!6459 = !DILocation(line: 77, column: 16, scope: !6450)
!6460 = !DILocation(line: 79, column: 2, scope: !6450)
!6461 = !DILocation(line: 82, column: 7, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 82, column: 6)
!6463 = !DILocation(line: 82, column: 13, scope: !6462)
!6464 = !DILocation(line: 82, column: 6, scope: !6450)
!6465 = !DILocation(line: 83, column: 3, scope: !6462)
!6466 = !DILocation(line: 85, column: 10, scope: !6450)
!6467 = !DILocation(line: 85, column: 8, scope: !6450)
!6468 = !DILocation(line: 86, column: 2, scope: !6450)
!6469 = !DILocation(line: 86, column: 10, scope: !6450)
!6470 = !DILocation(line: 86, column: 9, scope: !6450)
!6471 = !DILocation(line: 92, column: 7, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 92, column: 7)
!6473 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 86, column: 24)
!6474 = !DILocation(line: 92, column: 7, scope: !6473)
!6475 = !DILocation(line: 96, column: 8, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 96, column: 8)
!6477 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 92, column: 51)
!6478 = !DILocation(line: 96, column: 8, scope: !6477)
!6479 = !DILocation(line: 97, column: 5, scope: !6476)
!6480 = !DILocation(line: 98, column: 4, scope: !6477)
!6481 = !DILocation(line: 100, column: 3, scope: !6473)
!6482 = distinct !{!6482, !6468, !6483, !5861, !5862}
!6483 = !DILocation(line: 101, column: 2, scope: !6450)
!6484 = !DILocation(line: 108, column: 1, scope: !6450)
!6485 = !DILocation(line: 109, column: 2, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 109, column: 2)
!6487 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 109, column: 2)
!6488 = !DILocation(line: 109, column: 2, scope: !6487)
!6489 = !DILocation(line: 109, column: 2, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 109, column: 2)
!6491 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 109, column: 2)
!6492 = !DILocation(line: 109, column: 2, scope: !6491)
!6493 = !DILocation(line: 109, column: 2, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 109, column: 2)
!6495 = !DILocation(line: 110, column: 2, scope: !6450)
!6496 = !DILocation(line: 111, column: 1, scope: !6450)
!6497 = distinct !DISubprogram(name: "cpu_relax", scope: !6498, file: !6498, line: 16, type: !3663, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6498 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!6499 = !DILocation(line: 18, column: 2, scope: !6497)
!6500 = !DILocation(line: 19, column: 1, scope: !6497)
!6501 = distinct !DISubprogram(name: "rep_nop", scope: !6498, file: !6498, line: 11, type: !3663, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6502 = !DILocation(line: 13, column: 2, scope: !6501)
!6503 = !{i64 1936868}
!6504 = !DILocation(line: 14, column: 1, scope: !6501)
!6505 = distinct !DISubprogram(name: "sdahi", scope: !3, file: !3, line: 59, type: !6022, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6506)
!6506 = !{!6507}
!6507 = !DILocalVariable(name: "adap", arg: 1, scope: !6505, file: !3, line: 59, type: !5674)
!6508 = !DILocation(line: 59, column: 52, scope: !6505)
!6509 = !DILocation(line: 61, column: 2, scope: !6505)
!6510 = !DILocation(line: 62, column: 2, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 62, column: 2)
!6512 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 62, column: 2)
!6513 = !DILocation(line: 62, column: 2, scope: !6512)
!6514 = !DILocation(line: 62, column: 2, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 62, column: 2)
!6516 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 62, column: 2)
!6517 = !DILocation(line: 62, column: 2, scope: !6516)
!6518 = !DILocation(line: 62, column: 2, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 62, column: 2)
!6520 = !DILocation(line: 63, column: 1, scope: !6505)
!6521 = distinct !DISubprogram(name: "try_address", scope: !3, file: !3, line: 319, type: !6522, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6524)
!6522 = !DISubroutineType(types: !6523)
!6523 = !{!42, !5420, !107, !42}
!6524 = !{!6525, !6526, !6527, !6528, !6529, !6530}
!6525 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6521, file: !3, line: 319, type: !5420)
!6526 = !DILocalVariable(name: "addr", arg: 2, scope: !6521, file: !3, line: 320, type: !107)
!6527 = !DILocalVariable(name: "retries", arg: 3, scope: !6521, file: !3, line: 320, type: !42)
!6528 = !DILocalVariable(name: "adap", scope: !6521, file: !3, line: 322, type: !5674)
!6529 = !DILocalVariable(name: "i", scope: !6521, file: !3, line: 323, type: !42)
!6530 = !DILocalVariable(name: "ret", scope: !6521, file: !3, line: 323, type: !42)
!6531 = !DILocation(line: 319, column: 44, scope: !6521)
!6532 = !DILocation(line: 320, column: 24, scope: !6521)
!6533 = !DILocation(line: 320, column: 34, scope: !6521)
!6534 = !DILocation(line: 322, column: 2, scope: !6521)
!6535 = !DILocation(line: 322, column: 28, scope: !6521)
!6536 = !DILocation(line: 322, column: 35, scope: !6521)
!6537 = !DILocation(line: 322, column: 45, scope: !6521)
!6538 = !DILocation(line: 323, column: 2, scope: !6521)
!6539 = !DILocation(line: 323, column: 6, scope: !6521)
!6540 = !DILocation(line: 323, column: 9, scope: !6521)
!6541 = !DILocation(line: 325, column: 9, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 325, column: 2)
!6543 = !DILocation(line: 325, column: 7, scope: !6542)
!6544 = !DILocation(line: 325, column: 14, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 325, column: 2)
!6546 = !DILocation(line: 325, column: 19, scope: !6545)
!6547 = !DILocation(line: 325, column: 16, scope: !6545)
!6548 = !DILocation(line: 325, column: 2, scope: !6542)
!6549 = !DILocation(line: 326, column: 18, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 325, column: 33)
!6551 = !DILocation(line: 326, column: 28, scope: !6550)
!6552 = !DILocation(line: 326, column: 9, scope: !6550)
!6553 = !DILocation(line: 326, column: 7, scope: !6550)
!6554 = !DILocation(line: 327, column: 7, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 327, column: 7)
!6556 = !DILocation(line: 327, column: 11, scope: !6555)
!6557 = !DILocation(line: 327, column: 16, scope: !6555)
!6558 = !DILocation(line: 327, column: 19, scope: !6555)
!6559 = !DILocation(line: 327, column: 24, scope: !6555)
!6560 = !DILocation(line: 327, column: 21, scope: !6555)
!6561 = !DILocation(line: 327, column: 7, scope: !6550)
!6562 = !DILocation(line: 328, column: 4, scope: !6555)
!6563 = !DILocation(line: 329, column: 3, scope: !6550)
!6564 = !DILocation(line: 329, column: 3, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 329, column: 3)
!6566 = !DILocation(line: 330, column: 12, scope: !6550)
!6567 = !DILocation(line: 330, column: 3, scope: !6550)
!6568 = !DILocation(line: 331, column: 3, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 331, column: 3)
!6570 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 331, column: 3)
!6571 = !DILocation(line: 331, column: 3, scope: !6570)
!6572 = !DILocation(line: 331, column: 3, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 331, column: 3)
!6574 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 331, column: 3)
!6575 = !DILocation(line: 331, column: 3, scope: !6574)
!6576 = !DILocation(line: 331, column: 3, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 331, column: 3)
!6578 = !DILocation(line: 332, column: 3, scope: !6550)
!6579 = !DILocation(line: 333, column: 3, scope: !6550)
!6580 = !DILocation(line: 333, column: 3, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 333, column: 3)
!6582 = !DILocation(line: 334, column: 13, scope: !6550)
!6583 = !DILocation(line: 334, column: 3, scope: !6550)
!6584 = !DILocation(line: 335, column: 2, scope: !6550)
!6585 = !DILocation(line: 325, column: 29, scope: !6545)
!6586 = !DILocation(line: 325, column: 2, scope: !6545)
!6587 = distinct !{!6587, !6548, !6588, !5861, !5862}
!6588 = !DILocation(line: 335, column: 2, scope: !6542)
!6589 = !DILocation(line: 336, column: 6, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 336, column: 6)
!6591 = !DILocation(line: 336, column: 8, scope: !6590)
!6592 = !DILocation(line: 336, column: 11, scope: !6590)
!6593 = !DILocation(line: 336, column: 6, scope: !6521)
!6594 = !DILocation(line: 337, column: 3, scope: !6590)
!6595 = !DILocation(line: 337, column: 3, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6590, file: !3, line: 337, column: 3)
!6597 = !DILocation(line: 341, column: 9, scope: !6521)
!6598 = !DILocation(line: 342, column: 1, scope: !6521)
!6599 = !DILocation(line: 341, column: 2, scope: !6521)
!6600 = !DISubprogram(name: "_dev_err", scope: !6601, file: !6601, line: 50, type: !6602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6601 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6602 = !DISubroutineType(types: !6603)
!6603 = !{null, !2198, !36, null}
!6604 = distinct !DISubprogram(name: "i2c_outb", scope: !3, file: !3, line: 152, type: !6605, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6607)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!42, !5420, !107}
!6607 = !{!6608, !6609, !6610, !6611, !6612, !6613}
!6608 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6604, file: !3, line: 152, type: !5420)
!6609 = !DILocalVariable(name: "c", arg: 2, scope: !6604, file: !3, line: 152, type: !107)
!6610 = !DILocalVariable(name: "i", scope: !6604, file: !3, line: 154, type: !42)
!6611 = !DILocalVariable(name: "sb", scope: !6604, file: !3, line: 155, type: !42)
!6612 = !DILocalVariable(name: "ack", scope: !6604, file: !3, line: 156, type: !42)
!6613 = !DILocalVariable(name: "adap", scope: !6604, file: !3, line: 157, type: !5674)
!6614 = !DILocation(line: 152, column: 41, scope: !6604)
!6615 = !DILocation(line: 152, column: 65, scope: !6604)
!6616 = !DILocation(line: 154, column: 2, scope: !6604)
!6617 = !DILocation(line: 154, column: 6, scope: !6604)
!6618 = !DILocation(line: 155, column: 2, scope: !6604)
!6619 = !DILocation(line: 155, column: 6, scope: !6604)
!6620 = !DILocation(line: 156, column: 2, scope: !6604)
!6621 = !DILocation(line: 156, column: 6, scope: !6604)
!6622 = !DILocation(line: 157, column: 2, scope: !6604)
!6623 = !DILocation(line: 157, column: 28, scope: !6604)
!6624 = !DILocation(line: 157, column: 35, scope: !6604)
!6625 = !DILocation(line: 157, column: 45, scope: !6604)
!6626 = !DILocation(line: 160, column: 9, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 160, column: 2)
!6628 = !DILocation(line: 160, column: 7, scope: !6627)
!6629 = !DILocation(line: 160, column: 14, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 160, column: 2)
!6631 = !DILocation(line: 160, column: 16, scope: !6630)
!6632 = !DILocation(line: 160, column: 2, scope: !6627)
!6633 = !DILocation(line: 161, column: 9, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6630, file: !3, line: 160, column: 27)
!6635 = !DILocation(line: 161, column: 14, scope: !6634)
!6636 = !DILocation(line: 161, column: 11, scope: !6634)
!6637 = !DILocation(line: 161, column: 17, scope: !6634)
!6638 = !DILocation(line: 161, column: 6, scope: !6634)
!6639 = !DILocation(line: 162, column: 3, scope: !6634)
!6640 = !DILocation(line: 163, column: 3, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6642, file: !3, line: 163, column: 3)
!6642 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 163, column: 3)
!6643 = !DILocation(line: 163, column: 3, scope: !6642)
!6644 = !DILocation(line: 163, column: 3, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 163, column: 3)
!6646 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 163, column: 3)
!6647 = !DILocation(line: 163, column: 3, scope: !6646)
!6648 = !DILocation(line: 163, column: 3, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 163, column: 3)
!6650 = !DILocation(line: 164, column: 13, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 164, column: 7)
!6652 = !DILocation(line: 164, column: 7, scope: !6651)
!6653 = !DILocation(line: 164, column: 19, scope: !6651)
!6654 = !DILocation(line: 164, column: 7, scope: !6634)
!6655 = !DILocation(line: 165, column: 4, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6651, file: !3, line: 164, column: 24)
!6657 = !DILocation(line: 165, column: 4, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 165, column: 4)
!6659 = !DILocation(line: 168, column: 4, scope: !6656)
!6660 = !DILocation(line: 176, column: 9, scope: !6634)
!6661 = !DILocation(line: 176, column: 3, scope: !6634)
!6662 = !DILocation(line: 177, column: 2, scope: !6634)
!6663 = !DILocation(line: 160, column: 23, scope: !6630)
!6664 = !DILocation(line: 160, column: 2, scope: !6630)
!6665 = distinct !{!6665, !6632, !6666, !5861, !5862}
!6666 = !DILocation(line: 177, column: 2, scope: !6627)
!6667 = !DILocation(line: 178, column: 8, scope: !6604)
!6668 = !DILocation(line: 178, column: 2, scope: !6604)
!6669 = !DILocation(line: 179, column: 12, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 179, column: 6)
!6671 = !DILocation(line: 179, column: 6, scope: !6670)
!6672 = !DILocation(line: 179, column: 18, scope: !6670)
!6673 = !DILocation(line: 179, column: 6, scope: !6604)
!6674 = !DILocation(line: 180, column: 3, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6670, file: !3, line: 179, column: 23)
!6676 = !DILocation(line: 180, column: 3, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 180, column: 3)
!6678 = !DILocation(line: 182, column: 3, scope: !6675)
!6679 = !DILocation(line: 189, column: 9, scope: !6604)
!6680 = !DILocation(line: 189, column: 15, scope: !6604)
!6681 = !DILocation(line: 189, column: 22, scope: !6604)
!6682 = !DILocation(line: 189, column: 26, scope: !6604)
!6683 = !DILocation(line: 189, column: 25, scope: !6604)
!6684 = !DILocation(line: 189, column: 6, scope: !6604)
!6685 = !DILocation(line: 190, column: 2, scope: !6604)
!6686 = !DILocation(line: 190, column: 2, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 190, column: 2)
!6688 = !DILocation(line: 193, column: 8, scope: !6604)
!6689 = !DILocation(line: 193, column: 2, scope: !6604)
!6690 = !DILocation(line: 194, column: 9, scope: !6604)
!6691 = !DILocation(line: 194, column: 2, scope: !6604)
!6692 = !DILocation(line: 196, column: 1, scope: !6604)
!6693 = distinct !DISubprogram(name: "i2c_8bit_addr_from_msg", scope: !5414, file: !5414, line: 936, type: !6694, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6698)
!6694 = !DISubroutineType(types: !6695)
!6695 = !{!103, !6696}
!6696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6697, size: 64)
!6697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5517)
!6698 = !{!6699}
!6699 = !DILocalVariable(name: "msg", arg: 1, scope: !6693, file: !5414, line: 936, type: !6696)
!6700 = !DILocation(line: 936, column: 63, scope: !6693)
!6701 = !DILocation(line: 938, column: 10, scope: !6693)
!6702 = !DILocation(line: 938, column: 15, scope: !6693)
!6703 = !DILocation(line: 938, column: 20, scope: !6693)
!6704 = !DILocation(line: 938, column: 29, scope: !6693)
!6705 = !DILocation(line: 938, column: 34, scope: !6693)
!6706 = !DILocation(line: 938, column: 40, scope: !6693)
!6707 = !DILocation(line: 938, column: 26, scope: !6693)
!6708 = !DILocation(line: 938, column: 9, scope: !6693)
!6709 = !DILocation(line: 938, column: 2, scope: !6693)
!6710 = !DISubprogram(name: "yield", scope: !1859, file: !1859, line: 1954, type: !3663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6711 = distinct !DISubprogram(name: "i2c_inb", scope: !3, file: !3, line: 199, type: !5471, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6712)
!6712 = !{!6713, !6714, !6715, !6716}
!6713 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6711, file: !3, line: 199, type: !5420)
!6714 = !DILocalVariable(name: "i", scope: !6711, file: !3, line: 203, type: !42)
!6715 = !DILocalVariable(name: "indata", scope: !6711, file: !3, line: 204, type: !107)
!6716 = !DILocalVariable(name: "adap", scope: !6711, file: !3, line: 205, type: !5674)
!6717 = !DILocation(line: 199, column: 40, scope: !6711)
!6718 = !DILocation(line: 203, column: 2, scope: !6711)
!6719 = !DILocation(line: 203, column: 6, scope: !6711)
!6720 = !DILocation(line: 204, column: 2, scope: !6711)
!6721 = !DILocation(line: 204, column: 16, scope: !6711)
!6722 = !DILocation(line: 205, column: 2, scope: !6711)
!6723 = !DILocation(line: 205, column: 28, scope: !6711)
!6724 = !DILocation(line: 205, column: 35, scope: !6711)
!6725 = !DILocation(line: 205, column: 45, scope: !6711)
!6726 = !DILocation(line: 208, column: 8, scope: !6711)
!6727 = !DILocation(line: 208, column: 2, scope: !6711)
!6728 = !DILocation(line: 209, column: 9, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6711, file: !3, line: 209, column: 2)
!6730 = !DILocation(line: 209, column: 7, scope: !6729)
!6731 = !DILocation(line: 209, column: 14, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 209, column: 2)
!6733 = !DILocation(line: 209, column: 16, scope: !6732)
!6734 = !DILocation(line: 209, column: 2, scope: !6729)
!6735 = !DILocation(line: 210, column: 13, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6737, file: !3, line: 210, column: 7)
!6737 = distinct !DILexicalBlock(scope: !6732, file: !3, line: 209, column: 26)
!6738 = !DILocation(line: 210, column: 7, scope: !6736)
!6739 = !DILocation(line: 210, column: 19, scope: !6736)
!6740 = !DILocation(line: 210, column: 7, scope: !6737)
!6741 = !DILocation(line: 211, column: 4, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 210, column: 24)
!6743 = !DILocation(line: 211, column: 4, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6742, file: !3, line: 211, column: 4)
!6745 = !DILocation(line: 214, column: 4, scope: !6742)
!6746 = !DILocation(line: 216, column: 10, scope: !6737)
!6747 = !DILocation(line: 217, column: 7, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6737, file: !3, line: 217, column: 7)
!6749 = !DILocation(line: 217, column: 7, scope: !6737)
!6750 = !DILocation(line: 218, column: 11, scope: !6748)
!6751 = !DILocation(line: 218, column: 4, scope: !6748)
!6752 = !DILocation(line: 219, column: 3, scope: !6737)
!6753 = !DILocation(line: 220, column: 3, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 220, column: 3)
!6755 = distinct !DILexicalBlock(scope: !6737, file: !3, line: 220, column: 3)
!6756 = !DILocation(line: 220, column: 3, scope: !6755)
!6757 = !DILocation(line: 220, column: 3, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 220, column: 3)
!6759 = distinct !DILexicalBlock(scope: !6754, file: !3, line: 220, column: 3)
!6760 = !DILocation(line: 220, column: 3, scope: !6759)
!6761 = !DILocation(line: 220, column: 3, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6754, file: !3, line: 220, column: 3)
!6763 = !DILocation(line: 221, column: 2, scope: !6737)
!6764 = !DILocation(line: 209, column: 22, scope: !6732)
!6765 = !DILocation(line: 209, column: 2, scope: !6732)
!6766 = distinct !{!6766, !6734, !6767, !5861, !5862}
!6767 = !DILocation(line: 221, column: 2, scope: !6729)
!6768 = !DILocation(line: 223, column: 9, scope: !6711)
!6769 = !DILocation(line: 223, column: 2, scope: !6711)
!6770 = !DILocation(line: 224, column: 1, scope: !6711)
!6771 = distinct !DISubprogram(name: "acknak", scope: !3, file: !3, line: 385, type: !6772, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6772 = !DISubroutineType(types: !6773)
!6773 = !{!42, !5420, !42}
!6774 = !{!6775, !6776, !6777}
!6775 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6771, file: !3, line: 385, type: !5420)
!6776 = !DILocalVariable(name: "is_ack", arg: 2, scope: !6771, file: !3, line: 385, type: !42)
!6777 = !DILocalVariable(name: "adap", scope: !6771, file: !3, line: 387, type: !5674)
!6778 = !DILocation(line: 385, column: 39, scope: !6771)
!6779 = !DILocation(line: 385, column: 53, scope: !6771)
!6780 = !DILocation(line: 387, column: 2, scope: !6771)
!6781 = !DILocation(line: 387, column: 28, scope: !6771)
!6782 = !DILocation(line: 387, column: 35, scope: !6771)
!6783 = !DILocation(line: 387, column: 45, scope: !6771)
!6784 = !DILocation(line: 390, column: 6, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 390, column: 6)
!6786 = !DILocation(line: 390, column: 6, scope: !6771)
!6787 = !DILocation(line: 391, column: 3, scope: !6785)
!6788 = !DILocation(line: 392, column: 2, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6790, file: !3, line: 392, column: 2)
!6790 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 392, column: 2)
!6791 = !DILocation(line: 392, column: 2, scope: !6790)
!6792 = !DILocation(line: 392, column: 2, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 392, column: 2)
!6794 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 392, column: 2)
!6795 = !DILocation(line: 392, column: 2, scope: !6794)
!6796 = !DILocation(line: 392, column: 2, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 392, column: 2)
!6798 = !DILocation(line: 393, column: 12, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 393, column: 6)
!6800 = !DILocation(line: 393, column: 6, scope: !6799)
!6801 = !DILocation(line: 393, column: 18, scope: !6799)
!6802 = !DILocation(line: 393, column: 6, scope: !6771)
!6803 = !DILocation(line: 394, column: 3, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6805, file: !3, line: 394, column: 3)
!6805 = distinct !DILexicalBlock(scope: !6799, file: !3, line: 393, column: 23)
!6806 = !DILocation(line: 394, column: 3, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 394, column: 3)
!6808 = !DILocation(line: 395, column: 3, scope: !6805)
!6809 = !DILocation(line: 397, column: 8, scope: !6771)
!6810 = !DILocation(line: 397, column: 2, scope: !6771)
!6811 = !DILocation(line: 398, column: 2, scope: !6771)
!6812 = !DILocation(line: 399, column: 1, scope: !6771)
!6813 = !DISubprogram(name: "_dev_warn", scope: !6601, file: !6601, line: 52, type: !6602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6814 = distinct !DISubprogram(name: "test_bus", scope: !3, file: !3, line: 230, type: !5471, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6815)
!6815 = !{!6816, !6817, !6818, !6819, !6820, !6821, !6822}
!6816 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !6814, file: !3, line: 230, type: !5420)
!6817 = !DILocalVariable(name: "adap", scope: !6814, file: !3, line: 232, type: !5674)
!6818 = !DILocalVariable(name: "name", scope: !6814, file: !3, line: 233, type: !36)
!6819 = !DILocalVariable(name: "scl", scope: !6814, file: !3, line: 234, type: !42)
!6820 = !DILocalVariable(name: "sda", scope: !6814, file: !3, line: 234, type: !42)
!6821 = !DILocalVariable(name: "ret", scope: !6814, file: !3, line: 234, type: !42)
!6822 = !DILabel(scope: !6814, name: "bailout", file: !3, line: 299)
!6823 = !DILocation(line: 230, column: 41, scope: !6814)
!6824 = !DILocation(line: 232, column: 2, scope: !6814)
!6825 = !DILocation(line: 232, column: 28, scope: !6814)
!6826 = !DILocation(line: 232, column: 35, scope: !6814)
!6827 = !DILocation(line: 232, column: 45, scope: !6814)
!6828 = !DILocation(line: 233, column: 2, scope: !6814)
!6829 = !DILocation(line: 233, column: 14, scope: !6814)
!6830 = !DILocation(line: 233, column: 21, scope: !6814)
!6831 = !DILocation(line: 233, column: 31, scope: !6814)
!6832 = !DILocation(line: 234, column: 2, scope: !6814)
!6833 = !DILocation(line: 234, column: 6, scope: !6814)
!6834 = !DILocation(line: 234, column: 11, scope: !6814)
!6835 = !DILocation(line: 234, column: 16, scope: !6814)
!6836 = !DILocation(line: 236, column: 6, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 236, column: 6)
!6838 = !DILocation(line: 236, column: 12, scope: !6837)
!6839 = !DILocation(line: 236, column: 6, scope: !6814)
!6840 = !DILocation(line: 237, column: 9, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 236, column: 22)
!6842 = !DILocation(line: 237, column: 15, scope: !6841)
!6843 = !DILocation(line: 237, column: 24, scope: !6841)
!6844 = !DILocation(line: 237, column: 7, scope: !6841)
!6845 = !DILocation(line: 238, column: 7, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 238, column: 7)
!6847 = !DILocation(line: 238, column: 11, scope: !6846)
!6848 = !DILocation(line: 238, column: 7, scope: !6841)
!6849 = !DILocation(line: 239, column: 4, scope: !6846)
!6850 = !DILocation(line: 240, column: 2, scope: !6841)
!6851 = !DILocation(line: 242, column: 6, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 242, column: 6)
!6853 = !DILocation(line: 242, column: 12, scope: !6852)
!6854 = !DILocation(line: 242, column: 19, scope: !6852)
!6855 = !DILocation(line: 242, column: 6, scope: !6814)
!6856 = !DILocation(line: 243, column: 3, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 243, column: 3)
!6858 = !DILocation(line: 243, column: 3, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6857, file: !3, line: 243, column: 3)
!6860 = !DILocation(line: 243, column: 3, scope: !6852)
!6861 = !DILocation(line: 244, column: 6, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 244, column: 6)
!6863 = !DILocation(line: 244, column: 12, scope: !6862)
!6864 = !DILocation(line: 244, column: 19, scope: !6862)
!6865 = !DILocation(line: 244, column: 6, scope: !6814)
!6866 = !DILocation(line: 245, column: 3, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 245, column: 3)
!6868 = !DILocation(line: 245, column: 3, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6867, file: !3, line: 245, column: 3)
!6870 = !DILocation(line: 245, column: 3, scope: !6862)
!6871 = !DILocation(line: 247, column: 8, scope: !6814)
!6872 = !DILocation(line: 247, column: 14, scope: !6814)
!6873 = !DILocation(line: 247, column: 23, scope: !6814)
!6874 = !DILocation(line: 247, column: 6, scope: !6814)
!6875 = !DILocation(line: 248, column: 8, scope: !6814)
!6876 = !DILocation(line: 248, column: 14, scope: !6814)
!6877 = !DILocation(line: 248, column: 23, scope: !6814)
!6878 = !DILocation(line: 248, column: 6, scope: !6814)
!6879 = !DILocation(line: 249, column: 7, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 249, column: 6)
!6881 = !DILocation(line: 249, column: 11, scope: !6880)
!6882 = !DILocation(line: 249, column: 15, scope: !6880)
!6883 = !DILocation(line: 249, column: 6, scope: !6814)
!6884 = !DILocation(line: 250, column: 3, scope: !6885)
!6885 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 250, column: 3)
!6886 = distinct !DILexicalBlock(scope: !6880, file: !3, line: 249, column: 20)
!6887 = !DILocation(line: 250, column: 3, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6885, file: !3, line: 250, column: 3)
!6889 = !DILocation(line: 251, column: 3, scope: !6886)
!6890 = !DILocation(line: 254, column: 8, scope: !6814)
!6891 = !DILocation(line: 254, column: 2, scope: !6814)
!6892 = !DILocation(line: 255, column: 6, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 255, column: 6)
!6894 = !DILocation(line: 255, column: 12, scope: !6893)
!6895 = !DILocation(line: 255, column: 19, scope: !6893)
!6896 = !DILocation(line: 255, column: 22, scope: !6893)
!6897 = !DILocation(line: 255, column: 6, scope: !6814)
!6898 = !DILocation(line: 256, column: 3, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6900, file: !3, line: 256, column: 3)
!6900 = distinct !DILexicalBlock(scope: !6893, file: !3, line: 255, column: 36)
!6901 = !DILocation(line: 256, column: 3, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6899, file: !3, line: 256, column: 3)
!6903 = !DILocation(line: 257, column: 3, scope: !6900)
!6904 = !DILocation(line: 259, column: 6, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 259, column: 6)
!6906 = !DILocation(line: 259, column: 12, scope: !6905)
!6907 = !DILocation(line: 259, column: 19, scope: !6905)
!6908 = !DILocation(line: 259, column: 23, scope: !6905)
!6909 = !DILocation(line: 259, column: 6, scope: !6814)
!6910 = !DILocation(line: 260, column: 3, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 260, column: 3)
!6912 = distinct !DILexicalBlock(scope: !6905, file: !3, line: 259, column: 37)
!6913 = !DILocation(line: 260, column: 3, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 260, column: 3)
!6915 = !DILocation(line: 261, column: 3, scope: !6912)
!6916 = !DILocation(line: 264, column: 8, scope: !6814)
!6917 = !DILocation(line: 264, column: 2, scope: !6814)
!6918 = !DILocation(line: 265, column: 6, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 265, column: 6)
!6920 = !DILocation(line: 265, column: 12, scope: !6919)
!6921 = !DILocation(line: 265, column: 19, scope: !6919)
!6922 = !DILocation(line: 265, column: 23, scope: !6919)
!6923 = !DILocation(line: 265, column: 6, scope: !6814)
!6924 = !DILocation(line: 266, column: 3, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6926, file: !3, line: 266, column: 3)
!6926 = distinct !DILexicalBlock(scope: !6919, file: !3, line: 265, column: 37)
!6927 = !DILocation(line: 266, column: 3, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 266, column: 3)
!6929 = !DILocation(line: 267, column: 3, scope: !6926)
!6930 = !DILocation(line: 269, column: 6, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 269, column: 6)
!6932 = !DILocation(line: 269, column: 12, scope: !6931)
!6933 = !DILocation(line: 269, column: 19, scope: !6931)
!6934 = !DILocation(line: 269, column: 23, scope: !6931)
!6935 = !DILocation(line: 269, column: 6, scope: !6814)
!6936 = !DILocation(line: 270, column: 3, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6938, file: !3, line: 270, column: 3)
!6938 = distinct !DILexicalBlock(scope: !6931, file: !3, line: 269, column: 37)
!6939 = !DILocation(line: 270, column: 3, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6937, file: !3, line: 270, column: 3)
!6941 = !DILocation(line: 271, column: 3, scope: !6938)
!6942 = !DILocation(line: 274, column: 8, scope: !6814)
!6943 = !DILocation(line: 274, column: 2, scope: !6814)
!6944 = !DILocation(line: 275, column: 6, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 275, column: 6)
!6946 = !DILocation(line: 275, column: 12, scope: !6945)
!6947 = !DILocation(line: 275, column: 19, scope: !6945)
!6948 = !DILocation(line: 275, column: 22, scope: !6945)
!6949 = !DILocation(line: 275, column: 6, scope: !6814)
!6950 = !DILocation(line: 276, column: 3, scope: !6951)
!6951 = distinct !DILexicalBlock(scope: !6952, file: !3, line: 276, column: 3)
!6952 = distinct !DILexicalBlock(scope: !6945, file: !3, line: 275, column: 36)
!6953 = !DILocation(line: 276, column: 3, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6951, file: !3, line: 276, column: 3)
!6955 = !DILocation(line: 277, column: 3, scope: !6952)
!6956 = !DILocation(line: 279, column: 6, scope: !6957)
!6957 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 279, column: 6)
!6958 = !DILocation(line: 279, column: 12, scope: !6957)
!6959 = !DILocation(line: 279, column: 19, scope: !6957)
!6960 = !DILocation(line: 279, column: 23, scope: !6957)
!6961 = !DILocation(line: 279, column: 6, scope: !6814)
!6962 = !DILocation(line: 280, column: 3, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 280, column: 3)
!6964 = distinct !DILexicalBlock(scope: !6957, file: !3, line: 279, column: 37)
!6965 = !DILocation(line: 280, column: 3, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 280, column: 3)
!6967 = !DILocation(line: 281, column: 3, scope: !6964)
!6968 = !DILocation(line: 284, column: 8, scope: !6814)
!6969 = !DILocation(line: 284, column: 2, scope: !6814)
!6970 = !DILocation(line: 285, column: 6, scope: !6971)
!6971 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 285, column: 6)
!6972 = !DILocation(line: 285, column: 12, scope: !6971)
!6973 = !DILocation(line: 285, column: 19, scope: !6971)
!6974 = !DILocation(line: 285, column: 23, scope: !6971)
!6975 = !DILocation(line: 285, column: 6, scope: !6814)
!6976 = !DILocation(line: 286, column: 3, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6978, file: !3, line: 286, column: 3)
!6978 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 285, column: 37)
!6979 = !DILocation(line: 286, column: 3, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 286, column: 3)
!6981 = !DILocation(line: 287, column: 3, scope: !6978)
!6982 = !DILocation(line: 289, column: 6, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 289, column: 6)
!6984 = !DILocation(line: 289, column: 12, scope: !6983)
!6985 = !DILocation(line: 289, column: 19, scope: !6983)
!6986 = !DILocation(line: 289, column: 23, scope: !6983)
!6987 = !DILocation(line: 289, column: 6, scope: !6814)
!6988 = !DILocation(line: 290, column: 3, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6990, file: !3, line: 290, column: 3)
!6990 = distinct !DILexicalBlock(scope: !6983, file: !3, line: 289, column: 37)
!6991 = !DILocation(line: 290, column: 3, scope: !6992)
!6992 = distinct !DILexicalBlock(scope: !6989, file: !3, line: 290, column: 3)
!6993 = !DILocation(line: 291, column: 3, scope: !6990)
!6994 = !DILocation(line: 294, column: 6, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 294, column: 6)
!6996 = !DILocation(line: 294, column: 12, scope: !6995)
!6997 = !DILocation(line: 294, column: 6, scope: !6814)
!6998 = !DILocation(line: 295, column: 3, scope: !6995)
!6999 = !DILocation(line: 295, column: 9, scope: !6995)
!7000 = !DILocation(line: 295, column: 19, scope: !6995)
!7001 = !DILocation(line: 297, column: 2, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 297, column: 2)
!7003 = !DILocation(line: 297, column: 2, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !7002, file: !3, line: 297, column: 2)
!7005 = !DILocation(line: 298, column: 2, scope: !6814)
!7006 = !DILocation(line: 299, column: 1, scope: !6814)
!7007 = !DILocation(line: 300, column: 8, scope: !6814)
!7008 = !DILocation(line: 300, column: 2, scope: !6814)
!7009 = !DILocation(line: 301, column: 8, scope: !6814)
!7010 = !DILocation(line: 301, column: 2, scope: !6814)
!7011 = !DILocation(line: 303, column: 6, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 303, column: 6)
!7013 = !DILocation(line: 303, column: 12, scope: !7012)
!7014 = !DILocation(line: 303, column: 6, scope: !6814)
!7015 = !DILocation(line: 304, column: 3, scope: !7012)
!7016 = !DILocation(line: 304, column: 9, scope: !7012)
!7017 = !DILocation(line: 304, column: 19, scope: !7012)
!7018 = !DILocation(line: 306, column: 2, scope: !6814)
!7019 = !DILocation(line: 307, column: 1, scope: !6814)
!7020 = !DISubprogram(name: "_printk", scope: !7021, file: !7021, line: 153, type: !7022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7021 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7022 = !DISubroutineType(types: !7023)
!7023 = !{!42, !36, null}
