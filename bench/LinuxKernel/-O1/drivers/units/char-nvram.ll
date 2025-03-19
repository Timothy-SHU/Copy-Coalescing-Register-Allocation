; ModuleID = 'drivers/char/nvram.c'
source_filename = "drivers/char/nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_nvram_ops: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_nvram_ops ; .previous"
module asm ".section\09\22.initcall6.init..kmod_nvram__327_540_nvram_module_init\22, \22a\22\09\09"
module asm "__initcall__kmod_nvram__327_540_nvram_module_init6:\09\09\09"
module asm ".long\09__initstub__kmod_nvram__327_540_nvram_module_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.nvram_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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

@arch_nvram_ops = hidden constant %struct.nvram_ops { ptr @pc_nvram_get_size, ptr @pc_nvram_read_byte, ptr @pc_nvram_write_byte, ptr @pc_nvram_read, ptr @pc_nvram_write, ptr @pc_nvram_initialize, ptr @pc_nvram_set_checksum }, align 8, !dbg !0
@__UNIQUE_ID___addressable_arch_nvram_ops318 = internal global ptr @arch_nvram_ops, section ".discard.addressable", align 8, !dbg !4177
@.str = private unnamed_addr constant [13 x i8] c"driver/nvram\00", align 1, !dbg !4179
@nvram_misc = internal global %struct.miscdevice { i32 144, ptr @.str.1, ptr @nvram_misc_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 8, !dbg !4209
@__UNIQUE_ID___addressable___initstub__kmod_nvram__327_540_nvram_module_init6328 = internal global ptr @__initstub__kmod_nvram__327_540_nvram_module_init6, section ".discard.addressable", align 8, !dbg !4184
@__exitcall_nvram_module_exit = internal global ptr @nvram_module_exit, section ".exitcall.exit", align 8, !dbg !4186
@__UNIQUE_ID_file329 = internal constant [30 x i8] c"nvram.file=drivers/char/nvram\00", section ".modinfo", align 1, !dbg !4190
@__UNIQUE_ID_license330 = internal constant [18 x i8] c"nvram.license=GPL\00", section ".modinfo", align 1, !dbg !4195
@__UNIQUE_ID_alias331 = internal constant [30 x i8] c"nvram.alias=char-major-10-144\00", section ".modinfo", align 1, !dbg !4200
@__UNIQUE_ID_alias332 = internal constant [26 x i8] c"nvram.alias=devname:nvram\00", section ".modinfo", align 1, !dbg !4202
@rtc_lock = external dso_local global %struct.spinlock, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1, !dbg !4207
@nvram_misc_fops = internal constant %struct.file_operations { ptr null, ptr @nvram_misc_llseek, ptr @nvram_misc_read, ptr @nvram_misc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvram_misc_ioctl, ptr null, ptr null, i64 0, ptr @nvram_misc_open, ptr null, ptr @nvram_misc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4673
@nvram_size = internal global i64 0, align 8, !dbg !4675
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4677
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4682
@nvram_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvram_mutex, i64 16), ptr getelementptr (i8, ptr @nvram_mutex, i64 16) } }, align 8, !dbg !4688
@nvram_state_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4690
@nvram_open_cnt = internal global i32 0, align 4, !dbg !4692
@nvram_open_mode = internal global i32 0, align 4, !dbg !4694
@.str.4 = private unnamed_addr constant [42 x i8] c"\013nvram: can't misc_register on minor=%d\0A\00", align 1, !dbg !4696
@.str.5 = private unnamed_addr constant [42 x i8] c"\013nvram: can't create /proc/driver/nvram\0A\00", align 1, !dbg !4701
@.str.6 = private unnamed_addr constant [35 x i8] c"\016Non-volatile memory driver v1.3\0A\00", align 1, !dbg !4703
@.str.7 = private unnamed_addr constant [26 x i8] c"Checksum status: %svalid\0A\00", align 1, !dbg !4708
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4711
@.str.9 = private unnamed_addr constant [5 x i8] c"not \00", align 1, !dbg !4714
@.str.10 = private unnamed_addr constant [21 x i8] c"# floppies     : %d\0A\00", align 1, !dbg !4719
@.str.11 = private unnamed_addr constant [18 x i8] c"Floppy 0 type  : \00", align 1, !dbg !4721
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4724
@floppy_types = internal constant [7 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.30], align 16, !dbg !4778
@.str.13 = private unnamed_addr constant [14 x i8] c"%d (unknown)\0A\00", align 1, !dbg !4727
@.str.14 = private unnamed_addr constant [18 x i8] c"Floppy 1 type  : \00", align 1, !dbg !4732
@.str.15 = private unnamed_addr constant [18 x i8] c"HD 0 type      : \00", align 1, !dbg !4734
@.str.16 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1, !dbg !4736
@.str.17 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1, !dbg !4738
@.str.18 = private unnamed_addr constant [18 x i8] c"HD 1 type      : \00", align 1, !dbg !4740
@.str.19 = private unnamed_addr constant [52 x i8] c"HD type 48 data: %d/%d/%d C/H/S, precomp %d, lz %d\0A\00", align 1, !dbg !4742
@.str.20 = private unnamed_addr constant [52 x i8] c"HD type 49 data: %d/%d/%d C/H/S, precomp %d, lz %d\0A\00", align 1, !dbg !4745
@.str.21 = private unnamed_addr constant [24 x i8] c"DOS base memory: %d kB\0A\00", align 1, !dbg !4747
@.str.22 = private unnamed_addr constant [53 x i8] c"Extended memory: %d kB (configured), %d kB (tested)\0A\00", align 1, !dbg !4752
@.str.23 = private unnamed_addr constant [21 x i8] c"Gfx adapter    : %s\0A\00", align 1, !dbg !4757
@gfx_types = internal constant [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 16, !dbg !4790
@.str.24 = private unnamed_addr constant [30 x i8] c"FPU            : %sinstalled\0A\00", align 1, !dbg !4759
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !4762
@.str.26 = private unnamed_addr constant [12 x i8] c"5.25'' 360k\00", align 1, !dbg !4764
@.str.27 = private unnamed_addr constant [12 x i8] c"5.25'' 1.2M\00", align 1, !dbg !4767
@.str.28 = private unnamed_addr constant [11 x i8] c"3.5'' 720k\00", align 1, !dbg !4769
@.str.29 = private unnamed_addr constant [12 x i8] c"3.5'' 1.44M\00", align 1, !dbg !4774
@.str.30 = private unnamed_addr constant [12 x i8] c"3.5'' 2.88M\00", align 1, !dbg !4776
@.str.31 = private unnamed_addr constant [26 x i8] c"EGA, VGA, ... (with BIOS)\00", align 1, !dbg !4782
@.str.32 = private unnamed_addr constant [14 x i8] c"CGA (40 cols)\00", align 1, !dbg !4784
@.str.33 = private unnamed_addr constant [14 x i8] c"CGA (80 cols)\00", align 1, !dbg !4786
@.str.34 = private unnamed_addr constant [11 x i8] c"monochrome\00", align 1, !dbg !4788
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_arch_nvram_ops318, ptr @nvram_module_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_nvram__327_540_nvram_module_init6328, ptr @__exitcall_nvram_module_exit, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__UNIQUE_ID_alias331, ptr @__UNIQUE_ID_alias332], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pc_nvram_get_size() #0 align 16 !dbg !4828 {
entry:
  ret i64 114, !dbg !4829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @pc_nvram_read_byte(i32 noundef %i) #0 align 16 !dbg !4830 {
entry:
  %i.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %c = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4832, metadata !DIExpression()), !dbg !4840
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4841
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4833, metadata !DIExpression()), !dbg !4842
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4834, metadata !DIExpression()), !dbg !4844
  br label %do.body, !dbg !4845

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4846

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4847
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4835, metadata !DIExpression()), !dbg !4847
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4847
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4839, metadata !DIExpression()), !dbg !4847
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4847
  %conv = zext i1 %cmp to i32, !dbg !4847
  store i32 1, ptr %tmp, align 4, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4848
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4848
  %0 = load i32, ptr %tmp, align 4, !dbg !4847
  %call = call ptr @spinlock_check(ptr noundef @rtc_lock) #17, !dbg !4848
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4848
  store i64 %call2, ptr %flags, align 8, !dbg !4848
  br label %do.cond, !dbg !4848

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4848

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4846

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4846

do.end4:                                          ; preds = %do.cond3
  %1 = load i32, ptr %i.addr, align 4, !dbg !4849
  %call5 = call zeroext i8 @__nvram_read_byte(i32 noundef %1) #17, !dbg !4850
  store i8 %call5, ptr %c, align 1, !dbg !4851
  %2 = load i64, ptr %flags, align 8, !dbg !4852
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %2) #17, !dbg !4853
  %3 = load i8, ptr %c, align 1, !dbg !4854
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !4855
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4855
  ret i8 %3, !dbg !4856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pc_nvram_write_byte(i8 noundef zeroext %c, i32 noundef %i) #0 align 16 !dbg !4857 {
entry:
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4859, metadata !DIExpression()), !dbg !4867
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4860, metadata !DIExpression()), !dbg !4868
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4861, metadata !DIExpression()), !dbg !4870
  br label %do.body, !dbg !4871

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4872

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4862, metadata !DIExpression()), !dbg !4873
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4866, metadata !DIExpression()), !dbg !4873
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4873
  %conv = zext i1 %cmp to i32, !dbg !4873
  store i32 1, ptr %tmp, align 4, !dbg !4873
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4874
  %0 = load i32, ptr %tmp, align 4, !dbg !4873
  %call = call ptr @spinlock_check(ptr noundef @rtc_lock) #17, !dbg !4874
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4874
  store i64 %call2, ptr %flags, align 8, !dbg !4874
  br label %do.cond, !dbg !4874

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4874

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4872

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4872

do.end4:                                          ; preds = %do.cond3
  %1 = load i8, ptr %c.addr, align 1, !dbg !4875
  %2 = load i32, ptr %i.addr, align 4, !dbg !4876
  call void @__nvram_write_byte(i8 noundef zeroext %1, i32 noundef %2) #17, !dbg !4877
  %3 = load i64, ptr %flags, align 8, !dbg !4878
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %3) #17, !dbg !4879
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4880
  ret void, !dbg !4880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pc_nvram_read(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !4881 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4883, metadata !DIExpression()), !dbg !4888
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4884, metadata !DIExpression()), !dbg !4889
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4885, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4891
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4886, metadata !DIExpression()), !dbg !4892
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4893
  store ptr %0, ptr %p, align 8, !dbg !4892
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4887, metadata !DIExpression()), !dbg !4895
  call void @spin_lock_irq(ptr noundef @rtc_lock) #17, !dbg !4896
  %call = call i32 @__nvram_check_checksum() #17, !dbg !4897
  %tobool = icmp ne i32 %call, 0, !dbg !4897
  br i1 %tobool, label %if.end, label %if.then, !dbg !4899

if.then:                                          ; preds = %entry
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !4900
  store i64 -5, ptr %retval, align 8, !dbg !4902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4902

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !4903
  %2 = load i64, ptr %1, align 8, !dbg !4905
  store i64 %2, ptr %i, align 8, !dbg !4906
  br label %for.cond, !dbg !4907

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %count.addr, align 8, !dbg !4908
  %cmp = icmp ugt i64 %3, 0, !dbg !4910
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4911

land.rhs:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8, !dbg !4912
  %cmp1 = icmp slt i64 %4, 114, !dbg !4913
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !4914
  br i1 %5, label %for.body, label %for.end, !dbg !4915

for.body:                                         ; preds = %land.end
  %6 = load i64, ptr %i, align 8, !dbg !4916
  %conv = trunc i64 %6 to i32, !dbg !4916
  %call2 = call zeroext i8 @__nvram_read_byte(i32 noundef %conv) #17, !dbg !4917
  %7 = load ptr, ptr %p, align 8, !dbg !4918
  store i8 %call2, ptr %7, align 1, !dbg !4919
  br label %for.inc, !dbg !4920

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %count.addr, align 8, !dbg !4921
  %dec = add i64 %8, -1, !dbg !4921
  store i64 %dec, ptr %count.addr, align 8, !dbg !4921
  %9 = load i64, ptr %i, align 8, !dbg !4922
  %inc = add i64 %9, 1, !dbg !4922
  store i64 %inc, ptr %i, align 8, !dbg !4922
  %10 = load ptr, ptr %p, align 8, !dbg !4923
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !4923
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !4923
  br label %for.cond, !dbg !4924, !llvm.loop !4925

for.end:                                          ; preds = %land.end
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !4929
  %11 = load i64, ptr %i, align 8, !dbg !4930
  %12 = load ptr, ptr %ppos.addr, align 8, !dbg !4931
  store i64 %11, ptr %12, align 8, !dbg !4932
  %13 = load ptr, ptr %p, align 8, !dbg !4933
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !4934
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64, !dbg !4935
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64, !dbg !4935
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4935
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !4936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4936

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4937
  %15 = load i64, ptr %retval, align 8, !dbg !4937
  ret i64 %15, !dbg !4937
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pc_nvram_write(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !4938 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4940, metadata !DIExpression()), !dbg !4945
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4941, metadata !DIExpression()), !dbg !4946
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4942, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4943, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4950
  store ptr %0, ptr %p, align 8, !dbg !4949
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4944, metadata !DIExpression()), !dbg !4952
  call void @spin_lock_irq(ptr noundef @rtc_lock) #17, !dbg !4953
  %call = call i32 @__nvram_check_checksum() #17, !dbg !4954
  %tobool = icmp ne i32 %call, 0, !dbg !4954
  br i1 %tobool, label %if.end, label %if.then, !dbg !4956

if.then:                                          ; preds = %entry
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !4957
  store i64 -5, ptr %retval, align 8, !dbg !4959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4959

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !4960
  %2 = load i64, ptr %1, align 8, !dbg !4962
  store i64 %2, ptr %i, align 8, !dbg !4963
  br label %for.cond, !dbg !4964

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %count.addr, align 8, !dbg !4965
  %cmp = icmp ugt i64 %3, 0, !dbg !4967
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4968

land.rhs:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8, !dbg !4969
  %cmp1 = icmp slt i64 %4, 114, !dbg !4970
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !4971
  br i1 %5, label %for.body, label %for.end, !dbg !4972

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %p, align 8, !dbg !4973
  %7 = load i8, ptr %6, align 1, !dbg !4974
  %8 = load i64, ptr %i, align 8, !dbg !4975
  %conv = trunc i64 %8 to i32, !dbg !4975
  call void @__nvram_write_byte(i8 noundef zeroext %7, i32 noundef %conv) #17, !dbg !4976
  br label %for.inc, !dbg !4976

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %count.addr, align 8, !dbg !4977
  %dec = add i64 %9, -1, !dbg !4977
  store i64 %dec, ptr %count.addr, align 8, !dbg !4977
  %10 = load i64, ptr %i, align 8, !dbg !4978
  %inc = add i64 %10, 1, !dbg !4978
  store i64 %inc, ptr %i, align 8, !dbg !4978
  %11 = load ptr, ptr %p, align 8, !dbg !4979
  %incdec.ptr = getelementptr i8, ptr %11, i32 1, !dbg !4979
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !4979
  br label %for.cond, !dbg !4980, !llvm.loop !4981

for.end:                                          ; preds = %land.end
  call void @__nvram_set_checksum() #17, !dbg !4983
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !4984
  %12 = load i64, ptr %i, align 8, !dbg !4985
  %13 = load ptr, ptr %ppos.addr, align 8, !dbg !4986
  store i64 %12, ptr %13, align 8, !dbg !4987
  %14 = load ptr, ptr %p, align 8, !dbg !4988
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !4989
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64, !dbg !4990
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64, !dbg !4990
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4990
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !4991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4991

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !4992
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4992
  %16 = load i64, ptr %retval, align 8, !dbg !4992
  ret i64 %16, !dbg !4992
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pc_nvram_initialize() #0 align 16 !dbg !4993 {
entry:
  %i = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4995, metadata !DIExpression()), !dbg !4997
  call void @spin_lock_irq(ptr noundef @rtc_lock) #17, !dbg !4998
  store i64 0, ptr %i, align 8, !dbg !4999
  br label %for.cond, !dbg !5001

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !5002
  %cmp = icmp slt i64 %0, 114, !dbg !5004
  br i1 %cmp, label %for.body, label %for.end, !dbg !5005

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8, !dbg !5006
  %conv = trunc i64 %1 to i32, !dbg !5006
  call void @__nvram_write_byte(i8 noundef zeroext 0, i32 noundef %conv) #17, !dbg !5007
  br label %for.inc, !dbg !5007

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !dbg !5008
  %inc = add i64 %2, 1, !dbg !5008
  store i64 %inc, ptr %i, align 8, !dbg !5008
  br label %for.cond, !dbg !5009, !llvm.loop !5010

for.end:                                          ; preds = %for.cond
  call void @__nvram_set_checksum() #17, !dbg !5012
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !5013
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !5014
  ret i64 0, !dbg !5015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pc_nvram_set_checksum() #0 align 16 !dbg !5016 {
entry:
  call void @spin_lock_irq(ptr noundef @rtc_lock) #17, !dbg !5017
  call void @__nvram_set_checksum() #17, !dbg !5018
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !5019
  ret i64 0, !dbg !5020
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @nvram_module_exit() #1 section ".exit.text" align 16 !dbg !5021 {
entry:
  call void @remove_proc_entry(ptr noundef @.str, ptr noundef null) #17, !dbg !5022
  call void @misc_deregister(ptr noundef @nvram_misc) #17, !dbg !5023
  ret void, !dbg !5024
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5025 dso_local void @remove_proc_entry(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5032 dso_local void @misc_deregister(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_nvram__327_540_nvram_module_init6() #1 section ".init.text" align 16 !dbg !5036 {
entry:
  %call = call i32 @nvram_module_init() #18, !dbg !5037
  ret i32 %call, !dbg !5037
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @nvram_module_init() #1 section ".init.text" align 16 !dbg !5038 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5041
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5040, metadata !DIExpression()), !dbg !5042
  %call = call i64 @nvram_get_size() #17, !dbg !5043
  store i64 %call, ptr @nvram_size, align 8, !dbg !5044
  %0 = load i64, ptr @nvram_size, align 8, !dbg !5045
  %cmp = icmp slt i64 %0, 0, !dbg !5047
  br i1 %cmp, label %if.then, label %if.end, !dbg !5048

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @nvram_size, align 8, !dbg !5049
  %conv = trunc i64 %1 to i32, !dbg !5049
  store i32 %conv, ptr %retval, align 4, !dbg !5050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5050

if.end:                                           ; preds = %entry
  %call1 = call i32 @misc_register(ptr noundef @nvram_misc) #17, !dbg !5051
  store i32 %call1, ptr %ret, align 4, !dbg !5052
  %2 = load i32, ptr %ret, align 4, !dbg !5053
  %tobool = icmp ne i32 %2, 0, !dbg !5053
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !5055

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !5056

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !5059

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5059

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef 144) #18, !dbg !5056
  store i32 %call3, ptr %tmp, align 4, !dbg !5059
  %3 = load i32, ptr %tmp, align 4, !dbg !5056
  %4 = load i32, ptr %ret, align 4, !dbg !5061
  store i32 %4, ptr %retval, align 4, !dbg !5062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5062

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @proc_create_single_data(ptr noundef @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef @nvram_proc_read, ptr noundef null) #17, !dbg !5063
  %tobool6 = icmp ne ptr %call5, null, !dbg !5063
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !5065

if.then7:                                         ; preds = %if.end4
  br label %do.body8, !dbg !5066

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !5069

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5069

do.end10:                                         ; preds = %do.cond9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #18, !dbg !5066
  store i32 %call12, ptr %tmp11, align 4, !dbg !5069
  %5 = load i32, ptr %tmp11, align 4, !dbg !5066
  call void @misc_deregister(ptr noundef @nvram_misc) #17, !dbg !5071
  store i32 -12, ptr %retval, align 4, !dbg !5072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5072

if.end13:                                         ; preds = %if.end4
  br label %do.body14, !dbg !5073

do.body14:                                        ; preds = %if.end13
  br label %do.cond15, !dbg !5075

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5075

do.end16:                                         ; preds = %do.cond15
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18, !dbg !5073
  store i32 %call18, ptr %tmp17, align 4, !dbg !5075
  %6 = load i32, ptr %tmp17, align 4, !dbg !5073
  store i32 0, ptr %retval, align 4, !dbg !5077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5077

cleanup:                                          ; preds = %do.end16, %do.end10, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5078
  %7 = load i32, ptr %retval, align 4, !dbg !5078
  ret i32 %7, !dbg !5078
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5079 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5084 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5091
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5092
  ret ptr %1, !dbg !5093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__nvram_read_byte(i32 noundef %i) #0 align 16 !dbg !5094 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  %0 = load i32, ptr %i.addr, align 4, !dbg !5098
  %add = add i32 14, %0, !dbg !5098
  %conv = trunc i32 %add to i8, !dbg !5098
  %call = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext %conv) #17, !dbg !5098
  ret i8 %call, !dbg !5099
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !5100 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5104, metadata !DIExpression()), !dbg !5110
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5105, metadata !DIExpression()), !dbg !5111
  br label %do.body, !dbg !5112

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5113
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5106, metadata !DIExpression()), !dbg !5113
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5113
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5109, metadata !DIExpression()), !dbg !5113
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5113
  %conv = zext i1 %cmp to i32, !dbg !5113
  store i32 1, ptr %tmp, align 4, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5114
  %0 = load i32, ptr %tmp, align 4, !dbg !5113
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5114
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5114
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5114
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5114
  br label %do.end, !dbg !5114

do.end:                                           ; preds = %do.body
  ret void, !dbg !5115
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5116 dso_local zeroext i8 @rtc_cmos_read(i8 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5120 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__nvram_write_byte(i8 noundef zeroext %c, i32 noundef %i) #0 align 16 !dbg !5123 {
entry:
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5125, metadata !DIExpression()), !dbg !5127
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5126, metadata !DIExpression()), !dbg !5128
  %0 = load i8, ptr %c.addr, align 1, !dbg !5129
  %1 = load i32, ptr %i.addr, align 4, !dbg !5129
  %add = add i32 14, %1, !dbg !5129
  %conv = trunc i32 %add to i8, !dbg !5129
  call void @rtc_cmos_write(i8 noundef zeroext %0, i8 noundef zeroext %conv) #17, !dbg !5129
  ret void, !dbg !5130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5131 dso_local void @rtc_cmos_write(i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !5134 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5140
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5140
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !5140
  ret void, !dbg !5141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__nvram_check_checksum() #0 align 16 !dbg !5142 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i16, align 2
  %expect = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5147
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5144, metadata !DIExpression()), !dbg !5148
  call void @llvm.lifetime.start.p0(i64 2, ptr %sum) #16, !dbg !5149
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !5145, metadata !DIExpression()), !dbg !5150
  store i16 0, ptr %sum, align 2, !dbg !5150
  call void @llvm.lifetime.start.p0(i64 2, ptr %expect) #16, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %expect, metadata !5146, metadata !DIExpression()), !dbg !5152
  store i32 2, ptr %i, align 4, !dbg !5153
  br label %for.cond, !dbg !5155

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5156
  %cmp = icmp sle i32 %0, 31, !dbg !5158
  br i1 %cmp, label %for.body, label %for.end, !dbg !5159

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !5160
  %call = call zeroext i8 @__nvram_read_byte(i32 noundef %1) #17, !dbg !5161
  %conv = zext i8 %call to i32, !dbg !5161
  %2 = load i16, ptr %sum, align 2, !dbg !5162
  %conv1 = zext i16 %2 to i32, !dbg !5162
  %add = add i32 %conv1, %conv, !dbg !5162
  %conv2 = trunc i32 %add to i16, !dbg !5162
  store i16 %conv2, ptr %sum, align 2, !dbg !5162
  br label %for.inc, !dbg !5163

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5164
  %inc = add i32 %3, 1, !dbg !5164
  store i32 %inc, ptr %i, align 4, !dbg !5164
  br label %for.cond, !dbg !5165, !llvm.loop !5166

for.end:                                          ; preds = %for.cond
  %call3 = call zeroext i8 @__nvram_read_byte(i32 noundef 32) #17, !dbg !5168
  %conv4 = zext i8 %call3 to i32, !dbg !5168
  %shl = shl i32 %conv4, 8, !dbg !5169
  %call5 = call zeroext i8 @__nvram_read_byte(i32 noundef 33) #17, !dbg !5170
  %conv6 = zext i8 %call5 to i32, !dbg !5170
  %or = or i32 %shl, %conv6, !dbg !5171
  %conv7 = trunc i32 %or to i16, !dbg !5168
  store i16 %conv7, ptr %expect, align 2, !dbg !5172
  %4 = load i16, ptr %sum, align 2, !dbg !5173
  %conv8 = zext i16 %4 to i32, !dbg !5173
  %and = and i32 %conv8, 65535, !dbg !5174
  %5 = load i16, ptr %expect, align 2, !dbg !5175
  %conv9 = zext i16 %5 to i32, !dbg !5175
  %cmp10 = icmp eq i32 %and, %conv9, !dbg !5176
  %conv11 = zext i1 %cmp10 to i32, !dbg !5176
  call void @llvm.lifetime.end.p0(i64 2, ptr %expect) #16, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 2, ptr %sum) #16, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5177
  ret i32 %conv11, !dbg !5178
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !5179 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5183
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5183
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !5183
  ret void, !dbg !5184
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5185 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5188 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__nvram_set_checksum() #0 align 16 !dbg !5189 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5193
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5191, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 2, ptr %sum) #16, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !5192, metadata !DIExpression()), !dbg !5196
  store i16 0, ptr %sum, align 2, !dbg !5196
  store i32 2, ptr %i, align 4, !dbg !5197
  br label %for.cond, !dbg !5199

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5200
  %cmp = icmp sle i32 %0, 31, !dbg !5202
  br i1 %cmp, label %for.body, label %for.end, !dbg !5203

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !5204
  %call = call zeroext i8 @__nvram_read_byte(i32 noundef %1) #17, !dbg !5205
  %conv = zext i8 %call to i32, !dbg !5205
  %2 = load i16, ptr %sum, align 2, !dbg !5206
  %conv1 = zext i16 %2 to i32, !dbg !5206
  %add = add i32 %conv1, %conv, !dbg !5206
  %conv2 = trunc i32 %add to i16, !dbg !5206
  store i16 %conv2, ptr %sum, align 2, !dbg !5206
  br label %for.inc, !dbg !5207

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5208
  %inc = add i32 %3, 1, !dbg !5208
  store i32 %inc, ptr %i, align 4, !dbg !5208
  br label %for.cond, !dbg !5209, !llvm.loop !5210

for.end:                                          ; preds = %for.cond
  %4 = load i16, ptr %sum, align 2, !dbg !5212
  %conv3 = zext i16 %4 to i32, !dbg !5212
  %shr = ashr i32 %conv3, 8, !dbg !5213
  %conv4 = trunc i32 %shr to i8, !dbg !5212
  call void @__nvram_write_byte(i8 noundef zeroext %conv4, i32 noundef 32) #17, !dbg !5214
  %5 = load i16, ptr %sum, align 2, !dbg !5215
  %conv5 = zext i16 %5 to i32, !dbg !5215
  %and = and i32 %conv5, 255, !dbg !5216
  %conv6 = trunc i32 %and to i8, !dbg !5215
  call void @__nvram_write_byte(i8 noundef zeroext %conv6, i32 noundef 33) #17, !dbg !5217
  call void @llvm.lifetime.end.p0(i64 2, ptr %sum) #16, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5218
  ret void, !dbg !5218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_misc_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %origin) #0 align 16 !dbg !5219 {
entry:
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5221, metadata !DIExpression()), !dbg !5224
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5222, metadata !DIExpression()), !dbg !5225
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !5223, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5227
  %1 = load i64, ptr %offset.addr, align 8, !dbg !5228
  %2 = load i32, ptr %origin.addr, align 4, !dbg !5229
  %3 = load i64, ptr @nvram_size, align 8, !dbg !5230
  %call = call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef 9223372036854775807, i64 noundef %3) #17, !dbg !5231
  ret i64 %call, !dbg !5232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_misc_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5233 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x319 = alloca i64, align 8
  %__UNIQUE_ID___y320 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %__UNIQUE_ID___x321 = alloca i64, align 8
  %__UNIQUE_ID___y322 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5235, metadata !DIExpression()), !dbg !5248
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5236, metadata !DIExpression()), !dbg !5249
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5237, metadata !DIExpression()), !dbg !5250
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5238, metadata !DIExpression()), !dbg !5251
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5252
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5239, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5240, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %ppos.addr, align 8, !dbg !5256
  %1 = load i64, ptr %0, align 8, !dbg !5258
  %2 = load i64, ptr @nvram_size, align 8, !dbg !5259
  %cmp = icmp sge i64 %1, %2, !dbg !5260
  br i1 %cmp, label %if.then, label %if.end, !dbg !5261

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5262

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x319) #16, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x319, metadata !5241, metadata !DIExpression()), !dbg !5263
  %3 = load i64, ptr %count.addr, align 8, !dbg !5263
  store i64 %3, ptr %__UNIQUE_ID___x319, align 8, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y320) #16, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y320, metadata !5243, metadata !DIExpression()), !dbg !5263
  %4 = load i64, ptr @nvram_size, align 8, !dbg !5263
  %5 = load ptr, ptr %ppos.addr, align 8, !dbg !5263
  %6 = load i64, ptr %5, align 8, !dbg !5263
  %sub = sub i64 %4, %6, !dbg !5263
  store i64 %sub, ptr %__UNIQUE_ID___y320, align 8, !dbg !5263
  %7 = load i64, ptr %__UNIQUE_ID___x319, align 8, !dbg !5263
  %8 = load i64, ptr %__UNIQUE_ID___y320, align 8, !dbg !5263
  %cmp2 = icmp ult i64 %7, %8, !dbg !5263
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5263

cond.true:                                        ; preds = %if.end
  %9 = load i64, ptr %__UNIQUE_ID___x319, align 8, !dbg !5263
  br label %cond.end, !dbg !5263

cond.false:                                       ; preds = %if.end
  %10 = load i64, ptr %__UNIQUE_ID___y320, align 8, !dbg !5263
  br label %cond.end, !dbg !5263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !5263
  store i64 %cond, ptr %tmp1, align 8, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y320) #16, !dbg !5264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x319) #16, !dbg !5264
  %11 = load i64, ptr %tmp1, align 8, !dbg !5263
  store i64 %11, ptr %count.addr, align 8, !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x321) #16, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x321, metadata !5244, metadata !DIExpression()), !dbg !5266
  %12 = load i64, ptr %count.addr, align 8, !dbg !5266
  store i64 %12, ptr %__UNIQUE_ID___x321, align 8, !dbg !5266
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y322) #16, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y322, metadata !5246, metadata !DIExpression()), !dbg !5266
  store i64 4096, ptr %__UNIQUE_ID___y322, align 8, !dbg !5266
  %13 = load i64, ptr %__UNIQUE_ID___x321, align 8, !dbg !5266
  %14 = load i64, ptr %__UNIQUE_ID___y322, align 8, !dbg !5266
  %cmp4 = icmp ult i64 %13, %14, !dbg !5266
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !5266

cond.true5:                                       ; preds = %cond.end
  %15 = load i64, ptr %__UNIQUE_ID___x321, align 8, !dbg !5266
  br label %cond.end7, !dbg !5266

cond.false6:                                      ; preds = %cond.end
  %16 = load i64, ptr %__UNIQUE_ID___y322, align 8, !dbg !5266
  br label %cond.end7, !dbg !5266

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %15, %cond.true5 ], [ %16, %cond.false6 ], !dbg !5266
  store i64 %cond8, ptr %tmp3, align 8, !dbg !5266
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y322) #16, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x321) #16, !dbg !5267
  %17 = load i64, ptr %tmp3, align 8, !dbg !5266
  store i64 %17, ptr %count.addr, align 8, !dbg !5268
  %18 = load i64, ptr %count.addr, align 8, !dbg !5269
  %call = call noalias ptr @kmalloc(i64 noundef %18, i32 noundef 3264) #19, !dbg !5270
  store ptr %call, ptr %tmp, align 8, !dbg !5271
  %19 = load ptr, ptr %tmp, align 8, !dbg !5272
  %tobool = icmp ne ptr %19, null, !dbg !5272
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !5274

if.then9:                                         ; preds = %cond.end7
  store i64 -12, ptr %retval, align 8, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

if.end10:                                         ; preds = %cond.end7
  %20 = load ptr, ptr %tmp, align 8, !dbg !5276
  %21 = load i64, ptr %count.addr, align 8, !dbg !5277
  %22 = load ptr, ptr %ppos.addr, align 8, !dbg !5278
  %call11 = call i64 @nvram_read(ptr noundef %20, i64 noundef %21, ptr noundef %22) #17, !dbg !5279
  store i64 %call11, ptr %ret, align 8, !dbg !5280
  %23 = load i64, ptr %ret, align 8, !dbg !5281
  %cmp12 = icmp sle i64 %23, 0, !dbg !5283
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5284

if.then13:                                        ; preds = %if.end10
  br label %out, !dbg !5285

if.end14:                                         ; preds = %if.end10
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !5286
  %25 = load ptr, ptr %tmp, align 8, !dbg !5288
  %26 = load i64, ptr %ret, align 8, !dbg !5289
  %call15 = call i64 @copy_to_user(ptr noundef %24, ptr noundef %25, i64 noundef %26) #17, !dbg !5290
  %tobool16 = icmp ne i64 %call15, 0, !dbg !5290
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5291

if.then17:                                        ; preds = %if.end14
  %27 = load i64, ptr %ret, align 8, !dbg !5292
  %28 = load ptr, ptr %ppos.addr, align 8, !dbg !5294
  %29 = load i64, ptr %28, align 8, !dbg !5295
  %sub18 = sub i64 %29, %27, !dbg !5295
  store i64 %sub18, ptr %28, align 8, !dbg !5295
  store i64 -14, ptr %ret, align 8, !dbg !5296
  br label %if.end19, !dbg !5297

if.end19:                                         ; preds = %if.then17, %if.end14
  br label %out, !dbg !5298

out:                                              ; preds = %if.end19, %if.then13
  call void @llvm.dbg.label(metadata !5247), !dbg !5299
  %30 = load ptr, ptr %tmp, align 8, !dbg !5300
  call void @kfree(ptr noundef %30) #17, !dbg !5301
  %31 = load i64, ptr %ret, align 8, !dbg !5302
  store i64 %31, ptr %retval, align 8, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

cleanup:                                          ; preds = %out, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5304
  %32 = load i64, ptr %retval, align 8, !dbg !5304
  ret i64 %32, !dbg !5304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_misc_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5305 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x323 = alloca i64, align 8
  %__UNIQUE_ID___y324 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %__UNIQUE_ID___x325 = alloca i64, align 8
  %__UNIQUE_ID___y326 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5307, metadata !DIExpression()), !dbg !5319
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5308, metadata !DIExpression()), !dbg !5320
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5309, metadata !DIExpression()), !dbg !5321
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5310, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5311, metadata !DIExpression()), !dbg !5324
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !5325
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5312, metadata !DIExpression()), !dbg !5326
  %0 = load ptr, ptr %ppos.addr, align 8, !dbg !5327
  %1 = load i64, ptr %0, align 8, !dbg !5329
  %2 = load i64, ptr @nvram_size, align 8, !dbg !5330
  %cmp = icmp sge i64 %1, %2, !dbg !5331
  br i1 %cmp, label %if.then, label %if.end, !dbg !5332

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5333

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x323) #16, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x323, metadata !5313, metadata !DIExpression()), !dbg !5334
  %3 = load i64, ptr %count.addr, align 8, !dbg !5334
  store i64 %3, ptr %__UNIQUE_ID___x323, align 8, !dbg !5334
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y324) #16, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y324, metadata !5315, metadata !DIExpression()), !dbg !5334
  %4 = load i64, ptr @nvram_size, align 8, !dbg !5334
  %5 = load ptr, ptr %ppos.addr, align 8, !dbg !5334
  %6 = load i64, ptr %5, align 8, !dbg !5334
  %sub = sub i64 %4, %6, !dbg !5334
  store i64 %sub, ptr %__UNIQUE_ID___y324, align 8, !dbg !5334
  %7 = load i64, ptr %__UNIQUE_ID___x323, align 8, !dbg !5334
  %8 = load i64, ptr %__UNIQUE_ID___y324, align 8, !dbg !5334
  %cmp2 = icmp ult i64 %7, %8, !dbg !5334
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5334

cond.true:                                        ; preds = %if.end
  %9 = load i64, ptr %__UNIQUE_ID___x323, align 8, !dbg !5334
  br label %cond.end, !dbg !5334

cond.false:                                       ; preds = %if.end
  %10 = load i64, ptr %__UNIQUE_ID___y324, align 8, !dbg !5334
  br label %cond.end, !dbg !5334

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !5334
  store i64 %cond, ptr %tmp1, align 8, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y324) #16, !dbg !5335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x323) #16, !dbg !5335
  %11 = load i64, ptr %tmp1, align 8, !dbg !5334
  store i64 %11, ptr %count.addr, align 8, !dbg !5336
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x325) #16, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x325, metadata !5316, metadata !DIExpression()), !dbg !5337
  %12 = load i64, ptr %count.addr, align 8, !dbg !5337
  store i64 %12, ptr %__UNIQUE_ID___x325, align 8, !dbg !5337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y326) #16, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y326, metadata !5318, metadata !DIExpression()), !dbg !5337
  store i64 4096, ptr %__UNIQUE_ID___y326, align 8, !dbg !5337
  %13 = load i64, ptr %__UNIQUE_ID___x325, align 8, !dbg !5337
  %14 = load i64, ptr %__UNIQUE_ID___y326, align 8, !dbg !5337
  %cmp4 = icmp ult i64 %13, %14, !dbg !5337
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !5337

cond.true5:                                       ; preds = %cond.end
  %15 = load i64, ptr %__UNIQUE_ID___x325, align 8, !dbg !5337
  br label %cond.end7, !dbg !5337

cond.false6:                                      ; preds = %cond.end
  %16 = load i64, ptr %__UNIQUE_ID___y326, align 8, !dbg !5337
  br label %cond.end7, !dbg !5337

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %15, %cond.true5 ], [ %16, %cond.false6 ], !dbg !5337
  store i64 %cond8, ptr %tmp3, align 8, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y326) #16, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x325) #16, !dbg !5338
  %17 = load i64, ptr %tmp3, align 8, !dbg !5337
  store i64 %17, ptr %count.addr, align 8, !dbg !5339
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !5340
  %19 = load i64, ptr %count.addr, align 8, !dbg !5341
  %call = call ptr @memdup_user(ptr noundef %18, i64 noundef %19) #17, !dbg !5342
  store ptr %call, ptr %tmp, align 8, !dbg !5343
  %20 = load ptr, ptr %tmp, align 8, !dbg !5344
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %20) #17, !dbg !5346
  br i1 %call9, label %if.then10, label %if.end12, !dbg !5347

if.then10:                                        ; preds = %cond.end7
  %21 = load ptr, ptr %tmp, align 8, !dbg !5348
  %call11 = call i64 @PTR_ERR(ptr noundef %21) #17, !dbg !5349
  store i64 %call11, ptr %retval, align 8, !dbg !5350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5350

if.end12:                                         ; preds = %cond.end7
  %22 = load ptr, ptr %tmp, align 8, !dbg !5351
  %23 = load i64, ptr %count.addr, align 8, !dbg !5352
  %24 = load ptr, ptr %ppos.addr, align 8, !dbg !5353
  %call13 = call i64 @nvram_write(ptr noundef %22, i64 noundef %23, ptr noundef %24) #17, !dbg !5354
  store i64 %call13, ptr %ret, align 8, !dbg !5355
  %25 = load ptr, ptr %tmp, align 8, !dbg !5356
  call void @kfree(ptr noundef %25) #17, !dbg !5357
  %26 = load i64, ptr %ret, align 8, !dbg !5358
  store i64 %26, ptr %retval, align 8, !dbg !5359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5359

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !5360
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5360
  %27 = load i64, ptr %retval, align 8, !dbg !5360
  ret i64 %27, !dbg !5360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_misc_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5361 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5363, metadata !DIExpression()), !dbg !5367
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5364, metadata !DIExpression()), !dbg !5368
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5365, metadata !DIExpression()), !dbg !5369
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5366, metadata !DIExpression()), !dbg !5371
  store i64 -25, ptr %ret, align 8, !dbg !5371
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5372
  switch i32 %0, label %sw.epilog [
    i32 28736, label %sw.bb
    i32 28737, label %sw.bb2
  ], !dbg !5373

sw.bb:                                            ; preds = %entry
  %call = call zeroext i1 @capable(i32 noundef 21) #17, !dbg !5374
  br i1 %call, label %if.end, label %if.then, !dbg !5377

if.then:                                          ; preds = %sw.bb
  store i64 -13, ptr %retval, align 8, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

if.end:                                           ; preds = %sw.bb
  call void @mutex_lock(ptr noundef @nvram_mutex) #17, !dbg !5379
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 5), align 8, !dbg !5382
  %call1 = call i64 %1() #17, !dbg !5383
  store i64 %call1, ptr %ret, align 8, !dbg !5384
  call void @mutex_unlock(ptr noundef @nvram_mutex) #17, !dbg !5385
  br label %sw.epilog, !dbg !5386

sw.bb2:                                           ; preds = %entry
  %call3 = call zeroext i1 @capable(i32 noundef 21) #17, !dbg !5387
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5389

if.then4:                                         ; preds = %sw.bb2
  store i64 -13, ptr %retval, align 8, !dbg !5390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5390

if.end5:                                          ; preds = %sw.bb2
  call void @mutex_lock(ptr noundef @nvram_mutex) #17, !dbg !5391
  %2 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 6), align 8, !dbg !5394
  %call6 = call i64 %2() #17, !dbg !5395
  store i64 %call6, ptr %ret, align 8, !dbg !5396
  call void @mutex_unlock(ptr noundef @nvram_mutex) #17, !dbg !5397
  br label %sw.epilog, !dbg !5398

sw.epilog:                                        ; preds = %entry, %if.end5, %if.end
  %3 = load i64, ptr %ret, align 8, !dbg !5399
  store i64 %3, ptr %retval, align 8, !dbg !5400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

cleanup:                                          ; preds = %sw.epilog, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !5401
  %4 = load i64, ptr %retval, align 8, !dbg !5401
  ret i64 %4, !dbg !5401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nvram_misc_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5402 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5404, metadata !DIExpression()), !dbg !5406
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5405, metadata !DIExpression()), !dbg !5407
  call void @spin_lock(ptr noundef @nvram_state_lock) #17, !dbg !5408
  %0 = load i32, ptr @nvram_open_cnt, align 4, !dbg !5409
  %tobool = icmp ne i32 %0, 0, !dbg !5409
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !5411

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5412
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 6, !dbg !5413
  %2 = load i32, ptr %f_flags, align 8, !dbg !5413
  %and = and i32 %2, 128, !dbg !5414
  %tobool1 = icmp ne i32 %and, 0, !dbg !5414
  br i1 %tobool1, label %if.then, label %lor.lhs.false, !dbg !5415

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr @nvram_open_mode, align 4, !dbg !5416
  %and2 = and i32 %3, 2, !dbg !5417
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5417
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5418

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @spin_unlock(ptr noundef @nvram_state_lock) #17, !dbg !5419
  store i32 -16, ptr %retval, align 4, !dbg !5421
  br label %return, !dbg !5421

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5422
  %f_mode = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2, !dbg !5424
  %5 = load i32, ptr %f_mode, align 4, !dbg !5424
  %and4 = and i32 %5, 2, !dbg !5425
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5425
  br i1 %tobool5, label %land.lhs.true6, label %if.end10, !dbg !5426

land.lhs.true6:                                   ; preds = %if.end
  %6 = load i32, ptr @nvram_open_mode, align 4, !dbg !5427
  %and7 = and i32 %6, 1, !dbg !5428
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5428
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5429

if.then9:                                         ; preds = %land.lhs.true6
  call void @spin_unlock(ptr noundef @nvram_state_lock) #17, !dbg !5430
  store i32 -16, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end10:                                         ; preds = %land.lhs.true6, %if.end
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5433
  %f_flags11 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 6, !dbg !5435
  %8 = load i32, ptr %f_flags11, align 8, !dbg !5435
  %and12 = and i32 %8, 128, !dbg !5436
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5436
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5437

if.then14:                                        ; preds = %if.end10
  %9 = load i32, ptr @nvram_open_mode, align 4, !dbg !5438
  %or = or i32 %9, 2, !dbg !5438
  store i32 %or, ptr @nvram_open_mode, align 4, !dbg !5438
  br label %if.end15, !dbg !5439

if.end15:                                         ; preds = %if.then14, %if.end10
  %10 = load ptr, ptr %file.addr, align 8, !dbg !5440
  %f_mode16 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2, !dbg !5442
  %11 = load i32, ptr %f_mode16, align 4, !dbg !5442
  %and17 = and i32 %11, 2, !dbg !5443
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5443
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5444

if.then19:                                        ; preds = %if.end15
  %12 = load i32, ptr @nvram_open_mode, align 4, !dbg !5445
  %or20 = or i32 %12, 1, !dbg !5445
  store i32 %or20, ptr @nvram_open_mode, align 4, !dbg !5445
  br label %if.end21, !dbg !5446

if.end21:                                         ; preds = %if.then19, %if.end15
  %13 = load i32, ptr @nvram_open_cnt, align 4, !dbg !5447
  %inc = add i32 %13, 1, !dbg !5447
  store i32 %inc, ptr @nvram_open_cnt, align 4, !dbg !5447
  call void @spin_unlock(ptr noundef @nvram_state_lock) #17, !dbg !5448
  store i32 0, ptr %retval, align 4, !dbg !5449
  br label %return, !dbg !5449

return:                                           ; preds = %if.end21, %if.then9, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !5450
  ret i32 %14, !dbg !5450
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nvram_misc_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5451 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5453, metadata !DIExpression()), !dbg !5455
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5454, metadata !DIExpression()), !dbg !5456
  call void @spin_lock(ptr noundef @nvram_state_lock) #17, !dbg !5457
  %0 = load i32, ptr @nvram_open_cnt, align 4, !dbg !5458
  %dec = add i32 %0, -1, !dbg !5458
  store i32 %dec, ptr @nvram_open_cnt, align 4, !dbg !5458
  %1 = load i32, ptr @nvram_open_mode, align 4, !dbg !5459
  %and = and i32 %1, 2, !dbg !5461
  %tobool = icmp ne i32 %and, 0, !dbg !5461
  br i1 %tobool, label %if.then, label %if.end, !dbg !5462

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @nvram_open_mode, align 4, !dbg !5463
  %and1 = and i32 %2, -3, !dbg !5463
  store i32 %and1, ptr @nvram_open_mode, align 4, !dbg !5463
  br label %if.end, !dbg !5464

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5465
  %f_mode = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2, !dbg !5467
  %4 = load i32, ptr %f_mode, align 4, !dbg !5467
  %and2 = and i32 %4, 2, !dbg !5468
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5468
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5469

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr @nvram_open_mode, align 4, !dbg !5470
  %and5 = and i32 %5, -2, !dbg !5470
  store i32 %and5, ptr @nvram_open_mode, align 4, !dbg !5470
  br label %if.end6, !dbg !5471

if.end6:                                          ; preds = %if.then4, %if.end
  call void @spin_unlock(ptr noundef @nvram_state_lock) #17, !dbg !5472
  ret i32 0, !dbg !5473
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5474 dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5477 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5481, metadata !DIExpression()), !dbg !5486
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5482, metadata !DIExpression()), !dbg !5487
  %0 = load i64, ptr %size.addr, align 8, !dbg !5488
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5489
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5490

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5491
  %tobool = icmp ne i64 %2, 0, !dbg !5491
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5492

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5483, metadata !DIExpression()), !dbg !5494
  %3 = load i64, ptr %size.addr, align 8, !dbg !5495
  %cmp = icmp ugt i64 %3, 8192, !dbg !5497
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5498

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5499
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5500
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5501
  store ptr %call, ptr %retval, align 8, !dbg !5502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5502

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5503
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5503
  store i32 %call2, ptr %index, align 4, !dbg !5504
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5505
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5506
  %9 = ptrtoint ptr %8 to i64, !dbg !5506
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5507
  %idxprom = zext i32 %call3 to i64, !dbg !5508
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5508
  %10 = load i32, ptr %index, align 4, !dbg !5509
  %idxprom4 = zext i32 %10 to i64, !dbg !5508
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5508
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5508
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5510
  %13 = load i64, ptr %size.addr, align 8, !dbg !5511
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5512
  store ptr %call6, ptr %retval, align 8, !dbg !5513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5513

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5514
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5515
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5516
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5517
  store ptr %call8, ptr %retval, align 8, !dbg !5518
  br label %return, !dbg !5518

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5519
  ret ptr %16, !dbg !5519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_read(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #7 align 16 !dbg !5520 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5522, metadata !DIExpression()), !dbg !5525
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5523, metadata !DIExpression()), !dbg !5526
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5524, metadata !DIExpression()), !dbg !5527
  %0 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 3), align 8, !dbg !5528
  %tobool = icmp ne ptr %0, null, !dbg !5530
  br i1 %tobool, label %if.then, label %if.end, !dbg !5531

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 3), align 8, !dbg !5532
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5533
  %3 = load i64, ptr %count.addr, align 8, !dbg !5534
  %4 = load ptr, ptr %ppos.addr, align 8, !dbg !5535
  %call = call i64 %1(ptr noundef %2, i64 noundef %3, ptr noundef %4) #17, !dbg !5536
  store i64 %call, ptr %retval, align 8, !dbg !5537
  br label %return, !dbg !5537

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5538
  %6 = load i64, ptr %count.addr, align 8, !dbg !5539
  %7 = load ptr, ptr %ppos.addr, align 8, !dbg !5540
  %call1 = call i64 @nvram_read_bytes(ptr noundef %5, i64 noundef %6, ptr noundef %7) #17, !dbg !5541
  store i64 %call1, ptr %retval, align 8, !dbg !5542
  br label %return, !dbg !5542

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !5543
  ret i64 %8, !dbg !5543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !5544 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5549, metadata !DIExpression()), !dbg !5552
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5550, metadata !DIExpression()), !dbg !5553
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5551, metadata !DIExpression()), !dbg !5554
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5555
  %1 = load i64, ptr %n.addr, align 8, !dbg !5557
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !5558
  br i1 %call, label %if.then, label %if.end, !dbg !5559

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5560
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5561
  %4 = load i64, ptr %n.addr, align 8, !dbg !5562
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !5563
  store i64 %call1, ptr %n.addr, align 8, !dbg !5564
  br label %if.end, !dbg !5565

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5566
  ret i64 %5, !dbg !5567
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5568 dso_local void @kfree(ptr noundef) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5571 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5572 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5576, metadata !DIExpression()), !dbg !5578
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5577, metadata !DIExpression()), !dbg !5579
  %0 = load i64, ptr %size.addr, align 8, !dbg !5580
  %tobool = icmp ne i64 %0, 0, !dbg !5580
  br i1 %tobool, label %if.end, label %if.then, !dbg !5582

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5583
  br label %return, !dbg !5583

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5584
  %cmp = icmp ule i64 %1, 8, !dbg !5586
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5587

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5588
  br label %return, !dbg !5588

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5589
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5591
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5592

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5593
  %cmp4 = icmp ule i64 %3, 96, !dbg !5594
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5595

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5596
  br label %return, !dbg !5596

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5597
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5599
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5600

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5601
  %cmp9 = icmp ule i64 %5, 192, !dbg !5602
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5603

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5604
  br label %return, !dbg !5604

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5605
  %cmp12 = icmp ule i64 %6, 8, !dbg !5607
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5608

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5609
  br label %return, !dbg !5609

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5610
  %cmp15 = icmp ule i64 %7, 16, !dbg !5612
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5613

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5614
  br label %return, !dbg !5614

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5615
  %cmp18 = icmp ule i64 %8, 32, !dbg !5617
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5618

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5619
  br label %return, !dbg !5619

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5620
  %cmp21 = icmp ule i64 %9, 64, !dbg !5622
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5623

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5624
  br label %return, !dbg !5624

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5625
  %cmp24 = icmp ule i64 %10, 128, !dbg !5627
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5628

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5629
  br label %return, !dbg !5629

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5630
  %cmp27 = icmp ule i64 %11, 256, !dbg !5632
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5633

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5634
  br label %return, !dbg !5634

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5635
  %cmp30 = icmp ule i64 %12, 512, !dbg !5637
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5638

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5639
  br label %return, !dbg !5639

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5640
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5642
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5643

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5644
  br label %return, !dbg !5644

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5645
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5647
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5648

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5649
  br label %return, !dbg !5649

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5650
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5652
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5653

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5654
  br label %return, !dbg !5654

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5655
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5657
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5658

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5659
  br label %return, !dbg !5659

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5660
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5662
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5663

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5664
  br label %return, !dbg !5664

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5665
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5667
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5668

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5669
  br label %return, !dbg !5669

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5670
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5672
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5673

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5674
  br label %return, !dbg !5674

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5675
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5677
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5678

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5679
  br label %return, !dbg !5679

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5680
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5682
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5683

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5684
  br label %return, !dbg !5684

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5685
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5687
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5688

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5689
  br label %return, !dbg !5689

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5690
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5692
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5693

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5694
  br label %return, !dbg !5694

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5695
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5697
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5698

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5699
  br label %return, !dbg !5699

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5700, !range !5702, !noundef !547
  %tobool69 = trunc i8 %25 to i1, !dbg !5700
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5703

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5704

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #21, !dbg !5705, !srcloc !5708
  unreachable, !dbg !5705

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5709

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5710

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5711

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5713

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5711

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !5715, !srcloc !5717
  br label %do.end75, !dbg !5715

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5711

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5718
  br label %return, !dbg !5718

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5719
  ret i32 %26, !dbg !5719
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5720 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5726 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5730, metadata !DIExpression()), !dbg !5732
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5731, metadata !DIExpression()), !dbg !5733
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5734
  %and = and i32 %0, 17, !dbg !5734
  %cmp = icmp eq i32 %and, 0, !dbg !5734
  %lnot = xor i1 %cmp, true, !dbg !5734
  %lnot1 = xor i1 %lnot, true, !dbg !5734
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5734
  %conv = sext i32 %lnot.ext to i64, !dbg !5734
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5734
  %tobool = icmp ne i64 %expval, 0, !dbg !5734
  br i1 %tobool, label %if.then, label %if.end, !dbg !5736

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5737
  br label %return, !dbg !5737

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5738
  %and2 = and i32 %1, 1, !dbg !5740
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5740
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5741

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5742
  br label %return, !dbg !5742

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5743
  br label %return, !dbg !5743

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5745
  ret i32 %2, !dbg !5745
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5746 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5747 dso_local void @__compiletime_assert_263() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_read_bytes(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #7 align 16 !dbg !5748 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %nvram_size = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5750, metadata !DIExpression()), !dbg !5756
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5751, metadata !DIExpression()), !dbg !5757
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5752, metadata !DIExpression()), !dbg !5758
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvram_size) #16, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %nvram_size, metadata !5753, metadata !DIExpression()), !dbg !5760
  %call = call i64 @nvram_get_size() #17, !dbg !5761
  store i64 %call, ptr %nvram_size, align 8, !dbg !5760
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5754, metadata !DIExpression()), !dbg !5763
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5764
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5755, metadata !DIExpression()), !dbg !5765
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5766
  store ptr %0, ptr %p, align 8, !dbg !5765
  %1 = load i64, ptr %nvram_size, align 8, !dbg !5767
  %cmp = icmp slt i64 %1, 0, !dbg !5769
  br i1 %cmp, label %if.then, label %if.end, !dbg !5770

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %nvram_size, align 8, !dbg !5771
  store i64 %2, ptr %retval, align 8, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5772

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ppos.addr, align 8, !dbg !5773
  %4 = load i64, ptr %3, align 8, !dbg !5775
  store i64 %4, ptr %i, align 8, !dbg !5776
  br label %for.cond, !dbg !5777

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %count.addr, align 8, !dbg !5778
  %cmp1 = icmp ugt i64 %5, 0, !dbg !5780
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5781

land.rhs:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8, !dbg !5782
  %7 = load i64, ptr %nvram_size, align 8, !dbg !5783
  %cmp2 = icmp slt i64 %6, %7, !dbg !5784
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !5785
  br i1 %8, label %for.body, label %for.end, !dbg !5786

for.body:                                         ; preds = %land.end
  %9 = load i64, ptr %i, align 8, !dbg !5787
  %conv = trunc i64 %9 to i32, !dbg !5787
  %call3 = call zeroext i8 @nvram_read_byte(i32 noundef %conv) #17, !dbg !5788
  %10 = load ptr, ptr %p, align 8, !dbg !5789
  store i8 %call3, ptr %10, align 1, !dbg !5790
  br label %for.inc, !dbg !5791

for.inc:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8, !dbg !5792
  %inc = add i64 %11, 1, !dbg !5792
  store i64 %inc, ptr %i, align 8, !dbg !5792
  %12 = load ptr, ptr %p, align 8, !dbg !5793
  %incdec.ptr = getelementptr i8, ptr %12, i32 1, !dbg !5793
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !5793
  %13 = load i64, ptr %count.addr, align 8, !dbg !5794
  %dec = add i64 %13, -1, !dbg !5794
  store i64 %dec, ptr %count.addr, align 8, !dbg !5794
  br label %for.cond, !dbg !5795, !llvm.loop !5796

for.end:                                          ; preds = %land.end
  %14 = load i64, ptr %i, align 8, !dbg !5798
  %15 = load ptr, ptr %ppos.addr, align 8, !dbg !5799
  store i64 %14, ptr %15, align 8, !dbg !5800
  %16 = load ptr, ptr %p, align 8, !dbg !5801
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !5802
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64, !dbg !5803
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64, !dbg !5803
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5803
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !5804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5804

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvram_size) #16, !dbg !5805
  %18 = load i64, ptr %retval, align 8, !dbg !5805
  ret i64 %18, !dbg !5805
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_get_size() #7 align 16 !dbg !5806 {
entry:
  %retval = alloca i64, align 8
  %0 = load ptr, ptr @arch_nvram_ops, align 8, !dbg !5807
  %tobool = icmp ne ptr %0, null, !dbg !5809
  br i1 %tobool, label %if.then, label %if.end, !dbg !5810

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @arch_nvram_ops, align 8, !dbg !5811
  %call = call i64 %1() #17, !dbg !5812
  store i64 %call, ptr %retval, align 8, !dbg !5813
  br label %return, !dbg !5813

if.end:                                           ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !5814
  br label %return, !dbg !5814

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !5815
  ret i64 %2, !dbg !5815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @nvram_read_byte(i32 noundef %addr) #7 align 16 !dbg !5816 {
entry:
  %retval = alloca i8, align 1
  %addr.addr = alloca i32, align 4
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  %0 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 1), align 8, !dbg !5820
  %tobool = icmp ne ptr %0, null, !dbg !5822
  br i1 %tobool, label %if.then, label %if.end, !dbg !5823

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 1), align 8, !dbg !5824
  %2 = load i32, ptr %addr.addr, align 4, !dbg !5825
  %call = call zeroext i8 %1(i32 noundef %2) #17, !dbg !5826
  store i8 %call, ptr %retval, align 1, !dbg !5827
  br label %return, !dbg !5827

if.end:                                           ; preds = %entry
  store i8 -1, ptr %retval, align 1, !dbg !5828
  br label %return, !dbg !5828

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1, !dbg !5829
  ret i8 %3, !dbg !5829
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !5830 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5834, metadata !DIExpression()), !dbg !5844
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5835, metadata !DIExpression()), !dbg !5845
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5836, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5837, metadata !DIExpression()), !dbg !5848
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5849
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5850
  %conv = trunc i64 %1 to i32, !dbg !5850
  store i32 %conv, ptr %sz, align 4, !dbg !5848
  %2 = load i32, ptr %sz, align 4, !dbg !5851
  %cmp = icmp sge i32 %2, 0, !dbg !5851
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5851

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5851
  %conv2 = sext i32 %3 to i64, !dbg !5851
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5851
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5851
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5853
  %lnot = xor i1 %5, true, !dbg !5851
  %lnot5 = xor i1 %lnot, true, !dbg !5851
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5851
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5851
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5851
  %tobool = icmp ne i64 %expval, 0, !dbg !5851
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5854

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5855
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5858
  br i1 %7, label %if.else, label %if.then7, !dbg !5859

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5860
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5861
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !5862
  br label %if.end11, !dbg !5862

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5863, !range !5702, !noundef !547
  %tobool8 = trunc i8 %10 to i1, !dbg !5863
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5865

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !5866, !srcloc !5867
  br label %if.end, !dbg !5866

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !5868, !srcloc !5869
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5870

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5838, metadata !DIExpression()), !dbg !5871
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5871
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5871
  %lnot15 = xor i1 %cmp13, true, !dbg !5871
  %lnot17 = xor i1 %lnot15, true, !dbg !5871
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5871
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5871
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5872
  %tobool19 = icmp ne i32 %12, 0, !dbg !5872
  %lnot20 = xor i1 %tobool19, true, !dbg !5872
  %lnot22 = xor i1 %lnot20, true, !dbg !5872
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5872
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5872
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5872
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5872
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5871

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5872

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5873
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5841, metadata !DIExpression()), !dbg !5873
  store i32 2307, ptr %__flags, align 4, !dbg !5873
  br label %do.body28, !dbg !5873

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5874

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5874

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5873

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5876
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #16, !dbg !5876, !srcloc !5878
  br label %do.cond30, !dbg !5876

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5876

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5873

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5879

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5879

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5872
  br label %do.cond35, !dbg !5873

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5873

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5873

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5871
  %tobool38 = icmp ne i32 %14, 0, !dbg !5871
  %lnot39 = xor i1 %tobool38, true, !dbg !5871
  %lnot41 = xor i1 %lnot39, true, !dbg !5871
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5871
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5871
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5871
  store i64 %expval44, ptr %tmp, align 8, !dbg !5872
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5881
  %15 = load i64, ptr %tmp, align 8, !dbg !5871
  %tobool45 = icmp ne i64 %15, 0, !dbg !5881
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5882

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5883

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5884
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5885
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5886, !range !5702, !noundef !547
  %tobool48 = trunc i8 %18 to i1, !dbg !5886
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !5887
  store i1 true, ptr %retval, align 1, !dbg !5888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5888

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !5889
  %19 = load i1, ptr %retval, align 1, !dbg !5889
  ret i1 %19, !dbg !5889
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5890 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !5891 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5895, metadata !DIExpression()), !dbg !5897
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5896, metadata !DIExpression()), !dbg !5898
  %0 = load i32, ptr %size.addr, align 4, !dbg !5899
  %1 = load i64, ptr %count.addr, align 8, !dbg !5901
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !5902
  ret void, !dbg !5903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5904 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5905 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !5906 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5910, metadata !DIExpression()), !dbg !5913
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5911, metadata !DIExpression()), !dbg !5914
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5912, metadata !DIExpression()), !dbg !5915
  ret void, !dbg !5916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5917 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5918 dso_local ptr @memdup_user(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !5922 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5929
  %1 = ptrtoint ptr %0 to i64, !dbg !5929
  %2 = inttoptr i64 %1 to ptr, !dbg !5929
  %3 = ptrtoint ptr %2 to i64, !dbg !5929
  %cmp = icmp uge i64 %3, -4095, !dbg !5929
  %lnot = xor i1 %cmp, true, !dbg !5929
  %lnot1 = xor i1 %lnot, true, !dbg !5929
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5929
  %conv = sext i32 %lnot.ext to i64, !dbg !5929
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5929
  %tobool = icmp ne i64 %expval, 0, !dbg !5929
  ret i1 %tobool, !dbg !5930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !5931 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5937
  %1 = ptrtoint ptr %0 to i64, !dbg !5938
  ret i64 %1, !dbg !5939
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_write(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #7 align 16 !dbg !5940 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5942, metadata !DIExpression()), !dbg !5945
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5943, metadata !DIExpression()), !dbg !5946
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5944, metadata !DIExpression()), !dbg !5947
  %0 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 4), align 8, !dbg !5948
  %tobool = icmp ne ptr %0, null, !dbg !5950
  br i1 %tobool, label %if.then, label %if.end, !dbg !5951

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 4), align 8, !dbg !5952
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5953
  %3 = load i64, ptr %count.addr, align 8, !dbg !5954
  %4 = load ptr, ptr %ppos.addr, align 8, !dbg !5955
  %call = call i64 %1(ptr noundef %2, i64 noundef %3, ptr noundef %4) #17, !dbg !5956
  store i64 %call, ptr %retval, align 8, !dbg !5957
  br label %return, !dbg !5957

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5958
  %6 = load i64, ptr %count.addr, align 8, !dbg !5959
  %7 = load ptr, ptr %ppos.addr, align 8, !dbg !5960
  %call1 = call i64 @nvram_write_bytes(ptr noundef %5, i64 noundef %6, ptr noundef %7) #17, !dbg !5961
  store i64 %call1, ptr %retval, align 8, !dbg !5962
  br label %return, !dbg !5962

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !5963
  ret i64 %8, !dbg !5963
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nvram_write_bytes(ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #7 align 16 !dbg !5964 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %nvram_size = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5966, metadata !DIExpression()), !dbg !5972
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5967, metadata !DIExpression()), !dbg !5973
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5968, metadata !DIExpression()), !dbg !5974
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvram_size) #16, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %nvram_size, metadata !5969, metadata !DIExpression()), !dbg !5976
  %call = call i64 @nvram_get_size() #17, !dbg !5977
  store i64 %call, ptr %nvram_size, align 8, !dbg !5976
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5970, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5971, metadata !DIExpression()), !dbg !5981
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5982
  store ptr %0, ptr %p, align 8, !dbg !5981
  %1 = load i64, ptr %nvram_size, align 8, !dbg !5983
  %cmp = icmp slt i64 %1, 0, !dbg !5985
  br i1 %cmp, label %if.then, label %if.end, !dbg !5986

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %nvram_size, align 8, !dbg !5987
  store i64 %2, ptr %retval, align 8, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ppos.addr, align 8, !dbg !5989
  %4 = load i64, ptr %3, align 8, !dbg !5991
  store i64 %4, ptr %i, align 8, !dbg !5992
  br label %for.cond, !dbg !5993

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %count.addr, align 8, !dbg !5994
  %cmp1 = icmp ugt i64 %5, 0, !dbg !5996
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5997

land.rhs:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8, !dbg !5998
  %7 = load i64, ptr %nvram_size, align 8, !dbg !5999
  %cmp2 = icmp slt i64 %6, %7, !dbg !6000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !6001
  br i1 %8, label %for.body, label %for.end, !dbg !6002

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr %p, align 8, !dbg !6003
  %10 = load i8, ptr %9, align 1, !dbg !6004
  %11 = load i64, ptr %i, align 8, !dbg !6005
  %conv = trunc i64 %11 to i32, !dbg !6005
  call void @nvram_write_byte(i8 noundef zeroext %10, i32 noundef %conv) #17, !dbg !6006
  br label %for.inc, !dbg !6006

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %i, align 8, !dbg !6007
  %inc = add i64 %12, 1, !dbg !6007
  store i64 %inc, ptr %i, align 8, !dbg !6007
  %13 = load ptr, ptr %p, align 8, !dbg !6008
  %incdec.ptr = getelementptr i8, ptr %13, i32 1, !dbg !6008
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !6008
  %14 = load i64, ptr %count.addr, align 8, !dbg !6009
  %dec = add i64 %14, -1, !dbg !6009
  store i64 %dec, ptr %count.addr, align 8, !dbg !6009
  br label %for.cond, !dbg !6010, !llvm.loop !6011

for.end:                                          ; preds = %land.end
  %15 = load i64, ptr %i, align 8, !dbg !6013
  %16 = load ptr, ptr %ppos.addr, align 8, !dbg !6014
  store i64 %15, ptr %16, align 8, !dbg !6015
  %17 = load ptr, ptr %p, align 8, !dbg !6016
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !6017
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !6018
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64, !dbg !6018
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6018
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !6019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6019

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvram_size) #16, !dbg !6020
  %19 = load i64, ptr %retval, align 8, !dbg !6020
  ret i64 %19, !dbg !6020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nvram_write_byte(i8 noundef zeroext %val, i32 noundef %addr) #7 align 16 !dbg !6021 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i32, align 4
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6023, metadata !DIExpression()), !dbg !6025
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  %0 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 2), align 8, !dbg !6027
  %tobool = icmp ne ptr %0, null, !dbg !6029
  br i1 %tobool, label %if.then, label %if.end, !dbg !6030

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvram_ops, ptr @arch_nvram_ops, i32 0, i32 2), align 8, !dbg !6031
  %2 = load i8, ptr %val.addr, align 1, !dbg !6032
  %3 = load i32, ptr %addr.addr, align 4, !dbg !6033
  call void %1(i8 noundef zeroext %2, i32 noundef %3) #17, !dbg !6034
  br label %if.end, !dbg !6034

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6035
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6036 dso_local zeroext i1 @capable(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6039 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6043 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !6044 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6046, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6048
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6048
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !6048
  ret void, !dbg !6049
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !6050 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6054
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6054
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !6054
  ret void, !dbg !6055
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6056 dso_local void @_raw_spin_lock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local void @_raw_spin_unlock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6058 dso_local i32 @misc_register(ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6061 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6065 dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nvram_proc_read(ptr noundef %seq, ptr noundef %offset) #0 align 16 !dbg !6068 {
entry:
  %seq.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %contents = alloca [114 x i8], align 16
  %i = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6070, metadata !DIExpression()), !dbg !6077
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6071, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 114, ptr %contents) #16, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %contents, metadata !6072, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6076, metadata !DIExpression()), !dbg !6082
  store i32 0, ptr %i, align 4, !dbg !6082
  call void @spin_lock_irq(ptr noundef @rtc_lock) #17, !dbg !6083
  store i32 0, ptr %i, align 4, !dbg !6084
  br label %for.cond, !dbg !6086

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6087
  %cmp = icmp slt i32 %0, 114, !dbg !6089
  br i1 %cmp, label %for.body, label %for.end, !dbg !6090

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6091
  %call = call zeroext i8 @__nvram_read_byte(i32 noundef %1) #17, !dbg !6092
  %2 = load i32, ptr %i, align 4, !dbg !6093
  %idxprom = sext i32 %2 to i64, !dbg !6094
  %arrayidx = getelementptr [114 x i8], ptr %contents, i64 0, i64 %idxprom, !dbg !6094
  store i8 %call, ptr %arrayidx, align 1, !dbg !6095
  br label %for.inc, !dbg !6094

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !6096
  %inc = add i32 %3, 1, !dbg !6096
  store i32 %inc, ptr %i, align 4, !dbg !6096
  br label %for.cond, !dbg !6097, !llvm.loop !6098

for.end:                                          ; preds = %for.cond
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !6100
  %arraydecay = getelementptr inbounds [114 x i8], ptr %contents, i64 0, i64 0, !dbg !6101
  %4 = load ptr, ptr %seq.addr, align 8, !dbg !6102
  %5 = load ptr, ptr %offset.addr, align 8, !dbg !6103
  call void @pc_nvram_proc_read(ptr noundef %arraydecay, ptr noundef %4, ptr noundef %5) #17, !dbg !6104
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6105
  call void @llvm.lifetime.end.p0(i64 114, ptr %contents) #16, !dbg !6105
  ret i32 0, !dbg !6106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pc_nvram_proc_read(ptr noundef %nvram, ptr noundef %seq, ptr noundef %offset) #0 align 16 !dbg !6107 {
entry:
  %nvram.addr = alloca ptr, align 8
  %seq.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %checksum = alloca i32, align 4
  %type = alloca i32, align 4
  store ptr %nvram, ptr %nvram.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nvram.addr, metadata !6112, metadata !DIExpression()), !dbg !6117
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6113, metadata !DIExpression()), !dbg !6118
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6114, metadata !DIExpression()), !dbg !6119
  call void @llvm.lifetime.start.p0(i64 4, ptr %checksum) #16, !dbg !6120
  call void @llvm.dbg.declare(metadata ptr %checksum, metadata !6115, metadata !DIExpression()), !dbg !6121
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #16, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6116, metadata !DIExpression()), !dbg !6123
  call void @spin_lock_irq(ptr noundef @rtc_lock) #17, !dbg !6124
  %call = call i32 @__nvram_check_checksum() #17, !dbg !6125
  store i32 %call, ptr %checksum, align 4, !dbg !6126
  call void @spin_unlock_irq(ptr noundef @rtc_lock) #17, !dbg !6127
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !6128
  %1 = load i32, ptr %checksum, align 4, !dbg !6129
  %tobool = icmp ne i32 %1, 0, !dbg !6129
  %2 = zext i1 %tobool to i64, !dbg !6129
  %cond = select i1 %tobool, ptr @.str.8, ptr @.str.9, !dbg !6129
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.7, ptr noundef %cond) #17, !dbg !6130
  %3 = load ptr, ptr %seq.addr, align 8, !dbg !6131
  %4 = load ptr, ptr %nvram.addr, align 8, !dbg !6132
  %arrayidx = getelementptr i8, ptr %4, i64 6, !dbg !6132
  %5 = load i8, ptr %arrayidx, align 1, !dbg !6132
  %conv = zext i8 %5 to i32, !dbg !6132
  %and = and i32 %conv, 1, !dbg !6133
  %tobool1 = icmp ne i32 %and, 0, !dbg !6133
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !6134

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %nvram.addr, align 8, !dbg !6135
  %arrayidx2 = getelementptr i8, ptr %6, i64 6, !dbg !6135
  %7 = load i8, ptr %arrayidx2, align 1, !dbg !6135
  %conv3 = zext i8 %7 to i32, !dbg !6135
  %shr = ashr i32 %conv3, 6, !dbg !6136
  %add = add i32 %shr, 1, !dbg !6137
  br label %cond.end, !dbg !6134

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %add, %cond.true ], [ 0, %cond.false ], !dbg !6134
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.10, i32 noundef %cond4) #17, !dbg !6138
  %8 = load ptr, ptr %seq.addr, align 8, !dbg !6139
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef @.str.11) #17, !dbg !6140
  %9 = load ptr, ptr %nvram.addr, align 8, !dbg !6141
  %arrayidx5 = getelementptr i8, ptr %9, i64 2, !dbg !6141
  %10 = load i8, ptr %arrayidx5, align 1, !dbg !6141
  %conv6 = zext i8 %10 to i32, !dbg !6141
  %shr7 = ashr i32 %conv6, 4, !dbg !6142
  store i32 %shr7, ptr %type, align 4, !dbg !6143
  %11 = load i32, ptr %type, align 4, !dbg !6144
  %conv8 = sext i32 %11 to i64, !dbg !6144
  %cmp = icmp ult i64 %conv8, 7, !dbg !6146
  br i1 %cmp, label %if.then, label %if.else, !dbg !6147

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %seq.addr, align 8, !dbg !6148
  %13 = load i32, ptr %type, align 4, !dbg !6149
  %idxprom = sext i32 %13 to i64, !dbg !6150
  %arrayidx10 = getelementptr [7 x ptr], ptr @floppy_types, i64 0, i64 %idxprom, !dbg !6150
  %14 = load ptr, ptr %arrayidx10, align 8, !dbg !6150
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef @.str.12, ptr noundef %14) #17, !dbg !6151
  br label %if.end, !dbg !6151

if.else:                                          ; preds = %cond.end
  %15 = load ptr, ptr %seq.addr, align 8, !dbg !6152
  %16 = load i32, ptr %type, align 4, !dbg !6153
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef @.str.13, i32 noundef %16) #17, !dbg !6154
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %seq.addr, align 8, !dbg !6155
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef @.str.14) #17, !dbg !6156
  %18 = load ptr, ptr %nvram.addr, align 8, !dbg !6157
  %arrayidx11 = getelementptr i8, ptr %18, i64 2, !dbg !6157
  %19 = load i8, ptr %arrayidx11, align 1, !dbg !6157
  %conv12 = zext i8 %19 to i32, !dbg !6157
  %and13 = and i32 %conv12, 15, !dbg !6158
  store i32 %and13, ptr %type, align 4, !dbg !6159
  %20 = load i32, ptr %type, align 4, !dbg !6160
  %conv14 = sext i32 %20 to i64, !dbg !6160
  %cmp15 = icmp ult i64 %conv14, 7, !dbg !6162
  br i1 %cmp15, label %if.then17, label %if.else20, !dbg !6163

if.then17:                                        ; preds = %if.end
  %21 = load ptr, ptr %seq.addr, align 8, !dbg !6164
  %22 = load i32, ptr %type, align 4, !dbg !6165
  %idxprom18 = sext i32 %22 to i64, !dbg !6166
  %arrayidx19 = getelementptr [7 x ptr], ptr @floppy_types, i64 0, i64 %idxprom18, !dbg !6166
  %23 = load ptr, ptr %arrayidx19, align 8, !dbg !6166
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.12, ptr noundef %23) #17, !dbg !6167
  br label %if.end21, !dbg !6167

if.else20:                                        ; preds = %if.end
  %24 = load ptr, ptr %seq.addr, align 8, !dbg !6168
  %25 = load i32, ptr %type, align 4, !dbg !6169
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef @.str.13, i32 noundef %25) #17, !dbg !6170
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then17
  %26 = load ptr, ptr %seq.addr, align 8, !dbg !6171
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef @.str.15) #17, !dbg !6172
  %27 = load ptr, ptr %nvram.addr, align 8, !dbg !6173
  %arrayidx22 = getelementptr i8, ptr %27, i64 4, !dbg !6173
  %28 = load i8, ptr %arrayidx22, align 1, !dbg !6173
  %conv23 = zext i8 %28 to i32, !dbg !6173
  %shr24 = ashr i32 %conv23, 4, !dbg !6174
  store i32 %shr24, ptr %type, align 4, !dbg !6175
  %29 = load i32, ptr %type, align 4, !dbg !6176
  %tobool25 = icmp ne i32 %29, 0, !dbg !6176
  br i1 %tobool25, label %if.then26, label %if.else35, !dbg !6178

if.then26:                                        ; preds = %if.end21
  %30 = load ptr, ptr %seq.addr, align 8, !dbg !6179
  %31 = load i32, ptr %type, align 4, !dbg !6180
  %cmp27 = icmp eq i32 %31, 15, !dbg !6181
  br i1 %cmp27, label %cond.true29, label %cond.false32, !dbg !6180

cond.true29:                                      ; preds = %if.then26
  %32 = load ptr, ptr %nvram.addr, align 8, !dbg !6182
  %arrayidx30 = getelementptr i8, ptr %32, i64 11, !dbg !6182
  %33 = load i8, ptr %arrayidx30, align 1, !dbg !6182
  %conv31 = zext i8 %33 to i32, !dbg !6182
  br label %cond.end33, !dbg !6180

cond.false32:                                     ; preds = %if.then26
  %34 = load i32, ptr %type, align 4, !dbg !6183
  br label %cond.end33, !dbg !6180

cond.end33:                                       ; preds = %cond.false32, %cond.true29
  %cond34 = phi i32 [ %conv31, %cond.true29 ], [ %34, %cond.false32 ], !dbg !6180
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef @.str.16, i32 noundef %cond34) #17, !dbg !6184
  br label %if.end36, !dbg !6184

if.else35:                                        ; preds = %if.end21
  %35 = load ptr, ptr %seq.addr, align 8, !dbg !6185
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef @.str.17) #17, !dbg !6186
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %cond.end33
  %36 = load ptr, ptr %seq.addr, align 8, !dbg !6187
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef @.str.18) #17, !dbg !6188
  %37 = load ptr, ptr %nvram.addr, align 8, !dbg !6189
  %arrayidx37 = getelementptr i8, ptr %37, i64 4, !dbg !6189
  %38 = load i8, ptr %arrayidx37, align 1, !dbg !6189
  %conv38 = zext i8 %38 to i32, !dbg !6189
  %and39 = and i32 %conv38, 15, !dbg !6190
  store i32 %and39, ptr %type, align 4, !dbg !6191
  %39 = load i32, ptr %type, align 4, !dbg !6192
  %tobool40 = icmp ne i32 %39, 0, !dbg !6192
  br i1 %tobool40, label %if.then41, label %if.else50, !dbg !6194

if.then41:                                        ; preds = %if.end36
  %40 = load ptr, ptr %seq.addr, align 8, !dbg !6195
  %41 = load i32, ptr %type, align 4, !dbg !6196
  %cmp42 = icmp eq i32 %41, 15, !dbg !6197
  br i1 %cmp42, label %cond.true44, label %cond.false47, !dbg !6196

cond.true44:                                      ; preds = %if.then41
  %42 = load ptr, ptr %nvram.addr, align 8, !dbg !6198
  %arrayidx45 = getelementptr i8, ptr %42, i64 12, !dbg !6198
  %43 = load i8, ptr %arrayidx45, align 1, !dbg !6198
  %conv46 = zext i8 %43 to i32, !dbg !6198
  br label %cond.end48, !dbg !6196

cond.false47:                                     ; preds = %if.then41
  %44 = load i32, ptr %type, align 4, !dbg !6199
  br label %cond.end48, !dbg !6196

cond.end48:                                       ; preds = %cond.false47, %cond.true44
  %cond49 = phi i32 [ %conv46, %cond.true44 ], [ %44, %cond.false47 ], !dbg !6196
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef @.str.16, i32 noundef %cond49) #17, !dbg !6200
  br label %if.end51, !dbg !6200

if.else50:                                        ; preds = %if.end36
  %45 = load ptr, ptr %seq.addr, align 8, !dbg !6201
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef @.str.17) #17, !dbg !6202
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %cond.end48
  %46 = load ptr, ptr %seq.addr, align 8, !dbg !6203
  %47 = load ptr, ptr %nvram.addr, align 8, !dbg !6204
  %arrayidx52 = getelementptr i8, ptr %47, i64 18, !dbg !6204
  %48 = load i8, ptr %arrayidx52, align 1, !dbg !6204
  %conv53 = zext i8 %48 to i32, !dbg !6204
  %49 = load ptr, ptr %nvram.addr, align 8, !dbg !6205
  %arrayidx54 = getelementptr i8, ptr %49, i64 19, !dbg !6205
  %50 = load i8, ptr %arrayidx54, align 1, !dbg !6205
  %conv55 = zext i8 %50 to i32, !dbg !6205
  %shl = shl i32 %conv55, 8, !dbg !6206
  %or = or i32 %conv53, %shl, !dbg !6207
  %51 = load ptr, ptr %nvram.addr, align 8, !dbg !6208
  %arrayidx56 = getelementptr i8, ptr %51, i64 20, !dbg !6208
  %52 = load i8, ptr %arrayidx56, align 1, !dbg !6208
  %conv57 = zext i8 %52 to i32, !dbg !6208
  %53 = load ptr, ptr %nvram.addr, align 8, !dbg !6209
  %arrayidx58 = getelementptr i8, ptr %53, i64 25, !dbg !6209
  %54 = load i8, ptr %arrayidx58, align 1, !dbg !6209
  %conv59 = zext i8 %54 to i32, !dbg !6209
  %55 = load ptr, ptr %nvram.addr, align 8, !dbg !6210
  %arrayidx60 = getelementptr i8, ptr %55, i64 21, !dbg !6210
  %56 = load i8, ptr %arrayidx60, align 1, !dbg !6210
  %conv61 = zext i8 %56 to i32, !dbg !6210
  %57 = load ptr, ptr %nvram.addr, align 8, !dbg !6211
  %arrayidx62 = getelementptr i8, ptr %57, i64 22, !dbg !6211
  %58 = load i8, ptr %arrayidx62, align 1, !dbg !6211
  %conv63 = zext i8 %58 to i32, !dbg !6211
  %shl64 = shl i32 %conv63, 8, !dbg !6212
  %or65 = or i32 %conv61, %shl64, !dbg !6213
  %59 = load ptr, ptr %nvram.addr, align 8, !dbg !6214
  %arrayidx66 = getelementptr i8, ptr %59, i64 23, !dbg !6214
  %60 = load i8, ptr %arrayidx66, align 1, !dbg !6214
  %conv67 = zext i8 %60 to i32, !dbg !6214
  %61 = load ptr, ptr %nvram.addr, align 8, !dbg !6215
  %arrayidx68 = getelementptr i8, ptr %61, i64 24, !dbg !6215
  %62 = load i8, ptr %arrayidx68, align 1, !dbg !6215
  %conv69 = zext i8 %62 to i32, !dbg !6215
  %shl70 = shl i32 %conv69, 8, !dbg !6216
  %or71 = or i32 %conv67, %shl70, !dbg !6217
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef @.str.19, i32 noundef %or, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %or65, i32 noundef %or71) #17, !dbg !6218
  %63 = load ptr, ptr %seq.addr, align 8, !dbg !6219
  %64 = load ptr, ptr %nvram.addr, align 8, !dbg !6220
  %arrayidx72 = getelementptr i8, ptr %64, i64 39, !dbg !6220
  %65 = load i8, ptr %arrayidx72, align 1, !dbg !6220
  %conv73 = zext i8 %65 to i32, !dbg !6220
  %66 = load ptr, ptr %nvram.addr, align 8, !dbg !6221
  %arrayidx74 = getelementptr i8, ptr %66, i64 40, !dbg !6221
  %67 = load i8, ptr %arrayidx74, align 1, !dbg !6221
  %conv75 = zext i8 %67 to i32, !dbg !6221
  %shl76 = shl i32 %conv75, 8, !dbg !6222
  %or77 = or i32 %conv73, %shl76, !dbg !6223
  %68 = load ptr, ptr %nvram.addr, align 8, !dbg !6224
  %arrayidx78 = getelementptr i8, ptr %68, i64 41, !dbg !6224
  %69 = load i8, ptr %arrayidx78, align 1, !dbg !6224
  %conv79 = zext i8 %69 to i32, !dbg !6224
  %70 = load ptr, ptr %nvram.addr, align 8, !dbg !6225
  %arrayidx80 = getelementptr i8, ptr %70, i64 46, !dbg !6225
  %71 = load i8, ptr %arrayidx80, align 1, !dbg !6225
  %conv81 = zext i8 %71 to i32, !dbg !6225
  %72 = load ptr, ptr %nvram.addr, align 8, !dbg !6226
  %arrayidx82 = getelementptr i8, ptr %72, i64 42, !dbg !6226
  %73 = load i8, ptr %arrayidx82, align 1, !dbg !6226
  %conv83 = zext i8 %73 to i32, !dbg !6226
  %74 = load ptr, ptr %nvram.addr, align 8, !dbg !6227
  %arrayidx84 = getelementptr i8, ptr %74, i64 43, !dbg !6227
  %75 = load i8, ptr %arrayidx84, align 1, !dbg !6227
  %conv85 = zext i8 %75 to i32, !dbg !6227
  %shl86 = shl i32 %conv85, 8, !dbg !6228
  %or87 = or i32 %conv83, %shl86, !dbg !6229
  %76 = load ptr, ptr %nvram.addr, align 8, !dbg !6230
  %arrayidx88 = getelementptr i8, ptr %76, i64 44, !dbg !6230
  %77 = load i8, ptr %arrayidx88, align 1, !dbg !6230
  %conv89 = zext i8 %77 to i32, !dbg !6230
  %78 = load ptr, ptr %nvram.addr, align 8, !dbg !6231
  %arrayidx90 = getelementptr i8, ptr %78, i64 45, !dbg !6231
  %79 = load i8, ptr %arrayidx90, align 1, !dbg !6231
  %conv91 = zext i8 %79 to i32, !dbg !6231
  %shl92 = shl i32 %conv91, 8, !dbg !6232
  %or93 = or i32 %conv89, %shl92, !dbg !6233
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef @.str.20, i32 noundef %or77, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %or87, i32 noundef %or93) #17, !dbg !6234
  %80 = load ptr, ptr %seq.addr, align 8, !dbg !6235
  %81 = load ptr, ptr %nvram.addr, align 8, !dbg !6236
  %arrayidx94 = getelementptr i8, ptr %81, i64 7, !dbg !6236
  %82 = load i8, ptr %arrayidx94, align 1, !dbg !6236
  %conv95 = zext i8 %82 to i32, !dbg !6236
  %83 = load ptr, ptr %nvram.addr, align 8, !dbg !6237
  %arrayidx96 = getelementptr i8, ptr %83, i64 8, !dbg !6237
  %84 = load i8, ptr %arrayidx96, align 1, !dbg !6237
  %conv97 = zext i8 %84 to i32, !dbg !6237
  %shl98 = shl i32 %conv97, 8, !dbg !6238
  %or99 = or i32 %conv95, %shl98, !dbg !6239
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %80, ptr noundef @.str.21, i32 noundef %or99) #17, !dbg !6240
  %85 = load ptr, ptr %seq.addr, align 8, !dbg !6241
  %86 = load ptr, ptr %nvram.addr, align 8, !dbg !6242
  %arrayidx100 = getelementptr i8, ptr %86, i64 9, !dbg !6242
  %87 = load i8, ptr %arrayidx100, align 1, !dbg !6242
  %conv101 = zext i8 %87 to i32, !dbg !6242
  %88 = load ptr, ptr %nvram.addr, align 8, !dbg !6243
  %arrayidx102 = getelementptr i8, ptr %88, i64 10, !dbg !6243
  %89 = load i8, ptr %arrayidx102, align 1, !dbg !6243
  %conv103 = zext i8 %89 to i32, !dbg !6243
  %shl104 = shl i32 %conv103, 8, !dbg !6244
  %or105 = or i32 %conv101, %shl104, !dbg !6245
  %90 = load ptr, ptr %nvram.addr, align 8, !dbg !6246
  %arrayidx106 = getelementptr i8, ptr %90, i64 34, !dbg !6246
  %91 = load i8, ptr %arrayidx106, align 1, !dbg !6246
  %conv107 = zext i8 %91 to i32, !dbg !6246
  %92 = load ptr, ptr %nvram.addr, align 8, !dbg !6247
  %arrayidx108 = getelementptr i8, ptr %92, i64 35, !dbg !6247
  %93 = load i8, ptr %arrayidx108, align 1, !dbg !6247
  %conv109 = zext i8 %93 to i32, !dbg !6247
  %shl110 = shl i32 %conv109, 8, !dbg !6248
  %or111 = or i32 %conv107, %shl110, !dbg !6249
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef @.str.22, i32 noundef %or105, i32 noundef %or111) #17, !dbg !6250
  %94 = load ptr, ptr %seq.addr, align 8, !dbg !6251
  %95 = load ptr, ptr %nvram.addr, align 8, !dbg !6252
  %arrayidx112 = getelementptr i8, ptr %95, i64 6, !dbg !6252
  %96 = load i8, ptr %arrayidx112, align 1, !dbg !6252
  %conv113 = zext i8 %96 to i32, !dbg !6252
  %shr114 = ashr i32 %conv113, 4, !dbg !6253
  %and115 = and i32 %shr114, 3, !dbg !6254
  %idxprom116 = sext i32 %and115 to i64, !dbg !6255
  %arrayidx117 = getelementptr [4 x ptr], ptr @gfx_types, i64 0, i64 %idxprom116, !dbg !6255
  %97 = load ptr, ptr %arrayidx117, align 8, !dbg !6255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %94, ptr noundef @.str.23, ptr noundef %97) #17, !dbg !6256
  %98 = load ptr, ptr %seq.addr, align 8, !dbg !6257
  %99 = load ptr, ptr %nvram.addr, align 8, !dbg !6258
  %arrayidx118 = getelementptr i8, ptr %99, i64 6, !dbg !6258
  %100 = load i8, ptr %arrayidx118, align 1, !dbg !6258
  %conv119 = zext i8 %100 to i32, !dbg !6258
  %and120 = and i32 %conv119, 2, !dbg !6259
  %tobool121 = icmp ne i32 %and120, 0, !dbg !6260
  %101 = zext i1 %tobool121 to i64, !dbg !6260
  %cond122 = select i1 %tobool121, ptr @.str.8, ptr @.str.9, !dbg !6260
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %98, ptr noundef @.str.24, ptr noundef %cond122) #17, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #16, !dbg !6262
  call void @llvm.lifetime.end.p0(i64 4, ptr %checksum) #16, !dbg !6262
  ret void, !dbg !6262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6263 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826}
!llvm.ident = !{!4827}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arch_nvram_ops", scope: !2, file: !3, line: 206, type: !4793, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/char/.nvram.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/char/nvram\22 -D KBUILD_BASENAME=\22nvram\22 -D KBUILD_MODNAME=\22nvram\22 -D __KBUILD_MODNAME=kmod_nvram -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/char/nvram.ll drivers/char/nvram.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4176, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/nvram.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c4dccd47f59150b3fd558e6a22febf1")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !51, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
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
!156 = !{!157, !158, !504, !506, !310, !1466, !313, !109, !299, !697}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !160)
!160 = !{!161, !162, !169, !174, !3852, !3878, !3879, !3880, !3881, !3885, !3888, !3889, !3890, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3957, !3961, !3979, !3996, !3997, !3998, !3999, !4008, !4031, !4032, !4035, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4049, !4050, !4136, !4144, !4145, !4146, !4148, !4152, !4153, !4157, !4158, !4159, !4160, !4162, !4163, !4164, !4171, !4172, !4173, !4175}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !159, file: !6, line: 403, baseType: !5, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !159, file: !6, line: 406, baseType: !163, size: 128, offset: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !164, line: 190, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 191, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !164, line: 191, baseType: !167, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !6, line: 409, baseType: !170, size: 448, offset: 192)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 448, elements: !172)
!171 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !{!173}
!173 = !DISubrange(count: 56)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !159, file: !6, line: 417, baseType: !175, size: 768, offset: 640)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !176)
!176 = !{!177, !3846, !3847, !3848, !3851}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !175, file: !6, line: 46, baseType: !178, size: 512)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !179, line: 64, size: 512, elements: !180)
!179 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!180 = !{!181, !184, !185, !187, !276, !3745, !3836, !3841, !3842, !3843, !3844, !3845}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 65, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !178, file: !179, line: 66, baseType: !163, size: 128, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !179, line: 67, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !178, file: !179, line: 68, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !179, line: 168, size: 768, elements: !190)
!190 = !{!191, !192, !235, !236}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !189, file: !179, line: 169, baseType: !163, size: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !189, file: !179, line: 170, baseType: !193, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !194, line: 29, baseType: !195)
!194 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !194, line: 17, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !195, file: !194, line: 18, baseType: !198, size: 32)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !195, file: !194, line: 18, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !198, file: !194, line: 19, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !202, line: 14, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !201, file: !202, line: 15, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !206, line: 44, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !206, line: 14, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 15, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 15, size: 32, elements: !211)
!211 = !{!212, !217, !227}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !210, file: !206, line: 16, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !164, line: 174, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 172, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !214, file: !164, line: 173, baseType: !109, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !206, line: 24, baseType: !218, size: 16)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !206, line: 24, size: 16, elements: !219)
!219 = !{!220, !226}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !218, file: !206, line: 25, baseType: !221, size: 8)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !222, line: 17, baseType: !223)
!222 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !224, line: 21, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!225 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !218, file: !206, line: 26, baseType: !221, size: 8, offset: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !206, line: 28, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !206, line: 28, size: 32, elements: !229)
!229 = !{!230, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !228, file: !206, line: 29, baseType: !231, size: 16)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !222, line: 19, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !224, line: 24, baseType: !233)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !228, file: !206, line: 30, baseType: !231, size: 16, offset: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !189, file: !179, line: 171, baseType: !178, size: 512, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !189, file: !179, line: 172, baseType: !237, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !179, line: 133, size: 192, elements: !240)
!240 = !{!241, !248, !253}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !239, file: !179, line: 134, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!109, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !179, line: 135, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!182, !246}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !239, file: !179, line: 136, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!109, !246, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !179, line: 125, size: 20736, elements: !260)
!260 = !{!261, !266, !270, !271, !275}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !259, file: !179, line: 126, baseType: !262, size: 192)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 192, elements: !264)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!264 = !{!265}
!265 = !DISubrange(count: 3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !259, file: !179, line: 127, baseType: !267, size: 4096, offset: 192)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 4096, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !259, file: !179, line: 128, baseType: !109, size: 32, offset: 4288)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !259, file: !179, line: 129, baseType: !272, size: 16384, offset: 4320)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 16384, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !259, file: !179, line: 130, baseType: !109, size: 32, offset: 20704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !178, file: !179, line: 69, baseType: !277, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !179, line: 116, size: 384, elements: !280)
!280 = !{!281, !285, !314, !3707, !3735, !3739}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !279, file: !179, line: 117, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !186}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !279, file: !179, line: 118, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !289, line: 254, size: 128, elements: !290)
!289 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!290 = !{!291, !306}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !288, file: !289, line: 255, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !186, !300, !263}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !164, line: 66, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !297, line: 73, baseType: !298)
!297 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !297, line: 15, baseType: !299)
!299 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !289, line: 30, size: 128, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !289, line: 31, baseType: !182, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !301, file: !289, line: 32, baseType: !305, size: 16, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !164, line: 24, baseType: !233)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !288, file: !289, line: 256, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!295, !186, !300, !182, !310}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 61, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !297, line: 72, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !297, line: 16, baseType: !313)
!313 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !279, file: !179, line: 119, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !289, line: 84, size: 320, elements: !319)
!319 = !{!320, !321, !325, !3703, !3705}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !289, line: 85, baseType: !182, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !318, file: !289, line: 86, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!305, !186, !300, !109}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !318, file: !289, line: 88, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!305, !186, !329, !109}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !289, line: 175, size: 512, elements: !331)
!331 = !{!332, !333, !334, !335, !3694, !3698, !3699}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !330, file: !289, line: 176, baseType: !301, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !330, file: !289, line: 177, baseType: !310, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !330, file: !289, line: 178, baseType: !157, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !330, file: !289, line: 179, baseType: !336, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !341)
!341 = !{!342, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3688, !3689, !3690, !3691, !3692, !3693}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !340, file: !14, line: 473, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !345)
!345 = !{!346, !347, !348, !356, !357, !364, !365, !368, !369, !3515, !3516, !3517, !3518, !3519, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3559, !3562, !3563, !3564, !3581, !3582, !3583, !3584}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !344, file: !14, line: 642, baseType: !305, size: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !344, file: !14, line: 643, baseType: !233, size: 16, offset: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !344, file: !14, line: 644, baseType: !349, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !350, line: 23, baseType: !351)
!350 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 21, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !351, file: !350, line: 22, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !164, line: 37, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !297, line: 49, baseType: !7)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !344, file: !14, line: 645, baseType: !163, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !344, file: !14, line: 646, baseType: !358, size: 32, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !350, line: 28, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 26, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !350, line: 27, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !164, line: 38, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !297, line: 50, baseType: !7)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !344, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !344, file: !14, line: 650, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !344, file: !14, line: 651, baseType: !366, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !344, file: !14, line: 654, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !373)
!373 = !{!374, !3340, !3353, !3357, !3361, !3365, !3369, !3373, !3377, !3381, !3385, !3386, !3390, !3394, !3431, !3460, !3464, !3470, !3474, !3478, !3482, !3486, !3490, !3496, !3500}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !372, file: !14, line: 1967, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !343, !378, !7}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !380, line: 82, size: 1536, elements: !381)
!380 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!381 = !{!382, !383, !393, !401, !402, !422, !423, !427, !440, !3324, !3325, !3326, !3327, !3332, !3333, !3334}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !379, file: !380, line: 84, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !379, file: !380, line: 85, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !385, line: 275, baseType: !386)
!385 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !385, line: 275, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !386, file: !385, line: 275, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !385, line: 69, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !385, line: 64, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !390, file: !385, line: 65, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !379, file: !380, line: 86, baseType: !394, size: 128, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !395, line: 38, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 39, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !394, file: !395, line: 39, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !379, file: !380, line: 87, baseType: !378, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !379, file: !380, line: 88, baseType: !403, size: 128, offset: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !380, line: 49, size: 128, elements: !404)
!404 = !{!405, !419}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !380, line: 50, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !380, line: 50, size: 64, elements: !407)
!407 = !{!408, !415}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !380, line: 51, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !380, line: 51, size: 64, elements: !410)
!410 = !{!411, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !409, file: !380, line: 52, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !222, line: 21, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !224, line: 27, baseType: !7)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !409, file: !380, line: 52, baseType: !412, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !406, file: !380, line: 54, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !222, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !224, line: 31, baseType: !418)
!418 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !380, line: 56, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !379, file: !380, line: 89, baseType: !343, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !379, file: !380, line: 91, baseType: !424, size: 256, offset: 448)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !379, file: !380, line: 94, baseType: !428, size: 64, offset: 704)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !429, line: 25, size: 64, elements: !430)
!429 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 26, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 26, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !432, file: !429, line: 28, baseType: !417, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !429, line: 30, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !429, line: 30, size: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !429, line: 31, baseType: !193, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !429, line: 32, baseType: !109, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !379, file: !380, line: 95, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !380, line: 128, size: 1024, align: 512, elements: !444)
!444 = !{!445, !449, !450, !457, !463, !467, !471, !475, !476, !480, !484, !3314, !3318}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !443, file: !380, line: 129, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!109, !378, !7}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !443, file: !380, line: 130, baseType: !446, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !380, line: 131, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!109, !454, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !443, file: !380, line: 132, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!109, !454, !7, !182, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !443, file: !380, line: 134, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!109, !454}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !443, file: !380, line: 135, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!109, !378}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !443, file: !380, line: 136, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !378}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !443, file: !380, line: 137, baseType: !472, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !443, file: !380, line: 138, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !378, !343}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !443, file: !380, line: 139, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!263, !378, !263, !109}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !443, file: !380, line: 140, baseType: !485, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !3313}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !490, line: 70, size: 256, elements: !491)
!490 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!491 = !{!492, !493, !3309, !3310}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !489, file: !490, line: 71, baseType: !378, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !489, file: !490, line: 72, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !496)
!496 = !{!497, !498, !501, !502, !503, !507, !556, !1798, !1838, !1923, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1940, !1944, !1945, !1948, !1951, !1954, !1957, !1958, !1959, !2000, !3240, !3241, !3242, !3243, !3244, !3245, !3248, !3250, !3257, !3258, !3259, !3260, !3261, !3276, !3277, !3278, !3279, !3280, !3283, !3284, !3285, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !495, file: !14, line: 1191, baseType: !163, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !495, file: !14, line: 1192, baseType: !499, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !164, line: 21, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !164, line: 18, baseType: !412)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !495, file: !14, line: 1193, baseType: !225, size: 8, offset: 160)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !495, file: !14, line: 1194, baseType: !313, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !495, file: !14, line: 1195, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !164, line: 52, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !297, line: 88, baseType: !506)
!506 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !495, file: !14, line: 1196, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !510)
!510 = !{!511, !512, !513, !520, !524, !528, !532, !533, !534, !544, !548, !549, !550, !552, !553, !554, !555}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !14, line: 2367, baseType: !182, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !509, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !509, file: !14, line: 2376, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!109, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !519, line: 32, flags: DIFlagFwdDecl)
!519 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !509, file: !14, line: 2377, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !509, file: !14, line: 2378, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!378, !508, !109, !182, !157}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !509, file: !14, line: 2380, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !494}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !509, file: !14, line: 2381, baseType: !158, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !14, line: 2382, baseType: !508, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !509, file: !14, line: 2383, baseType: !535, size: 64, offset: 512)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !164, line: 194, size: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !535, file: !164, line: 195, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !164, line: 198, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !164, line: 199, baseType: !538, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !539, file: !164, line: 199, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !509, file: !14, line: 2385, baseType: !545, offset: 576)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !546, line: 206, elements: !547)
!546 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!547 = !{}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !509, file: !14, line: 2386, baseType: !545, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !509, file: !14, line: 2387, baseType: !545, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !509, file: !14, line: 2388, baseType: !551, offset: 576)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !264)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !509, file: !14, line: 2390, baseType: !545, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !509, file: !14, line: 2391, baseType: !545, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !509, file: !14, line: 2392, baseType: !545, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !509, file: !14, line: 2393, baseType: !545, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !495, file: !14, line: 1197, baseType: !557, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !560)
!560 = !{!561, !565, !569, !570, !574, !580, !584, !585, !586, !590, !594, !598, !599, !600, !606, !611, !612, !1723, !1724, !1725, !1726, !1730, !1734, !1781, !1796, !1797}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !559, file: !14, line: 2058, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!343, !494}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !559, file: !14, line: 2059, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !343}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !559, file: !14, line: 2060, baseType: !566, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !559, file: !14, line: 2062, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !343, !109}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !559, file: !14, line: 2063, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!109, !343, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !559, file: !14, line: 2064, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!109, !343}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !559, file: !14, line: 2065, baseType: !566, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !559, file: !14, line: 2066, baseType: !529, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !559, file: !14, line: 2067, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!109, !494, !109}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !559, file: !14, line: 2068, baseType: !591, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!109, !494, !13}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !559, file: !14, line: 2069, baseType: !595, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!109, !494}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !559, file: !14, line: 2070, baseType: !591, size: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !559, file: !14, line: 2071, baseType: !595, size: 64, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !559, file: !14, line: 2072, baseType: !601, size: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!109, !378, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !559, file: !14, line: 2073, baseType: !607, size: 64, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!109, !494, !610, !263}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !559, file: !14, line: 2074, baseType: !529, size: 64, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !559, file: !14, line: 2076, baseType: !613, size: 64, offset: 1024)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!109, !616, !378}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !618, line: 17, size: 960, elements: !619)
!618 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !648, !670, !671, !1722}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !617, file: !618, line: 18, baseType: !263, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !617, file: !618, line: 19, baseType: !310, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !617, file: !618, line: 20, baseType: !310, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !617, file: !618, line: 21, baseType: !310, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !617, file: !618, line: 22, baseType: !310, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !617, file: !618, line: 23, baseType: !504, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !617, file: !618, line: 24, baseType: !504, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !617, file: !618, line: 25, baseType: !628, size: 256, offset: 448)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !629, line: 66, size: 256, elements: !630)
!629 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!630 = !{!631, !640, !642, !647}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !628, file: !629, line: 67, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !633, line: 13, baseType: !634)
!633 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !164, line: 181, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 179, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !635, file: !164, line: 180, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !222, line: 22, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !224, line: 30, baseType: !506)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !628, file: !629, line: 68, baseType: !641, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !202, line: 23, baseType: !201)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !628, file: !629, line: 70, baseType: !643, size: 32, offset: 96)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !644, line: 15, size: 32, elements: !645)
!644 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !643, file: !644, line: 20, baseType: !213, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !628, file: !629, line: 72, baseType: !163, size: 128, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !617, file: !618, line: 26, baseType: !649, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !618, line: 32, size: 256, elements: !652)
!652 = !{!653, !658, !662, !666}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !651, file: !618, line: 33, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!157, !616, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !651, file: !618, line: 34, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !616, !157}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !618, line: 35, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!157, !616, !157, !657}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !651, file: !618, line: 36, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!109, !616, !157}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !617, file: !618, line: 27, baseType: !109, size: 32, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !617, file: !618, line: 28, baseType: !672, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !675)
!675 = !{!676, !695, !696, !698, !699, !700, !701, !702, !765, !977, !986, !992, !993, !1712, !1713, !1714, !1715, !1717, !1718, !1721}
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !14, line: 995, baseType: !677, size: 128)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !14, line: 995, size: 128, elements: !678)
!678 = !{!679, !685, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !677, file: !14, line: 996, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !681, line: 60, size: 64, elements: !682)
!681 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !681, line: 61, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !677, file: !14, line: 997, baseType: !686, size: 128, align: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !164, line: 232, size: 128, align: 64, elements: !687)
!687 = !{!688, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !686, file: !164, line: 233, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !686, file: !164, line: 234, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !689}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !677, file: !14, line: 998, baseType: !7, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !674, file: !14, line: 1005, baseType: !193, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !674, file: !14, line: 1006, baseType: !697, size: 32, offset: 160)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !164, line: 156, baseType: !7)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !674, file: !14, line: 1007, baseType: !632, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !674, file: !14, line: 1008, baseType: !628, size: 256, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !674, file: !14, line: 1009, baseType: !504, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !674, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !674, file: !14, line: 1011, baseType: !703, size: 256, offset: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !704)
!704 = !{!705, !726, !761, !762, !763, !764}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !14, line: 949, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !707, line: 34, baseType: !708)
!707 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !707, line: 25, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !708, file: !707, line: 26, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !712, line: 27, baseType: !713)
!712 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !712, line: 13, size: 64, elements: !714)
!714 = !{!715, !725}
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !712, line: 14, baseType: !716, size: 32)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !712, line: 14, size: 32, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !716, file: !712, line: 15, baseType: !213, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 16, baseType: !720, size: 32)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 16, size: 32, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !720, file: !712, line: 18, baseType: !221, size: 8)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !720, file: !712, line: 19, baseType: !724, size: 24, offset: 8)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 24, elements: !264)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !713, file: !712, line: 26, baseType: !205, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !703, file: !14, line: 950, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !729)
!729 = !{!730, !736, !737, !738, !742, !743, !750, !751}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !728, file: !19, line: 61, baseType: !731, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !732, line: 113, baseType: !733)
!732 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !732, line: 111, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !733, file: !732, line: 112, baseType: !213, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !728, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !19, line: 63, baseType: !193, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !728, file: !19, line: 65, baseType: !739, size: 256, offset: 128)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 256, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 4)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !728, file: !19, line: 66, baseType: !535, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !728, file: !19, line: 68, baseType: !744, size: 192, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !745, line: 41, baseType: !746)
!745 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !745, line: 37, size: 192, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !746, file: !745, line: 38, baseType: !193, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !746, file: !745, line: 39, baseType: !163, size: 128, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !728, file: !19, line: 69, baseType: !686, size: 128, align: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !728, file: !19, line: 70, baseType: !752, offset: 768)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, elements: !759)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !753, file: !19, line: 55, baseType: !109, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !753, file: !19, line: 56, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!759 = !{!760}
!760 = !DISubrange(count: -1)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !703, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !703, file: !14, line: 952, baseType: !349, size: 32, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !703, file: !14, line: 952, baseType: !349, size: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !703, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !674, file: !14, line: 1012, baseType: !766, size: 64, offset: 896)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !769, line: 110, size: 1472, elements: !770)
!769 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !787, !788, !789, !790, !791, !792, !922, !923, !924, !925, !926, !957, !960, !964, !972}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !768, file: !769, line: 111, baseType: !632, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !768, file: !769, line: 112, baseType: !349, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !768, file: !769, line: 113, baseType: !358, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !768, file: !769, line: 114, baseType: !349, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !768, file: !769, line: 115, baseType: !358, size: 32, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !768, file: !769, line: 116, baseType: !349, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !768, file: !769, line: 117, baseType: !358, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !768, file: !769, line: 118, baseType: !349, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !768, file: !769, line: 119, baseType: !358, size: 32, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !768, file: !769, line: 120, baseType: !7, size: 32, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !768, file: !769, line: 121, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !783, line: 24, baseType: !784)
!783 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !783, line: 24, size: 64, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !784, file: !783, line: 24, baseType: !416, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !768, file: !769, line: 122, baseType: !782, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !768, file: !769, line: 123, baseType: !782, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !768, file: !769, line: 124, baseType: !782, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !768, file: !769, line: 125, baseType: !782, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !768, file: !769, line: 127, baseType: !225, size: 8, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !768, file: !769, line: 129, baseType: !793, size: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !795, line: 195, size: 1728, elements: !796)
!795 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!796 = !{!797, !798, !803, !815, !824, !827, !828, !835, !836, !837, !838, !841, !842, !843, !845, !846, !886, !907}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !794, file: !795, line: 196, baseType: !731, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !794, file: !795, line: 197, baseType: !799, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !795, line: 28, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !164, line: 104, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !222, line: 20, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !224, line: 26, baseType: !109)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 198, baseType: !804, size: 192, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 198, size: 192, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !804, file: !795, line: 199, baseType: !163, size: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !804, file: !795, line: 200, baseType: !808, size: 192, align: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !809, line: 5, size: 192, align: 64, elements: !810)
!809 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!810 = !{!811, !812, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !808, file: !809, line: 6, baseType: !313, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !808, file: !809, line: 7, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !808, file: !809, line: 8, baseType: !813, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !794, file: !795, line: 205, baseType: !816, size: 320, offset: 256)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !817, line: 48, size: 320, elements: !818)
!817 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!818 = !{!819, !820, !821, !822, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !816, file: !817, line: 49, baseType: !632, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !816, file: !817, line: 55, baseType: !632, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !816, file: !817, line: 57, baseType: !643, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !816, file: !817, line: 59, baseType: !641, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !816, file: !817, line: 60, baseType: !163, size: 128, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !794, file: !795, line: 206, baseType: !825, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !795, line: 206, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !794, file: !795, line: 207, baseType: !157, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 208, baseType: !829, size: 64, offset: 704)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 208, size: 64, elements: !830)
!830 = !{!831, !834}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !829, file: !795, line: 209, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !833, line: 8, baseType: !639)
!833 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!834 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !829, file: !795, line: 210, baseType: !832, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !794, file: !795, line: 212, baseType: !832, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !794, file: !795, line: 213, baseType: !349, size: 32, offset: 832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !794, file: !795, line: 214, baseType: !358, size: 32, offset: 864)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !794, file: !795, line: 215, baseType: !839, size: 32, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !795, line: 31, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !164, line: 110, baseType: !412)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !794, file: !795, line: 216, baseType: !233, size: 16, offset: 928)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !794, file: !795, line: 217, baseType: !233, size: 16, offset: 944)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !794, file: !795, line: 221, baseType: !844, size: 16, offset: 960)
!844 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !795, line: 228, baseType: !313, size: 64, offset: 1024)
!846 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 245, baseType: !847, size: 320, offset: 1088)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 245, size: 320, elements: !848)
!848 = !{!849, !878}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !847, file: !795, line: 246, baseType: !850, size: 320)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !795, line: 114, size: 320, elements: !851)
!851 = !{!852, !853, !865, !868, !877}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !850, file: !795, line: 116, baseType: !313, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !795, line: 117, baseType: !854, size: 64, offset: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !795, line: 117, size: 64, elements: !855)
!855 = !{!856, !864}
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !795, line: 118, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !795, line: 118, size: 64, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !857, file: !795, line: 120, baseType: !231, size: 16)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !857, file: !795, line: 121, baseType: !861, size: 48, offset: 16)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 6)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !854, file: !795, line: 127, baseType: !313, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !795, line: 129, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !795, line: 102, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !850, file: !795, line: 130, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !795, line: 108, size: 192, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !870, file: !795, line: 109, baseType: !686, size: 128, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !870, file: !795, line: 110, baseType: !731, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !870, file: !795, line: 111, baseType: !875, size: 8, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !876)
!876 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !850, file: !795, line: 131, baseType: !182, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !847, file: !795, line: 247, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !847, file: !795, line: 247, size: 320, elements: !880)
!880 = !{!881, !882, !883, !884, !885}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !879, file: !795, line: 248, baseType: !313, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !879, file: !795, line: 249, baseType: !313, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !795, line: 250, baseType: !866, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !879, file: !795, line: 251, baseType: !869, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !879, file: !795, line: 252, baseType: !263, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 260, baseType: !887, size: 256, offset: 1408)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 260, size: 256, elements: !888)
!888 = !{!889, !895}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !887, file: !795, line: 261, baseType: !890, size: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !795, line: 134, size: 256, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !890, file: !795, line: 135, baseType: !157, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !890, file: !795, line: 136, baseType: !894, size: 256)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !740)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !795, line: 262, baseType: !896, size: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !795, line: 262, size: 256, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !896, file: !795, line: 264, baseType: !163, size: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !896, file: !795, line: 265, baseType: !900, size: 128, offset: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !901, line: 22, size: 128, elements: !902)
!901 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!902 = !{!903, !906}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !900, file: !901, line: 23, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !901, line: 23, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !900, file: !901, line: 24, baseType: !313, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !794, file: !795, line: 280, baseType: !908, size: 64, offset: 1664)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !795, line: 176, size: 192, elements: !910)
!910 = !{!911, !920, !921}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !909, file: !795, line: 177, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !795, line: 171, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!109, !793, !916, !918, !793}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !909, file: !795, line: 178, baseType: !793, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !909, file: !795, line: 179, baseType: !866, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !768, file: !769, line: 130, baseType: !793, size: 64, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !768, file: !769, line: 131, baseType: !793, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !768, file: !769, line: 132, baseType: !793, size: 64, offset: 960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !768, file: !769, line: 135, baseType: !157, size: 64, offset: 1024)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !768, file: !769, line: 137, baseType: !927, size: 64, offset: 1088)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !929, line: 14, size: 1088, elements: !930)
!929 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!930 = !{!931, !932, !941, !942, !943, !944, !945, !946}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !928, file: !929, line: 15, baseType: !731, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !928, file: !929, line: 17, baseType: !933, size: 320, offset: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !934, line: 22, size: 320, elements: !935)
!934 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!935 = !{!936, !937, !938, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !933, file: !934, line: 23, baseType: !641, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !933, file: !934, line: 24, baseType: !638, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !933, file: !934, line: 26, baseType: !163, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !933, file: !934, line: 28, baseType: !940, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !928, file: !929, line: 19, baseType: !313, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !928, file: !929, line: 20, baseType: !632, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !928, file: !929, line: 23, baseType: !539, size: 128, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !928, file: !929, line: 24, baseType: !349, size: 32, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !928, file: !929, line: 29, baseType: !632, size: 64, offset: 704)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !928, file: !929, line: 36, baseType: !947, size: 320, offset: 768)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !948, line: 15, size: 320, elements: !949)
!948 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!949 = !{!950, !951, !952, !953, !954, !955, !956}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !947, file: !948, line: 16, baseType: !641, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !947, file: !948, line: 18, baseType: !109, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !947, file: !948, line: 19, baseType: !109, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !947, file: !948, line: 20, baseType: !109, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !947, file: !948, line: 21, baseType: !109, size: 32, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !947, file: !948, line: 22, baseType: !313, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !948, line: 23, baseType: !313, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !768, file: !769, line: 138, baseType: !958, size: 64, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !350, line: 18, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !768, file: !769, line: 139, baseType: !961, size: 64, offset: 1216)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !963, line: 16, flags: DIFlagFwdDecl)
!963 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!964 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !768, file: !769, line: 140, baseType: !965, size: 64, offset: 1280)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !769, line: 25, size: 64, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !966, file: !769, line: 26, baseType: !213, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !966, file: !769, line: 27, baseType: !109, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !966, file: !769, line: 28, baseType: !971, offset: 64)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, elements: !759)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !769, line: 142, baseType: !973, size: 128, offset: 1344)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !769, line: 142, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !973, file: !769, line: 143, baseType: !109, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !973, file: !769, line: 144, baseType: !686, size: 128, align: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !674, file: !14, line: 1013, baseType: !978, size: 256, offset: 960)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !978, file: !14, line: 971, baseType: !313, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !978, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !978, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !978, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !978, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !978, file: !14, line: 976, baseType: !504, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !674, file: !14, line: 1014, baseType: !987, size: 128, offset: 1216)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !988, line: 8, size: 128, elements: !989)
!988 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !987, file: !988, line: 9, baseType: !488, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !987, file: !988, line: 10, baseType: !378, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !674, file: !14, line: 1015, baseType: !343, size: 64, offset: 1344)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !674, file: !14, line: 1016, baseType: !994, size: 64, offset: 1408)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !997)
!997 = !{!998, !999, !1004, !1008, !1012, !1587, !1588, !1594, !1607, !1624, !1628, !1629, !1633, !1634, !1638, !1643, !1644, !1648, !1652, !1658, !1659, !1663, !1664, !1671, !1675, !1679, !1685, !1689, !1693, !1697, !1701, !1702, !1708}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !996, file: !14, line: 1915, baseType: !158, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !996, file: !14, line: 1916, baseType: !1000, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!504, !1003, !504, !109}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !996, file: !14, line: 1917, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!295, !1003, !263, !310, !657}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !996, file: !14, line: 1918, baseType: !1009, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!295, !1003, !182, !310, !657}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !996, file: !14, line: 1919, baseType: !1013, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!295, !1016, !1584}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1025, !1026, !1027, !1028}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1017, file: !14, line: 374, baseType: !1003, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1017, file: !14, line: 375, baseType: !504, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1017, file: !14, line: 376, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !1016, !299}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1017, file: !14, line: 377, baseType: !157, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1017, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1017, file: !14, line: 379, baseType: !231, size: 16, offset: 288)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !14, line: 380, baseType: !1029, size: 64, offset: 320)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !14, line: 380, size: 64, elements: !1030)
!1030 = !{!1031, !1580}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1029, file: !14, line: 386, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1034, line: 998, size: 448, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1035 = !{!1036, !1566, !1567}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1033, file: !1034, line: 999, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !1039)
!1039 = !{!1040, !1533, !1547}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !52, line: 295, baseType: !1041, size: 512)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !52, line: 295, size: 512, elements: !1042)
!1042 = !{!1043, !1069}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !52, line: 296, baseType: !1044, size: 448)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !52, line: 296, size: 448, elements: !1045)
!1045 = !{!1046, !1047, !1056, !1057, !1058, !1067, !1068}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !52, line: 298, baseType: !313, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !52, line: 299, baseType: !1048, size: 128, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !52, line: 299, size: 128, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1048, file: !52, line: 300, baseType: !163, size: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !52, line: 302, baseType: !1052, size: 128)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !52, line: 302, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1052, file: !52, line: 303, baseType: !157, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1052, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1044, file: !52, line: 310, baseType: !339, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1044, file: !52, line: 311, baseType: !313, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !52, line: 312, baseType: !1059, size: 64, offset: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !52, line: 312, size: 64, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1059, file: !52, line: 313, baseType: !157, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1059, file: !52, line: 314, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1064, file: !52, line: 256, baseType: !313, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1044, file: !52, line: 316, baseType: !213, size: 32, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1044, file: !52, line: 317, baseType: !213, size: 32, offset: 416)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1041, file: !52, line: 323, baseType: !1070, size: 512, align: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !1071)
!1071 = !{!1072, !1073, !1527, !1532}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !52, line: 75, baseType: !313, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !52, line: 83, baseType: !1074, size: 320, offset: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !52, line: 83, size: 320, elements: !1075)
!1075 = !{!1076, !1097, !1111, !1115, !1526}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !52, line: 84, baseType: !1077, size: 320)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !52, line: 84, size: 320, elements: !1078)
!1078 = !{!1079, !1090, !1091, !1096}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !52, line: 90, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !52, line: 90, size: 128, elements: !1081)
!1081 = !{!1082, !1083, !1088, !1089}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1080, file: !52, line: 91, baseType: !163, size: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !52, line: 94, baseType: !1084, size: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !52, line: 94, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1084, file: !52, line: 96, baseType: !157, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1084, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1080, file: !52, line: 102, baseType: !163, size: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1080, file: !52, line: 103, baseType: !163, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1077, file: !52, line: 106, baseType: !339, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !52, line: 107, baseType: !1092, size: 64, offset: 192)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !52, line: 107, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1092, file: !52, line: 108, baseType: !313, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1092, file: !52, line: 109, baseType: !313, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1077, file: !52, line: 117, baseType: !313, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !52, line: 119, baseType: !1098, size: 320)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !52, line: 119, size: 320, elements: !1099)
!1099 = !{!1100, !1101, !1104, !1105, !1106}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1098, file: !52, line: 124, baseType: !313, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1098, file: !52, line: 125, baseType: !1102, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1098, file: !52, line: 126, baseType: !313, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1098, file: !52, line: 127, baseType: !313, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !52, line: 128, baseType: !1107, size: 64, offset: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !52, line: 128, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1107, file: !52, line: 133, baseType: !313, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1107, file: !52, line: 138, baseType: !632, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !52, line: 141, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !52, line: 141, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1112, file: !52, line: 142, baseType: !313, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !52, line: 144, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !52, line: 144, size: 128, elements: !1117)
!1117 = !{!1118, !1525}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1116, file: !52, line: 146, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !1121)
!1121 = !{!1122, !1132, !1153, !1164, !1165, !1166, !1167, !1507, !1508, !1509}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1120, file: !44, line: 127, baseType: !1123, size: 384)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !1124)
!1124 = !{!1125, !1126, !1128, !1129, !1130, !1131}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1123, file: !44, line: 22, baseType: !313, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1123, file: !44, line: 23, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1123, file: !44, line: 24, baseType: !1127, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1123, file: !44, line: 25, baseType: !313, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1123, file: !44, line: 26, baseType: !313, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1123, file: !44, line: 27, baseType: !313, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1120, file: !44, line: 128, baseType: !1133, size: 128, offset: 384)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1134, line: 105, size: 128, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1133, file: !1134, line: 110, baseType: !313, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1133, file: !1134, line: 118, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1134, line: 95, size: 448, elements: !1140)
!1140 = !{!1141, !1142, !1148, !1149, !1150, !1151, !1152}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1139, file: !1134, line: 96, baseType: !632, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1139, file: !1134, line: 97, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1134, line: 60, baseType: !1145)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1139, file: !1134, line: 98, baseType: !1143, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1139, file: !1134, line: 99, baseType: !875, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1139, file: !1134, line: 100, baseType: !875, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1139, file: !1134, line: 101, baseType: !686, size: 128, align: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1139, file: !1134, line: 102, baseType: !1147, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1120, file: !44, line: 129, baseType: !1154, size: 256, offset: 512)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1155, line: 26, size: 256, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1154, file: !1155, line: 27, baseType: !7, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1154, file: !1155, line: 28, baseType: !1159, size: 192, offset: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1160, line: 43, size: 192, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1159, file: !1160, line: 44, baseType: !641, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1159, file: !1160, line: 45, baseType: !163, size: 128, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1120, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !44, line: 131, baseType: !7, size: 32, offset: 800)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1120, file: !44, line: 132, baseType: !313, size: 64, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1120, file: !44, line: 133, baseType: !1168, size: 64, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !1171)
!1171 = !{!1172, !1177, !1503}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1170, file: !44, line: 83, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1170, file: !44, line: 89, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1184, line: 512, size: 896, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1185 = !{!1186, !1470, !1471, !1478, !1485, !1495, !1496, !1497, !1499, !1501}
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1184, line: 513, baseType: !1187, size: 320)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1184, line: 513, size: 320, elements: !1188)
!1188 = !{!1189, !1465, !1467, !1468, !1469}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1187, file: !1184, line: 514, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !1192)
!1192 = !{!1193, !1202, !1370, !1376, !1383, !1384, !1389, !1390, !1395, !1396, !1399, !1458, !1459, !1460, !1461, !1462, !1463}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !52, line: 628, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !52, line: 628, size: 128, elements: !1195)
!1195 = !{!1196, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !52, line: 629, baseType: !1197, size: 128)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !52, line: 629, size: 128, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1197, file: !52, line: 631, baseType: !313, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1197, file: !52, line: 632, baseType: !313, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1194, file: !52, line: 635, baseType: !686, size: 128, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1191, file: !52, line: 639, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1205)
!1205 = !{!1206, !1368}
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !52, line: 734, baseType: !1207, size: 10240)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !52, line: 734, size: 10240, elements: !1208)
!1208 = !{!1209, !1213, !1226, !1230, !1231, !1232, !1233, !1234, !1235, !1244, !1245, !1246, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1285, !1287, !1290, !1337, !1338, !1339, !1342, !1343, !1344, !1347, !1348, !1349, !1355, !1356}
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !52, line: 739, baseType: !1210, size: 512, align: 512)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1207, file: !52, line: 739, size: 512, align: 512, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1210, file: !52, line: 747, baseType: !213, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1207, file: !52, line: 750, baseType: !1214, size: 128, offset: 512)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1215, line: 218, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1216 = !{!1217, !1224, !1225}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 219, baseType: !1218, size: 32)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 219, size: 32, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1218, file: !1215, line: 220, baseType: !193, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1218, file: !1215, line: 221, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1215, line: 197, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 197, elements: !547)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1214, file: !1215, line: 223, baseType: !7, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1214, file: !1215, line: 224, baseType: !157, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1207, file: !52, line: 752, baseType: !1227, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!313, !1003, !313, !313, !313, !313}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1207, file: !52, line: 756, baseType: !313, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1207, file: !52, line: 757, baseType: !313, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1207, file: !52, line: 760, baseType: !313, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1207, file: !52, line: 761, baseType: !313, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1207, file: !52, line: 763, baseType: !313, size: 64, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1207, file: !52, line: 764, baseType: !1236, size: 64, offset: 1024)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1238, line: 299, baseType: !1239)
!1238 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1238, line: 299, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1239, file: !1238, line: 299, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1243, line: 18, baseType: !313)
!1243 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1207, file: !52, line: 773, baseType: !213, size: 32, offset: 1088)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1207, file: !52, line: 785, baseType: !213, size: 32, offset: 1120)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1207, file: !52, line: 795, baseType: !1247, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1248, file: !52, line: 727, baseType: !416, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1248, file: !52, line: 728, baseType: !109, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1207, file: !52, line: 801, baseType: !313, size: 64, offset: 1216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1207, file: !52, line: 804, baseType: !632, size: 64, offset: 1280)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1207, file: !52, line: 806, baseType: !109, size: 32, offset: 1344)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1207, file: !52, line: 808, baseType: !193, size: 32, offset: 1376)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1207, file: !52, line: 823, baseType: !816, size: 320, offset: 1408)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1207, file: !52, line: 825, baseType: !163, size: 128, offset: 1728)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1207, file: !52, line: 845, baseType: !109, size: 32, offset: 1856)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1207, file: !52, line: 849, baseType: !313, size: 64, offset: 1920)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1207, file: !52, line: 850, baseType: !313, size: 64, offset: 1984)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1207, file: !52, line: 852, baseType: !313, size: 64, offset: 2048)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1207, file: !52, line: 853, baseType: !313, size: 64, offset: 2112)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1207, file: !52, line: 854, baseType: !634, size: 64, offset: 2176)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1207, file: !52, line: 855, baseType: !313, size: 64, offset: 2240)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1207, file: !52, line: 856, baseType: !313, size: 64, offset: 2304)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1207, file: !52, line: 857, baseType: !313, size: 64, offset: 2368)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1207, file: !52, line: 858, baseType: !313, size: 64, offset: 2432)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1207, file: !52, line: 865, baseType: !389, size: 32, offset: 2496)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1207, file: !52, line: 867, baseType: !193, size: 32, offset: 2528)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1207, file: !52, line: 869, baseType: !313, size: 64, offset: 2560)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1207, file: !52, line: 869, baseType: !313, size: 64, offset: 2624)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1207, file: !52, line: 869, baseType: !313, size: 64, offset: 2688)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1207, file: !52, line: 869, baseType: !313, size: 64, offset: 2752)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1207, file: !52, line: 870, baseType: !313, size: 64, offset: 2816)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1207, file: !52, line: 870, baseType: !313, size: 64, offset: 2880)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1207, file: !52, line: 870, baseType: !313, size: 64, offset: 2944)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1207, file: !52, line: 871, baseType: !313, size: 64, offset: 3008)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1207, file: !52, line: 871, baseType: !313, size: 64, offset: 3072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1207, file: !52, line: 871, baseType: !313, size: 64, offset: 3136)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1207, file: !52, line: 871, baseType: !313, size: 64, offset: 3200)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1207, file: !52, line: 873, baseType: !1282, size: 3328, offset: 3264)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 3328, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 52)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1207, file: !52, line: 875, baseType: !1286, size: 1280, offset: 6592)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 1280, elements: !740)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1207, file: !52, line: 877, baseType: !1288, size: 64, offset: 7872)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1207, file: !52, line: 880, baseType: !1291, size: 1088, offset: 7936)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1292, line: 72, baseType: !1293)
!1292 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1292, line: 23, size: 1088, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1302, !1303, !1304, !1305, !1332, !1333, !1334}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1293, file: !1292, line: 28, baseType: !416, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1293, file: !1292, line: 38, baseType: !634, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1293, file: !1292, line: 40, baseType: !313, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1293, file: !1292, line: 43, baseType: !816, size: 320, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1293, file: !1292, line: 44, baseType: !1300, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1292, line: 44, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1292, line: 48, baseType: !313, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1293, file: !1292, line: 59, baseType: !628, size: 256, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1293, file: !1292, line: 60, baseType: !157, size: 64, offset: 896)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1293, file: !1292, line: 61, baseType: !1306, size: 64, offset: 960)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1309, line: 13, size: 1216, elements: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1308, file: !1309, line: 14, baseType: !157, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1308, file: !1309, line: 15, baseType: !313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1308, file: !1309, line: 17, baseType: !313, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1308, file: !1309, line: 17, baseType: !313, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1308, file: !1309, line: 18, baseType: !313, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1308, file: !1309, line: 18, baseType: !313, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1308, file: !1309, line: 19, baseType: !1318, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1308, file: !1309, line: 21, baseType: !299, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1308, file: !1309, line: 23, baseType: !299, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1308, file: !1309, line: 24, baseType: !299, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1308, file: !1309, line: 25, baseType: !299, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1308, file: !1309, line: 26, baseType: !299, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1308, file: !1309, line: 27, baseType: !299, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1308, file: !1309, line: 28, baseType: !299, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1308, file: !1309, line: 29, baseType: !299, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1308, file: !1309, line: 30, baseType: !299, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1308, file: !1309, line: 31, baseType: !299, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1308, file: !1309, line: 32, baseType: !299, size: 64, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1308, file: !1309, line: 33, baseType: !299, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1293, file: !1292, line: 63, baseType: !213, size: 32, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1293, file: !1292, line: 69, baseType: !231, size: 16, offset: 1056)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1293, file: !1292, line: 70, baseType: !1335, size: 16, offset: 1072)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !222, line: 18, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !224, line: 23, baseType: !844)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1207, file: !52, line: 882, baseType: !313, size: 64, offset: 9024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1207, file: !52, line: 885, baseType: !193, size: 32, offset: 9088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1207, file: !52, line: 886, baseType: !1340, size: 64, offset: 9152)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1207, file: !52, line: 901, baseType: !958, size: 64, offset: 9216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1207, file: !52, line: 904, baseType: !1003, size: 64, offset: 9280)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1207, file: !52, line: 906, baseType: !1345, size: 64, offset: 9344)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1207, file: !52, line: 930, baseType: !213, size: 32, offset: 9408)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1207, file: !52, line: 933, baseType: !213, size: 32, offset: 9440)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1207, file: !52, line: 935, baseType: !1350, size: 64, offset: 9472)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1350, file: !68, line: 104, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1207, file: !52, line: 940, baseType: !632, size: 64, offset: 9536)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1207, file: !52, line: 942, baseType: !1357, size: 256, offset: 9600)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1358, line: 98, size: 256, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1357, file: !1358, line: 99, baseType: !632, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1357, file: !1358, line: 100, baseType: !163, size: 128, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1357, file: !1358, line: 101, baseType: !1363, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1358, line: 21, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1204, file: !52, line: 986, baseType: !1369, offset: 10240)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, elements: !759)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1191, file: !52, line: 640, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1238, line: 297, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1238, line: 297, size: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1372, file: !1238, line: 297, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1243, line: 19, baseType: !313)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !52, line: 646, baseType: !1377, size: 64, offset: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !52, line: 646, size: 64, elements: !1378)
!1378 = !{!1379, !1382}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1377, file: !52, line: 647, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !313)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1377, file: !52, line: 648, baseType: !1381, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1191, file: !52, line: 666, baseType: !109, size: 32, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1191, file: !52, line: 667, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !52, line: 580, baseType: !816, size: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1191, file: !52, line: 670, baseType: !875, size: 8, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1191, file: !52, line: 681, baseType: !1391, size: 256, offset: 512)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !52, line: 678, size: 256, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1391, file: !52, line: 679, baseType: !808, size: 192, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1391, file: !52, line: 680, baseType: !313, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1191, file: !52, line: 689, baseType: !163, size: 128, offset: 768)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1191, file: !52, line: 691, baseType: !1397, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1191, file: !52, line: 694, baseType: !1400, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1184, line: 563, size: 1024, elements: !1403)
!1403 = !{!1404, !1408, !1409, !1413, !1417, !1421, !1422, !1426, !1430, !1434, !1435, !1436, !1440, !1444, !1450, !1454}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1402, file: !1184, line: 564, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1190}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1402, file: !1184, line: 569, baseType: !1405, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1402, file: !1184, line: 571, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!109, !1190, !313}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1402, file: !1184, line: 572, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!109, !1190}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1402, file: !1184, line: 578, baseType: !1418, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!109, !1190, !313, !313, !313}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1402, file: !1184, line: 580, baseType: !1178, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1402, file: !1184, line: 581, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1181, !1182, !7}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1402, file: !1184, line: 582, baseType: !1427, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1181, !1182, !313, !313}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1402, file: !1184, line: 584, baseType: !1431, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!313, !1190}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1402, file: !1184, line: 588, baseType: !1178, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1402, file: !1184, line: 591, baseType: !1178, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1402, file: !1184, line: 597, baseType: !1437, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!109, !1190, !313, !157, !109, !109}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1402, file: !1184, line: 603, baseType: !1441, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!182, !1190}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1402, file: !1184, line: 613, baseType: !1445, size: 64, offset: 832)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!109, !1190, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1402, file: !1184, line: 625, baseType: !1451, size: 64, offset: 896)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1448, !1190, !313}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1402, file: !1184, line: 633, baseType: !1455, size: 64, offset: 960)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1176, !1190, !313}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1191, file: !52, line: 697, baseType: !313, size: 64, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1191, file: !52, line: 699, baseType: !1003, size: 64, offset: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1191, file: !52, line: 700, baseType: !157, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1191, file: !52, line: 711, baseType: !632, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1191, file: !52, line: 717, baseType: !1448, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1191, file: !52, line: 722, baseType: !1464, offset: 1344)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !547)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1187, file: !1184, line: 515, baseType: !1466, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !164, line: 154, baseType: !7)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1187, file: !1184, line: 516, baseType: !313, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1187, file: !1184, line: 517, baseType: !313, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1187, file: !1184, line: 518, baseType: !313, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 520, baseType: !51, size: 32, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1183, file: !1184, line: 522, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1243, line: 22, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1243, line: 22, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1474, file: !1243, line: 22, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1243, line: 15, baseType: !313)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1183, file: !1184, line: 524, baseType: !1479, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1238, line: 372, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1238, line: 372, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1481, file: !1238, line: 372, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1243, line: 16, baseType: !313)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1184, line: 527, baseType: !1486, size: 64, offset: 512)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1184, line: 527, size: 64, elements: !1487)
!1487 = !{!1488, !1494}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1486, file: !1184, line: 528, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1243, line: 21, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1243, line: 21, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1490, file: !1243, line: 21, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1243, line: 14, baseType: !313)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1486, file: !1184, line: 529, baseType: !1473, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1183, file: !1184, line: 534, baseType: !1176, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1183, file: !1184, line: 535, baseType: !1176, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1183, file: !1184, line: 541, baseType: !1498, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1183, file: !1184, line: 545, baseType: !1500, size: 64, offset: 768)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1183, file: !1184, line: 549, baseType: !1502, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1238, line: 520, baseType: !1176)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1170, file: !44, line: 100, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!109, !1119, !313, !313, !109}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1120, file: !44, line: 134, baseType: !157, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1120, file: !44, line: 135, baseType: !109, size: 32, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !44, line: 136, baseType: !1510, size: 128, offset: 1088)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !44, line: 136, size: 128, elements: !1511)
!1511 = !{!1512, !1518}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1510, file: !44, line: 137, baseType: !1513, size: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1514, line: 6, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1513, file: !1514, line: 7, baseType: !416, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1513, file: !1514, line: 8, baseType: !416, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !44, line: 138, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !44, line: 138, elements: !1520)
!1520 = !{!1521, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1519, file: !44, line: 138, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !44, line: 138, elements: !547)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1519, file: !44, line: 138, baseType: !1524)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, elements: !759)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1116, file: !52, line: 147, baseType: !157, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1074, file: !52, line: 161, baseType: !686, size: 128, align: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !52, line: 164, baseType: !1528, size: 32, offset: 384)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !52, line: 164, size: 32, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1528, file: !52, line: 169, baseType: !213, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1528, file: !52, line: 177, baseType: !7, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1070, file: !52, line: 181, baseType: !213, size: 32, offset: 416)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !52, line: 325, baseType: !1534, size: 512, offset: 512)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !52, line: 325, size: 512, elements: !1535)
!1535 = !{!1536, !1546}
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !52, line: 326, baseType: !1537, size: 320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !52, line: 326, size: 320, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1537, file: !52, line: 327, baseType: !313, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1537, file: !52, line: 328, baseType: !313, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1537, file: !52, line: 329, baseType: !313, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1537, file: !52, line: 331, baseType: !213, size: 32, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1537, file: !52, line: 332, baseType: !213, size: 32, offset: 224)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1537, file: !52, line: 333, baseType: !213, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1537, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1534, file: !52, line: 339, baseType: !1070, size: 512, align: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !52, line: 341, baseType: !1548, size: 512, offset: 1024)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !52, line: 341, size: 512, elements: !1549)
!1549 = !{!1550, !1559, !1565}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !52, line: 342, baseType: !1551, size: 384)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !52, line: 342, size: 384, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1551, file: !52, line: 343, baseType: !313, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1551, file: !52, line: 344, baseType: !313, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1551, file: !52, line: 346, baseType: !157, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1551, file: !52, line: 347, baseType: !157, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1551, file: !52, line: 348, baseType: !157, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1551, file: !52, line: 349, baseType: !157, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !52, line: 352, baseType: !1560, size: 256)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !52, line: 352, size: 256, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1560, file: !52, line: 353, baseType: !313, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1560, file: !52, line: 354, baseType: !313, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1560, file: !52, line: 356, baseType: !163, size: 128, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1548, file: !52, line: 359, baseType: !1070, size: 512, align: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1033, file: !1034, line: 1000, baseType: !109, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1033, file: !1034, line: 1001, baseType: !1568, size: 320, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !745, line: 14, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !745, line: 30, size: 320, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1579}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1569, file: !745, line: 31, baseType: !7, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1569, file: !745, line: 32, baseType: !157, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1569, file: !745, line: 33, baseType: !1574, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !745, line: 16, baseType: !1575)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!109, !1578, !7, !109, !157}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1569, file: !745, line: 34, baseType: !163, size: 128, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1029, file: !14, line: 395, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!295, !157}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1586, line: 17, flags: DIFlagFwdDecl)
!1586 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !996, file: !14, line: 1920, baseType: !1013, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !996, file: !14, line: 1921, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!109, !1016, !1592, !7}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !996, file: !14, line: 1923, baseType: !1595, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!109, !1003, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1600)
!1600 = !{!1601, !1606}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1599, file: !14, line: 1859, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!875, !1598, !182, !109, !504, !416, !7}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1599, file: !14, line: 1860, baseType: !504, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !996, file: !14, line: 1924, baseType: !1608, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1611, !1003, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1612, line: 59, baseType: !7)
!1612 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1615, line: 37, size: 128, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1616 = !{!1617, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1614, file: !1615, line: 38, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1615, line: 31, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1003, !1622, !1613}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1614, file: !1615, line: 39, baseType: !1611, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !996, file: !14, line: 1925, baseType: !1625, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!299, !1003, !7, !313}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !996, file: !14, line: 1926, baseType: !1625, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !996, file: !14, line: 1927, baseType: !1630, size: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!109, !1003, !1190}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !996, file: !14, line: 1928, baseType: !313, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !996, file: !14, line: 1929, baseType: !1635, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!109, !343, !1003}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !996, file: !14, line: 1930, baseType: !1639, size: 64, offset: 896)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!109, !1003, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !157)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !996, file: !14, line: 1931, baseType: !1635, size: 64, offset: 960)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !996, file: !14, line: 1932, baseType: !1645, size: 64, offset: 1024)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!109, !1003, !504, !504, !109}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !996, file: !14, line: 1933, baseType: !1649, size: 64, offset: 1088)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!109, !109, !1003, !109}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !996, file: !14, line: 1934, baseType: !1653, size: 64, offset: 1152)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!109, !1003, !109, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !996, file: !14, line: 1935, baseType: !1227, size: 64, offset: 1216)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !996, file: !14, line: 1936, baseType: !1660, size: 64, offset: 1280)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!109, !109}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !996, file: !14, line: 1937, baseType: !1653, size: 64, offset: 1344)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !996, file: !14, line: 1938, baseType: !1665, size: 64, offset: 1408)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!295, !1668, !1003, !657, !310, !7}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1670, line: 59, flags: DIFlagFwdDecl)
!1670 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !996, file: !14, line: 1939, baseType: !1672, size: 64, offset: 1472)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!295, !1003, !657, !1668, !310, !7}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !996, file: !14, line: 1940, baseType: !1676, size: 64, offset: 1536)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1003}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !996, file: !14, line: 1941, baseType: !1680, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!109, !1003, !109, !1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !996, file: !14, line: 1942, baseType: !1686, size: 64, offset: 1664)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!299, !1003, !109, !504, !504}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !996, file: !14, line: 1944, baseType: !1690, size: 64, offset: 1728)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !616, !1003}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !996, file: !14, line: 1948, baseType: !1694, size: 64, offset: 1792)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!295, !1003, !504, !1003, !504, !310, !7}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !996, file: !14, line: 1950, baseType: !1698, size: 64, offset: 1856)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!504, !1003, !504, !1003, !504, !504, !7}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !996, file: !14, line: 1953, baseType: !1645, size: 64, offset: 1920)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !996, file: !14, line: 1954, baseType: !1703, size: 64, offset: 1984)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!109, !1706, !7}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !996, file: !14, line: 1955, baseType: !1709, size: 64, offset: 2048)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!109, !1706, !1592, !7}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !674, file: !14, line: 1018, baseType: !416, size: 64, offset: 1472)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !674, file: !14, line: 1020, baseType: !157, size: 64, offset: 1536)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !674, file: !14, line: 1023, baseType: !157, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !674, file: !14, line: 1027, baseType: !1716, size: 64, offset: 1664)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !674, file: !14, line: 1029, baseType: !339, size: 64, offset: 1728)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !674, file: !14, line: 1030, baseType: !1719, size: 32, offset: 1792)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1720, line: 8, baseType: !412)
!1720 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !674, file: !14, line: 1031, baseType: !1719, size: 32, offset: 1824)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !617, file: !618, line: 29, baseType: !157, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !559, file: !14, line: 2077, baseType: !613, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !559, file: !14, line: 2078, baseType: !613, size: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !559, file: !14, line: 2079, baseType: !613, size: 64, offset: 1216)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !559, file: !14, line: 2081, baseType: !1727, size: 64, offset: 1280)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!295, !494, !109, !263, !310, !504}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !559, file: !14, line: 2082, baseType: !1731, size: 64, offset: 1344)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!295, !494, !109, !182, !310, !504}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !559, file: !14, line: 2083, baseType: !1735, size: 64, offset: 1408)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !343}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1766, !1767, !1768}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1740, file: !27, line: 297, baseType: !539, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1740, file: !27, line: 298, baseType: !163, size: 128, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1740, file: !27, line: 299, baseType: !163, size: 128, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1740, file: !27, line: 300, baseType: !163, size: 128, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1740, file: !27, line: 301, baseType: !628, size: 256, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1740, file: !27, line: 302, baseType: !193, size: 32, offset: 768)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1740, file: !27, line: 303, baseType: !213, size: 32, offset: 800)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1740, file: !27, line: 304, baseType: !494, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1740, file: !27, line: 305, baseType: !1751, size: 64, offset: 896)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1752)
!1752 = !{!1753, !1765}
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !27, line: 69, baseType: !1754, size: 32)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !27, line: 69, size: 32, elements: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1754, file: !27, line: 70, baseType: !349, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1754, file: !27, line: 71, baseType: !358, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1754, file: !27, line: 72, baseType: !1759, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1760, line: 24, baseType: !1761)
!1760 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1760, line: 22, size: 32, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1761, file: !1760, line: 23, baseType: !1764, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1760, line: 20, baseType: !355)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1751, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1740, file: !27, line: 306, baseType: !504, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1740, file: !27, line: 307, baseType: !313, size: 64, offset: 1024)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1740, file: !27, line: 308, baseType: !1769, size: 576, offset: 1088)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1770)
!1770 = !{!1771, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1769, file: !27, line: 206, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !506)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1769, file: !27, line: 207, baseType: !1772, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1769, file: !27, line: 208, baseType: !1772, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1769, file: !27, line: 209, baseType: !1772, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1769, file: !27, line: 210, baseType: !1772, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1769, file: !27, line: 211, baseType: !1772, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1769, file: !27, line: 212, baseType: !1772, size: 64, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1769, file: !27, line: 213, baseType: !832, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1769, file: !27, line: 214, baseType: !832, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !559, file: !14, line: 2085, baseType: !1782, size: 64, offset: 1472)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!299, !494, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1787, line: 15, size: 256, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1788 = !{!1789, !1790, !1791, !1792, !1793}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1786, file: !1787, line: 16, baseType: !1466, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1786, file: !1787, line: 19, baseType: !109, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1786, file: !1787, line: 26, baseType: !313, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1786, file: !1787, line: 33, baseType: !313, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1786, file: !1787, line: 36, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !52, line: 33, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !559, file: !14, line: 2087, baseType: !1782, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !559, file: !14, line: 2089, baseType: !529, size: 64, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !495, file: !14, line: 1198, baseType: !1799, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1802)
!1802 = !{!1803, !1807, !1811, !1815, !1816, !1817, !1818, !1819, !1824, !1829, !1833}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1801, file: !27, line: 325, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!109, !1739}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1801, file: !27, line: 326, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1739, !494, !109}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1801, file: !27, line: 327, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1739}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1801, file: !27, line: 328, baseType: !1804, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1801, file: !27, line: 329, baseType: !1804, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1801, file: !27, line: 330, baseType: !1804, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1801, file: !27, line: 331, baseType: !587, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1801, file: !27, line: 334, baseType: !1820, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !343}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1801, file: !27, line: 335, baseType: !1825, size: 64, offset: 512)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!109, !343, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1801, file: !27, line: 337, baseType: !1830, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!109, !343, !1823}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1801, file: !27, line: 339, baseType: !1834, size: 64, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!109, !494, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !495, file: !14, line: 1199, baseType: !1839, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1842)
!1842 = !{!1843, !1849, !1850, !1854, !1855, !1856, !1871, !1894, !1898, !1899, !1922}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1841, file: !27, line: 431, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!109, !494, !109, !109, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1841, file: !27, line: 432, baseType: !587, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1841, file: !27, line: 433, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!109, !494, !7}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1841, file: !27, line: 434, baseType: !1851, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1841, file: !27, line: 435, baseType: !587, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1841, file: !27, line: 436, baseType: !1857, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!109, !494, !109, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1861, file: !27, line: 418, baseType: !109, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1861, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1861, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1861, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1861, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1861, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1861, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1861, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1841, file: !27, line: 437, baseType: !1872, size: 64, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!109, !494, !1751, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1876, file: !27, line: 346, baseType: !109, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1876, file: !27, line: 347, baseType: !416, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1876, file: !27, line: 348, baseType: !416, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1876, file: !27, line: 349, baseType: !416, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1876, file: !27, line: 350, baseType: !416, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1876, file: !27, line: 351, baseType: !416, size: 64, offset: 320)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1876, file: !27, line: 352, baseType: !416, size: 64, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1876, file: !27, line: 353, baseType: !638, size: 64, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1876, file: !27, line: 355, baseType: !638, size: 64, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1876, file: !27, line: 356, baseType: !109, size: 32, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1876, file: !27, line: 357, baseType: !109, size: 32, offset: 608)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1876, file: !27, line: 358, baseType: !416, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1876, file: !27, line: 359, baseType: !416, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1876, file: !27, line: 360, baseType: !416, size: 64, offset: 768)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1876, file: !27, line: 361, baseType: !638, size: 64, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1876, file: !27, line: 362, baseType: !109, size: 32, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1841, file: !27, line: 438, baseType: !1895, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!109, !494, !1837, !1875}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1841, file: !27, line: 440, baseType: !1872, size: 64, offset: 512)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1841, file: !27, line: 441, baseType: !1900, size: 64, offset: 576)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!109, !494, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1904, file: !27, line: 412, baseType: !7, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1904, file: !27, line: 413, baseType: !1908, size: 1344, offset: 64)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1909, size: 1344, elements: !264)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1921}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1909, file: !27, line: 398, baseType: !7, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1909, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1909, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1909, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1909, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1909, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1909, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1909, file: !27, line: 406, baseType: !418, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1909, file: !27, line: 407, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !164, line: 132, baseType: !416)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1909, file: !27, line: 408, baseType: !1920, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1841, file: !27, line: 442, baseType: !1851, size: 64, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !495, file: !14, line: 1200, baseType: !1924, size: 64, offset: 576)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !495, file: !14, line: 1201, baseType: !313, size: 64, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !495, file: !14, line: 1202, baseType: !313, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !495, file: !14, line: 1203, baseType: !313, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !495, file: !14, line: 1204, baseType: !378, size: 64, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !495, file: !14, line: 1205, baseType: !816, size: 320, offset: 896)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !495, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !495, file: !14, line: 1207, baseType: !213, size: 32, offset: 1248)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !495, file: !14, line: 1209, baseType: !157, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !495, file: !14, line: 1211, baseType: !1936, size: 64, offset: 1344)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !495, file: !14, line: 1223, baseType: !1941, size: 64, offset: 1408)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !395, line: 34, size: 64, elements: !1942)
!1942 = !{!1943}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1941, file: !395, line: 35, baseType: !398, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !495, file: !14, line: 1224, baseType: !163, size: 128, offset: 1472)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !495, file: !14, line: 1225, baseType: !1946, size: 64, offset: 1600)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !495, file: !14, line: 1226, baseType: !1949, size: 64, offset: 1664)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !495, file: !14, line: 1227, baseType: !1952, size: 64, offset: 1728)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !495, file: !14, line: 1228, baseType: !1955, size: 64, offset: 1792)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !495, file: !14, line: 1229, baseType: !539, size: 128, offset: 1856)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !495, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !495, file: !14, line: 1231, baseType: !1960, size: 2496, offset: 2048)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1966, !1998}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !27, line: 522, baseType: !7, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1960, file: !27, line: 523, baseType: !816, size: 320, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1960, file: !27, line: 524, baseType: !1965, size: 192, offset: 384)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 192, elements: !264)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1960, file: !27, line: 525, baseType: !1967, size: 1728, offset: 576)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1968, size: 1728, elements: !264)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1969)
!1969 = !{!1970, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1968, file: !27, line: 223, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1988, !1989}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1972, file: !27, line: 446, baseType: !109, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1972, file: !27, line: 447, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1978, file: !27, line: 313, baseType: !587, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1978, file: !27, line: 314, baseType: !587, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1978, file: !27, line: 315, baseType: !587, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1978, file: !27, line: 316, baseType: !587, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1978, file: !27, line: 317, baseType: !1804, size: 64, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1978, file: !27, line: 318, baseType: !1804, size: 64, offset: 320)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1978, file: !27, line: 319, baseType: !1804, size: 64, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1978, file: !27, line: 320, baseType: !1834, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1972, file: !27, line: 448, baseType: !158, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1972, file: !27, line: 449, baseType: !1971, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1968, file: !27, line: 224, baseType: !109, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1968, file: !27, line: 226, baseType: !163, size: 128, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1968, file: !27, line: 227, baseType: !313, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1968, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1968, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1968, file: !27, line: 230, baseType: !1772, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1968, file: !27, line: 231, baseType: !1772, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1968, file: !27, line: 232, baseType: !157, size: 64, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1960, file: !27, line: 526, baseType: !1999, size: 192, offset: 2304)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1976, size: 192, elements: !264)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !495, file: !14, line: 1233, baseType: !2001, size: 2368, offset: 4544)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2001, file: !14, line: 1185, baseType: !233, size: 16)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2001, file: !14, line: 1186, baseType: !233, size: 16, offset: 16)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2001, file: !14, line: 1187, baseType: !2006, size: 2304, offset: 64)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2007, size: 2304, elements: !264)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2008, line: 12, size: 768, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2009 = !{!2010, !2018, !2020, !3238, !3239}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2007, file: !2008, line: 13, baseType: !2011, size: 384)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2012, line: 17, size: 384, elements: !2013)
!2012 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2013 = !{!2014, !2015, !2016, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2011, file: !2012, line: 18, baseType: !109, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2011, file: !2012, line: 19, baseType: !109, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2011, file: !2012, line: 20, baseType: !744, size: 192, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2011, file: !2012, line: 22, baseType: !686, size: 128, align: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2007, file: !2008, line: 14, baseType: !2019, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2007, file: !2008, line: 15, baseType: !2021, size: 64, offset: 448)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2022, line: 16, size: 64, elements: !2023)
!2022 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2023 = !{!2024}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2021, file: !2022, line: 17, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1670, line: 746, size: 58368, elements: !2027)
!2027 = !{!2028, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2108, !2119, !2214, !2218, !2221, !2252, !2253, !2254, !2255, !2266, !2268, !2269, !2270, !2271, !2272, !2273, !2284, !2285, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2302, !2303, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2396, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2411, !2412, !2413, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2445, !2451, !2452, !2453, !2454, !2455, !2459, !2462, !2469, !2474, !2477, !2480, !2483, !2487, !2627, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2668, !2669, !2678, !2686, !2687, !2688, !2689, !2690, !2695, !2696, !2697, !2700, !2701, !2704, !2707, !2710, !2718, !2721, !2722, !2808, !2809, !2810, !2811, !2812, !2818, !2819, !2820, !2821, !2824, !2825, !2828, !2831, !2832, !2835, !2836, !2837, !2840, !2841, !2842, !2843, !2844, !2845, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2877, !2878, !2884, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2896, !2968, !2970, !2971, !2972, !2973, !2974, !2986, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3015, !3016, !3017}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2026, file: !1670, line: 752, baseType: !2029, size: 192)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2030, line: 56, size: 192, elements: !2031)
!2030 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2031 = !{!2032, !2033, !2034, !2035}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2029, file: !2030, line: 57, baseType: !313, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2029, file: !2030, line: 58, baseType: !313, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2029, file: !2030, line: 59, baseType: !412, size: 32, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2029, file: !2030, line: 61, baseType: !412, size: 32, offset: 160)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2026, file: !1670, line: 754, baseType: !7, size: 32, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2026, file: !1670, line: 767, baseType: !157, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2026, file: !1670, line: 768, baseType: !731, size: 32, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2026, file: !1670, line: 770, baseType: !7, size: 32, offset: 352)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2026, file: !1670, line: 771, baseType: !7, size: 32, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2026, file: !1670, line: 774, baseType: !109, size: 32, offset: 416)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2026, file: !1670, line: 775, baseType: !2043, size: 128, offset: 448)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2044, line: 58, size: 128, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2045 = !{!2046, !2047, !2052, !2053}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2043, file: !2044, line: 59, baseType: !680, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !2044, line: 60, baseType: !2048, size: 32, offset: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !2044, line: 60, size: 32, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2048, file: !2044, line: 61, baseType: !7, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2048, file: !2044, line: 62, baseType: !213, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2043, file: !2044, line: 65, baseType: !231, size: 16, offset: 96)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2043, file: !2044, line: 65, baseType: !231, size: 16, offset: 112)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2026, file: !1670, line: 776, baseType: !7, size: 32, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2026, file: !1670, line: 777, baseType: !313, size: 64, offset: 640)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2026, file: !1670, line: 778, baseType: !2025, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2026, file: !1670, line: 787, baseType: !109, size: 32, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2026, file: !1670, line: 788, baseType: !109, size: 32, offset: 800)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2026, file: !1670, line: 790, baseType: !109, size: 32, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2026, file: !1670, line: 792, baseType: !109, size: 32, offset: 864)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2026, file: !1670, line: 793, baseType: !109, size: 32, offset: 896)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2026, file: !1670, line: 794, baseType: !109, size: 32, offset: 928)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2026, file: !1670, line: 795, baseType: !7, size: 32, offset: 960)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2026, file: !1670, line: 797, baseType: !2065, size: 2048, offset: 1024)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1670, line: 551, size: 2048, elements: !2066)
!2066 = !{!2067, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2087, !2090, !2091, !2092}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2065, file: !1670, line: 553, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1670, line: 411, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2068, file: !1670, line: 412, baseType: !313, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2068, file: !1670, line: 413, baseType: !412, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2065, file: !1670, line: 554, baseType: !808, size: 192, align: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2065, file: !1670, line: 555, baseType: !416, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2065, file: !1670, line: 556, baseType: !416, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2065, file: !1670, line: 558, baseType: !163, size: 128, offset: 448)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2065, file: !1670, line: 559, baseType: !7, size: 32, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2065, file: !1670, line: 561, baseType: !416, size: 64, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2065, file: !1670, line: 562, baseType: !416, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2065, file: !1670, line: 563, baseType: !416, size: 64, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2065, file: !1670, line: 564, baseType: !416, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2065, file: !1670, line: 565, baseType: !638, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2065, file: !1670, line: 566, baseType: !416, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2065, file: !1670, line: 568, baseType: !416, size: 64, offset: 1024)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2065, file: !1670, line: 571, baseType: !109, size: 32, offset: 1088)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2065, file: !1670, line: 572, baseType: !2086, size: 64, offset: 1152)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2065, file: !1670, line: 574, baseType: !2088, size: 64, offset: 1216)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1670, line: 49, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2065, file: !1670, line: 576, baseType: !2088, size: 64, offset: 1280)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2065, file: !1670, line: 578, baseType: !313, size: 64, offset: 1344)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2065, file: !1670, line: 588, baseType: !2093, size: 512, align: 512, offset: 1536)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1670, line: 497, size: 512, align: 512, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2093, file: !1670, line: 498, baseType: !416, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2093, file: !1670, line: 499, baseType: !416, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2093, file: !1670, line: 500, baseType: !416, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2093, file: !1670, line: 501, baseType: !412, size: 32, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2093, file: !1670, line: 502, baseType: !412, size: 32, offset: 224)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2093, file: !1670, line: 503, baseType: !313, size: 64, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2093, file: !1670, line: 504, baseType: !313, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2093, file: !1670, line: 505, baseType: !313, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2093, file: !1670, line: 506, baseType: !2104, size: 64, align: 64, offset: 448)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1670, line: 445, size: 64, align: 64, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2104, file: !1670, line: 446, baseType: !7, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2104, file: !1670, line: 447, baseType: !7, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2026, file: !1670, line: 798, baseType: !2109, size: 384, offset: 3072)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1670, line: 592, size: 384, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2109, file: !1670, line: 593, baseType: !163, size: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2109, file: !1670, line: 594, baseType: !313, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2109, file: !1670, line: 595, baseType: !313, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2109, file: !1670, line: 596, baseType: !7, size: 32, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2109, file: !1670, line: 597, baseType: !233, size: 16, offset: 288)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2109, file: !1670, line: 598, baseType: !233, size: 16, offset: 304)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2109, file: !1670, line: 600, baseType: !2118, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2026, file: !1670, line: 799, baseType: !2120, size: 1792, offset: 3456)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1670, line: 610, size: 1792, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2211, !2212}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2120, file: !1670, line: 611, baseType: !808, size: 192, align: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2120, file: !1670, line: 618, baseType: !416, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2120, file: !1670, line: 619, baseType: !416, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2120, file: !1670, line: 620, baseType: !416, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2120, file: !1670, line: 621, baseType: !416, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2120, file: !1670, line: 622, baseType: !416, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2120, file: !1670, line: 629, baseType: !638, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2120, file: !1670, line: 630, baseType: !416, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !1670, line: 631, baseType: !7, size: 32, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2120, file: !1670, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2120, file: !1670, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2120, file: !1670, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2120, file: !1670, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2120, file: !1670, line: 662, baseType: !2136, size: 512, offset: 704)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !2137)
!2137 = !{!2138, !2146, !2147, !2152, !2207, !2208, !2209, !2210}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2136, file: !33, line: 119, baseType: !2139, size: 256)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2140, line: 9, size: 256, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2139, file: !2140, line: 10, baseType: !808, size: 192, align: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2139, file: !2140, line: 11, baseType: !2144, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2145, line: 29, baseType: !638)
!2145 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2136, file: !33, line: 120, baseType: !2144, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2136, file: !33, line: 121, baseType: !2148, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!32, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2136, file: !33, line: 122, baseType: !2153, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !2155)
!2155 = !{!2156, !2181, !2182, !2185, !2190, !2191, !2202, !2206}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2154, file: !33, line: 160, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2158, file: !33, line: 216, baseType: !641, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2158, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2158, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2158, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2158, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2158, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2158, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2158, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2158, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2158, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2158, file: !33, line: 227, baseType: !233, size: 16, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2158, file: !33, line: 228, baseType: !233, size: 16, offset: 208)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2158, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2158, file: !33, line: 235, baseType: !2144, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2158, file: !33, line: 236, baseType: !2151, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2158, file: !33, line: 237, baseType: !2144, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2158, file: !33, line: 238, baseType: !2151, size: 64, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2158, file: !33, line: 239, baseType: !2178, size: 4096, align: 512, offset: 512)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2154, size: 4096, align: 512, elements: !2179)
!2179 = !{!2180}
!2180 = !DISubrange(count: 8)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2154, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2154, file: !33, line: 162, baseType: !2183, size: 32, offset: 96)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !164, line: 32, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !297, line: 96, baseType: !109)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2154, file: !33, line: 163, baseType: !2186, size: 32, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !385, line: 274, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !385, line: 274, size: 32, elements: !2188)
!2188 = !{!2189}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2187, file: !385, line: 274, baseType: !389, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2154, file: !33, line: 164, baseType: !2151, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2154, file: !33, line: 165, baseType: !2192, size: 128, offset: 256)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2140, line: 14, size: 128, elements: !2193)
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2192, file: !2140, line: 15, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !809, line: 26, size: 128, elements: !2196)
!2196 = !{!2197, !2201}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2195, file: !809, line: 27, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !809, line: 12, size: 64, elements: !2199)
!2199 = !{!2200}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2198, file: !809, line: 13, baseType: !813, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2195, file: !809, line: 28, baseType: !813, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2154, file: !33, line: 166, baseType: !2203, size: 64, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2144}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2154, file: !33, line: 167, baseType: !2144, size: 64, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2136, file: !33, line: 123, baseType: !221, size: 8, offset: 448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2136, file: !33, line: 124, baseType: !221, size: 8, offset: 456)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2136, file: !33, line: 125, baseType: !221, size: 8, offset: 464)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2136, file: !33, line: 126, baseType: !221, size: 8, offset: 472)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2120, file: !1670, line: 671, baseType: !2136, size: 512, offset: 1216)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2120, file: !1670, line: 679, baseType: !2213, size: 64, offset: 1728)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2026, file: !1670, line: 800, baseType: !2215, size: 64, offset: 5248)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1670, line: 800, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2026, file: !1670, line: 809, baseType: !2219, size: 64, offset: 5312)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1670, line: 70, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2026, file: !1670, line: 825, baseType: !2222, size: 2048, align: 512, offset: 5632)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1670, line: 509, size: 2048, align: 512, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2222, file: !1670, line: 511, baseType: !416, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2222, file: !1670, line: 512, baseType: !416, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2222, file: !1670, line: 513, baseType: !416, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2222, file: !1670, line: 514, baseType: !416, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2222, file: !1670, line: 515, baseType: !416, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2222, file: !1670, line: 516, baseType: !416, size: 64, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2222, file: !1670, line: 518, baseType: !416, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2222, file: !1670, line: 519, baseType: !416, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2222, file: !1670, line: 520, baseType: !638, size: 64, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2222, file: !1670, line: 522, baseType: !416, size: 64, offset: 576)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2222, file: !1670, line: 523, baseType: !416, size: 64, offset: 640)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2222, file: !1670, line: 524, baseType: !638, size: 64, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2222, file: !1670, line: 526, baseType: !638, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2222, file: !1670, line: 527, baseType: !416, size: 64, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2222, file: !1670, line: 529, baseType: !416, size: 64, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2222, file: !1670, line: 530, baseType: !416, size: 64, offset: 960)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2222, file: !1670, line: 531, baseType: !416, size: 64, offset: 1024)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2222, file: !1670, line: 532, baseType: !416, size: 64, offset: 1088)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2222, file: !1670, line: 533, baseType: !416, size: 64, offset: 1152)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2222, file: !1670, line: 535, baseType: !416, size: 64, offset: 1216)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2222, file: !1670, line: 536, baseType: !416, size: 64, offset: 1280)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2222, file: !1670, line: 537, baseType: !416, size: 64, offset: 1344)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2222, file: !1670, line: 538, baseType: !416, size: 64, offset: 1408)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2222, file: !1670, line: 539, baseType: !416, size: 64, offset: 1472)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2222, file: !1670, line: 540, baseType: !416, size: 64, offset: 1536)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2222, file: !1670, line: 541, baseType: !416, size: 64, offset: 1600)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2222, file: !1670, line: 542, baseType: !416, size: 64, offset: 1664)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2222, file: !1670, line: 543, baseType: !416, size: 64, offset: 1728)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2026, file: !1670, line: 833, baseType: !7, size: 32, offset: 7680)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2026, file: !1670, line: 836, baseType: !7, size: 32, offset: 7712)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2026, file: !1670, line: 837, baseType: !109, size: 32, offset: 7744)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2026, file: !1670, line: 838, baseType: !2256, size: 64, offset: 7808)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2259, line: 19, baseType: !2260)
!2259 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2259, line: 19, size: 64, elements: !2261)
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2260, file: !2259, line: 19, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, elements: !2264)
!2264 = !{!2265}
!2265 = !DISubrange(count: 1)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2026, file: !1670, line: 839, baseType: !2267, size: 64, offset: 7872)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2026, file: !1670, line: 840, baseType: !2258, size: 64, offset: 7936)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2026, file: !1670, line: 841, baseType: !157, size: 64, offset: 8000)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2026, file: !1670, line: 843, baseType: !233, size: 16, offset: 8064)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2026, file: !1670, line: 845, baseType: !233, size: 16, offset: 8080)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2026, file: !1670, line: 848, baseType: !109, size: 32, offset: 8096)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2026, file: !1670, line: 849, baseType: !2274, size: 32, offset: 8128)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1670, line: 718, size: 32, elements: !2275)
!2275 = !{!2276, !2283}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2274, file: !1670, line: 724, baseType: !2277, size: 32)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !1670, line: 719, size: 32, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2277, file: !1670, line: 720, baseType: !221, size: 8)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2277, file: !1670, line: 721, baseType: !221, size: 8, offset: 8)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2277, file: !1670, line: 722, baseType: !221, size: 8, offset: 16)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2277, file: !1670, line: 723, baseType: !221, size: 8, offset: 24)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2274, file: !1670, line: 725, baseType: !412, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2026, file: !1670, line: 850, baseType: !163, size: 128, offset: 8192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2026, file: !1670, line: 851, baseType: !2286, size: 64, offset: 8320)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1670, line: 60, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2026, file: !1670, line: 855, baseType: !313, size: 64, offset: 8384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2026, file: !1670, line: 856, baseType: !221, size: 8, offset: 8448)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2026, file: !1670, line: 857, baseType: !221, size: 8, offset: 8456)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2026, file: !1670, line: 858, baseType: !109, size: 32, offset: 8480)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2026, file: !1670, line: 859, baseType: !163, size: 128, offset: 8512)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2026, file: !1670, line: 860, baseType: !109, size: 32, offset: 8640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2026, file: !1670, line: 861, baseType: !163, size: 128, offset: 8704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2026, file: !1670, line: 873, baseType: !2296, size: 256, offset: 8832)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1670, line: 376, size: 256, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2296, file: !1670, line: 381, baseType: !313, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2296, file: !1670, line: 384, baseType: !418, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2296, file: !1670, line: 389, baseType: !418, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2296, file: !1670, line: 392, baseType: !418, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2026, file: !1670, line: 875, baseType: !163, size: 128, offset: 9088)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2026, file: !1670, line: 877, baseType: !2304, size: 320, offset: 9216)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2305, line: 86, size: 320, elements: !2306)
!2305 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2304, file: !2305, line: 87, baseType: !109, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2304, file: !2305, line: 88, baseType: !163, size: 128, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2304, file: !2305, line: 89, baseType: !163, size: 128, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2026, file: !1670, line: 878, baseType: !808, size: 192, align: 64, offset: 9536)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2026, file: !1670, line: 881, baseType: !1203, size: 64, offset: 9728)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2026, file: !1670, line: 882, baseType: !1203, size: 64, offset: 9792)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2026, file: !1670, line: 884, baseType: !109, size: 32, offset: 9856)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2026, file: !1670, line: 885, baseType: !109, size: 32, offset: 9888)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2026, file: !1670, line: 886, baseType: !109, size: 32, offset: 9920)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2026, file: !1670, line: 888, baseType: !109, size: 32, offset: 9952)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2026, file: !1670, line: 890, baseType: !313, size: 64, offset: 9984)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2026, file: !1670, line: 893, baseType: !7, size: 32, offset: 10048)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2026, file: !1670, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2026, file: !1670, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2026, file: !1670, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2026, file: !1670, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2026, file: !1670, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2026, file: !1670, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2026, file: !1670, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2026, file: !1670, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2026, file: !1670, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2026, file: !1670, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2026, file: !1670, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2026, file: !1670, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2026, file: !1670, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2026, file: !1670, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2026, file: !1670, line: 969, baseType: !313, size: 64, offset: 10176)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2026, file: !1670, line: 971, baseType: !2335, size: 448, offset: 10240)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2336)
!2336 = !{!2337, !2338, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2335, file: !38, line: 26, baseType: !313, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2335, file: !38, line: 27, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!299, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !38, line: 28, baseType: !2344, size: 320, offset: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2335, file: !38, line: 28, size: 320, elements: !2345)
!2345 = !{!2346, !2356, !2381}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2344, file: !38, line: 37, baseType: !2347, size: 320)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !38, line: 30, size: 320, elements: !2348)
!2348 = !{!2349, !2351, !2352, !2353, !2354, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2347, file: !38, line: 31, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2347, file: !38, line: 32, baseType: !412, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !38, line: 33, baseType: !412, size: 32, offset: 96)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2347, file: !38, line: 34, baseType: !412, size: 32, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2347, file: !38, line: 35, baseType: !416, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2347, file: !38, line: 36, baseType: !2350, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2344, file: !38, line: 47, baseType: !2357, size: 192)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !38, line: 39, size: 192, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2380}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2357, file: !38, line: 40, baseType: !2183, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2357, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !38, line: 42, baseType: !2362, size: 64, offset: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !38, line: 42, size: 64, elements: !2363)
!2363 = !{!2364, !2372}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2362, file: !38, line: 43, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2367, line: 7, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2368 = !{!2369, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2366, file: !2367, line: 8, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !297, line: 93, baseType: !506)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2366, file: !2367, line: 9, baseType: !506, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2362, file: !38, line: 44, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2375, line: 7, size: 64, elements: !2376)
!2375 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2376 = !{!2377, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2374, file: !2375, line: 8, baseType: !2378, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2375, line: 5, baseType: !801)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2374, file: !2375, line: 9, baseType: !801, size: 32, offset: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2357, file: !38, line: 46, baseType: !416, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2344, file: !38, line: 55, baseType: !2382, size: 256)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !38, line: 49, size: 256, elements: !2383)
!2383 = !{!2384, !2392, !2393, !2394, !2395}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2382, file: !38, line: 50, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2387, line: 36, size: 64, elements: !2388)
!2387 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2388 = !{!2389, !2390, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2386, file: !2387, line: 37, baseType: !109, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2386, file: !2387, line: 38, baseType: !844, size: 16, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2386, file: !2387, line: 39, baseType: !844, size: 16, offset: 48)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2382, file: !38, line: 51, baseType: !109, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2382, file: !38, line: 52, baseType: !109, size: 32, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2382, file: !38, line: 53, baseType: !313, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2382, file: !38, line: 54, baseType: !313, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2026, file: !1670, line: 973, baseType: !2397, size: 32, offset: 10688)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !164, line: 27, baseType: !2398)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !297, line: 28, baseType: !109)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2026, file: !1670, line: 974, baseType: !2397, size: 32, offset: 10720)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2026, file: !1670, line: 978, baseType: !313, size: 64, offset: 10752)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2026, file: !1670, line: 987, baseType: !2025, size: 64, offset: 10816)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2026, file: !1670, line: 990, baseType: !2025, size: 64, offset: 10880)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2026, file: !1670, line: 995, baseType: !163, size: 128, offset: 10944)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2026, file: !1670, line: 996, baseType: !163, size: 128, offset: 11072)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2026, file: !1670, line: 997, baseType: !2025, size: 64, offset: 11200)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2026, file: !1670, line: 1005, baseType: !163, size: 128, offset: 11264)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2026, file: !1670, line: 1006, baseType: !163, size: 128, offset: 11392)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2026, file: !1670, line: 1009, baseType: !727, size: 64, offset: 11520)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2026, file: !1670, line: 1010, baseType: !2410, size: 512, offset: 11584)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 512, elements: !740)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2026, file: !1670, line: 1011, baseType: !163, size: 128, offset: 12096)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2026, file: !1670, line: 1012, baseType: !163, size: 128, offset: 12224)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2026, file: !1670, line: 1014, baseType: !2414, size: 64, offset: 12352)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2026, file: !1670, line: 1017, baseType: !610, size: 64, offset: 12416)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2026, file: !1670, line: 1020, baseType: !610, size: 64, offset: 12480)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2026, file: !1670, line: 1023, baseType: !157, size: 64, offset: 12544)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2026, file: !1670, line: 1025, baseType: !416, size: 64, offset: 12608)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2026, file: !1670, line: 1026, baseType: !416, size: 64, offset: 12672)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2026, file: !1670, line: 1031, baseType: !416, size: 64, offset: 12736)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2026, file: !1670, line: 1032, baseType: !2422, size: 192, offset: 12800)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1670, line: 324, size: 192, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2422, file: !1670, line: 326, baseType: !416, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2422, file: !1670, line: 327, baseType: !416, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2422, file: !1670, line: 328, baseType: !641, size: 32, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2026, file: !1670, line: 1041, baseType: !313, size: 64, offset: 12992)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2026, file: !1670, line: 1042, baseType: !313, size: 64, offset: 13056)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2026, file: !1670, line: 1045, baseType: !416, size: 64, offset: 13120)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2026, file: !1670, line: 1048, baseType: !416, size: 64, offset: 13184)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2026, file: !1670, line: 1051, baseType: !313, size: 64, offset: 13248)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2026, file: !1670, line: 1052, baseType: !313, size: 64, offset: 13312)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2026, file: !1670, line: 1055, baseType: !2434, size: 640, offset: 13376)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2435, line: 132, size: 640, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2436 = !{!2437, !2443, !2444}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2434, file: !2435, line: 133, baseType: !2438, size: 576)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, size: 576, elements: !264)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2435, line: 117, size: 192, elements: !2440)
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2439, file: !2435, line: 118, baseType: !416, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2439, file: !2435, line: 119, baseType: !2192, size: 128, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2434, file: !2435, line: 134, baseType: !7, size: 32, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2434, file: !2435, line: 135, baseType: !7, size: 32, offset: 608)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2026, file: !1670, line: 1058, baseType: !2446, size: 448, offset: 14016)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2435, line: 144, size: 448, elements: !2447)
!2447 = !{!2448, !2449, !2450}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2446, file: !2435, line: 145, baseType: !686, size: 128, align: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2446, file: !2435, line: 146, baseType: !628, size: 256, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2446, file: !2435, line: 147, baseType: !7, size: 32, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2026, file: !1670, line: 1064, baseType: !766, size: 64, offset: 14464)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2026, file: !1670, line: 1067, baseType: !766, size: 64, offset: 14528)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2026, file: !1670, line: 1070, baseType: !766, size: 64, offset: 14592)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2026, file: !1670, line: 1074, baseType: !793, size: 64, offset: 14656)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2026, file: !1670, line: 1084, baseType: !2456, size: 128, offset: 14720)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !2457)
!2457 = !{!2458}
!2458 = !DISubrange(count: 16)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2026, file: !1670, line: 1086, baseType: !2460, size: 64, offset: 14848)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1670, line: 55, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2026, file: !1670, line: 1089, baseType: !2463, size: 64, offset: 14912)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2464, line: 12, size: 64, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2463, file: !2464, line: 13, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2464, line: 8, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2026, file: !1670, line: 1090, baseType: !2470, size: 128, offset: 14976)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2471, line: 13, size: 128, elements: !2472)
!2471 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2472 = !{!2473}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2470, file: !2471, line: 14, baseType: !163, size: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2026, file: !1670, line: 1097, baseType: !2475, size: 64, offset: 15104)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1670, line: 50, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2026, file: !1670, line: 1100, baseType: !2478, size: 64, offset: 15168)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1670, line: 1100, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2026, file: !1670, line: 1103, baseType: !2481, size: 64, offset: 15232)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1670, line: 53, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2026, file: !1670, line: 1107, baseType: !2484, size: 64, offset: 15296)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2486, line: 35, flags: DIFlagFwdDecl)
!2486 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2026, file: !1670, line: 1110, baseType: !2488, size: 64, offset: 15360)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2490, line: 93, size: 8768, elements: !2491)
!2490 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2541, !2550, !2551, !2553, !2554, !2555, !2558, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2596, !2597, !2604, !2614, !2617, !2618, !2621, !2622, !2623, !2624, !2625, !2626}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2489, file: !2490, line: 94, baseType: !731, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2489, file: !2490, line: 95, baseType: !213, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2489, file: !2490, line: 96, baseType: !109, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2489, file: !2490, line: 97, baseType: !109, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2489, file: !2490, line: 98, baseType: !163, size: 128, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2489, file: !2490, line: 100, baseType: !744, size: 192, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2489, file: !2490, line: 103, baseType: !2025, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2489, file: !2490, line: 106, baseType: !2500, size: 192, offset: 512)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !963, line: 32, size: 192, elements: !2501)
!2501 = !{!2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2500, file: !963, line: 33, baseType: !163, size: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2500, file: !963, line: 34, baseType: !2504, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2505, line: 25, baseType: !2506)
!2505 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2505, line: 23, size: 64, elements: !2507)
!2507 = !{!2508}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2506, file: !2505, line: 24, baseType: !2263, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2489, file: !2490, line: 109, baseType: !535, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2489, file: !2490, line: 112, baseType: !109, size: 32, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2489, file: !2490, line: 114, baseType: !109, size: 32, offset: 800)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2489, file: !2490, line: 115, baseType: !2025, size: 64, offset: 832)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2489, file: !2490, line: 118, baseType: !109, size: 32, offset: 896)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2489, file: !2490, line: 119, baseType: !7, size: 32, offset: 928)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2489, file: !2490, line: 121, baseType: !2516, size: 64, offset: 960)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2490, line: 80, size: 448, elements: !2518)
!2518 = !{!2519, !2520, !2526}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2517, file: !2490, line: 81, baseType: !213, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2517, file: !2490, line: 82, baseType: !2521, size: 128, offset: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2490, line: 75, size: 128, elements: !2522)
!2522 = !{!2523, !2524}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2521, file: !2490, line: 76, baseType: !2025, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2521, file: !2490, line: 77, baseType: !2525, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2517, file: !2490, line: 83, baseType: !1154, size: 256, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2489, file: !2490, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2489, file: !2490, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2489, file: !2490, line: 138, baseType: !7, size: 32, offset: 1056)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2489, file: !2490, line: 139, baseType: !163, size: 128, offset: 1088)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2489, file: !2490, line: 142, baseType: !2136, size: 512, offset: 1216)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2489, file: !2490, line: 143, baseType: !2144, size: 64, offset: 1728)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2489, file: !2490, line: 150, baseType: !2534, size: 256, offset: 1792)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2535, size: 256, elements: !2539)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2490, line: 38, size: 128, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2535, file: !2490, line: 39, baseType: !416, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2535, file: !2490, line: 40, baseType: !416, size: 64, offset: 64)
!2539 = !{!2540}
!2540 = !DISubrange(count: 2)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2489, file: !2490, line: 156, baseType: !2542, size: 192, offset: 2048)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2490, line: 66, size: 192, elements: !2543)
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2542, file: !2490, line: 67, baseType: !2545, size: 192)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2490, line: 47, size: 192, elements: !2546)
!2546 = !{!2547, !2548, !2549}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2545, file: !2490, line: 48, baseType: !634, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2545, file: !2490, line: 49, baseType: !634, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2545, file: !2490, line: 50, baseType: !634, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2489, file: !2490, line: 160, baseType: !2434, size: 640, offset: 2240)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2489, file: !2490, line: 163, baseType: !2552, size: 256, offset: 2880)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 256, elements: !740)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2489, file: !2490, line: 169, baseType: !727, size: 64, offset: 3136)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2489, file: !2490, line: 172, baseType: !109, size: 32, offset: 3200)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2489, file: !2490, line: 174, baseType: !2556, size: 64, offset: 3264)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2490, line: 174, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2489, file: !2490, line: 185, baseType: !2559, size: 64, offset: 3328)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !385, line: 860, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 853, size: 64, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2560, file: !385, line: 858, baseType: !384, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2560, file: !385, line: 859, baseType: !193, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2489, file: !2490, line: 186, baseType: !416, size: 64, offset: 3392)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2489, file: !2490, line: 186, baseType: !416, size: 64, offset: 3456)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2489, file: !2490, line: 186, baseType: !416, size: 64, offset: 3520)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2489, file: !2490, line: 186, baseType: !416, size: 64, offset: 3584)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2489, file: !2490, line: 187, baseType: !416, size: 64, offset: 3648)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2489, file: !2490, line: 188, baseType: !416, size: 64, offset: 3712)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2489, file: !2490, line: 189, baseType: !2422, size: 192, offset: 3776)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2489, file: !2490, line: 190, baseType: !313, size: 64, offset: 3968)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2489, file: !2490, line: 190, baseType: !313, size: 64, offset: 4032)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2489, file: !2490, line: 190, baseType: !313, size: 64, offset: 4096)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2489, file: !2490, line: 190, baseType: !313, size: 64, offset: 4160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2489, file: !2490, line: 191, baseType: !313, size: 64, offset: 4224)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2489, file: !2490, line: 191, baseType: !313, size: 64, offset: 4288)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2489, file: !2490, line: 191, baseType: !313, size: 64, offset: 4352)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2489, file: !2490, line: 191, baseType: !313, size: 64, offset: 4416)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2489, file: !2490, line: 192, baseType: !313, size: 64, offset: 4480)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2489, file: !2490, line: 192, baseType: !313, size: 64, offset: 4544)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2489, file: !2490, line: 192, baseType: !313, size: 64, offset: 4608)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2489, file: !2490, line: 192, baseType: !313, size: 64, offset: 4672)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2489, file: !2490, line: 193, baseType: !313, size: 64, offset: 4736)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2489, file: !2490, line: 193, baseType: !313, size: 64, offset: 4800)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2489, file: !2490, line: 194, baseType: !2586, size: 448, offset: 4864)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2587, line: 12, size: 448, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2586, file: !2587, line: 15, baseType: !416, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2586, file: !2587, line: 17, baseType: !416, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2586, file: !2587, line: 19, baseType: !416, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2586, file: !2587, line: 21, baseType: !416, size: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2586, file: !2587, line: 29, baseType: !416, size: 64, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2586, file: !2587, line: 35, baseType: !416, size: 64, offset: 320)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2586, file: !2587, line: 44, baseType: !416, size: 64, offset: 384)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2489, file: !2490, line: 202, baseType: !418, size: 64, offset: 5312)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2489, file: !2490, line: 213, baseType: !2598, size: 2048, offset: 5376)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2599, size: 2048, elements: !2457)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2600, line: 43, size: 128, elements: !2601)
!2600 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2599, file: !2600, line: 44, baseType: !312, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2599, file: !2600, line: 45, baseType: !312, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2489, file: !2490, line: 216, baseType: !2605, size: 448, offset: 7424)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2490, line: 30, size: 448, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2605, file: !2490, line: 31, baseType: !109, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2605, file: !2490, line: 32, baseType: !299, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2605, file: !2490, line: 33, baseType: !313, size: 64, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2605, file: !2490, line: 34, baseType: !416, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2605, file: !2490, line: 34, baseType: !416, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2605, file: !2490, line: 35, baseType: !313, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2605, file: !2490, line: 35, baseType: !313, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2489, file: !2490, line: 219, baseType: !2615, size: 64, offset: 7872)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2490, line: 219, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2489, file: !2490, line: 222, baseType: !7, size: 32, offset: 7936)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2489, file: !2490, line: 223, baseType: !2619, size: 64, offset: 8000)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2490, line: 223, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2489, file: !2490, line: 230, baseType: !875, size: 8, offset: 8064)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2489, file: !2490, line: 231, baseType: !844, size: 16, offset: 8080)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2489, file: !2490, line: 232, baseType: !844, size: 16, offset: 8096)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2489, file: !2490, line: 234, baseType: !1203, size: 64, offset: 8128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2489, file: !2490, line: 237, baseType: !628, size: 256, offset: 8192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2489, file: !2490, line: 243, baseType: !816, size: 320, offset: 8448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2026, file: !1670, line: 1111, baseType: !2628, size: 64, offset: 15424)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2490, line: 20, size: 16640, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2629, file: !2490, line: 21, baseType: !193, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2629, file: !2490, line: 22, baseType: !731, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2629, file: !2490, line: 23, baseType: !744, size: 192, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2629, file: !2490, line: 24, baseType: !2635, size: 16384, offset: 256)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 16384, elements: !268)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !963, line: 51, size: 256, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2636, file: !963, line: 52, baseType: !2639, size: 256)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !963, line: 37, size: 256, elements: !2640)
!2640 = !{!2641, !2648, !2649, !2655}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2639, file: !963, line: 39, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2643, line: 83, baseType: !2644)
!2643 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2643, line: 82, baseType: !2646)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !109}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2639, file: !963, line: 40, baseType: !313, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2639, file: !963, line: 46, baseType: !2650, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2643, line: 86, baseType: !2651)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2643, line: 85, baseType: !2653)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2639, file: !963, line: 48, baseType: !2504, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2026, file: !1670, line: 1112, baseType: !2504, size: 64, offset: 15488)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2026, file: !1670, line: 1113, baseType: !2504, size: 64, offset: 15552)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2026, file: !1670, line: 1115, baseType: !2504, size: 64, offset: 15616)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2026, file: !1670, line: 1116, baseType: !2500, size: 192, offset: 15680)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2026, file: !1670, line: 1117, baseType: !313, size: 64, offset: 15872)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2026, file: !1670, line: 1118, baseType: !310, size: 64, offset: 15936)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2026, file: !1670, line: 1119, baseType: !7, size: 32, offset: 16000)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2026, file: !1670, line: 1121, baseType: !689, size: 64, offset: 16064)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2026, file: !1670, line: 1125, baseType: !2665, size: 64, offset: 16128)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1670, line: 43, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2026, file: !1670, line: 1127, baseType: !349, size: 32, offset: 16192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2026, file: !1670, line: 1128, baseType: !7, size: 32, offset: 16224)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2026, file: !1670, line: 1130, baseType: !2670, size: 128, offset: 16256)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2671, line: 37, size: 128, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2670, file: !2671, line: 38, baseType: !109, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2670, file: !2671, line: 39, baseType: !213, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2670, file: !2671, line: 40, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2671, line: 24, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2026, file: !1670, line: 1131, baseType: !2679, size: 256, offset: 16384)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2680, line: 12, size: 256, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2681 = !{!2682, !2683, !2684, !2685}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2679, file: !2680, line: 13, baseType: !263, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2679, file: !2680, line: 14, baseType: !313, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2679, file: !2680, line: 15, baseType: !313, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2679, file: !2680, line: 16, baseType: !875, size: 8, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2026, file: !1670, line: 1134, baseType: !416, size: 64, offset: 16640)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2026, file: !1670, line: 1135, baseType: !416, size: 64, offset: 16704)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2026, file: !1670, line: 1138, baseType: !193, size: 32, offset: 16768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2026, file: !1670, line: 1141, baseType: !641, size: 32, offset: 16800)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2026, file: !1670, line: 1143, baseType: !2691, size: 64, offset: 16832)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1670, line: 735, size: 64, elements: !2692)
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2691, file: !1670, line: 736, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2026, file: !1670, line: 1147, baseType: !2195, size: 128, offset: 16896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2026, file: !1670, line: 1149, baseType: !2025, size: 64, offset: 17024)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2026, file: !1670, line: 1151, baseType: !2698, size: 64, offset: 17088)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1670, line: 1151, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2026, file: !1670, line: 1188, baseType: !157, size: 64, offset: 17152)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2026, file: !1670, line: 1191, baseType: !2702, size: 64, offset: 17216)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1670, line: 44, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2026, file: !1670, line: 1194, baseType: !2705, size: 64, offset: 17280)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1670, line: 45, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2026, file: !1670, line: 1197, baseType: !2708, size: 64, offset: 17344)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1670, line: 61, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2026, file: !1670, line: 1199, baseType: !2711, size: 64, offset: 17408)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2713, line: 99, size: 128, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2712, file: !2713, line: 100, baseType: !632, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2712, file: !2713, line: 101, baseType: !213, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2712, file: !2713, line: 103, baseType: !233, size: 16, offset: 96)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2026, file: !1670, line: 1202, baseType: !2719, size: 64, offset: 17472)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1670, line: 48, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2026, file: !1670, line: 1205, baseType: !313, size: 64, offset: 17536)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2026, file: !1670, line: 1206, baseType: !2723, size: 64, offset: 17600)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !963, line: 14, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !963, line: 12, size: 384, elements: !2726)
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !963, line: 13, baseType: !2728, size: 384)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2725, file: !963, line: 13, size: 384, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2728, file: !963, line: 13, baseType: !109, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2728, file: !963, line: 13, baseType: !109, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2728, file: !963, line: 13, baseType: !109, size: 32, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2728, file: !963, line: 13, baseType: !2734, size: 256, offset: 128)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2735, line: 37, size: 256, elements: !2736)
!2735 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2736 = !{!2737, !2742, !2755, !2761, !2770, !2797, !2802}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2734, file: !2735, line: 42, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 39, size: 64, elements: !2739)
!2739 = !{!2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2738, file: !2735, line: 40, baseType: !2398, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2738, file: !2735, line: 41, baseType: !355, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2734, file: !2735, line: 50, baseType: !2743, size: 192)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 45, size: 192, elements: !2744)
!2744 = !{!2745, !2747, !2748, !2754}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2743, file: !2735, line: 46, baseType: !2746, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !297, line: 95, baseType: !109)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2743, file: !2735, line: 47, baseType: !109, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2743, file: !2735, line: 48, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2735, line: 11, baseType: !2750)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2735, line: 8, size: 64, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2750, file: !2735, line: 9, baseType: !109, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2750, file: !2735, line: 10, baseType: !157, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2743, file: !2735, line: 49, baseType: !109, size: 32, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2734, file: !2735, line: 57, baseType: !2756, size: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 53, size: 128, elements: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2756, file: !2735, line: 54, baseType: !2398, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2756, file: !2735, line: 55, baseType: !355, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2756, file: !2735, line: 56, baseType: !2749, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2734, file: !2735, line: 66, baseType: !2762, size: 256)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 60, size: 256, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2769}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2762, file: !2735, line: 61, baseType: !2398, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2762, file: !2735, line: 62, baseType: !355, size: 32, offset: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2762, file: !2735, line: 63, baseType: !109, size: 32, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2762, file: !2735, line: 64, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !297, line: 94, baseType: !298)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2762, file: !2735, line: 65, baseType: !2768, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2734, file: !2735, line: 105, baseType: !2771, size: 256)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 69, size: 256, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2771, file: !2735, line: 70, baseType: !157, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, scope: !2771, file: !2735, line: 79, baseType: !2775, size: 192, offset: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2771, file: !2735, line: 79, size: 192, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2786, !2791}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2775, file: !2735, line: 81, baseType: !109, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2775, file: !2735, line: 86, baseType: !844, size: 16)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2775, file: !2735, line: 92, baseType: !2780, size: 192)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !2735, line: 88, size: 192, elements: !2781)
!2781 = !{!2782, !2784, !2785}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2780, file: !2735, line: 89, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 64, elements: !2179)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2780, file: !2735, line: 90, baseType: !157, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2780, file: !2735, line: 91, baseType: !157, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2775, file: !2735, line: 97, baseType: !2787, size: 96)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !2735, line: 94, size: 96, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2787, file: !2735, line: 95, baseType: !2783, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2787, file: !2735, line: 96, baseType: !413, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2775, file: !2735, line: 103, baseType: !2792, size: 128)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !2735, line: 99, size: 128, elements: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2792, file: !2735, line: 100, baseType: !313, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2792, file: !2735, line: 101, baseType: !413, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2792, file: !2735, line: 102, baseType: !413, size: 32, offset: 96)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2734, file: !2735, line: 111, baseType: !2798, size: 128)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 108, size: 128, elements: !2799)
!2799 = !{!2800, !2801}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2798, file: !2735, line: 109, baseType: !299, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2798, file: !2735, line: 110, baseType: !109, size: 32, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2734, file: !2735, line: 118, baseType: !2803, size: 128)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 114, size: 128, elements: !2804)
!2804 = !{!2805, !2806, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2803, file: !2735, line: 115, baseType: !157, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2803, file: !2735, line: 116, baseType: !109, size: 32, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2803, file: !2735, line: 117, baseType: !7, size: 32, offset: 96)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2026, file: !1670, line: 1208, baseType: !2586, size: 448, offset: 17664)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2026, file: !1670, line: 1215, baseType: !416, size: 64, offset: 18112)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2026, file: !1670, line: 1217, baseType: !416, size: 64, offset: 18176)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2026, file: !1670, line: 1219, baseType: !416, size: 64, offset: 18240)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2026, file: !1670, line: 1223, baseType: !2813, size: 64, offset: 18304)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2814, line: 99, baseType: !2815)
!2814 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2814, line: 99, size: 64, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2815, file: !2814, line: 99, baseType: !2263, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2026, file: !1670, line: 1225, baseType: !384, size: 32, offset: 18368)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2026, file: !1670, line: 1226, baseType: !109, size: 32, offset: 18400)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2026, file: !1670, line: 1227, baseType: !109, size: 32, offset: 18432)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2026, file: !1670, line: 1231, baseType: !2822, size: 64, offset: 18496)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1670, line: 1231, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2026, file: !1670, line: 1233, baseType: !163, size: 128, offset: 18560)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2026, file: !1670, line: 1240, baseType: !2826, size: 64, offset: 18688)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1670, line: 62, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2026, file: !1670, line: 1242, baseType: !2829, size: 64, offset: 18752)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1670, line: 1242, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2026, file: !1670, line: 1244, baseType: !163, size: 128, offset: 18816)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2026, file: !1670, line: 1245, baseType: !2833, size: 64, offset: 18944)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1670, line: 51, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2026, file: !1670, line: 1246, baseType: !628, size: 256, offset: 19008)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2026, file: !1670, line: 1247, baseType: !7, size: 32, offset: 19264)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2026, file: !1670, line: 1250, baseType: !2838, size: 64, offset: 19328)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1670, line: 57, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2026, file: !1670, line: 1251, baseType: !628, size: 256, offset: 19392)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2026, file: !1670, line: 1252, baseType: !163, size: 128, offset: 19648)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2026, file: !1670, line: 1259, baseType: !1448, size: 64, offset: 19776)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2026, file: !1670, line: 1260, baseType: !844, size: 16, offset: 19840)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2026, file: !1670, line: 1261, baseType: !844, size: 16, offset: 19856)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2026, file: !1670, line: 1314, baseType: !2846, size: 64, offset: 19904)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2848, line: 62, size: 256, align: 256, elements: !2849)
!2848 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2847, file: !2848, line: 75, baseType: !413, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2847, file: !2848, line: 90, baseType: !413, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2847, file: !2848, line: 112, baseType: !417, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 132, baseType: !413, size: 32, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2847, file: !2848, line: 140, baseType: !413, size: 32, offset: 160)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2847, file: !2848, line: 149, baseType: !413, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2847, file: !2848, line: 154, baseType: !2857, offset: 224)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, elements: !759)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2026, file: !1670, line: 1315, baseType: !412, size: 32, offset: 19968)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2026, file: !1670, line: 1316, baseType: !412, size: 32, offset: 20000)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2026, file: !1670, line: 1321, baseType: !313, size: 64, offset: 20032)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2026, file: !1670, line: 1325, baseType: !109, size: 32, offset: 20096)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2026, file: !1670, line: 1326, baseType: !109, size: 32, offset: 20128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2026, file: !1670, line: 1327, baseType: !109, size: 32, offset: 20160)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2026, file: !1670, line: 1328, baseType: !109, size: 32, offset: 20192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2026, file: !1670, line: 1329, baseType: !686, size: 128, align: 64, offset: 20224)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2026, file: !1670, line: 1332, baseType: !2867, size: 128, offset: 20352)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2868, line: 51, size: 128, elements: !2869)
!2868 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2869 = !{!2870, !2875, !2876}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2867, file: !2868, line: 60, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2872, line: 7, size: 64, elements: !2873)
!2872 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2871, file: !2872, line: 12, baseType: !2260, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2867, file: !2868, line: 63, baseType: !875, size: 8, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2867, file: !2868, line: 70, baseType: !875, size: 8, offset: 72)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2026, file: !1670, line: 1335, baseType: !1668, size: 64, offset: 20480)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2026, file: !1670, line: 1337, baseType: !2879, size: 128, offset: 20544)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2868, line: 39, size: 128, elements: !2880)
!2880 = !{!2881, !2882, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2879, file: !2868, line: 40, baseType: !1176, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2879, file: !2868, line: 42, baseType: !413, size: 32, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2879, file: !2868, line: 43, baseType: !413, size: 32, offset: 96)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2026, file: !1670, line: 1340, baseType: !2885, size: 64, offset: 20672)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1670, line: 69, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2026, file: !1670, line: 1351, baseType: !109, size: 32, offset: 20736)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2026, file: !1670, line: 1352, baseType: !109, size: 32, offset: 20768)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2026, file: !1670, line: 1354, baseType: !313, size: 64, offset: 20800)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2026, file: !1670, line: 1364, baseType: !416, size: 64, offset: 20864)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2026, file: !1670, line: 1365, baseType: !416, size: 64, offset: 20928)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2026, file: !1670, line: 1412, baseType: !313, size: 64, offset: 20992)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2026, file: !1670, line: 1453, baseType: !2894, size: 64, offset: 21056)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1670, line: 1453, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2026, file: !1670, line: 1457, baseType: !2897, size: 64, offset: 21120)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2899)
!2899 = !{!2900, !2901, !2920, !2923, !2924, !2957, !2967}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2898, file: !68, line: 62, baseType: !67, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2898, file: !68, line: 64, baseType: !2902, size: 192, offset: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2898, file: !68, line: 64, size: 192, elements: !2903)
!2903 = !{!2904, !2915}
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !68, line: 65, baseType: !2905, size: 192)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2902, file: !68, line: 65, size: 192, elements: !2906)
!2906 = !{!2907, !2914}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2905, file: !68, line: 66, baseType: !2908, size: 128)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2909, line: 50, size: 128, elements: !2910)
!2909 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2910 = !{!2911, !2912, !2913}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2908, file: !2909, line: 52, baseType: !313, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2908, file: !2909, line: 54, baseType: !7, size: 32, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2908, file: !2909, line: 55, baseType: !7, size: 32, offset: 96)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2905, file: !68, line: 67, baseType: !313, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !68, line: 70, baseType: !2916, size: 192)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2902, file: !68, line: 70, size: 192, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2916, file: !68, line: 71, baseType: !686, size: 128, align: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2916, file: !68, line: 72, baseType: !313, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2898, file: !68, line: 76, baseType: !2921, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2898, file: !68, line: 77, baseType: !313, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2898, file: !68, line: 79, baseType: !2925, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2909, line: 25, size: 256, elements: !2927)
!2927 = !{!2928, !2934, !2938}
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2909, line: 26, baseType: !2929, size: 128)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2909, line: 26, size: 128, elements: !2930)
!2930 = !{!2931, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2929, file: !2909, line: 27, baseType: !2932, size: 128)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !2457)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2929, file: !2909, line: 28, baseType: !2932, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2926, file: !2909, line: 31, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2909, line: 23, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2909, line: 33, baseType: !2939, size: 64, offset: 192)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2909, line: 33, size: 64, elements: !2940)
!2940 = !{!2941, !2947, !2952}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2939, file: !2909, line: 38, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2939, file: !2909, line: 34, size: 64, elements: !2943)
!2943 = !{!2944, !2945, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2942, file: !2909, line: 35, baseType: !801, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2942, file: !2909, line: 36, baseType: !221, size: 8, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2942, file: !2909, line: 37, baseType: !221, size: 8, offset: 40)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2939, file: !2909, line: 42, baseType: !2948, size: 16)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2939, file: !2909, line: 39, size: 16, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2948, file: !2909, line: 40, baseType: !221, size: 8)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2948, file: !2909, line: 41, baseType: !221, size: 8, offset: 8)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2939, file: !2909, line: 46, baseType: !2953, size: 16)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2939, file: !2909, line: 43, size: 16, elements: !2954)
!2954 = !{!2955, !2956}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2953, file: !2909, line: 44, baseType: !221, size: 8)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2953, file: !2909, line: 45, baseType: !221, size: 8, offset: 8)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2898, file: !68, line: 81, baseType: !2958, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2966}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2959, file: !68, line: 86, baseType: !2921, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2959, file: !68, line: 87, baseType: !313, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2959, file: !68, line: 88, baseType: !313, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2959, file: !68, line: 89, baseType: !313, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2959, file: !68, line: 90, baseType: !875, size: 8, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2959, file: !68, line: 92, baseType: !2958, size: 64, offset: 320)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2898, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2026, file: !1670, line: 1463, baseType: !2969, offset: 21184)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1670, line: 739, elements: !547)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2026, file: !1670, line: 1470, baseType: !686, size: 128, align: 64, offset: 21184)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2026, file: !1670, line: 1471, baseType: !731, size: 32, offset: 21312)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2026, file: !1670, line: 1472, baseType: !109, size: 32, offset: 21344)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2026, file: !1670, line: 1474, baseType: !2025, size: 64, offset: 21376)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2026, file: !1670, line: 1475, baseType: !2975, size: 320, offset: 21440)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2976, line: 11, size: 320, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2977 = !{!2978, !2979, !2980, !2985}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2975, file: !2976, line: 16, baseType: !539, size: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2975, file: !2976, line: 17, baseType: !313, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2975, file: !2976, line: 18, baseType: !2981, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2975, file: !2976, line: 19, baseType: !412, size: 32, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2026, file: !1670, line: 1478, baseType: !2987, size: 64, offset: 21760)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1586, line: 49, size: 512, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2996, !2997, !2998, !3000}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2988, file: !1586, line: 50, baseType: !2987, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2988, file: !1586, line: 51, baseType: !157, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2988, file: !1586, line: 52, baseType: !313, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2988, file: !1586, line: 53, baseType: !313, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2988, file: !1586, line: 54, baseType: !2995, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2988, file: !1586, line: 56, baseType: !7, size: 32, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2988, file: !1586, line: 58, baseType: !7, size: 32, offset: 352)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2988, file: !1586, line: 59, baseType: !2999, size: 64, offset: 384)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !164, line: 159, baseType: !416)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2988, file: !1586, line: 60, baseType: !1318, size: 64, offset: 448)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2026, file: !1670, line: 1482, baseType: !731, size: 32, offset: 21824)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2026, file: !1670, line: 1489, baseType: !157, size: 64, offset: 21888)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2026, file: !1670, line: 1504, baseType: !157, size: 64, offset: 21952)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2026, file: !1670, line: 1505, baseType: !417, size: 64, offset: 22016)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2026, file: !1670, line: 1506, baseType: !416, size: 64, offset: 22080)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2026, file: !1670, line: 1507, baseType: !417, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2026, file: !1670, line: 1508, baseType: !417, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2026, file: !1670, line: 1509, baseType: !417, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2026, file: !1670, line: 1510, baseType: !686, size: 128, align: 64, offset: 22208)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2026, file: !1670, line: 1511, baseType: !109, size: 32, offset: 22336)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2026, file: !1670, line: 1515, baseType: !3012, size: 64, offset: 22400)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !681, line: 56, size: 64, elements: !3013)
!3013 = !{!3014}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3012, file: !681, line: 57, baseType: !684, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2026, file: !1670, line: 1518, baseType: !3012, size: 64, offset: 22464)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2026, file: !1670, line: 1528, baseType: !686, size: 128, align: 64, offset: 22528)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2026, file: !1670, line: 1552, baseType: !3018, size: 35328, offset: 23040)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3019, line: 430, size: 35328, elements: !3020)
!3019 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3020 = !{!3021, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3050, !3051, !3052, !3053, !3054, !3055, !3058, !3059, !3060, !3061}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3018, file: !3019, line: 432, baseType: !3022, size: 192)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3023, size: 192, elements: !264)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3024, line: 16, size: 64, elements: !3025)
!3024 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3023, file: !3024, line: 17, baseType: !231, size: 16)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3023, file: !3024, line: 18, baseType: !231, size: 16, offset: 16)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3023, file: !3024, line: 19, baseType: !231, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3023, file: !3024, line: 19, baseType: !231, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3023, file: !3024, line: 19, baseType: !231, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3023, file: !3024, line: 19, baseType: !231, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3023, file: !3024, line: 19, baseType: !231, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3023, file: !3024, line: 20, baseType: !231, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3023, file: !3024, line: 20, baseType: !231, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3023, file: !3024, line: 20, baseType: !231, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3023, file: !3024, line: 20, baseType: !231, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3023, file: !3024, line: 20, baseType: !231, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3023, file: !3024, line: 20, baseType: !231, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3018, file: !3019, line: 436, baseType: !313, size: 64, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3018, file: !3019, line: 440, baseType: !233, size: 16, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3018, file: !3019, line: 441, baseType: !233, size: 16, offset: 272)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3018, file: !3019, line: 442, baseType: !233, size: 16, offset: 288)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3018, file: !3019, line: 443, baseType: !233, size: 16, offset: 304)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3018, file: !3019, line: 447, baseType: !313, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3018, file: !3019, line: 448, baseType: !313, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3018, file: !3019, line: 459, baseType: !3047, size: 256, offset: 448)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, size: 256, elements: !740)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3019, line: 428, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3018, file: !3019, line: 461, baseType: !313, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3018, file: !3019, line: 463, baseType: !313, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3018, file: !3019, line: 465, baseType: !313, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3018, file: !3019, line: 466, baseType: !313, size: 64, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3018, file: !3019, line: 467, baseType: !313, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3018, file: !3019, line: 473, baseType: !3056, size: 64, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3019, line: 10, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3018, file: !3019, line: 480, baseType: !313, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3018, file: !3019, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3018, file: !3019, line: 491, baseType: !412, size: 32, offset: 1184)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3018, file: !3019, line: 501, baseType: !3062, size: 33792, offset: 1536)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3063, line: 448, size: 33792, elements: !3064)
!3063 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3064 = !{!3065, !3066, !3067, !3229, !3230, !3236, !3237}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3062, file: !3063, line: 461, baseType: !7, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3062, file: !3063, line: 468, baseType: !313, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3062, file: !3063, line: 476, baseType: !3068, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3063, line: 356, size: 33280, align: 512, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3069, file: !3063, line: 358, baseType: !7, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3069, file: !3063, line: 361, baseType: !7, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3069, file: !3063, line: 364, baseType: !416, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3069, file: !3063, line: 367, baseType: !416, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3069, file: !3063, line: 370, baseType: !416, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3069, file: !3063, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3069, file: !3063, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3069, file: !3063, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3069, file: !3063, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3069, file: !3063, line: 397, baseType: !3081, size: 32768, offset: 512)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3063, line: 348, size: 32768, elements: !3082)
!3082 = !{!3083, !3098, !3135, !3212, !3225}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3081, file: !3063, line: 349, baseType: !3084, size: 896)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3063, line: 12, size: 896, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3097}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3084, file: !3063, line: 13, baseType: !412, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3084, file: !3063, line: 14, baseType: !412, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3084, file: !3063, line: 15, baseType: !412, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3084, file: !3063, line: 16, baseType: !412, size: 32, offset: 96)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3084, file: !3063, line: 17, baseType: !412, size: 32, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3084, file: !3063, line: 18, baseType: !412, size: 32, offset: 160)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3084, file: !3063, line: 19, baseType: !412, size: 32, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3084, file: !3063, line: 22, baseType: !3094, size: 640, offset: 224)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 640, elements: !3095)
!3095 = !{!3096}
!3096 = !DISubrange(count: 20)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3084, file: !3063, line: 25, baseType: !412, size: 32, offset: 864)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3081, file: !3063, line: 350, baseType: !3099, size: 4096, align: 128)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3063, line: 34, size: 4096, align: 128, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3120, !3121, !3122, !3124, !3126, !3130}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3099, file: !3063, line: 35, baseType: !231, size: 16)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3099, file: !3063, line: 36, baseType: !231, size: 16, offset: 16)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3099, file: !3063, line: 37, baseType: !231, size: 16, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3099, file: !3063, line: 38, baseType: !231, size: 16, offset: 48)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3099, file: !3063, line: 39, baseType: !3106, size: 128, offset: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3099, file: !3063, line: 39, size: 128, elements: !3107)
!3107 = !{!3108, !3113}
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !3063, line: 40, baseType: !3109, size: 128)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3063, line: 40, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3109, file: !3063, line: 41, baseType: !416, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3109, file: !3063, line: 42, baseType: !416, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !3063, line: 44, baseType: !3114, size: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3063, line: 44, size: 128, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3114, file: !3063, line: 45, baseType: !412, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3114, file: !3063, line: 46, baseType: !412, size: 32, offset: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3114, file: !3063, line: 47, baseType: !412, size: 32, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3114, file: !3063, line: 48, baseType: !412, size: 32, offset: 96)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3099, file: !3063, line: 51, baseType: !412, size: 32, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3099, file: !3063, line: 52, baseType: !412, size: 32, offset: 224)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3099, file: !3063, line: 55, baseType: !3123, size: 1024, offset: 256)
!3123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !425)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3099, file: !3063, line: 58, baseType: !3125, size: 2048, offset: 1280)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !268)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3099, file: !3063, line: 60, baseType: !3127, size: 384, offset: 3328)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !3128)
!3128 = !{!3129}
!3129 = !DISubrange(count: 12)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3099, file: !3063, line: 62, baseType: !3131, size: 384, offset: 3712)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3099, file: !3063, line: 62, size: 384, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3131, file: !3063, line: 63, baseType: !3127, size: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3131, file: !3063, line: 64, baseType: !3127, size: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3081, file: !3063, line: 351, baseType: !3136, size: 1088)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3063, line: 79, size: 1088, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3211}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3136, file: !3063, line: 80, baseType: !412, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3136, file: !3063, line: 81, baseType: !412, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3136, file: !3063, line: 82, baseType: !412, size: 32, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3136, file: !3063, line: 83, baseType: !412, size: 32, offset: 96)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3136, file: !3063, line: 84, baseType: !412, size: 32, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3136, file: !3063, line: 85, baseType: !412, size: 32, offset: 160)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3136, file: !3063, line: 86, baseType: !412, size: 32, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3136, file: !3063, line: 88, baseType: !3094, size: 640, offset: 224)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3136, file: !3063, line: 89, baseType: !221, size: 8, offset: 864)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3136, file: !3063, line: 90, baseType: !221, size: 8, offset: 872)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3136, file: !3063, line: 91, baseType: !221, size: 8, offset: 880)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3136, file: !3063, line: 92, baseType: !221, size: 8, offset: 888)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3136, file: !3063, line: 93, baseType: !221, size: 8, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3136, file: !3063, line: 94, baseType: !221, size: 8, offset: 904)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3136, file: !3063, line: 95, baseType: !3153, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3155, line: 11, size: 128, elements: !3156)
!3155 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3154, file: !3155, line: 12, baseType: !299, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3154, file: !3155, line: 13, baseType: !3159, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3161, line: 103, size: 1344, elements: !3162)
!3161 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3191, !3192, !3193}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3160, file: !3161, line: 109, baseType: !313, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3160, file: !3161, line: 110, baseType: !313, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3160, file: !3161, line: 111, baseType: !313, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3160, file: !3161, line: 112, baseType: !313, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3160, file: !3161, line: 113, baseType: !313, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3160, file: !3161, line: 114, baseType: !313, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3160, file: !3161, line: 117, baseType: !313, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3160, file: !3161, line: 118, baseType: !313, size: 64, offset: 448)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3160, file: !3161, line: 119, baseType: !313, size: 64, offset: 512)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3160, file: !3161, line: 120, baseType: !313, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3160, file: !3161, line: 121, baseType: !313, size: 64, offset: 640)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3160, file: !3161, line: 122, baseType: !313, size: 64, offset: 704)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3160, file: !3161, line: 123, baseType: !313, size: 64, offset: 768)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3160, file: !3161, line: 124, baseType: !313, size: 64, offset: 832)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3160, file: !3161, line: 125, baseType: !313, size: 64, offset: 896)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3160, file: !3161, line: 139, baseType: !313, size: 64, offset: 960)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3160, file: !3161, line: 142, baseType: !313, size: 64, offset: 1024)
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3161, line: 144, baseType: !3181, size: 64, offset: 1088)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3161, line: 144, size: 64, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3181, file: !3161, line: 146, baseType: !231, size: 16)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3181, file: !3161, line: 148, baseType: !416, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3181, file: !3161, line: 150, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3161, line: 59, size: 64, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3186, file: !3161, line: 61, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3186, file: !3161, line: 63, baseType: !416, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3186, file: !3161, line: 65, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3160, file: !3161, line: 153, baseType: !313, size: 64, offset: 1152)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3160, file: !3161, line: 154, baseType: !313, size: 64, offset: 1216)
!3193 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3161, line: 156, baseType: !3194, size: 64, offset: 1280)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3161, line: 156, size: 64, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3194, file: !3161, line: 158, baseType: !231, size: 16)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3194, file: !3161, line: 160, baseType: !416, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3194, file: !3161, line: 162, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3161, line: 69, size: 64, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3199, file: !3161, line: 71, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3199, file: !3161, line: 73, baseType: !416, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3199, file: !3161, line: 75, baseType: !416, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3199, file: !3161, line: 77, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3199, file: !3161, line: 80, baseType: !416, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3199, file: !3161, line: 83, baseType: !416, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3199, file: !3161, line: 86, baseType: !416, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3199, file: !3161, line: 88, baseType: !416, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3199, file: !3161, line: 93, baseType: !416, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3199, file: !3161, line: 100, baseType: !416, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3136, file: !3063, line: 96, baseType: !412, size: 32, offset: 1024)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3081, file: !3063, line: 352, baseType: !3213, size: 4608, align: 512)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3063, line: 333, size: 4608, align: 512, elements: !3214)
!3214 = !{!3215, !3216, !3223}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3213, file: !3063, line: 334, baseType: !3099, size: 4096, align: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3213, file: !3063, line: 335, baseType: !3217, size: 512, offset: 4096)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3063, line: 312, size: 512, elements: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3217, file: !3063, line: 313, baseType: !416, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3217, file: !3063, line: 314, baseType: !416, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3217, file: !3063, line: 315, baseType: !3222, size: 384, offset: 128)
!3222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !862)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3213, file: !3063, line: 336, baseType: !3224, offset: 4608)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !759)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3081, file: !3063, line: 353, baseType: !3226, size: 32768)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 32768, elements: !3227)
!3227 = !{!3228}
!3228 = !DISubrange(count: 4096)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3062, file: !3063, line: 484, baseType: !3068, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3062, file: !3063, line: 491, baseType: !3231, size: 128, offset: 256)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3063, line: 404, size: 128, elements: !3232)
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3231, file: !3063, line: 424, baseType: !416, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3231, file: !3063, line: 432, baseType: !7, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3231, file: !3063, line: 440, baseType: !7, size: 32, offset: 96)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3062, file: !3063, line: 498, baseType: !3231, size: 128, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3062, file: !3063, line: 508, baseType: !3069, size: 33280, align: 512, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2007, file: !2008, line: 16, baseType: !744, size: 192, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2007, file: !2008, line: 17, baseType: !213, size: 32, offset: 704)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !495, file: !14, line: 1240, baseType: !157, size: 64, offset: 6912)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !495, file: !14, line: 1243, baseType: !412, size: 32, offset: 6976)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !495, file: !14, line: 1245, baseType: !832, size: 64, offset: 7040)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !495, file: !14, line: 1246, baseType: !832, size: 64, offset: 7104)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !495, file: !14, line: 1248, baseType: !413, size: 32, offset: 7168)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !495, file: !14, line: 1249, baseType: !3246, size: 64, offset: 7232)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !495, file: !14, line: 1252, baseType: !3249, size: 256, offset: 7296)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !425)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !495, file: !14, line: 1253, baseType: !3251, size: 128, offset: 7552)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3252, line: 21, baseType: !3253)
!3252 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3252, line: 19, size: 128, elements: !3254)
!3254 = !{!3255}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3253, file: !3252, line: 20, baseType: !3256, size: 128)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !2457)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !495, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !495, file: !14, line: 1261, baseType: !628, size: 256, offset: 7744)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !495, file: !14, line: 1267, baseType: !182, size: 64, offset: 8000)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !495, file: !14, line: 1269, baseType: !441, size: 64, offset: 8064)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !495, file: !14, line: 1271, baseType: !3262, size: 448, offset: 8128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1787, line: 63, size: 448, elements: !3263)
!3263 = !{!3264, !3269, !3270, !3271, !3272, !3273, !3274}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3262, file: !1787, line: 64, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!313, !3268, !1785}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3262, file: !1787, line: 66, baseType: !3265, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3262, file: !1787, line: 69, baseType: !299, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3262, file: !1787, line: 70, baseType: !109, size: 32, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !1787, line: 71, baseType: !7, size: 32, offset: 224)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3262, file: !1787, line: 74, baseType: !163, size: 128, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3262, file: !1787, line: 85, baseType: !3275, size: 64, offset: 384)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !495, file: !14, line: 1274, baseType: !632, size: 64, offset: 8576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !495, file: !14, line: 1280, baseType: !632, size: 64, offset: 8640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !495, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !495, file: !14, line: 1286, baseType: !1719, size: 32, offset: 8736)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !495, file: !14, line: 1289, baseType: !3281, size: 64, offset: 8768)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1358, line: 18, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !495, file: !14, line: 1290, baseType: !535, size: 64, offset: 8832)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !495, file: !14, line: 1297, baseType: !958, size: 64, offset: 8896)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !495, file: !14, line: 1304, baseType: !3286, size: 64, offset: 8960)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3287, line: 49, size: 64, elements: !3288)
!3287 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3286, file: !3287, line: 50, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3287, line: 41, size: 512, align: 512, elements: !3292)
!3292 = !{!3293, !3294, !3299}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3291, file: !3287, line: 43, baseType: !193, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3291, file: !3287, line: 45, baseType: !3295, size: 192, offset: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3287, line: 29, size: 192, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3295, file: !3287, line: 30, baseType: !163, size: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3295, file: !3287, line: 32, baseType: !299, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3291, file: !3287, line: 46, baseType: !299, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !495, file: !14, line: 1305, baseType: !3286, size: 64, offset: 9024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !495, file: !14, line: 1306, baseType: !686, size: 128, align: 64, offset: 9088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !495, file: !14, line: 1307, baseType: !1357, size: 256, offset: 9216)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !495, file: !14, line: 1309, baseType: !628, size: 256, offset: 9472)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !495, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !495, file: !14, line: 1317, baseType: !193, size: 32, align: 512, offset: 10240)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !495, file: !14, line: 1318, baseType: !163, size: 128, offset: 10304)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !495, file: !14, line: 1320, baseType: !193, size: 32, offset: 10432)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !495, file: !14, line: 1321, baseType: !163, size: 128, offset: 10496)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !489, file: !490, line: 73, baseType: !109, size: 32, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !489, file: !490, line: 74, baseType: !3311, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !783, line: 42, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !443, file: !380, line: 141, baseType: !3315, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!109, !1847, !875}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !443, file: !380, line: 142, baseType: !3319, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!378, !378, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !379, file: !380, line: 96, baseType: !494, size: 64, offset: 832)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !379, file: !380, line: 97, baseType: !313, size: 64, offset: 896)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !379, file: !380, line: 98, baseType: !157, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !380, line: 100, baseType: !3328, size: 128, offset: 1024)
!3328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 100, size: 128, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3328, file: !380, line: 101, baseType: !163, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3328, file: !380, line: 102, baseType: !1622, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !379, file: !380, line: 104, baseType: !163, size: 128, offset: 1152)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !379, file: !380, line: 105, baseType: !163, size: 128, offset: 1280)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !379, file: !380, line: 113, baseType: !3335, size: 128, offset: 1408)
!3335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 109, size: 128, elements: !3336)
!3336 = !{!3337, !3338, !3339}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3335, file: !380, line: 110, baseType: !539, size: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3335, file: !380, line: 111, baseType: !394, size: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3335, file: !380, line: 112, baseType: !686, size: 128, align: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !372, file: !14, line: 1968, baseType: !3341, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!182, !378, !343, !3344}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3346, line: 10, size: 128, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3347 = !{!3348, !3352}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3345, file: !3346, line: 11, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !157}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3345, file: !3346, line: 12, baseType: !157, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !372, file: !14, line: 1969, baseType: !3354, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!109, !3311, !343, !109}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !372, file: !14, line: 1970, baseType: !3358, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!366, !343, !109, !875}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !372, file: !14, line: 1972, baseType: !3362, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!109, !378, !263, !109}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !372, file: !14, line: 1974, baseType: !3366, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!109, !3311, !343, !378, !305, !875}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !372, file: !14, line: 1976, baseType: !3370, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!109, !378, !343, !378}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !372, file: !14, line: 1977, baseType: !3374, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!109, !343, !378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !372, file: !14, line: 1978, baseType: !3378, size: 64, offset: 512)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!109, !3311, !343, !378, !182}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !372, file: !14, line: 1980, baseType: !3382, size: 64, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!109, !3311, !343, !378, !305}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !372, file: !14, line: 1982, baseType: !3374, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !372, file: !14, line: 1983, baseType: !3387, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!109, !3311, !343, !378, !305, !499}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !372, file: !14, line: 1985, baseType: !3391, size: 64, offset: 768)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!109, !3311, !343, !378, !343, !378, !7}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !372, file: !14, line: 1987, baseType: !3395, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!109, !3311, !378, !3398}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3413, !3422, !3423, !3428, !3429, !3430}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3399, file: !14, line: 227, baseType: !7, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3399, file: !14, line: 228, baseType: !305, size: 16, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3399, file: !14, line: 241, baseType: !3404, size: 32, offset: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3399, file: !14, line: 241, size: 32, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3404, file: !14, line: 242, baseType: !349, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3404, file: !14, line: 243, baseType: !3408, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3409, line: 16, baseType: !3410)
!3409 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3409, line: 14, size: 32, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3410, file: !3409, line: 15, baseType: !354, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !3399, file: !14, line: 245, baseType: !3414, size: 32, offset: 96)
!3414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3399, file: !14, line: 245, size: 32, elements: !3415)
!3415 = !{!3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3414, file: !14, line: 246, baseType: !358, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3414, file: !14, line: 247, baseType: !3418, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3409, line: 20, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3409, line: 18, size: 32, elements: !3420)
!3420 = !{!3421}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3419, file: !3409, line: 19, baseType: !362, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3399, file: !14, line: 249, baseType: !504, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3399, file: !14, line: 250, baseType: !3424, size: 128, offset: 192)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !833, line: 13, size: 128, elements: !3425)
!3425 = !{!3426, !3427}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3424, file: !833, line: 14, baseType: !832, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3424, file: !833, line: 15, baseType: !299, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3399, file: !14, line: 251, baseType: !3424, size: 128, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3399, file: !14, line: 252, baseType: !3424, size: 128, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3399, file: !14, line: 259, baseType: !1003, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !372, file: !14, line: 1988, baseType: !3432, size: 64, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!109, !3311, !1847, !3435, !412, !7}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3437, line: 22, size: 1280, elements: !3438)
!3437 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3436, file: !3437, line: 23, baseType: !412, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3436, file: !3437, line: 24, baseType: !305, size: 16, offset: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3436, file: !3437, line: 25, baseType: !7, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3436, file: !3437, line: 26, baseType: !840, size: 32, offset: 96)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3436, file: !3437, line: 27, baseType: !416, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3436, file: !3437, line: 28, baseType: !416, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3436, file: !3437, line: 41, baseType: !416, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3436, file: !3437, line: 42, baseType: !499, size: 32, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3436, file: !3437, line: 43, baseType: !499, size: 32, offset: 352)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3436, file: !3437, line: 44, baseType: !349, size: 32, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3436, file: !3437, line: 45, baseType: !358, size: 32, offset: 416)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3436, file: !3437, line: 46, baseType: !504, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3436, file: !3437, line: 47, baseType: !3424, size: 128, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3436, file: !3437, line: 48, baseType: !3424, size: 128, offset: 640)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3436, file: !3437, line: 49, baseType: !3424, size: 128, offset: 768)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3436, file: !3437, line: 50, baseType: !3424, size: 128, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3436, file: !3437, line: 51, baseType: !416, size: 64, offset: 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3436, file: !3437, line: 52, baseType: !416, size: 64, offset: 1088)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3436, file: !3437, line: 53, baseType: !412, size: 32, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3436, file: !3437, line: 54, baseType: !412, size: 32, offset: 1184)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3436, file: !3437, line: 55, baseType: !416, size: 64, offset: 1216)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !372, file: !14, line: 1990, baseType: !3461, size: 64, offset: 960)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!295, !378, !263, !310}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !372, file: !14, line: 1991, baseType: !3465, size: 64, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!109, !343, !3468, !416, !416}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !372, file: !14, line: 1993, baseType: !3471, size: 64, offset: 1088)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!109, !343, !109}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !372, file: !14, line: 1994, baseType: !3475, size: 64, offset: 1152)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!109, !343, !378, !1003, !7, !305}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !372, file: !14, line: 1997, baseType: !3479, size: 64, offset: 1216)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!109, !3311, !343, !1003, !305}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !372, file: !14, line: 1999, baseType: !3483, size: 64, offset: 1280)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!366, !3311, !378, !109}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !372, file: !14, line: 2001, baseType: !3487, size: 64, offset: 1344)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!109, !3311, !378, !366, !109}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !372, file: !14, line: 2003, baseType: !3491, size: 64, offset: 1408)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!109, !3311, !378, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !372, file: !14, line: 2005, baseType: !3497, size: 64, offset: 1472)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!109, !378, !3494}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !372, file: !14, line: 2006, baseType: !3501, size: 64, offset: 1536)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!3504, !343}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3506)
!3506 = !{!3507, !3514}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3505, file: !14, line: 3193, baseType: !3508, size: 128)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3509, line: 296, size: 128, elements: !3510)
!3509 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3510 = !{!3511, !3512, !3513}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3508, file: !3509, line: 297, baseType: !193, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3508, file: !3509, line: 299, baseType: !1466, size: 32, offset: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3508, file: !3509, line: 300, baseType: !157, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3505, file: !14, line: 3194, baseType: !412, size: 32, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !344, file: !14, line: 655, baseType: !494, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !344, file: !14, line: 656, baseType: !339, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !344, file: !14, line: 659, baseType: !157, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !344, file: !14, line: 663, baseType: !313, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 671, baseType: !3520, size: 32, offset: 704)
!3520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 671, size: 32, elements: !3521)
!3521 = !{!3522, !3524}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3520, file: !14, line: 672, baseType: !3523, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3520, file: !14, line: 673, baseType: !7, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !344, file: !14, line: 675, baseType: !499, size: 32, offset: 736)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !344, file: !14, line: 676, baseType: !504, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !344, file: !14, line: 677, baseType: !3424, size: 128, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !344, file: !14, line: 678, baseType: !3424, size: 128, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !344, file: !14, line: 679, baseType: !3424, size: 128, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !344, file: !14, line: 680, baseType: !193, size: 32, offset: 1216)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !344, file: !14, line: 681, baseType: !233, size: 16, offset: 1248)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !344, file: !14, line: 682, baseType: !221, size: 8, offset: 1264)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !344, file: !14, line: 683, baseType: !221, size: 8, offset: 1272)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !344, file: !14, line: 684, baseType: !1920, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !344, file: !14, line: 691, baseType: !313, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !344, file: !14, line: 692, baseType: !816, size: 320, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !344, file: !14, line: 694, baseType: !313, size: 64, offset: 1728)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !344, file: !14, line: 695, baseType: !313, size: 64, offset: 1792)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !344, file: !14, line: 697, baseType: !539, size: 128, offset: 1856)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !344, file: !14, line: 698, baseType: !163, size: 128, offset: 1984)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !344, file: !14, line: 707, baseType: !163, size: 128, offset: 2112)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !344, file: !14, line: 708, baseType: !163, size: 128, offset: 2240)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 709, baseType: !3544, size: 128, offset: 2368)
!3544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 709, size: 128, elements: !3545)
!3545 = !{!3546, !3547}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3544, file: !14, line: 710, baseType: !535, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3544, file: !14, line: 711, baseType: !686, size: 128, align: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !344, file: !14, line: 713, baseType: !634, size: 64, offset: 2496)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !344, file: !14, line: 714, baseType: !634, size: 64, offset: 2560)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !344, file: !14, line: 715, baseType: !213, size: 32, offset: 2624)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !344, file: !14, line: 716, baseType: !213, size: 32, offset: 2656)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !344, file: !14, line: 717, baseType: !213, size: 32, offset: 2688)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !344, file: !14, line: 719, baseType: !213, size: 32, offset: 2720)
!3554 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 721, baseType: !3555, size: 64, offset: 2752)
!3555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 721, size: 64, elements: !3556)
!3556 = !{!3557, !3558}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3555, file: !14, line: 722, baseType: !994, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3555, file: !14, line: 723, baseType: !566, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !344, file: !14, line: 725, baseType: !3560, size: 64, offset: 2816)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !344, file: !14, line: 726, baseType: !340, size: 1536, align: 64, offset: 2880)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !344, file: !14, line: 727, baseType: !163, size: 128, offset: 4416)
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 728, baseType: !3565, size: 64, offset: 4544)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 728, size: 64, elements: !3566)
!3566 = !{!3567, !3568, !3579, !3580}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3565, file: !14, line: 729, baseType: !1668, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3565, file: !14, line: 730, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3571, line: 14, size: 832, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3570, file: !3571, line: 15, baseType: !178, size: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3570, file: !3571, line: 16, baseType: !158, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3570, file: !3571, line: 17, baseType: !994, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3570, file: !3571, line: 18, baseType: !163, size: 128, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3570, file: !3571, line: 19, baseType: !499, size: 32, offset: 768)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3570, file: !3571, line: 20, baseType: !7, size: 32, offset: 800)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3565, file: !14, line: 731, baseType: !263, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3565, file: !14, line: 732, baseType: !7, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !344, file: !14, line: 735, baseType: !413, size: 32, offset: 4608)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !344, file: !14, line: 738, baseType: !413, size: 32, offset: 4640)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !344, file: !14, line: 739, baseType: !3246, size: 64, offset: 4672)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !344, file: !14, line: 750, baseType: !157, size: 64, offset: 4736)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !340, file: !14, line: 474, baseType: !3508, size: 128, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !340, file: !14, line: 475, baseType: !816, size: 320, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !340, file: !14, line: 476, baseType: !1466, size: 32, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !340, file: !14, line: 477, baseType: !213, size: 32, offset: 544)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !340, file: !14, line: 482, baseType: !2195, size: 128, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !340, file: !14, line: 483, baseType: !313, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !340, file: !14, line: 484, baseType: !313, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !340, file: !14, line: 485, baseType: !3593, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3596)
!3596 = !{!3597, !3601, !3605, !3609, !3613, !3629, !3633, !3637, !3642, !3646, !3650, !3654, !3655, !3659, !3663, !3667, !3672, !3676, !3683, !3684}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3595, file: !14, line: 405, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!109, !1176, !578}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3595, file: !14, line: 406, baseType: !3602, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!109, !1003, !1037}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3595, file: !14, line: 409, baseType: !3606, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!109, !339, !578}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3595, file: !14, line: 412, baseType: !3610, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!875, !339, !1037}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3595, file: !14, line: 414, baseType: !3614, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1034, line: 1276, size: 448, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3624, !3625, !3626, !3627, !3628}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3618, file: !1034, line: 1277, baseType: !1003, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3618, file: !1034, line: 1278, baseType: !339, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3618, file: !1034, line: 1279, baseType: !3623, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3618, file: !1034, line: 1281, baseType: !313, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3618, file: !1034, line: 1282, baseType: !7, size: 32, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3618, file: !1034, line: 1283, baseType: !7, size: 32, offset: 288)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3618, file: !1034, line: 1284, baseType: !875, size: 8, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3618, file: !1034, line: 1285, baseType: !313, size: 64, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3595, file: !14, line: 416, baseType: !3630, size: 64, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!109, !1003, !339, !504, !7, !2995, !1684}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3595, file: !14, line: 419, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!109, !1003, !339, !504, !7, !7, !1176, !157}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3595, file: !14, line: 424, baseType: !3638, size: 64, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!3641, !339, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !164, line: 131, baseType: !416)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3595, file: !14, line: 425, baseType: !3643, size: 64, offset: 512)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{null, !1037, !310, !310}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3595, file: !14, line: 426, baseType: !3647, size: 64, offset: 576)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!875, !1037, !1466}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3595, file: !14, line: 427, baseType: !3651, size: 64, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !1037}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3595, file: !14, line: 428, baseType: !1013, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3595, file: !14, line: 433, baseType: !3656, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!109, !339, !1037, !1037, !74}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3595, file: !14, line: 435, baseType: !3660, size: 64, offset: 832)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!109, !1037}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3595, file: !14, line: 436, baseType: !3664, size: 64, offset: 896)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!875, !1037, !310, !310}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3595, file: !14, line: 438, baseType: !3668, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !1037, !3671, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3595, file: !14, line: 439, baseType: !3673, size: 64, offset: 1024)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!109, !339, !1176}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3595, file: !14, line: 442, baseType: !3677, size: 64, offset: 1088)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!109, !3680, !1003, !3682}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3595, file: !14, line: 444, baseType: !1676, size: 64, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3595, file: !14, line: 445, baseType: !3685, size: 64, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!109, !1016, !1584}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !14, line: 486, baseType: !313, size: 64, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !340, file: !14, line: 487, baseType: !816, size: 320, offset: 960)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !340, file: !14, line: 488, baseType: !1719, size: 32, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !340, file: !14, line: 489, baseType: !193, size: 32, offset: 1312)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !340, file: !14, line: 490, baseType: !163, size: 128, offset: 1344)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !340, file: !14, line: 491, baseType: !157, size: 64, offset: 1472)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !330, file: !289, line: 180, baseType: !3695, size: 64, offset: 320)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!295, !1003, !186, !329, !263, !504, !310}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !330, file: !289, line: 182, baseType: !3695, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !330, file: !289, line: 184, baseType: !3700, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!109, !1003, !186, !329, !1190}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !318, file: !289, line: 90, baseType: !3704, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !318, file: !289, line: 91, baseType: !3706, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !279, file: !179, line: 120, baseType: !3708, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!3711, !246}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3713)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3714)
!3714 = !{!3715, !3716, !3720, !3724, !3730, !3734}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3713, file: !82, line: 40, baseType: !81, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3713, file: !82, line: 41, baseType: !3717, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!875}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3713, file: !82, line: 42, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!157}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3713, file: !82, line: 43, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!1318, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3713, file: !82, line: 44, baseType: !3731, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!1318}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3713, file: !82, line: 45, baseType: !3349, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !279, file: !179, line: 121, baseType: !3736, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!1318, !246}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !279, file: !179, line: 122, baseType: !3740, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !246, !3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !178, file: !179, line: 70, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !519, line: 190, size: 1152, elements: !3748)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3828, !3829, !3830, !3831, !3832, !3835}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3747, file: !519, line: 191, baseType: !213, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3747, file: !519, line: 192, baseType: !213, size: 32, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3747, file: !519, line: 202, baseType: !3746, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3747, file: !519, line: 203, baseType: !182, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3747, file: !519, line: 205, baseType: !808, size: 192, align: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3747, file: !519, line: 207, baseType: !1318, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3747, file: !519, line: 208, baseType: !7, size: 32, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !3747, file: !519, line: 209, baseType: !3757, size: 256, offset: 512)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3747, file: !519, line: 209, size: 256, elements: !3758)
!3758 = !{!3759, !3768, !3772}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3757, file: !519, line: 210, baseType: !3760, size: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !519, line: 153, size: 256, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3767}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3760, file: !519, line: 154, baseType: !313, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3760, file: !519, line: 156, baseType: !2198, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3760, file: !519, line: 162, baseType: !3765, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !519, line: 162, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3760, file: !519, line: 167, baseType: !313, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3757, file: !519, line: 211, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !519, line: 170, size: 64, elements: !3770)
!3770 = !{!3771}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3769, file: !519, line: 171, baseType: !3746, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3757, file: !519, line: 212, baseType: !3773, size: 256)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !519, line: 174, size: 256, elements: !3774)
!3774 = !{!3775, !3823, !3826, !3827}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3773, file: !519, line: 175, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !519, line: 271, size: 768, elements: !3779)
!3779 = !{!3780, !3800, !3804, !3805, !3806, !3807, !3808, !3812, !3813, !3814, !3815, !3819}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3778, file: !519, line: 276, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!109, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !519, line: 251, size: 1216, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3785, file: !519, line: 253, baseType: !3746, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3785, file: !519, line: 254, baseType: !1003, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3785, file: !519, line: 255, baseType: !616, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3785, file: !519, line: 256, baseType: !157, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3785, file: !519, line: 259, baseType: !628, size: 256, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3785, file: !519, line: 260, baseType: !628, size: 256, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3785, file: !519, line: 261, baseType: !109, size: 32, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3785, file: !519, line: 262, baseType: !163, size: 128, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3785, file: !519, line: 263, baseType: !263, size: 64, offset: 960)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3785, file: !519, line: 265, baseType: !310, size: 64, offset: 1024)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3785, file: !519, line: 266, baseType: !875, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3785, file: !519, line: 267, baseType: !875, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3785, file: !519, line: 268, baseType: !1400, size: 64, offset: 1152)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3778, file: !519, line: 277, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3784}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3778, file: !519, line: 290, baseType: !667, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3778, file: !519, line: 292, baseType: !654, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3778, file: !519, line: 293, baseType: !663, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3778, file: !519, line: 294, baseType: !659, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3778, file: !519, line: 296, baseType: !3809, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!295, !3784, !263, !310, !504}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3778, file: !519, line: 306, baseType: !310, size: 64, offset: 448)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3778, file: !519, line: 313, baseType: !875, size: 8, offset: 512)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3778, file: !519, line: 314, baseType: !3809, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3778, file: !519, line: 317, baseType: !3816, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!1611, !3784, !1613}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3778, file: !519, line: 320, baseType: !3820, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!109, !3784, !1190}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3773, file: !519, line: 176, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !519, line: 35, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3773, file: !519, line: 177, baseType: !504, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3773, file: !519, line: 178, baseType: !3746, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3747, file: !519, line: 215, baseType: !157, size: 64, offset: 768)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3747, file: !519, line: 221, baseType: !416, size: 64, offset: 832)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3747, file: !519, line: 223, baseType: !233, size: 16, offset: 896)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3747, file: !519, line: 224, baseType: !305, size: 16, offset: 912)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3747, file: !519, line: 225, baseType: !3833, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !519, line: 36, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3747, file: !519, line: 227, baseType: !686, size: 128, align: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !178, file: !179, line: 71, baseType: !3837, size: 32, offset: 448)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3838, line: 19, size: 32, elements: !3839)
!3838 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3839 = !{!3840}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3837, file: !3838, line: 20, baseType: !731, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !178, file: !179, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !178, file: !179, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !178, file: !179, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !178, file: !179, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !178, file: !179, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !175, file: !6, line: 47, baseType: !158, size: 64, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !175, file: !6, line: 48, baseType: !186, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !175, file: !6, line: 49, baseType: !3849, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !175, file: !6, line: 50, baseType: !2414, size: 64, offset: 704)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !159, file: !6, line: 418, baseType: !3853, size: 64, offset: 1408)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3855)
!3855 = !{!3856, !3857, !3862, !3866, !3870, !3874}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3854, file: !6, line: 54, baseType: !301, size: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3854, file: !6, line: 55, baseType: !3858, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!295, !3853, !3861, !263}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3854, file: !6, line: 57, baseType: !3863, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!295, !3853, !3861, !182, !310}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3854, file: !6, line: 59, baseType: !3867, size: 64, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !158, !182}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3854, file: !6, line: 60, baseType: !3871, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!109, !158}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3854, file: !6, line: 61, baseType: !3875, size: 64, offset: 384)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !158}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !159, file: !6, line: 419, baseType: !182, size: 64, offset: 1472)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !159, file: !6, line: 420, baseType: !182, size: 64, offset: 1536)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !159, file: !6, line: 421, baseType: !186, size: 64, offset: 1600)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !159, file: !6, line: 424, baseType: !3882, size: 64, offset: 1664)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3884)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !159, file: !6, line: 425, baseType: !3886, size: 64, offset: 1728)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !159, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !159, file: !6, line: 435, baseType: !628, size: 256, offset: 1856)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !159, file: !6, line: 437, baseType: !3891, size: 64, offset: 2112)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3893, line: 69, size: 320, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3894 = !{!3895, !3896, !3897, !3914, !3916, !3920, !3921}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3892, file: !3893, line: 70, baseType: !182, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3892, file: !3893, line: 71, baseType: !158, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3892, file: !3893, line: 72, baseType: !3898, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3893, line: 47, size: 256, elements: !3901)
!3901 = !{!3902, !3903, !3909, !3913}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3900, file: !3893, line: 49, baseType: !7, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3900, file: !3893, line: 51, baseType: !3904, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!109, !182, !3907}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3892)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3900, file: !3893, line: 53, baseType: !3910, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!109, !263, !3907}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3900, file: !3893, line: 55, baseType: !3349, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3892, file: !3893, line: 73, baseType: !3915, size: 16, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3892, file: !3893, line: 74, baseType: !3917, size: 8, offset: 208)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !222, line: 16, baseType: !3918)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !224, line: 20, baseType: !3919)
!3919 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3892, file: !3893, line: 75, baseType: !221, size: 8, offset: 216)
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !3893, line: 76, baseType: !3922, size: 64, offset: 256)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !3893, line: 76, size: 64, elements: !3923)
!3923 = !{!3924, !3925, !3932}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3922, file: !3893, line: 77, baseType: !157, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3922, file: !3893, line: 78, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3893, line: 86, size: 128, elements: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3928, file: !3893, line: 87, baseType: !7, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3928, file: !3893, line: 88, baseType: !263, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3922, file: !3893, line: 79, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3893, line: 92, size: 256, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3935, file: !3893, line: 94, baseType: !7, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3935, file: !3893, line: 95, baseType: !7, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3935, file: !3893, line: 96, baseType: !2019, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3935, file: !3893, line: 97, baseType: !3898, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3935, file: !3893, line: 98, baseType: !157, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !159, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !159, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !159, file: !6, line: 442, baseType: !3882, size: 64, offset: 2240)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !159, file: !6, line: 443, baseType: !3886, size: 64, offset: 2304)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !159, file: !6, line: 444, baseType: !875, size: 8, offset: 2368)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !159, file: !6, line: 451, baseType: !875, size: 8, offset: 2376)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !159, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !159, file: !6, line: 455, baseType: !3950, size: 64, offset: 2432)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3952, line: 23, size: 96, elements: !3953)
!3952 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3951, file: !3952, line: 24, baseType: !109, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3951, file: !3952, line: 24, baseType: !109, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3951, file: !3952, line: 24, baseType: !109, size: 32, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !159, file: !6, line: 458, baseType: !3958, size: 64, offset: 2496)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!109}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !159, file: !6, line: 460, baseType: !3962, size: 4032, align: 512, offset: 2560)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3963, size: 4032, elements: !3977)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3964)
!3964 = !{!3965, !3966, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3963, file: !6, line: 363, baseType: !157, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3963, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3963, file: !6, line: 367, baseType: !3968, size: 448, offset: 128)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3968, file: !6, line: 320, baseType: !158, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3968, file: !6, line: 321, baseType: !3972, size: 384, offset: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3973, line: 40, size: 384, elements: !3974)
!3973 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3974 = !{!3975}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3972, file: !3973, line: 41, baseType: !3976, size: 384, align: 64)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 384, align: 64, elements: !2539)
!3977 = !{!3978}
!3978 = !DISubrange(count: 7)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !159, file: !6, line: 463, baseType: !3980, size: 192, offset: 6592)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3981, line: 8, size: 192, elements: !3982)
!3981 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3980, file: !3981, line: 10, baseType: !7, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3980, file: !3981, line: 11, baseType: !610, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3980, file: !3981, line: 12, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3988, line: 59, size: 48, elements: !3989)
!3988 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3989 = !{!3990, !3991, !3992, !3993, !3994, !3995}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3987, file: !3988, line: 60, baseType: !1335, size: 16)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3987, file: !3988, line: 61, baseType: !1335, size: 16, offset: 16)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3987, file: !3988, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3987, file: !3988, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3987, file: !3988, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3987, file: !3988, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !159, file: !6, line: 465, baseType: !313, size: 64, offset: 6784)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !159, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !159, file: !6, line: 470, baseType: !163, size: 128, offset: 6912)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !159, file: !6, line: 471, baseType: !4000, size: 64, offset: 7040)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4002, line: 33, size: 96, elements: !4003)
!4002 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4003 = !{!4004, !4005, !4006, !4007}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4001, file: !4002, line: 37, baseType: !109, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4001, file: !4002, line: 43, baseType: !109, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4001, file: !4002, line: 45, baseType: !233, size: 16, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4001, file: !4002, line: 47, baseType: !233, size: 16, offset: 80)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !159, file: !6, line: 476, baseType: !4009, size: 64, offset: 7104)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4011)
!4011 = !{!4012, !4028, !4029, !4030}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4010, file: !6, line: 379, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4015, line: 204, baseType: !4016)
!4015 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4015, line: 197, size: 192, elements: !4017)
!4017 = !{!4018, !4020, !4021, !4022, !4024, !4026}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4016, file: !4015, line: 198, baseType: !4019, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4015, line: 21, baseType: !413)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4016, file: !4015, line: 199, baseType: !225, size: 8, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4016, file: !4015, line: 200, baseType: !225, size: 8, offset: 40)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4016, file: !4015, line: 201, baseType: !4023, size: 16, offset: 48)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4015, line: 17, baseType: !232)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4016, file: !4015, line: 202, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4015, line: 16, baseType: !417)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4016, file: !4015, line: 203, baseType: !4027, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4015, line: 22, baseType: !417)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4010, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4010, file: !6, line: 381, baseType: !263, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4010, file: !6, line: 382, baseType: !263, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !159, file: !6, line: 477, baseType: !4010, size: 256, offset: 7168)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !159, file: !6, line: 480, baseType: !4033, size: 64, offset: 7424)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !159, file: !6, line: 483, baseType: !4036, size: 64, offset: 7488)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !159, file: !6, line: 488, baseType: !263, size: 64, offset: 7552)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !159, file: !6, line: 492, baseType: !157, size: 64, offset: 7616)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !159, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !159, file: !6, line: 495, baseType: !157, size: 64, offset: 7744)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !159, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !159, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !159, file: !6, line: 500, baseType: !4045, size: 64, offset: 7872)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4047, line: 45, baseType: !4048)
!4047 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !159, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !159, file: !6, line: 504, baseType: !4051, size: 64, offset: 8000)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4054, line: 96, size: 192, elements: !4055)
!4054 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4055 = !{!4056, !4057, !4100, !4102}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4053, file: !4054, line: 97, baseType: !7, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4053, file: !4054, line: 98, baseType: !4058, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4054, line: 24, size: 3072, elements: !4060)
!4060 = !{!4061, !4063, !4064, !4065, !4066, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4097, !4098, !4099}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4059, file: !4054, line: 26, baseType: !4062, size: 128)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 128, elements: !2539)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4059, file: !4054, line: 27, baseType: !4062, size: 128, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4059, file: !4054, line: 28, baseType: !109, size: 32, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4059, file: !4054, line: 31, baseType: !193, size: 32, align: 512, offset: 512)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4059, file: !4054, line: 32, baseType: !4067, size: 960, offset: 576)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4068, line: 206, size: 960, elements: !4069)
!4068 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4069 = !{!4070, !4071, !4074, !4076, !4077, !4079}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4067, file: !4068, line: 207, baseType: !689, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4067, file: !4068, line: 208, baseType: !4072, size: 256, offset: 64)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4073, size: 256, elements: !740)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4067, file: !4068, line: 209, baseType: !4075, size: 256, offset: 320)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !740)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4067, file: !4068, line: 213, baseType: !299, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4067, file: !4068, line: 215, baseType: !4078, size: 256, offset: 640)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !740)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4067, file: !4068, line: 216, baseType: !221, size: 8, offset: 896)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4059, file: !4054, line: 33, baseType: !313, size: 64, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4059, file: !4054, line: 34, baseType: !313, size: 64, offset: 1600)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4059, file: !4054, line: 35, baseType: !875, size: 8, offset: 1664)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4059, file: !4054, line: 36, baseType: !2975, size: 320, offset: 1728)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4059, file: !4054, line: 37, baseType: !1357, size: 256, offset: 2048)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4059, file: !4054, line: 38, baseType: !686, size: 128, align: 64, offset: 2304)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4059, file: !4054, line: 39, baseType: !4087, size: 64, offset: 2432)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4054, line: 49, size: 768, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4088, file: !4054, line: 50, baseType: !193, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4088, file: !4054, line: 51, baseType: !4075, size: 256, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4088, file: !4054, line: 53, baseType: !4075, size: 256, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4088, file: !4054, line: 54, baseType: !313, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4088, file: !4054, line: 55, baseType: !4087, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4088, file: !4054, line: 56, baseType: !109, size: 32, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4088, file: !4054, line: 57, baseType: !109, size: 32, offset: 736)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4059, file: !4054, line: 40, baseType: !313, size: 64, offset: 2496)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4059, file: !4054, line: 42, baseType: !109, size: 32, offset: 2560)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4059, file: !4054, line: 43, baseType: !4052, size: 64, offset: 2624)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4053, file: !4054, line: 99, baseType: !4101, offset: 128)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !546, line: 211, elements: !547)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4053, file: !4054, line: 100, baseType: !4103, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4054, line: 63, size: 3008, elements: !4105)
!4105 = !{!4106, !4107, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4135}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4104, file: !4054, line: 64, baseType: !4087, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4104, file: !4054, line: 65, baseType: !4108, size: 192, offset: 64)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 192, elements: !264)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4104, file: !4054, line: 67, baseType: !109, size: 32, offset: 256)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4104, file: !4054, line: 68, baseType: !628, size: 256, offset: 320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4104, file: !4054, line: 69, baseType: !193, size: 32, offset: 576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4104, file: !4054, line: 70, baseType: !628, size: 256, offset: 640)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4104, file: !4054, line: 71, baseType: !313, size: 64, offset: 896)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4104, file: !4054, line: 72, baseType: !313, size: 64, offset: 960)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4104, file: !4054, line: 73, baseType: !313, size: 64, offset: 1024)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4104, file: !4054, line: 74, baseType: !313, size: 64, offset: 1088)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4104, file: !4054, line: 75, baseType: !313, size: 64, offset: 1152)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4104, file: !4054, line: 76, baseType: !313, size: 64, offset: 1216)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4104, file: !4054, line: 77, baseType: !313, size: 64, offset: 1280)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4104, file: !4054, line: 78, baseType: !313, size: 64, offset: 1344)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4104, file: !4054, line: 79, baseType: !875, size: 8, offset: 1408)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4104, file: !4054, line: 80, baseType: !313, size: 64, offset: 1472)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4104, file: !4054, line: 81, baseType: !628, size: 256, offset: 1536)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4104, file: !4054, line: 82, baseType: !1154, size: 256, offset: 1792)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4104, file: !4054, line: 84, baseType: !213, size: 32, offset: 2048)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4104, file: !4054, line: 87, baseType: !313, size: 64, offset: 2112)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4104, file: !4054, line: 88, baseType: !313, size: 64, offset: 2176)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4104, file: !4054, line: 89, baseType: !4129, size: 704, offset: 2240)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1358, line: 111, size: 704, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4129, file: !1358, line: 112, baseType: !1357, size: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4129, file: !1358, line: 113, baseType: !2975, size: 320, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4129, file: !1358, line: 116, baseType: !3281, size: 64, offset: 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4129, file: !1358, line: 117, baseType: !109, size: 32, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4104, file: !4054, line: 90, baseType: !4052, size: 64, offset: 2944)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !159, file: !6, line: 515, baseType: !4137, size: 64, offset: 8064)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4139, line: 117, size: 128, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4140 = !{!4141, !4142, !4143}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4138, file: !4139, line: 118, baseType: !801, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4138, file: !4139, line: 119, baseType: !801, size: 32, offset: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4138, file: !4139, line: 120, baseType: !299, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !159, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !159, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !159, file: !6, line: 520, baseType: !4147, size: 64, offset: 8192)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !159, file: !6, line: 523, baseType: !4149, size: 64, offset: 8256)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !159, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !159, file: !6, line: 525, baseType: !4154, size: 64, offset: 8384)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !159, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !159, file: !6, line: 533, baseType: !157, size: 64, offset: 8512)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !159, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !159, file: !6, line: 535, baseType: !4161, size: 64, offset: 8640)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !159, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !159, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !159, file: !6, line: 540, baseType: !4165, size: 64, offset: 8768)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4167, line: 32, size: 64, elements: !4168)
!4167 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4168 = !{!4169, !4170}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4166, file: !4167, line: 33, baseType: !801, size: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4166, file: !4167, line: 34, baseType: !801, size: 32, offset: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !159, file: !6, line: 563, baseType: !163, size: 128, offset: 8832)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !159, file: !6, line: 565, baseType: !163, size: 128, offset: 8960)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !159, file: !6, line: 568, baseType: !4174, size: 64, offset: 9088)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !159, file: !6, line: 570, baseType: !213, size: 32, offset: 9152)
!4176 = !{!0, !4177, !4179, !4184, !4186, !4190, !4195, !4200, !4202, !4207, !4209, !4673, !4675, !4677, !4682, !4688, !4690, !4692, !4694, !4696, !4701, !4703, !4708, !4711, !4714, !4719, !4721, !4724, !4727, !4732, !4734, !4736, !4738, !4740, !4742, !4745, !4747, !4752, !4757, !4759, !4762, !4764, !4767, !4769, !4774, !4776, !4778, !4782, !4784, !4786, !4788, !4790}
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_nvram_ops318", scope: !2, file: !3, line: 215, type: !157, isLocal: true, isDefinition: true)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !4181, isLocal: true, isDefinition: true)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 104, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 13)
!4184 = !DIGlobalVariableExpression(var: !4185, expr: !DIExpression())
!4185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_nvram__327_540_nvram_module_init6328", scope: !2, file: !3, line: 540, type: !157, isLocal: true, isDefinition: true)
!4186 = !DIGlobalVariableExpression(var: !4187, expr: !DIExpression())
!4187 = distinct !DIGlobalVariable(name: "__exitcall_nvram_module_exit", scope: !2, file: !3, line: 541, type: !4188, isLocal: true, isDefinition: true)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4189, line: 120, baseType: !4174)
!4189 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4190 = !DIGlobalVariableExpression(var: !4191, expr: !DIExpression())
!4191 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file329", scope: !2, file: !3, line: 543, type: !4192, isLocal: true, isDefinition: true, align: 8)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 240, elements: !4193)
!4193 = !{!4194}
!4194 = !DISubrange(count: 30)
!4195 = !DIGlobalVariableExpression(var: !4196, expr: !DIExpression())
!4196 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license330", scope: !2, file: !3, line: 543, type: !4197, isLocal: true, isDefinition: true, align: 8)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 144, elements: !4198)
!4198 = !{!4199}
!4199 = !DISubrange(count: 18)
!4200 = !DIGlobalVariableExpression(var: !4201, expr: !DIExpression())
!4201 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias331", scope: !2, file: !3, line: 544, type: !4192, isLocal: true, isDefinition: true, align: 8)
!4202 = !DIGlobalVariableExpression(var: !4203, expr: !DIExpression())
!4203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias332", scope: !2, file: !3, line: 545, type: !4204, isLocal: true, isDefinition: true, align: 8)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 208, elements: !4205)
!4205 = !{!4206}
!4206 = !DISubrange(count: 26)
!4207 = !DIGlobalVariableExpression(var: !4208, expr: !DIExpression())
!4208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !861, isLocal: true, isDefinition: true)
!4209 = !DIGlobalVariableExpression(var: !4210, expr: !DIExpression())
!4210 = distinct !DIGlobalVariable(name: "nvram_misc", scope: !2, file: !3, line: 500, type: !4211, isLocal: true, isDefinition: true)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !4212, line: 79, size: 640, elements: !4213)
!4212 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a69389defd2997053c089e14bd956b02")
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4669, !4670, !4671, !4672}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4211, file: !4212, line: 80, baseType: !109, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4211, file: !4212, line: 81, baseType: !182, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4211, file: !4212, line: 82, baseType: !994, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4211, file: !4212, line: 83, baseType: !163, size: 128, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4211, file: !4212, line: 84, baseType: !4219, size: 64, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4227, !4228, !4281, !4351, !4352, !4353, !4354, !4355, !4362, !4454, !4467, !4477, !4481, !4483, !4484, !4485, !4489, !4496, !4497, !4500, !4503, !4507, !4611, !4612, !4613, !4614, !4615, !4616, !4646, !4647, !4648, !4651, !4654, !4663, !4664, !4665, !4666, !4667, !4668}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4220, file: !94, line: 706, baseType: !178, size: 512)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4220, file: !94, line: 707, baseType: !4219, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4220, file: !94, line: 709, baseType: !4225, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4220, file: !94, line: 711, baseType: !182, size: 64, offset: 640)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4220, file: !94, line: 712, baseType: !4229, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4231)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4232)
!4232 = !{!4233, !4234, !4235, !4241, !4246, !4250}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4231, file: !94, line: 90, baseType: !182, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4231, file: !94, line: 91, baseType: !315, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4231, file: !94, line: 92, baseType: !4236, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!109, !4239, !258}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4231, file: !94, line: 93, baseType: !4242, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!263, !4239, !4245, !3743, !3744}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4231, file: !94, line: 95, baseType: !4247, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4219}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4231, file: !94, line: 97, baseType: !4251, size: 64, offset: 320)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4253)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4254)
!4254 = !{!4255, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4253, file: !101, line: 287, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!109, !4219}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4253, file: !101, line: 288, baseType: !4247, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4253, file: !101, line: 289, baseType: !4256, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4253, file: !101, line: 290, baseType: !4256, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4253, file: !101, line: 291, baseType: !4256, size: 64, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4253, file: !101, line: 292, baseType: !4256, size: 64, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4253, file: !101, line: 293, baseType: !4256, size: 64, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4253, file: !101, line: 294, baseType: !4256, size: 64, offset: 448)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4253, file: !101, line: 295, baseType: !4256, size: 64, offset: 512)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4253, file: !101, line: 296, baseType: !4256, size: 64, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4253, file: !101, line: 297, baseType: !4256, size: 64, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4253, file: !101, line: 298, baseType: !4256, size: 64, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4253, file: !101, line: 299, baseType: !4256, size: 64, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4253, file: !101, line: 300, baseType: !4256, size: 64, offset: 832)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4253, file: !101, line: 301, baseType: !4256, size: 64, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4253, file: !101, line: 302, baseType: !4256, size: 64, offset: 960)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4253, file: !101, line: 303, baseType: !4256, size: 64, offset: 1024)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4253, file: !101, line: 304, baseType: !4256, size: 64, offset: 1088)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4253, file: !101, line: 305, baseType: !4256, size: 64, offset: 1152)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4253, file: !101, line: 306, baseType: !4256, size: 64, offset: 1216)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4253, file: !101, line: 307, baseType: !4256, size: 64, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4253, file: !101, line: 308, baseType: !4256, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4253, file: !101, line: 309, baseType: !4256, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4220, file: !94, line: 714, baseType: !4282, size: 64, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4284)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4285, line: 80, size: 1344, elements: !4286)
!4285 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4350}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4284, file: !4285, line: 81, baseType: !182, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4284, file: !4285, line: 82, baseType: !182, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4284, file: !4285, line: 83, baseType: !315, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4284, file: !4285, line: 84, baseType: !315, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4284, file: !4285, line: 85, baseType: !315, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4284, file: !4285, line: 87, baseType: !4293, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!109, !4219, !4296}
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4309, !4313, !4314, !4315, !4316, !4317, !4325, !4326, !4327, !4328, !4329, !4330}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4297, file: !88, line: 97, baseType: !182, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4297, file: !88, line: 98, baseType: !4282, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4297, file: !88, line: 100, baseType: !158, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4297, file: !88, line: 101, baseType: !182, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4297, file: !88, line: 103, baseType: !875, size: 8, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4297, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4297, file: !88, line: 106, baseType: !4306, size: 64, offset: 320)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4297, file: !88, line: 107, baseType: !4310, size: 64, offset: 384)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4312)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4297, file: !88, line: 109, baseType: !4256, size: 64, offset: 448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4297, file: !88, line: 110, baseType: !4247, size: 64, offset: 512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4297, file: !88, line: 111, baseType: !4256, size: 64, offset: 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4297, file: !88, line: 112, baseType: !4247, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !88, line: 113, baseType: !4318, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!109, !4219, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4322)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4323)
!4323 = !{!4324}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4322, file: !101, line: 59, baseType: !109, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !88, line: 114, baseType: !4256, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4297, file: !88, line: 115, baseType: !315, size: 64, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4297, file: !88, line: 116, baseType: !315, size: 64, offset: 896)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4297, file: !88, line: 118, baseType: !4251, size: 64, offset: 960)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4297, file: !88, line: 119, baseType: !4247, size: 64, offset: 1024)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4297, file: !88, line: 121, baseType: !4331, size: 64, offset: 1088)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4284, file: !4285, line: 88, baseType: !4236, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4284, file: !4285, line: 89, baseType: !4256, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4284, file: !4285, line: 90, baseType: !4247, size: 64, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4284, file: !4285, line: 91, baseType: !4247, size: 64, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4284, file: !4285, line: 92, baseType: !4247, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4284, file: !4285, line: 94, baseType: !4256, size: 64, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4284, file: !4285, line: 95, baseType: !4256, size: 64, offset: 768)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4284, file: !4285, line: 97, baseType: !4318, size: 64, offset: 832)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4284, file: !4285, line: 98, baseType: !4256, size: 64, offset: 896)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4284, file: !4285, line: 100, baseType: !4256, size: 64, offset: 960)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4284, file: !4285, line: 102, baseType: !4256, size: 64, offset: 1024)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4284, file: !4285, line: 103, baseType: !4247, size: 64, offset: 1088)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4284, file: !4285, line: 105, baseType: !4251, size: 64, offset: 1152)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4284, file: !4285, line: 107, baseType: !4347, size: 64, offset: 1216)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4349)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4285, line: 107, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4284, file: !4285, line: 109, baseType: !875, size: 8, offset: 1280)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4220, file: !94, line: 715, baseType: !4296, size: 64, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4220, file: !94, line: 717, baseType: !157, size: 64, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4220, file: !94, line: 719, baseType: !157, size: 64, offset: 960)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4220, file: !94, line: 721, baseType: !628, size: 256, offset: 1024)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4220, file: !94, line: 725, baseType: !4356, size: 448, offset: 1280)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4356, file: !94, line: 518, baseType: !163, size: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4356, file: !94, line: 519, baseType: !163, size: 128, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4356, file: !94, line: 520, baseType: !163, size: 128, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4356, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4220, file: !94, line: 726, baseType: !4363, size: 2496, offset: 1728)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4364)
!4364 = !{!4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4447, !4451}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4363, file: !101, line: 664, baseType: !4321, size: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4363, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4363, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4363, file: !101, line: 667, baseType: !875, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4363, file: !101, line: 668, baseType: !875, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4363, file: !101, line: 669, baseType: !875, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4363, file: !101, line: 670, baseType: !875, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4363, file: !101, line: 671, baseType: !875, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4363, file: !101, line: 672, baseType: !875, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4363, file: !101, line: 673, baseType: !875, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4363, file: !101, line: 674, baseType: !875, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4363, file: !101, line: 675, baseType: !412, size: 32, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4363, file: !101, line: 676, baseType: !193, size: 32, offset: 96)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4363, file: !101, line: 678, baseType: !163, size: 128, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4363, file: !101, line: 679, baseType: !1154, size: 256, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4363, file: !101, line: 680, baseType: !4381, size: 64, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4383, line: 43, size: 1536, elements: !4384)
!4383 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4382, file: !4383, line: 44, baseType: !182, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4382, file: !4383, line: 45, baseType: !109, size: 32, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4382, file: !4383, line: 46, baseType: !163, size: 128, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4382, file: !4383, line: 47, baseType: !193, size: 32, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4382, file: !4383, line: 48, baseType: !4390, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4382, file: !4383, line: 49, baseType: !2975, size: 320, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4382, file: !4383, line: 50, baseType: !313, size: 64, offset: 704)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4382, file: !4383, line: 51, baseType: !2144, size: 64, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4382, file: !4383, line: 52, baseType: !2144, size: 64, offset: 832)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4382, file: !4383, line: 53, baseType: !2144, size: 64, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4382, file: !4383, line: 54, baseType: !2144, size: 64, offset: 960)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4382, file: !4383, line: 55, baseType: !2144, size: 64, offset: 1024)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4382, file: !4383, line: 56, baseType: !313, size: 64, offset: 1088)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4382, file: !4383, line: 57, baseType: !313, size: 64, offset: 1152)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4382, file: !4383, line: 58, baseType: !313, size: 64, offset: 1216)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4382, file: !4383, line: 59, baseType: !313, size: 64, offset: 1280)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4382, file: !4383, line: 60, baseType: !313, size: 64, offset: 1344)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4382, file: !4383, line: 61, baseType: !4219, size: 64, offset: 1408)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4382, file: !4383, line: 62, baseType: !875, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4382, file: !4383, line: 63, baseType: !875, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4363, file: !101, line: 681, baseType: !875, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4363, file: !101, line: 682, baseType: !875, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4363, file: !101, line: 683, baseType: !875, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4363, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4363, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4363, file: !101, line: 690, baseType: !2136, size: 512, offset: 640)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4363, file: !101, line: 691, baseType: !416, size: 64, offset: 1152)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4363, file: !101, line: 692, baseType: !1357, size: 256, offset: 1216)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4363, file: !101, line: 693, baseType: !744, size: 192, offset: 1472)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4363, file: !101, line: 694, baseType: !4390, size: 64, offset: 1664)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4363, file: !101, line: 695, baseType: !213, size: 32, offset: 1728)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4363, file: !101, line: 696, baseType: !213, size: 32, offset: 1760)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4363, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4363, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4363, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4363, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4363, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4363, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4363, file: !101, line: 703, baseType: !875, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4363, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4363, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4363, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4363, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4363, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4363, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4363, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4363, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4363, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4363, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4363, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4363, file: !101, line: 715, baseType: !416, size: 64, offset: 2048)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4363, file: !101, line: 716, baseType: !416, size: 64, offset: 2112)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4363, file: !101, line: 717, baseType: !416, size: 64, offset: 2176)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4363, file: !101, line: 718, baseType: !416, size: 64, offset: 2240)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4363, file: !101, line: 720, baseType: !4442, size: 64, offset: 2304)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4444)
!4444 = !{!4445, !4446}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4443, file: !101, line: 633, baseType: !193, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4443, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4363, file: !101, line: 721, baseType: !4448, size: 64, offset: 2368)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !4219, !801}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4363, file: !101, line: 722, baseType: !4452, size: 64, offset: 2432)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4220, file: !94, line: 727, baseType: !4455, size: 64, offset: 4224)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4464, !4465, !4466}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4456, file: !101, line: 743, baseType: !4253, size: 1472)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4456, file: !101, line: 744, baseType: !4256, size: 64, offset: 1472)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4456, file: !101, line: 745, baseType: !4461, size: 64, offset: 1536)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !4219, !875}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4456, file: !101, line: 746, baseType: !4256, size: 64, offset: 1600)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4456, file: !101, line: 747, baseType: !4247, size: 64, offset: 1664)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4456, file: !101, line: 748, baseType: !4247, size: 64, offset: 1728)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4220, file: !94, line: 736, baseType: !4468, size: 128, offset: 4288)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4469)
!4469 = !{!4470, !4474}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4468, file: !94, line: 531, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4473, line: 13, flags: DIFlagFwdDecl)
!4473 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4468, file: !94, line: 532, baseType: !4475, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4220, file: !94, line: 738, baseType: !4478, size: 64, offset: 4416)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4220, file: !94, line: 740, baseType: !4482, size: 64, offset: 4480)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4220, file: !94, line: 741, baseType: !416, size: 64, offset: 4544)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4220, file: !94, line: 746, baseType: !416, size: 64, offset: 4608)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4220, file: !94, line: 747, baseType: !4486, size: 64, offset: 4672)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4220, file: !94, line: 749, baseType: !4490, size: 64, offset: 4736)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4492)
!4492 = !{!4493, !4494, !4495}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4491, file: !94, line: 433, baseType: !7, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4491, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4491, file: !94, line: 435, baseType: !313, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4220, file: !94, line: 751, baseType: !163, size: 128, offset: 4800)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4220, file: !94, line: 762, baseType: !4498, size: 64, offset: 4928)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4220, file: !94, line: 770, baseType: !4501, offset: 4992)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4502, line: 5, elements: !547)
!4502 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4220, file: !94, line: 772, baseType: !4504, size: 64, offset: 4992)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4506, line: 18, flags: DIFlagFwdDecl)
!4506 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4220, file: !94, line: 773, baseType: !4508, size: 64, offset: 5056)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4510, line: 41, size: 512, elements: !4511)
!4510 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4511 = !{!4512, !4513, !4607, !4608, !4609, !4610}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4509, file: !4510, line: 42, baseType: !4508, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4509, file: !4510, line: 43, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4516)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4510, line: 125, size: 1408, elements: !4517)
!4517 = !{!4518, !4522, !4526, !4532, !4536, !4537, !4542, !4546, !4550, !4554, !4558, !4559, !4563, !4567, !4571, !4582, !4583, !4584, !4585, !4595, !4599, !4603}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4516, file: !4510, line: 126, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!4508, !4508}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4516, file: !4510, line: 127, baseType: !4523, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !4508}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4516, file: !4510, line: 128, baseType: !4527, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!875, !4530}
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4516, file: !4510, line: 129, baseType: !4533, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!1318, !4530, !4239}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4516, file: !4510, line: 131, baseType: !4527, size: 64, offset: 256)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4516, file: !4510, line: 133, baseType: !4538, size: 64, offset: 320)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!4541, !4530}
!4541 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4510, line: 132, flags: DIFlagFwdDecl)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4516, file: !4510, line: 134, baseType: !4543, size: 64, offset: 384)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!875, !4530, !182}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4516, file: !4510, line: 136, baseType: !4547, size: 64, offset: 448)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!109, !4530, !182, !7, !157, !310}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4516, file: !4510, line: 141, baseType: !4551, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!109, !4530, !182, !4147, !310}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4516, file: !4510, line: 144, baseType: !4555, size: 64, offset: 576)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!182, !4530}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4516, file: !4510, line: 145, baseType: !4555, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4516, file: !4510, line: 146, baseType: !4560, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!4508, !4530}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4516, file: !4510, line: 148, baseType: !4564, size: 64, offset: 768)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!4508, !4530, !4508}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4516, file: !4510, line: 151, baseType: !4568, size: 64, offset: 832)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!4508, !4530, !182}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4516, file: !4510, line: 153, baseType: !4572, size: 64, offset: 896)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!109, !4530, !182, !182, !7, !7, !4575}
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4510, line: 94, size: 640, elements: !4577)
!4577 = !{!4578, !4579, !4580}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4576, file: !4510, line: 95, baseType: !4508, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4576, file: !4510, line: 96, baseType: !7, size: 32, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4576, file: !4510, line: 97, baseType: !4581, size: 512, offset: 128)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !2179)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4516, file: !4510, line: 158, baseType: !4564, size: 64, offset: 960)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4516, file: !4510, line: 161, baseType: !4560, size: 64, offset: 1024)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4516, file: !4510, line: 163, baseType: !4519, size: 64, offset: 1088)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4516, file: !4510, line: 164, baseType: !4586, size: 64, offset: 1152)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!109, !4530, !4589}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4510, line: 73, size: 128, elements: !4591)
!4591 = !{!4592, !4593, !4594}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4590, file: !4510, line: 74, baseType: !7, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4590, file: !4510, line: 75, baseType: !7, size: 32, offset: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4590, file: !4510, line: 76, baseType: !4530, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4516, file: !4510, line: 166, baseType: !4596, size: 64, offset: 1216)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!157, !4508, !109}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4516, file: !4510, line: 167, baseType: !4600, size: 64, offset: 1280)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!109, !4530, !7}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4516, file: !4510, line: 168, baseType: !4604, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!109, !4508}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4509, file: !4510, line: 44, baseType: !4219, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4509, file: !4510, line: 45, baseType: !163, size: 128, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4509, file: !4510, line: 46, baseType: !163, size: 128, offset: 320)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4509, file: !4510, line: 47, baseType: !221, size: 8, offset: 448)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4220, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4220, file: !94, line: 778, baseType: !499, size: 32, offset: 5152)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4220, file: !94, line: 779, baseType: !412, size: 32, offset: 5184)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4220, file: !94, line: 781, baseType: !193, size: 32, offset: 5216)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4220, file: !94, line: 782, baseType: !163, size: 128, offset: 5248)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4220, file: !94, line: 784, baseType: !4617, size: 64, offset: 5376)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4619)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4620, line: 52, size: 768, elements: !4621)
!4620 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4630, !4634, !4635, !4636, !4637, !4641, !4645}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4619, file: !4620, line: 53, baseType: !182, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4619, file: !4620, line: 55, baseType: !315, size: 64, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4619, file: !4620, line: 56, baseType: !315, size: 64, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4619, file: !4620, line: 58, baseType: !4236, size: 64, offset: 192)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4619, file: !4620, line: 59, baseType: !4627, size: 64, offset: 256)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!263, !4239, !4245}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4619, file: !4620, line: 61, baseType: !4631, size: 64, offset: 320)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !4617}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4619, file: !4620, line: 62, baseType: !4247, size: 64, offset: 384)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4619, file: !4620, line: 64, baseType: !4256, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4619, file: !4620, line: 66, baseType: !3711, size: 64, offset: 512)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4619, file: !4620, line: 67, baseType: !4638, size: 64, offset: 576)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!1318, !4239}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4619, file: !4620, line: 69, baseType: !4642, size: 64, offset: 640)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !4239, !3743, !3744}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4619, file: !4620, line: 71, baseType: !4251, size: 64, offset: 704)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4220, file: !94, line: 785, baseType: !315, size: 64, offset: 5440)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4220, file: !94, line: 787, baseType: !4247, size: 64, offset: 5504)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4220, file: !94, line: 788, baseType: !4649, size: 64, offset: 5568)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4220, file: !94, line: 789, baseType: !4652, size: 64, offset: 5632)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4220, file: !94, line: 791, baseType: !4655, size: 64, offset: 5696)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4656, file: !94, line: 598, baseType: !116, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4656, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4656, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4656, file: !94, line: 601, baseType: !875, size: 8, offset: 96)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4656, file: !94, line: 602, baseType: !875, size: 8, offset: 104)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4220, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4220, file: !94, line: 795, baseType: !875, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4220, file: !94, line: 796, baseType: !875, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4220, file: !94, line: 797, baseType: !875, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4220, file: !94, line: 798, baseType: !875, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4220, file: !94, line: 799, baseType: !875, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !4211, file: !4212, line: 85, baseType: !4219, size: 64, offset: 384)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4211, file: !4212, line: 86, baseType: !315, size: 64, offset: 448)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4211, file: !4212, line: 87, baseType: !182, size: 64, offset: 512)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4211, file: !4212, line: 88, baseType: !305, size: 16, offset: 576)
!4673 = !DIGlobalVariableExpression(var: !4674, expr: !DIExpression())
!4674 = distinct !DIGlobalVariable(name: "nvram_misc_fops", scope: !2, file: !3, line: 490, type: !995, isLocal: true, isDefinition: true)
!4675 = !DIGlobalVariableExpression(var: !4676, expr: !DIExpression())
!4676 = distinct !DIGlobalVariable(name: "nvram_size", scope: !2, file: !3, line: 60, type: !295, isLocal: true, isDefinition: true)
!4677 = !DIGlobalVariableExpression(var: !4678, expr: !DIExpression())
!4678 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !4679, isLocal: true, isDefinition: true)
!4679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 168, elements: !4680)
!4680 = !{!4681}
!4681 = !DISubrange(count: 21)
!4682 = !DIGlobalVariableExpression(var: !4683, expr: !DIExpression())
!4683 = distinct !DIGlobalVariable(scope: null, file: !4684, line: 249, type: !4685, isLocal: true, isDefinition: true)
!4684 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 224, elements: !4686)
!4686 = !{!4687}
!4687 = !DISubrange(count: 28)
!4688 = !DIGlobalVariableExpression(var: !4689, expr: !DIExpression())
!4689 = distinct !DIGlobalVariable(name: "nvram_mutex", scope: !2, file: !3, line: 56, type: !628, isLocal: true, isDefinition: true)
!4690 = !DIGlobalVariableExpression(var: !4691, expr: !DIExpression())
!4691 = distinct !DIGlobalVariable(name: "nvram_state_lock", scope: !2, file: !3, line: 57, type: !193, isLocal: true, isDefinition: true)
!4692 = !DIGlobalVariableExpression(var: !4693, expr: !DIExpression())
!4693 = distinct !DIGlobalVariable(name: "nvram_open_cnt", scope: !2, file: !3, line: 58, type: !109, isLocal: true, isDefinition: true)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(name: "nvram_open_mode", scope: !2, file: !3, line: 59, type: !109, isLocal: true, isDefinition: true)
!4696 = !DIGlobalVariableExpression(var: !4697, expr: !DIExpression())
!4697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 516, type: !4698, isLocal: true, isDefinition: true)
!4698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 336, elements: !4699)
!4699 = !{!4700}
!4700 = !DISubrange(count: 42)
!4701 = !DIGlobalVariableExpression(var: !4702, expr: !DIExpression())
!4702 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !4698, isLocal: true, isDefinition: true)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(scope: null, file: !3, line: 528, type: !4705, isLocal: true, isDefinition: true)
!4705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 280, elements: !4706)
!4706 = !{!4707}
!4707 = !DISubrange(count: 35)
!4708 = !DIGlobalVariableExpression(var: !4709, expr: !DIExpression())
!4709 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !4710, isLocal: true, isDefinition: true)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 208, elements: !4205)
!4711 = !DIGlobalVariableExpression(var: !4712, expr: !DIExpression())
!4712 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !4713, isLocal: true, isDefinition: true)
!4713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 8, elements: !2264)
!4714 = !DIGlobalVariableExpression(var: !4715, expr: !DIExpression())
!4715 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !4716, isLocal: true, isDefinition: true)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 40, elements: !4717)
!4717 = !{!4718}
!4718 = !DISubrange(count: 5)
!4719 = !DIGlobalVariableExpression(var: !4720, expr: !DIExpression())
!4720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !4679, isLocal: true, isDefinition: true)
!4721 = !DIGlobalVariableExpression(var: !4722, expr: !DIExpression())
!4722 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !4723, isLocal: true, isDefinition: true)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 144, elements: !4198)
!4724 = !DIGlobalVariableExpression(var: !4725, expr: !DIExpression())
!4725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !4726, isLocal: true, isDefinition: true)
!4726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 32, elements: !740)
!4727 = !DIGlobalVariableExpression(var: !4728, expr: !DIExpression())
!4728 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !4729, isLocal: true, isDefinition: true)
!4729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 112, elements: !4730)
!4730 = !{!4731}
!4731 = !DISubrange(count: 14)
!4732 = !DIGlobalVariableExpression(var: !4733, expr: !DIExpression())
!4733 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !4723, isLocal: true, isDefinition: true)
!4734 = !DIGlobalVariableExpression(var: !4735, expr: !DIExpression())
!4735 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !4723, isLocal: true, isDefinition: true)
!4736 = !DIGlobalVariableExpression(var: !4737, expr: !DIExpression())
!4737 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !861, isLocal: true, isDefinition: true)
!4738 = !DIGlobalVariableExpression(var: !4739, expr: !DIExpression())
!4739 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !861, isLocal: true, isDefinition: true)
!4740 = !DIGlobalVariableExpression(var: !4741, expr: !DIExpression())
!4741 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !4723, isLocal: true, isDefinition: true)
!4742 = !DIGlobalVariableExpression(var: !4743, expr: !DIExpression())
!4743 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !4744, isLocal: true, isDefinition: true)
!4744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 416, elements: !1283)
!4745 = !DIGlobalVariableExpression(var: !4746, expr: !DIExpression())
!4746 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !4744, isLocal: true, isDefinition: true)
!4747 = !DIGlobalVariableExpression(var: !4748, expr: !DIExpression())
!4748 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !4749, isLocal: true, isDefinition: true)
!4749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !4750)
!4750 = !{!4751}
!4751 = !DISubrange(count: 24)
!4752 = !DIGlobalVariableExpression(var: !4753, expr: !DIExpression())
!4753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !4754, isLocal: true, isDefinition: true)
!4754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 424, elements: !4755)
!4755 = !{!4756}
!4756 = !DISubrange(count: 53)
!4757 = !DIGlobalVariableExpression(var: !4758, expr: !DIExpression())
!4758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !4679, isLocal: true, isDefinition: true)
!4759 = !DIGlobalVariableExpression(var: !4760, expr: !DIExpression())
!4760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !4761, isLocal: true, isDefinition: true)
!4761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 240, elements: !4193)
!4762 = !DIGlobalVariableExpression(var: !4763, expr: !DIExpression())
!4763 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4716, isLocal: true, isDefinition: true)
!4764 = !DIGlobalVariableExpression(var: !4765, expr: !DIExpression())
!4765 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4766, isLocal: true, isDefinition: true)
!4766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 96, elements: !3128)
!4767 = !DIGlobalVariableExpression(var: !4768, expr: !DIExpression())
!4768 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4766, isLocal: true, isDefinition: true)
!4769 = !DIGlobalVariableExpression(var: !4770, expr: !DIExpression())
!4770 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4771, isLocal: true, isDefinition: true)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 88, elements: !4772)
!4772 = !{!4773}
!4773 = !DISubrange(count: 11)
!4774 = !DIGlobalVariableExpression(var: !4775, expr: !DIExpression())
!4775 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4766, isLocal: true, isDefinition: true)
!4776 = !DIGlobalVariableExpression(var: !4777, expr: !DIExpression())
!4777 = distinct !DIGlobalVariable(scope: null, file: !3, line: 401, type: !4766, isLocal: true, isDefinition: true)
!4778 = !DIGlobalVariableExpression(var: !4779, expr: !DIExpression())
!4779 = distinct !DIGlobalVariable(name: "floppy_types", scope: !2, file: !3, line: 399, type: !4780, isLocal: true, isDefinition: true)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4781, size: 448, elements: !3977)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !4710, isLocal: true, isDefinition: true)
!4784 = !DIGlobalVariableExpression(var: !4785, expr: !DIExpression())
!4785 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !4729, isLocal: true, isDefinition: true)
!4786 = !DIGlobalVariableExpression(var: !4787, expr: !DIExpression())
!4787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !4729, isLocal: true, isDefinition: true)
!4788 = !DIGlobalVariableExpression(var: !4789, expr: !DIExpression())
!4789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !4771, isLocal: true, isDefinition: true)
!4790 = !DIGlobalVariableExpression(var: !4791, expr: !DIExpression())
!4791 = distinct !DIGlobalVariable(name: "gfx_types", scope: !2, file: !3, line: 404, type: !4792, isLocal: true, isDefinition: true)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4781, size: 256, elements: !740)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4794)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvram_ops", file: !4795, line: 32, size: 448, elements: !4796)
!4795 = !DIFile(filename: "./include/linux/nvram.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c145968e45a15c720355059413c44628")
!4796 = !{!4797, !4801, !4805, !4809, !4813, !4814, !4818}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "get_size", scope: !4794, file: !4795, line: 33, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!295}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !4794, file: !4795, line: 34, baseType: !4802, size: 64, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!225, !109}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !4794, file: !4795, line: 35, baseType: !4806, size: 64, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !225, !109}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4794, file: !4795, line: 36, baseType: !4810, size: 64, offset: 192)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!295, !263, !310, !657}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4794, file: !4795, line: 37, baseType: !4810, size: 64, offset: 256)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "initialize", scope: !4794, file: !4795, line: 39, baseType: !4815, size: 64, offset: 320)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!299}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "set_checksum", scope: !4794, file: !4795, line: 40, baseType: !4815, size: 64, offset: 384)
!4819 = !{i32 7, !"Dwarf Version", i32 5}
!4820 = !{i32 2, !"Debug Info Version", i32 3}
!4821 = !{i32 1, !"wchar_size", i32 2}
!4822 = !{i32 8, !"cf-protection-branch", i32 1}
!4823 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4824 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4825 = !{i32 1, !"Code Model", i32 2}
!4826 = !{i32 1, !"override-stack-alignment", i32 8}
!4827 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4828 = distinct !DISubprogram(name: "pc_nvram_get_size", scope: !3, file: !3, line: 164, type: !4799, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4829 = !DILocation(line: 166, column: 2, scope: !4828)
!4830 = distinct !DISubprogram(name: "pc_nvram_read_byte", scope: !3, file: !3, line: 89, type: !4803, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4831)
!4831 = !{!4832, !4833, !4834, !4835, !4839}
!4832 = !DILocalVariable(name: "i", arg: 1, scope: !4830, file: !3, line: 89, type: !109)
!4833 = !DILocalVariable(name: "flags", scope: !4830, file: !3, line: 91, type: !313)
!4834 = !DILocalVariable(name: "c", scope: !4830, file: !3, line: 92, type: !225)
!4835 = !DILocalVariable(name: "__dummy", scope: !4836, file: !3, line: 94, type: !313)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 94, column: 2)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 94, column: 2)
!4838 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 94, column: 2)
!4839 = !DILocalVariable(name: "__dummy2", scope: !4836, file: !3, line: 94, type: !313)
!4840 = !DILocation(line: 89, column: 45, scope: !4830)
!4841 = !DILocation(line: 91, column: 2, scope: !4830)
!4842 = !DILocation(line: 91, column: 16, scope: !4830)
!4843 = !DILocation(line: 92, column: 2, scope: !4830)
!4844 = !DILocation(line: 92, column: 16, scope: !4830)
!4845 = !DILocation(line: 94, column: 2, scope: !4830)
!4846 = !DILocation(line: 94, column: 2, scope: !4838)
!4847 = !DILocation(line: 94, column: 2, scope: !4836)
!4848 = !DILocation(line: 94, column: 2, scope: !4837)
!4849 = !DILocation(line: 95, column: 24, scope: !4830)
!4850 = !DILocation(line: 95, column: 6, scope: !4830)
!4851 = !DILocation(line: 95, column: 4, scope: !4830)
!4852 = !DILocation(line: 96, column: 36, scope: !4830)
!4853 = !DILocation(line: 96, column: 2, scope: !4830)
!4854 = !DILocation(line: 97, column: 9, scope: !4830)
!4855 = !DILocation(line: 98, column: 1, scope: !4830)
!4856 = !DILocation(line: 97, column: 2, scope: !4830)
!4857 = distinct !DISubprogram(name: "pc_nvram_write_byte", scope: !3, file: !3, line: 106, type: !4807, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4858)
!4858 = !{!4859, !4860, !4861, !4862, !4866}
!4859 = !DILocalVariable(name: "c", arg: 1, scope: !4857, file: !3, line: 106, type: !225)
!4860 = !DILocalVariable(name: "i", arg: 2, scope: !4857, file: !3, line: 106, type: !109)
!4861 = !DILocalVariable(name: "flags", scope: !4857, file: !3, line: 108, type: !313)
!4862 = !DILocalVariable(name: "__dummy", scope: !4863, file: !3, line: 110, type: !313)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 110, column: 2)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 110, column: 2)
!4865 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 110, column: 2)
!4866 = !DILocalVariable(name: "__dummy2", scope: !4863, file: !3, line: 110, type: !313)
!4867 = !DILocation(line: 106, column: 47, scope: !4857)
!4868 = !DILocation(line: 106, column: 54, scope: !4857)
!4869 = !DILocation(line: 108, column: 2, scope: !4857)
!4870 = !DILocation(line: 108, column: 16, scope: !4857)
!4871 = !DILocation(line: 110, column: 2, scope: !4857)
!4872 = !DILocation(line: 110, column: 2, scope: !4865)
!4873 = !DILocation(line: 110, column: 2, scope: !4863)
!4874 = !DILocation(line: 110, column: 2, scope: !4864)
!4875 = !DILocation(line: 111, column: 21, scope: !4857)
!4876 = !DILocation(line: 111, column: 24, scope: !4857)
!4877 = !DILocation(line: 111, column: 2, scope: !4857)
!4878 = !DILocation(line: 112, column: 36, scope: !4857)
!4879 = !DILocation(line: 112, column: 2, scope: !4857)
!4880 = !DILocation(line: 113, column: 1, scope: !4857)
!4881 = distinct !DISubprogram(name: "pc_nvram_read", scope: !3, file: !3, line: 169, type: !4811, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4882)
!4882 = !{!4883, !4884, !4885, !4886, !4887}
!4883 = !DILocalVariable(name: "buf", arg: 1, scope: !4881, file: !3, line: 169, type: !263)
!4884 = !DILocalVariable(name: "count", arg: 2, scope: !4881, file: !3, line: 169, type: !310)
!4885 = !DILocalVariable(name: "ppos", arg: 3, scope: !4881, file: !3, line: 169, type: !657)
!4886 = !DILocalVariable(name: "p", scope: !4881, file: !3, line: 171, type: !263)
!4887 = !DILocalVariable(name: "i", scope: !4881, file: !3, line: 172, type: !504)
!4888 = !DILocation(line: 169, column: 36, scope: !4881)
!4889 = !DILocation(line: 169, column: 48, scope: !4881)
!4890 = !DILocation(line: 169, column: 63, scope: !4881)
!4891 = !DILocation(line: 171, column: 2, scope: !4881)
!4892 = !DILocation(line: 171, column: 8, scope: !4881)
!4893 = !DILocation(line: 171, column: 12, scope: !4881)
!4894 = !DILocation(line: 172, column: 2, scope: !4881)
!4895 = !DILocation(line: 172, column: 9, scope: !4881)
!4896 = !DILocation(line: 174, column: 2, scope: !4881)
!4897 = !DILocation(line: 175, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 175, column: 6)
!4899 = !DILocation(line: 175, column: 6, scope: !4881)
!4900 = !DILocation(line: 176, column: 3, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 175, column: 33)
!4902 = !DILocation(line: 177, column: 3, scope: !4901)
!4903 = !DILocation(line: 179, column: 12, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 179, column: 2)
!4905 = !DILocation(line: 179, column: 11, scope: !4904)
!4906 = !DILocation(line: 179, column: 9, scope: !4904)
!4907 = !DILocation(line: 179, column: 7, scope: !4904)
!4908 = !DILocation(line: 179, column: 18, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 179, column: 2)
!4910 = !DILocation(line: 179, column: 24, scope: !4909)
!4911 = !DILocation(line: 179, column: 28, scope: !4909)
!4912 = !DILocation(line: 179, column: 31, scope: !4909)
!4913 = !DILocation(line: 179, column: 33, scope: !4909)
!4914 = !DILocation(line: 0, scope: !4909)
!4915 = !DILocation(line: 179, column: 2, scope: !4904)
!4916 = !DILocation(line: 180, column: 26, scope: !4909)
!4917 = !DILocation(line: 180, column: 8, scope: !4909)
!4918 = !DILocation(line: 180, column: 4, scope: !4909)
!4919 = !DILocation(line: 180, column: 6, scope: !4909)
!4920 = !DILocation(line: 180, column: 3, scope: !4909)
!4921 = !DILocation(line: 179, column: 48, scope: !4909)
!4922 = !DILocation(line: 179, column: 57, scope: !4909)
!4923 = !DILocation(line: 179, column: 62, scope: !4909)
!4924 = !DILocation(line: 179, column: 2, scope: !4909)
!4925 = distinct !{!4925, !4915, !4926, !4927, !4928}
!4926 = !DILocation(line: 180, column: 27, scope: !4904)
!4927 = !{!"llvm.loop.mustprogress"}
!4928 = !{!"llvm.loop.unroll.disable"}
!4929 = !DILocation(line: 181, column: 2, scope: !4881)
!4930 = !DILocation(line: 183, column: 10, scope: !4881)
!4931 = !DILocation(line: 183, column: 3, scope: !4881)
!4932 = !DILocation(line: 183, column: 8, scope: !4881)
!4933 = !DILocation(line: 184, column: 9, scope: !4881)
!4934 = !DILocation(line: 184, column: 13, scope: !4881)
!4935 = !DILocation(line: 184, column: 11, scope: !4881)
!4936 = !DILocation(line: 184, column: 2, scope: !4881)
!4937 = !DILocation(line: 185, column: 1, scope: !4881)
!4938 = distinct !DISubprogram(name: "pc_nvram_write", scope: !3, file: !3, line: 187, type: !4811, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944}
!4940 = !DILocalVariable(name: "buf", arg: 1, scope: !4938, file: !3, line: 187, type: !263)
!4941 = !DILocalVariable(name: "count", arg: 2, scope: !4938, file: !3, line: 187, type: !310)
!4942 = !DILocalVariable(name: "ppos", arg: 3, scope: !4938, file: !3, line: 187, type: !657)
!4943 = !DILocalVariable(name: "p", scope: !4938, file: !3, line: 189, type: !263)
!4944 = !DILocalVariable(name: "i", scope: !4938, file: !3, line: 190, type: !504)
!4945 = !DILocation(line: 187, column: 37, scope: !4938)
!4946 = !DILocation(line: 187, column: 49, scope: !4938)
!4947 = !DILocation(line: 187, column: 64, scope: !4938)
!4948 = !DILocation(line: 189, column: 2, scope: !4938)
!4949 = !DILocation(line: 189, column: 8, scope: !4938)
!4950 = !DILocation(line: 189, column: 12, scope: !4938)
!4951 = !DILocation(line: 190, column: 2, scope: !4938)
!4952 = !DILocation(line: 190, column: 9, scope: !4938)
!4953 = !DILocation(line: 192, column: 2, scope: !4938)
!4954 = !DILocation(line: 193, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 193, column: 6)
!4956 = !DILocation(line: 193, column: 6, scope: !4938)
!4957 = !DILocation(line: 194, column: 3, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 193, column: 33)
!4959 = !DILocation(line: 195, column: 3, scope: !4958)
!4960 = !DILocation(line: 197, column: 12, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 197, column: 2)
!4962 = !DILocation(line: 197, column: 11, scope: !4961)
!4963 = !DILocation(line: 197, column: 9, scope: !4961)
!4964 = !DILocation(line: 197, column: 7, scope: !4961)
!4965 = !DILocation(line: 197, column: 18, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 197, column: 2)
!4967 = !DILocation(line: 197, column: 24, scope: !4966)
!4968 = !DILocation(line: 197, column: 28, scope: !4966)
!4969 = !DILocation(line: 197, column: 31, scope: !4966)
!4970 = !DILocation(line: 197, column: 33, scope: !4966)
!4971 = !DILocation(line: 0, scope: !4966)
!4972 = !DILocation(line: 197, column: 2, scope: !4961)
!4973 = !DILocation(line: 198, column: 23, scope: !4966)
!4974 = !DILocation(line: 198, column: 22, scope: !4966)
!4975 = !DILocation(line: 198, column: 26, scope: !4966)
!4976 = !DILocation(line: 198, column: 3, scope: !4966)
!4977 = !DILocation(line: 197, column: 48, scope: !4966)
!4978 = !DILocation(line: 197, column: 57, scope: !4966)
!4979 = !DILocation(line: 197, column: 62, scope: !4966)
!4980 = !DILocation(line: 197, column: 2, scope: !4966)
!4981 = distinct !{!4981, !4972, !4982, !4927, !4928}
!4982 = !DILocation(line: 198, column: 27, scope: !4961)
!4983 = !DILocation(line: 199, column: 2, scope: !4938)
!4984 = !DILocation(line: 200, column: 2, scope: !4938)
!4985 = !DILocation(line: 202, column: 10, scope: !4938)
!4986 = !DILocation(line: 202, column: 3, scope: !4938)
!4987 = !DILocation(line: 202, column: 8, scope: !4938)
!4988 = !DILocation(line: 203, column: 9, scope: !4938)
!4989 = !DILocation(line: 203, column: 13, scope: !4938)
!4990 = !DILocation(line: 203, column: 11, scope: !4938)
!4991 = !DILocation(line: 203, column: 2, scope: !4938)
!4992 = !DILocation(line: 204, column: 1, scope: !4938)
!4993 = distinct !DISubprogram(name: "pc_nvram_initialize", scope: !3, file: !3, line: 152, type: !4816, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4994)
!4994 = !{!4995}
!4995 = !DILocalVariable(name: "i", scope: !4993, file: !3, line: 154, type: !295)
!4996 = !DILocation(line: 154, column: 2, scope: !4993)
!4997 = !DILocation(line: 154, column: 10, scope: !4993)
!4998 = !DILocation(line: 156, column: 2, scope: !4993)
!4999 = !DILocation(line: 157, column: 9, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 157, column: 2)
!5001 = !DILocation(line: 157, column: 7, scope: !5000)
!5002 = !DILocation(line: 157, column: 14, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 157, column: 2)
!5004 = !DILocation(line: 157, column: 16, scope: !5003)
!5005 = !DILocation(line: 157, column: 2, scope: !5000)
!5006 = !DILocation(line: 158, column: 25, scope: !5003)
!5007 = !DILocation(line: 158, column: 3, scope: !5003)
!5008 = !DILocation(line: 157, column: 31, scope: !5003)
!5009 = !DILocation(line: 157, column: 2, scope: !5003)
!5010 = distinct !{!5010, !5005, !5011, !4927, !4928}
!5011 = !DILocation(line: 158, column: 26, scope: !5000)
!5012 = !DILocation(line: 159, column: 2, scope: !4993)
!5013 = !DILocation(line: 160, column: 2, scope: !4993)
!5014 = !DILocation(line: 162, column: 1, scope: !4993)
!5015 = !DILocation(line: 161, column: 2, scope: !4993)
!5016 = distinct !DISubprogram(name: "pc_nvram_set_checksum", scope: !3, file: !3, line: 144, type: !4816, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5017 = !DILocation(line: 146, column: 2, scope: !5016)
!5018 = !DILocation(line: 147, column: 2, scope: !5016)
!5019 = !DILocation(line: 148, column: 2, scope: !5016)
!5020 = !DILocation(line: 149, column: 2, scope: !5016)
!5021 = distinct !DISubprogram(name: "nvram_module_exit", scope: !3, file: !3, line: 532, type: !2653, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5022 = !DILocation(line: 535, column: 2, scope: !5021)
!5023 = !DILocation(line: 537, column: 2, scope: !5021)
!5024 = !DILocation(line: 538, column: 1, scope: !5021)
!5025 = !DISubprogram(name: "remove_proc_entry", scope: !5026, file: !5026, line: 125, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!5027 = !DISubroutineType(types: !5028)
!5028 = !{null, !182, !5029}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5031, line: 131, flags: DIFlagFwdDecl)
!5031 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!5032 = !DISubprogram(name: "misc_deregister", scope: !4212, file: !4212, line: 92, type: !5033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!5036 = distinct !DISubprogram(name: "__initstub__kmod_nvram__327_540_nvram_module_init6", scope: !3, file: !3, line: 540, type: !3959, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5037 = !DILocation(line: 540, column: 1, scope: !5036)
!5038 = distinct !DISubprogram(name: "nvram_module_init", scope: !3, file: !3, line: 506, type: !3959, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5039 = !{!5040}
!5040 = !DILocalVariable(name: "ret", scope: !5038, file: !3, line: 508, type: !109)
!5041 = !DILocation(line: 508, column: 2, scope: !5038)
!5042 = !DILocation(line: 508, column: 6, scope: !5038)
!5043 = !DILocation(line: 510, column: 15, scope: !5038)
!5044 = !DILocation(line: 510, column: 13, scope: !5038)
!5045 = !DILocation(line: 511, column: 6, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 511, column: 6)
!5047 = !DILocation(line: 511, column: 17, scope: !5046)
!5048 = !DILocation(line: 511, column: 6, scope: !5038)
!5049 = !DILocation(line: 512, column: 10, scope: !5046)
!5050 = !DILocation(line: 512, column: 3, scope: !5046)
!5051 = !DILocation(line: 514, column: 8, scope: !5038)
!5052 = !DILocation(line: 514, column: 6, scope: !5038)
!5053 = !DILocation(line: 515, column: 6, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 515, column: 6)
!5055 = !DILocation(line: 515, column: 6, scope: !5038)
!5056 = !DILocation(line: 516, column: 3, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 516, column: 3)
!5058 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 515, column: 11)
!5059 = !DILocation(line: 516, column: 3, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 516, column: 3)
!5061 = !DILocation(line: 517, column: 10, scope: !5058)
!5062 = !DILocation(line: 517, column: 3, scope: !5058)
!5063 = !DILocation(line: 521, column: 7, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 521, column: 6)
!5065 = !DILocation(line: 521, column: 6, scope: !5038)
!5066 = !DILocation(line: 522, column: 3, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 522, column: 3)
!5068 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 521, column: 69)
!5069 = !DILocation(line: 522, column: 3, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 522, column: 3)
!5071 = !DILocation(line: 523, column: 3, scope: !5068)
!5072 = !DILocation(line: 524, column: 3, scope: !5068)
!5073 = !DILocation(line: 528, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 528, column: 2)
!5075 = !DILocation(line: 528, column: 2, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 528, column: 2)
!5077 = !DILocation(line: 529, column: 2, scope: !5038)
!5078 = !DILocation(line: 530, column: 1, scope: !5038)
!5079 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5080, file: !5080, line: 32, type: !5081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5080 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!313, !5083}
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!5084 = distinct !DISubprogram(name: "spinlock_check", scope: !5085, file: !5085, line: 324, type: !5086, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5085 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!5083, !1500}
!5088 = !{!5089}
!5089 = !DILocalVariable(name: "lock", arg: 1, scope: !5084, file: !5085, line: 324, type: !1500)
!5090 = !DILocation(line: 324, column: 67, scope: !5084)
!5091 = !DILocation(line: 326, column: 10, scope: !5084)
!5092 = !DILocation(line: 326, column: 16, scope: !5084)
!5093 = !DILocation(line: 326, column: 2, scope: !5084)
!5094 = distinct !DISubprogram(name: "__nvram_read_byte", scope: !3, file: !3, line: 84, type: !4803, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5095)
!5095 = !{!5096}
!5096 = !DILocalVariable(name: "i", arg: 1, scope: !5094, file: !3, line: 84, type: !109)
!5097 = !DILocation(line: 84, column: 44, scope: !5094)
!5098 = !DILocation(line: 86, column: 9, scope: !5094)
!5099 = !DILocation(line: 86, column: 2, scope: !5094)
!5100 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5085, file: !5085, line: 404, type: !5101, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{null, !1500, !313}
!5103 = !{!5104, !5105, !5106, !5109}
!5104 = !DILocalVariable(name: "lock", arg: 1, scope: !5100, file: !5085, line: 404, type: !1500)
!5105 = !DILocalVariable(name: "flags", arg: 2, scope: !5100, file: !5085, line: 404, type: !313)
!5106 = !DILocalVariable(name: "__dummy", scope: !5107, file: !5085, line: 406, type: !313)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !5085, line: 406, column: 2)
!5108 = distinct !DILexicalBlock(scope: !5100, file: !5085, line: 406, column: 2)
!5109 = !DILocalVariable(name: "__dummy2", scope: !5107, file: !5085, line: 406, type: !313)
!5110 = !DILocation(line: 404, column: 64, scope: !5100)
!5111 = !DILocation(line: 404, column: 84, scope: !5100)
!5112 = !DILocation(line: 406, column: 2, scope: !5100)
!5113 = !DILocation(line: 406, column: 2, scope: !5107)
!5114 = !DILocation(line: 406, column: 2, scope: !5108)
!5115 = !DILocation(line: 407, column: 1, scope: !5100)
!5116 = !DISubprogram(name: "rtc_cmos_read", scope: !5117, file: !5117, line: 95, type: !5118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5117 = !DIFile(filename: "./arch/x86/include/asm/mc146818rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcbd5e3b55fc68b6e5a552bc57e3029b")
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!225, !225}
!5120 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5080, file: !5080, line: 43, type: !5121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{null, !5083, !313}
!5123 = distinct !DISubprogram(name: "__nvram_write_byte", scope: !3, file: !3, line: 101, type: !4807, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5124)
!5124 = !{!5125, !5126}
!5125 = !DILocalVariable(name: "c", arg: 1, scope: !5123, file: !3, line: 101, type: !225)
!5126 = !DILocalVariable(name: "i", arg: 2, scope: !5123, file: !3, line: 101, type: !109)
!5127 = !DILocation(line: 101, column: 46, scope: !5123)
!5128 = !DILocation(line: 101, column: 53, scope: !5123)
!5129 = !DILocation(line: 103, column: 2, scope: !5123)
!5130 = !DILocation(line: 104, column: 1, scope: !5123)
!5131 = !DISubprogram(name: "rtc_cmos_write", scope: !5117, file: !5117, line: 96, type: !5132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{null, !225, !225}
!5134 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5085, file: !5085, line: 374, type: !5135, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{null, !1500}
!5137 = !{!5138}
!5138 = !DILocalVariable(name: "lock", arg: 1, scope: !5134, file: !5085, line: 374, type: !1500)
!5139 = !DILocation(line: 374, column: 55, scope: !5134)
!5140 = !DILocation(line: 376, column: 2, scope: !5134)
!5141 = !DILocation(line: 377, column: 1, scope: !5134)
!5142 = distinct !DISubprogram(name: "__nvram_check_checksum", scope: !3, file: !3, line: 120, type: !3959, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5143)
!5143 = !{!5144, !5145, !5146}
!5144 = !DILocalVariable(name: "i", scope: !5142, file: !3, line: 122, type: !109)
!5145 = !DILocalVariable(name: "sum", scope: !5142, file: !3, line: 123, type: !233)
!5146 = !DILocalVariable(name: "expect", scope: !5142, file: !3, line: 124, type: !233)
!5147 = !DILocation(line: 122, column: 2, scope: !5142)
!5148 = !DILocation(line: 122, column: 6, scope: !5142)
!5149 = !DILocation(line: 123, column: 2, scope: !5142)
!5150 = !DILocation(line: 123, column: 17, scope: !5142)
!5151 = !DILocation(line: 124, column: 2, scope: !5142)
!5152 = !DILocation(line: 124, column: 17, scope: !5142)
!5153 = !DILocation(line: 126, column: 9, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 126, column: 2)
!5155 = !DILocation(line: 126, column: 7, scope: !5154)
!5156 = !DILocation(line: 126, column: 31, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 126, column: 2)
!5158 = !DILocation(line: 126, column: 33, scope: !5157)
!5159 = !DILocation(line: 126, column: 2, scope: !5154)
!5160 = !DILocation(line: 127, column: 28, scope: !5157)
!5161 = !DILocation(line: 127, column: 10, scope: !5157)
!5162 = !DILocation(line: 127, column: 7, scope: !5157)
!5163 = !DILocation(line: 127, column: 3, scope: !5157)
!5164 = !DILocation(line: 126, column: 54, scope: !5157)
!5165 = !DILocation(line: 126, column: 2, scope: !5157)
!5166 = distinct !{!5166, !5159, !5167, !4927, !4928}
!5167 = !DILocation(line: 127, column: 29, scope: !5154)
!5168 = !DILocation(line: 128, column: 11, scope: !5142)
!5169 = !DILocation(line: 128, column: 40, scope: !5142)
!5170 = !DILocation(line: 129, column: 6, scope: !5142)
!5171 = !DILocation(line: 128, column: 44, scope: !5142)
!5172 = !DILocation(line: 128, column: 9, scope: !5142)
!5173 = !DILocation(line: 130, column: 10, scope: !5142)
!5174 = !DILocation(line: 130, column: 14, scope: !5142)
!5175 = !DILocation(line: 130, column: 27, scope: !5142)
!5176 = !DILocation(line: 130, column: 24, scope: !5142)
!5177 = !DILocation(line: 131, column: 1, scope: !5142)
!5178 = !DILocation(line: 130, column: 2, scope: !5142)
!5179 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5085, file: !5085, line: 399, type: !5135, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5180)
!5180 = !{!5181}
!5181 = !DILocalVariable(name: "lock", arg: 1, scope: !5179, file: !5085, line: 399, type: !1500)
!5182 = !DILocation(line: 399, column: 57, scope: !5179)
!5183 = !DILocation(line: 401, column: 2, scope: !5179)
!5184 = !DILocation(line: 402, column: 1, scope: !5179)
!5185 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5080, file: !5080, line: 29, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{null, !5083}
!5188 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5080, file: !5080, line: 41, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5189 = distinct !DISubprogram(name: "__nvram_set_checksum", scope: !3, file: !3, line: 133, type: !2653, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5190)
!5190 = !{!5191, !5192}
!5191 = !DILocalVariable(name: "i", scope: !5189, file: !3, line: 135, type: !109)
!5192 = !DILocalVariable(name: "sum", scope: !5189, file: !3, line: 136, type: !233)
!5193 = !DILocation(line: 135, column: 2, scope: !5189)
!5194 = !DILocation(line: 135, column: 6, scope: !5189)
!5195 = !DILocation(line: 136, column: 2, scope: !5189)
!5196 = !DILocation(line: 136, column: 17, scope: !5189)
!5197 = !DILocation(line: 138, column: 9, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 138, column: 2)
!5199 = !DILocation(line: 138, column: 7, scope: !5198)
!5200 = !DILocation(line: 138, column: 31, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 138, column: 2)
!5202 = !DILocation(line: 138, column: 33, scope: !5201)
!5203 = !DILocation(line: 138, column: 2, scope: !5198)
!5204 = !DILocation(line: 139, column: 28, scope: !5201)
!5205 = !DILocation(line: 139, column: 10, scope: !5201)
!5206 = !DILocation(line: 139, column: 7, scope: !5201)
!5207 = !DILocation(line: 139, column: 3, scope: !5201)
!5208 = !DILocation(line: 138, column: 54, scope: !5201)
!5209 = !DILocation(line: 138, column: 2, scope: !5201)
!5210 = distinct !{!5210, !5203, !5211, !4927, !4928}
!5211 = !DILocation(line: 139, column: 29, scope: !5198)
!5212 = !DILocation(line: 140, column: 21, scope: !5189)
!5213 = !DILocation(line: 140, column: 25, scope: !5189)
!5214 = !DILocation(line: 140, column: 2, scope: !5189)
!5215 = !DILocation(line: 141, column: 21, scope: !5189)
!5216 = !DILocation(line: 141, column: 25, scope: !5189)
!5217 = !DILocation(line: 141, column: 2, scope: !5189)
!5218 = !DILocation(line: 142, column: 1, scope: !5189)
!5219 = distinct !DISubprogram(name: "nvram_misc_llseek", scope: !3, file: !3, line: 222, type: !1001, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5220)
!5220 = !{!5221, !5222, !5223}
!5221 = !DILocalVariable(name: "file", arg: 1, scope: !5219, file: !3, line: 222, type: !1003)
!5222 = !DILocalVariable(name: "offset", arg: 2, scope: !5219, file: !3, line: 222, type: !504)
!5223 = !DILocalVariable(name: "origin", arg: 3, scope: !5219, file: !3, line: 222, type: !109)
!5224 = !DILocation(line: 222, column: 46, scope: !5219)
!5225 = !DILocation(line: 222, column: 59, scope: !5219)
!5226 = !DILocation(line: 222, column: 71, scope: !5219)
!5227 = !DILocation(line: 224, column: 34, scope: !5219)
!5228 = !DILocation(line: 224, column: 40, scope: !5219)
!5229 = !DILocation(line: 224, column: 48, scope: !5219)
!5230 = !DILocation(line: 225, column: 6, scope: !5219)
!5231 = !DILocation(line: 224, column: 9, scope: !5219)
!5232 = !DILocation(line: 224, column: 2, scope: !5219)
!5233 = distinct !DISubprogram(name: "nvram_misc_read", scope: !3, file: !3, line: 228, type: !1006, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5234)
!5234 = !{!5235, !5236, !5237, !5238, !5239, !5240, !5241, !5243, !5244, !5246, !5247}
!5235 = !DILocalVariable(name: "file", arg: 1, scope: !5233, file: !3, line: 228, type: !1003)
!5236 = !DILocalVariable(name: "buf", arg: 2, scope: !5233, file: !3, line: 228, type: !263)
!5237 = !DILocalVariable(name: "count", arg: 3, scope: !5233, file: !3, line: 229, type: !310)
!5238 = !DILocalVariable(name: "ppos", arg: 4, scope: !5233, file: !3, line: 229, type: !657)
!5239 = !DILocalVariable(name: "tmp", scope: !5233, file: !3, line: 231, type: !263)
!5240 = !DILocalVariable(name: "ret", scope: !5233, file: !3, line: 232, type: !295)
!5241 = !DILocalVariable(name: "__UNIQUE_ID___x319", scope: !5242, file: !3, line: 238, type: !310)
!5242 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 238, column: 10)
!5243 = !DILocalVariable(name: "__UNIQUE_ID___y320", scope: !5242, file: !3, line: 238, type: !310)
!5244 = !DILocalVariable(name: "__UNIQUE_ID___x321", scope: !5245, file: !3, line: 239, type: !310)
!5245 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 239, column: 10)
!5246 = !DILocalVariable(name: "__UNIQUE_ID___y322", scope: !5245, file: !3, line: 239, type: !310)
!5247 = !DILabel(scope: !5233, name: "out", file: !3, line: 254)
!5248 = !DILocation(line: 228, column: 45, scope: !5233)
!5249 = !DILocation(line: 228, column: 64, scope: !5233)
!5250 = !DILocation(line: 229, column: 18, scope: !5233)
!5251 = !DILocation(line: 229, column: 33, scope: !5233)
!5252 = !DILocation(line: 231, column: 2, scope: !5233)
!5253 = !DILocation(line: 231, column: 8, scope: !5233)
!5254 = !DILocation(line: 232, column: 2, scope: !5233)
!5255 = !DILocation(line: 232, column: 10, scope: !5233)
!5256 = !DILocation(line: 235, column: 7, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 235, column: 6)
!5258 = !DILocation(line: 235, column: 6, scope: !5257)
!5259 = !DILocation(line: 235, column: 15, scope: !5257)
!5260 = !DILocation(line: 235, column: 12, scope: !5257)
!5261 = !DILocation(line: 235, column: 6, scope: !5233)
!5262 = !DILocation(line: 236, column: 3, scope: !5257)
!5263 = !DILocation(line: 238, column: 10, scope: !5242)
!5264 = !DILocation(line: 238, column: 10, scope: !5233)
!5265 = !DILocation(line: 238, column: 8, scope: !5233)
!5266 = !DILocation(line: 239, column: 10, scope: !5245)
!5267 = !DILocation(line: 239, column: 10, scope: !5233)
!5268 = !DILocation(line: 239, column: 8, scope: !5233)
!5269 = !DILocation(line: 241, column: 16, scope: !5233)
!5270 = !DILocation(line: 241, column: 8, scope: !5233)
!5271 = !DILocation(line: 241, column: 6, scope: !5233)
!5272 = !DILocation(line: 242, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 242, column: 6)
!5274 = !DILocation(line: 242, column: 6, scope: !5233)
!5275 = !DILocation(line: 243, column: 3, scope: !5273)
!5276 = !DILocation(line: 245, column: 19, scope: !5233)
!5277 = !DILocation(line: 245, column: 24, scope: !5233)
!5278 = !DILocation(line: 245, column: 31, scope: !5233)
!5279 = !DILocation(line: 245, column: 8, scope: !5233)
!5280 = !DILocation(line: 245, column: 6, scope: !5233)
!5281 = !DILocation(line: 246, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 246, column: 6)
!5283 = !DILocation(line: 246, column: 10, scope: !5282)
!5284 = !DILocation(line: 246, column: 6, scope: !5233)
!5285 = !DILocation(line: 247, column: 3, scope: !5282)
!5286 = !DILocation(line: 249, column: 19, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 249, column: 6)
!5288 = !DILocation(line: 249, column: 24, scope: !5287)
!5289 = !DILocation(line: 249, column: 29, scope: !5287)
!5290 = !DILocation(line: 249, column: 6, scope: !5287)
!5291 = !DILocation(line: 249, column: 6, scope: !5233)
!5292 = !DILocation(line: 250, column: 12, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 249, column: 35)
!5294 = !DILocation(line: 250, column: 4, scope: !5293)
!5295 = !DILocation(line: 250, column: 9, scope: !5293)
!5296 = !DILocation(line: 251, column: 7, scope: !5293)
!5297 = !DILocation(line: 252, column: 2, scope: !5293)
!5298 = !DILocation(line: 249, column: 32, scope: !5287)
!5299 = !DILocation(line: 254, column: 1, scope: !5233)
!5300 = !DILocation(line: 255, column: 8, scope: !5233)
!5301 = !DILocation(line: 255, column: 2, scope: !5233)
!5302 = !DILocation(line: 256, column: 9, scope: !5233)
!5303 = !DILocation(line: 256, column: 2, scope: !5233)
!5304 = !DILocation(line: 257, column: 1, scope: !5233)
!5305 = distinct !DISubprogram(name: "nvram_misc_write", scope: !3, file: !3, line: 259, type: !1010, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5306)
!5306 = !{!5307, !5308, !5309, !5310, !5311, !5312, !5313, !5315, !5316, !5318}
!5307 = !DILocalVariable(name: "file", arg: 1, scope: !5305, file: !3, line: 259, type: !1003)
!5308 = !DILocalVariable(name: "buf", arg: 2, scope: !5305, file: !3, line: 259, type: !182)
!5309 = !DILocalVariable(name: "count", arg: 3, scope: !5305, file: !3, line: 260, type: !310)
!5310 = !DILocalVariable(name: "ppos", arg: 4, scope: !5305, file: !3, line: 260, type: !657)
!5311 = !DILocalVariable(name: "tmp", scope: !5305, file: !3, line: 262, type: !263)
!5312 = !DILocalVariable(name: "ret", scope: !5305, file: !3, line: 263, type: !295)
!5313 = !DILocalVariable(name: "__UNIQUE_ID___x323", scope: !5314, file: !3, line: 268, type: !310)
!5314 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 268, column: 10)
!5315 = !DILocalVariable(name: "__UNIQUE_ID___y324", scope: !5314, file: !3, line: 268, type: !310)
!5316 = !DILocalVariable(name: "__UNIQUE_ID___x325", scope: !5317, file: !3, line: 269, type: !310)
!5317 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 269, column: 10)
!5318 = !DILocalVariable(name: "__UNIQUE_ID___y326", scope: !5317, file: !3, line: 269, type: !310)
!5319 = !DILocation(line: 259, column: 46, scope: !5305)
!5320 = !DILocation(line: 259, column: 71, scope: !5305)
!5321 = !DILocation(line: 260, column: 12, scope: !5305)
!5322 = !DILocation(line: 260, column: 27, scope: !5305)
!5323 = !DILocation(line: 262, column: 2, scope: !5305)
!5324 = !DILocation(line: 262, column: 8, scope: !5305)
!5325 = !DILocation(line: 263, column: 2, scope: !5305)
!5326 = !DILocation(line: 263, column: 10, scope: !5305)
!5327 = !DILocation(line: 265, column: 7, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 265, column: 6)
!5329 = !DILocation(line: 265, column: 6, scope: !5328)
!5330 = !DILocation(line: 265, column: 15, scope: !5328)
!5331 = !DILocation(line: 265, column: 12, scope: !5328)
!5332 = !DILocation(line: 265, column: 6, scope: !5305)
!5333 = !DILocation(line: 266, column: 3, scope: !5328)
!5334 = !DILocation(line: 268, column: 10, scope: !5314)
!5335 = !DILocation(line: 268, column: 10, scope: !5305)
!5336 = !DILocation(line: 268, column: 8, scope: !5305)
!5337 = !DILocation(line: 269, column: 10, scope: !5317)
!5338 = !DILocation(line: 269, column: 10, scope: !5305)
!5339 = !DILocation(line: 269, column: 8, scope: !5305)
!5340 = !DILocation(line: 271, column: 20, scope: !5305)
!5341 = !DILocation(line: 271, column: 25, scope: !5305)
!5342 = !DILocation(line: 271, column: 8, scope: !5305)
!5343 = !DILocation(line: 271, column: 6, scope: !5305)
!5344 = !DILocation(line: 272, column: 13, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 272, column: 6)
!5346 = !DILocation(line: 272, column: 6, scope: !5345)
!5347 = !DILocation(line: 272, column: 6, scope: !5305)
!5348 = !DILocation(line: 273, column: 18, scope: !5345)
!5349 = !DILocation(line: 273, column: 10, scope: !5345)
!5350 = !DILocation(line: 273, column: 3, scope: !5345)
!5351 = !DILocation(line: 275, column: 20, scope: !5305)
!5352 = !DILocation(line: 275, column: 25, scope: !5305)
!5353 = !DILocation(line: 275, column: 32, scope: !5305)
!5354 = !DILocation(line: 275, column: 8, scope: !5305)
!5355 = !DILocation(line: 275, column: 6, scope: !5305)
!5356 = !DILocation(line: 276, column: 8, scope: !5305)
!5357 = !DILocation(line: 276, column: 2, scope: !5305)
!5358 = !DILocation(line: 277, column: 9, scope: !5305)
!5359 = !DILocation(line: 277, column: 2, scope: !5305)
!5360 = !DILocation(line: 278, column: 1, scope: !5305)
!5361 = distinct !DISubprogram(name: "nvram_misc_ioctl", scope: !3, file: !3, line: 280, type: !1626, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5362)
!5362 = !{!5363, !5364, !5365, !5366}
!5363 = !DILocalVariable(name: "file", arg: 1, scope: !5361, file: !3, line: 280, type: !1003)
!5364 = !DILocalVariable(name: "cmd", arg: 2, scope: !5361, file: !3, line: 280, type: !7)
!5365 = !DILocalVariable(name: "arg", arg: 3, scope: !5361, file: !3, line: 281, type: !313)
!5366 = !DILocalVariable(name: "ret", scope: !5361, file: !3, line: 283, type: !299)
!5367 = !DILocation(line: 280, column: 43, scope: !5361)
!5368 = !DILocation(line: 280, column: 62, scope: !5361)
!5369 = !DILocation(line: 281, column: 23, scope: !5361)
!5370 = !DILocation(line: 283, column: 2, scope: !5361)
!5371 = !DILocation(line: 283, column: 7, scope: !5361)
!5372 = !DILocation(line: 285, column: 10, scope: !5361)
!5373 = !DILocation(line: 285, column: 2, scope: !5361)
!5374 = !DILocation(line: 324, column: 8, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 324, column: 7)
!5376 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 285, column: 15)
!5377 = !DILocation(line: 324, column: 7, scope: !5376)
!5378 = !DILocation(line: 325, column: 4, scope: !5375)
!5379 = !DILocation(line: 328, column: 4, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 327, column: 42)
!5381 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 327, column: 7)
!5382 = !DILocation(line: 329, column: 25, scope: !5380)
!5383 = !DILocation(line: 329, column: 10, scope: !5380)
!5384 = !DILocation(line: 329, column: 8, scope: !5380)
!5385 = !DILocation(line: 330, column: 4, scope: !5380)
!5386 = !DILocation(line: 332, column: 3, scope: !5376)
!5387 = !DILocation(line: 336, column: 8, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 336, column: 7)
!5389 = !DILocation(line: 336, column: 7, scope: !5376)
!5390 = !DILocation(line: 337, column: 4, scope: !5388)
!5391 = !DILocation(line: 340, column: 4, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 339, column: 44)
!5393 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 339, column: 7)
!5394 = !DILocation(line: 341, column: 25, scope: !5392)
!5395 = !DILocation(line: 341, column: 10, scope: !5392)
!5396 = !DILocation(line: 341, column: 8, scope: !5392)
!5397 = !DILocation(line: 342, column: 4, scope: !5392)
!5398 = !DILocation(line: 344, column: 3, scope: !5376)
!5399 = !DILocation(line: 347, column: 9, scope: !5361)
!5400 = !DILocation(line: 347, column: 2, scope: !5361)
!5401 = !DILocation(line: 348, column: 1, scope: !5361)
!5402 = distinct !DISubprogram(name: "nvram_misc_open", scope: !3, file: !3, line: 350, type: !1636, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5403)
!5403 = !{!5404, !5405}
!5404 = !DILocalVariable(name: "inode", arg: 1, scope: !5402, file: !3, line: 350, type: !343)
!5405 = !DILocalVariable(name: "file", arg: 2, scope: !5402, file: !3, line: 350, type: !1003)
!5406 = !DILocation(line: 350, column: 42, scope: !5402)
!5407 = !DILocation(line: 350, column: 62, scope: !5402)
!5408 = !DILocation(line: 352, column: 2, scope: !5402)
!5409 = !DILocation(line: 355, column: 7, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 355, column: 6)
!5411 = !DILocation(line: 355, column: 22, scope: !5410)
!5412 = !DILocation(line: 355, column: 26, scope: !5410)
!5413 = !DILocation(line: 355, column: 32, scope: !5410)
!5414 = !DILocation(line: 355, column: 40, scope: !5410)
!5415 = !DILocation(line: 355, column: 51, scope: !5410)
!5416 = !DILocation(line: 356, column: 7, scope: !5410)
!5417 = !DILocation(line: 356, column: 23, scope: !5410)
!5418 = !DILocation(line: 355, column: 6, scope: !5402)
!5419 = !DILocation(line: 357, column: 3, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 356, column: 38)
!5421 = !DILocation(line: 358, column: 3, scope: !5420)
!5422 = !DILocation(line: 364, column: 7, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 363, column: 6)
!5424 = !DILocation(line: 364, column: 13, scope: !5423)
!5425 = !DILocation(line: 364, column: 20, scope: !5423)
!5426 = !DILocation(line: 364, column: 35, scope: !5423)
!5427 = !DILocation(line: 364, column: 39, scope: !5423)
!5428 = !DILocation(line: 364, column: 55, scope: !5423)
!5429 = !DILocation(line: 363, column: 6, scope: !5402)
!5430 = !DILocation(line: 365, column: 3, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 364, column: 71)
!5432 = !DILocation(line: 366, column: 3, scope: !5431)
!5433 = !DILocation(line: 370, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 370, column: 6)
!5435 = !DILocation(line: 370, column: 12, scope: !5434)
!5436 = !DILocation(line: 370, column: 20, scope: !5434)
!5437 = !DILocation(line: 370, column: 6, scope: !5402)
!5438 = !DILocation(line: 371, column: 19, scope: !5434)
!5439 = !DILocation(line: 371, column: 3, scope: !5434)
!5440 = !DILocation(line: 372, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 372, column: 6)
!5442 = !DILocation(line: 372, column: 12, scope: !5441)
!5443 = !DILocation(line: 372, column: 19, scope: !5441)
!5444 = !DILocation(line: 372, column: 6, scope: !5402)
!5445 = !DILocation(line: 373, column: 19, scope: !5441)
!5446 = !DILocation(line: 373, column: 3, scope: !5441)
!5447 = !DILocation(line: 374, column: 16, scope: !5402)
!5448 = !DILocation(line: 376, column: 2, scope: !5402)
!5449 = !DILocation(line: 378, column: 2, scope: !5402)
!5450 = !DILocation(line: 379, column: 1, scope: !5402)
!5451 = distinct !DISubprogram(name: "nvram_misc_release", scope: !3, file: !3, line: 381, type: !1636, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5452)
!5452 = !{!5453, !5454}
!5453 = !DILocalVariable(name: "inode", arg: 1, scope: !5451, file: !3, line: 381, type: !343)
!5454 = !DILocalVariable(name: "file", arg: 2, scope: !5451, file: !3, line: 381, type: !1003)
!5455 = !DILocation(line: 381, column: 45, scope: !5451)
!5456 = !DILocation(line: 381, column: 65, scope: !5451)
!5457 = !DILocation(line: 383, column: 2, scope: !5451)
!5458 = !DILocation(line: 385, column: 16, scope: !5451)
!5459 = !DILocation(line: 388, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 388, column: 6)
!5461 = !DILocation(line: 388, column: 22, scope: !5460)
!5462 = !DILocation(line: 388, column: 6, scope: !5451)
!5463 = !DILocation(line: 389, column: 19, scope: !5460)
!5464 = !DILocation(line: 389, column: 3, scope: !5460)
!5465 = !DILocation(line: 390, column: 6, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 390, column: 6)
!5467 = !DILocation(line: 390, column: 12, scope: !5466)
!5468 = !DILocation(line: 390, column: 19, scope: !5466)
!5469 = !DILocation(line: 390, column: 6, scope: !5451)
!5470 = !DILocation(line: 391, column: 19, scope: !5466)
!5471 = !DILocation(line: 391, column: 3, scope: !5466)
!5472 = !DILocation(line: 393, column: 2, scope: !5451)
!5473 = !DILocation(line: 395, column: 2, scope: !5451)
!5474 = !DISubprogram(name: "generic_file_llseek_size", scope: !14, file: !14, line: 3013, type: !5475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!504, !1003, !504, !109, !504, !504}
!5477 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !5478, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5480)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!157, !310, !1466}
!5480 = !{!5481, !5482, !5483}
!5481 = !DILocalVariable(name: "size", arg: 1, scope: !5477, file: !147, line: 591, type: !310)
!5482 = !DILocalVariable(name: "flags", arg: 2, scope: !5477, file: !147, line: 591, type: !1466)
!5483 = !DILocalVariable(name: "index", scope: !5484, file: !147, line: 594, type: !7)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !147, line: 593, column: 42)
!5485 = distinct !DILexicalBlock(scope: !5477, file: !147, line: 593, column: 6)
!5486 = !DILocation(line: 591, column: 61, scope: !5477)
!5487 = !DILocation(line: 591, column: 73, scope: !5477)
!5488 = !DILocation(line: 593, column: 27, scope: !5485)
!5489 = !DILocation(line: 593, column: 6, scope: !5485)
!5490 = !DILocation(line: 593, column: 33, scope: !5485)
!5491 = !DILocation(line: 593, column: 36, scope: !5485)
!5492 = !DILocation(line: 593, column: 6, scope: !5477)
!5493 = !DILocation(line: 594, column: 3, scope: !5484)
!5494 = !DILocation(line: 594, column: 16, scope: !5484)
!5495 = !DILocation(line: 596, column: 7, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5484, file: !147, line: 596, column: 7)
!5497 = !DILocation(line: 596, column: 12, scope: !5496)
!5498 = !DILocation(line: 596, column: 7, scope: !5484)
!5499 = !DILocation(line: 597, column: 25, scope: !5496)
!5500 = !DILocation(line: 597, column: 31, scope: !5496)
!5501 = !DILocation(line: 597, column: 11, scope: !5496)
!5502 = !DILocation(line: 597, column: 4, scope: !5496)
!5503 = !DILocation(line: 599, column: 11, scope: !5484)
!5504 = !DILocation(line: 599, column: 9, scope: !5484)
!5505 = !DILocation(line: 601, column: 33, scope: !5484)
!5506 = !DILocation(line: 601, column: 40, scope: !5484)
!5507 = !DILocation(line: 601, column: 20, scope: !5484)
!5508 = !DILocation(line: 601, column: 5, scope: !5484)
!5509 = !DILocation(line: 601, column: 51, scope: !5484)
!5510 = !DILocation(line: 602, column: 5, scope: !5484)
!5511 = !DILocation(line: 602, column: 12, scope: !5484)
!5512 = !DILocation(line: 600, column: 10, scope: !5484)
!5513 = !DILocation(line: 600, column: 3, scope: !5484)
!5514 = !DILocation(line: 603, column: 2, scope: !5485)
!5515 = !DILocation(line: 604, column: 19, scope: !5477)
!5516 = !DILocation(line: 604, column: 25, scope: !5477)
!5517 = !DILocation(line: 604, column: 9, scope: !5477)
!5518 = !DILocation(line: 604, column: 2, scope: !5477)
!5519 = !DILocation(line: 605, column: 1, scope: !5477)
!5520 = distinct !DISubprogram(name: "nvram_read", scope: !4795, file: !4795, line: 109, type: !4811, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5521)
!5521 = !{!5522, !5523, !5524}
!5522 = !DILocalVariable(name: "buf", arg: 1, scope: !5520, file: !4795, line: 109, type: !263)
!5523 = !DILocalVariable(name: "count", arg: 2, scope: !5520, file: !4795, line: 109, type: !310)
!5524 = !DILocalVariable(name: "ppos", arg: 3, scope: !5520, file: !4795, line: 109, type: !657)
!5525 = !DILocation(line: 109, column: 40, scope: !5520)
!5526 = !DILocation(line: 109, column: 52, scope: !5520)
!5527 = !DILocation(line: 109, column: 67, scope: !5520)
!5528 = !DILocation(line: 115, column: 21, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5520, file: !4795, line: 115, column: 6)
!5530 = !DILocation(line: 115, column: 6, scope: !5529)
!5531 = !DILocation(line: 115, column: 6, scope: !5520)
!5532 = !DILocation(line: 116, column: 25, scope: !5529)
!5533 = !DILocation(line: 116, column: 30, scope: !5529)
!5534 = !DILocation(line: 116, column: 35, scope: !5529)
!5535 = !DILocation(line: 116, column: 42, scope: !5529)
!5536 = !DILocation(line: 116, column: 10, scope: !5529)
!5537 = !DILocation(line: 116, column: 3, scope: !5529)
!5538 = !DILocation(line: 118, column: 26, scope: !5520)
!5539 = !DILocation(line: 118, column: 31, scope: !5520)
!5540 = !DILocation(line: 118, column: 38, scope: !5520)
!5541 = !DILocation(line: 118, column: 9, scope: !5520)
!5542 = !DILocation(line: 118, column: 2, scope: !5520)
!5543 = !DILocation(line: 119, column: 1, scope: !5520)
!5544 = distinct !DISubprogram(name: "copy_to_user", scope: !5545, file: !5545, line: 188, type: !5546, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5548)
!5545 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!313, !157, !1318, !313}
!5548 = !{!5549, !5550, !5551}
!5549 = !DILocalVariable(name: "to", arg: 1, scope: !5544, file: !5545, line: 188, type: !157)
!5550 = !DILocalVariable(name: "from", arg: 2, scope: !5544, file: !5545, line: 188, type: !1318)
!5551 = !DILocalVariable(name: "n", arg: 3, scope: !5544, file: !5545, line: 188, type: !313)
!5552 = !DILocation(line: 188, column: 27, scope: !5544)
!5553 = !DILocation(line: 188, column: 43, scope: !5544)
!5554 = !DILocation(line: 188, column: 63, scope: !5544)
!5555 = !DILocation(line: 190, column: 22, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5544, file: !5545, line: 190, column: 6)
!5557 = !DILocation(line: 190, column: 28, scope: !5556)
!5558 = !DILocation(line: 190, column: 6, scope: !5556)
!5559 = !DILocation(line: 190, column: 6, scope: !5544)
!5560 = !DILocation(line: 191, column: 21, scope: !5556)
!5561 = !DILocation(line: 191, column: 25, scope: !5556)
!5562 = !DILocation(line: 191, column: 31, scope: !5556)
!5563 = !DILocation(line: 191, column: 7, scope: !5556)
!5564 = !DILocation(line: 191, column: 5, scope: !5556)
!5565 = !DILocation(line: 191, column: 3, scope: !5556)
!5566 = !DILocation(line: 192, column: 9, scope: !5544)
!5567 = !DILocation(line: 192, column: 2, scope: !5544)
!5568 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !5569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{null, !1318}
!5571 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !5478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5572 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !5573, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!7, !310, !875}
!5575 = !{!5576, !5577}
!5576 = !DILocalVariable(name: "size", arg: 1, scope: !5572, file: !147, line: 444, type: !310)
!5577 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5572, file: !147, line: 445, type: !875)
!5578 = !DILocation(line: 444, column: 60, scope: !5572)
!5579 = !DILocation(line: 445, column: 16, scope: !5572)
!5580 = !DILocation(line: 447, column: 7, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 447, column: 6)
!5582 = !DILocation(line: 447, column: 6, scope: !5572)
!5583 = !DILocation(line: 448, column: 3, scope: !5581)
!5584 = !DILocation(line: 450, column: 6, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 450, column: 6)
!5586 = !DILocation(line: 450, column: 11, scope: !5585)
!5587 = !DILocation(line: 450, column: 6, scope: !5572)
!5588 = !DILocation(line: 451, column: 3, scope: !5585)
!5589 = !DILocation(line: 453, column: 32, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 453, column: 6)
!5591 = !DILocation(line: 453, column: 37, scope: !5590)
!5592 = !DILocation(line: 453, column: 42, scope: !5590)
!5593 = !DILocation(line: 453, column: 45, scope: !5590)
!5594 = !DILocation(line: 453, column: 50, scope: !5590)
!5595 = !DILocation(line: 453, column: 6, scope: !5572)
!5596 = !DILocation(line: 454, column: 3, scope: !5590)
!5597 = !DILocation(line: 455, column: 32, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 455, column: 6)
!5599 = !DILocation(line: 455, column: 37, scope: !5598)
!5600 = !DILocation(line: 455, column: 43, scope: !5598)
!5601 = !DILocation(line: 455, column: 46, scope: !5598)
!5602 = !DILocation(line: 455, column: 51, scope: !5598)
!5603 = !DILocation(line: 455, column: 6, scope: !5572)
!5604 = !DILocation(line: 456, column: 3, scope: !5598)
!5605 = !DILocation(line: 457, column: 6, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 457, column: 6)
!5607 = !DILocation(line: 457, column: 11, scope: !5606)
!5608 = !DILocation(line: 457, column: 6, scope: !5572)
!5609 = !DILocation(line: 457, column: 26, scope: !5606)
!5610 = !DILocation(line: 458, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 458, column: 6)
!5612 = !DILocation(line: 458, column: 11, scope: !5611)
!5613 = !DILocation(line: 458, column: 6, scope: !5572)
!5614 = !DILocation(line: 458, column: 26, scope: !5611)
!5615 = !DILocation(line: 459, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 459, column: 6)
!5617 = !DILocation(line: 459, column: 11, scope: !5616)
!5618 = !DILocation(line: 459, column: 6, scope: !5572)
!5619 = !DILocation(line: 459, column: 26, scope: !5616)
!5620 = !DILocation(line: 460, column: 6, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 460, column: 6)
!5622 = !DILocation(line: 460, column: 11, scope: !5621)
!5623 = !DILocation(line: 460, column: 6, scope: !5572)
!5624 = !DILocation(line: 460, column: 26, scope: !5621)
!5625 = !DILocation(line: 461, column: 6, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 461, column: 6)
!5627 = !DILocation(line: 461, column: 11, scope: !5626)
!5628 = !DILocation(line: 461, column: 6, scope: !5572)
!5629 = !DILocation(line: 461, column: 26, scope: !5626)
!5630 = !DILocation(line: 462, column: 6, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 462, column: 6)
!5632 = !DILocation(line: 462, column: 11, scope: !5631)
!5633 = !DILocation(line: 462, column: 6, scope: !5572)
!5634 = !DILocation(line: 462, column: 26, scope: !5631)
!5635 = !DILocation(line: 463, column: 6, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 463, column: 6)
!5637 = !DILocation(line: 463, column: 11, scope: !5636)
!5638 = !DILocation(line: 463, column: 6, scope: !5572)
!5639 = !DILocation(line: 463, column: 26, scope: !5636)
!5640 = !DILocation(line: 464, column: 6, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 464, column: 6)
!5642 = !DILocation(line: 464, column: 11, scope: !5641)
!5643 = !DILocation(line: 464, column: 6, scope: !5572)
!5644 = !DILocation(line: 464, column: 26, scope: !5641)
!5645 = !DILocation(line: 465, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 465, column: 6)
!5647 = !DILocation(line: 465, column: 11, scope: !5646)
!5648 = !DILocation(line: 465, column: 6, scope: !5572)
!5649 = !DILocation(line: 465, column: 26, scope: !5646)
!5650 = !DILocation(line: 466, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 466, column: 6)
!5652 = !DILocation(line: 466, column: 11, scope: !5651)
!5653 = !DILocation(line: 466, column: 6, scope: !5572)
!5654 = !DILocation(line: 466, column: 26, scope: !5651)
!5655 = !DILocation(line: 467, column: 6, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 467, column: 6)
!5657 = !DILocation(line: 467, column: 11, scope: !5656)
!5658 = !DILocation(line: 467, column: 6, scope: !5572)
!5659 = !DILocation(line: 467, column: 26, scope: !5656)
!5660 = !DILocation(line: 468, column: 6, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 468, column: 6)
!5662 = !DILocation(line: 468, column: 11, scope: !5661)
!5663 = !DILocation(line: 468, column: 6, scope: !5572)
!5664 = !DILocation(line: 468, column: 26, scope: !5661)
!5665 = !DILocation(line: 469, column: 6, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 469, column: 6)
!5667 = !DILocation(line: 469, column: 11, scope: !5666)
!5668 = !DILocation(line: 469, column: 6, scope: !5572)
!5669 = !DILocation(line: 469, column: 26, scope: !5666)
!5670 = !DILocation(line: 470, column: 6, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 470, column: 6)
!5672 = !DILocation(line: 470, column: 11, scope: !5671)
!5673 = !DILocation(line: 470, column: 6, scope: !5572)
!5674 = !DILocation(line: 470, column: 26, scope: !5671)
!5675 = !DILocation(line: 471, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 471, column: 6)
!5677 = !DILocation(line: 471, column: 11, scope: !5676)
!5678 = !DILocation(line: 471, column: 6, scope: !5572)
!5679 = !DILocation(line: 471, column: 26, scope: !5676)
!5680 = !DILocation(line: 472, column: 6, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 472, column: 6)
!5682 = !DILocation(line: 472, column: 11, scope: !5681)
!5683 = !DILocation(line: 472, column: 6, scope: !5572)
!5684 = !DILocation(line: 472, column: 26, scope: !5681)
!5685 = !DILocation(line: 473, column: 6, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 473, column: 6)
!5687 = !DILocation(line: 473, column: 11, scope: !5686)
!5688 = !DILocation(line: 473, column: 6, scope: !5572)
!5689 = !DILocation(line: 473, column: 26, scope: !5686)
!5690 = !DILocation(line: 474, column: 6, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 474, column: 6)
!5692 = !DILocation(line: 474, column: 11, scope: !5691)
!5693 = !DILocation(line: 474, column: 6, scope: !5572)
!5694 = !DILocation(line: 474, column: 27, scope: !5691)
!5695 = !DILocation(line: 475, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 475, column: 6)
!5697 = !DILocation(line: 475, column: 11, scope: !5696)
!5698 = !DILocation(line: 475, column: 6, scope: !5572)
!5699 = !DILocation(line: 475, column: 32, scope: !5696)
!5700 = !DILocation(line: 477, column: 50, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5572, file: !147, line: 477, column: 6)
!5702 = !{i8 0, i8 2}
!5703 = !DILocation(line: 477, column: 6, scope: !5572)
!5704 = !DILocation(line: 478, column: 3, scope: !5701)
!5705 = !DILocation(line: 478, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !147, line: 478, column: 3)
!5707 = distinct !DILexicalBlock(scope: !5701, file: !147, line: 478, column: 3)
!5708 = !{i32 -2140845951}
!5709 = !DILocation(line: 478, column: 3, scope: !5707)
!5710 = !DILocation(line: 480, column: 3, scope: !5701)
!5711 = !DILocation(line: 480, column: 3, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5701, file: !147, line: 480, column: 3)
!5713 = !DILocation(line: 480, column: 3, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5712, file: !147, line: 480, column: 3)
!5715 = !DILocation(line: 480, column: 3, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5712, file: !147, line: 480, column: 3)
!5717 = !{i64 2154121548, i64 2154121577, i64 2154121623, i64 2154121681, i64 2154121735, i64 2154121789, i64 2154121844, i64 2154121875}
!5718 = !DILocation(line: 483, column: 2, scope: !5572)
!5719 = !DILocation(line: 484, column: 1, scope: !5572)
!5720 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !5721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!157, !5723, !1466, !310}
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5725, line: 325, flags: DIFlagFwdDecl)
!5725 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5726 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !5727, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5729)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{!146, !1466, !313}
!5729 = !{!5730, !5731}
!5730 = !DILocalVariable(name: "flags", arg: 1, scope: !5726, file: !147, line: 401, type: !1466)
!5731 = !DILocalVariable(name: "caller", arg: 2, scope: !5726, file: !147, line: 401, type: !313)
!5732 = !DILocation(line: 401, column: 67, scope: !5726)
!5733 = !DILocation(line: 401, column: 88, scope: !5726)
!5734 = !DILocation(line: 407, column: 6, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5726, file: !147, line: 407, column: 6)
!5736 = !DILocation(line: 407, column: 6, scope: !5726)
!5737 = !DILocation(line: 413, column: 3, scope: !5735)
!5738 = !DILocation(line: 423, column: 38, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5726, file: !147, line: 423, column: 6)
!5740 = !DILocation(line: 423, column: 44, scope: !5739)
!5741 = !DILocation(line: 423, column: 6, scope: !5726)
!5742 = !DILocation(line: 424, column: 3, scope: !5739)
!5743 = !DILocation(line: 426, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5726, file: !147, line: 425, column: 6)
!5745 = !DILocation(line: 429, column: 1, scope: !5726)
!5746 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !5478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5747 = !DISubprogram(name: "__compiletime_assert_263", scope: !147, file: !147, line: 478, type: !2653, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5748 = distinct !DISubprogram(name: "nvram_read_bytes", scope: !4795, file: !4795, line: 81, type: !4811, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5749)
!5749 = !{!5750, !5751, !5752, !5753, !5754, !5755}
!5750 = !DILocalVariable(name: "buf", arg: 1, scope: !5748, file: !4795, line: 81, type: !263)
!5751 = !DILocalVariable(name: "count", arg: 2, scope: !5748, file: !4795, line: 81, type: !310)
!5752 = !DILocalVariable(name: "ppos", arg: 3, scope: !5748, file: !4795, line: 81, type: !657)
!5753 = !DILocalVariable(name: "nvram_size", scope: !5748, file: !4795, line: 83, type: !295)
!5754 = !DILocalVariable(name: "i", scope: !5748, file: !4795, line: 84, type: !504)
!5755 = !DILocalVariable(name: "p", scope: !5748, file: !4795, line: 85, type: !263)
!5756 = !DILocation(line: 81, column: 46, scope: !5748)
!5757 = !DILocation(line: 81, column: 58, scope: !5748)
!5758 = !DILocation(line: 81, column: 73, scope: !5748)
!5759 = !DILocation(line: 83, column: 2, scope: !5748)
!5760 = !DILocation(line: 83, column: 10, scope: !5748)
!5761 = !DILocation(line: 83, column: 23, scope: !5748)
!5762 = !DILocation(line: 84, column: 2, scope: !5748)
!5763 = !DILocation(line: 84, column: 9, scope: !5748)
!5764 = !DILocation(line: 85, column: 2, scope: !5748)
!5765 = !DILocation(line: 85, column: 8, scope: !5748)
!5766 = !DILocation(line: 85, column: 12, scope: !5748)
!5767 = !DILocation(line: 87, column: 6, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5748, file: !4795, line: 87, column: 6)
!5769 = !DILocation(line: 87, column: 17, scope: !5768)
!5770 = !DILocation(line: 87, column: 6, scope: !5748)
!5771 = !DILocation(line: 88, column: 10, scope: !5768)
!5772 = !DILocation(line: 88, column: 3, scope: !5768)
!5773 = !DILocation(line: 89, column: 12, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5748, file: !4795, line: 89, column: 2)
!5775 = !DILocation(line: 89, column: 11, scope: !5774)
!5776 = !DILocation(line: 89, column: 9, scope: !5774)
!5777 = !DILocation(line: 89, column: 7, scope: !5774)
!5778 = !DILocation(line: 89, column: 18, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5774, file: !4795, line: 89, column: 2)
!5780 = !DILocation(line: 89, column: 24, scope: !5779)
!5781 = !DILocation(line: 89, column: 28, scope: !5779)
!5782 = !DILocation(line: 89, column: 31, scope: !5779)
!5783 = !DILocation(line: 89, column: 35, scope: !5779)
!5784 = !DILocation(line: 89, column: 33, scope: !5779)
!5785 = !DILocation(line: 0, scope: !5779)
!5786 = !DILocation(line: 89, column: 2, scope: !5774)
!5787 = !DILocation(line: 90, column: 24, scope: !5779)
!5788 = !DILocation(line: 90, column: 8, scope: !5779)
!5789 = !DILocation(line: 90, column: 4, scope: !5779)
!5790 = !DILocation(line: 90, column: 6, scope: !5779)
!5791 = !DILocation(line: 90, column: 3, scope: !5779)
!5792 = !DILocation(line: 89, column: 47, scope: !5779)
!5793 = !DILocation(line: 89, column: 52, scope: !5779)
!5794 = !DILocation(line: 89, column: 57, scope: !5779)
!5795 = !DILocation(line: 89, column: 2, scope: !5779)
!5796 = distinct !{!5796, !5786, !5797, !4927, !4928}
!5797 = !DILocation(line: 90, column: 25, scope: !5774)
!5798 = !DILocation(line: 91, column: 10, scope: !5748)
!5799 = !DILocation(line: 91, column: 3, scope: !5748)
!5800 = !DILocation(line: 91, column: 8, scope: !5748)
!5801 = !DILocation(line: 92, column: 9, scope: !5748)
!5802 = !DILocation(line: 92, column: 13, scope: !5748)
!5803 = !DILocation(line: 92, column: 11, scope: !5748)
!5804 = !DILocation(line: 92, column: 2, scope: !5748)
!5805 = !DILocation(line: 93, column: 1, scope: !5748)
!5806 = distinct !DISubprogram(name: "nvram_get_size", scope: !4795, file: !4795, line: 46, type: !4799, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5807 = !DILocation(line: 52, column: 21, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5806, file: !4795, line: 52, column: 6)
!5809 = !DILocation(line: 52, column: 6, scope: !5808)
!5810 = !DILocation(line: 52, column: 6, scope: !5806)
!5811 = !DILocation(line: 53, column: 25, scope: !5808)
!5812 = !DILocation(line: 53, column: 10, scope: !5808)
!5813 = !DILocation(line: 53, column: 3, scope: !5808)
!5814 = !DILocation(line: 55, column: 2, scope: !5806)
!5815 = !DILocation(line: 56, column: 1, scope: !5806)
!5816 = distinct !DISubprogram(name: "nvram_read_byte", scope: !4795, file: !4795, line: 58, type: !4803, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5817)
!5817 = !{!5818}
!5818 = !DILocalVariable(name: "addr", arg: 1, scope: !5816, file: !4795, line: 58, type: !109)
!5819 = !DILocation(line: 58, column: 49, scope: !5816)
!5820 = !DILocation(line: 64, column: 21, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5816, file: !4795, line: 64, column: 6)
!5822 = !DILocation(line: 64, column: 6, scope: !5821)
!5823 = !DILocation(line: 64, column: 6, scope: !5816)
!5824 = !DILocation(line: 65, column: 25, scope: !5821)
!5825 = !DILocation(line: 65, column: 35, scope: !5821)
!5826 = !DILocation(line: 65, column: 10, scope: !5821)
!5827 = !DILocation(line: 65, column: 3, scope: !5821)
!5828 = !DILocation(line: 67, column: 2, scope: !5816)
!5829 = !DILocation(line: 68, column: 1, scope: !5816)
!5830 = distinct !DISubprogram(name: "check_copy_size", scope: !4684, file: !4684, line: 237, type: !5831, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5833)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!875, !1318, !310, !875}
!5833 = !{!5834, !5835, !5836, !5837, !5838, !5841}
!5834 = !DILocalVariable(name: "addr", arg: 1, scope: !5830, file: !4684, line: 237, type: !1318)
!5835 = !DILocalVariable(name: "bytes", arg: 2, scope: !5830, file: !4684, line: 237, type: !310)
!5836 = !DILocalVariable(name: "is_source", arg: 3, scope: !5830, file: !4684, line: 237, type: !875)
!5837 = !DILocalVariable(name: "sz", scope: !5830, file: !4684, line: 239, type: !109)
!5838 = !DILocalVariable(name: "__ret_warn_on", scope: !5839, file: !4684, line: 249, type: !109)
!5839 = distinct !DILexicalBlock(scope: !5840, file: !4684, line: 249, column: 6)
!5840 = distinct !DILexicalBlock(scope: !5830, file: !4684, line: 249, column: 6)
!5841 = !DILocalVariable(name: "__flags", scope: !5842, file: !4684, line: 249, type: !109)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !4684, line: 249, column: 6)
!5843 = distinct !DILexicalBlock(scope: !5839, file: !4684, line: 249, column: 6)
!5844 = !DILocation(line: 237, column: 29, scope: !5830)
!5845 = !DILocation(line: 237, column: 42, scope: !5830)
!5846 = !DILocation(line: 237, column: 54, scope: !5830)
!5847 = !DILocation(line: 239, column: 2, scope: !5830)
!5848 = !DILocation(line: 239, column: 6, scope: !5830)
!5849 = !DILocation(line: 239, column: 33, scope: !5830)
!5850 = !DILocation(line: 239, column: 11, scope: !5830)
!5851 = !DILocation(line: 240, column: 6, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5830, file: !4684, line: 240, column: 6)
!5853 = !DILocation(line: 0, scope: !5852)
!5854 = !DILocation(line: 240, column: 6, scope: !5830)
!5855 = !DILocation(line: 241, column: 29, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5857, file: !4684, line: 241, column: 7)
!5857 = distinct !DILexicalBlock(scope: !5852, file: !4684, line: 240, column: 39)
!5858 = !DILocation(line: 241, column: 8, scope: !5856)
!5859 = !DILocation(line: 241, column: 7, scope: !5857)
!5860 = !DILocation(line: 242, column: 18, scope: !5856)
!5861 = !DILocation(line: 242, column: 22, scope: !5856)
!5862 = !DILocation(line: 242, column: 4, scope: !5856)
!5863 = !DILocation(line: 243, column: 12, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5856, file: !4684, line: 243, column: 12)
!5865 = !DILocation(line: 243, column: 12, scope: !5856)
!5866 = !DILocation(line: 244, column: 4, scope: !5864)
!5867 = !{i32 2118840}
!5868 = !DILocation(line: 246, column: 4, scope: !5864)
!5869 = !{i32 2118869}
!5870 = !DILocation(line: 247, column: 3, scope: !5857)
!5871 = !DILocation(line: 249, column: 6, scope: !5839)
!5872 = !DILocation(line: 249, column: 6, scope: !5843)
!5873 = !DILocation(line: 249, column: 6, scope: !5842)
!5874 = !DILocation(line: 249, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5842, file: !4684, line: 249, column: 6)
!5876 = !DILocation(line: 249, column: 6, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5842, file: !4684, line: 249, column: 6)
!5878 = !{i64 2149619302, i64 2149619331, i64 2149619377, i64 2149619435, i64 2149619489, i64 2149619543, i64 2149619598, i64 2149619629, i64 2149619937, i64 2149619943, i64 2149619990, i64 2149620013, i64 2149620039}
!5879 = !DILocation(line: 249, column: 6, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5842, file: !4684, line: 249, column: 6)
!5881 = !DILocation(line: 249, column: 6, scope: !5840)
!5882 = !DILocation(line: 249, column: 6, scope: !5830)
!5883 = !DILocation(line: 250, column: 3, scope: !5840)
!5884 = !DILocation(line: 251, column: 20, scope: !5830)
!5885 = !DILocation(line: 251, column: 26, scope: !5830)
!5886 = !DILocation(line: 251, column: 33, scope: !5830)
!5887 = !DILocation(line: 251, column: 2, scope: !5830)
!5888 = !DILocation(line: 252, column: 2, scope: !5830)
!5889 = !DILocation(line: 253, column: 1, scope: !5830)
!5890 = !DISubprogram(name: "_copy_to_user", scope: !5545, file: !5545, line: 176, type: !5546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5891 = distinct !DISubprogram(name: "copy_overflow", scope: !4684, file: !4684, line: 230, type: !5892, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5894)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{null, !109, !313}
!5894 = !{!5895, !5896}
!5895 = !DILocalVariable(name: "size", arg: 1, scope: !5891, file: !4684, line: 230, type: !109)
!5896 = !DILocalVariable(name: "count", arg: 2, scope: !5891, file: !4684, line: 230, type: !313)
!5897 = !DILocation(line: 230, column: 38, scope: !5891)
!5898 = !DILocation(line: 230, column: 58, scope: !5891)
!5899 = !DILocation(line: 233, column: 19, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5891, file: !4684, line: 232, column: 6)
!5901 = !DILocation(line: 233, column: 25, scope: !5900)
!5902 = !DILocation(line: 233, column: 3, scope: !5900)
!5903 = !DILocation(line: 234, column: 1, scope: !5891)
!5904 = !DISubprogram(name: "__bad_copy_from", scope: !4684, file: !4684, line: 224, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5905 = !DISubprogram(name: "__bad_copy_to", scope: !4684, file: !4684, line: 226, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5906 = distinct !DISubprogram(name: "check_object_size", scope: !4684, file: !4684, line: 218, type: !5907, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{null, !1318, !313, !875}
!5909 = !{!5910, !5911, !5912}
!5910 = !DILocalVariable(name: "ptr", arg: 1, scope: !5906, file: !4684, line: 218, type: !1318)
!5911 = !DILocalVariable(name: "n", arg: 2, scope: !5906, file: !4684, line: 218, type: !313)
!5912 = !DILocalVariable(name: "to_user", arg: 3, scope: !5906, file: !4684, line: 219, type: !875)
!5913 = !DILocation(line: 218, column: 50, scope: !5906)
!5914 = !DILocation(line: 218, column: 69, scope: !5906)
!5915 = !DILocation(line: 219, column: 15, scope: !5906)
!5916 = !DILocation(line: 220, column: 3, scope: !5906)
!5917 = !DISubprogram(name: "__copy_overflow", scope: !4684, file: !4684, line: 228, type: !5892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5918 = !DISubprogram(name: "memdup_user", scope: !5919, file: !5919, line: 15, type: !5920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5919 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!157, !1318, !310}
!5922 = distinct !DISubprogram(name: "IS_ERR", scope: !5923, file: !5923, line: 59, type: !5924, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5926)
!5923 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!875, !1318}
!5926 = !{!5927}
!5927 = !DILocalVariable(name: "ptr", arg: 1, scope: !5922, file: !5923, line: 59, type: !1318)
!5928 = !DILocation(line: 59, column: 60, scope: !5922)
!5929 = !DILocation(line: 61, column: 9, scope: !5922)
!5930 = !DILocation(line: 61, column: 2, scope: !5922)
!5931 = distinct !DISubprogram(name: "PTR_ERR", scope: !5923, file: !5923, line: 49, type: !5932, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5934)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!299, !1318}
!5934 = !{!5935}
!5935 = !DILocalVariable(name: "ptr", arg: 1, scope: !5931, file: !5923, line: 49, type: !1318)
!5936 = !DILocation(line: 49, column: 61, scope: !5931)
!5937 = !DILocation(line: 51, column: 16, scope: !5931)
!5938 = !DILocation(line: 51, column: 9, scope: !5931)
!5939 = !DILocation(line: 51, column: 2, scope: !5931)
!5940 = distinct !DISubprogram(name: "nvram_write", scope: !4795, file: !4795, line: 121, type: !4811, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5941)
!5941 = !{!5942, !5943, !5944}
!5942 = !DILocalVariable(name: "buf", arg: 1, scope: !5940, file: !4795, line: 121, type: !263)
!5943 = !DILocalVariable(name: "count", arg: 2, scope: !5940, file: !4795, line: 121, type: !310)
!5944 = !DILocalVariable(name: "ppos", arg: 3, scope: !5940, file: !4795, line: 121, type: !657)
!5945 = !DILocation(line: 121, column: 41, scope: !5940)
!5946 = !DILocation(line: 121, column: 53, scope: !5940)
!5947 = !DILocation(line: 121, column: 68, scope: !5940)
!5948 = !DILocation(line: 127, column: 21, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5940, file: !4795, line: 127, column: 6)
!5950 = !DILocation(line: 127, column: 6, scope: !5949)
!5951 = !DILocation(line: 127, column: 6, scope: !5940)
!5952 = !DILocation(line: 128, column: 25, scope: !5949)
!5953 = !DILocation(line: 128, column: 31, scope: !5949)
!5954 = !DILocation(line: 128, column: 36, scope: !5949)
!5955 = !DILocation(line: 128, column: 43, scope: !5949)
!5956 = !DILocation(line: 128, column: 10, scope: !5949)
!5957 = !DILocation(line: 128, column: 3, scope: !5949)
!5958 = !DILocation(line: 130, column: 27, scope: !5940)
!5959 = !DILocation(line: 130, column: 32, scope: !5940)
!5960 = !DILocation(line: 130, column: 39, scope: !5940)
!5961 = !DILocation(line: 130, column: 9, scope: !5940)
!5962 = !DILocation(line: 130, column: 2, scope: !5940)
!5963 = !DILocation(line: 131, column: 1, scope: !5940)
!5964 = distinct !DISubprogram(name: "nvram_write_bytes", scope: !4795, file: !4795, line: 95, type: !4811, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5965)
!5965 = !{!5966, !5967, !5968, !5969, !5970, !5971}
!5966 = !DILocalVariable(name: "buf", arg: 1, scope: !5964, file: !4795, line: 95, type: !263)
!5967 = !DILocalVariable(name: "count", arg: 2, scope: !5964, file: !4795, line: 95, type: !310)
!5968 = !DILocalVariable(name: "ppos", arg: 3, scope: !5964, file: !4795, line: 95, type: !657)
!5969 = !DILocalVariable(name: "nvram_size", scope: !5964, file: !4795, line: 97, type: !295)
!5970 = !DILocalVariable(name: "i", scope: !5964, file: !4795, line: 98, type: !504)
!5971 = !DILocalVariable(name: "p", scope: !5964, file: !4795, line: 99, type: !263)
!5972 = !DILocation(line: 95, column: 47, scope: !5964)
!5973 = !DILocation(line: 95, column: 59, scope: !5964)
!5974 = !DILocation(line: 95, column: 74, scope: !5964)
!5975 = !DILocation(line: 97, column: 2, scope: !5964)
!5976 = !DILocation(line: 97, column: 10, scope: !5964)
!5977 = !DILocation(line: 97, column: 23, scope: !5964)
!5978 = !DILocation(line: 98, column: 2, scope: !5964)
!5979 = !DILocation(line: 98, column: 9, scope: !5964)
!5980 = !DILocation(line: 99, column: 2, scope: !5964)
!5981 = !DILocation(line: 99, column: 8, scope: !5964)
!5982 = !DILocation(line: 99, column: 12, scope: !5964)
!5983 = !DILocation(line: 101, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5964, file: !4795, line: 101, column: 6)
!5985 = !DILocation(line: 101, column: 17, scope: !5984)
!5986 = !DILocation(line: 101, column: 6, scope: !5964)
!5987 = !DILocation(line: 102, column: 10, scope: !5984)
!5988 = !DILocation(line: 102, column: 3, scope: !5984)
!5989 = !DILocation(line: 103, column: 12, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5964, file: !4795, line: 103, column: 2)
!5991 = !DILocation(line: 103, column: 11, scope: !5990)
!5992 = !DILocation(line: 103, column: 9, scope: !5990)
!5993 = !DILocation(line: 103, column: 7, scope: !5990)
!5994 = !DILocation(line: 103, column: 18, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5990, file: !4795, line: 103, column: 2)
!5996 = !DILocation(line: 103, column: 24, scope: !5995)
!5997 = !DILocation(line: 103, column: 28, scope: !5995)
!5998 = !DILocation(line: 103, column: 31, scope: !5995)
!5999 = !DILocation(line: 103, column: 35, scope: !5995)
!6000 = !DILocation(line: 103, column: 33, scope: !5995)
!6001 = !DILocation(line: 0, scope: !5995)
!6002 = !DILocation(line: 103, column: 2, scope: !5990)
!6003 = !DILocation(line: 104, column: 21, scope: !5995)
!6004 = !DILocation(line: 104, column: 20, scope: !5995)
!6005 = !DILocation(line: 104, column: 24, scope: !5995)
!6006 = !DILocation(line: 104, column: 3, scope: !5995)
!6007 = !DILocation(line: 103, column: 47, scope: !5995)
!6008 = !DILocation(line: 103, column: 52, scope: !5995)
!6009 = !DILocation(line: 103, column: 57, scope: !5995)
!6010 = !DILocation(line: 103, column: 2, scope: !5995)
!6011 = distinct !{!6011, !6002, !6012, !4927, !4928}
!6012 = !DILocation(line: 104, column: 25, scope: !5990)
!6013 = !DILocation(line: 105, column: 10, scope: !5964)
!6014 = !DILocation(line: 105, column: 3, scope: !5964)
!6015 = !DILocation(line: 105, column: 8, scope: !5964)
!6016 = !DILocation(line: 106, column: 9, scope: !5964)
!6017 = !DILocation(line: 106, column: 13, scope: !5964)
!6018 = !DILocation(line: 106, column: 11, scope: !5964)
!6019 = !DILocation(line: 106, column: 2, scope: !5964)
!6020 = !DILocation(line: 107, column: 1, scope: !5964)
!6021 = distinct !DISubprogram(name: "nvram_write_byte", scope: !4795, file: !4795, line: 70, type: !4807, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6022 = !{!6023, !6024}
!6023 = !DILocalVariable(name: "val", arg: 1, scope: !6021, file: !4795, line: 70, type: !225)
!6024 = !DILocalVariable(name: "addr", arg: 2, scope: !6021, file: !4795, line: 70, type: !109)
!6025 = !DILocation(line: 70, column: 51, scope: !6021)
!6026 = !DILocation(line: 70, column: 60, scope: !6021)
!6027 = !DILocation(line: 76, column: 21, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6021, file: !4795, line: 76, column: 6)
!6029 = !DILocation(line: 76, column: 6, scope: !6028)
!6030 = !DILocation(line: 76, column: 6, scope: !6021)
!6031 = !DILocation(line: 77, column: 18, scope: !6028)
!6032 = !DILocation(line: 77, column: 29, scope: !6028)
!6033 = !DILocation(line: 77, column: 34, scope: !6028)
!6034 = !DILocation(line: 77, column: 3, scope: !6028)
!6035 = !DILocation(line: 79, column: 1, scope: !6021)
!6036 = !DISubprogram(name: "capable", scope: !783, file: !783, line: 148, type: !6037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!875, !109}
!6039 = !DISubprogram(name: "mutex_lock", scope: !629, file: !629, line: 227, type: !6040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{null, !6042}
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!6043 = !DISubprogram(name: "mutex_unlock", scope: !629, file: !629, line: 246, type: !6040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6044 = distinct !DISubprogram(name: "spin_lock", scope: !5085, file: !5085, line: 349, type: !5135, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6045)
!6045 = !{!6046}
!6046 = !DILocalVariable(name: "lock", arg: 1, scope: !6044, file: !5085, line: 349, type: !1500)
!6047 = !DILocation(line: 349, column: 51, scope: !6044)
!6048 = !DILocation(line: 351, column: 2, scope: !6044)
!6049 = !DILocation(line: 352, column: 1, scope: !6044)
!6050 = distinct !DISubprogram(name: "spin_unlock", scope: !5085, file: !5085, line: 389, type: !5135, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6051)
!6051 = !{!6052}
!6052 = !DILocalVariable(name: "lock", arg: 1, scope: !6050, file: !5085, line: 389, type: !1500)
!6053 = !DILocation(line: 389, column: 53, scope: !6050)
!6054 = !DILocation(line: 391, column: 2, scope: !6050)
!6055 = !DILocation(line: 392, column: 1, scope: !6050)
!6056 = !DISubprogram(name: "_raw_spin_lock", scope: !5080, file: !5080, line: 22, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6057 = !DISubprogram(name: "_raw_spin_unlock", scope: !5080, file: !5080, line: 39, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = !DISubprogram(name: "misc_register", scope: !4212, file: !4212, line: 91, type: !6059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!109, !5035}
!6061 = !DISubprogram(name: "_printk", scope: !6062, file: !6062, line: 153, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!109, !182, null}
!6065 = !DISubprogram(name: "proc_create_single_data", scope: !5026, file: !5026, line: 99, type: !6066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{!5029, !182, !305, !5029, !667, !157}
!6068 = distinct !DISubprogram(name: "nvram_proc_read", scope: !3, file: !3, line: 474, type: !668, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6069)
!6069 = !{!6070, !6071, !6072, !6076}
!6070 = !DILocalVariable(name: "seq", arg: 1, scope: !6068, file: !3, line: 474, type: !616)
!6071 = !DILocalVariable(name: "offset", arg: 2, scope: !6068, file: !3, line: 474, type: !157)
!6072 = !DILocalVariable(name: "contents", scope: !6068, file: !3, line: 476, type: !6073)
!6073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 912, elements: !6074)
!6074 = !{!6075}
!6075 = !DISubrange(count: 114)
!6076 = !DILocalVariable(name: "i", scope: !6068, file: !3, line: 477, type: !109)
!6077 = !DILocation(line: 474, column: 45, scope: !6068)
!6078 = !DILocation(line: 474, column: 56, scope: !6068)
!6079 = !DILocation(line: 476, column: 2, scope: !6068)
!6080 = !DILocation(line: 476, column: 16, scope: !6068)
!6081 = !DILocation(line: 477, column: 2, scope: !6068)
!6082 = !DILocation(line: 477, column: 6, scope: !6068)
!6083 = !DILocation(line: 479, column: 2, scope: !6068)
!6084 = !DILocation(line: 480, column: 9, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 480, column: 2)
!6086 = !DILocation(line: 480, column: 7, scope: !6085)
!6087 = !DILocation(line: 480, column: 14, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 480, column: 2)
!6089 = !DILocation(line: 480, column: 16, scope: !6088)
!6090 = !DILocation(line: 480, column: 2, scope: !6085)
!6091 = !DILocation(line: 481, column: 35, scope: !6088)
!6092 = !DILocation(line: 481, column: 17, scope: !6088)
!6093 = !DILocation(line: 481, column: 12, scope: !6088)
!6094 = !DILocation(line: 481, column: 3, scope: !6088)
!6095 = !DILocation(line: 481, column: 15, scope: !6088)
!6096 = !DILocation(line: 480, column: 31, scope: !6088)
!6097 = !DILocation(line: 480, column: 2, scope: !6088)
!6098 = distinct !{!6098, !6090, !6099, !4927, !4928}
!6099 = !DILocation(line: 481, column: 36, scope: !6085)
!6100 = !DILocation(line: 482, column: 2, scope: !6068)
!6101 = !DILocation(line: 484, column: 21, scope: !6068)
!6102 = !DILocation(line: 484, column: 31, scope: !6068)
!6103 = !DILocation(line: 484, column: 36, scope: !6068)
!6104 = !DILocation(line: 484, column: 2, scope: !6068)
!6105 = !DILocation(line: 487, column: 1, scope: !6068)
!6106 = !DILocation(line: 486, column: 2, scope: !6068)
!6107 = distinct !DISubprogram(name: "pc_nvram_proc_read", scope: !3, file: !3, line: 411, type: !6108, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6111)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{null, !6110, !616, !157}
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!6111 = !{!6112, !6113, !6114, !6115, !6116}
!6112 = !DILocalVariable(name: "nvram", arg: 1, scope: !6107, file: !3, line: 411, type: !6110)
!6113 = !DILocalVariable(name: "seq", arg: 2, scope: !6107, file: !3, line: 411, type: !616)
!6114 = !DILocalVariable(name: "offset", arg: 3, scope: !6107, file: !3, line: 412, type: !157)
!6115 = !DILocalVariable(name: "checksum", scope: !6107, file: !3, line: 414, type: !109)
!6116 = !DILocalVariable(name: "type", scope: !6107, file: !3, line: 415, type: !109)
!6117 = !DILocation(line: 411, column: 47, scope: !6107)
!6118 = !DILocation(line: 411, column: 71, scope: !6107)
!6119 = !DILocation(line: 412, column: 17, scope: !6107)
!6120 = !DILocation(line: 414, column: 2, scope: !6107)
!6121 = !DILocation(line: 414, column: 6, scope: !6107)
!6122 = !DILocation(line: 415, column: 2, scope: !6107)
!6123 = !DILocation(line: 415, column: 6, scope: !6107)
!6124 = !DILocation(line: 417, column: 2, scope: !6107)
!6125 = !DILocation(line: 418, column: 13, scope: !6107)
!6126 = !DILocation(line: 418, column: 11, scope: !6107)
!6127 = !DILocation(line: 419, column: 2, scope: !6107)
!6128 = !DILocation(line: 421, column: 13, scope: !6107)
!6129 = !DILocation(line: 421, column: 48, scope: !6107)
!6130 = !DILocation(line: 421, column: 2, scope: !6107)
!6131 = !DILocation(line: 423, column: 13, scope: !6107)
!6132 = !DILocation(line: 424, column: 7, scope: !6107)
!6133 = !DILocation(line: 424, column: 16, scope: !6107)
!6134 = !DILocation(line: 424, column: 6, scope: !6107)
!6135 = !DILocation(line: 424, column: 24, scope: !6107)
!6136 = !DILocation(line: 424, column: 33, scope: !6107)
!6137 = !DILocation(line: 424, column: 39, scope: !6107)
!6138 = !DILocation(line: 423, column: 2, scope: !6107)
!6139 = !DILocation(line: 425, column: 13, scope: !6107)
!6140 = !DILocation(line: 425, column: 2, scope: !6107)
!6141 = !DILocation(line: 426, column: 9, scope: !6107)
!6142 = !DILocation(line: 426, column: 18, scope: !6107)
!6143 = !DILocation(line: 426, column: 7, scope: !6107)
!6144 = !DILocation(line: 427, column: 6, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 427, column: 6)
!6146 = !DILocation(line: 427, column: 11, scope: !6145)
!6147 = !DILocation(line: 427, column: 6, scope: !6107)
!6148 = !DILocation(line: 428, column: 14, scope: !6145)
!6149 = !DILocation(line: 428, column: 40, scope: !6145)
!6150 = !DILocation(line: 428, column: 27, scope: !6145)
!6151 = !DILocation(line: 428, column: 3, scope: !6145)
!6152 = !DILocation(line: 430, column: 14, scope: !6145)
!6153 = !DILocation(line: 430, column: 37, scope: !6145)
!6154 = !DILocation(line: 430, column: 3, scope: !6145)
!6155 = !DILocation(line: 431, column: 13, scope: !6107)
!6156 = !DILocation(line: 431, column: 2, scope: !6107)
!6157 = !DILocation(line: 432, column: 9, scope: !6107)
!6158 = !DILocation(line: 432, column: 18, scope: !6107)
!6159 = !DILocation(line: 432, column: 7, scope: !6107)
!6160 = !DILocation(line: 433, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 433, column: 6)
!6162 = !DILocation(line: 433, column: 11, scope: !6161)
!6163 = !DILocation(line: 433, column: 6, scope: !6107)
!6164 = !DILocation(line: 434, column: 14, scope: !6161)
!6165 = !DILocation(line: 434, column: 40, scope: !6161)
!6166 = !DILocation(line: 434, column: 27, scope: !6161)
!6167 = !DILocation(line: 434, column: 3, scope: !6161)
!6168 = !DILocation(line: 436, column: 14, scope: !6161)
!6169 = !DILocation(line: 436, column: 37, scope: !6161)
!6170 = !DILocation(line: 436, column: 3, scope: !6161)
!6171 = !DILocation(line: 438, column: 13, scope: !6107)
!6172 = !DILocation(line: 438, column: 2, scope: !6107)
!6173 = !DILocation(line: 439, column: 9, scope: !6107)
!6174 = !DILocation(line: 439, column: 18, scope: !6107)
!6175 = !DILocation(line: 439, column: 7, scope: !6107)
!6176 = !DILocation(line: 440, column: 6, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 440, column: 6)
!6178 = !DILocation(line: 440, column: 6, scope: !6107)
!6179 = !DILocation(line: 441, column: 14, scope: !6177)
!6180 = !DILocation(line: 441, column: 29, scope: !6177)
!6181 = !DILocation(line: 441, column: 34, scope: !6177)
!6182 = !DILocation(line: 441, column: 44, scope: !6177)
!6183 = !DILocation(line: 441, column: 56, scope: !6177)
!6184 = !DILocation(line: 441, column: 3, scope: !6177)
!6185 = !DILocation(line: 443, column: 14, scope: !6177)
!6186 = !DILocation(line: 443, column: 3, scope: !6177)
!6187 = !DILocation(line: 445, column: 13, scope: !6107)
!6188 = !DILocation(line: 445, column: 2, scope: !6107)
!6189 = !DILocation(line: 446, column: 9, scope: !6107)
!6190 = !DILocation(line: 446, column: 18, scope: !6107)
!6191 = !DILocation(line: 446, column: 7, scope: !6107)
!6192 = !DILocation(line: 447, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 447, column: 6)
!6194 = !DILocation(line: 447, column: 6, scope: !6107)
!6195 = !DILocation(line: 448, column: 14, scope: !6193)
!6196 = !DILocation(line: 448, column: 29, scope: !6193)
!6197 = !DILocation(line: 448, column: 34, scope: !6193)
!6198 = !DILocation(line: 448, column: 44, scope: !6193)
!6199 = !DILocation(line: 448, column: 56, scope: !6193)
!6200 = !DILocation(line: 448, column: 3, scope: !6193)
!6201 = !DILocation(line: 450, column: 14, scope: !6193)
!6202 = !DILocation(line: 450, column: 3, scope: !6193)
!6203 = !DILocation(line: 452, column: 13, scope: !6107)
!6204 = !DILocation(line: 453, column: 6, scope: !6107)
!6205 = !DILocation(line: 453, column: 19, scope: !6107)
!6206 = !DILocation(line: 453, column: 29, scope: !6107)
!6207 = !DILocation(line: 453, column: 16, scope: !6107)
!6208 = !DILocation(line: 454, column: 6, scope: !6107)
!6209 = !DILocation(line: 454, column: 17, scope: !6107)
!6210 = !DILocation(line: 455, column: 6, scope: !6107)
!6211 = !DILocation(line: 455, column: 19, scope: !6107)
!6212 = !DILocation(line: 455, column: 29, scope: !6107)
!6213 = !DILocation(line: 455, column: 16, scope: !6107)
!6214 = !DILocation(line: 455, column: 36, scope: !6107)
!6215 = !DILocation(line: 455, column: 49, scope: !6107)
!6216 = !DILocation(line: 455, column: 59, scope: !6107)
!6217 = !DILocation(line: 455, column: 46, scope: !6107)
!6218 = !DILocation(line: 452, column: 2, scope: !6107)
!6219 = !DILocation(line: 456, column: 13, scope: !6107)
!6220 = !DILocation(line: 457, column: 6, scope: !6107)
!6221 = !DILocation(line: 457, column: 19, scope: !6107)
!6222 = !DILocation(line: 457, column: 29, scope: !6107)
!6223 = !DILocation(line: 457, column: 16, scope: !6107)
!6224 = !DILocation(line: 458, column: 6, scope: !6107)
!6225 = !DILocation(line: 458, column: 17, scope: !6107)
!6226 = !DILocation(line: 459, column: 6, scope: !6107)
!6227 = !DILocation(line: 459, column: 19, scope: !6107)
!6228 = !DILocation(line: 459, column: 29, scope: !6107)
!6229 = !DILocation(line: 459, column: 16, scope: !6107)
!6230 = !DILocation(line: 459, column: 36, scope: !6107)
!6231 = !DILocation(line: 459, column: 49, scope: !6107)
!6232 = !DILocation(line: 459, column: 59, scope: !6107)
!6233 = !DILocation(line: 459, column: 46, scope: !6107)
!6234 = !DILocation(line: 456, column: 2, scope: !6107)
!6235 = !DILocation(line: 461, column: 13, scope: !6107)
!6236 = !DILocation(line: 461, column: 46, scope: !6107)
!6237 = !DILocation(line: 461, column: 58, scope: !6107)
!6238 = !DILocation(line: 461, column: 67, scope: !6107)
!6239 = !DILocation(line: 461, column: 55, scope: !6107)
!6240 = !DILocation(line: 461, column: 2, scope: !6107)
!6241 = !DILocation(line: 462, column: 13, scope: !6107)
!6242 = !DILocation(line: 463, column: 6, scope: !6107)
!6243 = !DILocation(line: 463, column: 18, scope: !6107)
!6244 = !DILocation(line: 463, column: 28, scope: !6107)
!6245 = !DILocation(line: 463, column: 15, scope: !6107)
!6246 = !DILocation(line: 463, column: 35, scope: !6107)
!6247 = !DILocation(line: 463, column: 48, scope: !6107)
!6248 = !DILocation(line: 463, column: 58, scope: !6107)
!6249 = !DILocation(line: 463, column: 45, scope: !6107)
!6250 = !DILocation(line: 462, column: 2, scope: !6107)
!6251 = !DILocation(line: 465, column: 13, scope: !6107)
!6252 = !DILocation(line: 466, column: 17, scope: !6107)
!6253 = !DILocation(line: 466, column: 26, scope: !6107)
!6254 = !DILocation(line: 466, column: 32, scope: !6107)
!6255 = !DILocation(line: 466, column: 6, scope: !6107)
!6256 = !DILocation(line: 465, column: 2, scope: !6107)
!6257 = !DILocation(line: 468, column: 13, scope: !6107)
!6258 = !DILocation(line: 469, column: 7, scope: !6107)
!6259 = !DILocation(line: 469, column: 16, scope: !6107)
!6260 = !DILocation(line: 469, column: 6, scope: !6107)
!6261 = !DILocation(line: 468, column: 2, scope: !6107)
!6262 = !DILocation(line: 472, column: 1, scope: !6107)
!6263 = !DISubprogram(name: "seq_printf", scope: !618, file: !618, line: 119, type: !6264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{null, !616, !182, null}
