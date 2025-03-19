; ModuleID = 'drivers/usb/mon/mon_main.c'
source_filename = "drivers/usb/mon/mon_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_usbmon__271_432_mon_init\22, \22a\22\09\09"
module asm "__initcall__kmod_usbmon__271_432_mon_init6:\09\09\09"
module asm ".long\09__initstub__kmod_usbmon__271_432_mon_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mon_bus = type { %struct.list_head, %struct.spinlock, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.kref, i32, i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_mon_operations = type { ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.mon_reader = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@mon_lock = hidden global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mon_lock, i64 16), ptr getelementptr (i8, ptr @mon_lock, i64 16) } }, align 8, !dbg !0
@mon_bus0 = hidden global %struct.mon_bus zeroinitializer, align 8, !dbg !4750
@mon_buses = internal global %struct.list_head { ptr @mon_buses, ptr @mon_buses }, align 8, !dbg !4752
@mon_nb = internal global %struct.notifier_block { ptr @mon_notify, ptr null, i32 0 }, align 8, !dbg !4754
@.str = private unnamed_addr constant [55 x i8] c"\013usbmon: Outstanding opens (%d) on usb%d, leaking...\0A\00", align 1, !dbg !4729
@__UNIQUE_ID___addressable___initstub__kmod_usbmon__271_432_mon_init6272 = internal global ptr @__initstub__kmod_usbmon__271_432_mon_init6, section ".discard.addressable", align 8, !dbg !4734
@__exitcall_mon_exit = internal global ptr @mon_exit, section ".exitcall.exit", align 8, !dbg !4736
@__UNIQUE_ID_file273 = internal constant [35 x i8] c"usbmon.file=drivers/usb/mon/usbmon\00", section ".modinfo", align 1, !dbg !4740
@__UNIQUE_ID_license274 = internal constant [19 x i8] c"usbmon.license=GPL\00", section ".modinfo", align 1, !dbg !4745
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4767
@mon_ops_0 = internal constant %struct.usb_mon_operations { ptr @mon_submit, ptr @mon_submit_error, ptr @mon_complete }, align 8, !dbg !4777
@.str.2 = private unnamed_addr constant [44 x i8] c"\015usbmon: unable to register with the core\0A\00", align 1, !dbg !4772
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 8
@usb_bus_idr = external dso_local global %struct.idr, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @mon_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_usbmon__271_432_mon_init6272, ptr @__exitcall_mon_exit, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mon_reader_add(ptr noundef %mbus, ptr noundef %r) #0 align 16 !dbg !4800 {
entry:
  %mbus.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %p = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %m1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !4804, metadata !DIExpression()), !dbg !4823
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4805, metadata !DIExpression()), !dbg !4824
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4806, metadata !DIExpression()), !dbg !4826
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4827
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4807, metadata !DIExpression()), !dbg !4828
  br label %do.body, !dbg !4829

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4830

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4831
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4808, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4831
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4812, metadata !DIExpression()), !dbg !4831
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4831
  %conv = zext i1 %cmp to i32, !dbg !4831
  store i32 1, ptr %tmp, align 4, !dbg !4831
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4832
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4832
  %0 = load i32, ptr %tmp, align 4, !dbg !4831
  %1 = load ptr, ptr %mbus.addr, align 8, !dbg !4832
  %lock = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1, !dbg !4832
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4832
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4832
  store i64 %call2, ptr %flags, align 8, !dbg !4832
  br label %do.cond, !dbg !4832

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4832

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4830

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4830

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %mbus.addr, align 8, !dbg !4833
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 9, !dbg !4834
  %3 = load i32, ptr %nreaders, align 8, !dbg !4834
  %cmp5 = icmp eq i32 %3, 0, !dbg !4835
  br i1 %cmp5, label %if.then, label %if.end14, !dbg !4836

if.then:                                          ; preds = %do.end4
  %4 = load ptr, ptr %mbus.addr, align 8, !dbg !4837
  %cmp7 = icmp eq ptr %4, @mon_bus0, !dbg !4838
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !4839

if.then9:                                         ; preds = %if.then
  %5 = load ptr, ptr @mon_buses, align 8, !dbg !4840
  store ptr %5, ptr %p, align 8, !dbg !4840
  br label %for.cond, !dbg !4840

for.cond:                                         ; preds = %for.inc, %if.then9
  %6 = load ptr, ptr %p, align 8, !dbg !4841
  %call10 = call i32 @list_is_head(ptr noundef %6, ptr noundef @mon_buses) #17, !dbg !4841
  %tobool = icmp ne i32 %call10, 0, !dbg !4841
  %lnot = xor i1 %tobool, true, !dbg !4841
  br i1 %lnot, label %for.body, label %for.end, !dbg !4840

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %m1) #16, !dbg !4842
  call void @llvm.dbg.declare(metadata ptr %m1, metadata !4813, metadata !DIExpression()), !dbg !4843
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4821, metadata !DIExpression()), !dbg !4844
  %7 = load ptr, ptr %p, align 8, !dbg !4844
  store ptr %7, ptr %__mptr, align 8, !dbg !4844
  %8 = load ptr, ptr %__mptr, align 8, !dbg !4844
  %add.ptr = getelementptr i8, ptr %8, i64 0, !dbg !4844
  store ptr %add.ptr, ptr %tmp11, align 8, !dbg !4844
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4845
  %9 = load ptr, ptr %tmp11, align 8, !dbg !4844
  store ptr %9, ptr %m1, align 8, !dbg !4846
  %10 = load ptr, ptr %m1, align 8, !dbg !4847
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %10, i32 0, i32 2, !dbg !4848
  %11 = load ptr, ptr %u_bus, align 8, !dbg !4848
  %monitored = getelementptr inbounds %struct.usb_bus, ptr %11, i32 0, i32 18, !dbg !4849
  store i32 1, ptr %monitored, align 8, !dbg !4850
  call void @llvm.lifetime.end.p0(i64 8, ptr %m1) #16, !dbg !4851
  br label %for.inc, !dbg !4852

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %p, align 8, !dbg !4841
  %next = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !4841
  %13 = load ptr, ptr %next, align 8, !dbg !4841
  store ptr %13, ptr %p, align 8, !dbg !4841
  br label %for.cond, !dbg !4841, !llvm.loop !4853

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !4857

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %mbus.addr, align 8, !dbg !4858
  %u_bus12 = getelementptr inbounds %struct.mon_bus, ptr %14, i32 0, i32 2, !dbg !4860
  %15 = load ptr, ptr %u_bus12, align 8, !dbg !4860
  %monitored13 = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 18, !dbg !4861
  store i32 1, ptr %monitored13, align 8, !dbg !4862
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end14, !dbg !4863

if.end14:                                         ; preds = %if.end, %do.end4
  %16 = load ptr, ptr %mbus.addr, align 8, !dbg !4864
  %nreaders15 = getelementptr inbounds %struct.mon_bus, ptr %16, i32 0, i32 9, !dbg !4865
  %17 = load i32, ptr %nreaders15, align 8, !dbg !4866
  %inc = add i32 %17, 1, !dbg !4866
  store i32 %inc, ptr %nreaders15, align 8, !dbg !4866
  %18 = load ptr, ptr %r.addr, align 8, !dbg !4867
  %r_link = getelementptr inbounds %struct.mon_reader, ptr %18, i32 0, i32 0, !dbg !4868
  %19 = load ptr, ptr %mbus.addr, align 8, !dbg !4869
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %19, i32 0, i32 10, !dbg !4870
  call void @list_add_tail(ptr noundef %r_link, ptr noundef %r_list) #17, !dbg !4871
  %20 = load ptr, ptr %mbus.addr, align 8, !dbg !4872
  %lock16 = getelementptr inbounds %struct.mon_bus, ptr %20, i32 0, i32 1, !dbg !4873
  %21 = load i64, ptr %flags, align 8, !dbg !4874
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %21) #17, !dbg !4875
  %22 = load ptr, ptr %mbus.addr, align 8, !dbg !4876
  %ref = getelementptr inbounds %struct.mon_bus, ptr %22, i32 0, i32 11, !dbg !4877
  call void @kref_get(ptr noundef %ref) #17, !dbg !4878
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4879
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4879
  ret void, !dbg !4879
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4880 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !4885 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4893
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4894
  ret ptr %1, !dbg !4895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #5 align 16 !dbg !4896 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4903, metadata !DIExpression()), !dbg !4905
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4904, metadata !DIExpression()), !dbg !4906
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4907
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4908
  %cmp = icmp eq ptr %0, %1, !dbg !4909
  %conv = zext i1 %cmp to i32, !dbg !4909
  ret i32 %conv, !dbg !4910
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4911 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4915, metadata !DIExpression()), !dbg !4917
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4916, metadata !DIExpression()), !dbg !4918
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4919
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4920
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4921
  %2 = load ptr, ptr %prev, align 8, !dbg !4921
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4922
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !4923
  ret void, !dbg !4924
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !4925 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4929, metadata !DIExpression()), !dbg !4935
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4930, metadata !DIExpression()), !dbg !4936
  br label %do.body, !dbg !4937

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4938
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4931, metadata !DIExpression()), !dbg !4938
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4938
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4934, metadata !DIExpression()), !dbg !4938
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4938
  %conv = zext i1 %cmp to i32, !dbg !4938
  store i32 1, ptr %tmp, align 4, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4939
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4939
  %0 = load i32, ptr %tmp, align 4, !dbg !4938
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4939
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4939
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4939
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !4939
  br label %do.end, !dbg !4939

do.end:                                           ; preds = %do.body
  ret void, !dbg !4940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #5 align 16 !dbg !4941 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4948
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4949
  call void @refcount_inc(ptr noundef %refcount) #17, !dbg !4950
  ret void, !dbg !4951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mon_reader_del(ptr noundef %mbus, ptr noundef %r) #0 align 16 !dbg !4952 {
entry:
  %mbus.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !4954, metadata !DIExpression()), !dbg !4962
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4955, metadata !DIExpression()), !dbg !4963
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4964
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4956, metadata !DIExpression()), !dbg !4965
  br label %do.body, !dbg !4966

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4967

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4957, metadata !DIExpression()), !dbg !4968
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4961, metadata !DIExpression()), !dbg !4968
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4968
  %conv = zext i1 %cmp to i32, !dbg !4968
  store i32 1, ptr %tmp, align 4, !dbg !4968
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4969
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4969
  %0 = load i32, ptr %tmp, align 4, !dbg !4968
  %1 = load ptr, ptr %mbus.addr, align 8, !dbg !4969
  %lock = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1, !dbg !4969
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4969
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4969
  store i64 %call2, ptr %flags, align 8, !dbg !4969
  br label %do.cond, !dbg !4969

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4969

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4967

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4967

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %r.addr, align 8, !dbg !4970
  %r_link = getelementptr inbounds %struct.mon_reader, ptr %2, i32 0, i32 0, !dbg !4971
  call void @list_del(ptr noundef %r_link) #17, !dbg !4972
  %3 = load ptr, ptr %mbus.addr, align 8, !dbg !4973
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %3, i32 0, i32 9, !dbg !4974
  %4 = load i32, ptr %nreaders, align 8, !dbg !4975
  %dec = add i32 %4, -1, !dbg !4975
  store i32 %dec, ptr %nreaders, align 8, !dbg !4975
  %5 = load ptr, ptr %mbus.addr, align 8, !dbg !4976
  %nreaders5 = getelementptr inbounds %struct.mon_bus, ptr %5, i32 0, i32 9, !dbg !4978
  %6 = load i32, ptr %nreaders5, align 8, !dbg !4978
  %cmp6 = icmp eq i32 %6, 0, !dbg !4979
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4980

if.then:                                          ; preds = %do.end4
  %7 = load ptr, ptr %mbus.addr, align 8, !dbg !4981
  call void @mon_stop(ptr noundef %7) #17, !dbg !4982
  br label %if.end, !dbg !4982

if.end:                                           ; preds = %if.then, %do.end4
  %8 = load ptr, ptr %mbus.addr, align 8, !dbg !4983
  %lock8 = getelementptr inbounds %struct.mon_bus, ptr %8, i32 0, i32 1, !dbg !4984
  %9 = load i64, ptr %flags, align 8, !dbg !4985
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %9) #17, !dbg !4986
  %10 = load ptr, ptr %mbus.addr, align 8, !dbg !4987
  %ref = getelementptr inbounds %struct.mon_bus, ptr %10, i32 0, i32 11, !dbg !4988
  %call9 = call i32 @kref_put(ptr noundef %ref, ptr noundef @mon_bus_drop) #17, !dbg !4989
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4990
  ret void, !dbg !4990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !4991 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4997
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !4998
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4999
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5000
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5001
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5002
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5003
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5004
  ret void, !dbg !5005
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_stop(ptr noundef %mbus) #0 align 16 !dbg !5006 {
entry:
  %mbus.addr = alloca ptr, align 8
  %ubus = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !5010, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 8, ptr %ubus) #16, !dbg !5021
  call void @llvm.dbg.declare(metadata ptr %ubus, metadata !5011, metadata !DIExpression()), !dbg !5022
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5012, metadata !DIExpression()), !dbg !5024
  %0 = load ptr, ptr %mbus.addr, align 8, !dbg !5025
  %cmp = icmp eq ptr %0, @mon_bus0, !dbg !5026
  br i1 %cmp, label %if.then, label %if.else, !dbg !5027

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @mon_buses, align 8, !dbg !5028
  store ptr %1, ptr %p, align 8, !dbg !5028
  br label %for.cond, !dbg !5028

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load ptr, ptr %p, align 8, !dbg !5029
  %call = call i32 @list_is_head(ptr noundef %2, ptr noundef @mon_buses) #17, !dbg !5029
  %tobool = icmp ne i32 %call, 0, !dbg !5029
  %lnot = xor i1 %tobool, true, !dbg !5029
  br i1 %lnot, label %for.body, label %for.end, !dbg !5028

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5013, metadata !DIExpression()), !dbg !5030
  %3 = load ptr, ptr %p, align 8, !dbg !5030
  store ptr %3, ptr %__mptr, align 8, !dbg !5030
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5030
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !5030
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5031
  %5 = load ptr, ptr %tmp, align 8, !dbg !5030
  store ptr %5, ptr %mbus.addr, align 8, !dbg !5032
  %6 = load ptr, ptr %mbus.addr, align 8, !dbg !5033
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %6, i32 0, i32 9, !dbg !5035
  %7 = load i32, ptr %nreaders, align 8, !dbg !5035
  %cmp1 = icmp eq i32 %7, 0, !dbg !5036
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !5037

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %mbus.addr, align 8, !dbg !5038
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %8, i32 0, i32 2, !dbg !5039
  %9 = load ptr, ptr %u_bus, align 8, !dbg !5039
  store ptr %9, ptr %ubus, align 8, !dbg !5040
  %cmp2 = icmp ne ptr %9, null, !dbg !5041
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5042

if.then3:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %ubus, align 8, !dbg !5043
  %monitored = getelementptr inbounds %struct.usb_bus, ptr %10, i32 0, i32 18, !dbg !5044
  store i32 0, ptr %monitored, align 8, !dbg !5045
  br label %if.end, !dbg !5043

if.end:                                           ; preds = %if.then3, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5046

for.inc:                                          ; preds = %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !5029
  %next = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !5029
  %12 = load ptr, ptr %next, align 8, !dbg !5029
  store ptr %12, ptr %p, align 8, !dbg !5029
  br label %for.cond, !dbg !5029, !llvm.loop !5047

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !5049

if.else:                                          ; preds = %entry
  %13 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 9), align 8, !dbg !5050
  %cmp4 = icmp eq i32 %13, 0, !dbg !5053
  br i1 %cmp4, label %land.lhs.true5, label %if.end13, !dbg !5054

land.lhs.true5:                                   ; preds = %if.else
  %14 = load ptr, ptr %mbus.addr, align 8, !dbg !5055
  %u_bus6 = getelementptr inbounds %struct.mon_bus, ptr %14, i32 0, i32 2, !dbg !5056
  %15 = load ptr, ptr %u_bus6, align 8, !dbg !5056
  store ptr %15, ptr %ubus, align 8, !dbg !5057
  %cmp7 = icmp ne ptr %15, null, !dbg !5058
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !5059

if.then8:                                         ; preds = %land.lhs.true5
  %16 = load ptr, ptr %ubus, align 8, !dbg !5060
  %monitored9 = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 18, !dbg !5062
  store i32 0, ptr %monitored9, align 8, !dbg !5063
  br label %do.body, !dbg !5064

do.body:                                          ; preds = %if.then8
  br label %do.body10, !dbg !5065

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5067

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5067

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5065, !srcloc !5069
  br label %do.cond11, !dbg !5065

do.cond11:                                        ; preds = %do.end
  br label %do.end12, !dbg !5065

do.end12:                                         ; preds = %do.cond11
  br label %if.end13, !dbg !5070

if.end13:                                         ; preds = %do.end12, %land.lhs.true5, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 8, ptr %ubus) #16, !dbg !5071
  ret void, !dbg !5071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #5 align 16 !dbg !5072 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5077, metadata !DIExpression()), !dbg !5079
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5081
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5083
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #17, !dbg !5084
  br i1 %call, label %if.then, label %if.end, !dbg !5085

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !5086
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !5088
  call void %1(ptr noundef %2) #17, !dbg !5086
  store i32 1, ptr %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5090
  br label %return, !dbg !5090

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5091
  ret i32 %3, !dbg !5091
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_drop(ptr noundef %r) #0 align 16 !dbg !5092 {
entry:
  %r.addr = alloca ptr, align 8
  %mbus = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5094, metadata !DIExpression()), !dbg !5098
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !5095, metadata !DIExpression()), !dbg !5100
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5101
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5096, metadata !DIExpression()), !dbg !5101
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5101
  store ptr %0, ptr %__mptr, align 8, !dbg !5101
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5101
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !5101
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5102
  %2 = load ptr, ptr %tmp, align 8, !dbg !5101
  store ptr %2, ptr %mbus, align 8, !dbg !5100
  %3 = load ptr, ptr %mbus, align 8, !dbg !5103
  call void @kfree(ptr noundef %3) #17, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !5105
  ret void, !dbg !5105
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mon_bus_lookup(i32 noundef %num) #0 align 16 !dbg !5106 {
entry:
  %retval = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %mbus = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5110, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5111, metadata !DIExpression()), !dbg !5120
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !5112, metadata !DIExpression()), !dbg !5122
  %0 = load i32, ptr %num.addr, align 4, !dbg !5123
  %cmp = icmp eq i32 %0, 0, !dbg !5125
  br i1 %cmp, label %if.then, label %if.end, !dbg !5126

if.then:                                          ; preds = %entry
  store ptr @mon_bus0, ptr %retval, align 8, !dbg !5127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5127

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mon_buses, align 8, !dbg !5129
  store ptr %1, ptr %p, align 8, !dbg !5129
  br label %for.cond, !dbg !5129

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %p, align 8, !dbg !5130
  %call = call i32 @list_is_head(ptr noundef %2, ptr noundef @mon_buses) #17, !dbg !5130
  %tobool = icmp ne i32 %call, 0, !dbg !5130
  %lnot = xor i1 %tobool, true, !dbg !5130
  br i1 %lnot, label %for.body, label %for.end, !dbg !5129

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5131
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5113, metadata !DIExpression()), !dbg !5131
  %3 = load ptr, ptr %p, align 8, !dbg !5131
  store ptr %3, ptr %__mptr, align 8, !dbg !5131
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5131
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !5131
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5131
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5132
  %5 = load ptr, ptr %tmp, align 8, !dbg !5131
  store ptr %5, ptr %mbus, align 8, !dbg !5133
  %6 = load ptr, ptr %mbus, align 8, !dbg !5134
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %6, i32 0, i32 2, !dbg !5136
  %7 = load ptr, ptr %u_bus, align 8, !dbg !5136
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 2, !dbg !5137
  %8 = load i32, ptr %busnum, align 8, !dbg !5137
  %9 = load i32, ptr %num.addr, align 4, !dbg !5138
  %cmp1 = icmp eq i32 %8, %9, !dbg !5139
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5140

if.then2:                                         ; preds = %for.body
  %10 = load ptr, ptr %mbus, align 8, !dbg !5141
  store ptr %10, ptr %retval, align 8, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

if.end3:                                          ; preds = %for.body
  br label %for.inc, !dbg !5144

for.inc:                                          ; preds = %if.end3
  %11 = load ptr, ptr %p, align 8, !dbg !5130
  %next = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !5130
  %12 = load ptr, ptr %next, align 8, !dbg !5130
  store ptr %12, ptr %p, align 8, !dbg !5130
  br label %for.cond, !dbg !5130, !llvm.loop !5145

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5147

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !5148
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5148
  %13 = load ptr, ptr %retval, align 8, !dbg !5148
  ret ptr %13, !dbg !5148
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @mon_exit() #6 section ".exit.text" align 16 !dbg !5149 {
entry:
  %mbus = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !5156
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !5151, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5152, metadata !DIExpression()), !dbg !5159
  call void @usb_unregister_notify(ptr noundef @mon_nb) #17, !dbg !5160
  call void @usb_mon_deregister() #17, !dbg !5161
  call void @mutex_lock(ptr noundef @mon_lock) #17, !dbg !5162
  br label %while.cond, !dbg !5163

while.cond:                                       ; preds = %if.end10, %entry
  %call = call i32 @list_empty(ptr noundef @mon_buses) #17, !dbg !5164
  %tobool = icmp ne i32 %call, 0, !dbg !5165
  %lnot = xor i1 %tobool, true, !dbg !5165
  br i1 %lnot, label %while.body, label %while.end, !dbg !5163

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr @mon_buses, align 8, !dbg !5166
  store ptr %0, ptr %p, align 8, !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5153, metadata !DIExpression()), !dbg !5168
  %1 = load ptr, ptr %p, align 8, !dbg !5168
  store ptr %1, ptr %__mptr, align 8, !dbg !5168
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5168
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5168
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5168
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5169
  %3 = load ptr, ptr %tmp, align 8, !dbg !5168
  store ptr %3, ptr %mbus, align 8, !dbg !5170
  %4 = load ptr, ptr %p, align 8, !dbg !5171
  call void @list_del(ptr noundef %4) #17, !dbg !5172
  %5 = load ptr, ptr %mbus, align 8, !dbg !5173
  %text_inited = getelementptr inbounds %struct.mon_bus, ptr %5, i32 0, i32 3, !dbg !5175
  %6 = load i32, ptr %text_inited, align 8, !dbg !5175
  %tobool1 = icmp ne i32 %6, 0, !dbg !5173
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5176

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %mbus, align 8, !dbg !5177
  call void @mon_text_del(ptr noundef %7) #17, !dbg !5178
  br label %if.end, !dbg !5178

if.end:                                           ; preds = %if.then, %while.body
  %8 = load ptr, ptr %mbus, align 8, !dbg !5179
  %bin_inited = getelementptr inbounds %struct.mon_bus, ptr %8, i32 0, i32 4, !dbg !5181
  %9 = load i32, ptr %bin_inited, align 4, !dbg !5181
  %tobool2 = icmp ne i32 %9, 0, !dbg !5179
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5182

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %mbus, align 8, !dbg !5183
  call void @mon_bin_del(ptr noundef %10) #17, !dbg !5184
  br label %if.end4, !dbg !5184

if.end4:                                          ; preds = %if.then3, %if.end
  %11 = load ptr, ptr %mbus, align 8, !dbg !5185
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %11, i32 0, i32 9, !dbg !5187
  %12 = load i32, ptr %nreaders, align 8, !dbg !5187
  %tobool5 = icmp ne i32 %12, 0, !dbg !5185
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !5188

if.then6:                                         ; preds = %if.end4
  br label %do.body, !dbg !5189

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !5192

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5192

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %mbus, align 8, !dbg !5189
  %nreaders8 = getelementptr inbounds %struct.mon_bus, ptr %13, i32 0, i32 9, !dbg !5189
  %14 = load i32, ptr %nreaders8, align 8, !dbg !5189
  %15 = load ptr, ptr %mbus, align 8, !dbg !5189
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %15, i32 0, i32 2, !dbg !5189
  %16 = load ptr, ptr %u_bus, align 8, !dbg !5189
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 2, !dbg !5189
  %17 = load i32, ptr %busnum, align 8, !dbg !5189
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %14, i32 noundef %17) #18, !dbg !5189
  store i32 %call9, ptr %tmp7, align 4, !dbg !5192
  %18 = load i32, ptr %tmp7, align 4, !dbg !5189
  %19 = load ptr, ptr %mbus, align 8, !dbg !5194
  %ref = getelementptr inbounds %struct.mon_bus, ptr %19, i32 0, i32 11, !dbg !5195
  call void @kref_get(ptr noundef %ref) #17, !dbg !5196
  br label %if.end10, !dbg !5197

if.end10:                                         ; preds = %do.end, %if.end4
  %20 = load ptr, ptr %mbus, align 8, !dbg !5198
  %21 = load ptr, ptr %mbus, align 8, !dbg !5199
  %u_bus11 = getelementptr inbounds %struct.mon_bus, ptr %21, i32 0, i32 2, !dbg !5200
  %22 = load ptr, ptr %u_bus11, align 8, !dbg !5200
  call void @mon_dissolve(ptr noundef %20, ptr noundef %22) #17, !dbg !5201
  %23 = load ptr, ptr %mbus, align 8, !dbg !5202
  %ref12 = getelementptr inbounds %struct.mon_bus, ptr %23, i32 0, i32 11, !dbg !5203
  %call13 = call i32 @kref_put(ptr noundef %ref12, ptr noundef @mon_bus_drop) #17, !dbg !5204
  br label %while.cond, !dbg !5163, !llvm.loop !5205

while.end:                                        ; preds = %while.cond
  store ptr @mon_bus0, ptr %mbus, align 8, !dbg !5207
  %24 = load ptr, ptr %mbus, align 8, !dbg !5208
  %text_inited14 = getelementptr inbounds %struct.mon_bus, ptr %24, i32 0, i32 3, !dbg !5210
  %25 = load i32, ptr %text_inited14, align 8, !dbg !5210
  %tobool15 = icmp ne i32 %25, 0, !dbg !5208
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5211

if.then16:                                        ; preds = %while.end
  %26 = load ptr, ptr %mbus, align 8, !dbg !5212
  call void @mon_text_del(ptr noundef %26) #17, !dbg !5213
  br label %if.end17, !dbg !5213

if.end17:                                         ; preds = %if.then16, %while.end
  %27 = load ptr, ptr %mbus, align 8, !dbg !5214
  %bin_inited18 = getelementptr inbounds %struct.mon_bus, ptr %27, i32 0, i32 4, !dbg !5216
  %28 = load i32, ptr %bin_inited18, align 4, !dbg !5216
  %tobool19 = icmp ne i32 %28, 0, !dbg !5214
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5217

if.then20:                                        ; preds = %if.end17
  %29 = load ptr, ptr %mbus, align 8, !dbg !5218
  call void @mon_bin_del(ptr noundef %29) #17, !dbg !5219
  br label %if.end21, !dbg !5219

if.end21:                                         ; preds = %if.then20, %if.end17
  call void @mutex_unlock(ptr noundef @mon_lock) #17, !dbg !5220
  call void @mon_text_exit() #17, !dbg !5221
  call void @mon_bin_exit() #17, !dbg !5222
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5223
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !5223
  ret void, !dbg !5223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5224 dso_local void @usb_unregister_notify(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5227 dso_local void @usb_mon_deregister() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5228 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !5232 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  br label %do.body, !dbg !5238

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5240

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5238
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5238
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5238
  store ptr %1, ptr %tmp, align 8, !dbg !5240
  %2 = load ptr, ptr %tmp, align 8, !dbg !5238
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5242
  %cmp = icmp eq ptr %2, %3, !dbg !5243
  %conv = zext i1 %cmp to i32, !dbg !5243
  ret i32 %conv, !dbg !5244
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5245 dso_local void @mon_text_del(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5246 dso_local void @mon_bin_del(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5247 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_dissolve(ptr noundef %mbus, ptr noundef %ubus) #0 align 16 !dbg !5251 {
entry:
  %mbus.addr = alloca ptr, align 8
  %ubus.addr = alloca ptr, align 8
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !5255, metadata !DIExpression()), !dbg !5257
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !5256, metadata !DIExpression()), !dbg !5258
  %0 = load ptr, ptr %ubus.addr, align 8, !dbg !5259
  %monitored = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 18, !dbg !5261
  %1 = load i32, ptr %monitored, align 8, !dbg !5261
  %tobool = icmp ne i32 %1, 0, !dbg !5259
  br i1 %tobool, label %if.then, label %if.end, !dbg !5262

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ubus.addr, align 8, !dbg !5263
  %monitored1 = getelementptr inbounds %struct.usb_bus, ptr %2, i32 0, i32 18, !dbg !5265
  store i32 0, ptr %monitored1, align 8, !dbg !5266
  br label %do.body, !dbg !5267

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !5268

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5270

do.end:                                           ; preds = %do.body2
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5268, !srcloc !5272
  br label %do.end3, !dbg !5268

do.end3:                                          ; preds = %do.end
  br label %if.end, !dbg !5273

if.end:                                           ; preds = %do.end3, %entry
  %3 = load ptr, ptr %ubus.addr, align 8, !dbg !5274
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 17, !dbg !5275
  store ptr null, ptr %mon_bus, align 8, !dbg !5276
  %4 = load ptr, ptr %mbus.addr, align 8, !dbg !5277
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 2, !dbg !5278
  store ptr null, ptr %u_bus, align 8, !dbg !5279
  br label %do.body4, !dbg !5280

do.body4:                                         ; preds = %if.end
  br label %do.body5, !dbg !5281

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5283

do.end6:                                          ; preds = %do.body5
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5281, !srcloc !5285
  br label %do.end7, !dbg !5281

do.end7:                                          ; preds = %do.end6
  ret void, !dbg !5286
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5287 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5288 dso_local void @mon_text_exit() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5289 dso_local void @mon_bin_exit() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_usbmon__271_432_mon_init6() #6 section ".init.text" align 16 !dbg !5290 {
entry:
  %call = call i32 @mon_init() #18, !dbg !5291
  ret i32 %call, !dbg !5291
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mon_init() #6 section ".init.text" align 16 !dbg !5292 {
entry:
  %retval = alloca i32, align 4
  %ubus = alloca ptr, align 8
  %rc = alloca i32, align 4
  %id = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ubus) #16, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %ubus, metadata !5294, metadata !DIExpression()), !dbg !5301
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5295, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #16, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5296, metadata !DIExpression()), !dbg !5304
  %call = call i32 @mon_text_init() #18, !dbg !5305
  store i32 %call, ptr %rc, align 4, !dbg !5307
  %cmp = icmp ne i32 %call, 0, !dbg !5308
  br i1 %cmp, label %if.then, label %if.end, !dbg !5309

if.then:                                          ; preds = %entry
  br label %err_text, !dbg !5310

if.end:                                           ; preds = %entry
  %call1 = call i32 @mon_bin_init() #18, !dbg !5311
  store i32 %call1, ptr %rc, align 4, !dbg !5313
  %cmp2 = icmp ne i32 %call1, 0, !dbg !5314
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5315

if.then3:                                         ; preds = %if.end
  br label %err_bin, !dbg !5316

if.end4:                                          ; preds = %if.end
  call void @mon_bus0_init() #17, !dbg !5317
  %call5 = call i32 @usb_mon_register(ptr noundef @mon_ops_0) #17, !dbg !5318
  %cmp6 = icmp ne i32 %call5, 0, !dbg !5320
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !5321

if.then7:                                         ; preds = %if.end4
  br label %do.body, !dbg !5322

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !5325

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5325

do.end:                                           ; preds = %do.cond
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #18, !dbg !5322
  store i32 %call8, ptr %tmp, align 4, !dbg !5325
  %0 = load i32, ptr %tmp, align 4, !dbg !5322
  store i32 -19, ptr %rc, align 4, !dbg !5327
  br label %err_reg, !dbg !5328

if.end9:                                          ; preds = %if.end4
  call void @mutex_lock(ptr noundef @usb_bus_idr_lock) #17, !dbg !5329
  store i32 0, ptr %id, align 4, !dbg !5330
  br label %for.cond, !dbg !5330

for.cond:                                         ; preds = %for.inc, %if.end9
  %call10 = call ptr @idr_get_next(ptr noundef @usb_bus_idr, ptr noundef %id) #17, !dbg !5332
  store ptr %call10, ptr %ubus, align 8, !dbg !5332
  %cmp11 = icmp ne ptr %call10, null, !dbg !5332
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5330

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ubus, align 8, !dbg !5334
  call void @mon_bus_init(ptr noundef %1) #17, !dbg !5335
  br label %for.inc, !dbg !5335

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %id, align 4, !dbg !5332
  %add = add i32 %2, 1, !dbg !5332
  store i32 %add, ptr %id, align 4, !dbg !5332
  br label %for.cond, !dbg !5332, !llvm.loop !5336

for.end:                                          ; preds = %for.cond
  call void @usb_register_notify(ptr noundef @mon_nb) #17, !dbg !5338
  call void @mutex_unlock(ptr noundef @usb_bus_idr_lock) #17, !dbg !5339
  store i32 0, ptr %retval, align 4, !dbg !5340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5340

err_reg:                                          ; preds = %do.end
  call void @llvm.dbg.label(metadata !5297), !dbg !5341
  call void @mon_bin_exit() #17, !dbg !5342
  br label %err_bin, !dbg !5342

err_bin:                                          ; preds = %err_reg, %if.then3
  call void @llvm.dbg.label(metadata !5298), !dbg !5343
  call void @mon_text_exit() #17, !dbg !5344
  br label %err_text, !dbg !5344

err_text:                                         ; preds = %err_bin, %if.then
  call void @llvm.dbg.label(metadata !5299), !dbg !5345
  %3 = load i32, ptr %rc, align 4, !dbg !5346
  store i32 %3, ptr %retval, align 4, !dbg !5347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5347

cleanup:                                          ; preds = %err_text, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #16, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 8, ptr %ubus) #16, !dbg !5348
  %4 = load i32, ptr %retval, align 4, !dbg !5348
  ret i32 %4, !dbg !5348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5349 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5353, metadata !DIExpression()), !dbg !5356
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5354, metadata !DIExpression()), !dbg !5357
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5355, metadata !DIExpression()), !dbg !5358
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5359
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5361
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5362
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !5363
  br i1 %call, label %if.end, label %if.then, !dbg !5364

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5365

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5366
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5367
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5368
  store ptr %3, ptr %prev1, align 8, !dbg !5369
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5370
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5371
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5372
  store ptr %5, ptr %next2, align 8, !dbg !5373
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5374
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5375
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5376
  store ptr %7, ptr %prev3, align 8, !dbg !5377
  br label %do.body, !dbg !5378

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5379

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5381

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5379

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5383
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5383
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5383
  store volatile ptr %9, ptr %next6, align 8, !dbg !5383
  br label %do.end7, !dbg !5383

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5379

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5386 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5390, metadata !DIExpression()), !dbg !5393
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5391, metadata !DIExpression()), !dbg !5394
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5392, metadata !DIExpression()), !dbg !5395
  ret i1 true, !dbg !5396
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5397 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !5400 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5407
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #17, !dbg !5408
  ret void, !dbg !5409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5410 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5414, metadata !DIExpression()), !dbg !5416
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5415, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5418
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5419
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5420
  ret void, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5422 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5426, metadata !DIExpression()), !dbg !5430
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5427, metadata !DIExpression()), !dbg !5431
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5428, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5429, metadata !DIExpression()), !dbg !5434
  %0 = load i32, ptr %i.addr, align 4, !dbg !5435
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5436
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5437
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !5438
  store i32 %call, ptr %old, align 4, !dbg !5434
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5439
  %tobool = icmp ne ptr %2, null, !dbg !5439
  br i1 %tobool, label %if.then, label %if.end, !dbg !5441

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5442
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5443
  store i32 %3, ptr %4, align 4, !dbg !5444
  br label %if.end, !dbg !5445

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5446
  %tobool1 = icmp ne i32 %5, 0, !dbg !5446
  %lnot = xor i1 %tobool1, true, !dbg !5446
  %lnot2 = xor i1 %lnot, true, !dbg !5446
  %lnot3 = xor i1 %lnot2, true, !dbg !5446
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5446
  %conv = sext i32 %lnot.ext to i64, !dbg !5446
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5446
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5446
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5448

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5449
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !5450
  br label %if.end18, !dbg !5450

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5451
  %cmp = icmp slt i32 %7, 0, !dbg !5451
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5451

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5451
  %9 = load i32, ptr %i.addr, align 4, !dbg !5451
  %add = add i32 %8, %9, !dbg !5451
  %cmp7 = icmp slt i32 %add, 0, !dbg !5451
  br label %lor.end, !dbg !5451

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5451
  %lnot11 = xor i1 %lnot9, true, !dbg !5451
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5451
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5451
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5451
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5451
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5453

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5454
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !5455
  br label %if.end17, !dbg !5455

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !5456
  ret void, !dbg !5456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5457 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5463, metadata !DIExpression()), !dbg !5465
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5464, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5467
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5468
  %1 = load i32, ptr %i.addr, align 4, !dbg !5469
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5470
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !5471
  ret i32 %call, !dbg !5472
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5473 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5476 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5484, metadata !DIExpression()), !dbg !5486
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5485, metadata !DIExpression()), !dbg !5487
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5488
  %1 = load i64, ptr %size.addr, align 8, !dbg !5489
  %conv = trunc i64 %1 to i32, !dbg !5489
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5490
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5491
  %3 = load i64, ptr %size.addr, align 8, !dbg !5491
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5493 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5496, metadata !DIExpression()), !dbg !5498
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5497, metadata !DIExpression()), !dbg !5499
  %0 = load i32, ptr %i.addr, align 4, !dbg !5500
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5501
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !5502
  ret i32 %call, !dbg !5503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5504 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5509, metadata !DIExpression()), !dbg !5511
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5510, metadata !DIExpression()), !dbg !5512
  ret i1 true, !dbg !5513
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5514 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5519, metadata !DIExpression()), !dbg !5522
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5520, metadata !DIExpression()), !dbg !5523
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5521, metadata !DIExpression()), !dbg !5524
  ret void, !dbg !5525
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5526 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5529, metadata !DIExpression()), !dbg !5533
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5530, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5531, metadata !DIExpression()), !dbg !5535
  %0 = load i32, ptr %i.addr, align 4, !dbg !5535
  store i32 %0, ptr %__ret, align 4, !dbg !5535
  %1 = load i32, ptr %__ret, align 4, !dbg !5535
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5535
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5535
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !5535, !srcloc !5536
  store i32 %3, ptr %__ret, align 4, !dbg !5535
  %4 = load i32, ptr %__ret, align 4, !dbg !5535
  store i32 %4, ptr %tmp, align 4, !dbg !5535
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !5537
  %5 = load i32, ptr %tmp, align 4, !dbg !5535
  ret i32 %5, !dbg !5538
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5539 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5543
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !5545
  br i1 %call, label %if.end, label %if.then, !dbg !5546

if.then:                                          ; preds = %entry
  br label %return, !dbg !5547

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5548
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5549
  %2 = load ptr, ptr %prev, align 8, !dbg !5549
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5550
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5551
  %4 = load ptr, ptr %next, align 8, !dbg !5551
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !5552
  br label %return, !dbg !5553

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5554 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  ret i1 true, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5561 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5567
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5568
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5569
  store ptr %0, ptr %prev1, align 8, !dbg !5570
  br label %do.body, !dbg !5571

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5572

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5574

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5572

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5576
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5576
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5576
  store volatile ptr %2, ptr %next4, align 8, !dbg !5576
  br label %do.end5, !dbg !5576

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5572

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !5579 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5585
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !5586
  ret i1 %call, !dbg !5587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5588 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5592, metadata !DIExpression()), !dbg !5594
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5593, metadata !DIExpression()), !dbg !5595
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5596
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5597
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5598
  ret i1 %call, !dbg !5599
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5600 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5604, metadata !DIExpression()), !dbg !5608
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5605, metadata !DIExpression()), !dbg !5609
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5606, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5607, metadata !DIExpression()), !dbg !5612
  %0 = load i32, ptr %i.addr, align 4, !dbg !5613
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5614
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5615
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !5616
  store i32 %call, ptr %old, align 4, !dbg !5612
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5617
  %tobool = icmp ne ptr %2, null, !dbg !5617
  br i1 %tobool, label %if.then, label %if.end, !dbg !5619

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5620
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5621
  store i32 %3, ptr %4, align 4, !dbg !5622
  br label %if.end, !dbg !5623

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5624
  %6 = load i32, ptr %i.addr, align 4, !dbg !5626
  %cmp = icmp eq i32 %5, %6, !dbg !5627
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5628

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5629

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5631

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5633

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5633

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5631

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5635

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5637

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5637

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5635, !srcloc !5639
  br label %do.cond7, !dbg !5635

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5635

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5631

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5631

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5640

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5641
  %cmp12 = icmp slt i32 %7, 0, !dbg !5641
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5641

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5641
  %9 = load i32, ptr %i.addr, align 4, !dbg !5641
  %sub = sub i32 %8, %9, !dbg !5641
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5641
  br label %lor.end, !dbg !5641

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5641
  %lnot14 = xor i1 %lnot, true, !dbg !5641
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5641
  %conv = sext i32 %lnot.ext to i64, !dbg !5641
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5641
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5641
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5643

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5644
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !5645
  br label %if.end17, !dbg !5645

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !5647
  %12 = load i1, ptr %retval, align 1, !dbg !5647
  ret i1 %12, !dbg !5647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5648 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5650, metadata !DIExpression()), !dbg !5652
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5651, metadata !DIExpression()), !dbg !5653
  br label %do.body, !dbg !5654

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5655

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5657
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5658
  %1 = load i32, ptr %i.addr, align 4, !dbg !5659
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5660
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !5661
  ret i32 %call, !dbg !5662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5663 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5665, metadata !DIExpression()), !dbg !5667
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5666, metadata !DIExpression()), !dbg !5668
  %0 = load i32, ptr %i.addr, align 4, !dbg !5669
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5670
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !5671
  ret i32 %call, !dbg !5672
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5673 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5675, metadata !DIExpression()), !dbg !5679
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5676, metadata !DIExpression()), !dbg !5680
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5677, metadata !DIExpression()), !dbg !5681
  %0 = load i32, ptr %i.addr, align 4, !dbg !5681
  %sub = sub i32 0, %0, !dbg !5681
  store i32 %sub, ptr %__ret, align 4, !dbg !5681
  %1 = load i32, ptr %__ret, align 4, !dbg !5681
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5681
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5681
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !5681, !srcloc !5682
  store i32 %3, ptr %__ret, align 4, !dbg !5681
  %4 = load i32, ptr %__ret, align 4, !dbg !5681
  store i32 %4, ptr %tmp, align 4, !dbg !5681
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !5683
  %5 = load i32, ptr %tmp, align 4, !dbg !5681
  ret i32 %5, !dbg !5684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5685 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mon_notify(ptr noundef %self, i64 noundef %action, ptr noundef %dev) #0 align 16 !dbg !5688 {
entry:
  %self.addr = alloca ptr, align 8
  %action.addr = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !5690, metadata !DIExpression()), !dbg !5693
  store i64 %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !5691, metadata !DIExpression()), !dbg !5694
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5692, metadata !DIExpression()), !dbg !5695
  %0 = load i64, ptr %action.addr, align 8, !dbg !5696
  switch i64 %0, label %sw.epilog [
    i64 3, label %sw.bb
    i64 4, label %sw.bb1
  ], !dbg !5697

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5698
  call void @mon_bus_add(ptr noundef %1) #17, !dbg !5700
  br label %sw.epilog, !dbg !5701

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5702
  call void @mon_bus_remove(ptr noundef %2) #17, !dbg !5703
  br label %sw.epilog, !dbg !5704

sw.epilog:                                        ; preds = %sw.bb1, %entry, %sw.bb
  ret i32 1, !dbg !5705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_add(ptr noundef %ubus) #0 align 16 !dbg !5706 {
entry:
  %ubus.addr = alloca ptr, align 8
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  %0 = load ptr, ptr %ubus.addr, align 8, !dbg !5712
  call void @mon_bus_init(ptr noundef %0) #17, !dbg !5713
  call void @mutex_lock(ptr noundef @mon_lock) #17, !dbg !5714
  %1 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 9), align 8, !dbg !5715
  %cmp = icmp ne i32 %1, 0, !dbg !5717
  br i1 %cmp, label %if.then, label %if.end, !dbg !5718

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ubus.addr, align 8, !dbg !5719
  %monitored = getelementptr inbounds %struct.usb_bus, ptr %2, i32 0, i32 18, !dbg !5720
  store i32 1, ptr %monitored, align 8, !dbg !5721
  br label %if.end, !dbg !5719

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @mon_lock) #17, !dbg !5722
  ret void, !dbg !5723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_remove(ptr noundef %ubus) #0 align 16 !dbg !5724 {
entry:
  %ubus.addr = alloca ptr, align 8
  %mbus = alloca ptr, align 8
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !5726, metadata !DIExpression()), !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !5727, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %ubus.addr, align 8, !dbg !5731
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 17, !dbg !5732
  %1 = load ptr, ptr %mon_bus, align 8, !dbg !5732
  store ptr %1, ptr %mbus, align 8, !dbg !5730
  call void @mutex_lock(ptr noundef @mon_lock) #17, !dbg !5733
  %2 = load ptr, ptr %mbus, align 8, !dbg !5734
  %bus_link = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 0, !dbg !5735
  call void @list_del(ptr noundef %bus_link) #17, !dbg !5736
  %3 = load ptr, ptr %mbus, align 8, !dbg !5737
  %text_inited = getelementptr inbounds %struct.mon_bus, ptr %3, i32 0, i32 3, !dbg !5739
  %4 = load i32, ptr %text_inited, align 8, !dbg !5739
  %tobool = icmp ne i32 %4, 0, !dbg !5737
  br i1 %tobool, label %if.then, label %if.end, !dbg !5740

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %mbus, align 8, !dbg !5741
  call void @mon_text_del(ptr noundef %5) #17, !dbg !5742
  br label %if.end, !dbg !5742

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %mbus, align 8, !dbg !5743
  %bin_inited = getelementptr inbounds %struct.mon_bus, ptr %6, i32 0, i32 4, !dbg !5745
  %7 = load i32, ptr %bin_inited, align 4, !dbg !5745
  %tobool1 = icmp ne i32 %7, 0, !dbg !5743
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5746

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %mbus, align 8, !dbg !5747
  call void @mon_bin_del(ptr noundef %8) #17, !dbg !5748
  br label %if.end3, !dbg !5748

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %mbus, align 8, !dbg !5749
  %10 = load ptr, ptr %ubus.addr, align 8, !dbg !5750
  call void @mon_dissolve(ptr noundef %9, ptr noundef %10) #17, !dbg !5751
  %11 = load ptr, ptr %mbus, align 8, !dbg !5752
  %ref = getelementptr inbounds %struct.mon_bus, ptr %11, i32 0, i32 11, !dbg !5753
  %call = call i32 @kref_put(ptr noundef %ref, ptr noundef @mon_bus_drop) #17, !dbg !5754
  call void @mutex_unlock(ptr noundef @mon_lock) #17, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !5756
  ret void, !dbg !5756
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_init(ptr noundef %ubus) #0 align 16 !dbg !5757 {
entry:
  %ubus.addr = alloca ptr, align 8
  %mbus = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !5759, metadata !DIExpression()), !dbg !5762
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !5760, metadata !DIExpression()), !dbg !5764
  %call = call noalias ptr @kzalloc(i64 noundef 112, i32 noundef 3264) #19, !dbg !5765
  store ptr %call, ptr %mbus, align 8, !dbg !5766
  %0 = load ptr, ptr %mbus, align 8, !dbg !5767
  %cmp = icmp eq ptr %0, null, !dbg !5769
  br i1 %cmp, label %if.then, label %if.end, !dbg !5770

if.then:                                          ; preds = %entry
  br label %err_alloc, !dbg !5771

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mbus, align 8, !dbg !5772
  %ref = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 11, !dbg !5773
  call void @kref_init(ptr noundef %ref) #17, !dbg !5774
  br label %do.body, !dbg !5775

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %mbus, align 8, !dbg !5776
  %lock = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 1, !dbg !5776
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !5776
  %3 = load ptr, ptr %mbus, align 8, !dbg !5776
  %lock2 = getelementptr inbounds %struct.mon_bus, ptr %3, i32 0, i32 1, !dbg !5776
  %4 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5776
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 0, !dbg !5776
  %5 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5776
  %counter = getelementptr inbounds %struct.atomic_t, ptr %5, i32 0, i32 0, !dbg !5776
  store i32 0, ptr %counter, align 4, !dbg !5776
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5776
  br label %do.cond, !dbg !5776

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5776

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %mbus, align 8, !dbg !5778
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %6, i32 0, i32 10, !dbg !5779
  call void @INIT_LIST_HEAD(ptr noundef %r_list) #17, !dbg !5780
  %7 = load ptr, ptr %ubus.addr, align 8, !dbg !5781
  %8 = load ptr, ptr %mbus, align 8, !dbg !5782
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %8, i32 0, i32 2, !dbg !5783
  store ptr %7, ptr %u_bus, align 8, !dbg !5784
  %9 = load ptr, ptr %mbus, align 8, !dbg !5785
  %10 = load ptr, ptr %ubus.addr, align 8, !dbg !5786
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %10, i32 0, i32 17, !dbg !5787
  store ptr %9, ptr %mon_bus, align 8, !dbg !5788
  %11 = load ptr, ptr %mbus, align 8, !dbg !5789
  %12 = load ptr, ptr %ubus.addr, align 8, !dbg !5790
  %call3 = call i32 @mon_text_add(ptr noundef %11, ptr noundef %12) #17, !dbg !5791
  %13 = load ptr, ptr %mbus, align 8, !dbg !5792
  %text_inited = getelementptr inbounds %struct.mon_bus, ptr %13, i32 0, i32 3, !dbg !5793
  store i32 %call3, ptr %text_inited, align 8, !dbg !5794
  %14 = load ptr, ptr %mbus, align 8, !dbg !5795
  %15 = load ptr, ptr %ubus.addr, align 8, !dbg !5796
  %call4 = call i32 @mon_bin_add(ptr noundef %14, ptr noundef %15) #17, !dbg !5797
  %16 = load ptr, ptr %mbus, align 8, !dbg !5798
  %bin_inited = getelementptr inbounds %struct.mon_bus, ptr %16, i32 0, i32 4, !dbg !5799
  store i32 %call4, ptr %bin_inited, align 4, !dbg !5800
  call void @mutex_lock(ptr noundef @mon_lock) #17, !dbg !5801
  %17 = load ptr, ptr %mbus, align 8, !dbg !5802
  %bus_link = getelementptr inbounds %struct.mon_bus, ptr %17, i32 0, i32 0, !dbg !5803
  call void @list_add_tail(ptr noundef %bus_link, ptr noundef @mon_buses) #17, !dbg !5804
  call void @mutex_unlock(ptr noundef @mon_lock) #17, !dbg !5805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5806

err_alloc:                                        ; preds = %if.then
  call void @llvm.dbg.label(metadata !5761), !dbg !5807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5808

cleanup:                                          ; preds = %err_alloc, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !5809
  ret void, !dbg !5809
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5810 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5814, metadata !DIExpression()), !dbg !5816
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5815, metadata !DIExpression()), !dbg !5817
  %0 = load i64, ptr %size.addr, align 8, !dbg !5818
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5819
  %or = or i32 %1, 256, !dbg !5820
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5821
  ret ptr %call, !dbg !5822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #5 align 16 !dbg !5823 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5827
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5828
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #17, !dbg !5829
  ret void, !dbg !5830
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5831 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  br label %do.body, !dbg !5835

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5836

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5838

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5836

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5840
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5840
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5840
  store volatile ptr %0, ptr %next, align 8, !dbg !5840
  br label %do.end3, !dbg !5840

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5836

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5842

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5843

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5845

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5843

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5847
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5847
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5847
  store volatile ptr %2, ptr %prev, align 8, !dbg !5847
  br label %do.end9, !dbg !5847

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5843

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5849
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5850 dso_local i32 @mon_text_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5855 dso_local i32 @mon_bin_add(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5856 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5858, metadata !DIExpression()), !dbg !5863
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5859, metadata !DIExpression()), !dbg !5864
  %0 = load i64, ptr %size.addr, align 8, !dbg !5865
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5866
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5867

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5868
  %tobool = icmp ne i64 %2, 0, !dbg !5868
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5869

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5870
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5860, metadata !DIExpression()), !dbg !5871
  %3 = load i64, ptr %size.addr, align 8, !dbg !5872
  %cmp = icmp ugt i64 %3, 8192, !dbg !5874
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5875

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5876
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5877
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5878
  store ptr %call, ptr %retval, align 8, !dbg !5879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5879

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5880
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5880
  store i32 %call2, ptr %index, align 4, !dbg !5881
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5882
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5883
  %9 = ptrtoint ptr %8 to i64, !dbg !5883
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5884
  %idxprom = zext i32 %call3 to i64, !dbg !5885
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5885
  %10 = load i32, ptr %index, align 4, !dbg !5886
  %idxprom4 = zext i32 %10 to i64, !dbg !5885
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5885
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5885
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5887
  %13 = load i64, ptr %size.addr, align 8, !dbg !5888
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5889
  store ptr %call6, ptr %retval, align 8, !dbg !5890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5890

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5891
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5892
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5893
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5894
  store ptr %call8, ptr %retval, align 8, !dbg !5895
  br label %return, !dbg !5895

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5896
  ret ptr %16, !dbg !5896
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5897 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !5898 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5902, metadata !DIExpression()), !dbg !5904
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5903, metadata !DIExpression()), !dbg !5905
  %0 = load i64, ptr %size.addr, align 8, !dbg !5906
  %tobool = icmp ne i64 %0, 0, !dbg !5906
  br i1 %tobool, label %if.end, label %if.then, !dbg !5908

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5909
  br label %return, !dbg !5909

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5910
  %cmp = icmp ule i64 %1, 8, !dbg !5912
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5913

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5914
  br label %return, !dbg !5914

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5915
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5917
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5918

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5919
  %cmp4 = icmp ule i64 %3, 96, !dbg !5920
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5921

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5922
  br label %return, !dbg !5922

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5923
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5925
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5926

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5927
  %cmp9 = icmp ule i64 %5, 192, !dbg !5928
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5929

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5930
  br label %return, !dbg !5930

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5931
  %cmp12 = icmp ule i64 %6, 8, !dbg !5933
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5934

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5935
  br label %return, !dbg !5935

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5936
  %cmp15 = icmp ule i64 %7, 16, !dbg !5938
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5939

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5940
  br label %return, !dbg !5940

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5941
  %cmp18 = icmp ule i64 %8, 32, !dbg !5943
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5944

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5945
  br label %return, !dbg !5945

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5946
  %cmp21 = icmp ule i64 %9, 64, !dbg !5948
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5949

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5950
  br label %return, !dbg !5950

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5951
  %cmp24 = icmp ule i64 %10, 128, !dbg !5953
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5954

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5956
  %cmp27 = icmp ule i64 %11, 256, !dbg !5958
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5959

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5960
  br label %return, !dbg !5960

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5961
  %cmp30 = icmp ule i64 %12, 512, !dbg !5963
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5964

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5965
  br label %return, !dbg !5965

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5966
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5968
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5969

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5970
  br label %return, !dbg !5970

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5971
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5973
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5974

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5975
  br label %return, !dbg !5975

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5976
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5978
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5979

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5980
  br label %return, !dbg !5980

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5981
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5983
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5984

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5985
  br label %return, !dbg !5985

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5986
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5988
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5989

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5990
  br label %return, !dbg !5990

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5991
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5993
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5994

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5995
  br label %return, !dbg !5995

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5996
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5998
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5999

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6000
  br label %return, !dbg !6000

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6001
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6003
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6004

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6005
  br label %return, !dbg !6005

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6006
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6008
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6009

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6010
  br label %return, !dbg !6010

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6011
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6013
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6014

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6015
  br label %return, !dbg !6015

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6016
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6018
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6019

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6020
  br label %return, !dbg !6020

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6021
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6023
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6024

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6025
  br label %return, !dbg !6025

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6026, !range !6028, !noundef !919
  %tobool69 = trunc i8 %25 to i1, !dbg !6026
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6029

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6030

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #21, !dbg !6031, !srcloc !6034
  unreachable, !dbg !6031

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6035

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6036

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6037

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6039

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6037

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !6041, !srcloc !6043
  br label %do.end75, !dbg !6041

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6037

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6044
  br label %return, !dbg !6044

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6045
  ret i32 %26, !dbg !6045
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6046 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6052 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6056, metadata !DIExpression()), !dbg !6058
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6060
  %and = and i32 %0, 17, !dbg !6060
  %cmp = icmp eq i32 %and, 0, !dbg !6060
  %lnot = xor i1 %cmp, true, !dbg !6060
  %lnot1 = xor i1 %lnot, true, !dbg !6060
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6060
  %conv = sext i32 %lnot.ext to i64, !dbg !6060
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6060
  %tobool = icmp ne i64 %expval, 0, !dbg !6060
  br i1 %tobool, label %if.then, label %if.end, !dbg !6062

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6063
  br label %return, !dbg !6063

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6064
  %and2 = and i32 %1, 1, !dbg !6066
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6066
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6067

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6068
  br label %return, !dbg !6068

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6069
  br label %return, !dbg !6069

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6071
  ret i32 %2, !dbg !6071
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6072 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6073 dso_local void @__compiletime_assert_263() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !6074 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6078, metadata !DIExpression()), !dbg !6080
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6079, metadata !DIExpression()), !dbg !6081
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6082
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6083
  %1 = load i32, ptr %n.addr, align 4, !dbg !6084
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #17, !dbg !6085
  ret void, !dbg !6086
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6087 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6091, metadata !DIExpression()), !dbg !6093
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6092, metadata !DIExpression()), !dbg !6094
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6095
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6096
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6097
  %2 = load i32, ptr %i.addr, align 4, !dbg !6098
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !6099
  ret void, !dbg !6100
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6101 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6103, metadata !DIExpression()), !dbg !6105
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6104, metadata !DIExpression()), !dbg !6106
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6107
  %1 = load i64, ptr %size.addr, align 8, !dbg !6108
  %conv = trunc i64 %1 to i32, !dbg !6108
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6109
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6110
  %3 = load i64, ptr %size.addr, align 8, !dbg !6110
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6110
  ret void, !dbg !6111
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6112 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6114, metadata !DIExpression()), !dbg !6116
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6115, metadata !DIExpression()), !dbg !6117
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6118
  %1 = load i32, ptr %i.addr, align 4, !dbg !6119
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !6120
  ret void, !dbg !6121
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6122 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6124, metadata !DIExpression()), !dbg !6126
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6125, metadata !DIExpression()), !dbg !6127
  br label %do.body, !dbg !6128

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6129
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6129
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6129
  store volatile i32 %0, ptr %counter, align 4, !dbg !6129
  br label %do.end, !dbg !6129

do.end:                                           ; preds = %do.body
  ret void, !dbg !6131
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6132 dso_local i32 @mon_text_init() #7 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6133 dso_local i32 @mon_bin_init() #7 section ".init.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus0_init() #0 align 16 !dbg !6134 {
entry:
  %mbus = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !6137
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !6136, metadata !DIExpression()), !dbg !6138
  store ptr @mon_bus0, ptr %mbus, align 8, !dbg !6138
  %0 = load ptr, ptr %mbus, align 8, !dbg !6139
  %ref = getelementptr inbounds %struct.mon_bus, ptr %0, i32 0, i32 11, !dbg !6140
  call void @kref_init(ptr noundef %ref) #17, !dbg !6141
  br label %do.body, !dbg !6142

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %mbus, align 8, !dbg !6143
  %lock = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1, !dbg !6143
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6143
  %2 = load ptr, ptr %mbus, align 8, !dbg !6143
  %lock1 = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 1, !dbg !6143
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6143
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !6143
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6143
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6143
  store i32 0, ptr %counter, align 4, !dbg !6143
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6143
  br label %do.cond, !dbg !6143

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6143

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %mbus, align 8, !dbg !6145
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %5, i32 0, i32 10, !dbg !6146
  call void @INIT_LIST_HEAD(ptr noundef %r_list) #17, !dbg !6147
  %6 = load ptr, ptr %mbus, align 8, !dbg !6148
  %call2 = call i32 @mon_text_add(ptr noundef %6, ptr noundef null) #17, !dbg !6149
  %7 = load ptr, ptr %mbus, align 8, !dbg !6150
  %text_inited = getelementptr inbounds %struct.mon_bus, ptr %7, i32 0, i32 3, !dbg !6151
  store i32 %call2, ptr %text_inited, align 8, !dbg !6152
  %8 = load ptr, ptr %mbus, align 8, !dbg !6153
  %call3 = call i32 @mon_bin_add(ptr noundef %8, ptr noundef null) #17, !dbg !6154
  %9 = load ptr, ptr %mbus, align 8, !dbg !6155
  %bin_inited = getelementptr inbounds %struct.mon_bus, ptr %9, i32 0, i32 4, !dbg !6156
  store i32 %call3, ptr %bin_inited, align 4, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !6158
  ret void, !dbg !6158
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6159 dso_local i32 @usb_mon_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6163 dso_local ptr @idr_get_next(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6173 dso_local void @usb_register_notify(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_submit(ptr noundef %ubus, ptr noundef %urb) #0 align 16 !dbg !6174 {
entry:
  %ubus.addr = alloca ptr, align 8
  %urb.addr = alloca ptr, align 8
  %mbus = alloca ptr, align 8
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !6176, metadata !DIExpression()), !dbg !6179
  store ptr %urb, ptr %urb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %urb.addr, metadata !6177, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !6178, metadata !DIExpression()), !dbg !6182
  %0 = load ptr, ptr %ubus.addr, align 8, !dbg !6183
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 17, !dbg !6184
  %1 = load ptr, ptr %mon_bus, align 8, !dbg !6184
  store ptr %1, ptr %mbus, align 8, !dbg !6185
  %2 = load ptr, ptr %mbus, align 8, !dbg !6186
  %cmp = icmp ne ptr %2, null, !dbg !6188
  br i1 %cmp, label %if.then, label %if.end, !dbg !6189

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mbus, align 8, !dbg !6190
  %4 = load ptr, ptr %urb.addr, align 8, !dbg !6191
  call void @mon_bus_submit(ptr noundef %3, ptr noundef %4) #17, !dbg !6192
  br label %if.end, !dbg !6192

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %urb.addr, align 8, !dbg !6193
  call void @mon_bus_submit(ptr noundef @mon_bus0, ptr noundef %5) #17, !dbg !6194
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !6195
  ret void, !dbg !6195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_submit_error(ptr noundef %ubus, ptr noundef %urb, i32 noundef %error) #0 align 16 !dbg !6196 {
entry:
  %ubus.addr = alloca ptr, align 8
  %urb.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %mbus = alloca ptr, align 8
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !6198, metadata !DIExpression()), !dbg !6202
  store ptr %urb, ptr %urb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %urb.addr, metadata !6199, metadata !DIExpression()), !dbg !6203
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6200, metadata !DIExpression()), !dbg !6204
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !6201, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %ubus.addr, align 8, !dbg !6207
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 17, !dbg !6208
  %1 = load ptr, ptr %mon_bus, align 8, !dbg !6208
  store ptr %1, ptr %mbus, align 8, !dbg !6209
  %2 = load ptr, ptr %mbus, align 8, !dbg !6210
  %cmp = icmp ne ptr %2, null, !dbg !6212
  br i1 %cmp, label %if.then, label %if.end, !dbg !6213

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mbus, align 8, !dbg !6214
  %4 = load ptr, ptr %urb.addr, align 8, !dbg !6215
  %5 = load i32, ptr %error.addr, align 4, !dbg !6216
  call void @mon_bus_submit_error(ptr noundef %3, ptr noundef %4, i32 noundef %5) #17, !dbg !6217
  br label %if.end, !dbg !6217

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %urb.addr, align 8, !dbg !6218
  %7 = load i32, ptr %error.addr, align 4, !dbg !6219
  call void @mon_bus_submit_error(ptr noundef @mon_bus0, ptr noundef %6, i32 noundef %7) #17, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !6221
  ret void, !dbg !6221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_complete(ptr noundef %ubus, ptr noundef %urb, i32 noundef %status) #0 align 16 !dbg !6222 {
entry:
  %ubus.addr = alloca ptr, align 8
  %urb.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %mbus = alloca ptr, align 8
  store ptr %ubus, ptr %ubus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubus.addr, metadata !6224, metadata !DIExpression()), !dbg !6228
  store ptr %urb, ptr %urb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %urb.addr, metadata !6225, metadata !DIExpression()), !dbg !6229
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !6226, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbus) #16, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %mbus, metadata !6227, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %ubus.addr, align 8, !dbg !6233
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 17, !dbg !6234
  %1 = load ptr, ptr %mon_bus, align 8, !dbg !6234
  store ptr %1, ptr %mbus, align 8, !dbg !6235
  %2 = load ptr, ptr %mbus, align 8, !dbg !6236
  %cmp = icmp ne ptr %2, null, !dbg !6238
  br i1 %cmp, label %if.then, label %if.end, !dbg !6239

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mbus, align 8, !dbg !6240
  %4 = load ptr, ptr %urb.addr, align 8, !dbg !6241
  %5 = load i32, ptr %status.addr, align 4, !dbg !6242
  call void @mon_bus_complete(ptr noundef %3, ptr noundef %4, i32 noundef %5) #17, !dbg !6243
  br label %if.end, !dbg !6243

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %urb.addr, align 8, !dbg !6244
  %7 = load i32, ptr %status.addr, align 4, !dbg !6245
  call void @mon_bus_complete(ptr noundef @mon_bus0, ptr noundef %6, i32 noundef %7) #17, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbus) #16, !dbg !6247
  ret void, !dbg !6247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_submit(ptr noundef %mbus, ptr noundef %urb) #0 align 16 !dbg !6248 {
entry:
  %mbus.addr = alloca ptr, align 8
  %urb.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %pos = alloca ptr, align 8
  %r = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !6252, metadata !DIExpression()), !dbg !6267
  store ptr %urb, ptr %urb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %urb.addr, metadata !6253, metadata !DIExpression()), !dbg !6268
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6254, metadata !DIExpression()), !dbg !6270
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6271
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6255, metadata !DIExpression()), !dbg !6272
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6256, metadata !DIExpression()), !dbg !6274
  br label %do.body, !dbg !6275

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6276

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6257, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6261, metadata !DIExpression()), !dbg !6277
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6277
  %conv = zext i1 %cmp to i32, !dbg !6277
  store i32 1, ptr %tmp, align 4, !dbg !6277
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6278
  %0 = load i32, ptr %tmp, align 4, !dbg !6277
  %1 = load ptr, ptr %mbus.addr, align 8, !dbg !6278
  %lock = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1, !dbg !6278
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6278
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !6278
  store i64 %call2, ptr %flags, align 8, !dbg !6278
  br label %do.cond, !dbg !6278

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6278

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6276

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6276

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %mbus.addr, align 8, !dbg !6279
  %cnt_events = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 12, !dbg !6280
  %3 = load i32, ptr %cnt_events, align 4, !dbg !6281
  %inc = add i32 %3, 1, !dbg !6281
  store i32 %inc, ptr %cnt_events, align 4, !dbg !6281
  %4 = load ptr, ptr %mbus.addr, align 8, !dbg !6282
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 10, !dbg !6282
  %next = getelementptr inbounds %struct.list_head, ptr %r_list, i32 0, i32 0, !dbg !6282
  %5 = load ptr, ptr %next, align 8, !dbg !6282
  store ptr %5, ptr %pos, align 8, !dbg !6282
  br label %for.cond, !dbg !6282

for.cond:                                         ; preds = %for.inc, %do.end4
  %6 = load ptr, ptr %pos, align 8, !dbg !6283
  %7 = load ptr, ptr %mbus.addr, align 8, !dbg !6283
  %r_list5 = getelementptr inbounds %struct.mon_bus, ptr %7, i32 0, i32 10, !dbg !6283
  %call6 = call i32 @list_is_head(ptr noundef %6, ptr noundef %r_list5) #17, !dbg !6283
  %tobool = icmp ne i32 %call6, 0, !dbg !6283
  %lnot = xor i1 %tobool, true, !dbg !6283
  br i1 %lnot, label %for.body, label %for.end, !dbg !6282

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6262, metadata !DIExpression()), !dbg !6284
  %8 = load ptr, ptr %pos, align 8, !dbg !6284
  store ptr %8, ptr %__mptr, align 8, !dbg !6284
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6284
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !6284
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !6284
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6285
  %10 = load ptr, ptr %tmp7, align 8, !dbg !6284
  store ptr %10, ptr %r, align 8, !dbg !6286
  %11 = load ptr, ptr %r, align 8, !dbg !6287
  %rnf_submit = getelementptr inbounds %struct.mon_reader, ptr %11, i32 0, i32 3, !dbg !6288
  %12 = load ptr, ptr %rnf_submit, align 8, !dbg !6288
  %13 = load ptr, ptr %r, align 8, !dbg !6289
  %r_data = getelementptr inbounds %struct.mon_reader, ptr %13, i32 0, i32 2, !dbg !6290
  %14 = load ptr, ptr %r_data, align 8, !dbg !6290
  %15 = load ptr, ptr %urb.addr, align 8, !dbg !6291
  call void %12(ptr noundef %14, ptr noundef %15) #17, !dbg !6287
  br label %for.inc, !dbg !6292

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %pos, align 8, !dbg !6283
  %next8 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !6283
  %17 = load ptr, ptr %next8, align 8, !dbg !6283
  store ptr %17, ptr %pos, align 8, !dbg !6283
  br label %for.cond, !dbg !6283, !llvm.loop !6293

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %mbus.addr, align 8, !dbg !6295
  %lock9 = getelementptr inbounds %struct.mon_bus, ptr %18, i32 0, i32 1, !dbg !6296
  %19 = load i64, ptr %flags, align 8, !dbg !6297
  call void @spin_unlock_irqrestore(ptr noundef %lock9, i64 noundef %19) #17, !dbg !6298
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6299
  ret void, !dbg !6299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_submit_error(ptr noundef %mbus, ptr noundef %urb, i32 noundef %error) #0 align 16 !dbg !6300 {
entry:
  %mbus.addr = alloca ptr, align 8
  %urb.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %pos = alloca ptr, align 8
  %r = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !6304, metadata !DIExpression()), !dbg !6320
  store ptr %urb, ptr %urb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %urb.addr, metadata !6305, metadata !DIExpression()), !dbg !6321
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6306, metadata !DIExpression()), !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6323
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6307, metadata !DIExpression()), !dbg !6324
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6308, metadata !DIExpression()), !dbg !6326
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !6327
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6309, metadata !DIExpression()), !dbg !6328
  br label %do.body, !dbg !6329

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6330

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6310, metadata !DIExpression()), !dbg !6331
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6314, metadata !DIExpression()), !dbg !6331
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6331
  %conv = zext i1 %cmp to i32, !dbg !6331
  store i32 1, ptr %tmp, align 4, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6332
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6332
  %0 = load i32, ptr %tmp, align 4, !dbg !6331
  %1 = load ptr, ptr %mbus.addr, align 8, !dbg !6332
  %lock = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1, !dbg !6332
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6332
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !6332
  store i64 %call2, ptr %flags, align 8, !dbg !6332
  br label %do.cond, !dbg !6332

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6332

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6330

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6330

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %mbus.addr, align 8, !dbg !6333
  %cnt_events = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 12, !dbg !6334
  %3 = load i32, ptr %cnt_events, align 4, !dbg !6335
  %inc = add i32 %3, 1, !dbg !6335
  store i32 %inc, ptr %cnt_events, align 4, !dbg !6335
  %4 = load ptr, ptr %mbus.addr, align 8, !dbg !6336
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 10, !dbg !6336
  %next = getelementptr inbounds %struct.list_head, ptr %r_list, i32 0, i32 0, !dbg !6336
  %5 = load ptr, ptr %next, align 8, !dbg !6336
  store ptr %5, ptr %pos, align 8, !dbg !6336
  br label %for.cond, !dbg !6336

for.cond:                                         ; preds = %for.inc, %do.end4
  %6 = load ptr, ptr %pos, align 8, !dbg !6337
  %7 = load ptr, ptr %mbus.addr, align 8, !dbg !6337
  %r_list5 = getelementptr inbounds %struct.mon_bus, ptr %7, i32 0, i32 10, !dbg !6337
  %call6 = call i32 @list_is_head(ptr noundef %6, ptr noundef %r_list5) #17, !dbg !6337
  %tobool = icmp ne i32 %call6, 0, !dbg !6337
  %lnot = xor i1 %tobool, true, !dbg !6337
  br i1 %lnot, label %for.body, label %for.end, !dbg !6336

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6315, metadata !DIExpression()), !dbg !6338
  %8 = load ptr, ptr %pos, align 8, !dbg !6338
  store ptr %8, ptr %__mptr, align 8, !dbg !6338
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6338
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !6338
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6339
  %10 = load ptr, ptr %tmp7, align 8, !dbg !6338
  store ptr %10, ptr %r, align 8, !dbg !6340
  %11 = load ptr, ptr %r, align 8, !dbg !6341
  %rnf_error = getelementptr inbounds %struct.mon_reader, ptr %11, i32 0, i32 4, !dbg !6342
  %12 = load ptr, ptr %rnf_error, align 8, !dbg !6342
  %13 = load ptr, ptr %r, align 8, !dbg !6343
  %r_data = getelementptr inbounds %struct.mon_reader, ptr %13, i32 0, i32 2, !dbg !6344
  %14 = load ptr, ptr %r_data, align 8, !dbg !6344
  %15 = load ptr, ptr %urb.addr, align 8, !dbg !6345
  %16 = load i32, ptr %error.addr, align 4, !dbg !6346
  call void %12(ptr noundef %14, ptr noundef %15, i32 noundef %16) #17, !dbg !6341
  br label %for.inc, !dbg !6347

for.inc:                                          ; preds = %for.body
  %17 = load ptr, ptr %pos, align 8, !dbg !6337
  %next8 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 0, !dbg !6337
  %18 = load ptr, ptr %next8, align 8, !dbg !6337
  store ptr %18, ptr %pos, align 8, !dbg !6337
  br label %for.cond, !dbg !6337, !llvm.loop !6348

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %mbus.addr, align 8, !dbg !6350
  %lock9 = getelementptr inbounds %struct.mon_bus, ptr %19, i32 0, i32 1, !dbg !6351
  %20 = load i64, ptr %flags, align 8, !dbg !6352
  call void @spin_unlock_irqrestore(ptr noundef %lock9, i64 noundef %20) #17, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6354
  ret void, !dbg !6354
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mon_bus_complete(ptr noundef %mbus, ptr noundef %urb, i32 noundef %status) #0 align 16 !dbg !6355 {
entry:
  %mbus.addr = alloca ptr, align 8
  %urb.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %pos = alloca ptr, align 8
  %r = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %mbus, ptr %mbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbus.addr, metadata !6357, metadata !DIExpression()), !dbg !6373
  store ptr %urb, ptr %urb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %urb.addr, metadata !6358, metadata !DIExpression()), !dbg !6374
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !6359, metadata !DIExpression()), !dbg !6375
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6360, metadata !DIExpression()), !dbg !6377
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6361, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6362, metadata !DIExpression()), !dbg !6381
  br label %do.body, !dbg !6382

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6383

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6363, metadata !DIExpression()), !dbg !6384
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6367, metadata !DIExpression()), !dbg !6384
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6384
  %conv = zext i1 %cmp to i32, !dbg !6384
  store i32 1, ptr %tmp, align 4, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6385
  %0 = load i32, ptr %tmp, align 4, !dbg !6384
  %1 = load ptr, ptr %mbus.addr, align 8, !dbg !6385
  %lock = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1, !dbg !6385
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6385
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !6385
  store i64 %call2, ptr %flags, align 8, !dbg !6385
  br label %do.cond, !dbg !6385

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6385

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6383

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6383

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %mbus.addr, align 8, !dbg !6386
  %cnt_events = getelementptr inbounds %struct.mon_bus, ptr %2, i32 0, i32 12, !dbg !6387
  %3 = load i32, ptr %cnt_events, align 4, !dbg !6388
  %inc = add i32 %3, 1, !dbg !6388
  store i32 %inc, ptr %cnt_events, align 4, !dbg !6388
  %4 = load ptr, ptr %mbus.addr, align 8, !dbg !6389
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 10, !dbg !6389
  %next = getelementptr inbounds %struct.list_head, ptr %r_list, i32 0, i32 0, !dbg !6389
  %5 = load ptr, ptr %next, align 8, !dbg !6389
  store ptr %5, ptr %pos, align 8, !dbg !6389
  br label %for.cond, !dbg !6389

for.cond:                                         ; preds = %for.inc, %do.end4
  %6 = load ptr, ptr %pos, align 8, !dbg !6390
  %7 = load ptr, ptr %mbus.addr, align 8, !dbg !6390
  %r_list5 = getelementptr inbounds %struct.mon_bus, ptr %7, i32 0, i32 10, !dbg !6390
  %call6 = call i32 @list_is_head(ptr noundef %6, ptr noundef %r_list5) #17, !dbg !6390
  %tobool = icmp ne i32 %call6, 0, !dbg !6390
  %lnot = xor i1 %tobool, true, !dbg !6390
  br i1 %lnot, label %for.body, label %for.end, !dbg !6389

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6368, metadata !DIExpression()), !dbg !6391
  %8 = load ptr, ptr %pos, align 8, !dbg !6391
  store ptr %8, ptr %__mptr, align 8, !dbg !6391
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6391
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !6391
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6392
  %10 = load ptr, ptr %tmp7, align 8, !dbg !6391
  store ptr %10, ptr %r, align 8, !dbg !6393
  %11 = load ptr, ptr %r, align 8, !dbg !6394
  %rnf_complete = getelementptr inbounds %struct.mon_reader, ptr %11, i32 0, i32 5, !dbg !6395
  %12 = load ptr, ptr %rnf_complete, align 8, !dbg !6395
  %13 = load ptr, ptr %r, align 8, !dbg !6396
  %r_data = getelementptr inbounds %struct.mon_reader, ptr %13, i32 0, i32 2, !dbg !6397
  %14 = load ptr, ptr %r_data, align 8, !dbg !6397
  %15 = load ptr, ptr %urb.addr, align 8, !dbg !6398
  %16 = load i32, ptr %status.addr, align 4, !dbg !6399
  call void %12(ptr noundef %14, ptr noundef %15, i32 noundef %16) #17, !dbg !6394
  br label %for.inc, !dbg !6400

for.inc:                                          ; preds = %for.body
  %17 = load ptr, ptr %pos, align 8, !dbg !6390
  %next8 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 0, !dbg !6390
  %18 = load ptr, ptr %next8, align 8, !dbg !6390
  store ptr %18, ptr %pos, align 8, !dbg !6390
  br label %for.cond, !dbg !6390, !llvm.loop !6401

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %mbus.addr, align 8, !dbg !6403
  %lock9 = getelementptr inbounds %struct.mon_bus, ptr %19, i32 0, i32 1, !dbg !6404
  %20 = load i64, ptr %flags, align 8, !dbg !6405
  call void @spin_unlock_irqrestore(ptr noundef %lock9, i64 noundef %20) #17, !dbg !6406
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6407
  ret void, !dbg !6407
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798}
!llvm.ident = !{!4799}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mon_lock", scope: !2, file: !3, line: 26, type: !630, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/mon/.mon_main.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/mon/usbmon\22 -D KBUILD_BASENAME=\22mon_main\22 -D KBUILD_MODNAME=\22usbmon\22 -D __KBUILD_MODNAME=kmod_usbmon -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/mon/mon_main.ll drivers/usb/mon/mon_main.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, globals: !4728, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/mon/mon_main.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a98375b71fe0f7318b7483d81c537730")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !129, !138, !145, !152, !157, !162, !170}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !118, line: 1189, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80d6f45aac89efdd60a6063143f79a70")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128}
!120 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0)
!121 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1)
!122 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2)
!123 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3)
!124 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4)
!125 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5)
!126 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6)
!127 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7)
!128 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !118, line: 1179, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0)
!132 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1)
!133 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2)
!134 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3)
!135 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4)
!136 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5)
!137 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_ssp_rate", file: !139, line: 37, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10fa12c4560379d26e545265c72e34ff")
!140 = !{!141, !142, !143, !144}
!141 = !DIEnumerator(name: "USB_SSP_GEN_UNKNOWN", value: 0)
!142 = !DIEnumerator(name: "USB_SSP_GEN_2x1", value: 1)
!143 = !DIEnumerator(name: "USB_SSP_GEN_1x2", value: 2)
!144 = !DIEnumerator(name: "USB_SSP_GEN_2x2", value: 3)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !146, line: 95, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01f3cab1cef729fb6cd7609abdb96587")
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0)
!149 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1)
!150 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2)
!151 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_wireless_status", file: !146, line: 172, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USB_WIRELESS_STATUS_NA", value: 0)
!155 = !DIEnumerator(name: "USB_WIRELESS_STATUS_DISCONNECTED", value: 1)
!156 = !DIEnumerator(name: "USB_WIRELESS_STATUS_CONNECTED", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 10, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "false", value: 0)
!161 = !DIEnumerator(name: "true", value: 1)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !163, line: 119, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!166 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!167 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!168 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!169 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !171, line: 364, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!172 = !{!173, !174, !175, !176, !177, !178, !179}
!173 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!178 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!179 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!180 = !{!181, !182, !4652, !1144, !339, !4654, !4656, !4658}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mon_bus", file: !184, line: 18, size: 896, elements: !185)
!184 = !DIFile(filename: "drivers/usb/mon/usb_mon.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72a579227f763dfb34e3d0cc0293fc03")
!185 = !{!186, !193, !236, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "bus_link", scope: !183, file: !184, line: 19, baseType: !187, size: 128)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !188, line: 190, size: 128, elements: !189)
!188 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!189 = !{!190, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !188, line: 191, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !187, file: !188, line: 191, baseType: !191, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !183, file: !184, line: 20, baseType: !194, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !195, line: 29, baseType: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !195, line: 17, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 18, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 18, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !199, file: !195, line: 19, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !203, line: 14, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !203, line: 15, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 44, baseType: !208)
!207 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !207, line: 14, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !207, line: 15, baseType: !211, size: 32)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !207, line: 15, size: 32, elements: !212)
!212 = !{!213, !218, !228}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !211, file: !207, line: 16, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !188, line: 174, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 172, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !215, file: !188, line: 173, baseType: !85, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !207, line: 24, baseType: !219, size: 16)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !207, line: 24, size: 16, elements: !220)
!220 = !{!221, !227}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !219, file: !207, line: 25, baseType: !222, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !223, line: 17, baseType: !224)
!223 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !225, line: 21, baseType: !226)
!225 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!226 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !219, file: !207, line: 26, baseType: !222, size: 8, offset: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !207, line: 28, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !207, line: 28, size: 32, elements: !230)
!230 = !{!231, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !229, file: !207, line: 29, baseType: !232, size: 16)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !223, line: 19, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !225, line: 24, baseType: !234)
!234 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !229, file: !207, line: 30, baseType: !232, size: 16, offset: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "u_bus", scope: !183, file: !184, line: 21, baseType: !237, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !146, line: 451, size: 1152, elements: !239)
!239 = !{!240, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4338, !4634, !4635, !4636, !4637, !4638, !4639, !4640}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !238, file: !146, line: 452, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !243)
!243 = !{!244, !3961, !3962, !3965, !3966, !4019, !4104, !4105, !4106, !4107, !4108, !4115, !4207, !4220, !4230, !4234, !4236, !4237, !4238, !4242, !4249, !4250, !4253, !4256, !4260, !4263, !4264, !4265, !4266, !4267, !4268, !4298, !4299, !4300, !4303, !4306, !4315, !4316, !4317, !4318, !4319, !4320}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !242, file: !70, line: 706, baseType: !245, size: 512)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !246, line: 64, size: 512, elements: !247)
!246 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!247 = !{!248, !252, !253, !255, !302, !3848, !3951, !3956, !3957, !3958, !3959, !3960}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !246, line: 65, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !245, file: !246, line: 66, baseType: !187, size: 128, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !246, line: 67, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !245, file: !246, line: 68, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !246, line: 168, size: 768, elements: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !257, file: !246, line: 169, baseType: !187, size: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !257, file: !246, line: 170, baseType: !194, size: 32, offset: 128)
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
!271 = !{!85, !272}
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
!283 = !{!85, !272, !284}
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
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !285, file: !246, line: 128, baseType: !85, size: 32, offset: 4288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !246, line: 129, baseType: !298, size: 16384, offset: 4320)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 16384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !285, file: !246, line: 130, baseType: !85, size: 32, offset: 20704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !245, file: !246, line: 69, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !246, line: 116, size: 384, elements: !306)
!306 = !{!307, !311, !340, !3810, !3838, !3842}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !246, line: 117, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !254}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !305, file: !246, line: 118, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !315, line: 254, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!316 = !{!317, !332}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !314, file: !315, line: 255, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !254, !326, !289}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !188, line: 66, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !323, line: 73, baseType: !324)
!323 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !323, line: 15, baseType: !325)
!325 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !315, line: 30, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !315, line: 31, baseType: !249, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !327, file: !315, line: 32, baseType: !331, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !188, line: 24, baseType: !234)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !314, file: !315, line: 256, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!321, !254, !326, !249, !336}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !188, line: 61, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !323, line: 72, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !323, line: 16, baseType: !339)
!339 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !305, file: !246, line: 119, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !315, line: 84, size: 320, elements: !345)
!345 = !{!346, !347, !351, !3806, !3808}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !315, line: 85, baseType: !249, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !344, file: !315, line: 86, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!331, !254, !326, !85}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !344, file: !315, line: 88, baseType: !352, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!331, !254, !355, !85}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !315, line: 175, size: 512, elements: !357)
!357 = !{!358, !359, !360, !361, !3797, !3801, !3802}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !356, file: !315, line: 176, baseType: !327, size: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !356, file: !315, line: 177, baseType: !336, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !356, file: !315, line: 178, baseType: !181, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !356, file: !315, line: 179, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !367)
!367 = !{!368, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3791, !3792, !3793, !3794, !3795, !3796}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !366, file: !14, line: 473, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !371)
!371 = !{!372, !373, !374, !382, !383, !390, !391, !394, !395, !3569, !3570, !3571, !3572, !3573, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3613, !3616, !3617, !3618, !3627, !3628, !3629, !3630}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !370, file: !14, line: 642, baseType: !331, size: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !370, file: !14, line: 643, baseType: !234, size: 16, offset: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !370, file: !14, line: 644, baseType: !375, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !376, line: 23, baseType: !377)
!376 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 21, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !377, file: !376, line: 22, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !188, line: 37, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !323, line: 49, baseType: !7)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !370, file: !14, line: 645, baseType: !187, size: 128, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !370, file: !14, line: 646, baseType: !384, size: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !376, line: 28, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 26, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !385, file: !376, line: 27, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !188, line: 38, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !323, line: 50, baseType: !7)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !370, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !370, file: !14, line: 650, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !370, file: !14, line: 651, baseType: !392, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !370, file: !14, line: 654, baseType: !396, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !399)
!399 = !{!400, !3397, !3407, !3411, !3415, !3419, !3423, !3427, !3431, !3435, !3439, !3440, !3444, !3448, !3485, !3514, !3518, !3524, !3528, !3532, !3536, !3540, !3544, !3550, !3554}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !398, file: !14, line: 1967, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!404, !369, !404, !7}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !406, line: 82, size: 1536, elements: !407)
!406 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!407 = !{!408, !409, !419, !427, !428, !448, !449, !453, !466, !3380, !3381, !3382, !3383, !3389, !3390, !3391}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !405, file: !406, line: 84, baseType: !7, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !405, file: !406, line: 85, baseType: !410, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !411, line: 275, baseType: !412)
!411 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !411, line: 275, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !412, file: !411, line: 275, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !411, line: 69, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !411, line: 64, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !416, file: !411, line: 65, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !405, file: !406, line: 86, baseType: !420, size: 128, offset: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !421, line: 38, size: 128, elements: !422)
!421 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!422 = !{!423, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !421, line: 39, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !420, file: !421, line: 39, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !405, file: !406, line: 87, baseType: !404, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !405, file: !406, line: 88, baseType: !429, size: 128, offset: 256)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !406, line: 49, size: 128, elements: !430)
!430 = !{!431, !445}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !406, line: 50, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !406, line: 50, size: 64, elements: !433)
!433 = !{!434, !441}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !406, line: 51, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !406, line: 51, size: 64, elements: !436)
!436 = !{!437, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !435, file: !406, line: 52, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !223, line: 21, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !225, line: 27, baseType: !7)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !435, file: !406, line: 52, baseType: !438, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !432, file: !406, line: 54, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !223, line: 23, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !225, line: 31, baseType: !444)
!444 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !429, file: !406, line: 56, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !405, file: !406, line: 89, baseType: !369, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !405, file: !406, line: 91, baseType: !450, size: 256, offset: 448)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !405, file: !406, line: 94, baseType: !454, size: 64, offset: 704)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !455, line: 25, size: 64, elements: !456)
!455 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !455, line: 26, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !455, line: 26, size: 64, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !458, file: !455, line: 28, baseType: !443, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !455, line: 30, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !455, line: 30, size: 64, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !462, file: !455, line: 31, baseType: !194, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !462, file: !455, line: 32, baseType: !85, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !405, file: !406, line: 95, baseType: !467, size: 64, offset: 768)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !406, line: 128, size: 1024, align: 512, elements: !470)
!470 = !{!471, !475, !476, !483, !489, !493, !497, !501, !502, !506, !510, !3370, !3374}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !469, file: !406, line: 129, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!85, !404, !7}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !469, file: !406, line: 130, baseType: !472, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !469, file: !406, line: 131, baseType: !477, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!85, !480, !482}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !469, file: !406, line: 132, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!85, !480, !7, !249, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !469, file: !406, line: 134, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!85, !480}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !469, file: !406, line: 135, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!85, !404}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !469, file: !406, line: 136, baseType: !498, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !404}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !469, file: !406, line: 137, baseType: !498, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !469, file: !406, line: 138, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !404, !369}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !469, file: !406, line: 139, baseType: !507, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!289, !404, !289, !85}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !469, file: !406, line: 140, baseType: !511, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!514, !3369}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !516, line: 70, size: 256, elements: !517)
!516 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!517 = !{!518, !519, !3365, !3366}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !515, file: !516, line: 71, baseType: !404, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !515, file: !516, line: 72, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !522)
!522 = !{!523, !524, !527, !528, !529, !533, !1013, !1154, !1194, !1284, !1288, !1289, !1290, !1291, !1292, !1301, !1302, !1303, !1304, !1309, !1313, !1314, !1317, !1320, !1323, !1326, !1327, !1328, !1369, !3298, !3299, !3300, !3301, !3302, !3303, !3306, !3308, !3315, !3316, !3317, !3318, !3319, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !521, file: !14, line: 1191, baseType: !187, size: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !521, file: !14, line: 1192, baseType: !525, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !188, line: 21, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !188, line: 18, baseType: !438)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !521, file: !14, line: 1193, baseType: !226, size: 8, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !521, file: !14, line: 1194, baseType: !339, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !521, file: !14, line: 1195, baseType: !530, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !188, line: 52, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !323, line: 88, baseType: !532)
!532 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !521, file: !14, line: 1196, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !536)
!536 = !{!537, !538, !539, !546, !550, !554, !558, !998, !999, !1003, !1005, !1006, !1007, !1009, !1010, !1011, !1012}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !535, file: !14, line: 2367, baseType: !249, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !535, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !535, file: !14, line: 2376, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!85, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !545, line: 32, flags: DIFlagFwdDecl)
!545 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!546 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !535, file: !14, line: 2377, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !535, file: !14, line: 2378, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!404, !534, !85, !249, !181}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !535, file: !14, line: 2380, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !520}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !535, file: !14, line: 2381, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !561)
!561 = !{!562, !563, !564, !568, !590, !616, !617, !618, !619, !623, !628, !629, !649, !705, !706, !707, !708, !709, !712, !713, !714, !722, !726, !753, !774, !775, !776, !777, !786, !809, !810, !813, !816, !817, !818, !819, !820, !821, !822, !827, !828, !956, !964, !965, !966, !968, !972, !973, !977, !978, !979, !980, !982, !983, !984, !991, !992, !993, !997}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !560, file: !6, line: 403, baseType: !5, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !560, file: !6, line: 406, baseType: !187, size: 128, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !560, file: !6, line: 409, baseType: !565, size: 448, offset: 192)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 448, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 56)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !560, file: !6, line: 417, baseType: !569, size: 768, offset: 640)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !570)
!570 = !{!571, !572, !573, !574, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !569, file: !6, line: 46, baseType: !245, size: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !569, file: !6, line: 47, baseType: !559, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !569, file: !6, line: 48, baseType: !254, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !569, file: !6, line: 49, baseType: !575, size: 64, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !569, file: !6, line: 50, baseType: !578, size: 64, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !580, line: 26, size: 256, elements: !581)
!580 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !579, file: !580, line: 27, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !579, file: !580, line: 28, baseType: !584, size: 192, offset: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !585, line: 43, size: 192, elements: !586)
!585 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!586 = !{!587, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !584, file: !585, line: 44, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !203, line: 23, baseType: !202)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !584, file: !585, line: 45, baseType: !187, size: 128, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !560, file: !6, line: 418, baseType: !591, size: 64, offset: 1408)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !593)
!593 = !{!594, !595, !600, !604, !608, !612}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !592, file: !6, line: 54, baseType: !327, size: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !592, file: !6, line: 55, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!321, !591, !599, !289}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !592, file: !6, line: 57, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!321, !591, !599, !249, !336}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !592, file: !6, line: 59, baseType: !605, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !559, !249}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !592, file: !6, line: 60, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!85, !559}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !592, file: !6, line: 61, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !559}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !560, file: !6, line: 419, baseType: !249, size: 64, offset: 1472)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !560, file: !6, line: 420, baseType: !249, size: 64, offset: 1536)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !560, file: !6, line: 421, baseType: !254, size: 64, offset: 1600)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !560, file: !6, line: 424, baseType: !620, size: 64, offset: 1664)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !560, file: !6, line: 425, baseType: !624, size: 64, offset: 1728)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !223, line: 20, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !225, line: 26, baseType: !85)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !560, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !560, file: !6, line: 435, baseType: !630, size: 256, offset: 1856)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !631, line: 66, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!632 = !{!633, !642, !643, !648}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !631, line: 67, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !635, line: 13, baseType: !636)
!635 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !188, line: 181, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 179, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !637, file: !188, line: 180, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !223, line: 22, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !225, line: 30, baseType: !532)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !630, file: !631, line: 68, baseType: !588, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !630, file: !631, line: 70, baseType: !644, size: 32, offset: 96)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !645, line: 15, size: 32, elements: !646)
!645 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !644, file: !645, line: 20, baseType: !214, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !630, file: !631, line: 72, baseType: !187, size: 128, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !560, file: !6, line: 437, baseType: !650, size: 64, offset: 2112)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !652, line: 69, size: 320, elements: !653)
!652 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!653 = !{!654, !655, !656, !676, !678, !682, !683}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !651, file: !652, line: 70, baseType: !249, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !651, file: !652, line: 71, baseType: !559, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !651, file: !652, line: 72, baseType: !657, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !652, line: 47, size: 256, elements: !660)
!660 = !{!661, !662, !668, !672}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !652, line: 49, baseType: !7, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !659, file: !652, line: 51, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!85, !249, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !659, file: !652, line: 53, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!85, !289, !666}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !659, file: !652, line: 55, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !181}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !651, file: !652, line: 73, baseType: !677, size: 16, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !651, file: !652, line: 74, baseType: !679, size: 8, offset: 208)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !223, line: 16, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !225, line: 20, baseType: !681)
!681 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !652, line: 75, baseType: !222, size: 8, offset: 216)
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 76, baseType: !684, size: 64, offset: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 76, size: 64, elements: !685)
!685 = !{!686, !687, !694}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !684, file: !652, line: 77, baseType: !181, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !684, file: !652, line: 78, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !652, line: 86, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !690, file: !652, line: 87, baseType: !7, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !690, file: !652, line: 88, baseType: !289, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !684, file: !652, line: 79, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !652, line: 92, size: 256, elements: !698)
!698 = !{!699, !700, !701, !703, !704}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !697, file: !652, line: 94, baseType: !7, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !697, file: !652, line: 95, baseType: !7, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !697, file: !652, line: 96, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !697, file: !652, line: 97, baseType: !657, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !697, file: !652, line: 98, baseType: !181, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !560, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !560, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !560, file: !6, line: 442, baseType: !620, size: 64, offset: 2240)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !560, file: !6, line: 443, baseType: !624, size: 64, offset: 2304)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !560, file: !6, line: 444, baseType: !710, size: 8, offset: 2368)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !188, line: 35, baseType: !711)
!711 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !560, file: !6, line: 451, baseType: !710, size: 8, offset: 2376)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !560, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !560, file: !6, line: 455, baseType: !715, size: 64, offset: 2432)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !717, line: 23, size: 96, elements: !718)
!717 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !716, file: !717, line: 24, baseType: !85, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !716, file: !717, line: 24, baseType: !85, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !716, file: !717, line: 24, baseType: !85, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !560, file: !6, line: 458, baseType: !723, size: 64, offset: 2496)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!85}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !560, file: !6, line: 460, baseType: !727, size: 4032, align: 512, offset: 2560)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 4032, elements: !751)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !728, file: !6, line: 363, baseType: !181, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !728, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !728, file: !6, line: 367, baseType: !733, size: 448, offset: 128)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !733, file: !6, line: 320, baseType: !559, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !6, line: 321, baseType: !737, size: 384, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !738, line: 40, size: 384, elements: !739)
!738 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !738, line: 41, baseType: !741, size: 384, align: 64)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 384, align: 64, elements: !749)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !743, line: 5, size: 192, align: 64, elements: !744)
!743 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!744 = !{!745, !746, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !742, file: !743, line: 6, baseType: !339, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !742, file: !743, line: 7, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !742, file: !743, line: 8, baseType: !747, size: 64, offset: 128)
!749 = !{!750}
!750 = !DISubrange(count: 2)
!751 = !{!752}
!752 = !DISubrange(count: 7)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !560, file: !6, line: 463, baseType: !754, size: 192, offset: 6592)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !755, line: 8, size: 192, elements: !756)
!755 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!756 = !{!757, !758, !760}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !754, file: !755, line: 10, baseType: !7, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !754, file: !755, line: 11, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !754, file: !755, line: 12, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !763, line: 59, size: 48, elements: !764)
!763 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!764 = !{!765, !769, !770, !771, !772, !773}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !762, file: !763, line: 60, baseType: !766, size: 16)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !223, line: 18, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !225, line: 23, baseType: !768)
!768 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !762, file: !763, line: 61, baseType: !766, size: 16, offset: 16)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !762, file: !763, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !762, file: !763, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !763, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !762, file: !763, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !560, file: !6, line: 465, baseType: !339, size: 64, offset: 6784)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !560, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !560, file: !6, line: 470, baseType: !187, size: 128, offset: 6912)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !560, file: !6, line: 471, baseType: !778, size: 64, offset: 7040)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !780, line: 33, size: 96, elements: !781)
!780 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!781 = !{!782, !783, !784, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !779, file: !780, line: 37, baseType: !85, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !779, file: !780, line: 43, baseType: !85, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !779, file: !780, line: 45, baseType: !234, size: 16, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !780, line: 47, baseType: !234, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !560, file: !6, line: 476, baseType: !787, size: 64, offset: 7104)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !789)
!789 = !{!790, !806, !807, !808}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !788, file: !6, line: 379, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !793, line: 204, baseType: !794)
!793 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !793, line: 197, size: 192, elements: !795)
!795 = !{!796, !798, !799, !800, !802, !804}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !794, file: !793, line: 198, baseType: !797, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !793, line: 21, baseType: !439)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !794, file: !793, line: 199, baseType: !226, size: 8, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !794, file: !793, line: 200, baseType: !226, size: 8, offset: 40)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !794, file: !793, line: 201, baseType: !801, size: 16, offset: 48)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !793, line: 17, baseType: !233)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !794, file: !793, line: 202, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !793, line: 16, baseType: !443)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !794, file: !793, line: 203, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !793, line: 22, baseType: !443)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !788, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !788, file: !6, line: 381, baseType: !289, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !788, file: !6, line: 382, baseType: !289, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !560, file: !6, line: 477, baseType: !788, size: 256, offset: 7168)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !560, file: !6, line: 480, baseType: !811, size: 64, offset: 7424)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !560, file: !6, line: 483, baseType: !814, size: 64, offset: 7488)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !560, file: !6, line: 488, baseType: !289, size: 64, offset: 7552)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !560, file: !6, line: 492, baseType: !181, size: 64, offset: 7616)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !560, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !560, file: !6, line: 495, baseType: !181, size: 64, offset: 7744)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !560, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !560, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !560, file: !6, line: 500, baseType: !823, size: 64, offset: 7872)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !825, line: 45, baseType: !826)
!825 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !560, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !560, file: !6, line: 504, baseType: !829, size: 64, offset: 8000)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !832, line: 96, size: 192, elements: !833)
!832 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!833 = !{!834, !835, !916, !920}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !831, file: !832, line: 97, baseType: !7, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !831, file: !832, line: 98, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !832, line: 24, size: 3072, elements: !838)
!838 = !{!839, !841, !842, !843, !844, !868, !869, !870, !871, !889, !901, !902, !913, !914, !915}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !837, file: !832, line: 26, baseType: !840, size: 128)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 128, elements: !749)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !837, file: !832, line: 27, baseType: !840, size: 128, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !837, file: !832, line: 28, baseType: !85, size: 32, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !832, line: 31, baseType: !194, size: 32, align: 512, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !837, file: !832, line: 32, baseType: !845, size: 960, offset: 576)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !846, line: 206, size: 960, elements: !847)
!846 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!847 = !{!848, !857, !862, !864, !865, !867}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !845, file: !846, line: 207, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !188, line: 232, size: 128, align: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !188, line: 233, baseType: !849, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !850, file: !188, line: 234, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !849}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !845, file: !846, line: 208, baseType: !858, size: 256, offset: 64)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 256, elements: !860)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!860 = !{!861}
!861 = !DISubrange(count: 4)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !845, file: !846, line: 209, baseType: !863, size: 256, offset: 320)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !860)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !845, file: !846, line: 213, baseType: !325, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !845, file: !846, line: 215, baseType: !866, size: 256, offset: 640)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !860)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !846, line: 216, baseType: !222, size: 8, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !837, file: !832, line: 33, baseType: !339, size: 64, offset: 1536)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !837, file: !832, line: 34, baseType: !339, size: 64, offset: 1600)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !837, file: !832, line: 35, baseType: !710, size: 8, offset: 1664)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !837, file: !832, line: 36, baseType: !872, size: 320, offset: 1728)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !873, line: 11, size: 320, elements: !874)
!873 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!874 = !{!875, !882, !883, !888}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !872, file: !873, line: 16, baseType: !876, size: 128)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !188, line: 198, size: 128, elements: !877)
!877 = !{!878, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !188, line: 199, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !876, file: !188, line: 199, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !872, file: !873, line: 17, baseType: !339, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !872, file: !873, line: 18, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !873, line: 19, baseType: !438, size: 32, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !837, file: !832, line: 37, baseType: !890, size: 256, offset: 2048)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !891, line: 98, size: 256, elements: !892)
!891 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !890, file: !891, line: 99, baseType: !634, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !890, file: !891, line: 100, baseType: !187, size: 128, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !890, file: !891, line: 101, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !891, line: 21, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !837, file: !832, line: 38, baseType: !850, size: 128, align: 64, offset: 2304)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !837, file: !832, line: 39, baseType: !903, size: 64, offset: 2432)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !832, line: 49, size: 768, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !832, line: 50, baseType: !194, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !904, file: !832, line: 51, baseType: !863, size: 256, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !904, file: !832, line: 53, baseType: !863, size: 256, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !904, file: !832, line: 54, baseType: !339, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !904, file: !832, line: 55, baseType: !903, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !904, file: !832, line: 56, baseType: !85, size: 32, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !904, file: !832, line: 57, baseType: !85, size: 32, offset: 736)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !837, file: !832, line: 40, baseType: !339, size: 64, offset: 2496)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !837, file: !832, line: 42, baseType: !85, size: 32, offset: 2560)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !837, file: !832, line: 43, baseType: !830, size: 64, offset: 2624)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !831, file: !832, line: 99, baseType: !917, offset: 128)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !918, line: 211, elements: !919)
!918 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!919 = !{}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !831, file: !832, line: 100, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !832, line: 63, size: 3008, elements: !923)
!923 = !{!924, !925, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !955}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !922, file: !832, line: 64, baseType: !903, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !922, file: !832, line: 65, baseType: !926, size: 192, offset: 64)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 192, elements: !290)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !922, file: !832, line: 67, baseType: !85, size: 32, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !922, file: !832, line: 68, baseType: !630, size: 256, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !922, file: !832, line: 69, baseType: !194, size: 32, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !922, file: !832, line: 70, baseType: !630, size: 256, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !922, file: !832, line: 71, baseType: !339, size: 64, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !922, file: !832, line: 72, baseType: !339, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !922, file: !832, line: 73, baseType: !339, size: 64, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !922, file: !832, line: 74, baseType: !339, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !922, file: !832, line: 75, baseType: !339, size: 64, offset: 1152)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !922, file: !832, line: 76, baseType: !339, size: 64, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !922, file: !832, line: 77, baseType: !339, size: 64, offset: 1280)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !922, file: !832, line: 78, baseType: !339, size: 64, offset: 1344)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !922, file: !832, line: 79, baseType: !710, size: 8, offset: 1408)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !922, file: !832, line: 80, baseType: !339, size: 64, offset: 1472)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !922, file: !832, line: 81, baseType: !630, size: 256, offset: 1536)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !922, file: !832, line: 82, baseType: !579, size: 256, offset: 1792)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !922, file: !832, line: 84, baseType: !214, size: 32, offset: 2048)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !922, file: !832, line: 87, baseType: !339, size: 64, offset: 2112)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !922, file: !832, line: 88, baseType: !339, size: 64, offset: 2176)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !922, file: !832, line: 89, baseType: !947, size: 704, offset: 2240)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !891, line: 111, size: 704, elements: !948)
!948 = !{!949, !950, !951, !954}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !947, file: !891, line: 112, baseType: !890, size: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !947, file: !891, line: 113, baseType: !872, size: 320, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !947, file: !891, line: 116, baseType: !952, size: 64, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !891, line: 18, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !947, file: !891, line: 117, baseType: !85, size: 32, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !922, file: !832, line: 90, baseType: !830, size: 64, offset: 2944)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !560, file: !6, line: 515, baseType: !957, size: 64, offset: 8064)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !959, line: 117, size: 128, elements: !960)
!959 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !958, file: !959, line: 118, baseType: !626, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !958, file: !959, line: 119, baseType: !626, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !958, file: !959, line: 120, baseType: !325, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !560, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !560, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !560, file: !6, line: 520, baseType: !967, size: 64, offset: 8192)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !560, file: !6, line: 523, baseType: !969, size: 64, offset: 8256)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !560, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !560, file: !6, line: 525, baseType: !974, size: 64, offset: 8384)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !560, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !560, file: !6, line: 533, baseType: !181, size: 64, offset: 8512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !560, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !560, file: !6, line: 535, baseType: !981, size: 64, offset: 8640)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !560, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !560, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !560, file: !6, line: 540, baseType: !985, size: 64, offset: 8768)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !987, line: 32, size: 64, elements: !988)
!987 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !986, file: !987, line: 33, baseType: !626, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !986, file: !987, line: 34, baseType: !626, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !560, file: !6, line: 563, baseType: !187, size: 128, offset: 8832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !560, file: !6, line: 565, baseType: !187, size: 128, offset: 8960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !560, file: !6, line: 568, baseType: !994, size: 64, offset: 9088)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !560, file: !6, line: 570, baseType: !214, size: 32, offset: 9152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !14, line: 2382, baseType: !534, size: 64, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !535, file: !14, line: 2383, baseType: !1000, size: 64, offset: 512)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !188, line: 194, size: 64, elements: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1000, file: !188, line: 195, baseType: !879, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !535, file: !14, line: 2385, baseType: !1004, offset: 576)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !918, line: 206, elements: !919)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !535, file: !14, line: 2386, baseType: !1004, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !535, file: !14, line: 2387, baseType: !1004, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !535, file: !14, line: 2388, baseType: !1008, offset: 576)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, elements: !290)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !535, file: !14, line: 2390, baseType: !1004, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !535, file: !14, line: 2391, baseType: !1004, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !535, file: !14, line: 2392, baseType: !1004, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !535, file: !14, line: 2393, baseType: !1004, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !521, file: !14, line: 1197, baseType: !1014, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1017)
!1017 = !{!1018, !1022, !1026, !1027, !1031, !1037, !1041, !1042, !1043, !1047, !1051, !1055, !1056, !1057, !1063, !1067, !1068, !1075, !1076, !1077, !1078, !1082, !1086, !1135, !1152, !1153}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1016, file: !14, line: 2058, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!369, !520}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1016, file: !14, line: 2059, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !369}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1016, file: !14, line: 2060, baseType: !1023, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1016, file: !14, line: 2062, baseType: !1028, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !369, !85}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1016, file: !14, line: 2063, baseType: !1032, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!85, !369, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1016, file: !14, line: 2064, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!85, !369}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1016, file: !14, line: 2065, baseType: !1023, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1016, file: !14, line: 2066, baseType: !555, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1016, file: !14, line: 2067, baseType: !1044, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!85, !520, !85}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1016, file: !14, line: 2068, baseType: !1048, size: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!85, !520, !13}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1016, file: !14, line: 2069, baseType: !1052, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!85, !520}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1016, file: !14, line: 2070, baseType: !1048, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1016, file: !14, line: 2071, baseType: !1052, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1016, file: !14, line: 2072, baseType: !1058, size: 64, offset: 832)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!85, !404, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1016, file: !14, line: 2073, baseType: !1064, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!85, !520, !759, !289}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1016, file: !14, line: 2074, baseType: !555, size: 64, offset: 960)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1016, file: !14, line: 2076, baseType: !1069, size: 64, offset: 1024)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!85, !1072, !404}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1074, line: 66, flags: DIFlagFwdDecl)
!1074 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1016, file: !14, line: 2077, baseType: !1069, size: 64, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1016, file: !14, line: 2078, baseType: !1069, size: 64, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1016, file: !14, line: 2079, baseType: !1069, size: 64, offset: 1216)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1016, file: !14, line: 2081, baseType: !1079, size: 64, offset: 1280)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!321, !520, !85, !289, !336, !530}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1016, file: !14, line: 2082, baseType: !1083, size: 64, offset: 1344)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!321, !520, !85, !249, !336, !530}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1016, file: !14, line: 2083, baseType: !1087, size: 64, offset: 1408)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1090, !369}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1118, !1119, !1120}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1092, file: !19, line: 297, baseType: !876, size: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1092, file: !19, line: 298, baseType: !187, size: 128, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1092, file: !19, line: 299, baseType: !187, size: 128, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1092, file: !19, line: 300, baseType: !187, size: 128, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1092, file: !19, line: 301, baseType: !630, size: 256, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1092, file: !19, line: 302, baseType: !194, size: 32, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1092, file: !19, line: 303, baseType: !214, size: 32, offset: 800)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1092, file: !19, line: 304, baseType: !520, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1092, file: !19, line: 305, baseType: !1103, size: 64, offset: 896)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1104)
!1104 = !{!1105, !1117}
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !19, line: 69, baseType: !1106, size: 32)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !19, line: 69, size: 32, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1106, file: !19, line: 70, baseType: !375, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1106, file: !19, line: 71, baseType: !384, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1106, file: !19, line: 72, baseType: !1111, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1112, line: 24, baseType: !1113)
!1112 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1112, line: 22, size: 32, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1113, file: !1112, line: 23, baseType: !1116, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1112, line: 20, baseType: !381)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1092, file: !19, line: 306, baseType: !530, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1092, file: !19, line: 307, baseType: !339, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1092, file: !19, line: 308, baseType: !1121, size: 576, offset: 1088)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1122)
!1122 = !{!1123, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1134}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1121, file: !19, line: 206, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !532)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1121, file: !19, line: 207, baseType: !1124, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1121, file: !19, line: 208, baseType: !1124, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1121, file: !19, line: 209, baseType: !1124, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1121, file: !19, line: 210, baseType: !1124, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1121, file: !19, line: 211, baseType: !1124, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1121, file: !19, line: 212, baseType: !1124, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1121, file: !19, line: 213, baseType: !1132, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1133, line: 8, baseType: !641)
!1133 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1121, file: !19, line: 214, baseType: !1132, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1016, file: !14, line: 2085, baseType: !1136, size: 64, offset: 1472)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!325, !520, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1141, line: 15, size: 256, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1142 = !{!1143, !1145, !1146, !1147, !1148}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1140, file: !1141, line: 16, baseType: !1144, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !188, line: 154, baseType: !7)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1140, file: !1141, line: 19, baseType: !85, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1140, file: !1141, line: 26, baseType: !339, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1140, file: !1141, line: 33, baseType: !339, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1140, file: !1141, line: 36, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1151, line: 33, flags: DIFlagFwdDecl)
!1151 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1016, file: !14, line: 2087, baseType: !1136, size: 64, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1016, file: !14, line: 2089, baseType: !555, size: 64, offset: 1600)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !521, file: !14, line: 1198, baseType: !1155, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1158)
!1158 = !{!1159, !1163, !1167, !1171, !1172, !1173, !1174, !1175, !1180, !1185, !1189}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1157, file: !19, line: 325, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!85, !1091}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1157, file: !19, line: 326, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1091, !520, !85}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1157, file: !19, line: 327, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1091}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1157, file: !19, line: 328, baseType: !1160, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1157, file: !19, line: 329, baseType: !1160, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1157, file: !19, line: 330, baseType: !1160, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1157, file: !19, line: 331, baseType: !1044, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1157, file: !19, line: 334, baseType: !1176, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !369}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1157, file: !19, line: 335, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!85, !369, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1157, file: !19, line: 337, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!85, !369, !1179}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1157, file: !19, line: 339, baseType: !1190, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!85, !520, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !521, file: !14, line: 1199, baseType: !1195, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1198)
!1198 = !{!1199, !1210, !1211, !1215, !1216, !1217, !1232, !1255, !1259, !1260, !1283}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1197, file: !19, line: 431, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!85, !520, !85, !85, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1206, line: 8, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1205, file: !1206, line: 9, baseType: !514, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1205, file: !1206, line: 10, baseType: !404, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1197, file: !19, line: 432, baseType: !1044, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1197, file: !19, line: 433, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!85, !520, !7}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1197, file: !19, line: 434, baseType: !1212, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1197, file: !19, line: 435, baseType: !1044, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1197, file: !19, line: 436, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!85, !520, !85, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1222, file: !19, line: 418, baseType: !85, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1222, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1222, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1222, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1222, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1222, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1222, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1222, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1197, file: !19, line: 437, baseType: !1233, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!85, !520, !1103, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1237, file: !19, line: 346, baseType: !85, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1237, file: !19, line: 347, baseType: !442, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1237, file: !19, line: 348, baseType: !442, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1237, file: !19, line: 349, baseType: !442, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1237, file: !19, line: 350, baseType: !442, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1237, file: !19, line: 351, baseType: !442, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1237, file: !19, line: 352, baseType: !442, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1237, file: !19, line: 353, baseType: !640, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1237, file: !19, line: 355, baseType: !640, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1237, file: !19, line: 356, baseType: !85, size: 32, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1237, file: !19, line: 357, baseType: !85, size: 32, offset: 608)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1237, file: !19, line: 358, baseType: !442, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1237, file: !19, line: 359, baseType: !442, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1237, file: !19, line: 360, baseType: !442, size: 64, offset: 768)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1237, file: !19, line: 361, baseType: !640, size: 64, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1237, file: !19, line: 362, baseType: !85, size: 32, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1197, file: !19, line: 438, baseType: !1256, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!85, !520, !1193, !1236}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1197, file: !19, line: 440, baseType: !1233, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1197, file: !19, line: 441, baseType: !1261, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!85, !520, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1265, file: !19, line: 412, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1265, file: !19, line: 413, baseType: !1269, size: 1344, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 1344, elements: !290)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1282}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !19, line: 398, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1270, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1270, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1270, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1270, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1270, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1270, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1270, file: !19, line: 406, baseType: !444, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1270, file: !19, line: 407, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !188, line: 132, baseType: !442)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1270, file: !19, line: 408, baseType: !1281, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1197, file: !19, line: 442, baseType: !1212, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !521, file: !14, line: 1200, baseType: !1285, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !521, file: !14, line: 1201, baseType: !339, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !521, file: !14, line: 1202, baseType: !339, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !521, file: !14, line: 1203, baseType: !339, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !521, file: !14, line: 1204, baseType: !404, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !521, file: !14, line: 1205, baseType: !1293, size: 320, offset: 896)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1294, line: 48, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1293, file: !1294, line: 49, baseType: !634, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1293, file: !1294, line: 55, baseType: !634, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1293, file: !1294, line: 57, baseType: !644, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1293, file: !1294, line: 59, baseType: !588, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1293, file: !1294, line: 60, baseType: !187, size: 128, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !521, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !521, file: !14, line: 1207, baseType: !214, size: 32, offset: 1248)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !521, file: !14, line: 1209, baseType: !181, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !521, file: !14, line: 1211, baseType: !1305, size: 64, offset: 1344)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !521, file: !14, line: 1223, baseType: !1310, size: 64, offset: 1408)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !421, line: 34, size: 64, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1310, file: !421, line: 35, baseType: !424, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !521, file: !14, line: 1224, baseType: !187, size: 128, offset: 1472)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !521, file: !14, line: 1225, baseType: !1315, size: 64, offset: 1600)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !521, file: !14, line: 1226, baseType: !1318, size: 64, offset: 1664)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !521, file: !14, line: 1227, baseType: !1321, size: 64, offset: 1728)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !521, file: !14, line: 1228, baseType: !1324, size: 64, offset: 1792)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !521, file: !14, line: 1229, baseType: !876, size: 128, offset: 1856)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !521, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !521, file: !14, line: 1231, baseType: !1329, size: 2496, offset: 2048)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1335, !1367}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1329, file: !19, line: 522, baseType: !7, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1329, file: !19, line: 523, baseType: !1293, size: 320, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1329, file: !19, line: 524, baseType: !1334, size: 192, offset: 384)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 192, elements: !290)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1329, file: !19, line: 525, baseType: !1336, size: 1728, offset: 576)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 1728, elements: !290)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1338)
!1338 = !{!1339, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1337, file: !19, line: 223, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1342)
!1342 = !{!1343, !1344, !1357, !1358}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1341, file: !19, line: 446, baseType: !85, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1341, file: !19, line: 447, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1347, file: !19, line: 313, baseType: !1044, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1347, file: !19, line: 314, baseType: !1044, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1347, file: !19, line: 315, baseType: !1044, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1347, file: !19, line: 316, baseType: !1044, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1347, file: !19, line: 317, baseType: !1160, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1347, file: !19, line: 318, baseType: !1160, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1347, file: !19, line: 319, baseType: !1160, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1347, file: !19, line: 320, baseType: !1190, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1341, file: !19, line: 448, baseType: !559, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1341, file: !19, line: 449, baseType: !1340, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1337, file: !19, line: 224, baseType: !85, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1337, file: !19, line: 226, baseType: !187, size: 128, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1337, file: !19, line: 227, baseType: !339, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1337, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1337, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1337, file: !19, line: 230, baseType: !1124, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1337, file: !19, line: 231, baseType: !1124, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1337, file: !19, line: 232, baseType: !181, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1329, file: !19, line: 526, baseType: !1368, size: 192, offset: 2304)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 192, elements: !290)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !521, file: !14, line: 1233, baseType: !1370, size: 2368, offset: 4544)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1370, file: !14, line: 1185, baseType: !234, size: 16)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1370, file: !14, line: 1186, baseType: !234, size: 16, offset: 16)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1370, file: !14, line: 1187, baseType: !1375, size: 2304, offset: 64)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 2304, elements: !290)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1377, line: 12, size: 768, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1378 = !{!1379, !1393, !1394, !3296, !3297}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1376, file: !1377, line: 13, baseType: !1380, size: 384)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1381, line: 17, size: 384, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1382 = !{!1383, !1384, !1385, !1392}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1380, file: !1381, line: 18, baseType: !85, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1380, file: !1381, line: 19, baseType: !85, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1380, file: !1381, line: 20, baseType: !1386, size: 192, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1387, line: 41, baseType: !1388)
!1387 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1387, line: 37, size: 192, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !1387, line: 38, baseType: !194, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1388, file: !1387, line: 39, baseType: !187, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1380, file: !1381, line: 22, baseType: !850, size: 128, align: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1376, file: !1377, line: 14, baseType: !702, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1376, file: !1377, line: 15, baseType: !1395, size: 64, offset: 448)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1396, line: 16, size: 64, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1395, file: !1396, line: 17, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1074, line: 746, size: 58368, elements: !1401)
!1401 = !{!1402, !1410, !1411, !1412, !1417, !1418, !1419, !1420, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1491, !1502, !1597, !1601, !1604, !1635, !1636, !1637, !1638, !1649, !1651, !1652, !1653, !1654, !1655, !1656, !1667, !1668, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1685, !1686, !1693, !1694, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2422, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2470, !2476, !2477, !2478, !2479, !2480, !2484, !2487, !2494, !2499, !2502, !2505, !2508, !2512, !2650, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2688, !2689, !2690, !2699, !2707, !2708, !2709, !2710, !2711, !2716, !2717, !2718, !2721, !2722, !2725, !2728, !2731, !2739, !2742, !2743, !2829, !2830, !2831, !2832, !2833, !2839, !2840, !2841, !2842, !2845, !2846, !2849, !2852, !2853, !2856, !2857, !2858, !2861, !2862, !2863, !2864, !2865, !2866, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2898, !2899, !2965, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2977, !3049, !3051, !3052, !3053, !3054, !3055, !3056, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3073, !3074, !3075}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1400, file: !1074, line: 752, baseType: !1403, size: 192)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1404, line: 56, size: 192, elements: !1405)
!1404 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !1404, line: 57, baseType: !339, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1403, file: !1404, line: 58, baseType: !339, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1403, file: !1404, line: 59, baseType: !438, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1403, file: !1404, line: 61, baseType: !438, size: 32, offset: 160)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1400, file: !1074, line: 754, baseType: !7, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1400, file: !1074, line: 767, baseType: !181, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1400, file: !1074, line: 768, baseType: !1413, size: 32, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !163, line: 113, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !163, line: 111, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1414, file: !163, line: 112, baseType: !214, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !1074, line: 770, baseType: !7, size: 32, offset: 352)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1400, file: !1074, line: 771, baseType: !7, size: 32, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1400, file: !1074, line: 774, baseType: !85, size: 32, offset: 416)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1400, file: !1074, line: 775, baseType: !1421, size: 128, offset: 448)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1422, line: 58, size: 128, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1423 = !{!1424, !1430, !1435, !1436}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1421, file: !1422, line: 59, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1426, line: 60, size: 64, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1425, file: !1426, line: 61, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !1422, line: 60, baseType: !1431, size: 32, offset: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !1422, line: 60, size: 32, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1431, file: !1422, line: 61, baseType: !7, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1431, file: !1422, line: 62, baseType: !214, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1421, file: !1422, line: 65, baseType: !232, size: 16, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1421, file: !1422, line: 65, baseType: !232, size: 16, offset: 112)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1400, file: !1074, line: 776, baseType: !7, size: 32, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1400, file: !1074, line: 777, baseType: !339, size: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1400, file: !1074, line: 778, baseType: !1399, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1400, file: !1074, line: 787, baseType: !85, size: 32, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1400, file: !1074, line: 788, baseType: !85, size: 32, offset: 800)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1400, file: !1074, line: 790, baseType: !85, size: 32, offset: 832)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1400, file: !1074, line: 792, baseType: !85, size: 32, offset: 864)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1400, file: !1074, line: 793, baseType: !85, size: 32, offset: 896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1400, file: !1074, line: 794, baseType: !85, size: 32, offset: 928)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1400, file: !1074, line: 795, baseType: !7, size: 32, offset: 960)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1400, file: !1074, line: 797, baseType: !1448, size: 2048, offset: 1024)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1074, line: 551, size: 2048, elements: !1449)
!1449 = !{!1450, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1470, !1473, !1474, !1475}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1448, file: !1074, line: 553, baseType: !1451, size: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1074, line: 411, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1451, file: !1074, line: 412, baseType: !339, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1451, file: !1074, line: 413, baseType: !438, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1448, file: !1074, line: 554, baseType: !742, size: 192, align: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1448, file: !1074, line: 555, baseType: !442, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1448, file: !1074, line: 556, baseType: !442, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1448, file: !1074, line: 558, baseType: !187, size: 128, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1448, file: !1074, line: 559, baseType: !7, size: 32, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1448, file: !1074, line: 561, baseType: !442, size: 64, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1448, file: !1074, line: 562, baseType: !442, size: 64, offset: 704)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1448, file: !1074, line: 563, baseType: !442, size: 64, offset: 768)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1448, file: !1074, line: 564, baseType: !442, size: 64, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1448, file: !1074, line: 565, baseType: !640, size: 64, offset: 896)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1448, file: !1074, line: 566, baseType: !442, size: 64, offset: 960)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1448, file: !1074, line: 568, baseType: !442, size: 64, offset: 1024)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1448, file: !1074, line: 571, baseType: !85, size: 32, offset: 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1448, file: !1074, line: 572, baseType: !1469, size: 64, offset: 1152)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1448, file: !1074, line: 574, baseType: !1471, size: 64, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1074, line: 49, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1448, file: !1074, line: 576, baseType: !1471, size: 64, offset: 1280)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1448, file: !1074, line: 578, baseType: !339, size: 64, offset: 1344)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1448, file: !1074, line: 588, baseType: !1476, size: 512, align: 512, offset: 1536)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1074, line: 497, size: 512, align: 512, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1476, file: !1074, line: 498, baseType: !442, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1476, file: !1074, line: 499, baseType: !442, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1476, file: !1074, line: 500, baseType: !442, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1476, file: !1074, line: 501, baseType: !438, size: 32, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1476, file: !1074, line: 502, baseType: !438, size: 32, offset: 224)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1476, file: !1074, line: 503, baseType: !339, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1476, file: !1074, line: 504, baseType: !339, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1476, file: !1074, line: 505, baseType: !339, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1476, file: !1074, line: 506, baseType: !1487, size: 64, align: 64, offset: 448)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1074, line: 445, size: 64, align: 64, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1487, file: !1074, line: 446, baseType: !7, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1487, file: !1074, line: 447, baseType: !7, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1400, file: !1074, line: 798, baseType: !1492, size: 384, offset: 3072)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1074, line: 592, size: 384, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1492, file: !1074, line: 593, baseType: !187, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1492, file: !1074, line: 594, baseType: !339, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1492, file: !1074, line: 595, baseType: !339, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1492, file: !1074, line: 596, baseType: !7, size: 32, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1492, file: !1074, line: 597, baseType: !234, size: 16, offset: 288)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1492, file: !1074, line: 598, baseType: !234, size: 16, offset: 304)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1492, file: !1074, line: 600, baseType: !1501, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1400, file: !1074, line: 799, baseType: !1503, size: 1792, offset: 3456)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1074, line: 610, size: 1792, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1594, !1595}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1503, file: !1074, line: 611, baseType: !742, size: 192, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1503, file: !1074, line: 618, baseType: !442, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1503, file: !1074, line: 619, baseType: !442, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1503, file: !1074, line: 620, baseType: !442, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1503, file: !1074, line: 621, baseType: !442, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1503, file: !1074, line: 622, baseType: !442, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1503, file: !1074, line: 629, baseType: !640, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1503, file: !1074, line: 630, baseType: !442, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !1074, line: 631, baseType: !7, size: 32, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1503, file: !1074, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1503, file: !1074, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1503, file: !1074, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1503, file: !1074, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1503, file: !1074, line: 662, baseType: !1519, size: 512, offset: 704)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1520)
!1520 = !{!1521, !1529, !1530, !1535, !1590, !1591, !1592, !1593}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1519, file: !25, line: 119, baseType: !1522, size: 256)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1523, line: 9, size: 256, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1522, file: !1523, line: 10, baseType: !742, size: 192, align: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1522, file: !1523, line: 11, baseType: !1527, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1528, line: 29, baseType: !640)
!1528 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1519, file: !25, line: 120, baseType: !1527, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1519, file: !25, line: 121, baseType: !1531, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!24, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1519, file: !25, line: 122, baseType: !1536, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1538)
!1538 = !{!1539, !1564, !1565, !1568, !1573, !1574, !1585, !1589}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1537, file: !25, line: 160, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !25, line: 216, baseType: !588, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1541, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1541, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1541, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1541, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1541, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1541, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1541, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1541, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1541, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1541, file: !25, line: 227, baseType: !234, size: 16, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1541, file: !25, line: 228, baseType: !234, size: 16, offset: 208)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1541, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1541, file: !25, line: 235, baseType: !1527, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1541, file: !25, line: 236, baseType: !1534, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1541, file: !25, line: 237, baseType: !1527, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1541, file: !25, line: 238, baseType: !1534, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1541, file: !25, line: 239, baseType: !1561, size: 4096, align: 512, offset: 512)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 4096, align: 512, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 8)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1537, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1537, file: !25, line: 162, baseType: !1566, size: 32, offset: 96)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !188, line: 32, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !323, line: 96, baseType: !85)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1537, file: !25, line: 163, baseType: !1569, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !411, line: 274, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !411, line: 274, size: 32, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1570, file: !411, line: 274, baseType: !415, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1537, file: !25, line: 164, baseType: !1534, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1537, file: !25, line: 165, baseType: !1575, size: 128, offset: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1523, line: 14, size: 128, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1575, file: !1523, line: 15, baseType: !1578, size: 128)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !743, line: 26, size: 128, elements: !1579)
!1579 = !{!1580, !1584}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1578, file: !743, line: 27, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !743, line: 12, size: 64, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1581, file: !743, line: 13, baseType: !747, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1578, file: !743, line: 28, baseType: !747, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1537, file: !25, line: 166, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1527}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1537, file: !25, line: 167, baseType: !1527, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1519, file: !25, line: 123, baseType: !222, size: 8, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1519, file: !25, line: 124, baseType: !222, size: 8, offset: 456)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1519, file: !25, line: 125, baseType: !222, size: 8, offset: 464)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1519, file: !25, line: 126, baseType: !222, size: 8, offset: 472)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1503, file: !1074, line: 671, baseType: !1519, size: 512, offset: 1216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1503, file: !1074, line: 679, baseType: !1596, size: 64, offset: 1728)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1400, file: !1074, line: 800, baseType: !1598, size: 64, offset: 5248)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1074, line: 800, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1400, file: !1074, line: 809, baseType: !1602, size: 64, offset: 5312)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1074, line: 70, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1400, file: !1074, line: 825, baseType: !1605, size: 2048, align: 512, offset: 5632)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1074, line: 509, size: 2048, align: 512, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1605, file: !1074, line: 511, baseType: !442, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1605, file: !1074, line: 512, baseType: !442, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1605, file: !1074, line: 513, baseType: !442, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1605, file: !1074, line: 514, baseType: !442, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1605, file: !1074, line: 515, baseType: !442, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1605, file: !1074, line: 516, baseType: !442, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1605, file: !1074, line: 518, baseType: !442, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1605, file: !1074, line: 519, baseType: !442, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1605, file: !1074, line: 520, baseType: !640, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1605, file: !1074, line: 522, baseType: !442, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1605, file: !1074, line: 523, baseType: !442, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1605, file: !1074, line: 524, baseType: !640, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1605, file: !1074, line: 526, baseType: !640, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1605, file: !1074, line: 527, baseType: !442, size: 64, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1605, file: !1074, line: 529, baseType: !442, size: 64, offset: 896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1605, file: !1074, line: 530, baseType: !442, size: 64, offset: 960)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1605, file: !1074, line: 531, baseType: !442, size: 64, offset: 1024)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1605, file: !1074, line: 532, baseType: !442, size: 64, offset: 1088)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1605, file: !1074, line: 533, baseType: !442, size: 64, offset: 1152)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1605, file: !1074, line: 535, baseType: !442, size: 64, offset: 1216)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1605, file: !1074, line: 536, baseType: !442, size: 64, offset: 1280)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1605, file: !1074, line: 537, baseType: !442, size: 64, offset: 1344)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1605, file: !1074, line: 538, baseType: !442, size: 64, offset: 1408)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1605, file: !1074, line: 539, baseType: !442, size: 64, offset: 1472)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1605, file: !1074, line: 540, baseType: !442, size: 64, offset: 1536)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1605, file: !1074, line: 541, baseType: !442, size: 64, offset: 1600)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1605, file: !1074, line: 542, baseType: !442, size: 64, offset: 1664)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1605, file: !1074, line: 543, baseType: !442, size: 64, offset: 1728)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1400, file: !1074, line: 833, baseType: !7, size: 32, offset: 7680)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1400, file: !1074, line: 836, baseType: !7, size: 32, offset: 7712)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1400, file: !1074, line: 837, baseType: !85, size: 32, offset: 7744)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1400, file: !1074, line: 838, baseType: !1639, size: 64, offset: 7808)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1642, line: 19, baseType: !1643)
!1642 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1642, line: 19, size: 64, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1643, file: !1642, line: 19, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !1647)
!1647 = !{!1648}
!1648 = !DISubrange(count: 1)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1400, file: !1074, line: 839, baseType: !1650, size: 64, offset: 7872)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1400, file: !1074, line: 840, baseType: !1641, size: 64, offset: 7936)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1400, file: !1074, line: 841, baseType: !181, size: 64, offset: 8000)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1400, file: !1074, line: 843, baseType: !234, size: 16, offset: 8064)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1400, file: !1074, line: 845, baseType: !234, size: 16, offset: 8080)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1400, file: !1074, line: 848, baseType: !85, size: 32, offset: 8096)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1400, file: !1074, line: 849, baseType: !1657, size: 32, offset: 8128)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1074, line: 718, size: 32, elements: !1658)
!1658 = !{!1659, !1666}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1657, file: !1074, line: 724, baseType: !1660, size: 32)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1074, line: 719, size: 32, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1660, file: !1074, line: 720, baseType: !222, size: 8)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1660, file: !1074, line: 721, baseType: !222, size: 8, offset: 8)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1660, file: !1074, line: 722, baseType: !222, size: 8, offset: 16)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1660, file: !1074, line: 723, baseType: !222, size: 8, offset: 24)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1657, file: !1074, line: 725, baseType: !438, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1400, file: !1074, line: 850, baseType: !187, size: 128, offset: 8192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1400, file: !1074, line: 851, baseType: !1669, size: 64, offset: 8320)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1074, line: 60, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1400, file: !1074, line: 855, baseType: !339, size: 64, offset: 8384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1400, file: !1074, line: 856, baseType: !222, size: 8, offset: 8448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1400, file: !1074, line: 857, baseType: !222, size: 8, offset: 8456)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1400, file: !1074, line: 858, baseType: !85, size: 32, offset: 8480)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1400, file: !1074, line: 859, baseType: !187, size: 128, offset: 8512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1400, file: !1074, line: 860, baseType: !85, size: 32, offset: 8640)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1400, file: !1074, line: 861, baseType: !187, size: 128, offset: 8704)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1400, file: !1074, line: 873, baseType: !1679, size: 256, offset: 8832)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1074, line: 376, size: 256, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1679, file: !1074, line: 381, baseType: !339, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1679, file: !1074, line: 384, baseType: !444, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1679, file: !1074, line: 389, baseType: !444, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1679, file: !1074, line: 392, baseType: !444, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1400, file: !1074, line: 875, baseType: !187, size: 128, offset: 9088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1400, file: !1074, line: 877, baseType: !1687, size: 320, offset: 9216)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1688, line: 86, size: 320, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1687, file: !1688, line: 87, baseType: !85, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1687, file: !1688, line: 88, baseType: !187, size: 128, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1687, file: !1688, line: 89, baseType: !187, size: 128, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1400, file: !1074, line: 878, baseType: !742, size: 192, align: 64, offset: 9536)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1400, file: !1074, line: 881, baseType: !1695, size: 64, offset: 9728)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1151, line: 733, size: 10240, elements: !1697)
!1697 = !{!1698, !2341}
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1151, line: 734, baseType: !1699, size: 10240)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1151, line: 734, size: 10240, elements: !1700)
!1700 = !{!1701, !1705, !1718, !2218, !2219, !2220, !2221, !2222, !2223, !2230, !2231, !2232, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2271, !2273, !2276, !2321, !2322, !2323, !2326, !2327, !2328, !2331, !2332, !2333, !2339, !2340}
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1151, line: 739, baseType: !1702, size: 512, align: 512)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !1151, line: 739, size: 512, align: 512, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1702, file: !1151, line: 747, baseType: !214, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1699, file: !1151, line: 750, baseType: !1706, size: 128, offset: 512)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1707, line: 218, size: 128, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1708 = !{!1709, !1716, !1717}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 219, baseType: !1710, size: 32)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 219, size: 32, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1710, file: !1707, line: 220, baseType: !194, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1710, file: !1707, line: 221, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1707, line: 197, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1707, line: 197, elements: !919)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1706, file: !1707, line: 223, baseType: !7, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1706, file: !1707, line: 224, baseType: !181, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1699, file: !1151, line: 752, baseType: !1719, size: 64, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!339, !1722, !339, !339, !339, !339}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1724)
!1724 = !{!1725, !1731, !1732, !1734, !1735, !1736, !1737, !1738, !1788, !1978, !1987, !1988, !1989, !2208, !2209, !2210, !2211, !2213, !2214, !2217}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !14, line: 995, baseType: !1726, size: 128)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !14, line: 995, size: 128, elements: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1726, file: !14, line: 996, baseType: !1425, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1726, file: !14, line: 997, baseType: !850, size: 128, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1726, file: !14, line: 998, baseType: !7, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1723, file: !14, line: 1005, baseType: !194, size: 32, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1723, file: !14, line: 1006, baseType: !1733, size: 32, offset: 160)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !188, line: 156, baseType: !7)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1723, file: !14, line: 1007, baseType: !634, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1723, file: !14, line: 1008, baseType: !630, size: 256, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1723, file: !14, line: 1009, baseType: !530, size: 64, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1723, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1723, file: !14, line: 1011, baseType: !1739, size: 256, offset: 640)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1740)
!1740 = !{!1741, !1762, !1784, !1785, !1786, !1787}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !14, line: 949, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1743, line: 34, baseType: !1744)
!1743 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1743, line: 25, size: 64, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1744, file: !1743, line: 26, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1748, line: 27, baseType: !1749)
!1748 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1748, line: 13, size: 64, elements: !1750)
!1750 = !{!1751, !1761}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !1748, line: 14, baseType: !1752, size: 32)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1749, file: !1748, line: 14, size: 32, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1752, file: !1748, line: 15, baseType: !214, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1748, line: 16, baseType: !1756, size: 32)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !1748, line: 16, size: 32, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1756, file: !1748, line: 18, baseType: !222, size: 8)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1756, file: !1748, line: 19, baseType: !1760, size: 24, offset: 8)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 24, elements: !290)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1749, file: !1748, line: 26, baseType: !206, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1739, file: !14, line: 950, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1771, !1772, !1773, !1774}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1764, file: !30, line: 61, baseType: !1413, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1764, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1764, file: !30, line: 63, baseType: !194, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1764, file: !30, line: 65, baseType: !1770, size: 256, offset: 128)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 256, elements: !860)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1764, file: !30, line: 66, baseType: !1000, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1764, file: !30, line: 68, baseType: !1386, size: 192, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1764, file: !30, line: 69, baseType: !850, size: 128, align: 64, offset: 640)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1764, file: !30, line: 70, baseType: !1775, offset: 768)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1776, elements: !1782)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1776, file: !30, line: 55, baseType: !85, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1776, file: !30, line: 56, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1782 = !{!1783}
!1783 = !DISubrange(count: -1)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1739, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1739, file: !14, line: 952, baseType: !375, size: 32, offset: 160)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1739, file: !14, line: 952, baseType: !375, size: 32, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1739, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1723, file: !14, line: 1012, baseType: !1789, size: 64, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1792, line: 110, size: 1472, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1810, !1811, !1812, !1813, !1814, !1815, !1923, !1924, !1925, !1926, !1927, !1958, !1961, !1965, !1973}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1791, file: !1792, line: 111, baseType: !634, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1791, file: !1792, line: 112, baseType: !375, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1791, file: !1792, line: 113, baseType: !384, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1791, file: !1792, line: 114, baseType: !375, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1791, file: !1792, line: 115, baseType: !384, size: 32, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1791, file: !1792, line: 116, baseType: !375, size: 32, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1791, file: !1792, line: 117, baseType: !384, size: 32, offset: 224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1791, file: !1792, line: 118, baseType: !375, size: 32, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1791, file: !1792, line: 119, baseType: !384, size: 32, offset: 288)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1791, file: !1792, line: 120, baseType: !7, size: 32, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1791, file: !1792, line: 121, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1806, line: 24, baseType: !1807)
!1806 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1806, line: 24, size: 64, elements: !1808)
!1808 = !{!1809}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1807, file: !1806, line: 24, baseType: !442, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1791, file: !1792, line: 122, baseType: !1805, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1791, file: !1792, line: 123, baseType: !1805, size: 64, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1791, file: !1792, line: 124, baseType: !1805, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1791, file: !1792, line: 125, baseType: !1805, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1791, file: !1792, line: 127, baseType: !226, size: 8, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1791, file: !1792, line: 129, baseType: !1816, size: 64, offset: 768)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1818, line: 195, size: 1728, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1819 = !{!1820, !1821, !1824, !1829, !1830, !1833, !1834, !1839, !1840, !1841, !1842, !1845, !1846, !1847, !1848, !1849, !1887, !1908}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1817, file: !1818, line: 196, baseType: !1413, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1817, file: !1818, line: 197, baseType: !1822, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1818, line: 28, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !188, line: 104, baseType: !626)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !1818, line: 198, baseType: !1825, size: 192, offset: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !1818, line: 198, size: 192, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1825, file: !1818, line: 199, baseType: !187, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1825, file: !1818, line: 200, baseType: !742, size: 192, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1817, file: !1818, line: 205, baseType: !1293, size: 320, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1817, file: !1818, line: 206, baseType: !1831, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1818, line: 206, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1817, file: !1818, line: 207, baseType: !181, size: 64, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !1818, line: 208, baseType: !1835, size: 64, offset: 704)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !1818, line: 208, size: 64, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1835, file: !1818, line: 209, baseType: !1132, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1835, file: !1818, line: 210, baseType: !1132, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1817, file: !1818, line: 212, baseType: !1132, size: 64, offset: 768)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1817, file: !1818, line: 213, baseType: !375, size: 32, offset: 832)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1817, file: !1818, line: 214, baseType: !384, size: 32, offset: 864)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1817, file: !1818, line: 215, baseType: !1843, size: 32, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1818, line: 31, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !188, line: 110, baseType: !438)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1817, file: !1818, line: 216, baseType: !234, size: 16, offset: 928)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1817, file: !1818, line: 217, baseType: !234, size: 16, offset: 944)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1817, file: !1818, line: 221, baseType: !768, size: 16, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1817, file: !1818, line: 228, baseType: !339, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !1818, line: 245, baseType: !1850, size: 320, offset: 1088)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !1818, line: 245, size: 320, elements: !1851)
!1851 = !{!1852, !1879}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1850, file: !1818, line: 246, baseType: !1853, size: 320)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1818, line: 114, size: 320, elements: !1854)
!1854 = !{!1855, !1856, !1868, !1871, !1878}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1853, file: !1818, line: 116, baseType: !339, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1818, line: 117, baseType: !1857, size: 64, offset: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1818, line: 117, size: 64, elements: !1858)
!1858 = !{!1859, !1867}
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1818, line: 118, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1857, file: !1818, line: 118, size: 64, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1860, file: !1818, line: 120, baseType: !232, size: 16)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1860, file: !1818, line: 121, baseType: !1864, size: 48, offset: 16)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 48, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 6)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1857, file: !1818, line: 127, baseType: !339, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1853, file: !1818, line: 129, baseType: !1869, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1818, line: 102, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1853, file: !1818, line: 130, baseType: !1872, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1818, line: 108, size: 192, elements: !1874)
!1874 = !{!1875, !1876, !1877}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1873, file: !1818, line: 109, baseType: !850, size: 128, align: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1873, file: !1818, line: 110, baseType: !1413, size: 32, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1873, file: !1818, line: 111, baseType: !710, size: 8, offset: 160)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1853, file: !1818, line: 131, baseType: !249, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1818, line: 247, baseType: !1880, size: 320)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1818, line: 247, size: 320, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1880, file: !1818, line: 248, baseType: !339, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1880, file: !1818, line: 249, baseType: !339, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1880, file: !1818, line: 250, baseType: !1869, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1880, file: !1818, line: 251, baseType: !1872, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1880, file: !1818, line: 252, baseType: !289, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !1818, line: 260, baseType: !1888, size: 256, offset: 1408)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !1818, line: 260, size: 256, elements: !1889)
!1889 = !{!1890, !1896}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1888, file: !1818, line: 261, baseType: !1891, size: 256)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1818, line: 134, size: 256, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1891, file: !1818, line: 135, baseType: !181, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1891, file: !1818, line: 136, baseType: !1895, size: 256)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !860)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1818, line: 262, baseType: !1897, size: 256)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1888, file: !1818, line: 262, size: 256, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1897, file: !1818, line: 264, baseType: !187, size: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1897, file: !1818, line: 265, baseType: !1901, size: 128, offset: 128)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1902, line: 22, size: 128, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1903 = !{!1904, !1907}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1901, file: !1902, line: 23, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1902, line: 23, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1901, file: !1902, line: 24, baseType: !339, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1817, file: !1818, line: 280, baseType: !1909, size: 64, offset: 1664)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1818, line: 176, size: 192, elements: !1911)
!1911 = !{!1912, !1921, !1922}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1910, file: !1818, line: 177, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1818, line: 171, baseType: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!85, !1816, !1917, !1919, !1816}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1910, file: !1818, line: 178, baseType: !1816, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1910, file: !1818, line: 179, baseType: !1869, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1791, file: !1792, line: 130, baseType: !1816, size: 64, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1791, file: !1792, line: 131, baseType: !1816, size: 64, offset: 896)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1791, file: !1792, line: 132, baseType: !1816, size: 64, offset: 960)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1791, file: !1792, line: 135, baseType: !181, size: 64, offset: 1024)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1791, file: !1792, line: 137, baseType: !1928, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1930, line: 14, size: 1088, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1931 = !{!1932, !1933, !1942, !1943, !1944, !1945, !1946, !1947}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1929, file: !1930, line: 15, baseType: !1413, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1929, file: !1930, line: 17, baseType: !1934, size: 320, offset: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1935, line: 22, size: 320, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1936 = !{!1937, !1938, !1939, !1940}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1934, file: !1935, line: 23, baseType: !588, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1934, file: !1935, line: 24, baseType: !640, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1934, file: !1935, line: 26, baseType: !187, size: 128, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1934, file: !1935, line: 28, baseType: !1941, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1929, file: !1930, line: 19, baseType: !339, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1929, file: !1930, line: 20, baseType: !634, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1929, file: !1930, line: 23, baseType: !876, size: 128, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1929, file: !1930, line: 24, baseType: !375, size: 32, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1929, file: !1930, line: 29, baseType: !634, size: 64, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1929, file: !1930, line: 36, baseType: !1948, size: 320, offset: 768)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1949, line: 15, size: 320, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1948, file: !1949, line: 16, baseType: !588, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1948, file: !1949, line: 18, baseType: !85, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1948, file: !1949, line: 19, baseType: !85, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1948, file: !1949, line: 20, baseType: !85, size: 32, offset: 96)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1948, file: !1949, line: 21, baseType: !85, size: 32, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1948, file: !1949, line: 22, baseType: !339, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 23, baseType: !339, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1791, file: !1792, line: 138, baseType: !1959, size: 64, offset: 1152)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !376, line: 18, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1791, file: !1792, line: 139, baseType: !1962, size: 64, offset: 1216)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1964, line: 16, flags: DIFlagFwdDecl)
!1964 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1791, file: !1792, line: 140, baseType: !1966, size: 64, offset: 1280)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1792, line: 25, size: 64, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1967, file: !1792, line: 26, baseType: !214, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1967, file: !1792, line: 27, baseType: !85, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1967, file: !1792, line: 28, baseType: !1972, offset: 64)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, elements: !1782)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1792, line: 142, baseType: !1974, size: 128, offset: 1344)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1791, file: !1792, line: 142, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1974, file: !1792, line: 143, baseType: !85, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1974, file: !1792, line: 144, baseType: !850, size: 128, align: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1723, file: !14, line: 1013, baseType: !1979, size: 256, offset: 960)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1979, file: !14, line: 971, baseType: !339, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1979, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1979, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1979, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1979, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1979, file: !14, line: 976, baseType: !530, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1723, file: !14, line: 1014, baseType: !1205, size: 128, offset: 1216)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1723, file: !14, line: 1015, baseType: !369, size: 64, offset: 1344)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1723, file: !14, line: 1016, baseType: !1990, size: 64, offset: 1408)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1993)
!1993 = !{!1994, !1995, !1999, !2004, !2008, !2036, !2037, !2043, !2056, !2064, !2068, !2069, !2130, !2131, !2135, !2140, !2141, !2145, !2149, !2155, !2156, !2160, !2161, !2167, !2171, !2175, !2181, !2185, !2189, !2193, !2197, !2198, !2204}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1992, file: !14, line: 1915, baseType: !559, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1992, file: !14, line: 1916, baseType: !1996, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!530, !1722, !530, !85}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1992, file: !14, line: 1917, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!321, !1722, !289, !336, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1992, file: !14, line: 1918, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!321, !1722, !249, !336, !2003}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1992, file: !14, line: 1919, baseType: !2009, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!321, !2012, !2034}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2021, !2022, !2023, !2024}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2013, file: !14, line: 374, baseType: !1722, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2013, file: !14, line: 375, baseType: !530, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2013, file: !14, line: 376, baseType: !2018, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !2012, !325}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2013, file: !14, line: 377, baseType: !181, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2013, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2013, file: !14, line: 379, baseType: !232, size: 16, offset: 288)
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !14, line: 380, baseType: !2025, size: 64, offset: 320)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2013, file: !14, line: 380, size: 64, elements: !2026)
!2026 = !{!2027, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2025, file: !14, line: 386, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2025, file: !14, line: 395, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!321, !181}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1992, file: !14, line: 1920, baseType: !2009, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1992, file: !14, line: 1921, baseType: !2038, size: 64, offset: 384)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!85, !2012, !2041, !7}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1992, file: !14, line: 1923, baseType: !2044, size: 64, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!85, !1722, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2049)
!2049 = !{!2050, !2055}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2048, file: !14, line: 1859, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2052)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!710, !2047, !249, !85, !530, !442, !7}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2048, file: !14, line: 1860, baseType: !530, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1992, file: !14, line: 1924, baseType: !2057, size: 64, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!2060, !1722, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2061, line: 59, baseType: !7)
!2061 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !545, line: 31, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1992, file: !14, line: 1925, baseType: !2065, size: 64, offset: 576)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!325, !1722, !7, !339}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1992, file: !14, line: 1926, baseType: !2065, size: 64, offset: 640)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1992, file: !14, line: 1927, baseType: !2070, size: 64, offset: 704)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!85, !1722, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1151, line: 625, size: 1344, elements: !2075)
!2075 = !{!2076, !2085, !2086, !2094, !2101, !2102, !2107, !2108, !2113, !2114, !2117, !2121, !2122, !2123, !2124, !2125, !2128}
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !1151, line: 628, baseType: !2077, size: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2074, file: !1151, line: 628, size: 128, elements: !2078)
!2078 = !{!2079, !2084}
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !1151, line: 629, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !1151, line: 629, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2080, file: !1151, line: 631, baseType: !339, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2080, file: !1151, line: 632, baseType: !339, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2077, file: !1151, line: 635, baseType: !850, size: 128, align: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2074, file: !1151, line: 639, baseType: !1695, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2074, file: !1151, line: 640, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2088, line: 297, baseType: !2089)
!2088 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2088, line: 297, size: 64, elements: !2090)
!2090 = !{!2091}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2089, file: !2088, line: 297, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2093, line: 19, baseType: !339)
!2093 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !1151, line: 646, baseType: !2095, size: 64, offset: 256)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2074, file: !1151, line: 646, size: 64, elements: !2096)
!2096 = !{!2097, !2100}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2095, file: !1151, line: 647, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1151, line: 542, baseType: !339)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2095, file: !1151, line: 648, baseType: !2099, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2074, file: !1151, line: 666, baseType: !85, size: 32, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2074, file: !1151, line: 667, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1151, line: 579, size: 320, elements: !2105)
!2105 = !{!2106}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2104, file: !1151, line: 580, baseType: !1293, size: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2074, file: !1151, line: 670, baseType: !710, size: 8, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2074, file: !1151, line: 681, baseType: !2109, size: 256, offset: 512)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !1151, line: 678, size: 256, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2109, file: !1151, line: 679, baseType: !742, size: 192, align: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2109, file: !1151, line: 680, baseType: !339, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2074, file: !1151, line: 689, baseType: !187, size: 128, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2074, file: !1151, line: 691, baseType: !2115, size: 64, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1151, line: 691, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2074, file: !1151, line: 694, baseType: !2118, size: 64, offset: 960)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1151, line: 694, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2074, file: !1151, line: 697, baseType: !339, size: 64, offset: 1024)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2074, file: !1151, line: 699, baseType: !1722, size: 64, offset: 1088)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2074, file: !1151, line: 700, baseType: !181, size: 64, offset: 1152)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2074, file: !1151, line: 711, baseType: !634, size: 64, offset: 1216)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2074, file: !1151, line: 717, baseType: !2126, size: 64, offset: 1280)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1151, line: 717, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2074, file: !1151, line: 722, baseType: !2129, offset: 1344)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1151, line: 570, elements: !919)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1992, file: !14, line: 1928, baseType: !339, size: 64, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1992, file: !14, line: 1929, baseType: !2132, size: 64, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!85, !369, !1722}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1992, file: !14, line: 1930, baseType: !2136, size: 64, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!85, !1722, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !181)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1992, file: !14, line: 1931, baseType: !2132, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1992, file: !14, line: 1932, baseType: !2142, size: 64, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!85, !1722, !530, !530, !85}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1992, file: !14, line: 1933, baseType: !2146, size: 64, offset: 1088)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!85, !85, !1722, !85}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1992, file: !14, line: 1934, baseType: !2150, size: 64, offset: 1152)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!85, !1722, !85, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1992, file: !14, line: 1935, baseType: !1719, size: 64, offset: 1216)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1992, file: !14, line: 1936, baseType: !2157, size: 64, offset: 1280)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!85, !85}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1992, file: !14, line: 1937, baseType: !2150, size: 64, offset: 1344)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1992, file: !14, line: 1938, baseType: !2162, size: 64, offset: 1408)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!321, !2165, !1722, !2003, !336, !7}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1074, line: 59, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1992, file: !14, line: 1939, baseType: !2168, size: 64, offset: 1472)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!321, !1722, !2003, !2165, !336, !7}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1992, file: !14, line: 1940, baseType: !2172, size: 64, offset: 1536)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !1722}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1992, file: !14, line: 1941, baseType: !2176, size: 64, offset: 1600)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!85, !1722, !85, !2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1992, file: !14, line: 1942, baseType: !2182, size: 64, offset: 1664)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!325, !1722, !85, !530, !530}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1992, file: !14, line: 1944, baseType: !2186, size: 64, offset: 1728)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !1072, !1722}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1992, file: !14, line: 1948, baseType: !2190, size: 64, offset: 1792)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!321, !1722, !530, !1722, !530, !336, !7}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1992, file: !14, line: 1950, baseType: !2194, size: 64, offset: 1856)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!530, !1722, !530, !1722, !530, !530, !7}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1992, file: !14, line: 1953, baseType: !2142, size: 64, offset: 1920)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1992, file: !14, line: 1954, baseType: !2199, size: 64, offset: 1984)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!85, !2202, !7}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1992, file: !14, line: 1955, baseType: !2205, size: 64, offset: 2048)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!85, !2202, !2041, !7}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1723, file: !14, line: 1018, baseType: !442, size: 64, offset: 1472)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1723, file: !14, line: 1020, baseType: !181, size: 64, offset: 1536)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1723, file: !14, line: 1023, baseType: !181, size: 64, offset: 1600)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1723, file: !14, line: 1027, baseType: !2212, size: 64, offset: 1664)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1723, file: !14, line: 1029, baseType: !365, size: 64, offset: 1728)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1723, file: !14, line: 1030, baseType: !2215, size: 32, offset: 1792)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2216, line: 8, baseType: !438)
!2216 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1723, file: !14, line: 1031, baseType: !2215, size: 32, offset: 1824)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1699, file: !1151, line: 756, baseType: !339, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1699, file: !1151, line: 757, baseType: !339, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1699, file: !1151, line: 760, baseType: !339, size: 64, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1699, file: !1151, line: 761, baseType: !339, size: 64, offset: 896)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1699, file: !1151, line: 763, baseType: !339, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1699, file: !1151, line: 764, baseType: !2224, size: 64, offset: 1024)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2088, line: 299, baseType: !2226)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2088, line: 299, size: 64, elements: !2227)
!2227 = !{!2228}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2226, file: !2088, line: 299, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2093, line: 18, baseType: !339)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1699, file: !1151, line: 773, baseType: !214, size: 32, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1699, file: !1151, line: 785, baseType: !214, size: 32, offset: 1120)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1699, file: !1151, line: 795, baseType: !2233, size: 64, offset: 1152)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1151, line: 726, size: 128, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2234, file: !1151, line: 727, baseType: !442, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2234, file: !1151, line: 728, baseType: !85, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1699, file: !1151, line: 801, baseType: !339, size: 64, offset: 1216)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1699, file: !1151, line: 804, baseType: !634, size: 64, offset: 1280)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1699, file: !1151, line: 806, baseType: !85, size: 32, offset: 1344)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1699, file: !1151, line: 808, baseType: !194, size: 32, offset: 1376)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1699, file: !1151, line: 823, baseType: !1293, size: 320, offset: 1408)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1699, file: !1151, line: 825, baseType: !187, size: 128, offset: 1728)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1699, file: !1151, line: 845, baseType: !85, size: 32, offset: 1856)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1699, file: !1151, line: 849, baseType: !339, size: 64, offset: 1920)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1699, file: !1151, line: 850, baseType: !339, size: 64, offset: 1984)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1699, file: !1151, line: 852, baseType: !339, size: 64, offset: 2048)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1699, file: !1151, line: 853, baseType: !339, size: 64, offset: 2112)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1699, file: !1151, line: 854, baseType: !636, size: 64, offset: 2176)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1699, file: !1151, line: 855, baseType: !339, size: 64, offset: 2240)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1699, file: !1151, line: 856, baseType: !339, size: 64, offset: 2304)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1699, file: !1151, line: 857, baseType: !339, size: 64, offset: 2368)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1699, file: !1151, line: 858, baseType: !339, size: 64, offset: 2432)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1699, file: !1151, line: 865, baseType: !415, size: 32, offset: 2496)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1699, file: !1151, line: 867, baseType: !194, size: 32, offset: 2528)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1699, file: !1151, line: 869, baseType: !339, size: 64, offset: 2560)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1699, file: !1151, line: 869, baseType: !339, size: 64, offset: 2624)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1699, file: !1151, line: 869, baseType: !339, size: 64, offset: 2688)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1699, file: !1151, line: 869, baseType: !339, size: 64, offset: 2752)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1699, file: !1151, line: 870, baseType: !339, size: 64, offset: 2816)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1699, file: !1151, line: 870, baseType: !339, size: 64, offset: 2880)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1699, file: !1151, line: 870, baseType: !339, size: 64, offset: 2944)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1699, file: !1151, line: 871, baseType: !339, size: 64, offset: 3008)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1699, file: !1151, line: 871, baseType: !339, size: 64, offset: 3072)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1699, file: !1151, line: 871, baseType: !339, size: 64, offset: 3136)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1699, file: !1151, line: 871, baseType: !339, size: 64, offset: 3200)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1699, file: !1151, line: 873, baseType: !2268, size: 3328, offset: 3264)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 3328, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 52)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1699, file: !1151, line: 875, baseType: !2272, size: 1280, offset: 6592)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1934, size: 1280, elements: !860)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1699, file: !1151, line: 877, baseType: !2274, size: 64, offset: 7872)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1151, line: 877, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1699, file: !1151, line: 880, baseType: !2277, size: 1088, offset: 7936)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2278, line: 72, baseType: !2279)
!2278 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2278, line: 23, size: 1088, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2288, !2289, !2290, !2291, !2318, !2319, !2320}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2279, file: !2278, line: 28, baseType: !442, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2279, file: !2278, line: 38, baseType: !636, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2279, file: !2278, line: 40, baseType: !339, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2279, file: !2278, line: 43, baseType: !1293, size: 320, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2279, file: !2278, line: 44, baseType: !2286, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2278, line: 44, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !2278, line: 48, baseType: !339, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2279, file: !2278, line: 59, baseType: !630, size: 256, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2279, file: !2278, line: 60, baseType: !181, size: 64, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2279, file: !2278, line: 61, baseType: !2292, size: 64, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2294)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2295, line: 13, size: 1216, elements: !2296)
!2295 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2294, file: !2295, line: 14, baseType: !181, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2294, file: !2295, line: 15, baseType: !339, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2294, file: !2295, line: 17, baseType: !339, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2294, file: !2295, line: 17, baseType: !339, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2294, file: !2295, line: 18, baseType: !339, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2294, file: !2295, line: 18, baseType: !339, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2294, file: !2295, line: 19, baseType: !2304, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2294, file: !2295, line: 21, baseType: !325, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2294, file: !2295, line: 23, baseType: !325, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2294, file: !2295, line: 24, baseType: !325, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2294, file: !2295, line: 25, baseType: !325, size: 64, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2294, file: !2295, line: 26, baseType: !325, size: 64, offset: 704)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2294, file: !2295, line: 27, baseType: !325, size: 64, offset: 768)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2294, file: !2295, line: 28, baseType: !325, size: 64, offset: 832)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2294, file: !2295, line: 29, baseType: !325, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2294, file: !2295, line: 30, baseType: !325, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2294, file: !2295, line: 31, baseType: !325, size: 64, offset: 1024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2294, file: !2295, line: 32, baseType: !325, size: 64, offset: 1088)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2294, file: !2295, line: 33, baseType: !325, size: 64, offset: 1152)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2279, file: !2278, line: 63, baseType: !214, size: 32, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2279, file: !2278, line: 69, baseType: !232, size: 16, offset: 1056)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2279, file: !2278, line: 70, baseType: !766, size: 16, offset: 1072)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1151, line: 882, baseType: !339, size: 64, offset: 9024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1699, file: !1151, line: 885, baseType: !194, size: 32, offset: 9088)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1699, file: !1151, line: 886, baseType: !2324, size: 64, offset: 9152)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1151, line: 732, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1699, file: !1151, line: 901, baseType: !1959, size: 64, offset: 9216)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1699, file: !1151, line: 904, baseType: !1722, size: 64, offset: 9280)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1699, file: !1151, line: 906, baseType: !2329, size: 64, offset: 9344)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1151, line: 906, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1699, file: !1151, line: 930, baseType: !214, size: 32, offset: 9408)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1699, file: !1151, line: 933, baseType: !214, size: 32, offset: 9440)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1699, file: !1151, line: 935, baseType: !2334, size: 64, offset: 9472)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !2335)
!2335 = !{!2336}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2334, file: !44, line: 104, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1699, file: !1151, line: 940, baseType: !634, size: 64, offset: 9536)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1699, file: !1151, line: 942, baseType: !890, size: 256, offset: 9600)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1696, file: !1151, line: 986, baseType: !2342, offset: 10240)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, elements: !1782)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1400, file: !1074, line: 882, baseType: !1695, size: 64, offset: 9792)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1400, file: !1074, line: 884, baseType: !85, size: 32, offset: 9856)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1400, file: !1074, line: 885, baseType: !85, size: 32, offset: 9888)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1400, file: !1074, line: 886, baseType: !85, size: 32, offset: 9920)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1400, file: !1074, line: 888, baseType: !85, size: 32, offset: 9952)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1400, file: !1074, line: 890, baseType: !339, size: 64, offset: 9984)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1400, file: !1074, line: 893, baseType: !7, size: 32, offset: 10048)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1400, file: !1074, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1400, file: !1074, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1400, file: !1074, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1400, file: !1074, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1400, file: !1074, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1400, file: !1074, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1400, file: !1074, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1400, file: !1074, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1400, file: !1074, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1400, file: !1074, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1400, file: !1074, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1400, file: !1074, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1400, file: !1074, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1400, file: !1074, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1400, file: !1074, line: 969, baseType: !339, size: 64, offset: 10176)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1400, file: !1074, line: 971, baseType: !2366, size: 448, offset: 10240)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2367)
!2367 = !{!2368, !2369, !2374}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2366, file: !38, line: 26, baseType: !339, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2366, file: !38, line: 27, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!325, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !38, line: 28, baseType: !2375, size: 320, offset: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2366, file: !38, line: 28, size: 320, elements: !2376)
!2376 = !{!2377, !2387, !2412}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2375, file: !38, line: 37, baseType: !2378, size: 320)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2375, file: !38, line: 30, size: 320, elements: !2379)
!2379 = !{!2380, !2382, !2383, !2384, !2385, !2386}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2378, file: !38, line: 31, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2378, file: !38, line: 32, baseType: !438, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2378, file: !38, line: 33, baseType: !438, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2378, file: !38, line: 34, baseType: !438, size: 32, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2378, file: !38, line: 35, baseType: !442, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2378, file: !38, line: 36, baseType: !2381, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2375, file: !38, line: 47, baseType: !2388, size: 192)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2375, file: !38, line: 39, size: 192, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2411}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2388, file: !38, line: 40, baseType: !1566, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2388, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !38, line: 42, baseType: !2393, size: 64, offset: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !38, line: 42, size: 64, elements: !2394)
!2394 = !{!2395, !2403}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2393, file: !38, line: 43, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2398, line: 7, size: 128, elements: !2399)
!2398 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2399 = !{!2400, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2397, file: !2398, line: 8, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !323, line: 93, baseType: !532)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2397, file: !2398, line: 9, baseType: !532, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2393, file: !38, line: 44, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2406, line: 7, size: 64, elements: !2407)
!2406 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2407 = !{!2408, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2405, file: !2406, line: 8, baseType: !2409, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2406, line: 5, baseType: !626)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2405, file: !2406, line: 9, baseType: !626, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2388, file: !38, line: 46, baseType: !442, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2375, file: !38, line: 55, baseType: !2413, size: 256)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2375, file: !38, line: 49, size: 256, elements: !2414)
!2414 = !{!2415, !2418, !2419, !2420, !2421}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2413, file: !38, line: 50, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2413, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2413, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2413, file: !38, line: 53, baseType: !339, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2413, file: !38, line: 54, baseType: !339, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1400, file: !1074, line: 973, baseType: !2423, size: 32, offset: 10688)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !188, line: 27, baseType: !2424)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !323, line: 28, baseType: !85)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1400, file: !1074, line: 974, baseType: !2423, size: 32, offset: 10720)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1400, file: !1074, line: 978, baseType: !339, size: 64, offset: 10752)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1400, file: !1074, line: 987, baseType: !1399, size: 64, offset: 10816)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1400, file: !1074, line: 990, baseType: !1399, size: 64, offset: 10880)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1400, file: !1074, line: 995, baseType: !187, size: 128, offset: 10944)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1400, file: !1074, line: 996, baseType: !187, size: 128, offset: 11072)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1400, file: !1074, line: 997, baseType: !1399, size: 64, offset: 11200)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1400, file: !1074, line: 1005, baseType: !187, size: 128, offset: 11264)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1400, file: !1074, line: 1006, baseType: !187, size: 128, offset: 11392)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1400, file: !1074, line: 1009, baseType: !1763, size: 64, offset: 11520)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1400, file: !1074, line: 1010, baseType: !2436, size: 512, offset: 11584)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 512, elements: !860)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1400, file: !1074, line: 1011, baseType: !187, size: 128, offset: 12096)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1400, file: !1074, line: 1012, baseType: !187, size: 128, offset: 12224)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1400, file: !1074, line: 1014, baseType: !578, size: 64, offset: 12352)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1400, file: !1074, line: 1017, baseType: !759, size: 64, offset: 12416)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1400, file: !1074, line: 1020, baseType: !759, size: 64, offset: 12480)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1400, file: !1074, line: 1023, baseType: !181, size: 64, offset: 12544)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1400, file: !1074, line: 1025, baseType: !442, size: 64, offset: 12608)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1400, file: !1074, line: 1026, baseType: !442, size: 64, offset: 12672)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1400, file: !1074, line: 1031, baseType: !442, size: 64, offset: 12736)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1400, file: !1074, line: 1032, baseType: !2447, size: 192, offset: 12800)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1074, line: 324, size: 192, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2447, file: !1074, line: 326, baseType: !442, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2447, file: !1074, line: 327, baseType: !442, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2447, file: !1074, line: 328, baseType: !588, size: 32, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1400, file: !1074, line: 1041, baseType: !339, size: 64, offset: 12992)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1400, file: !1074, line: 1042, baseType: !339, size: 64, offset: 13056)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1400, file: !1074, line: 1045, baseType: !442, size: 64, offset: 13120)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1400, file: !1074, line: 1048, baseType: !442, size: 64, offset: 13184)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1400, file: !1074, line: 1051, baseType: !339, size: 64, offset: 13248)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1400, file: !1074, line: 1052, baseType: !339, size: 64, offset: 13312)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1400, file: !1074, line: 1055, baseType: !2459, size: 640, offset: 13376)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2460, line: 132, size: 640, elements: !2461)
!2460 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2461 = !{!2462, !2468, !2469}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2459, file: !2460, line: 133, baseType: !2463, size: 576)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2464, size: 576, elements: !290)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2460, line: 117, size: 192, elements: !2465)
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2464, file: !2460, line: 118, baseType: !442, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2464, file: !2460, line: 119, baseType: !1575, size: 128, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2459, file: !2460, line: 134, baseType: !7, size: 32, offset: 576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2459, file: !2460, line: 135, baseType: !7, size: 32, offset: 608)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1400, file: !1074, line: 1058, baseType: !2471, size: 448, offset: 14016)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2460, line: 144, size: 448, elements: !2472)
!2472 = !{!2473, !2474, !2475}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2471, file: !2460, line: 145, baseType: !850, size: 128, align: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2471, file: !2460, line: 146, baseType: !630, size: 256, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2471, file: !2460, line: 147, baseType: !7, size: 32, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1400, file: !1074, line: 1064, baseType: !1789, size: 64, offset: 14464)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1400, file: !1074, line: 1067, baseType: !1789, size: 64, offset: 14528)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1400, file: !1074, line: 1070, baseType: !1789, size: 64, offset: 14592)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1400, file: !1074, line: 1074, baseType: !1816, size: 64, offset: 14656)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1400, file: !1074, line: 1084, baseType: !2481, size: 128, offset: 14720)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: 16)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1400, file: !1074, line: 1086, baseType: !2485, size: 64, offset: 14848)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1074, line: 55, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1400, file: !1074, line: 1089, baseType: !2488, size: 64, offset: 14912)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2489, line: 12, size: 64, elements: !2490)
!2489 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2488, file: !2489, line: 13, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2489, line: 8, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1400, file: !1074, line: 1090, baseType: !2495, size: 128, offset: 14976)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2496, line: 13, size: 128, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2497 = !{!2498}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2495, file: !2496, line: 14, baseType: !187, size: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1400, file: !1074, line: 1097, baseType: !2500, size: 64, offset: 15104)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1074, line: 50, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1400, file: !1074, line: 1100, baseType: !2503, size: 64, offset: 15168)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1074, line: 1100, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1400, file: !1074, line: 1103, baseType: !2506, size: 64, offset: 15232)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1074, line: 53, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1400, file: !1074, line: 1107, baseType: !2509, size: 64, offset: 15296)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2511, line: 35, flags: DIFlagFwdDecl)
!2511 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1400, file: !1074, line: 1110, baseType: !2513, size: 64, offset: 15360)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2515, line: 93, size: 8768, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2564, !2573, !2574, !2576, !2577, !2578, !2581, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2619, !2620, !2627, !2637, !2640, !2641, !2644, !2645, !2646, !2647, !2648, !2649}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2514, file: !2515, line: 94, baseType: !1413, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2514, file: !2515, line: 95, baseType: !214, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2514, file: !2515, line: 96, baseType: !85, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2514, file: !2515, line: 97, baseType: !85, size: 32, offset: 96)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2514, file: !2515, line: 98, baseType: !187, size: 128, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2514, file: !2515, line: 100, baseType: !1386, size: 192, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2514, file: !2515, line: 103, baseType: !1399, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2514, file: !2515, line: 106, baseType: !2525, size: 192, offset: 512)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1964, line: 32, size: 192, elements: !2526)
!2526 = !{!2527, !2528}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2525, file: !1964, line: 33, baseType: !187, size: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2525, file: !1964, line: 34, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2530, line: 25, baseType: !2531)
!2530 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2530, line: 23, size: 64, elements: !2532)
!2532 = !{!2533}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2531, file: !2530, line: 24, baseType: !1646, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2514, file: !2515, line: 109, baseType: !1000, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2514, file: !2515, line: 112, baseType: !85, size: 32, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2514, file: !2515, line: 114, baseType: !85, size: 32, offset: 800)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2514, file: !2515, line: 115, baseType: !1399, size: 64, offset: 832)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2514, file: !2515, line: 118, baseType: !85, size: 32, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2514, file: !2515, line: 119, baseType: !7, size: 32, offset: 928)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2514, file: !2515, line: 121, baseType: !2541, size: 64, offset: 960)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2515, line: 80, size: 448, elements: !2543)
!2543 = !{!2544, !2545, !2551}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2542, file: !2515, line: 81, baseType: !214, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2542, file: !2515, line: 82, baseType: !2546, size: 128, offset: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2515, line: 75, size: 128, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2546, file: !2515, line: 76, baseType: !1399, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2546, file: !2515, line: 77, baseType: !2550, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2542, file: !2515, line: 83, baseType: !579, size: 256, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2514, file: !2515, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2514, file: !2515, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2514, file: !2515, line: 138, baseType: !7, size: 32, offset: 1056)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2514, file: !2515, line: 139, baseType: !187, size: 128, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2514, file: !2515, line: 142, baseType: !1519, size: 512, offset: 1216)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2514, file: !2515, line: 143, baseType: !1527, size: 64, offset: 1728)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2514, file: !2515, line: 150, baseType: !2559, size: 256, offset: 1792)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2560, size: 256, elements: !749)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2515, line: 38, size: 128, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2560, file: !2515, line: 39, baseType: !442, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2560, file: !2515, line: 40, baseType: !442, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2514, file: !2515, line: 156, baseType: !2565, size: 192, offset: 2048)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2515, line: 66, size: 192, elements: !2566)
!2566 = !{!2567}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2565, file: !2515, line: 67, baseType: !2568, size: 192)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2515, line: 47, size: 192, elements: !2569)
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2568, file: !2515, line: 48, baseType: !636, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2568, file: !2515, line: 49, baseType: !636, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2568, file: !2515, line: 50, baseType: !636, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2514, file: !2515, line: 160, baseType: !2459, size: 640, offset: 2240)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2514, file: !2515, line: 163, baseType: !2575, size: 256, offset: 2880)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1763, size: 256, elements: !860)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2514, file: !2515, line: 169, baseType: !1763, size: 64, offset: 3136)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2514, file: !2515, line: 172, baseType: !85, size: 32, offset: 3200)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2514, file: !2515, line: 174, baseType: !2579, size: 64, offset: 3264)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2515, line: 174, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2514, file: !2515, line: 185, baseType: !2582, size: 64, offset: 3328)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !411, line: 860, baseType: !2583)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 853, size: 64, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2583, file: !411, line: 858, baseType: !410, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2583, file: !411, line: 859, baseType: !194, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2514, file: !2515, line: 186, baseType: !442, size: 64, offset: 3392)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2514, file: !2515, line: 186, baseType: !442, size: 64, offset: 3456)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2514, file: !2515, line: 186, baseType: !442, size: 64, offset: 3520)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2514, file: !2515, line: 186, baseType: !442, size: 64, offset: 3584)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2514, file: !2515, line: 187, baseType: !442, size: 64, offset: 3648)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2514, file: !2515, line: 188, baseType: !442, size: 64, offset: 3712)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2514, file: !2515, line: 189, baseType: !2447, size: 192, offset: 3776)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2514, file: !2515, line: 190, baseType: !339, size: 64, offset: 3968)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2514, file: !2515, line: 190, baseType: !339, size: 64, offset: 4032)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2514, file: !2515, line: 190, baseType: !339, size: 64, offset: 4096)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2514, file: !2515, line: 190, baseType: !339, size: 64, offset: 4160)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2514, file: !2515, line: 191, baseType: !339, size: 64, offset: 4224)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2514, file: !2515, line: 191, baseType: !339, size: 64, offset: 4288)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2514, file: !2515, line: 191, baseType: !339, size: 64, offset: 4352)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2514, file: !2515, line: 191, baseType: !339, size: 64, offset: 4416)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2514, file: !2515, line: 192, baseType: !339, size: 64, offset: 4480)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2514, file: !2515, line: 192, baseType: !339, size: 64, offset: 4544)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2514, file: !2515, line: 192, baseType: !339, size: 64, offset: 4608)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2514, file: !2515, line: 192, baseType: !339, size: 64, offset: 4672)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2514, file: !2515, line: 193, baseType: !339, size: 64, offset: 4736)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2514, file: !2515, line: 193, baseType: !339, size: 64, offset: 4800)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2514, file: !2515, line: 194, baseType: !2609, size: 448, offset: 4864)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2610, line: 12, size: 448, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2609, file: !2610, line: 15, baseType: !442, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2609, file: !2610, line: 17, baseType: !442, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2609, file: !2610, line: 19, baseType: !442, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2609, file: !2610, line: 21, baseType: !442, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2609, file: !2610, line: 29, baseType: !442, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2609, file: !2610, line: 35, baseType: !442, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2609, file: !2610, line: 44, baseType: !442, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2514, file: !2515, line: 202, baseType: !444, size: 64, offset: 5312)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2514, file: !2515, line: 213, baseType: !2621, size: 2048, offset: 5376)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2622, size: 2048, elements: !2482)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2623, line: 43, size: 128, elements: !2624)
!2623 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2622, file: !2623, line: 44, baseType: !338, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2622, file: !2623, line: 45, baseType: !338, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2514, file: !2515, line: 216, baseType: !2628, size: 448, offset: 7424)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2515, line: 30, size: 448, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2628, file: !2515, line: 31, baseType: !85, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2628, file: !2515, line: 32, baseType: !325, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2628, file: !2515, line: 33, baseType: !339, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2628, file: !2515, line: 34, baseType: !442, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2628, file: !2515, line: 34, baseType: !442, size: 64, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2628, file: !2515, line: 35, baseType: !339, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2628, file: !2515, line: 35, baseType: !339, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2514, file: !2515, line: 219, baseType: !2638, size: 64, offset: 7872)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2515, line: 219, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2514, file: !2515, line: 222, baseType: !7, size: 32, offset: 7936)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2514, file: !2515, line: 223, baseType: !2642, size: 64, offset: 8000)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2515, line: 223, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2514, file: !2515, line: 230, baseType: !710, size: 8, offset: 8064)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2514, file: !2515, line: 231, baseType: !768, size: 16, offset: 8080)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2514, file: !2515, line: 232, baseType: !768, size: 16, offset: 8096)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2514, file: !2515, line: 234, baseType: !1695, size: 64, offset: 8128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2514, file: !2515, line: 237, baseType: !630, size: 256, offset: 8192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2514, file: !2515, line: 243, baseType: !1293, size: 320, offset: 8448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1400, file: !1074, line: 1111, baseType: !2651, size: 64, offset: 15424)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2515, line: 20, size: 16640, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2652, file: !2515, line: 21, baseType: !194, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2652, file: !2515, line: 22, baseType: !1413, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2652, file: !2515, line: 23, baseType: !1386, size: 192, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2652, file: !2515, line: 24, baseType: !2658, size: 16384, offset: 256)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2659, size: 16384, elements: !294)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1964, line: 51, size: 256, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2659, file: !1964, line: 52, baseType: !2662, size: 256)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1964, line: 37, size: 256, elements: !2663)
!2663 = !{!2664, !2671, !2672, !2676}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2662, file: !1964, line: 39, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2666, line: 83, baseType: !2667)
!2666 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2666, line: 82, baseType: !2669)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null, !85}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2662, file: !1964, line: 40, baseType: !339, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2662, file: !1964, line: 46, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2666, line: 86, baseType: !2674)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2666, line: 85, baseType: !995)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2662, file: !1964, line: 48, baseType: !2529, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1400, file: !1074, line: 1112, baseType: !2529, size: 64, offset: 15488)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1400, file: !1074, line: 1113, baseType: !2529, size: 64, offset: 15552)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1400, file: !1074, line: 1115, baseType: !2529, size: 64, offset: 15616)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1400, file: !1074, line: 1116, baseType: !2525, size: 192, offset: 15680)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1400, file: !1074, line: 1117, baseType: !339, size: 64, offset: 15872)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1400, file: !1074, line: 1118, baseType: !336, size: 64, offset: 15936)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1400, file: !1074, line: 1119, baseType: !7, size: 32, offset: 16000)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1400, file: !1074, line: 1121, baseType: !849, size: 64, offset: 16064)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1400, file: !1074, line: 1125, baseType: !2686, size: 64, offset: 16128)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1074, line: 43, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1400, file: !1074, line: 1127, baseType: !375, size: 32, offset: 16192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1400, file: !1074, line: 1128, baseType: !7, size: 32, offset: 16224)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1400, file: !1074, line: 1130, baseType: !2691, size: 128, offset: 16256)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2692, line: 37, size: 128, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2691, file: !2692, line: 38, baseType: !85, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2691, file: !2692, line: 39, baseType: !214, size: 32, offset: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2691, file: !2692, line: 40, baseType: !2697, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2692, line: 24, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1400, file: !1074, line: 1131, baseType: !2700, size: 256, offset: 16384)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2701, line: 12, size: 256, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2702 = !{!2703, !2704, !2705, !2706}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2700, file: !2701, line: 13, baseType: !289, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2700, file: !2701, line: 14, baseType: !339, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2700, file: !2701, line: 15, baseType: !339, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2700, file: !2701, line: 16, baseType: !710, size: 8, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1400, file: !1074, line: 1134, baseType: !442, size: 64, offset: 16640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1400, file: !1074, line: 1135, baseType: !442, size: 64, offset: 16704)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1400, file: !1074, line: 1138, baseType: !194, size: 32, offset: 16768)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1400, file: !1074, line: 1141, baseType: !588, size: 32, offset: 16800)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1400, file: !1074, line: 1143, baseType: !2712, size: 64, offset: 16832)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1074, line: 735, size: 64, elements: !2713)
!2713 = !{!2714}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2712, file: !1074, line: 736, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1400, file: !1074, line: 1147, baseType: !1578, size: 128, offset: 16896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1400, file: !1074, line: 1149, baseType: !1399, size: 64, offset: 17024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1400, file: !1074, line: 1151, baseType: !2719, size: 64, offset: 17088)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1074, line: 1151, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1400, file: !1074, line: 1188, baseType: !181, size: 64, offset: 17152)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1400, file: !1074, line: 1191, baseType: !2723, size: 64, offset: 17216)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1074, line: 44, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1400, file: !1074, line: 1194, baseType: !2726, size: 64, offset: 17280)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1074, line: 45, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1400, file: !1074, line: 1197, baseType: !2729, size: 64, offset: 17344)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1074, line: 61, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1400, file: !1074, line: 1199, baseType: !2732, size: 64, offset: 17408)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2734, line: 99, size: 128, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2733, file: !2734, line: 100, baseType: !634, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2733, file: !2734, line: 101, baseType: !214, size: 32, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2733, file: !2734, line: 103, baseType: !234, size: 16, offset: 96)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1400, file: !1074, line: 1202, baseType: !2740, size: 64, offset: 17472)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1074, line: 48, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1400, file: !1074, line: 1205, baseType: !339, size: 64, offset: 17536)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1400, file: !1074, line: 1206, baseType: !2744, size: 64, offset: 17600)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1964, line: 14, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1964, line: 12, size: 384, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, scope: !2746, file: !1964, line: 13, baseType: !2749, size: 384)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2746, file: !1964, line: 13, size: 384, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2749, file: !1964, line: 13, baseType: !85, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2749, file: !1964, line: 13, baseType: !85, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2749, file: !1964, line: 13, baseType: !85, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2749, file: !1964, line: 13, baseType: !2755, size: 256, offset: 128)
!2755 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2756, line: 37, size: 256, elements: !2757)
!2756 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2757 = !{!2758, !2763, !2776, !2782, !2791, !2818, !2823}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2755, file: !2756, line: 42, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 39, size: 64, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2759, file: !2756, line: 40, baseType: !2424, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2759, file: !2756, line: 41, baseType: !381, size: 32, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2755, file: !2756, line: 50, baseType: !2764, size: 192)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 45, size: 192, elements: !2765)
!2765 = !{!2766, !2768, !2769, !2775}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2764, file: !2756, line: 46, baseType: !2767, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !323, line: 95, baseType: !85)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2764, file: !2756, line: 47, baseType: !85, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2764, file: !2756, line: 48, baseType: !2770, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2756, line: 11, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2756, line: 8, size: 64, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2771, file: !2756, line: 9, baseType: !85, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2771, file: !2756, line: 10, baseType: !181, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2764, file: !2756, line: 49, baseType: !85, size: 32, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2755, file: !2756, line: 57, baseType: !2777, size: 128)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 53, size: 128, elements: !2778)
!2778 = !{!2779, !2780, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2777, file: !2756, line: 54, baseType: !2424, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2777, file: !2756, line: 55, baseType: !381, size: 32, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2777, file: !2756, line: 56, baseType: !2770, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2755, file: !2756, line: 66, baseType: !2783, size: 256)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 60, size: 256, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2790}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2783, file: !2756, line: 61, baseType: !2424, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2783, file: !2756, line: 62, baseType: !381, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2783, file: !2756, line: 63, baseType: !85, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2783, file: !2756, line: 64, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !323, line: 94, baseType: !324)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2783, file: !2756, line: 65, baseType: !2789, size: 64, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2755, file: !2756, line: 105, baseType: !2792, size: 256)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 69, size: 256, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2792, file: !2756, line: 70, baseType: !181, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !2756, line: 79, baseType: !2796, size: 192, offset: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2792, file: !2756, line: 79, size: 192, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2807, !2812}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2796, file: !2756, line: 81, baseType: !85, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2796, file: !2756, line: 86, baseType: !768, size: 16)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2796, file: !2756, line: 92, baseType: !2801, size: 192)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2796, file: !2756, line: 88, size: 192, elements: !2802)
!2802 = !{!2803, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2801, file: !2756, line: 89, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 64, elements: !1562)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2801, file: !2756, line: 90, baseType: !181, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2801, file: !2756, line: 91, baseType: !181, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2796, file: !2756, line: 97, baseType: !2808, size: 96)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2796, file: !2756, line: 94, size: 96, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2808, file: !2756, line: 95, baseType: !2804, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2808, file: !2756, line: 96, baseType: !439, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2796, file: !2756, line: 103, baseType: !2813, size: 128)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2796, file: !2756, line: 99, size: 128, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2813, file: !2756, line: 100, baseType: !339, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2813, file: !2756, line: 101, baseType: !439, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2813, file: !2756, line: 102, baseType: !439, size: 32, offset: 96)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2755, file: !2756, line: 111, baseType: !2819, size: 128)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 108, size: 128, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2819, file: !2756, line: 109, baseType: !325, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2819, file: !2756, line: 110, baseType: !85, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2755, file: !2756, line: 118, baseType: !2824, size: 128)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !2756, line: 114, size: 128, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2824, file: !2756, line: 115, baseType: !181, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2824, file: !2756, line: 116, baseType: !85, size: 32, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2824, file: !2756, line: 117, baseType: !7, size: 32, offset: 96)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1400, file: !1074, line: 1208, baseType: !2609, size: 448, offset: 17664)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1400, file: !1074, line: 1215, baseType: !442, size: 64, offset: 18112)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1400, file: !1074, line: 1217, baseType: !442, size: 64, offset: 18176)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1400, file: !1074, line: 1219, baseType: !442, size: 64, offset: 18240)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1400, file: !1074, line: 1223, baseType: !2834, size: 64, offset: 18304)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2835, line: 99, baseType: !2836)
!2835 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2835, line: 99, size: 64, elements: !2837)
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2836, file: !2835, line: 99, baseType: !1646, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1400, file: !1074, line: 1225, baseType: !410, size: 32, offset: 18368)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1400, file: !1074, line: 1226, baseType: !85, size: 32, offset: 18400)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1400, file: !1074, line: 1227, baseType: !85, size: 32, offset: 18432)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1400, file: !1074, line: 1231, baseType: !2843, size: 64, offset: 18496)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1074, line: 1231, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1400, file: !1074, line: 1233, baseType: !187, size: 128, offset: 18560)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1400, file: !1074, line: 1240, baseType: !2847, size: 64, offset: 18688)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1074, line: 62, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1400, file: !1074, line: 1242, baseType: !2850, size: 64, offset: 18752)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1074, line: 1242, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1400, file: !1074, line: 1244, baseType: !187, size: 128, offset: 18816)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1400, file: !1074, line: 1245, baseType: !2854, size: 64, offset: 18944)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1074, line: 51, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1400, file: !1074, line: 1246, baseType: !630, size: 256, offset: 19008)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1400, file: !1074, line: 1247, baseType: !7, size: 32, offset: 19264)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1400, file: !1074, line: 1250, baseType: !2859, size: 64, offset: 19328)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1074, line: 57, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1400, file: !1074, line: 1251, baseType: !630, size: 256, offset: 19392)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1400, file: !1074, line: 1252, baseType: !187, size: 128, offset: 19648)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1400, file: !1074, line: 1259, baseType: !2126, size: 64, offset: 19776)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1400, file: !1074, line: 1260, baseType: !768, size: 16, offset: 19840)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1400, file: !1074, line: 1261, baseType: !768, size: 16, offset: 19856)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1400, file: !1074, line: 1314, baseType: !2867, size: 64, offset: 19904)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2869, line: 62, size: 256, align: 256, elements: !2870)
!2869 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2868, file: !2869, line: 75, baseType: !439, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2868, file: !2869, line: 90, baseType: !439, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2868, file: !2869, line: 112, baseType: !443, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2868, file: !2869, line: 132, baseType: !439, size: 32, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2868, file: !2869, line: 140, baseType: !439, size: 32, offset: 160)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2868, file: !2869, line: 149, baseType: !439, size: 32, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2868, file: !2869, line: 154, baseType: !2878, offset: 224)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, elements: !1782)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1400, file: !1074, line: 1315, baseType: !438, size: 32, offset: 19968)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1400, file: !1074, line: 1316, baseType: !438, size: 32, offset: 20000)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1400, file: !1074, line: 1321, baseType: !339, size: 64, offset: 20032)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1400, file: !1074, line: 1325, baseType: !85, size: 32, offset: 20096)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1400, file: !1074, line: 1326, baseType: !85, size: 32, offset: 20128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1400, file: !1074, line: 1327, baseType: !85, size: 32, offset: 20160)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1400, file: !1074, line: 1328, baseType: !85, size: 32, offset: 20192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1400, file: !1074, line: 1329, baseType: !850, size: 128, align: 64, offset: 20224)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1400, file: !1074, line: 1332, baseType: !2888, size: 128, offset: 20352)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2889, line: 51, size: 128, elements: !2890)
!2889 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2890 = !{!2891, !2896, !2897}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2888, file: !2889, line: 60, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2893, line: 7, size: 64, elements: !2894)
!2893 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2892, file: !2893, line: 12, baseType: !1643, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2888, file: !2889, line: 63, baseType: !710, size: 8, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2888, file: !2889, line: 70, baseType: !710, size: 8, offset: 72)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1400, file: !1074, line: 1335, baseType: !2165, size: 64, offset: 20480)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1400, file: !1074, line: 1337, baseType: !2900, size: 128, offset: 20544)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2889, line: 39, size: 128, elements: !2901)
!2901 = !{!2902, !2963, !2964}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2900, file: !2889, line: 40, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1151, line: 74, size: 512, align: 128, elements: !2905)
!2905 = !{!2906, !2907, !2957, !2962}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2904, file: !1151, line: 75, baseType: !339, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !1151, line: 83, baseType: !2908, size: 320, offset: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !1151, line: 83, size: 320, elements: !2909)
!2909 = !{!2910, !2931, !2945, !2949, !2956}
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !1151, line: 84, baseType: !2911, size: 320)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !1151, line: 84, size: 320, elements: !2912)
!2912 = !{!2913, !2924, !2925, !2930}
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !1151, line: 90, baseType: !2914, size: 128)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2911, file: !1151, line: 90, size: 128, elements: !2915)
!2915 = !{!2916, !2917, !2922, !2923}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2914, file: !1151, line: 91, baseType: !187, size: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !1151, line: 94, baseType: !2918, size: 128)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !1151, line: 94, size: 128, elements: !2919)
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2918, file: !1151, line: 96, baseType: !181, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2918, file: !1151, line: 98, baseType: !7, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2914, file: !1151, line: 102, baseType: !187, size: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2914, file: !1151, line: 103, baseType: !187, size: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2911, file: !1151, line: 106, baseType: !365, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !1151, line: 107, baseType: !2926, size: 64, offset: 192)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2911, file: !1151, line: 107, size: 64, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2926, file: !1151, line: 108, baseType: !339, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2926, file: !1151, line: 109, baseType: !339, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2911, file: !1151, line: 117, baseType: !339, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !1151, line: 119, baseType: !2932, size: 320)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !1151, line: 119, size: 320, elements: !2933)
!2933 = !{!2934, !2935, !2938, !2939, !2940}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2932, file: !1151, line: 124, baseType: !339, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2932, file: !1151, line: 125, baseType: !2936, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1151, line: 125, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2932, file: !1151, line: 126, baseType: !339, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2932, file: !1151, line: 127, baseType: !339, size: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !1151, line: 128, baseType: !2941, size: 64, offset: 256)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !1151, line: 128, size: 64, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2941, file: !1151, line: 133, baseType: !339, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2941, file: !1151, line: 138, baseType: !634, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !1151, line: 141, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !1151, line: 141, size: 64, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2946, file: !1151, line: 142, baseType: !339, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !1151, line: 144, baseType: !2950, size: 128)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !1151, line: 144, size: 128, elements: !2951)
!2951 = !{!2952, !2955}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2950, file: !1151, line: 146, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1151, line: 146, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2950, file: !1151, line: 147, baseType: !181, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2908, file: !1151, line: 161, baseType: !850, size: 128, align: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !1151, line: 164, baseType: !2958, size: 32, offset: 384)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !1151, line: 164, size: 32, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2958, file: !1151, line: 169, baseType: !214, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2958, file: !1151, line: 177, baseType: !7, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2904, file: !1151, line: 181, baseType: !214, size: 32, offset: 416)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2900, file: !2889, line: 42, baseType: !439, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2900, file: !2889, line: 43, baseType: !439, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1400, file: !1074, line: 1340, baseType: !2966, size: 64, offset: 20672)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1074, line: 69, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1400, file: !1074, line: 1351, baseType: !85, size: 32, offset: 20736)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1400, file: !1074, line: 1352, baseType: !85, size: 32, offset: 20768)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1400, file: !1074, line: 1354, baseType: !339, size: 64, offset: 20800)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1400, file: !1074, line: 1364, baseType: !442, size: 64, offset: 20864)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1400, file: !1074, line: 1365, baseType: !442, size: 64, offset: 20928)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1400, file: !1074, line: 1412, baseType: !339, size: 64, offset: 20992)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1400, file: !1074, line: 1453, baseType: !2975, size: 64, offset: 21056)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1074, line: 1453, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1400, file: !1074, line: 1457, baseType: !2978, size: 64, offset: 21120)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2980)
!2980 = !{!2981, !2982, !3001, !3004, !3005, !3038, !3048}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2979, file: !44, line: 62, baseType: !43, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2979, file: !44, line: 64, baseType: !2983, size: 192, offset: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2979, file: !44, line: 64, size: 192, elements: !2984)
!2984 = !{!2985, !2996}
!2985 = !DIDerivedType(tag: DW_TAG_member, scope: !2983, file: !44, line: 65, baseType: !2986, size: 192)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !44, line: 65, size: 192, elements: !2987)
!2987 = !{!2988, !2995}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2986, file: !44, line: 66, baseType: !2989, size: 128)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2990, line: 50, size: 128, elements: !2991)
!2990 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2989, file: !2990, line: 52, baseType: !339, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2989, file: !2990, line: 54, baseType: !7, size: 32, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2989, file: !2990, line: 55, baseType: !7, size: 32, offset: 96)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2986, file: !44, line: 67, baseType: !339, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2983, file: !44, line: 70, baseType: !2997, size: 192)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !44, line: 70, size: 192, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2997, file: !44, line: 71, baseType: !850, size: 128, align: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2997, file: !44, line: 72, baseType: !339, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2979, file: !44, line: 76, baseType: !3002, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2979, file: !44, line: 77, baseType: !339, size: 64, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2979, file: !44, line: 79, baseType: !3006, size: 64, offset: 384)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2990, line: 25, size: 256, elements: !3008)
!3008 = !{!3009, !3015, !3019}
!3009 = !DIDerivedType(tag: DW_TAG_member, scope: !3007, file: !2990, line: 26, baseType: !3010, size: 128)
!3010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3007, file: !2990, line: 26, size: 128, elements: !3011)
!3011 = !{!3012, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3010, file: !2990, line: 27, baseType: !3013, size: 128)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !2482)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3010, file: !2990, line: 28, baseType: !3013, size: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3007, file: !2990, line: 31, baseType: !3016, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3018)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2990, line: 23, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, scope: !3007, file: !2990, line: 33, baseType: !3020, size: 64, offset: 192)
!3020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3007, file: !2990, line: 33, size: 64, elements: !3021)
!3021 = !{!3022, !3028, !3033}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3020, file: !2990, line: 38, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3020, file: !2990, line: 34, size: 64, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3023, file: !2990, line: 35, baseType: !626, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3023, file: !2990, line: 36, baseType: !222, size: 8, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3023, file: !2990, line: 37, baseType: !222, size: 8, offset: 40)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3020, file: !2990, line: 42, baseType: !3029, size: 16)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3020, file: !2990, line: 39, size: 16, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3029, file: !2990, line: 40, baseType: !222, size: 8)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3029, file: !2990, line: 41, baseType: !222, size: 8, offset: 8)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3020, file: !2990, line: 46, baseType: !3034, size: 16)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3020, file: !2990, line: 43, size: 16, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3034, file: !2990, line: 44, baseType: !222, size: 8)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3034, file: !2990, line: 45, baseType: !222, size: 8, offset: 8)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2979, file: !44, line: 81, baseType: !3039, size: 64, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3040, file: !44, line: 86, baseType: !3002, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3040, file: !44, line: 87, baseType: !339, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3040, file: !44, line: 88, baseType: !339, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3040, file: !44, line: 89, baseType: !339, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3040, file: !44, line: 90, baseType: !710, size: 8, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3040, file: !44, line: 92, baseType: !3039, size: 64, offset: 320)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2979, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1400, file: !1074, line: 1463, baseType: !3050, offset: 21184)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1074, line: 739, elements: !919)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1400, file: !1074, line: 1470, baseType: !850, size: 128, align: 64, offset: 21184)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1400, file: !1074, line: 1471, baseType: !1413, size: 32, offset: 21312)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1400, file: !1074, line: 1472, baseType: !85, size: 32, offset: 21344)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1400, file: !1074, line: 1474, baseType: !1399, size: 64, offset: 21376)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1400, file: !1074, line: 1475, baseType: !872, size: 320, offset: 21440)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1400, file: !1074, line: 1478, baseType: !3057, size: 64, offset: 21760)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1074, line: 1478, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1400, file: !1074, line: 1482, baseType: !1413, size: 32, offset: 21824)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1400, file: !1074, line: 1489, baseType: !181, size: 64, offset: 21888)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1400, file: !1074, line: 1504, baseType: !181, size: 64, offset: 21952)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1400, file: !1074, line: 1505, baseType: !443, size: 64, offset: 22016)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1400, file: !1074, line: 1506, baseType: !442, size: 64, offset: 22080)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1400, file: !1074, line: 1507, baseType: !443, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1400, file: !1074, line: 1508, baseType: !443, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1400, file: !1074, line: 1509, baseType: !443, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1400, file: !1074, line: 1510, baseType: !850, size: 128, align: 64, offset: 22208)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1400, file: !1074, line: 1511, baseType: !85, size: 32, offset: 22336)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1400, file: !1074, line: 1515, baseType: !3070, size: 64, offset: 22400)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1426, line: 56, size: 64, elements: !3071)
!3071 = !{!3072}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3070, file: !1426, line: 57, baseType: !1429, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1400, file: !1074, line: 1518, baseType: !3070, size: 64, offset: 22464)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1400, file: !1074, line: 1528, baseType: !850, size: 128, align: 64, offset: 22528)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1400, file: !1074, line: 1552, baseType: !3076, size: 35328, offset: 23040)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3077, line: 430, size: 35328, elements: !3078)
!3077 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3078 = !{!3079, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3108, !3109, !3110, !3111, !3112, !3113, !3116, !3117, !3118, !3119}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3076, file: !3077, line: 432, baseType: !3080, size: 192)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3081, size: 192, elements: !290)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3082, line: 16, size: 64, elements: !3083)
!3082 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3081, file: !3082, line: 17, baseType: !232, size: 16)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3081, file: !3082, line: 18, baseType: !232, size: 16, offset: 16)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3081, file: !3082, line: 19, baseType: !232, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3081, file: !3082, line: 19, baseType: !232, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3081, file: !3082, line: 19, baseType: !232, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3081, file: !3082, line: 19, baseType: !232, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3081, file: !3082, line: 19, baseType: !232, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3081, file: !3082, line: 20, baseType: !232, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3081, file: !3082, line: 20, baseType: !232, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3081, file: !3082, line: 20, baseType: !232, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3081, file: !3082, line: 20, baseType: !232, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3081, file: !3082, line: 20, baseType: !232, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3081, file: !3082, line: 20, baseType: !232, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3076, file: !3077, line: 436, baseType: !339, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3076, file: !3077, line: 440, baseType: !234, size: 16, offset: 256)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3076, file: !3077, line: 441, baseType: !234, size: 16, offset: 272)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3076, file: !3077, line: 442, baseType: !234, size: 16, offset: 288)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3076, file: !3077, line: 443, baseType: !234, size: 16, offset: 304)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3076, file: !3077, line: 447, baseType: !339, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3076, file: !3077, line: 448, baseType: !339, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3076, file: !3077, line: 459, baseType: !3105, size: 256, offset: 448)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3106, size: 256, elements: !860)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3077, line: 428, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3076, file: !3077, line: 461, baseType: !339, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3076, file: !3077, line: 463, baseType: !339, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3076, file: !3077, line: 465, baseType: !339, size: 64, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3076, file: !3077, line: 466, baseType: !339, size: 64, offset: 896)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3076, file: !3077, line: 467, baseType: !339, size: 64, offset: 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3076, file: !3077, line: 473, baseType: !3114, size: 64, offset: 1024)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3077, line: 10, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3076, file: !3077, line: 480, baseType: !339, size: 64, offset: 1088)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3076, file: !3077, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3076, file: !3077, line: 491, baseType: !438, size: 32, offset: 1184)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3076, file: !3077, line: 501, baseType: !3120, size: 33792, offset: 1536)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3121, line: 448, size: 33792, elements: !3122)
!3121 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3122 = !{!3123, !3124, !3125, !3287, !3288, !3294, !3295}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3120, file: !3121, line: 461, baseType: !7, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3120, file: !3121, line: 468, baseType: !339, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3120, file: !3121, line: 476, baseType: !3126, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3121, line: 356, size: 33280, align: 512, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3127, file: !3121, line: 358, baseType: !7, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3127, file: !3121, line: 361, baseType: !7, size: 32, offset: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3127, file: !3121, line: 364, baseType: !442, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3127, file: !3121, line: 367, baseType: !442, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3127, file: !3121, line: 370, baseType: !442, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3127, file: !3121, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3127, file: !3121, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3127, file: !3121, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3127, file: !3121, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3127, file: !3121, line: 397, baseType: !3139, size: 32768, offset: 512)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3121, line: 348, size: 32768, elements: !3140)
!3140 = !{!3141, !3156, !3193, !3270, !3283}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3139, file: !3121, line: 349, baseType: !3142, size: 896)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3121, line: 12, size: 896, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3155}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3142, file: !3121, line: 13, baseType: !438, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3142, file: !3121, line: 14, baseType: !438, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3142, file: !3121, line: 15, baseType: !438, size: 32, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3142, file: !3121, line: 16, baseType: !438, size: 32, offset: 96)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3142, file: !3121, line: 17, baseType: !438, size: 32, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3142, file: !3121, line: 18, baseType: !438, size: 32, offset: 160)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3142, file: !3121, line: 19, baseType: !438, size: 32, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3142, file: !3121, line: 22, baseType: !3152, size: 640, offset: 224)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 640, elements: !3153)
!3153 = !{!3154}
!3154 = !DISubrange(count: 20)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3142, file: !3121, line: 25, baseType: !438, size: 32, offset: 864)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3139, file: !3121, line: 350, baseType: !3157, size: 4096, align: 128)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3121, line: 34, size: 4096, align: 128, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3178, !3179, !3180, !3182, !3184, !3188}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3157, file: !3121, line: 35, baseType: !232, size: 16)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3157, file: !3121, line: 36, baseType: !232, size: 16, offset: 16)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3157, file: !3121, line: 37, baseType: !232, size: 16, offset: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3157, file: !3121, line: 38, baseType: !232, size: 16, offset: 48)
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3121, line: 39, baseType: !3164, size: 128, offset: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3121, line: 39, size: 128, elements: !3165)
!3165 = !{!3166, !3171}
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3121, line: 40, baseType: !3167, size: 128)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3121, line: 40, size: 128, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3167, file: !3121, line: 41, baseType: !442, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3167, file: !3121, line: 42, baseType: !442, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3121, line: 44, baseType: !3172, size: 128)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3121, line: 44, size: 128, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3172, file: !3121, line: 45, baseType: !438, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3172, file: !3121, line: 46, baseType: !438, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3172, file: !3121, line: 47, baseType: !438, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3172, file: !3121, line: 48, baseType: !438, size: 32, offset: 96)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3157, file: !3121, line: 51, baseType: !438, size: 32, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3157, file: !3121, line: 52, baseType: !438, size: 32, offset: 224)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3157, file: !3121, line: 55, baseType: !3181, size: 1024, offset: 256)
!3181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 1024, elements: !451)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3157, file: !3121, line: 58, baseType: !3183, size: 2048, offset: 1280)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 2048, elements: !294)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3157, file: !3121, line: 60, baseType: !3185, size: 384, offset: 3328)
!3185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 384, elements: !3186)
!3186 = !{!3187}
!3187 = !DISubrange(count: 12)
!3188 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3121, line: 62, baseType: !3189, size: 384, offset: 3712)
!3189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3121, line: 62, size: 384, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3189, file: !3121, line: 63, baseType: !3185, size: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3189, file: !3121, line: 64, baseType: !3185, size: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3139, file: !3121, line: 351, baseType: !3194, size: 1088)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3121, line: 79, size: 1088, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3269}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3194, file: !3121, line: 80, baseType: !438, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3194, file: !3121, line: 81, baseType: !438, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3194, file: !3121, line: 82, baseType: !438, size: 32, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3194, file: !3121, line: 83, baseType: !438, size: 32, offset: 96)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3194, file: !3121, line: 84, baseType: !438, size: 32, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3194, file: !3121, line: 85, baseType: !438, size: 32, offset: 160)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3194, file: !3121, line: 86, baseType: !438, size: 32, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3194, file: !3121, line: 88, baseType: !3152, size: 640, offset: 224)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3194, file: !3121, line: 89, baseType: !222, size: 8, offset: 864)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3194, file: !3121, line: 90, baseType: !222, size: 8, offset: 872)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3194, file: !3121, line: 91, baseType: !222, size: 8, offset: 880)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3194, file: !3121, line: 92, baseType: !222, size: 8, offset: 888)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3194, file: !3121, line: 93, baseType: !222, size: 8, offset: 896)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3194, file: !3121, line: 94, baseType: !222, size: 8, offset: 904)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3194, file: !3121, line: 95, baseType: !3211, size: 64, offset: 960)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3213, line: 11, size: 128, elements: !3214)
!3213 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3212, file: !3213, line: 12, baseType: !325, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3212, file: !3213, line: 13, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3219, line: 103, size: 1344, elements: !3220)
!3219 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3249, !3250, !3251}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3218, file: !3219, line: 109, baseType: !339, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3218, file: !3219, line: 110, baseType: !339, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3218, file: !3219, line: 111, baseType: !339, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3218, file: !3219, line: 112, baseType: !339, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3218, file: !3219, line: 113, baseType: !339, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3218, file: !3219, line: 114, baseType: !339, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3218, file: !3219, line: 117, baseType: !339, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3218, file: !3219, line: 118, baseType: !339, size: 64, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3218, file: !3219, line: 119, baseType: !339, size: 64, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3218, file: !3219, line: 120, baseType: !339, size: 64, offset: 576)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3218, file: !3219, line: 121, baseType: !339, size: 64, offset: 640)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3218, file: !3219, line: 122, baseType: !339, size: 64, offset: 704)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3218, file: !3219, line: 123, baseType: !339, size: 64, offset: 768)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3218, file: !3219, line: 124, baseType: !339, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3218, file: !3219, line: 125, baseType: !339, size: 64, offset: 896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3218, file: !3219, line: 139, baseType: !339, size: 64, offset: 960)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3218, file: !3219, line: 142, baseType: !339, size: 64, offset: 1024)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !3219, line: 144, baseType: !3239, size: 64, offset: 1088)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3218, file: !3219, line: 144, size: 64, elements: !3240)
!3240 = !{!3241, !3242, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3239, file: !3219, line: 146, baseType: !232, size: 16)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3239, file: !3219, line: 148, baseType: !442, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3239, file: !3219, line: 150, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3219, line: 59, size: 64, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3244, file: !3219, line: 61, baseType: !442, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3244, file: !3219, line: 63, baseType: !442, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3244, file: !3219, line: 65, baseType: !442, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !3219, line: 153, baseType: !339, size: 64, offset: 1152)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3218, file: !3219, line: 154, baseType: !339, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !3219, line: 156, baseType: !3252, size: 64, offset: 1280)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3218, file: !3219, line: 156, size: 64, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3252, file: !3219, line: 158, baseType: !232, size: 16)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3252, file: !3219, line: 160, baseType: !442, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3252, file: !3219, line: 162, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3219, line: 69, size: 64, elements: !3258)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3257, file: !3219, line: 71, baseType: !442, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3257, file: !3219, line: 73, baseType: !442, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3257, file: !3219, line: 75, baseType: !442, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3257, file: !3219, line: 77, baseType: !442, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3257, file: !3219, line: 80, baseType: !442, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3257, file: !3219, line: 83, baseType: !442, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3257, file: !3219, line: 86, baseType: !442, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3257, file: !3219, line: 88, baseType: !442, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3257, file: !3219, line: 93, baseType: !442, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3257, file: !3219, line: 100, baseType: !442, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3194, file: !3121, line: 96, baseType: !438, size: 32, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3139, file: !3121, line: 352, baseType: !3271, size: 4608, align: 512)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3121, line: 333, size: 4608, align: 512, elements: !3272)
!3272 = !{!3273, !3274, !3281}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3271, file: !3121, line: 334, baseType: !3157, size: 4096, align: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3271, file: !3121, line: 335, baseType: !3275, size: 512, offset: 4096)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3121, line: 312, size: 512, elements: !3276)
!3276 = !{!3277, !3278, !3279}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3275, file: !3121, line: 313, baseType: !442, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3275, file: !3121, line: 314, baseType: !442, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3275, file: !3121, line: 315, baseType: !3280, size: 384, offset: 128)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !1865)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3271, file: !3121, line: 336, baseType: !3282, offset: 4608)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !1782)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3139, file: !3121, line: 353, baseType: !3284, size: 32768)
!3284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 32768, elements: !3285)
!3285 = !{!3286}
!3286 = !DISubrange(count: 4096)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3120, file: !3121, line: 484, baseType: !3126, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3120, file: !3121, line: 491, baseType: !3289, size: 128, offset: 256)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3121, line: 404, size: 128, elements: !3290)
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3289, file: !3121, line: 424, baseType: !442, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3289, file: !3121, line: 432, baseType: !7, size: 32, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3289, file: !3121, line: 440, baseType: !7, size: 32, offset: 96)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3120, file: !3121, line: 498, baseType: !3289, size: 128, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3120, file: !3121, line: 508, baseType: !3127, size: 33280, align: 512, offset: 512)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1376, file: !1377, line: 16, baseType: !1386, size: 192, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1376, file: !1377, line: 17, baseType: !214, size: 32, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !521, file: !14, line: 1240, baseType: !181, size: 64, offset: 6912)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !521, file: !14, line: 1243, baseType: !438, size: 32, offset: 6976)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !521, file: !14, line: 1245, baseType: !1132, size: 64, offset: 7040)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !521, file: !14, line: 1246, baseType: !1132, size: 64, offset: 7104)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !521, file: !14, line: 1248, baseType: !439, size: 32, offset: 7168)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !521, file: !14, line: 1249, baseType: !3304, size: 64, offset: 7232)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !521, file: !14, line: 1252, baseType: !3307, size: 256, offset: 7296)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !451)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !521, file: !14, line: 1253, baseType: !3309, size: 128, offset: 7552)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3310, line: 21, baseType: !3311)
!3310 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3310, line: 19, size: 128, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3311, file: !3310, line: 20, baseType: !3314, size: 128)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, elements: !2482)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !521, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !521, file: !14, line: 1261, baseType: !630, size: 256, offset: 7744)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !521, file: !14, line: 1267, baseType: !249, size: 64, offset: 8000)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !521, file: !14, line: 1269, baseType: !467, size: 64, offset: 8064)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !521, file: !14, line: 1271, baseType: !3320, size: 448, offset: 8128)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1141, line: 63, size: 448, elements: !3321)
!3321 = !{!3322, !3327, !3328, !3329, !3330, !3331, !3332}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3320, file: !1141, line: 64, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!339, !3326, !1139}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3320, file: !1141, line: 66, baseType: !3323, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3320, file: !1141, line: 69, baseType: !325, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3320, file: !1141, line: 70, baseType: !85, size: 32, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3320, file: !1141, line: 71, baseType: !7, size: 32, offset: 224)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3320, file: !1141, line: 74, baseType: !187, size: 128, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3320, file: !1141, line: 85, baseType: !3333, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !521, file: !14, line: 1274, baseType: !634, size: 64, offset: 8576)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !521, file: !14, line: 1280, baseType: !634, size: 64, offset: 8640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !521, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !521, file: !14, line: 1286, baseType: !2215, size: 32, offset: 8736)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !521, file: !14, line: 1289, baseType: !952, size: 64, offset: 8768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !521, file: !14, line: 1290, baseType: !1000, size: 64, offset: 8832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !521, file: !14, line: 1297, baseType: !1959, size: 64, offset: 8896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !521, file: !14, line: 1304, baseType: !3342, size: 64, offset: 8960)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3343, line: 49, size: 64, elements: !3344)
!3343 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3344 = !{!3345}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3342, file: !3343, line: 50, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3343, line: 41, size: 512, align: 512, elements: !3348)
!3348 = !{!3349, !3350, !3355}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3347, file: !3343, line: 43, baseType: !194, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3347, file: !3343, line: 45, baseType: !3351, size: 192, offset: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3343, line: 29, size: 192, elements: !3352)
!3352 = !{!3353, !3354}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3351, file: !3343, line: 30, baseType: !187, size: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3351, file: !3343, line: 32, baseType: !325, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3347, file: !3343, line: 46, baseType: !325, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !521, file: !14, line: 1305, baseType: !3342, size: 64, offset: 9024)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !521, file: !14, line: 1306, baseType: !850, size: 128, align: 64, offset: 9088)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !521, file: !14, line: 1307, baseType: !890, size: 256, offset: 9216)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !521, file: !14, line: 1309, baseType: !630, size: 256, offset: 9472)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !521, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !521, file: !14, line: 1317, baseType: !194, size: 32, align: 512, offset: 10240)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !521, file: !14, line: 1318, baseType: !187, size: 128, offset: 10304)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !521, file: !14, line: 1320, baseType: !194, size: 32, offset: 10432)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !521, file: !14, line: 1321, baseType: !187, size: 128, offset: 10496)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !515, file: !516, line: 73, baseType: !85, size: 32, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !515, file: !516, line: 74, baseType: !3367, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1806, line: 42, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !469, file: !406, line: 141, baseType: !3371, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!85, !1203, !710}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !469, file: !406, line: 142, baseType: !3375, size: 64, offset: 768)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!404, !404, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !405, file: !406, line: 96, baseType: !520, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !405, file: !406, line: 97, baseType: !339, size: 64, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !405, file: !406, line: 98, baseType: !181, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !406, line: 100, baseType: !3384, size: 128, offset: 1024)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !406, line: 100, size: 128, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3384, file: !406, line: 101, baseType: !187, size: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3384, file: !406, line: 102, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !405, file: !406, line: 104, baseType: !187, size: 128, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !405, file: !406, line: 105, baseType: !187, size: 128, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !405, file: !406, line: 113, baseType: !3392, size: 128, offset: 1408)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !406, line: 109, size: 128, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3392, file: !406, line: 110, baseType: !876, size: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3392, file: !406, line: 111, baseType: !420, size: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3392, file: !406, line: 112, baseType: !850, size: 128, align: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !398, file: !14, line: 1968, baseType: !3398, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!249, !404, !369, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3403, line: 10, size: 128, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3402, file: !3403, line: 11, baseType: !673, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3402, file: !3403, line: 12, baseType: !181, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !398, file: !14, line: 1969, baseType: !3408, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!85, !3367, !369, !85}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !398, file: !14, line: 1970, baseType: !3412, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!392, !369, !85, !710}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !398, file: !14, line: 1972, baseType: !3416, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!85, !404, !289, !85}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !398, file: !14, line: 1974, baseType: !3420, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!85, !3367, !369, !404, !331, !710}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !398, file: !14, line: 1976, baseType: !3424, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!85, !404, !369, !404}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !398, file: !14, line: 1977, baseType: !3428, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!85, !369, !404}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !398, file: !14, line: 1978, baseType: !3432, size: 64, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!85, !3367, !369, !404, !249}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !398, file: !14, line: 1980, baseType: !3436, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!85, !3367, !369, !404, !331}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !398, file: !14, line: 1982, baseType: !3428, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !398, file: !14, line: 1983, baseType: !3441, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!85, !3367, !369, !404, !331, !525}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !398, file: !14, line: 1985, baseType: !3445, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!85, !3367, !369, !404, !369, !404, !7}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !398, file: !14, line: 1987, baseType: !3449, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!85, !3367, !404, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3467, !3476, !3477, !3482, !3483, !3484}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3453, file: !14, line: 227, baseType: !7, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3453, file: !14, line: 228, baseType: !331, size: 16, offset: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !14, line: 241, baseType: !3458, size: 32, offset: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3453, file: !14, line: 241, size: 32, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3458, file: !14, line: 242, baseType: !375, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3458, file: !14, line: 243, baseType: !3462, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3463, line: 16, baseType: !3464)
!3463 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3463, line: 14, size: 32, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3464, file: !3463, line: 15, baseType: !380, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !14, line: 245, baseType: !3468, size: 32, offset: 96)
!3468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3453, file: !14, line: 245, size: 32, elements: !3469)
!3469 = !{!3470, !3471}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3468, file: !14, line: 246, baseType: !384, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3468, file: !14, line: 247, baseType: !3472, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3463, line: 20, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3463, line: 18, size: 32, elements: !3474)
!3474 = !{!3475}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3473, file: !3463, line: 19, baseType: !388, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3453, file: !14, line: 249, baseType: !530, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3453, file: !14, line: 250, baseType: !3478, size: 128, offset: 192)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1133, line: 13, size: 128, elements: !3479)
!3479 = !{!3480, !3481}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3478, file: !1133, line: 14, baseType: !1132, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3478, file: !1133, line: 15, baseType: !325, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3453, file: !14, line: 251, baseType: !3478, size: 128, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3453, file: !14, line: 252, baseType: !3478, size: 128, offset: 448)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3453, file: !14, line: 259, baseType: !1722, size: 64, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !398, file: !14, line: 1988, baseType: !3486, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!85, !3367, !1203, !3489, !438, !7}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3491, line: 22, size: 1280, elements: !3492)
!3491 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3490, file: !3491, line: 23, baseType: !438, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3490, file: !3491, line: 24, baseType: !331, size: 16, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3490, file: !3491, line: 25, baseType: !7, size: 32, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3490, file: !3491, line: 26, baseType: !1844, size: 32, offset: 96)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3490, file: !3491, line: 27, baseType: !442, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3490, file: !3491, line: 28, baseType: !442, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3490, file: !3491, line: 41, baseType: !442, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3490, file: !3491, line: 42, baseType: !525, size: 32, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3490, file: !3491, line: 43, baseType: !525, size: 32, offset: 352)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3490, file: !3491, line: 44, baseType: !375, size: 32, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3490, file: !3491, line: 45, baseType: !384, size: 32, offset: 416)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3490, file: !3491, line: 46, baseType: !530, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3490, file: !3491, line: 47, baseType: !3478, size: 128, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3490, file: !3491, line: 48, baseType: !3478, size: 128, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3490, file: !3491, line: 49, baseType: !3478, size: 128, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3490, file: !3491, line: 50, baseType: !3478, size: 128, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3490, file: !3491, line: 51, baseType: !442, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3490, file: !3491, line: 52, baseType: !442, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3490, file: !3491, line: 53, baseType: !438, size: 32, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3490, file: !3491, line: 54, baseType: !438, size: 32, offset: 1184)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3490, file: !3491, line: 55, baseType: !442, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !398, file: !14, line: 1990, baseType: !3515, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!321, !404, !289, !336}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !398, file: !14, line: 1991, baseType: !3519, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!85, !369, !3522, !442, !442}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !398, file: !14, line: 1993, baseType: !3525, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!85, !369, !85}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !398, file: !14, line: 1994, baseType: !3529, size: 64, offset: 1152)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!85, !369, !404, !1722, !7, !331}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !398, file: !14, line: 1997, baseType: !3533, size: 64, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!85, !3367, !369, !1722, !331}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !398, file: !14, line: 1999, baseType: !3537, size: 64, offset: 1280)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!392, !3367, !404, !85}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !398, file: !14, line: 2001, baseType: !3541, size: 64, offset: 1344)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!85, !3367, !404, !392, !85}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !398, file: !14, line: 2003, baseType: !3545, size: 64, offset: 1408)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!85, !3367, !404, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !398, file: !14, line: 2005, baseType: !3551, size: 64, offset: 1472)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!85, !404, !3548}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !398, file: !14, line: 2006, baseType: !3555, size: 64, offset: 1536)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!3558, !369}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3560)
!3560 = !{!3561, !3568}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3559, file: !14, line: 3193, baseType: !3562, size: 128)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3563, line: 296, size: 128, elements: !3564)
!3563 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3562, file: !3563, line: 297, baseType: !194, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3562, file: !3563, line: 299, baseType: !1144, size: 32, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3562, file: !3563, line: 300, baseType: !181, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3559, file: !14, line: 3194, baseType: !438, size: 32, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !370, file: !14, line: 655, baseType: !520, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !370, file: !14, line: 656, baseType: !365, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !370, file: !14, line: 659, baseType: !181, size: 64, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !370, file: !14, line: 663, baseType: !339, size: 64, offset: 640)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !14, line: 671, baseType: !3574, size: 32, offset: 704)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !14, line: 671, size: 32, elements: !3575)
!3575 = !{!3576, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3574, file: !14, line: 672, baseType: !3577, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3574, file: !14, line: 673, baseType: !7, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !370, file: !14, line: 675, baseType: !525, size: 32, offset: 736)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !370, file: !14, line: 676, baseType: !530, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !370, file: !14, line: 677, baseType: !3478, size: 128, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !370, file: !14, line: 678, baseType: !3478, size: 128, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !370, file: !14, line: 679, baseType: !3478, size: 128, offset: 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !370, file: !14, line: 680, baseType: !194, size: 32, offset: 1216)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !370, file: !14, line: 681, baseType: !234, size: 16, offset: 1248)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !370, file: !14, line: 682, baseType: !222, size: 8, offset: 1264)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !370, file: !14, line: 683, baseType: !222, size: 8, offset: 1272)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !370, file: !14, line: 684, baseType: !1281, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !370, file: !14, line: 691, baseType: !339, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !370, file: !14, line: 692, baseType: !1293, size: 320, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !370, file: !14, line: 694, baseType: !339, size: 64, offset: 1728)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !370, file: !14, line: 695, baseType: !339, size: 64, offset: 1792)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !370, file: !14, line: 697, baseType: !876, size: 128, offset: 1856)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !370, file: !14, line: 698, baseType: !187, size: 128, offset: 1984)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !370, file: !14, line: 707, baseType: !187, size: 128, offset: 2112)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !370, file: !14, line: 708, baseType: !187, size: 128, offset: 2240)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !14, line: 709, baseType: !3598, size: 128, offset: 2368)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !14, line: 709, size: 128, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3598, file: !14, line: 710, baseType: !1000, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3598, file: !14, line: 711, baseType: !850, size: 128, align: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !370, file: !14, line: 713, baseType: !636, size: 64, offset: 2496)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !370, file: !14, line: 714, baseType: !636, size: 64, offset: 2560)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !370, file: !14, line: 715, baseType: !214, size: 32, offset: 2624)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !370, file: !14, line: 716, baseType: !214, size: 32, offset: 2656)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !370, file: !14, line: 717, baseType: !214, size: 32, offset: 2688)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !370, file: !14, line: 719, baseType: !214, size: 32, offset: 2720)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !14, line: 721, baseType: !3609, size: 64, offset: 2752)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !14, line: 721, size: 64, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3609, file: !14, line: 722, baseType: !1990, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3609, file: !14, line: 723, baseType: !1023, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !370, file: !14, line: 725, baseType: !3614, size: 64, offset: 2816)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !370, file: !14, line: 726, baseType: !366, size: 1536, align: 64, offset: 2880)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !370, file: !14, line: 727, baseType: !187, size: 128, offset: 4416)
!3618 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !14, line: 728, baseType: !3619, size: 64, offset: 4544)
!3619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !14, line: 728, size: 64, elements: !3620)
!3620 = !{!3621, !3622, !3625, !3626}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3619, file: !14, line: 729, baseType: !2165, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3619, file: !14, line: 730, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3619, file: !14, line: 731, baseType: !289, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3619, file: !14, line: 732, baseType: !7, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !370, file: !14, line: 735, baseType: !439, size: 32, offset: 4608)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !370, file: !14, line: 738, baseType: !439, size: 32, offset: 4640)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !370, file: !14, line: 739, baseType: !3304, size: 64, offset: 4672)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !370, file: !14, line: 750, baseType: !181, size: 64, offset: 4736)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !366, file: !14, line: 474, baseType: !3562, size: 128, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !366, file: !14, line: 475, baseType: !1293, size: 320, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !366, file: !14, line: 476, baseType: !1144, size: 32, offset: 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !366, file: !14, line: 477, baseType: !214, size: 32, offset: 544)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !366, file: !14, line: 482, baseType: !1578, size: 128, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !366, file: !14, line: 483, baseType: !339, size: 64, offset: 704)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !366, file: !14, line: 484, baseType: !339, size: 64, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !366, file: !14, line: 485, baseType: !3639, size: 64, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3642)
!3642 = !{!3643, !3647, !3717, !3721, !3725, !3731, !3736, !3740, !3745, !3749, !3753, !3757, !3758, !3762, !3766, !3770, !3775, !3779, !3786, !3787}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3641, file: !14, line: 405, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!85, !2903, !1035}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3641, file: !14, line: 406, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!85, !1722, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1151, line: 293, size: 1536, elements: !3653)
!3653 = !{!3654, !3684, !3698}
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !1151, line: 295, baseType: !3655, size: 512)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3652, file: !1151, line: 295, size: 512, elements: !3656)
!3656 = !{!3657, !3683}
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1151, line: 296, baseType: !3658, size: 448)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !1151, line: 296, size: 448, elements: !3659)
!3659 = !{!3660, !3661, !3670, !3671, !3672, !3681, !3682}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !1151, line: 298, baseType: !339, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !1151, line: 299, baseType: !3662, size: 128, offset: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3658, file: !1151, line: 299, size: 128, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3662, file: !1151, line: 300, baseType: !187, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !1151, line: 302, baseType: !3666, size: 128)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3662, file: !1151, line: 302, size: 128, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3666, file: !1151, line: 303, baseType: !181, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3666, file: !1151, line: 305, baseType: !7, size: 32, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3658, file: !1151, line: 310, baseType: !365, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3658, file: !1151, line: 311, baseType: !339, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !1151, line: 312, baseType: !3673, size: 64, offset: 320)
!3673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3658, file: !1151, line: 312, size: 64, elements: !3674)
!3674 = !{!3675, !3676}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3673, file: !1151, line: 313, baseType: !181, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3673, file: !1151, line: 314, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1151, line: 257, baseType: !3678)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1151, line: 255, size: 64, elements: !3679)
!3679 = !{!3680}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3678, file: !1151, line: 256, baseType: !339, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3658, file: !1151, line: 316, baseType: !214, size: 32, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3658, file: !1151, line: 317, baseType: !214, size: 32, offset: 416)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3655, file: !1151, line: 323, baseType: !2904, size: 512, align: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !1151, line: 325, baseType: !3685, size: 512, offset: 512)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3652, file: !1151, line: 325, size: 512, elements: !3686)
!3686 = !{!3687, !3697}
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !1151, line: 326, baseType: !3688, size: 320)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !1151, line: 326, size: 320, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3688, file: !1151, line: 327, baseType: !339, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3688, file: !1151, line: 328, baseType: !339, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3688, file: !1151, line: 329, baseType: !339, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3688, file: !1151, line: 331, baseType: !214, size: 32, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3688, file: !1151, line: 332, baseType: !214, size: 32, offset: 224)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3688, file: !1151, line: 333, baseType: !214, size: 32, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3688, file: !1151, line: 335, baseType: !7, size: 32, offset: 288)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3685, file: !1151, line: 339, baseType: !2904, size: 512, align: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !1151, line: 341, baseType: !3699, size: 512, offset: 1024)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3652, file: !1151, line: 341, size: 512, elements: !3700)
!3700 = !{!3701, !3710, !3716}
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !1151, line: 342, baseType: !3702, size: 384)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !1151, line: 342, size: 384, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3702, file: !1151, line: 343, baseType: !339, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3702, file: !1151, line: 344, baseType: !339, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3702, file: !1151, line: 346, baseType: !181, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3702, file: !1151, line: 347, baseType: !181, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3702, file: !1151, line: 348, baseType: !181, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3702, file: !1151, line: 349, baseType: !181, size: 64, offset: 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !1151, line: 352, baseType: !3711, size: 256)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !1151, line: 352, size: 256, elements: !3712)
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3711, file: !1151, line: 353, baseType: !339, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3711, file: !1151, line: 354, baseType: !339, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3711, file: !1151, line: 356, baseType: !187, size: 128, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3699, file: !1151, line: 359, baseType: !2904, size: 512, align: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3641, file: !14, line: 409, baseType: !3718, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!85, !365, !1035}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3641, file: !14, line: 412, baseType: !3722, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!710, !365, !3651}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3641, file: !14, line: 414, baseType: !3726, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3641, file: !14, line: 416, baseType: !3732, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!85, !1722, !365, !530, !7, !3735, !2180}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3641, file: !14, line: 419, baseType: !3737, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!85, !1722, !365, !530, !7, !7, !2903, !181}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3641, file: !14, line: 424, baseType: !3741, size: 64, offset: 448)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3744, !365, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !188, line: 131, baseType: !442)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3641, file: !14, line: 425, baseType: !3746, size: 64, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !3651, !336, !336}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3641, file: !14, line: 426, baseType: !3750, size: 64, offset: 576)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!710, !3651, !1144}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3641, file: !14, line: 427, baseType: !3754, size: 64, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{null, !3651}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3641, file: !14, line: 428, baseType: !2009, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3641, file: !14, line: 433, baseType: !3759, size: 64, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!85, !365, !3651, !3651, !50}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3641, file: !14, line: 435, baseType: !3763, size: 64, offset: 832)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!85, !3651}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3641, file: !14, line: 436, baseType: !3767, size: 64, offset: 896)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!710, !3651, !336, !336}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3641, file: !14, line: 438, baseType: !3771, size: 64, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3651, !3774, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3641, file: !14, line: 439, baseType: !3776, size: 64, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!85, !365, !2903}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3641, file: !14, line: 442, baseType: !3780, size: 64, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!85, !3783, !1722, !3785}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3641, file: !14, line: 444, baseType: !2172, size: 64, offset: 1152)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3641, file: !14, line: 445, baseType: !3788, size: 64, offset: 1216)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!85, !2012, !2034}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !14, line: 486, baseType: !339, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !366, file: !14, line: 487, baseType: !1293, size: 320, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !366, file: !14, line: 488, baseType: !2215, size: 32, offset: 1280)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !366, file: !14, line: 489, baseType: !194, size: 32, offset: 1312)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !366, file: !14, line: 490, baseType: !187, size: 128, offset: 1344)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !366, file: !14, line: 491, baseType: !181, size: 64, offset: 1472)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !356, file: !315, line: 180, baseType: !3798, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!321, !1722, !254, !355, !289, !530, !336}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !356, file: !315, line: 182, baseType: !3798, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !356, file: !315, line: 184, baseType: !3803, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!85, !1722, !254, !355, !2073}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !344, file: !315, line: 90, baseType: !3807, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !344, file: !315, line: 91, baseType: !3809, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !305, file: !246, line: 120, baseType: !3811, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!3814, !272}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3817)
!3817 = !{!3818, !3819, !3823, !3827, !3833, !3837}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3816, file: !58, line: 40, baseType: !57, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3816, file: !58, line: 41, baseType: !3820, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!710}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3816, file: !58, line: 42, baseType: !3824, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!181}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3816, file: !58, line: 43, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!2304, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3816, file: !58, line: 44, baseType: !3834, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!2304}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3816, file: !58, line: 45, baseType: !673, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !305, file: !246, line: 121, baseType: !3839, size: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!2304, !272}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !305, file: !246, line: 122, baseType: !3843, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !272, !3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !245, file: !246, line: 70, baseType: !3849, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !545, line: 190, size: 1152, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3943, !3944, !3945, !3946, !3947, !3950}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3850, file: !545, line: 191, baseType: !214, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3850, file: !545, line: 192, baseType: !214, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3850, file: !545, line: 202, baseType: !3849, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !545, line: 203, baseType: !249, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3850, file: !545, line: 205, baseType: !742, size: 192, align: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3850, file: !545, line: 207, baseType: !2304, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3850, file: !545, line: 208, baseType: !7, size: 32, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !545, line: 209, baseType: !3860, size: 256, offset: 512)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !545, line: 209, size: 256, elements: !3861)
!3861 = !{!3862, !3871, !3875}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3860, file: !545, line: 210, baseType: !3863, size: 256)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !545, line: 153, size: 256, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3870}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3863, file: !545, line: 154, baseType: !339, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3863, file: !545, line: 156, baseType: !1581, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3863, file: !545, line: 162, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !545, line: 162, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3863, file: !545, line: 167, baseType: !339, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3860, file: !545, line: 211, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !545, line: 170, size: 64, elements: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3872, file: !545, line: 171, baseType: !3849, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3860, file: !545, line: 212, baseType: !3876, size: 256)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !545, line: 174, size: 256, elements: !3877)
!3877 = !{!3878, !3938, !3941, !3942}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3876, file: !545, line: 175, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !545, line: 271, size: 768, elements: !3882)
!3882 = !{!3883, !3903, !3907, !3911, !3915, !3919, !3923, !3927, !3928, !3929, !3930, !3934}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3881, file: !545, line: 276, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!85, !3887}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !545, line: 251, size: 1216, elements: !3889)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3888, file: !545, line: 253, baseType: !3849, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3888, file: !545, line: 254, baseType: !1722, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3888, file: !545, line: 255, baseType: !1072, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3888, file: !545, line: 256, baseType: !181, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3888, file: !545, line: 259, baseType: !630, size: 256, offset: 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3888, file: !545, line: 260, baseType: !630, size: 256, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3888, file: !545, line: 261, baseType: !85, size: 32, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3888, file: !545, line: 262, baseType: !187, size: 128, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3888, file: !545, line: 263, baseType: !289, size: 64, offset: 960)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3888, file: !545, line: 265, baseType: !336, size: 64, offset: 1024)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3888, file: !545, line: 266, baseType: !710, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3888, file: !545, line: 267, baseType: !710, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3888, file: !545, line: 268, baseType: !2118, size: 64, offset: 1152)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3881, file: !545, line: 277, baseType: !3904, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3887}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3881, file: !545, line: 290, baseType: !3908, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!85, !1072, !181}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3881, file: !545, line: 292, baseType: !3912, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!181, !1072, !2003}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3881, file: !545, line: 293, baseType: !3916, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!181, !1072, !181, !2003}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3881, file: !545, line: 294, baseType: !3920, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !1072, !181}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3881, file: !545, line: 296, baseType: !3924, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!321, !3887, !289, !336, !530}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3881, file: !545, line: 306, baseType: !336, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3881, file: !545, line: 313, baseType: !710, size: 8, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3881, file: !545, line: 314, baseType: !3924, size: 64, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3881, file: !545, line: 317, baseType: !3931, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!2060, !3887, !2062}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3881, file: !545, line: 320, baseType: !3935, size: 64, offset: 704)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!85, !3887, !2073}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3876, file: !545, line: 176, baseType: !3939, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !545, line: 35, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3876, file: !545, line: 177, baseType: !530, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3876, file: !545, line: 178, baseType: !3849, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3850, file: !545, line: 215, baseType: !181, size: 64, offset: 768)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !545, line: 221, baseType: !442, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !545, line: 223, baseType: !234, size: 16, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3850, file: !545, line: 224, baseType: !331, size: 16, offset: 912)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3850, file: !545, line: 225, baseType: !3948, size: 64, offset: 960)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !545, line: 36, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3850, file: !545, line: 227, baseType: !850, size: 128, align: 64, offset: 1024)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !245, file: !246, line: 71, baseType: !3952, size: 32, offset: 448)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3953, line: 19, size: 32, elements: !3954)
!3953 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3954 = !{!3955}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3952, file: !3953, line: 20, baseType: !1413, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !245, file: !246, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !245, file: !246, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !245, file: !246, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !245, file: !246, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !245, file: !246, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !70, line: 707, baseType: !241, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !242, file: !70, line: 709, baseType: !3963, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !242, file: !70, line: 711, baseType: !249, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !70, line: 712, baseType: !3967, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3969)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3979, !3984, !3988}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3969, file: !70, line: 90, baseType: !249, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3969, file: !70, line: 91, baseType: !341, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3969, file: !70, line: 92, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!85, !3977, !284}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3969, file: !70, line: 93, baseType: !3980, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!289, !3977, !3983, !3846, !3847}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3969, file: !70, line: 95, baseType: !3985, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !241}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3969, file: !70, line: 97, baseType: !3989, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3991)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !3992)
!3992 = !{!3993, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3991, file: !77, line: 287, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!85, !241}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3991, file: !77, line: 288, baseType: !3985, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3991, file: !77, line: 289, baseType: !3994, size: 64, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3991, file: !77, line: 290, baseType: !3994, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3991, file: !77, line: 291, baseType: !3994, size: 64, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3991, file: !77, line: 292, baseType: !3994, size: 64, offset: 320)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3991, file: !77, line: 293, baseType: !3994, size: 64, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3991, file: !77, line: 294, baseType: !3994, size: 64, offset: 448)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3991, file: !77, line: 295, baseType: !3994, size: 64, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3991, file: !77, line: 296, baseType: !3994, size: 64, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3991, file: !77, line: 297, baseType: !3994, size: 64, offset: 640)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3991, file: !77, line: 298, baseType: !3994, size: 64, offset: 704)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3991, file: !77, line: 299, baseType: !3994, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3991, file: !77, line: 300, baseType: !3994, size: 64, offset: 832)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3991, file: !77, line: 301, baseType: !3994, size: 64, offset: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3991, file: !77, line: 302, baseType: !3994, size: 64, offset: 960)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3991, file: !77, line: 303, baseType: !3994, size: 64, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3991, file: !77, line: 304, baseType: !3994, size: 64, offset: 1088)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3991, file: !77, line: 305, baseType: !3994, size: 64, offset: 1152)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3991, file: !77, line: 306, baseType: !3994, size: 64, offset: 1216)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3991, file: !77, line: 307, baseType: !3994, size: 64, offset: 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3991, file: !77, line: 308, baseType: !3994, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3991, file: !77, line: 309, baseType: !3994, size: 64, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !242, file: !70, line: 714, baseType: !4020, size: 64, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4023, line: 80, size: 1344, elements: !4024)
!4023 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4103}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4022, file: !4023, line: 81, baseType: !249, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4022, file: !4023, line: 82, baseType: !249, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4022, file: !4023, line: 83, baseType: !341, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4022, file: !4023, line: 84, baseType: !341, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4022, file: !4023, line: 85, baseType: !341, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4022, file: !4023, line: 87, baseType: !4031, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!85, !241, !4034}
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4056, !4066, !4067, !4068, !4069, !4070, !4078, !4079, !4080, !4081, !4082, !4083}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4035, file: !64, line: 97, baseType: !249, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4035, file: !64, line: 98, baseType: !4020, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4035, file: !64, line: 100, baseType: !559, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4035, file: !64, line: 101, baseType: !249, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4035, file: !64, line: 103, baseType: !710, size: 8, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4035, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4035, file: !64, line: 106, baseType: !4044, size: 64, offset: 320)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4046)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4047, line: 282, size: 1600, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4048 = !{!4049, !4050, !4051, !4055}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4046, file: !4047, line: 283, baseType: !3307, size: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4046, file: !4047, line: 284, baseType: !3307, size: 256, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4046, file: !4047, line: 285, baseType: !4052, size: 1024, offset: 512)
!4052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 1024, elements: !4053)
!4053 = !{!4054}
!4054 = !DISubrange(count: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4046, file: !4047, line: 286, baseType: !2304, size: 64, offset: 1536)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4035, file: !64, line: 107, baseType: !4057, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4047, line: 217, size: 256, elements: !4060)
!4060 = !{!4061, !4062, !4064, !4065}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4059, file: !4047, line: 218, baseType: !3314, size: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4059, file: !4047, line: 219, baseType: !4063, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4047, line: 15, baseType: !339)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4059, file: !4047, line: 220, baseType: !439, size: 32, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4059, file: !4047, line: 221, baseType: !439, size: 32, offset: 224)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4035, file: !64, line: 109, baseType: !3994, size: 64, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4035, file: !64, line: 110, baseType: !3985, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4035, file: !64, line: 111, baseType: !3994, size: 64, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4035, file: !64, line: 112, baseType: !3985, size: 64, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4035, file: !64, line: 113, baseType: !4071, size: 64, offset: 704)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!85, !241, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4076)
!4076 = !{!4077}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4075, file: !77, line: 59, baseType: !85, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4035, file: !64, line: 114, baseType: !3994, size: 64, offset: 768)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4035, file: !64, line: 115, baseType: !341, size: 64, offset: 832)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4035, file: !64, line: 116, baseType: !341, size: 64, offset: 896)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4035, file: !64, line: 118, baseType: !3989, size: 64, offset: 960)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4035, file: !64, line: 119, baseType: !3985, size: 64, offset: 1024)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4035, file: !64, line: 121, baseType: !4084, size: 64, offset: 1088)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4022, file: !4023, line: 88, baseType: !3974, size: 64, offset: 384)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4022, file: !4023, line: 89, baseType: !3994, size: 64, offset: 448)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4022, file: !4023, line: 90, baseType: !3985, size: 64, offset: 512)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4022, file: !4023, line: 91, baseType: !3985, size: 64, offset: 576)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4022, file: !4023, line: 92, baseType: !3985, size: 64, offset: 640)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4022, file: !4023, line: 94, baseType: !3994, size: 64, offset: 704)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4022, file: !4023, line: 95, baseType: !3994, size: 64, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4022, file: !4023, line: 97, baseType: !4071, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4022, file: !4023, line: 98, baseType: !3994, size: 64, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4022, file: !4023, line: 100, baseType: !3994, size: 64, offset: 960)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4022, file: !4023, line: 102, baseType: !3994, size: 64, offset: 1024)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4022, file: !4023, line: 103, baseType: !3985, size: 64, offset: 1088)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4022, file: !4023, line: 105, baseType: !3989, size: 64, offset: 1152)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4022, file: !4023, line: 107, baseType: !4100, size: 64, offset: 1216)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4102)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4023, line: 107, flags: DIFlagFwdDecl)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4022, file: !4023, line: 109, baseType: !710, size: 8, offset: 1280)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !242, file: !70, line: 715, baseType: !4034, size: 64, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !242, file: !70, line: 717, baseType: !181, size: 64, offset: 896)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !242, file: !70, line: 719, baseType: !181, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !242, file: !70, line: 721, baseType: !630, size: 256, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !242, file: !70, line: 725, baseType: !4109, size: 448, offset: 1280)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4109, file: !70, line: 518, baseType: !187, size: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4109, file: !70, line: 519, baseType: !187, size: 128, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4109, file: !70, line: 520, baseType: !187, size: 128, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4109, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !242, file: !70, line: 726, baseType: !4116, size: 2496, offset: 1728)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4117)
!4117 = !{!4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4200, !4204}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4116, file: !77, line: 664, baseType: !4074, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4116, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4116, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4116, file: !77, line: 667, baseType: !710, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4116, file: !77, line: 668, baseType: !710, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4116, file: !77, line: 669, baseType: !710, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4116, file: !77, line: 670, baseType: !710, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4116, file: !77, line: 671, baseType: !710, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4116, file: !77, line: 672, baseType: !710, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4116, file: !77, line: 673, baseType: !710, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4116, file: !77, line: 674, baseType: !710, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4116, file: !77, line: 675, baseType: !438, size: 32, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4116, file: !77, line: 676, baseType: !194, size: 32, offset: 96)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4116, file: !77, line: 678, baseType: !187, size: 128, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4116, file: !77, line: 679, baseType: !579, size: 256, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4116, file: !77, line: 680, baseType: !4134, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4136, line: 43, size: 1536, elements: !4137)
!4136 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4135, file: !4136, line: 44, baseType: !249, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4135, file: !4136, line: 45, baseType: !85, size: 32, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4135, file: !4136, line: 46, baseType: !187, size: 128, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4135, file: !4136, line: 47, baseType: !194, size: 32, offset: 256)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4135, file: !4136, line: 48, baseType: !4143, size: 64, offset: 320)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4135, file: !4136, line: 49, baseType: !872, size: 320, offset: 384)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4135, file: !4136, line: 50, baseType: !339, size: 64, offset: 704)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4135, file: !4136, line: 51, baseType: !1527, size: 64, offset: 768)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4135, file: !4136, line: 52, baseType: !1527, size: 64, offset: 832)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4135, file: !4136, line: 53, baseType: !1527, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4135, file: !4136, line: 54, baseType: !1527, size: 64, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4135, file: !4136, line: 55, baseType: !1527, size: 64, offset: 1024)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4135, file: !4136, line: 56, baseType: !339, size: 64, offset: 1088)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4135, file: !4136, line: 57, baseType: !339, size: 64, offset: 1152)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4135, file: !4136, line: 58, baseType: !339, size: 64, offset: 1216)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4135, file: !4136, line: 59, baseType: !339, size: 64, offset: 1280)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4135, file: !4136, line: 60, baseType: !339, size: 64, offset: 1344)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4135, file: !4136, line: 61, baseType: !241, size: 64, offset: 1408)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4135, file: !4136, line: 62, baseType: !710, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4135, file: !4136, line: 63, baseType: !710, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4116, file: !77, line: 681, baseType: !710, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4116, file: !77, line: 682, baseType: !710, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4116, file: !77, line: 683, baseType: !710, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4116, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4116, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4116, file: !77, line: 690, baseType: !1519, size: 512, offset: 640)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4116, file: !77, line: 691, baseType: !442, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4116, file: !77, line: 692, baseType: !890, size: 256, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4116, file: !77, line: 693, baseType: !1386, size: 192, offset: 1472)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4116, file: !77, line: 694, baseType: !4143, size: 64, offset: 1664)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4116, file: !77, line: 695, baseType: !214, size: 32, offset: 1728)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4116, file: !77, line: 696, baseType: !214, size: 32, offset: 1760)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4116, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4116, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4116, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4116, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4116, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4116, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4116, file: !77, line: 703, baseType: !710, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4116, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4116, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4116, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4116, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4116, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4116, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4116, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4116, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4116, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4116, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4116, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4116, file: !77, line: 715, baseType: !442, size: 64, offset: 2048)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4116, file: !77, line: 716, baseType: !442, size: 64, offset: 2112)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4116, file: !77, line: 717, baseType: !442, size: 64, offset: 2176)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4116, file: !77, line: 718, baseType: !442, size: 64, offset: 2240)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4116, file: !77, line: 720, baseType: !4195, size: 64, offset: 2304)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4197)
!4197 = !{!4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4196, file: !77, line: 633, baseType: !194, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4196, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4116, file: !77, line: 721, baseType: !4201, size: 64, offset: 2368)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !241, !626}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4116, file: !77, line: 722, baseType: !4205, size: 64, offset: 2432)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !242, file: !70, line: 727, baseType: !4208, size: 64, offset: 4224)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4217, !4218, !4219}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4209, file: !77, line: 743, baseType: !3991, size: 1472)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4209, file: !77, line: 744, baseType: !3994, size: 64, offset: 1472)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4209, file: !77, line: 745, baseType: !4214, size: 64, offset: 1536)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !241, !710}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4209, file: !77, line: 746, baseType: !3994, size: 64, offset: 1600)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4209, file: !77, line: 747, baseType: !3985, size: 64, offset: 1664)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4209, file: !77, line: 748, baseType: !3985, size: 64, offset: 1728)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !242, file: !70, line: 736, baseType: !4221, size: 128, offset: 4288)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4222)
!4222 = !{!4223, !4227}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4221, file: !70, line: 531, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4226, line: 13, flags: DIFlagFwdDecl)
!4226 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4221, file: !70, line: 532, baseType: !4228, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !242, file: !70, line: 738, baseType: !4231, size: 64, offset: 4416)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4233 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !242, file: !70, line: 740, baseType: !4235, size: 64, offset: 4480)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !242, file: !70, line: 741, baseType: !442, size: 64, offset: 4544)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !242, file: !70, line: 746, baseType: !442, size: 64, offset: 4608)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !242, file: !70, line: 747, baseType: !4239, size: 64, offset: 4672)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4241)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !242, file: !70, line: 749, baseType: !4243, size: 64, offset: 4736)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4245)
!4245 = !{!4246, !4247, !4248}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4244, file: !70, line: 433, baseType: !7, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4244, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4244, file: !70, line: 435, baseType: !339, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !242, file: !70, line: 751, baseType: !187, size: 128, offset: 4800)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !242, file: !70, line: 762, baseType: !4251, size: 64, offset: 4928)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !242, file: !70, line: 770, baseType: !4254, offset: 4992)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4255, line: 5, elements: !919)
!4255 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !242, file: !70, line: 772, baseType: !4257, size: 64, offset: 4992)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4259, line: 18, flags: DIFlagFwdDecl)
!4259 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !242, file: !70, line: 773, baseType: !4261, size: 64, offset: 5056)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4023, line: 22, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !242, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !242, file: !70, line: 778, baseType: !525, size: 32, offset: 5152)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !242, file: !70, line: 779, baseType: !438, size: 32, offset: 5184)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !242, file: !70, line: 781, baseType: !194, size: 32, offset: 5216)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !242, file: !70, line: 782, baseType: !187, size: 128, offset: 5248)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !242, file: !70, line: 784, baseType: !4269, size: 64, offset: 5376)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4272, line: 52, size: 768, elements: !4273)
!4272 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4282, !4286, !4287, !4288, !4289, !4293, !4297}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !4272, line: 53, baseType: !249, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4271, file: !4272, line: 55, baseType: !341, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4271, file: !4272, line: 56, baseType: !341, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4271, file: !4272, line: 58, baseType: !3974, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4271, file: !4272, line: 59, baseType: !4279, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!289, !3977, !3983}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4271, file: !4272, line: 61, baseType: !4283, size: 64, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !4269}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4271, file: !4272, line: 62, baseType: !3985, size: 64, offset: 384)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4271, file: !4272, line: 64, baseType: !3994, size: 64, offset: 448)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4271, file: !4272, line: 66, baseType: !3814, size: 64, offset: 512)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4271, file: !4272, line: 67, baseType: !4290, size: 64, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!2304, !3977}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4271, file: !4272, line: 69, baseType: !4294, size: 64, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !3977, !3846, !3847}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4271, file: !4272, line: 71, baseType: !3989, size: 64, offset: 704)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !242, file: !70, line: 785, baseType: !341, size: 64, offset: 5440)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !70, line: 787, baseType: !3985, size: 64, offset: 5504)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !242, file: !70, line: 788, baseType: !4301, size: 64, offset: 5568)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !242, file: !70, line: 789, baseType: !4304, size: 64, offset: 5632)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !242, file: !70, line: 791, baseType: !4307, size: 64, offset: 5696)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313, !4314}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4308, file: !70, line: 598, baseType: !92, size: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4308, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4308, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4308, file: !70, line: 601, baseType: !710, size: 8, offset: 96)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4308, file: !70, line: 602, baseType: !710, size: 8, offset: 104)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !242, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !242, file: !70, line: 795, baseType: !710, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !242, file: !70, line: 796, baseType: !710, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !242, file: !70, line: 797, baseType: !710, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !242, file: !70, line: 798, baseType: !710, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !242, file: !70, line: 799, baseType: !710, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !238, file: !146, line: 453, baseType: !241, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !238, file: !146, line: 454, baseType: !85, size: 32, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !238, file: !146, line: 455, baseType: !249, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !238, file: !146, line: 456, baseType: !222, size: 8, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !238, file: !146, line: 460, baseType: !222, size: 8, offset: 264)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !238, file: !146, line: 461, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !238, file: !146, line: 462, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !238, file: !146, line: 463, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !238, file: !146, line: 468, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !238, file: !146, line: 469, baseType: !7, size: 32, offset: 288)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !238, file: !146, line: 471, baseType: !85, size: 32, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !238, file: !146, line: 473, baseType: !630, size: 256, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !238, file: !146, line: 475, baseType: !4334, size: 128, offset: 640)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !146, line: 444, size: 128, elements: !4335)
!4335 = !{!4336}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4334, file: !146, line: 445, baseType: !4337, size: 128)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 128, elements: !749)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !238, file: !146, line: 476, baseType: !4339, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !146, line: 652, size: 10816, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4362, !4363, !4365, !4366, !4367, !4408, !4409, !4426, !4496, !4580, !4581, !4583, !4584, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4623, !4630, !4631, !4632, !4633}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4340, file: !146, line: 653, baseType: !85, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4340, file: !146, line: 654, baseType: !2481, size: 128, offset: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4340, file: !146, line: 655, baseType: !438, size: 32, offset: 160)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4340, file: !146, line: 656, baseType: !117, size: 32, offset: 192)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4340, file: !146, line: 657, baseType: !129, size: 32, offset: 224)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4340, file: !146, line: 658, baseType: !7, size: 32, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4340, file: !146, line: 659, baseType: !7, size: 32, offset: 288)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_rate", scope: !4340, file: !146, line: 660, baseType: !138, size: 32, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4340, file: !146, line: 662, baseType: !4351, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !4353, line: 558, size: 640, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7dec1a8757c1422b029643f18514a056")
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360, !4361}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4352, file: !4353, line: 559, baseType: !4339, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !4352, file: !4353, line: 560, baseType: !85, size: 32, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !4352, file: !4353, line: 561, baseType: !7, size: 32, offset: 96)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4352, file: !4353, line: 562, baseType: !181, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4352, file: !4353, line: 565, baseType: !194, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !4352, file: !4353, line: 566, baseType: !187, size: 128, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !4352, file: !4353, line: 567, baseType: !890, size: 256, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4340, file: !146, line: 663, baseType: !85, size: 32, offset: 448)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4340, file: !146, line: 665, baseType: !4364, size: 64, offset: 480)
!4364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !749)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4340, file: !146, line: 667, baseType: !4339, size: 64, offset: 576)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4340, file: !146, line: 668, baseType: !237, size: 64, offset: 640)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4340, file: !146, line: 669, baseType: !4368, size: 640, offset: 704)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !146, line: 66, size: 640, elements: !4369)
!4369 = !{!4370, !4382, !4390, !4398, !4399, !4400, !4403, !4405, !4406, !4407}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4368, file: !146, line: 67, baseType: !4371, size: 72)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !118, line: 407, size: 72, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4379, !4380, !4381}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4371, file: !118, line: 408, baseType: !224, size: 8)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4371, file: !118, line: 409, baseType: !224, size: 8, offset: 8)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4371, file: !118, line: 411, baseType: !224, size: 8, offset: 16)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4371, file: !118, line: 412, baseType: !224, size: 8, offset: 24)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4371, file: !118, line: 413, baseType: !4378, size: 16, offset: 32)
!4378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2061, line: 36, baseType: !233)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4371, file: !118, line: 414, baseType: !224, size: 8, offset: 48)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4371, file: !118, line: 418, baseType: !224, size: 8, offset: 56)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4371, file: !118, line: 419, baseType: !224, size: 8, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4368, file: !146, line: 68, baseType: !4383, size: 48, offset: 72)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !118, line: 689, size: 48, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388, !4389}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4383, file: !118, line: 690, baseType: !224, size: 8)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4383, file: !118, line: 691, baseType: !224, size: 8, offset: 8)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4383, file: !118, line: 693, baseType: !224, size: 8, offset: 16)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4383, file: !118, line: 694, baseType: !224, size: 8, offset: 24)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4383, file: !118, line: 695, baseType: !4378, size: 16, offset: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4368, file: !146, line: 69, baseType: !4391, size: 64, offset: 120)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !118, line: 677, size: 64, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4391, file: !118, line: 678, baseType: !224, size: 8)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4391, file: !118, line: 679, baseType: !224, size: 8, offset: 8)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4391, file: !118, line: 680, baseType: !4378, size: 16, offset: 16)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4391, file: !118, line: 681, baseType: !4397, size: 32, offset: 32)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2061, line: 38, baseType: !439)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4368, file: !146, line: 70, baseType: !187, size: 128, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4368, file: !146, line: 71, baseType: !181, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4368, file: !146, line: 72, baseType: !4401, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !146, line: 47, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4368, file: !146, line: 74, baseType: !4404, size: 64, offset: 448)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4368, file: !146, line: 75, baseType: !85, size: 32, offset: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4368, file: !146, line: 76, baseType: !85, size: 32, offset: 544)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4368, file: !146, line: 77, baseType: !85, size: 32, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4340, file: !146, line: 671, baseType: !242, size: 5824, offset: 1344)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4340, file: !146, line: 673, baseType: !4410, size: 144, offset: 7168)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !118, line: 286, size: 144, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4410, file: !118, line: 287, baseType: !224, size: 8)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4410, file: !118, line: 288, baseType: !224, size: 8, offset: 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4410, file: !118, line: 290, baseType: !4378, size: 16, offset: 16)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4410, file: !118, line: 291, baseType: !224, size: 8, offset: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4410, file: !118, line: 292, baseType: !224, size: 8, offset: 40)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4410, file: !118, line: 293, baseType: !224, size: 8, offset: 48)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4410, file: !118, line: 294, baseType: !224, size: 8, offset: 56)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4410, file: !118, line: 295, baseType: !4378, size: 16, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4410, file: !118, line: 296, baseType: !4378, size: 16, offset: 80)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4410, file: !118, line: 297, baseType: !4378, size: 16, offset: 96)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4410, file: !118, line: 298, baseType: !224, size: 8, offset: 112)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4410, file: !118, line: 299, baseType: !224, size: 8, offset: 120)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4410, file: !118, line: 300, baseType: !224, size: 8, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4410, file: !118, line: 301, baseType: !224, size: 8, offset: 136)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4340, file: !146, line: 674, baseType: !4427, size: 64, offset: 7360)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !146, line: 424, size: 384, elements: !4429)
!4429 = !{!4430, !4438, !4446, !4458, !4480, !4489}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4428, file: !146, line: 425, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !118, line: 844, size: 40, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4432, file: !118, line: 845, baseType: !224, size: 8)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4432, file: !118, line: 846, baseType: !224, size: 8, offset: 8)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4432, file: !118, line: 848, baseType: !4378, size: 16, offset: 16)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4432, file: !118, line: 849, baseType: !224, size: 8, offset: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4428, file: !146, line: 427, baseType: !4439, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !118, line: 895, size: 56, elements: !4441)
!4441 = !{!4442, !4443, !4444, !4445}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4440, file: !118, line: 896, baseType: !224, size: 8)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4440, file: !118, line: 897, baseType: !224, size: 8, offset: 8)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4440, file: !118, line: 898, baseType: !224, size: 8, offset: 16)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4440, file: !118, line: 899, baseType: !4397, size: 32, offset: 24)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4428, file: !146, line: 428, baseType: !4447, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !118, line: 917, size: 80, elements: !4449)
!4449 = !{!4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4448, file: !118, line: 918, baseType: !224, size: 8)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4448, file: !118, line: 919, baseType: !224, size: 8, offset: 8)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4448, file: !118, line: 920, baseType: !224, size: 8, offset: 16)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4448, file: !118, line: 921, baseType: !224, size: 8, offset: 24)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4448, file: !118, line: 923, baseType: !4378, size: 16, offset: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4448, file: !118, line: 928, baseType: !224, size: 8, offset: 48)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4448, file: !118, line: 929, baseType: !224, size: 8, offset: 56)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4448, file: !118, line: 930, baseType: !4378, size: 16, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4428, file: !146, line: 429, baseType: !4459, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !118, line: 971, size: 128, elements: !4461)
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4460, file: !118, line: 972, baseType: !224, size: 8)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4460, file: !118, line: 973, baseType: !224, size: 8, offset: 8)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4460, file: !118, line: 974, baseType: !224, size: 8, offset: 16)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4460, file: !118, line: 975, baseType: !224, size: 8, offset: 24)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4460, file: !118, line: 976, baseType: !4397, size: 32, offset: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4460, file: !118, line: 979, baseType: !4378, size: 16, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4460, file: !118, line: 983, baseType: !4378, size: 16, offset: 80)
!4469 = !DIDerivedType(tag: DW_TAG_member, scope: !4460, file: !118, line: 984, baseType: !4470, size: 32, offset: 96)
!4470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4460, file: !118, line: 984, size: 32, elements: !4471)
!4471 = !{!4472, !4473}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_padding", scope: !4470, file: !118, line: 985, baseType: !4397, size: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, scope: !4470, file: !118, line: 987, baseType: !4474)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4470, file: !118, line: 987, elements: !4475)
!4475 = !{!4476, !4478}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_bmSublinkSpeedAttr", scope: !4474, file: !118, line: 987, baseType: !4477)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4474, file: !118, line: 987, elements: !919)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4474, file: !118, line: 987, baseType: !4479)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4397, elements: !1782)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4428, file: !146, line: 430, baseType: !4481, size: 64, offset: 256)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !118, line: 940, size: 160, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4482, file: !118, line: 941, baseType: !224, size: 8)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4482, file: !118, line: 942, baseType: !224, size: 8, offset: 8)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4482, file: !118, line: 943, baseType: !224, size: 8, offset: 16)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4482, file: !118, line: 944, baseType: !224, size: 8, offset: 24)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4482, file: !118, line: 945, baseType: !3314, size: 128, offset: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4428, file: !146, line: 431, baseType: !4490, size: 64, offset: 320)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !118, line: 1113, size: 24, elements: !4492)
!4492 = !{!4493, !4494, !4495}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4491, file: !118, line: 1114, baseType: !224, size: 8)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4491, file: !118, line: 1115, baseType: !224, size: 8, offset: 8)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4491, file: !118, line: 1116, baseType: !224, size: 8, offset: 16)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4340, file: !146, line: 675, baseType: !4497, size: 64, offset: 7424)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !146, line: 402, size: 5440, elements: !4499)
!4499 = !{!4500, !4511, !4512, !4525, !4569, !4578, !4579}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4498, file: !146, line: 403, baseType: !4501, size: 72)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !118, line: 346, size: 72, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4501, file: !118, line: 347, baseType: !224, size: 8)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4501, file: !118, line: 348, baseType: !224, size: 8, offset: 8)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4501, file: !118, line: 350, baseType: !4378, size: 16, offset: 16)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4501, file: !118, line: 351, baseType: !224, size: 8, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4501, file: !118, line: 352, baseType: !224, size: 8, offset: 40)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4501, file: !118, line: 353, baseType: !224, size: 8, offset: 48)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4501, file: !118, line: 354, baseType: !224, size: 8, offset: 56)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4501, file: !118, line: 355, baseType: !224, size: 8, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4498, file: !146, line: 405, baseType: !289, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4498, file: !146, line: 409, baseType: !4513, size: 1024, offset: 192)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4514, size: 1024, elements: !2482)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !118, line: 783, size: 64, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4515, file: !118, line: 784, baseType: !224, size: 8)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4515, file: !118, line: 785, baseType: !224, size: 8, offset: 8)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4515, file: !118, line: 787, baseType: !224, size: 8, offset: 16)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4515, file: !118, line: 788, baseType: !224, size: 8, offset: 24)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4515, file: !118, line: 789, baseType: !224, size: 8, offset: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4515, file: !118, line: 790, baseType: !224, size: 8, offset: 40)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4515, file: !118, line: 791, baseType: !224, size: 8, offset: 48)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4515, file: !118, line: 792, baseType: !224, size: 8, offset: 56)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4498, file: !146, line: 413, baseType: !4526, size: 2048, offset: 1216)
!4526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4527, size: 2048, elements: !451)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !146, line: 241, size: 6784, elements: !4529)
!4529 = !{!4530, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4528, file: !146, line: 244, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !146, line: 81, size: 320, elements: !4533)
!4533 = !{!4534, !4546, !4547, !4548, !4550}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4532, file: !146, line: 82, baseType: !4535, size: 72)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !118, line: 389, size: 72, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4535, file: !118, line: 390, baseType: !224, size: 8)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4535, file: !118, line: 391, baseType: !224, size: 8, offset: 8)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4535, file: !118, line: 393, baseType: !224, size: 8, offset: 16)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4535, file: !118, line: 394, baseType: !224, size: 8, offset: 24)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4535, file: !118, line: 395, baseType: !224, size: 8, offset: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4535, file: !118, line: 396, baseType: !224, size: 8, offset: 40)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4535, file: !118, line: 397, baseType: !224, size: 8, offset: 48)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4535, file: !118, line: 398, baseType: !224, size: 8, offset: 56)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4535, file: !118, line: 399, baseType: !224, size: 8, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4532, file: !146, line: 84, baseType: !85, size: 32, offset: 96)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4532, file: !146, line: 85, baseType: !4404, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4532, file: !146, line: 90, baseType: !4549, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4532, file: !146, line: 92, baseType: !289, size: 64, offset: 256)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4528, file: !146, line: 246, baseType: !4531, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4528, file: !146, line: 248, baseType: !7, size: 32, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4528, file: !146, line: 252, baseType: !4514, size: 64, offset: 192)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4528, file: !146, line: 254, baseType: !85, size: 32, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4528, file: !146, line: 256, baseType: !145, size: 32, offset: 288)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4528, file: !146, line: 257, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4528, file: !146, line: 258, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4528, file: !146, line: 259, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4528, file: !146, line: 260, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4528, file: !146, line: 261, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4528, file: !146, line: 262, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4528, file: !146, line: 263, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4528, file: !146, line: 264, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status", scope: !4528, file: !146, line: 265, baseType: !152, size: 32, offset: 352)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status_work", scope: !4528, file: !146, line: 266, baseType: !890, size: 256, offset: 384)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4528, file: !146, line: 268, baseType: !242, size: 5824, offset: 640)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4528, file: !146, line: 269, baseType: !241, size: 64, offset: 6464)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4528, file: !146, line: 270, baseType: !890, size: 256, offset: 6528)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4498, file: !146, line: 417, baseType: !4570, size: 2048, offset: 3264)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4571, size: 2048, elements: !451)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !146, line: 350, size: 64, elements: !4573)
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4572, file: !146, line: 351, baseType: !7, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4572, file: !146, line: 352, baseType: !3952, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4572, file: !146, line: 356, baseType: !4577, offset: 64)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4532, elements: !1782)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4498, file: !146, line: 419, baseType: !4404, size: 64, offset: 5312)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4498, file: !146, line: 420, baseType: !85, size: 32, offset: 5376)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4340, file: !146, line: 677, baseType: !4497, size: 64, offset: 7488)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4340, file: !146, line: 678, baseType: !4582, size: 1024, offset: 7552)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4549, size: 1024, elements: !2482)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4340, file: !146, line: 679, baseType: !4582, size: 1024, offset: 8576)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4340, file: !146, line: 681, baseType: !4585, size: 64, offset: 9600)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4340, file: !146, line: 683, baseType: !234, size: 16, offset: 9664)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4340, file: !146, line: 684, baseType: !222, size: 8, offset: 9680)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4340, file: !146, line: 685, baseType: !222, size: 8, offset: 9688)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4340, file: !146, line: 686, baseType: !222, size: 8, offset: 9696)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4340, file: !146, line: 688, baseType: !7, size: 1, offset: 9704, flags: DIFlagBitField, extraData: i64 9704)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4340, file: !146, line: 689, baseType: !7, size: 1, offset: 9705, flags: DIFlagBitField, extraData: i64 9704)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "reset_in_progress", scope: !4340, file: !146, line: 690, baseType: !7, size: 1, offset: 9706, flags: DIFlagBitField, extraData: i64 9704)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4340, file: !146, line: 691, baseType: !7, size: 1, offset: 9707, flags: DIFlagBitField, extraData: i64 9704)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4340, file: !146, line: 692, baseType: !7, size: 1, offset: 9708, flags: DIFlagBitField, extraData: i64 9704)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4340, file: !146, line: 693, baseType: !7, size: 1, offset: 9709, flags: DIFlagBitField, extraData: i64 9704)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4340, file: !146, line: 694, baseType: !7, size: 1, offset: 9710, flags: DIFlagBitField, extraData: i64 9704)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_devinit_allow", scope: !4340, file: !146, line: 695, baseType: !7, size: 1, offset: 9711, flags: DIFlagBitField, extraData: i64 9704)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4340, file: !146, line: 696, baseType: !7, size: 1, offset: 9712, flags: DIFlagBitField, extraData: i64 9704)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4340, file: !146, line: 697, baseType: !7, size: 1, offset: 9713, flags: DIFlagBitField, extraData: i64 9704)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4340, file: !146, line: 698, baseType: !7, size: 1, offset: 9714, flags: DIFlagBitField, extraData: i64 9704)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4340, file: !146, line: 699, baseType: !7, size: 1, offset: 9715, flags: DIFlagBitField, extraData: i64 9704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4340, file: !146, line: 700, baseType: !7, size: 1, offset: 9716, flags: DIFlagBitField, extraData: i64 9704)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4340, file: !146, line: 701, baseType: !7, size: 1, offset: 9717, flags: DIFlagBitField, extraData: i64 9704)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4340, file: !146, line: 702, baseType: !85, size: 32, offset: 9728)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4340, file: !146, line: 705, baseType: !289, size: 64, offset: 9792)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4340, file: !146, line: 706, baseType: !289, size: 64, offset: 9856)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4340, file: !146, line: 707, baseType: !289, size: 64, offset: 9920)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4340, file: !146, line: 709, baseType: !187, size: 128, offset: 9984)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4340, file: !146, line: 711, baseType: !85, size: 32, offset: 10112)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4340, file: !146, line: 713, baseType: !438, size: 32, offset: 10144)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4340, file: !146, line: 714, baseType: !214, size: 32, offset: 10176)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4340, file: !146, line: 716, baseType: !339, size: 64, offset: 10240)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4340, file: !146, line: 718, baseType: !339, size: 64, offset: 10304)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4340, file: !146, line: 720, baseType: !7, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4340, file: !146, line: 721, baseType: !7, size: 1, offset: 10369, flags: DIFlagBitField, extraData: i64 10368)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4340, file: !146, line: 722, baseType: !7, size: 1, offset: 10370, flags: DIFlagBitField, extraData: i64 10368)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4340, file: !146, line: 724, baseType: !85, size: 32, offset: 10400)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4340, file: !146, line: 725, baseType: !4619, size: 64, offset: 10432)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !146, line: 523, size: 64, elements: !4620)
!4620 = !{!4621, !4622}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4619, file: !146, line: 527, baseType: !7, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4619, file: !146, line: 533, baseType: !85, size: 32, offset: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4340, file: !146, line: 726, baseType: !4624, size: 128, offset: 10496)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !146, line: 543, size: 128, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4624, file: !146, line: 550, baseType: !7, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4624, file: !146, line: 556, baseType: !7, size: 32, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4624, file: !146, line: 566, baseType: !7, size: 32, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4624, file: !146, line: 572, baseType: !85, size: 32, offset: 96)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4340, file: !146, line: 727, baseType: !4624, size: 128, offset: 10624)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4340, file: !146, line: 728, baseType: !7, size: 32, offset: 10752)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4340, file: !146, line: 730, baseType: !232, size: 16, offset: 10784)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4340, file: !146, line: 731, baseType: !7, size: 1, offset: 10800, flags: DIFlagBitField, extraData: i64 10800)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !238, file: !146, line: 477, baseType: !237, size: 64, offset: 832)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !238, file: !146, line: 479, baseType: !85, size: 32, offset: 896)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !238, file: !146, line: 486, baseType: !85, size: 32, offset: 928)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !238, file: !146, line: 487, baseType: !85, size: 32, offset: 960)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !238, file: !146, line: 489, baseType: !7, size: 32, offset: 992)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mon_bus", scope: !238, file: !146, line: 492, baseType: !182, size: 64, offset: 1024)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "monitored", scope: !238, file: !146, line: 493, baseType: !85, size: 32, offset: 1088)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "text_inited", scope: !183, file: !184, line: 23, baseType: !85, size: 32, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "bin_inited", scope: !183, file: !184, line: 24, baseType: !85, size: 32, offset: 288)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "dent_s", scope: !183, file: !184, line: 25, baseType: !404, size: 64, offset: 320)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dent_t", scope: !183, file: !184, line: 26, baseType: !404, size: 64, offset: 384)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dent_u", scope: !183, file: !184, line: 27, baseType: !404, size: 64, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "classdev", scope: !183, file: !184, line: 28, baseType: !241, size: 64, offset: 512)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "nreaders", scope: !183, file: !184, line: 31, baseType: !85, size: 32, offset: 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "r_list", scope: !183, file: !184, line: 32, baseType: !187, size: 128, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !183, file: !184, line: 33, baseType: !3952, size: 32, offset: 768)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_events", scope: !183, file: !184, line: 36, baseType: !7, size: 32, offset: 800)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_text_lost", scope: !183, file: !184, line: 37, baseType: !7, size: 32, offset: 832)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !191)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mon_reader", file: !184, line: 43, size: 448, elements: !4660)
!4660 = !{!4661, !4662, !4663, !4664, !4723, !4727}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "r_link", scope: !4659, file: !184, line: 44, baseType: !187, size: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "m_bus", scope: !4659, file: !184, line: 45, baseType: !182, size: 64, offset: 128)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "r_data", scope: !4659, file: !184, line: 46, baseType: !181, size: 64, offset: 192)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "rnf_submit", scope: !4659, file: !184, line: 48, baseType: !4665, size: 64, offset: 256)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !181, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !146, line: 1598, size: 1472, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4696, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4715}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4669, file: !146, line: 1600, baseType: !3952, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4669, file: !146, line: 1601, baseType: !85, size: 32, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4669, file: !146, line: 1602, baseType: !181, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4669, file: !146, line: 1603, baseType: !214, size: 32, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4669, file: !146, line: 1604, baseType: !214, size: 32, offset: 160)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4669, file: !146, line: 1607, baseType: !187, size: 128, offset: 192)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4669, file: !146, line: 1609, baseType: !187, size: 128, offset: 320)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4669, file: !146, line: 1610, baseType: !4679, size: 64, offset: 448)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !146, line: 1397, size: 448, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4685, !4686}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4680, file: !146, line: 1398, baseType: !187, size: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4680, file: !146, line: 1399, baseType: !1386, size: 192, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4680, file: !146, line: 1400, baseType: !194, size: 32, offset: 320)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4680, file: !146, line: 1401, baseType: !214, size: 32, offset: 352)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4680, file: !146, line: 1402, baseType: !7, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4669, file: !146, line: 1611, baseType: !4339, size: 64, offset: 512)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4669, file: !146, line: 1612, baseType: !4549, size: 64, offset: 576)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4669, file: !146, line: 1613, baseType: !7, size: 32, offset: 640)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4669, file: !146, line: 1614, baseType: !7, size: 32, offset: 672)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4669, file: !146, line: 1615, baseType: !85, size: 32, offset: 704)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4669, file: !146, line: 1616, baseType: !7, size: 32, offset: 736)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4669, file: !146, line: 1617, baseType: !181, size: 64, offset: 768)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4669, file: !146, line: 1618, baseType: !4695, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !188, line: 149, baseType: !442)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4669, file: !146, line: 1619, baseType: !4697, size: 64, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !146, line: 1619, flags: DIFlagFwdDecl)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4669, file: !146, line: 1620, baseType: !85, size: 32, offset: 960)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4669, file: !146, line: 1621, baseType: !85, size: 32, offset: 992)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4669, file: !146, line: 1622, baseType: !438, size: 32, offset: 1024)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4669, file: !146, line: 1623, baseType: !438, size: 32, offset: 1056)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4669, file: !146, line: 1624, baseType: !4404, size: 64, offset: 1088)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4669, file: !146, line: 1625, baseType: !4695, size: 64, offset: 1152)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4669, file: !146, line: 1626, baseType: !85, size: 32, offset: 1216)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4669, file: !146, line: 1627, baseType: !85, size: 32, offset: 1248)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4669, file: !146, line: 1628, baseType: !85, size: 32, offset: 1280)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4669, file: !146, line: 1630, baseType: !85, size: 32, offset: 1312)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4669, file: !146, line: 1631, baseType: !181, size: 64, offset: 1344)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4669, file: !146, line: 1632, baseType: !4711, size: 64, offset: 1408)
!4711 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !146, line: 1413, baseType: !4712)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{null, !4668}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4669, file: !146, line: 1633, baseType: !4716, offset: 1472)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4717, elements: !1782)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !146, line: 1388, size: 128, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4717, file: !146, line: 1389, baseType: !7, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4717, file: !146, line: 1390, baseType: !7, size: 32, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4717, file: !146, line: 1391, baseType: !7, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4717, file: !146, line: 1392, baseType: !85, size: 32, offset: 96)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "rnf_error", scope: !4659, file: !184, line: 49, baseType: !4724, size: 64, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !181, !4668, !85}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "rnf_complete", scope: !4659, file: !184, line: 50, baseType: !4724, size: 64, offset: 384)
!4728 = !{!0, !4729, !4734, !4736, !4740, !4745, !4750, !4752, !4754, !4767, !4772, !4777}
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !4731, isLocal: true, isDefinition: true)
!4731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 440, elements: !4732)
!4732 = !{!4733}
!4733 = !DISubrange(count: 55)
!4734 = !DIGlobalVariableExpression(var: !4735, expr: !DIExpression())
!4735 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_usbmon__271_432_mon_init6272", scope: !2, file: !3, line: 432, type: !181, isLocal: true, isDefinition: true)
!4736 = !DIGlobalVariableExpression(var: !4737, expr: !DIExpression())
!4737 = distinct !DIGlobalVariable(name: "__exitcall_mon_exit", scope: !2, file: !3, line: 433, type: !4738, isLocal: true, isDefinition: true)
!4738 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4739, line: 120, baseType: !994)
!4739 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4740 = !DIGlobalVariableExpression(var: !4741, expr: !DIExpression())
!4741 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file273", scope: !2, file: !3, line: 435, type: !4742, isLocal: true, isDefinition: true, align: 8)
!4742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 280, elements: !4743)
!4743 = !{!4744}
!4744 = !DISubrange(count: 35)
!4745 = !DIGlobalVariableExpression(var: !4746, expr: !DIExpression())
!4746 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license274", scope: !2, file: !3, line: 435, type: !4747, isLocal: true, isDefinition: true, align: 8)
!4747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 152, elements: !4748)
!4748 = !{!4749}
!4749 = !DISubrange(count: 19)
!4750 = !DIGlobalVariableExpression(var: !4751, expr: !DIExpression())
!4751 = distinct !DIGlobalVariable(name: "mon_bus0", scope: !2, file: !3, line: 28, type: !183, isLocal: false, isDefinition: true)
!4752 = !DIGlobalVariableExpression(var: !4753, expr: !DIExpression())
!4753 = distinct !DIGlobalVariable(name: "mon_buses", scope: !2, file: !3, line: 29, type: !187, isLocal: true, isDefinition: true)
!4754 = !DIGlobalVariableExpression(var: !4755, expr: !DIExpression())
!4755 = distinct !DIGlobalVariable(name: "mon_nb", scope: !2, file: !3, line: 238, type: !4756, isLocal: true, isDefinition: true)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4757, line: 54, size: 192, elements: !4758)
!4757 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4758 = !{!4759, !4765, !4766}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4756, file: !4757, line: 55, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4757, line: 51, baseType: !4761)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!85, !4764, !339, !181}
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4756, file: !4757, line: 56, baseType: !4764, size: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4756, file: !4757, line: 57, baseType: !85, size: 32, offset: 128)
!4767 = !DIGlobalVariableExpression(var: !4768, expr: !DIExpression())
!4768 = distinct !DIGlobalVariable(scope: null, file: !171, line: 480, type: !4769, isLocal: true, isDefinition: true)
!4769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 168, elements: !4770)
!4770 = !{!4771}
!4771 = !DISubrange(count: 21)
!4772 = !DIGlobalVariableExpression(var: !4773, expr: !DIExpression())
!4773 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !4774, isLocal: true, isDefinition: true)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 352, elements: !4775)
!4775 = !{!4776}
!4776 = !DISubrange(count: 44)
!4777 = !DIGlobalVariableExpression(var: !4778, expr: !DIExpression())
!4778 = distinct !DIGlobalVariable(name: "mon_ops_0", scope: !2, file: !3, line: 245, type: !4779, isLocal: true, isDefinition: true)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4780)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_mon_operations", file: !4353, line: 695, size: 192, elements: !4781)
!4781 = !{!4782, !4786, !4790}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "urb_submit", scope: !4780, file: !4353, line: 696, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !237, !4668}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "urb_submit_error", scope: !4780, file: !4353, line: 697, baseType: !4787, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !237, !4668, !85}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "urb_complete", scope: !4780, file: !4353, line: 698, baseType: !4787, size: 64, offset: 128)
!4791 = !{i32 7, !"Dwarf Version", i32 5}
!4792 = !{i32 2, !"Debug Info Version", i32 3}
!4793 = !{i32 1, !"wchar_size", i32 2}
!4794 = !{i32 8, !"cf-protection-branch", i32 1}
!4795 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4796 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4797 = !{i32 1, !"Code Model", i32 2}
!4798 = !{i32 1, !"override-stack-alignment", i32 8}
!4799 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4800 = distinct !DISubprogram(name: "mon_reader_add", scope: !3, file: !3, line: 36, type: !4801, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4803)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{null, !182, !4658}
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4812, !4813, !4821}
!4804 = !DILocalVariable(name: "mbus", arg: 1, scope: !4800, file: !3, line: 36, type: !182)
!4805 = !DILocalVariable(name: "r", arg: 2, scope: !4800, file: !3, line: 36, type: !4658)
!4806 = !DILocalVariable(name: "flags", scope: !4800, file: !3, line: 38, type: !339)
!4807 = !DILocalVariable(name: "p", scope: !4800, file: !3, line: 39, type: !191)
!4808 = !DILocalVariable(name: "__dummy", scope: !4809, file: !3, line: 41, type: !339)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 41, column: 2)
!4810 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 41, column: 2)
!4811 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 41, column: 2)
!4812 = !DILocalVariable(name: "__dummy2", scope: !4809, file: !3, line: 41, type: !339)
!4813 = !DILocalVariable(name: "m1", scope: !4814, file: !3, line: 45, type: !182)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 44, column: 34)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 44, column: 4)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 44, column: 4)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 43, column: 26)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 43, column: 7)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 42, column: 27)
!4820 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 42, column: 6)
!4821 = !DILocalVariable(name: "__mptr", scope: !4822, file: !3, line: 46, type: !181)
!4822 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 46, column: 10)
!4823 = !DILocation(line: 36, column: 37, scope: !4800)
!4824 = !DILocation(line: 36, column: 62, scope: !4800)
!4825 = !DILocation(line: 38, column: 2, scope: !4800)
!4826 = !DILocation(line: 38, column: 16, scope: !4800)
!4827 = !DILocation(line: 39, column: 2, scope: !4800)
!4828 = !DILocation(line: 39, column: 20, scope: !4800)
!4829 = !DILocation(line: 41, column: 2, scope: !4800)
!4830 = !DILocation(line: 41, column: 2, scope: !4811)
!4831 = !DILocation(line: 41, column: 2, scope: !4809)
!4832 = !DILocation(line: 41, column: 2, scope: !4810)
!4833 = !DILocation(line: 42, column: 6, scope: !4820)
!4834 = !DILocation(line: 42, column: 12, scope: !4820)
!4835 = !DILocation(line: 42, column: 21, scope: !4820)
!4836 = !DILocation(line: 42, column: 6, scope: !4800)
!4837 = !DILocation(line: 43, column: 7, scope: !4818)
!4838 = !DILocation(line: 43, column: 12, scope: !4818)
!4839 = !DILocation(line: 43, column: 7, scope: !4819)
!4840 = !DILocation(line: 44, column: 4, scope: !4816)
!4841 = !DILocation(line: 44, column: 4, scope: !4815)
!4842 = !DILocation(line: 45, column: 5, scope: !4814)
!4843 = !DILocation(line: 45, column: 21, scope: !4814)
!4844 = !DILocation(line: 46, column: 10, scope: !4822)
!4845 = !DILocation(line: 46, column: 10, scope: !4814)
!4846 = !DILocation(line: 46, column: 8, scope: !4814)
!4847 = !DILocation(line: 47, column: 5, scope: !4814)
!4848 = !DILocation(line: 47, column: 9, scope: !4814)
!4849 = !DILocation(line: 47, column: 16, scope: !4814)
!4850 = !DILocation(line: 47, column: 26, scope: !4814)
!4851 = !DILocation(line: 48, column: 4, scope: !4815)
!4852 = !DILocation(line: 48, column: 4, scope: !4814)
!4853 = distinct !{!4853, !4840, !4854, !4855, !4856}
!4854 = !DILocation(line: 48, column: 4, scope: !4816)
!4855 = !{!"llvm.loop.mustprogress"}
!4856 = !{!"llvm.loop.unroll.disable"}
!4857 = !DILocation(line: 49, column: 3, scope: !4817)
!4858 = !DILocation(line: 50, column: 4, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 49, column: 10)
!4860 = !DILocation(line: 50, column: 10, scope: !4859)
!4861 = !DILocation(line: 50, column: 17, scope: !4859)
!4862 = !DILocation(line: 50, column: 27, scope: !4859)
!4863 = !DILocation(line: 52, column: 2, scope: !4819)
!4864 = !DILocation(line: 53, column: 2, scope: !4800)
!4865 = !DILocation(line: 53, column: 8, scope: !4800)
!4866 = !DILocation(line: 53, column: 16, scope: !4800)
!4867 = !DILocation(line: 54, column: 17, scope: !4800)
!4868 = !DILocation(line: 54, column: 20, scope: !4800)
!4869 = !DILocation(line: 54, column: 29, scope: !4800)
!4870 = !DILocation(line: 54, column: 35, scope: !4800)
!4871 = !DILocation(line: 54, column: 2, scope: !4800)
!4872 = !DILocation(line: 55, column: 26, scope: !4800)
!4873 = !DILocation(line: 55, column: 32, scope: !4800)
!4874 = !DILocation(line: 55, column: 38, scope: !4800)
!4875 = !DILocation(line: 55, column: 2, scope: !4800)
!4876 = !DILocation(line: 57, column: 12, scope: !4800)
!4877 = !DILocation(line: 57, column: 18, scope: !4800)
!4878 = !DILocation(line: 57, column: 2, scope: !4800)
!4879 = !DILocation(line: 58, column: 1, scope: !4800)
!4880 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4881, file: !4881, line: 32, type: !4882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4881 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!339, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!4885 = distinct !DISubprogram(name: "spinlock_check", scope: !4886, file: !4886, line: 324, type: !4887, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4886 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!4884, !4889}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!4890 = !{!4891}
!4891 = !DILocalVariable(name: "lock", arg: 1, scope: !4885, file: !4886, line: 324, type: !4889)
!4892 = !DILocation(line: 324, column: 67, scope: !4885)
!4893 = !DILocation(line: 326, column: 10, scope: !4885)
!4894 = !DILocation(line: 326, column: 16, scope: !4885)
!4895 = !DILocation(line: 326, column: 2, scope: !4885)
!4896 = distinct !DISubprogram(name: "list_is_head", scope: !4897, file: !4897, line: 362, type: !4898, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4897 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!85, !4900, !4900}
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!4902 = !{!4903, !4904}
!4903 = !DILocalVariable(name: "list", arg: 1, scope: !4896, file: !4897, line: 362, type: !4900)
!4904 = !DILocalVariable(name: "head", arg: 2, scope: !4896, file: !4897, line: 362, type: !4900)
!4905 = !DILocation(line: 362, column: 56, scope: !4896)
!4906 = !DILocation(line: 362, column: 86, scope: !4896)
!4907 = !DILocation(line: 364, column: 9, scope: !4896)
!4908 = !DILocation(line: 364, column: 17, scope: !4896)
!4909 = !DILocation(line: 364, column: 14, scope: !4896)
!4910 = !DILocation(line: 364, column: 2, scope: !4896)
!4911 = distinct !DISubprogram(name: "list_add_tail", scope: !4897, file: !4897, line: 181, type: !4912, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4914)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{null, !191, !191}
!4914 = !{!4915, !4916}
!4915 = !DILocalVariable(name: "new", arg: 1, scope: !4911, file: !4897, line: 181, type: !191)
!4916 = !DILocalVariable(name: "head", arg: 2, scope: !4911, file: !4897, line: 181, type: !191)
!4917 = !DILocation(line: 181, column: 52, scope: !4911)
!4918 = !DILocation(line: 181, column: 75, scope: !4911)
!4919 = !DILocation(line: 183, column: 13, scope: !4911)
!4920 = !DILocation(line: 183, column: 18, scope: !4911)
!4921 = !DILocation(line: 183, column: 24, scope: !4911)
!4922 = !DILocation(line: 183, column: 30, scope: !4911)
!4923 = !DILocation(line: 183, column: 2, scope: !4911)
!4924 = !DILocation(line: 184, column: 1, scope: !4911)
!4925 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4886, file: !4886, line: 404, type: !4926, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4928)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{null, !4889, !339}
!4928 = !{!4929, !4930, !4931, !4934}
!4929 = !DILocalVariable(name: "lock", arg: 1, scope: !4925, file: !4886, line: 404, type: !4889)
!4930 = !DILocalVariable(name: "flags", arg: 2, scope: !4925, file: !4886, line: 404, type: !339)
!4931 = !DILocalVariable(name: "__dummy", scope: !4932, file: !4886, line: 406, type: !339)
!4932 = distinct !DILexicalBlock(scope: !4933, file: !4886, line: 406, column: 2)
!4933 = distinct !DILexicalBlock(scope: !4925, file: !4886, line: 406, column: 2)
!4934 = !DILocalVariable(name: "__dummy2", scope: !4932, file: !4886, line: 406, type: !339)
!4935 = !DILocation(line: 404, column: 64, scope: !4925)
!4936 = !DILocation(line: 404, column: 84, scope: !4925)
!4937 = !DILocation(line: 406, column: 2, scope: !4925)
!4938 = !DILocation(line: 406, column: 2, scope: !4932)
!4939 = !DILocation(line: 406, column: 2, scope: !4933)
!4940 = !DILocation(line: 407, column: 1, scope: !4925)
!4941 = distinct !DISubprogram(name: "kref_get", scope: !3953, file: !3953, line: 43, type: !4942, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4945)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{null, !4944}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!4945 = !{!4946}
!4946 = !DILocalVariable(name: "kref", arg: 1, scope: !4941, file: !3953, line: 43, type: !4944)
!4947 = !DILocation(line: 43, column: 42, scope: !4941)
!4948 = !DILocation(line: 45, column: 16, scope: !4941)
!4949 = !DILocation(line: 45, column: 22, scope: !4941)
!4950 = !DILocation(line: 45, column: 2, scope: !4941)
!4951 = !DILocation(line: 46, column: 1, scope: !4941)
!4952 = distinct !DISubprogram(name: "mon_reader_del", scope: !3, file: !3, line: 65, type: !4801, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4953)
!4953 = !{!4954, !4955, !4956, !4957, !4961}
!4954 = !DILocalVariable(name: "mbus", arg: 1, scope: !4952, file: !3, line: 65, type: !182)
!4955 = !DILocalVariable(name: "r", arg: 2, scope: !4952, file: !3, line: 65, type: !4658)
!4956 = !DILocalVariable(name: "flags", scope: !4952, file: !3, line: 67, type: !339)
!4957 = !DILocalVariable(name: "__dummy", scope: !4958, file: !3, line: 69, type: !339)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 69, column: 2)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 69, column: 2)
!4960 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 69, column: 2)
!4961 = !DILocalVariable(name: "__dummy2", scope: !4958, file: !3, line: 69, type: !339)
!4962 = !DILocation(line: 65, column: 37, scope: !4952)
!4963 = !DILocation(line: 65, column: 62, scope: !4952)
!4964 = !DILocation(line: 67, column: 2, scope: !4952)
!4965 = !DILocation(line: 67, column: 16, scope: !4952)
!4966 = !DILocation(line: 69, column: 2, scope: !4952)
!4967 = !DILocation(line: 69, column: 2, scope: !4960)
!4968 = !DILocation(line: 69, column: 2, scope: !4958)
!4969 = !DILocation(line: 69, column: 2, scope: !4959)
!4970 = !DILocation(line: 70, column: 12, scope: !4952)
!4971 = !DILocation(line: 70, column: 15, scope: !4952)
!4972 = !DILocation(line: 70, column: 2, scope: !4952)
!4973 = !DILocation(line: 71, column: 4, scope: !4952)
!4974 = !DILocation(line: 71, column: 10, scope: !4952)
!4975 = !DILocation(line: 71, column: 2, scope: !4952)
!4976 = !DILocation(line: 72, column: 6, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 72, column: 6)
!4978 = !DILocation(line: 72, column: 12, scope: !4977)
!4979 = !DILocation(line: 72, column: 21, scope: !4977)
!4980 = !DILocation(line: 72, column: 6, scope: !4952)
!4981 = !DILocation(line: 73, column: 12, scope: !4977)
!4982 = !DILocation(line: 73, column: 3, scope: !4977)
!4983 = !DILocation(line: 74, column: 26, scope: !4952)
!4984 = !DILocation(line: 74, column: 32, scope: !4952)
!4985 = !DILocation(line: 74, column: 38, scope: !4952)
!4986 = !DILocation(line: 74, column: 2, scope: !4952)
!4987 = !DILocation(line: 76, column: 12, scope: !4952)
!4988 = !DILocation(line: 76, column: 18, scope: !4952)
!4989 = !DILocation(line: 76, column: 2, scope: !4952)
!4990 = !DILocation(line: 77, column: 1, scope: !4952)
!4991 = distinct !DISubprogram(name: "list_del", scope: !4897, file: !4897, line: 227, type: !4992, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4994)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{null, !191}
!4994 = !{!4995}
!4995 = !DILocalVariable(name: "entry", arg: 1, scope: !4991, file: !4897, line: 227, type: !191)
!4996 = !DILocation(line: 227, column: 47, scope: !4991)
!4997 = !DILocation(line: 229, column: 19, scope: !4991)
!4998 = !DILocation(line: 229, column: 2, scope: !4991)
!4999 = !DILocation(line: 230, column: 2, scope: !4991)
!5000 = !DILocation(line: 230, column: 9, scope: !4991)
!5001 = !DILocation(line: 230, column: 14, scope: !4991)
!5002 = !DILocation(line: 231, column: 2, scope: !4991)
!5003 = !DILocation(line: 231, column: 9, scope: !4991)
!5004 = !DILocation(line: 231, column: 14, scope: !4991)
!5005 = !DILocation(line: 232, column: 1, scope: !4991)
!5006 = distinct !DISubprogram(name: "mon_stop", scope: !3, file: !3, line: 165, type: !5007, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{null, !182}
!5009 = !{!5010, !5011, !5012, !5013}
!5010 = !DILocalVariable(name: "mbus", arg: 1, scope: !5006, file: !3, line: 165, type: !182)
!5011 = !DILocalVariable(name: "ubus", scope: !5006, file: !3, line: 167, type: !237)
!5012 = !DILocalVariable(name: "p", scope: !5006, file: !3, line: 168, type: !191)
!5013 = !DILocalVariable(name: "__mptr", scope: !5014, file: !3, line: 172, type: !181)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 172, column: 11)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 171, column: 33)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 171, column: 3)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 171, column: 3)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 170, column: 25)
!5019 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 170, column: 6)
!5020 = !DILocation(line: 165, column: 38, scope: !5006)
!5021 = !DILocation(line: 167, column: 2, scope: !5006)
!5022 = !DILocation(line: 167, column: 18, scope: !5006)
!5023 = !DILocation(line: 168, column: 2, scope: !5006)
!5024 = !DILocation(line: 168, column: 20, scope: !5006)
!5025 = !DILocation(line: 170, column: 6, scope: !5019)
!5026 = !DILocation(line: 170, column: 11, scope: !5019)
!5027 = !DILocation(line: 170, column: 6, scope: !5006)
!5028 = !DILocation(line: 171, column: 3, scope: !5017)
!5029 = !DILocation(line: 171, column: 3, scope: !5016)
!5030 = !DILocation(line: 172, column: 11, scope: !5014)
!5031 = !DILocation(line: 172, column: 11, scope: !5015)
!5032 = !DILocation(line: 172, column: 9, scope: !5015)
!5033 = !DILocation(line: 176, column: 8, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 176, column: 8)
!5035 = !DILocation(line: 176, column: 14, scope: !5034)
!5036 = !DILocation(line: 176, column: 23, scope: !5034)
!5037 = !DILocation(line: 176, column: 28, scope: !5034)
!5038 = !DILocation(line: 176, column: 39, scope: !5034)
!5039 = !DILocation(line: 176, column: 45, scope: !5034)
!5040 = !DILocation(line: 176, column: 37, scope: !5034)
!5041 = !DILocation(line: 176, column: 52, scope: !5034)
!5042 = !DILocation(line: 176, column: 8, scope: !5015)
!5043 = !DILocation(line: 177, column: 5, scope: !5034)
!5044 = !DILocation(line: 177, column: 11, scope: !5034)
!5045 = !DILocation(line: 177, column: 21, scope: !5034)
!5046 = !DILocation(line: 178, column: 3, scope: !5015)
!5047 = distinct !{!5047, !5028, !5048, !4855, !4856}
!5048 = !DILocation(line: 178, column: 3, scope: !5017)
!5049 = !DILocation(line: 179, column: 2, scope: !5018)
!5050 = !DILocation(line: 184, column: 16, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 184, column: 7)
!5052 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 179, column: 9)
!5053 = !DILocation(line: 184, column: 25, scope: !5051)
!5054 = !DILocation(line: 184, column: 30, scope: !5051)
!5055 = !DILocation(line: 184, column: 41, scope: !5051)
!5056 = !DILocation(line: 184, column: 47, scope: !5051)
!5057 = !DILocation(line: 184, column: 39, scope: !5051)
!5058 = !DILocation(line: 184, column: 54, scope: !5051)
!5059 = !DILocation(line: 184, column: 7, scope: !5052)
!5060 = !DILocation(line: 185, column: 4, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 184, column: 63)
!5062 = !DILocation(line: 185, column: 10, scope: !5061)
!5063 = !DILocation(line: 185, column: 20, scope: !5061)
!5064 = !DILocation(line: 186, column: 4, scope: !5061)
!5065 = !DILocation(line: 186, column: 4, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 186, column: 4)
!5067 = !DILocation(line: 186, column: 4, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 186, column: 4)
!5069 = !{i64 2154240091}
!5070 = !DILocation(line: 187, column: 3, scope: !5061)
!5071 = !DILocation(line: 189, column: 1, scope: !5006)
!5072 = distinct !DISubprogram(name: "kref_put", scope: !3953, file: !3953, line: 62, type: !5073, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5076)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!85, !4944, !5075}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!5076 = !{!5077, !5078}
!5077 = !DILocalVariable(name: "kref", arg: 1, scope: !5072, file: !3953, line: 62, type: !4944)
!5078 = !DILocalVariable(name: "release", arg: 2, scope: !5072, file: !3953, line: 62, type: !5075)
!5079 = !DILocation(line: 62, column: 41, scope: !5072)
!5080 = !DILocation(line: 62, column: 54, scope: !5072)
!5081 = !DILocation(line: 64, column: 29, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5072, file: !3953, line: 64, column: 6)
!5083 = !DILocation(line: 64, column: 35, scope: !5082)
!5084 = !DILocation(line: 64, column: 6, scope: !5082)
!5085 = !DILocation(line: 64, column: 6, scope: !5072)
!5086 = !DILocation(line: 65, column: 3, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5082, file: !3953, line: 64, column: 46)
!5088 = !DILocation(line: 65, column: 11, scope: !5087)
!5089 = !DILocation(line: 66, column: 3, scope: !5087)
!5090 = !DILocation(line: 68, column: 2, scope: !5072)
!5091 = !DILocation(line: 69, column: 1, scope: !5072)
!5092 = distinct !DISubprogram(name: "mon_bus_drop", scope: !3, file: !3, line: 271, type: !4942, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5093)
!5093 = !{!5094, !5095, !5096}
!5094 = !DILocalVariable(name: "r", arg: 1, scope: !5092, file: !3, line: 271, type: !4944)
!5095 = !DILocalVariable(name: "mbus", scope: !5092, file: !3, line: 273, type: !182)
!5096 = !DILocalVariable(name: "__mptr", scope: !5097, file: !3, line: 273, type: !181)
!5097 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 273, column: 25)
!5098 = !DILocation(line: 271, column: 39, scope: !5092)
!5099 = !DILocation(line: 273, column: 2, scope: !5092)
!5100 = !DILocation(line: 273, column: 18, scope: !5092)
!5101 = !DILocation(line: 273, column: 25, scope: !5097)
!5102 = !DILocation(line: 273, column: 25, scope: !5092)
!5103 = !DILocation(line: 274, column: 8, scope: !5092)
!5104 = !DILocation(line: 274, column: 2, scope: !5092)
!5105 = !DILocation(line: 275, column: 1, scope: !5092)
!5106 = distinct !DISubprogram(name: "mon_bus_lookup", scope: !3, file: !3, line: 333, type: !5107, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5109)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!182, !7}
!5109 = !{!5110, !5111, !5112, !5113}
!5110 = !DILocalVariable(name: "num", arg: 1, scope: !5106, file: !3, line: 333, type: !7)
!5111 = !DILocalVariable(name: "p", scope: !5106, file: !3, line: 335, type: !191)
!5112 = !DILocalVariable(name: "mbus", scope: !5106, file: !3, line: 336, type: !182)
!5113 = !DILocalVariable(name: "__mptr", scope: !5114, file: !3, line: 342, type: !181)
!5114 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 342, column: 10)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 341, column: 32)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 341, column: 2)
!5117 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 341, column: 2)
!5118 = !DILocation(line: 333, column: 45, scope: !5106)
!5119 = !DILocation(line: 335, column: 2, scope: !5106)
!5120 = !DILocation(line: 335, column: 20, scope: !5106)
!5121 = !DILocation(line: 336, column: 2, scope: !5106)
!5122 = !DILocation(line: 336, column: 18, scope: !5106)
!5123 = !DILocation(line: 338, column: 6, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 338, column: 6)
!5125 = !DILocation(line: 338, column: 10, scope: !5124)
!5126 = !DILocation(line: 338, column: 6, scope: !5106)
!5127 = !DILocation(line: 339, column: 3, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 338, column: 16)
!5129 = !DILocation(line: 341, column: 2, scope: !5117)
!5130 = !DILocation(line: 341, column: 2, scope: !5116)
!5131 = !DILocation(line: 342, column: 10, scope: !5114)
!5132 = !DILocation(line: 342, column: 10, scope: !5115)
!5133 = !DILocation(line: 342, column: 8, scope: !5115)
!5134 = !DILocation(line: 343, column: 7, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 343, column: 7)
!5136 = !DILocation(line: 343, column: 13, scope: !5135)
!5137 = !DILocation(line: 343, column: 20, scope: !5135)
!5138 = !DILocation(line: 343, column: 30, scope: !5135)
!5139 = !DILocation(line: 343, column: 27, scope: !5135)
!5140 = !DILocation(line: 343, column: 7, scope: !5115)
!5141 = !DILocation(line: 344, column: 11, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 343, column: 35)
!5143 = !DILocation(line: 344, column: 4, scope: !5142)
!5144 = !DILocation(line: 346, column: 2, scope: !5115)
!5145 = distinct !{!5145, !5129, !5146, !4855, !4856}
!5146 = !DILocation(line: 346, column: 2, scope: !5117)
!5147 = !DILocation(line: 347, column: 2, scope: !5106)
!5148 = !DILocation(line: 348, column: 1, scope: !5106)
!5149 = distinct !DISubprogram(name: "mon_exit", scope: !3, file: !3, line: 384, type: !995, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5150)
!5150 = !{!5151, !5152, !5153}
!5151 = !DILocalVariable(name: "mbus", scope: !5149, file: !3, line: 386, type: !182)
!5152 = !DILocalVariable(name: "p", scope: !5149, file: !3, line: 387, type: !191)
!5153 = !DILocalVariable(name: "__mptr", scope: !5154, file: !3, line: 396, type: !181)
!5154 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 396, column: 10)
!5155 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 394, column: 34)
!5156 = !DILocation(line: 386, column: 2, scope: !5149)
!5157 = !DILocation(line: 386, column: 18, scope: !5149)
!5158 = !DILocation(line: 387, column: 2, scope: !5149)
!5159 = !DILocation(line: 387, column: 20, scope: !5149)
!5160 = !DILocation(line: 389, column: 2, scope: !5149)
!5161 = !DILocation(line: 390, column: 2, scope: !5149)
!5162 = !DILocation(line: 392, column: 2, scope: !5149)
!5163 = !DILocation(line: 394, column: 2, scope: !5149)
!5164 = !DILocation(line: 394, column: 10, scope: !5149)
!5165 = !DILocation(line: 394, column: 9, scope: !5149)
!5166 = !DILocation(line: 395, column: 17, scope: !5155)
!5167 = !DILocation(line: 395, column: 5, scope: !5155)
!5168 = !DILocation(line: 396, column: 10, scope: !5154)
!5169 = !DILocation(line: 396, column: 10, scope: !5155)
!5170 = !DILocation(line: 396, column: 8, scope: !5155)
!5171 = !DILocation(line: 397, column: 12, scope: !5155)
!5172 = !DILocation(line: 397, column: 3, scope: !5155)
!5173 = !DILocation(line: 399, column: 7, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 399, column: 7)
!5175 = !DILocation(line: 399, column: 13, scope: !5174)
!5176 = !DILocation(line: 399, column: 7, scope: !5155)
!5177 = !DILocation(line: 400, column: 17, scope: !5174)
!5178 = !DILocation(line: 400, column: 4, scope: !5174)
!5179 = !DILocation(line: 401, column: 7, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 401, column: 7)
!5181 = !DILocation(line: 401, column: 13, scope: !5180)
!5182 = !DILocation(line: 401, column: 7, scope: !5155)
!5183 = !DILocation(line: 402, column: 16, scope: !5180)
!5184 = !DILocation(line: 402, column: 4, scope: !5180)
!5185 = !DILocation(line: 409, column: 7, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 409, column: 7)
!5187 = !DILocation(line: 409, column: 13, scope: !5186)
!5188 = !DILocation(line: 409, column: 7, scope: !5155)
!5189 = !DILocation(line: 410, column: 4, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 410, column: 4)
!5191 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 409, column: 23)
!5192 = !DILocation(line: 410, column: 4, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 410, column: 4)
!5194 = !DILocation(line: 413, column: 14, scope: !5191)
!5195 = !DILocation(line: 413, column: 20, scope: !5191)
!5196 = !DILocation(line: 413, column: 4, scope: !5191)
!5197 = !DILocation(line: 414, column: 3, scope: !5191)
!5198 = !DILocation(line: 416, column: 16, scope: !5155)
!5199 = !DILocation(line: 416, column: 22, scope: !5155)
!5200 = !DILocation(line: 416, column: 28, scope: !5155)
!5201 = !DILocation(line: 416, column: 3, scope: !5155)
!5202 = !DILocation(line: 417, column: 13, scope: !5155)
!5203 = !DILocation(line: 417, column: 19, scope: !5155)
!5204 = !DILocation(line: 417, column: 3, scope: !5155)
!5205 = distinct !{!5205, !5163, !5206, !4855, !4856}
!5206 = !DILocation(line: 418, column: 2, scope: !5149)
!5207 = !DILocation(line: 420, column: 7, scope: !5149)
!5208 = !DILocation(line: 421, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 421, column: 6)
!5210 = !DILocation(line: 421, column: 12, scope: !5209)
!5211 = !DILocation(line: 421, column: 6, scope: !5149)
!5212 = !DILocation(line: 422, column: 16, scope: !5209)
!5213 = !DILocation(line: 422, column: 3, scope: !5209)
!5214 = !DILocation(line: 423, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 423, column: 6)
!5216 = !DILocation(line: 423, column: 12, scope: !5215)
!5217 = !DILocation(line: 423, column: 6, scope: !5149)
!5218 = !DILocation(line: 424, column: 15, scope: !5215)
!5219 = !DILocation(line: 424, column: 3, scope: !5215)
!5220 = !DILocation(line: 426, column: 2, scope: !5149)
!5221 = !DILocation(line: 428, column: 2, scope: !5149)
!5222 = !DILocation(line: 429, column: 2, scope: !5149)
!5223 = !DILocation(line: 430, column: 1, scope: !5149)
!5224 = !DISubprogram(name: "usb_unregister_notify", scope: !146, file: !146, line: 2060, type: !5225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{null, !4764}
!5227 = !DISubprogram(name: "usb_mon_deregister", scope: !4353, file: !4353, line: 725, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5228 = !DISubprogram(name: "mutex_lock", scope: !631, file: !631, line: 227, type: !5229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !5231}
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!5232 = distinct !DISubprogram(name: "list_empty", scope: !4897, file: !4897, line: 371, type: !5233, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5235)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!85, !4900}
!5235 = !{!5236}
!5236 = !DILocalVariable(name: "head", arg: 1, scope: !5232, file: !4897, line: 371, type: !4900)
!5237 = !DILocation(line: 371, column: 54, scope: !5232)
!5238 = !DILocation(line: 373, column: 9, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5232, file: !4897, line: 373, column: 9)
!5240 = !DILocation(line: 373, column: 9, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5239, file: !4897, line: 373, column: 9)
!5242 = !DILocation(line: 373, column: 34, scope: !5232)
!5243 = !DILocation(line: 373, column: 31, scope: !5232)
!5244 = !DILocation(line: 373, column: 2, scope: !5232)
!5245 = !DISubprogram(name: "mon_text_del", scope: !184, file: !184, line: 59, type: !5007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5246 = !DISubprogram(name: "mon_bin_del", scope: !184, file: !184, line: 61, type: !5007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5247 = !DISubprogram(name: "_printk", scope: !5248, file: !5248, line: 153, type: !5249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5248 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!85, !249, null}
!5251 = distinct !DISubprogram(name: "mon_dissolve", scope: !3, file: !3, line: 254, type: !5252, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5254)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !182, !237}
!5254 = !{!5255, !5256}
!5255 = !DILocalVariable(name: "mbus", arg: 1, scope: !5251, file: !3, line: 254, type: !182)
!5256 = !DILocalVariable(name: "ubus", arg: 2, scope: !5251, file: !3, line: 254, type: !237)
!5257 = !DILocation(line: 254, column: 42, scope: !5251)
!5258 = !DILocation(line: 254, column: 64, scope: !5251)
!5259 = !DILocation(line: 257, column: 6, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 257, column: 6)
!5261 = !DILocation(line: 257, column: 12, scope: !5260)
!5262 = !DILocation(line: 257, column: 6, scope: !5251)
!5263 = !DILocation(line: 258, column: 3, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 257, column: 23)
!5265 = !DILocation(line: 258, column: 9, scope: !5264)
!5266 = !DILocation(line: 258, column: 19, scope: !5264)
!5267 = !DILocation(line: 259, column: 3, scope: !5264)
!5268 = !DILocation(line: 259, column: 3, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 259, column: 3)
!5270 = !DILocation(line: 259, column: 3, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 259, column: 3)
!5272 = !{i64 2154240200}
!5273 = !DILocation(line: 260, column: 2, scope: !5264)
!5274 = !DILocation(line: 262, column: 2, scope: !5251)
!5275 = !DILocation(line: 262, column: 8, scope: !5251)
!5276 = !DILocation(line: 262, column: 16, scope: !5251)
!5277 = !DILocation(line: 263, column: 2, scope: !5251)
!5278 = !DILocation(line: 263, column: 8, scope: !5251)
!5279 = !DILocation(line: 263, column: 14, scope: !5251)
!5280 = !DILocation(line: 264, column: 2, scope: !5251)
!5281 = !DILocation(line: 264, column: 2, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 264, column: 2)
!5283 = !DILocation(line: 264, column: 2, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 264, column: 2)
!5285 = !{i64 2154240312}
!5286 = !DILocation(line: 267, column: 1, scope: !5251)
!5287 = !DISubprogram(name: "mutex_unlock", scope: !631, file: !631, line: 246, type: !5229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5288 = !DISubprogram(name: "mon_text_exit", scope: !184, file: !184, line: 64, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5289 = !DISubprogram(name: "mon_bin_exit", scope: !184, file: !184, line: 66, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5290 = distinct !DISubprogram(name: "__initstub__kmod_usbmon__271_432_mon_init6", scope: !3, file: !3, line: 432, type: !724, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5291 = !DILocation(line: 432, column: 1, scope: !5290)
!5292 = distinct !DISubprogram(name: "mon_init", scope: !3, file: !3, line: 350, type: !724, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5293)
!5293 = !{!5294, !5295, !5296, !5297, !5298, !5299}
!5294 = !DILocalVariable(name: "ubus", scope: !5292, file: !3, line: 352, type: !237)
!5295 = !DILocalVariable(name: "rc", scope: !5292, file: !3, line: 353, type: !85)
!5296 = !DILocalVariable(name: "id", scope: !5292, file: !3, line: 353, type: !85)
!5297 = !DILabel(scope: !5292, name: "err_reg", file: !3, line: 376)
!5298 = !DILabel(scope: !5292, name: "err_bin", file: !3, line: 378)
!5299 = !DILabel(scope: !5292, name: "err_text", file: !3, line: 380)
!5300 = !DILocation(line: 352, column: 2, scope: !5292)
!5301 = !DILocation(line: 352, column: 18, scope: !5292)
!5302 = !DILocation(line: 353, column: 2, scope: !5292)
!5303 = !DILocation(line: 353, column: 6, scope: !5292)
!5304 = !DILocation(line: 353, column: 10, scope: !5292)
!5305 = !DILocation(line: 355, column: 12, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 355, column: 6)
!5307 = !DILocation(line: 355, column: 10, scope: !5306)
!5308 = !DILocation(line: 355, column: 29, scope: !5306)
!5309 = !DILocation(line: 355, column: 6, scope: !5292)
!5310 = !DILocation(line: 356, column: 3, scope: !5306)
!5311 = !DILocation(line: 357, column: 12, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 357, column: 6)
!5313 = !DILocation(line: 357, column: 10, scope: !5312)
!5314 = !DILocation(line: 357, column: 28, scope: !5312)
!5315 = !DILocation(line: 357, column: 6, scope: !5292)
!5316 = !DILocation(line: 358, column: 3, scope: !5312)
!5317 = !DILocation(line: 360, column: 2, scope: !5292)
!5318 = !DILocation(line: 362, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 362, column: 6)
!5320 = !DILocation(line: 362, column: 35, scope: !5319)
!5321 = !DILocation(line: 362, column: 6, scope: !5292)
!5322 = !DILocation(line: 363, column: 3, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 363, column: 3)
!5324 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 362, column: 41)
!5325 = !DILocation(line: 363, column: 3, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 363, column: 3)
!5327 = !DILocation(line: 364, column: 6, scope: !5324)
!5328 = !DILocation(line: 365, column: 3, scope: !5324)
!5329 = !DILocation(line: 369, column: 2, scope: !5292)
!5330 = !DILocation(line: 370, column: 2, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 370, column: 2)
!5332 = !DILocation(line: 370, column: 2, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 370, column: 2)
!5334 = !DILocation(line: 371, column: 16, scope: !5333)
!5335 = !DILocation(line: 371, column: 3, scope: !5333)
!5336 = distinct !{!5336, !5330, !5337, !4855, !4856}
!5337 = !DILocation(line: 371, column: 20, scope: !5331)
!5338 = !DILocation(line: 372, column: 2, scope: !5292)
!5339 = !DILocation(line: 373, column: 2, scope: !5292)
!5340 = !DILocation(line: 374, column: 2, scope: !5292)
!5341 = !DILocation(line: 376, column: 1, scope: !5292)
!5342 = !DILocation(line: 377, column: 2, scope: !5292)
!5343 = !DILocation(line: 378, column: 1, scope: !5292)
!5344 = !DILocation(line: 379, column: 2, scope: !5292)
!5345 = !DILocation(line: 380, column: 1, scope: !5292)
!5346 = !DILocation(line: 381, column: 9, scope: !5292)
!5347 = !DILocation(line: 381, column: 2, scope: !5292)
!5348 = !DILocation(line: 382, column: 1, scope: !5292)
!5349 = distinct !DISubprogram(name: "__list_add", scope: !4897, file: !4897, line: 146, type: !5350, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5352)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{null, !191, !191, !191}
!5352 = !{!5353, !5354, !5355}
!5353 = !DILocalVariable(name: "new", arg: 1, scope: !5349, file: !4897, line: 146, type: !191)
!5354 = !DILocalVariable(name: "prev", arg: 2, scope: !5349, file: !4897, line: 147, type: !191)
!5355 = !DILocalVariable(name: "next", arg: 3, scope: !5349, file: !4897, line: 148, type: !191)
!5356 = !DILocation(line: 146, column: 49, scope: !5349)
!5357 = !DILocation(line: 147, column: 28, scope: !5349)
!5358 = !DILocation(line: 148, column: 28, scope: !5349)
!5359 = !DILocation(line: 150, column: 24, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5349, file: !4897, line: 150, column: 6)
!5361 = !DILocation(line: 150, column: 29, scope: !5360)
!5362 = !DILocation(line: 150, column: 35, scope: !5360)
!5363 = !DILocation(line: 150, column: 7, scope: !5360)
!5364 = !DILocation(line: 150, column: 6, scope: !5349)
!5365 = !DILocation(line: 151, column: 3, scope: !5360)
!5366 = !DILocation(line: 153, column: 15, scope: !5349)
!5367 = !DILocation(line: 153, column: 2, scope: !5349)
!5368 = !DILocation(line: 153, column: 8, scope: !5349)
!5369 = !DILocation(line: 153, column: 13, scope: !5349)
!5370 = !DILocation(line: 154, column: 14, scope: !5349)
!5371 = !DILocation(line: 154, column: 2, scope: !5349)
!5372 = !DILocation(line: 154, column: 7, scope: !5349)
!5373 = !DILocation(line: 154, column: 12, scope: !5349)
!5374 = !DILocation(line: 155, column: 14, scope: !5349)
!5375 = !DILocation(line: 155, column: 2, scope: !5349)
!5376 = !DILocation(line: 155, column: 7, scope: !5349)
!5377 = !DILocation(line: 155, column: 12, scope: !5349)
!5378 = !DILocation(line: 156, column: 2, scope: !5349)
!5379 = !DILocation(line: 156, column: 2, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5349, file: !4897, line: 156, column: 2)
!5381 = !DILocation(line: 156, column: 2, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5380, file: !4897, line: 156, column: 2)
!5383 = !DILocation(line: 156, column: 2, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !4897, line: 156, column: 2)
!5385 = !DILocation(line: 157, column: 1, scope: !5349)
!5386 = distinct !DISubprogram(name: "__list_add_valid", scope: !4897, file: !4897, line: 128, type: !5387, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!710, !191, !191, !191}
!5389 = !{!5390, !5391, !5392}
!5390 = !DILocalVariable(name: "new", arg: 1, scope: !5386, file: !4897, line: 128, type: !191)
!5391 = !DILocalVariable(name: "prev", arg: 2, scope: !5386, file: !4897, line: 129, type: !191)
!5392 = !DILocalVariable(name: "next", arg: 3, scope: !5386, file: !4897, line: 130, type: !191)
!5393 = !DILocation(line: 128, column: 55, scope: !5386)
!5394 = !DILocation(line: 129, column: 23, scope: !5386)
!5395 = !DILocation(line: 130, column: 23, scope: !5386)
!5396 = !DILocation(line: 132, column: 2, scope: !5386)
!5397 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4881, file: !4881, line: 43, type: !5398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{null, !4884, !339}
!5400 = distinct !DISubprogram(name: "refcount_inc", scope: !163, file: !163, line: 265, type: !5401, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5404)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{null, !5403}
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!5404 = !{!5405}
!5405 = !DILocalVariable(name: "r", arg: 1, scope: !5400, file: !163, line: 265, type: !5403)
!5406 = !DILocation(line: 265, column: 45, scope: !5400)
!5407 = !DILocation(line: 267, column: 17, scope: !5400)
!5408 = !DILocation(line: 267, column: 2, scope: !5400)
!5409 = !DILocation(line: 268, column: 1, scope: !5400)
!5410 = distinct !DISubprogram(name: "__refcount_inc", scope: !163, file: !163, line: 248, type: !5411, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{null, !5403, !759}
!5413 = !{!5414, !5415}
!5414 = !DILocalVariable(name: "r", arg: 1, scope: !5410, file: !163, line: 248, type: !5403)
!5415 = !DILocalVariable(name: "oldp", arg: 2, scope: !5410, file: !163, line: 248, type: !759)
!5416 = !DILocation(line: 248, column: 47, scope: !5410)
!5417 = !DILocation(line: 248, column: 55, scope: !5410)
!5418 = !DILocation(line: 250, column: 20, scope: !5410)
!5419 = !DILocation(line: 250, column: 23, scope: !5410)
!5420 = !DILocation(line: 250, column: 2, scope: !5410)
!5421 = !DILocation(line: 251, column: 1, scope: !5410)
!5422 = distinct !DISubprogram(name: "__refcount_add", scope: !163, file: !163, line: 191, type: !5423, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{null, !85, !5403, !759}
!5425 = !{!5426, !5427, !5428, !5429}
!5426 = !DILocalVariable(name: "i", arg: 1, scope: !5422, file: !163, line: 191, type: !85)
!5427 = !DILocalVariable(name: "r", arg: 2, scope: !5422, file: !163, line: 191, type: !5403)
!5428 = !DILocalVariable(name: "oldp", arg: 3, scope: !5422, file: !163, line: 191, type: !759)
!5429 = !DILocalVariable(name: "old", scope: !5422, file: !163, line: 193, type: !85)
!5430 = !DILocation(line: 191, column: 39, scope: !5422)
!5431 = !DILocation(line: 191, column: 54, scope: !5422)
!5432 = !DILocation(line: 191, column: 62, scope: !5422)
!5433 = !DILocation(line: 193, column: 2, scope: !5422)
!5434 = !DILocation(line: 193, column: 6, scope: !5422)
!5435 = !DILocation(line: 193, column: 37, scope: !5422)
!5436 = !DILocation(line: 193, column: 41, scope: !5422)
!5437 = !DILocation(line: 193, column: 44, scope: !5422)
!5438 = !DILocation(line: 193, column: 12, scope: !5422)
!5439 = !DILocation(line: 195, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5422, file: !163, line: 195, column: 6)
!5441 = !DILocation(line: 195, column: 6, scope: !5422)
!5442 = !DILocation(line: 196, column: 11, scope: !5440)
!5443 = !DILocation(line: 196, column: 4, scope: !5440)
!5444 = !DILocation(line: 196, column: 9, scope: !5440)
!5445 = !DILocation(line: 196, column: 3, scope: !5440)
!5446 = !DILocation(line: 198, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5422, file: !163, line: 198, column: 6)
!5448 = !DILocation(line: 198, column: 6, scope: !5422)
!5449 = !DILocation(line: 199, column: 26, scope: !5447)
!5450 = !DILocation(line: 199, column: 3, scope: !5447)
!5451 = !DILocation(line: 200, column: 11, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5447, file: !163, line: 200, column: 11)
!5453 = !DILocation(line: 200, column: 11, scope: !5447)
!5454 = !DILocation(line: 201, column: 26, scope: !5452)
!5455 = !DILocation(line: 201, column: 3, scope: !5452)
!5456 = !DILocation(line: 202, column: 1, scope: !5422)
!5457 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5458, file: !5458, line: 250, type: !5459, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5462)
!5458 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!85, !85, !5461}
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!5462 = !{!5463, !5464}
!5463 = !DILocalVariable(name: "i", arg: 1, scope: !5457, file: !5458, line: 250, type: !85)
!5464 = !DILocalVariable(name: "v", arg: 2, scope: !5457, file: !5458, line: 250, type: !5461)
!5465 = !DILocation(line: 250, column: 30, scope: !5457)
!5466 = !DILocation(line: 250, column: 43, scope: !5457)
!5467 = !DILocation(line: 252, column: 31, scope: !5457)
!5468 = !DILocation(line: 252, column: 2, scope: !5457)
!5469 = !DILocation(line: 253, column: 38, scope: !5457)
!5470 = !DILocation(line: 253, column: 41, scope: !5457)
!5471 = !DILocation(line: 253, column: 9, scope: !5457)
!5472 = !DILocation(line: 253, column: 2, scope: !5457)
!5473 = !DISubprogram(name: "refcount_warn_saturate", scope: !163, file: !163, line: 127, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{null, !5403, !162}
!5476 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5477, file: !5477, line: 94, type: !5478, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5483)
!5477 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !5480, !336}
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5482)
!5482 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5483 = !{!5484, !5485}
!5484 = !DILocalVariable(name: "v", arg: 1, scope: !5476, file: !5477, line: 94, type: !5480)
!5485 = !DILocalVariable(name: "size", arg: 2, scope: !5476, file: !5477, line: 94, type: !336)
!5486 = !DILocation(line: 94, column: 79, scope: !5476)
!5487 = !DILocation(line: 94, column: 89, scope: !5476)
!5488 = !DILocation(line: 96, column: 20, scope: !5476)
!5489 = !DILocation(line: 96, column: 23, scope: !5476)
!5490 = !DILocation(line: 96, column: 2, scope: !5476)
!5491 = !DILocation(line: 97, column: 2, scope: !5476)
!5492 = !DILocation(line: 98, column: 1, scope: !5476)
!5493 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5494, file: !5494, line: 731, type: !5459, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5495)
!5494 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5495 = !{!5496, !5497}
!5496 = !DILocalVariable(name: "i", arg: 1, scope: !5493, file: !5494, line: 731, type: !85)
!5497 = !DILocalVariable(name: "v", arg: 2, scope: !5493, file: !5494, line: 731, type: !5461)
!5498 = !DILocation(line: 731, column: 34, scope: !5493)
!5499 = !DILocation(line: 731, column: 47, scope: !5493)
!5500 = !DILocation(line: 736, column: 31, scope: !5493)
!5501 = !DILocation(line: 736, column: 34, scope: !5493)
!5502 = !DILocation(line: 736, column: 9, scope: !5493)
!5503 = !DILocation(line: 736, column: 2, scope: !5493)
!5504 = distinct !DISubprogram(name: "kasan_check_write", scope: !5505, file: !5505, line: 44, type: !5506, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5508)
!5505 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5506 = !DISubroutineType(types: !5507)
!5507 = !{!710, !5480, !7}
!5508 = !{!5509, !5510}
!5509 = !DILocalVariable(name: "p", arg: 1, scope: !5504, file: !5505, line: 44, type: !5480)
!5510 = !DILocalVariable(name: "size", arg: 2, scope: !5504, file: !5505, line: 44, type: !7)
!5511 = !DILocation(line: 44, column: 59, scope: !5504)
!5512 = !DILocation(line: 44, column: 75, scope: !5504)
!5513 = !DILocation(line: 46, column: 2, scope: !5504)
!5514 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5515, file: !5515, line: 229, type: !5516, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5518)
!5515 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !5480, !336, !85}
!5518 = !{!5519, !5520, !5521}
!5519 = !DILocalVariable(name: "ptr", arg: 1, scope: !5514, file: !5515, line: 229, type: !5480)
!5520 = !DILocalVariable(name: "size", arg: 2, scope: !5514, file: !5515, line: 229, type: !336)
!5521 = !DILocalVariable(name: "type", arg: 3, scope: !5514, file: !5515, line: 230, type: !85)
!5522 = !DILocation(line: 229, column: 60, scope: !5514)
!5523 = !DILocation(line: 229, column: 72, scope: !5514)
!5524 = !DILocation(line: 230, column: 15, scope: !5514)
!5525 = !DILocation(line: 230, column: 23, scope: !5514)
!5526 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5527, file: !5527, line: 95, type: !5459, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5528)
!5527 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5528 = !{!5529, !5530, !5531}
!5529 = !DILocalVariable(name: "i", arg: 1, scope: !5526, file: !5527, line: 95, type: !85)
!5530 = !DILocalVariable(name: "v", arg: 2, scope: !5526, file: !5527, line: 95, type: !5461)
!5531 = !DILocalVariable(name: "__ret", scope: !5532, file: !5527, line: 97, type: !85)
!5532 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 97, column: 9)
!5533 = !DILocation(line: 95, column: 54, scope: !5526)
!5534 = !DILocation(line: 95, column: 67, scope: !5526)
!5535 = !DILocation(line: 97, column: 9, scope: !5532)
!5536 = !{i64 2148799772, i64 2148799811, i64 2148799832, i64 2148799869, i64 2148799892, i64 2148799901}
!5537 = !DILocation(line: 97, column: 9, scope: !5526)
!5538 = !DILocation(line: 97, column: 2, scope: !5526)
!5539 = distinct !DISubprogram(name: "__list_del_entry", scope: !4897, file: !4897, line: 213, type: !4992, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5540 = !{!5541}
!5541 = !DILocalVariable(name: "entry", arg: 1, scope: !5539, file: !4897, line: 213, type: !191)
!5542 = !DILocation(line: 213, column: 55, scope: !5539)
!5543 = !DILocation(line: 215, column: 30, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5539, file: !4897, line: 215, column: 6)
!5545 = !DILocation(line: 215, column: 7, scope: !5544)
!5546 = !DILocation(line: 215, column: 6, scope: !5539)
!5547 = !DILocation(line: 216, column: 3, scope: !5544)
!5548 = !DILocation(line: 218, column: 13, scope: !5539)
!5549 = !DILocation(line: 218, column: 20, scope: !5539)
!5550 = !DILocation(line: 218, column: 26, scope: !5539)
!5551 = !DILocation(line: 218, column: 33, scope: !5539)
!5552 = !DILocation(line: 218, column: 2, scope: !5539)
!5553 = !DILocation(line: 219, column: 1, scope: !5539)
!5554 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4897, file: !4897, line: 134, type: !5555, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5557)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!710, !191}
!5557 = !{!5558}
!5558 = !DILocalVariable(name: "entry", arg: 1, scope: !5554, file: !4897, line: 134, type: !191)
!5559 = !DILocation(line: 134, column: 61, scope: !5554)
!5560 = !DILocation(line: 136, column: 2, scope: !5554)
!5561 = distinct !DISubprogram(name: "__list_del", scope: !4897, file: !4897, line: 193, type: !4912, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5562 = !{!5563, !5564}
!5563 = !DILocalVariable(name: "prev", arg: 1, scope: !5561, file: !4897, line: 193, type: !191)
!5564 = !DILocalVariable(name: "next", arg: 2, scope: !5561, file: !4897, line: 193, type: !191)
!5565 = !DILocation(line: 193, column: 50, scope: !5561)
!5566 = !DILocation(line: 193, column: 75, scope: !5561)
!5567 = !DILocation(line: 195, column: 15, scope: !5561)
!5568 = !DILocation(line: 195, column: 2, scope: !5561)
!5569 = !DILocation(line: 195, column: 8, scope: !5561)
!5570 = !DILocation(line: 195, column: 13, scope: !5561)
!5571 = !DILocation(line: 196, column: 2, scope: !5561)
!5572 = !DILocation(line: 196, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5561, file: !4897, line: 196, column: 2)
!5574 = !DILocation(line: 196, column: 2, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5573, file: !4897, line: 196, column: 2)
!5576 = !DILocation(line: 196, column: 2, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5573, file: !4897, line: 196, column: 2)
!5578 = !DILocation(line: 197, column: 1, scope: !5561)
!5579 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !163, file: !163, line: 331, type: !5580, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5582)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!710, !5403}
!5582 = !{!5583}
!5583 = !DILocalVariable(name: "r", arg: 1, scope: !5579, file: !163, line: 331, type: !5403)
!5584 = !DILocation(line: 331, column: 67, scope: !5579)
!5585 = !DILocation(line: 333, column: 33, scope: !5579)
!5586 = !DILocation(line: 333, column: 9, scope: !5579)
!5587 = !DILocation(line: 333, column: 2, scope: !5579)
!5588 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !163, file: !163, line: 313, type: !5589, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5591)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!710, !5403, !759}
!5591 = !{!5592, !5593}
!5592 = !DILocalVariable(name: "r", arg: 1, scope: !5588, file: !163, line: 313, type: !5403)
!5593 = !DILocalVariable(name: "oldp", arg: 2, scope: !5588, file: !163, line: 313, type: !759)
!5594 = !DILocation(line: 313, column: 69, scope: !5588)
!5595 = !DILocation(line: 313, column: 77, scope: !5588)
!5596 = !DILocation(line: 315, column: 36, scope: !5588)
!5597 = !DILocation(line: 315, column: 39, scope: !5588)
!5598 = !DILocation(line: 315, column: 9, scope: !5588)
!5599 = !DILocation(line: 315, column: 2, scope: !5588)
!5600 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !163, file: !163, line: 270, type: !5601, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5603)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{!710, !85, !5403, !759}
!5603 = !{!5604, !5605, !5606, !5607}
!5604 = !DILocalVariable(name: "i", arg: 1, scope: !5600, file: !163, line: 270, type: !85)
!5605 = !DILocalVariable(name: "r", arg: 2, scope: !5600, file: !163, line: 270, type: !5403)
!5606 = !DILocalVariable(name: "oldp", arg: 3, scope: !5600, file: !163, line: 270, type: !759)
!5607 = !DILocalVariable(name: "old", scope: !5600, file: !163, line: 272, type: !85)
!5608 = !DILocation(line: 270, column: 61, scope: !5600)
!5609 = !DILocation(line: 270, column: 76, scope: !5600)
!5610 = !DILocation(line: 270, column: 84, scope: !5600)
!5611 = !DILocation(line: 272, column: 2, scope: !5600)
!5612 = !DILocation(line: 272, column: 6, scope: !5600)
!5613 = !DILocation(line: 272, column: 37, scope: !5600)
!5614 = !DILocation(line: 272, column: 41, scope: !5600)
!5615 = !DILocation(line: 272, column: 44, scope: !5600)
!5616 = !DILocation(line: 272, column: 12, scope: !5600)
!5617 = !DILocation(line: 274, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5600, file: !163, line: 274, column: 6)
!5619 = !DILocation(line: 274, column: 6, scope: !5600)
!5620 = !DILocation(line: 275, column: 11, scope: !5618)
!5621 = !DILocation(line: 275, column: 4, scope: !5618)
!5622 = !DILocation(line: 275, column: 9, scope: !5618)
!5623 = !DILocation(line: 275, column: 3, scope: !5618)
!5624 = !DILocation(line: 277, column: 6, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5600, file: !163, line: 277, column: 6)
!5626 = !DILocation(line: 277, column: 13, scope: !5625)
!5627 = !DILocation(line: 277, column: 10, scope: !5625)
!5628 = !DILocation(line: 277, column: 6, scope: !5600)
!5629 = !DILocation(line: 278, column: 3, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5625, file: !163, line: 277, column: 16)
!5631 = !DILocation(line: 278, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5630, file: !163, line: 278, column: 3)
!5633 = !DILocation(line: 278, column: 3, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5632, file: !163, line: 278, column: 3)
!5635 = !DILocation(line: 278, column: 3, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5632, file: !163, line: 278, column: 3)
!5637 = !DILocation(line: 278, column: 3, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5636, file: !163, line: 278, column: 3)
!5639 = !{i64 2149925035}
!5640 = !DILocation(line: 279, column: 3, scope: !5630)
!5641 = !DILocation(line: 282, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5600, file: !163, line: 282, column: 6)
!5643 = !DILocation(line: 282, column: 6, scope: !5600)
!5644 = !DILocation(line: 283, column: 26, scope: !5642)
!5645 = !DILocation(line: 283, column: 3, scope: !5642)
!5646 = !DILocation(line: 285, column: 2, scope: !5600)
!5647 = !DILocation(line: 286, column: 1, scope: !5600)
!5648 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5458, file: !5458, line: 397, type: !5459, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5649 = !{!5650, !5651}
!5650 = !DILocalVariable(name: "i", arg: 1, scope: !5648, file: !5458, line: 397, type: !85)
!5651 = !DILocalVariable(name: "v", arg: 2, scope: !5648, file: !5458, line: 397, type: !5461)
!5652 = !DILocation(line: 397, column: 30, scope: !5648)
!5653 = !DILocation(line: 397, column: 43, scope: !5648)
!5654 = !DILocation(line: 399, column: 2, scope: !5648)
!5655 = !DILocation(line: 399, column: 2, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5648, file: !5458, line: 399, column: 2)
!5657 = !DILocation(line: 400, column: 31, scope: !5648)
!5658 = !DILocation(line: 400, column: 2, scope: !5648)
!5659 = !DILocation(line: 401, column: 38, scope: !5648)
!5660 = !DILocation(line: 401, column: 41, scope: !5648)
!5661 = !DILocation(line: 401, column: 9, scope: !5648)
!5662 = !DILocation(line: 401, column: 2, scope: !5648)
!5663 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5494, file: !5494, line: 928, type: !5459, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5664)
!5664 = !{!5665, !5666}
!5665 = !DILocalVariable(name: "i", arg: 1, scope: !5663, file: !5494, line: 928, type: !85)
!5666 = !DILocalVariable(name: "v", arg: 2, scope: !5663, file: !5494, line: 928, type: !5461)
!5667 = !DILocation(line: 928, column: 34, scope: !5663)
!5668 = !DILocation(line: 928, column: 47, scope: !5663)
!5669 = !DILocation(line: 936, column: 31, scope: !5663)
!5670 = !DILocation(line: 936, column: 34, scope: !5663)
!5671 = !DILocation(line: 936, column: 9, scope: !5663)
!5672 = !DILocation(line: 936, column: 2, scope: !5663)
!5673 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5527, file: !5527, line: 101, type: !5459, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5674)
!5674 = !{!5675, !5676, !5677}
!5675 = !DILocalVariable(name: "i", arg: 1, scope: !5673, file: !5527, line: 101, type: !85)
!5676 = !DILocalVariable(name: "v", arg: 2, scope: !5673, file: !5527, line: 101, type: !5461)
!5677 = !DILocalVariable(name: "__ret", scope: !5678, file: !5527, line: 103, type: !85)
!5678 = distinct !DILexicalBlock(scope: !5673, file: !5527, line: 103, column: 9)
!5679 = !DILocation(line: 101, column: 54, scope: !5673)
!5680 = !DILocation(line: 101, column: 67, scope: !5673)
!5681 = !DILocation(line: 103, column: 9, scope: !5678)
!5682 = !{i64 2148801957, i64 2148801996, i64 2148802017, i64 2148802054, i64 2148802077, i64 2148802086}
!5683 = !DILocation(line: 103, column: 9, scope: !5673)
!5684 = !DILocation(line: 103, column: 2, scope: !5673)
!5685 = !DISubprogram(name: "kfree", scope: !171, file: !171, line: 227, type: !5686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !2304}
!5688 = distinct !DISubprogram(name: "mon_notify", scope: !3, file: !3, line: 225, type: !4762, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5689)
!5689 = !{!5690, !5691, !5692}
!5690 = !DILocalVariable(name: "self", arg: 1, scope: !5688, file: !3, line: 225, type: !4764)
!5691 = !DILocalVariable(name: "action", arg: 2, scope: !5688, file: !3, line: 225, type: !339)
!5692 = !DILocalVariable(name: "dev", arg: 3, scope: !5688, file: !3, line: 226, type: !181)
!5693 = !DILocation(line: 225, column: 46, scope: !5688)
!5694 = !DILocation(line: 225, column: 66, scope: !5688)
!5695 = !DILocation(line: 226, column: 15, scope: !5688)
!5696 = !DILocation(line: 228, column: 10, scope: !5688)
!5697 = !DILocation(line: 228, column: 2, scope: !5688)
!5698 = !DILocation(line: 230, column: 15, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 228, column: 18)
!5700 = !DILocation(line: 230, column: 3, scope: !5699)
!5701 = !DILocation(line: 231, column: 3, scope: !5699)
!5702 = !DILocation(line: 233, column: 18, scope: !5699)
!5703 = !DILocation(line: 233, column: 3, scope: !5699)
!5704 = !DILocation(line: 234, column: 2, scope: !5699)
!5705 = !DILocation(line: 235, column: 2, scope: !5688)
!5706 = distinct !DISubprogram(name: "mon_bus_add", scope: !3, file: !3, line: 197, type: !5707, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{null, !237}
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "ubus", arg: 1, scope: !5706, file: !3, line: 197, type: !237)
!5711 = !DILocation(line: 197, column: 41, scope: !5706)
!5712 = !DILocation(line: 199, column: 15, scope: !5706)
!5713 = !DILocation(line: 199, column: 2, scope: !5706)
!5714 = !DILocation(line: 200, column: 2, scope: !5706)
!5715 = !DILocation(line: 201, column: 15, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 201, column: 6)
!5717 = !DILocation(line: 201, column: 24, scope: !5716)
!5718 = !DILocation(line: 201, column: 6, scope: !5706)
!5719 = !DILocation(line: 202, column: 3, scope: !5716)
!5720 = !DILocation(line: 202, column: 9, scope: !5716)
!5721 = !DILocation(line: 202, column: 19, scope: !5716)
!5722 = !DILocation(line: 203, column: 2, scope: !5706)
!5723 = !DILocation(line: 204, column: 1, scope: !5706)
!5724 = distinct !DISubprogram(name: "mon_bus_remove", scope: !3, file: !3, line: 209, type: !5707, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5725)
!5725 = !{!5726, !5727}
!5726 = !DILocalVariable(name: "ubus", arg: 1, scope: !5724, file: !3, line: 209, type: !237)
!5727 = !DILocalVariable(name: "mbus", scope: !5724, file: !3, line: 211, type: !182)
!5728 = !DILocation(line: 209, column: 44, scope: !5724)
!5729 = !DILocation(line: 211, column: 2, scope: !5724)
!5730 = !DILocation(line: 211, column: 18, scope: !5724)
!5731 = !DILocation(line: 211, column: 25, scope: !5724)
!5732 = !DILocation(line: 211, column: 31, scope: !5724)
!5733 = !DILocation(line: 213, column: 2, scope: !5724)
!5734 = !DILocation(line: 214, column: 12, scope: !5724)
!5735 = !DILocation(line: 214, column: 18, scope: !5724)
!5736 = !DILocation(line: 214, column: 2, scope: !5724)
!5737 = !DILocation(line: 215, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 215, column: 6)
!5739 = !DILocation(line: 215, column: 12, scope: !5738)
!5740 = !DILocation(line: 215, column: 6, scope: !5724)
!5741 = !DILocation(line: 216, column: 16, scope: !5738)
!5742 = !DILocation(line: 216, column: 3, scope: !5738)
!5743 = !DILocation(line: 217, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 217, column: 6)
!5745 = !DILocation(line: 217, column: 12, scope: !5744)
!5746 = !DILocation(line: 217, column: 6, scope: !5724)
!5747 = !DILocation(line: 218, column: 15, scope: !5744)
!5748 = !DILocation(line: 218, column: 3, scope: !5744)
!5749 = !DILocation(line: 220, column: 15, scope: !5724)
!5750 = !DILocation(line: 220, column: 21, scope: !5724)
!5751 = !DILocation(line: 220, column: 2, scope: !5724)
!5752 = !DILocation(line: 221, column: 12, scope: !5724)
!5753 = !DILocation(line: 221, column: 18, scope: !5724)
!5754 = !DILocation(line: 221, column: 2, scope: !5724)
!5755 = !DILocation(line: 222, column: 2, scope: !5724)
!5756 = !DILocation(line: 223, column: 1, scope: !5724)
!5757 = distinct !DISubprogram(name: "mon_bus_init", scope: !3, file: !3, line: 283, type: !5707, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5758)
!5758 = !{!5759, !5760, !5761}
!5759 = !DILocalVariable(name: "ubus", arg: 1, scope: !5757, file: !3, line: 283, type: !237)
!5760 = !DILocalVariable(name: "mbus", scope: !5757, file: !3, line: 285, type: !182)
!5761 = !DILabel(scope: !5757, name: "err_alloc", file: !3, line: 309)
!5762 = !DILocation(line: 283, column: 42, scope: !5757)
!5763 = !DILocation(line: 285, column: 2, scope: !5757)
!5764 = !DILocation(line: 285, column: 18, scope: !5757)
!5765 = !DILocation(line: 287, column: 9, scope: !5757)
!5766 = !DILocation(line: 287, column: 7, scope: !5757)
!5767 = !DILocation(line: 288, column: 6, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 288, column: 6)
!5769 = !DILocation(line: 288, column: 11, scope: !5768)
!5770 = !DILocation(line: 288, column: 6, scope: !5757)
!5771 = !DILocation(line: 289, column: 3, scope: !5768)
!5772 = !DILocation(line: 290, column: 13, scope: !5757)
!5773 = !DILocation(line: 290, column: 19, scope: !5757)
!5774 = !DILocation(line: 290, column: 2, scope: !5757)
!5775 = !DILocation(line: 291, column: 2, scope: !5757)
!5776 = !DILocation(line: 291, column: 2, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 291, column: 2)
!5778 = !DILocation(line: 292, column: 18, scope: !5757)
!5779 = !DILocation(line: 292, column: 24, scope: !5757)
!5780 = !DILocation(line: 292, column: 2, scope: !5757)
!5781 = !DILocation(line: 298, column: 16, scope: !5757)
!5782 = !DILocation(line: 298, column: 2, scope: !5757)
!5783 = !DILocation(line: 298, column: 8, scope: !5757)
!5784 = !DILocation(line: 298, column: 14, scope: !5757)
!5785 = !DILocation(line: 299, column: 18, scope: !5757)
!5786 = !DILocation(line: 299, column: 2, scope: !5757)
!5787 = !DILocation(line: 299, column: 8, scope: !5757)
!5788 = !DILocation(line: 299, column: 16, scope: !5757)
!5789 = !DILocation(line: 301, column: 35, scope: !5757)
!5790 = !DILocation(line: 301, column: 41, scope: !5757)
!5791 = !DILocation(line: 301, column: 22, scope: !5757)
!5792 = !DILocation(line: 301, column: 2, scope: !5757)
!5793 = !DILocation(line: 301, column: 8, scope: !5757)
!5794 = !DILocation(line: 301, column: 20, scope: !5757)
!5795 = !DILocation(line: 302, column: 33, scope: !5757)
!5796 = !DILocation(line: 302, column: 39, scope: !5757)
!5797 = !DILocation(line: 302, column: 21, scope: !5757)
!5798 = !DILocation(line: 302, column: 2, scope: !5757)
!5799 = !DILocation(line: 302, column: 8, scope: !5757)
!5800 = !DILocation(line: 302, column: 19, scope: !5757)
!5801 = !DILocation(line: 304, column: 2, scope: !5757)
!5802 = !DILocation(line: 305, column: 17, scope: !5757)
!5803 = !DILocation(line: 305, column: 23, scope: !5757)
!5804 = !DILocation(line: 305, column: 2, scope: !5757)
!5805 = !DILocation(line: 306, column: 2, scope: !5757)
!5806 = !DILocation(line: 307, column: 2, scope: !5757)
!5807 = !DILocation(line: 309, column: 1, scope: !5757)
!5808 = !DILocation(line: 310, column: 2, scope: !5757)
!5809 = !DILocation(line: 311, column: 1, scope: !5757)
!5810 = distinct !DISubprogram(name: "kzalloc", scope: !171, file: !171, line: 719, type: !5811, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5813)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!181, !336, !1144}
!5813 = !{!5814, !5815}
!5814 = !DILocalVariable(name: "size", arg: 1, scope: !5810, file: !171, line: 719, type: !336)
!5815 = !DILocalVariable(name: "flags", arg: 2, scope: !5810, file: !171, line: 719, type: !1144)
!5816 = !DILocation(line: 719, column: 52, scope: !5810)
!5817 = !DILocation(line: 719, column: 64, scope: !5810)
!5818 = !DILocation(line: 721, column: 17, scope: !5810)
!5819 = !DILocation(line: 721, column: 23, scope: !5810)
!5820 = !DILocation(line: 721, column: 29, scope: !5810)
!5821 = !DILocation(line: 721, column: 9, scope: !5810)
!5822 = !DILocation(line: 721, column: 2, scope: !5810)
!5823 = distinct !DISubprogram(name: "kref_init", scope: !3953, file: !3953, line: 29, type: !4942, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5824)
!5824 = !{!5825}
!5825 = !DILocalVariable(name: "kref", arg: 1, scope: !5823, file: !3953, line: 29, type: !4944)
!5826 = !DILocation(line: 29, column: 43, scope: !5823)
!5827 = !DILocation(line: 31, column: 16, scope: !5823)
!5828 = !DILocation(line: 31, column: 22, scope: !5823)
!5829 = !DILocation(line: 31, column: 2, scope: !5823)
!5830 = !DILocation(line: 32, column: 1, scope: !5823)
!5831 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4897, file: !4897, line: 35, type: !4992, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5832)
!5832 = !{!5833}
!5833 = !DILocalVariable(name: "list", arg: 1, scope: !5831, file: !4897, line: 35, type: !191)
!5834 = !DILocation(line: 35, column: 53, scope: !5831)
!5835 = !DILocation(line: 37, column: 2, scope: !5831)
!5836 = !DILocation(line: 37, column: 2, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5831, file: !4897, line: 37, column: 2)
!5838 = !DILocation(line: 37, column: 2, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5837, file: !4897, line: 37, column: 2)
!5840 = !DILocation(line: 37, column: 2, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5837, file: !4897, line: 37, column: 2)
!5842 = !DILocation(line: 38, column: 2, scope: !5831)
!5843 = !DILocation(line: 38, column: 2, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5831, file: !4897, line: 38, column: 2)
!5845 = !DILocation(line: 38, column: 2, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5844, file: !4897, line: 38, column: 2)
!5847 = !DILocation(line: 38, column: 2, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5844, file: !4897, line: 38, column: 2)
!5849 = !DILocation(line: 39, column: 1, scope: !5831)
!5850 = !DISubprogram(name: "mon_text_add", scope: !184, file: !184, line: 58, type: !5851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5851 = !DISubroutineType(types: !5852)
!5852 = !{!85, !182, !5853}
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!5855 = !DISubprogram(name: "mon_bin_add", scope: !184, file: !184, line: 60, type: !5851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5856 = distinct !DISubprogram(name: "kmalloc", scope: !171, file: !171, line: 591, type: !5811, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5857 = !{!5858, !5859, !5860}
!5858 = !DILocalVariable(name: "size", arg: 1, scope: !5856, file: !171, line: 591, type: !336)
!5859 = !DILocalVariable(name: "flags", arg: 2, scope: !5856, file: !171, line: 591, type: !1144)
!5860 = !DILocalVariable(name: "index", scope: !5861, file: !171, line: 594, type: !7)
!5861 = distinct !DILexicalBlock(scope: !5862, file: !171, line: 593, column: 42)
!5862 = distinct !DILexicalBlock(scope: !5856, file: !171, line: 593, column: 6)
!5863 = !DILocation(line: 591, column: 61, scope: !5856)
!5864 = !DILocation(line: 591, column: 73, scope: !5856)
!5865 = !DILocation(line: 593, column: 27, scope: !5862)
!5866 = !DILocation(line: 593, column: 6, scope: !5862)
!5867 = !DILocation(line: 593, column: 33, scope: !5862)
!5868 = !DILocation(line: 593, column: 36, scope: !5862)
!5869 = !DILocation(line: 593, column: 6, scope: !5856)
!5870 = !DILocation(line: 594, column: 3, scope: !5861)
!5871 = !DILocation(line: 594, column: 16, scope: !5861)
!5872 = !DILocation(line: 596, column: 7, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5861, file: !171, line: 596, column: 7)
!5874 = !DILocation(line: 596, column: 12, scope: !5873)
!5875 = !DILocation(line: 596, column: 7, scope: !5861)
!5876 = !DILocation(line: 597, column: 25, scope: !5873)
!5877 = !DILocation(line: 597, column: 31, scope: !5873)
!5878 = !DILocation(line: 597, column: 11, scope: !5873)
!5879 = !DILocation(line: 597, column: 4, scope: !5873)
!5880 = !DILocation(line: 599, column: 11, scope: !5861)
!5881 = !DILocation(line: 599, column: 9, scope: !5861)
!5882 = !DILocation(line: 601, column: 33, scope: !5861)
!5883 = !DILocation(line: 601, column: 40, scope: !5861)
!5884 = !DILocation(line: 601, column: 20, scope: !5861)
!5885 = !DILocation(line: 601, column: 5, scope: !5861)
!5886 = !DILocation(line: 601, column: 51, scope: !5861)
!5887 = !DILocation(line: 602, column: 5, scope: !5861)
!5888 = !DILocation(line: 602, column: 12, scope: !5861)
!5889 = !DILocation(line: 600, column: 10, scope: !5861)
!5890 = !DILocation(line: 600, column: 3, scope: !5861)
!5891 = !DILocation(line: 603, column: 2, scope: !5862)
!5892 = !DILocation(line: 604, column: 19, scope: !5856)
!5893 = !DILocation(line: 604, column: 25, scope: !5856)
!5894 = !DILocation(line: 604, column: 9, scope: !5856)
!5895 = !DILocation(line: 604, column: 2, scope: !5856)
!5896 = !DILocation(line: 605, column: 1, scope: !5856)
!5897 = !DISubprogram(name: "kmalloc_large", scope: !171, file: !171, line: 531, type: !5811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5898 = distinct !DISubprogram(name: "__kmalloc_index", scope: !171, file: !171, line: 444, type: !5899, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5901)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!7, !336, !710}
!5901 = !{!5902, !5903}
!5902 = !DILocalVariable(name: "size", arg: 1, scope: !5898, file: !171, line: 444, type: !336)
!5903 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5898, file: !171, line: 445, type: !710)
!5904 = !DILocation(line: 444, column: 60, scope: !5898)
!5905 = !DILocation(line: 445, column: 16, scope: !5898)
!5906 = !DILocation(line: 447, column: 7, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 447, column: 6)
!5908 = !DILocation(line: 447, column: 6, scope: !5898)
!5909 = !DILocation(line: 448, column: 3, scope: !5907)
!5910 = !DILocation(line: 450, column: 6, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 450, column: 6)
!5912 = !DILocation(line: 450, column: 11, scope: !5911)
!5913 = !DILocation(line: 450, column: 6, scope: !5898)
!5914 = !DILocation(line: 451, column: 3, scope: !5911)
!5915 = !DILocation(line: 453, column: 32, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 453, column: 6)
!5917 = !DILocation(line: 453, column: 37, scope: !5916)
!5918 = !DILocation(line: 453, column: 42, scope: !5916)
!5919 = !DILocation(line: 453, column: 45, scope: !5916)
!5920 = !DILocation(line: 453, column: 50, scope: !5916)
!5921 = !DILocation(line: 453, column: 6, scope: !5898)
!5922 = !DILocation(line: 454, column: 3, scope: !5916)
!5923 = !DILocation(line: 455, column: 32, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 455, column: 6)
!5925 = !DILocation(line: 455, column: 37, scope: !5924)
!5926 = !DILocation(line: 455, column: 43, scope: !5924)
!5927 = !DILocation(line: 455, column: 46, scope: !5924)
!5928 = !DILocation(line: 455, column: 51, scope: !5924)
!5929 = !DILocation(line: 455, column: 6, scope: !5898)
!5930 = !DILocation(line: 456, column: 3, scope: !5924)
!5931 = !DILocation(line: 457, column: 6, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 457, column: 6)
!5933 = !DILocation(line: 457, column: 11, scope: !5932)
!5934 = !DILocation(line: 457, column: 6, scope: !5898)
!5935 = !DILocation(line: 457, column: 26, scope: !5932)
!5936 = !DILocation(line: 458, column: 6, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 458, column: 6)
!5938 = !DILocation(line: 458, column: 11, scope: !5937)
!5939 = !DILocation(line: 458, column: 6, scope: !5898)
!5940 = !DILocation(line: 458, column: 26, scope: !5937)
!5941 = !DILocation(line: 459, column: 6, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 459, column: 6)
!5943 = !DILocation(line: 459, column: 11, scope: !5942)
!5944 = !DILocation(line: 459, column: 6, scope: !5898)
!5945 = !DILocation(line: 459, column: 26, scope: !5942)
!5946 = !DILocation(line: 460, column: 6, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 460, column: 6)
!5948 = !DILocation(line: 460, column: 11, scope: !5947)
!5949 = !DILocation(line: 460, column: 6, scope: !5898)
!5950 = !DILocation(line: 460, column: 26, scope: !5947)
!5951 = !DILocation(line: 461, column: 6, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 461, column: 6)
!5953 = !DILocation(line: 461, column: 11, scope: !5952)
!5954 = !DILocation(line: 461, column: 6, scope: !5898)
!5955 = !DILocation(line: 461, column: 26, scope: !5952)
!5956 = !DILocation(line: 462, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 462, column: 6)
!5958 = !DILocation(line: 462, column: 11, scope: !5957)
!5959 = !DILocation(line: 462, column: 6, scope: !5898)
!5960 = !DILocation(line: 462, column: 26, scope: !5957)
!5961 = !DILocation(line: 463, column: 6, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 463, column: 6)
!5963 = !DILocation(line: 463, column: 11, scope: !5962)
!5964 = !DILocation(line: 463, column: 6, scope: !5898)
!5965 = !DILocation(line: 463, column: 26, scope: !5962)
!5966 = !DILocation(line: 464, column: 6, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 464, column: 6)
!5968 = !DILocation(line: 464, column: 11, scope: !5967)
!5969 = !DILocation(line: 464, column: 6, scope: !5898)
!5970 = !DILocation(line: 464, column: 26, scope: !5967)
!5971 = !DILocation(line: 465, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 465, column: 6)
!5973 = !DILocation(line: 465, column: 11, scope: !5972)
!5974 = !DILocation(line: 465, column: 6, scope: !5898)
!5975 = !DILocation(line: 465, column: 26, scope: !5972)
!5976 = !DILocation(line: 466, column: 6, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 466, column: 6)
!5978 = !DILocation(line: 466, column: 11, scope: !5977)
!5979 = !DILocation(line: 466, column: 6, scope: !5898)
!5980 = !DILocation(line: 466, column: 26, scope: !5977)
!5981 = !DILocation(line: 467, column: 6, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 467, column: 6)
!5983 = !DILocation(line: 467, column: 11, scope: !5982)
!5984 = !DILocation(line: 467, column: 6, scope: !5898)
!5985 = !DILocation(line: 467, column: 26, scope: !5982)
!5986 = !DILocation(line: 468, column: 6, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 468, column: 6)
!5988 = !DILocation(line: 468, column: 11, scope: !5987)
!5989 = !DILocation(line: 468, column: 6, scope: !5898)
!5990 = !DILocation(line: 468, column: 26, scope: !5987)
!5991 = !DILocation(line: 469, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 469, column: 6)
!5993 = !DILocation(line: 469, column: 11, scope: !5992)
!5994 = !DILocation(line: 469, column: 6, scope: !5898)
!5995 = !DILocation(line: 469, column: 26, scope: !5992)
!5996 = !DILocation(line: 470, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 470, column: 6)
!5998 = !DILocation(line: 470, column: 11, scope: !5997)
!5999 = !DILocation(line: 470, column: 6, scope: !5898)
!6000 = !DILocation(line: 470, column: 26, scope: !5997)
!6001 = !DILocation(line: 471, column: 6, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 471, column: 6)
!6003 = !DILocation(line: 471, column: 11, scope: !6002)
!6004 = !DILocation(line: 471, column: 6, scope: !5898)
!6005 = !DILocation(line: 471, column: 26, scope: !6002)
!6006 = !DILocation(line: 472, column: 6, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 472, column: 6)
!6008 = !DILocation(line: 472, column: 11, scope: !6007)
!6009 = !DILocation(line: 472, column: 6, scope: !5898)
!6010 = !DILocation(line: 472, column: 26, scope: !6007)
!6011 = !DILocation(line: 473, column: 6, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 473, column: 6)
!6013 = !DILocation(line: 473, column: 11, scope: !6012)
!6014 = !DILocation(line: 473, column: 6, scope: !5898)
!6015 = !DILocation(line: 473, column: 26, scope: !6012)
!6016 = !DILocation(line: 474, column: 6, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 474, column: 6)
!6018 = !DILocation(line: 474, column: 11, scope: !6017)
!6019 = !DILocation(line: 474, column: 6, scope: !5898)
!6020 = !DILocation(line: 474, column: 27, scope: !6017)
!6021 = !DILocation(line: 475, column: 6, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 475, column: 6)
!6023 = !DILocation(line: 475, column: 11, scope: !6022)
!6024 = !DILocation(line: 475, column: 6, scope: !5898)
!6025 = !DILocation(line: 475, column: 32, scope: !6022)
!6026 = !DILocation(line: 477, column: 50, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5898, file: !171, line: 477, column: 6)
!6028 = !{i8 0, i8 2}
!6029 = !DILocation(line: 477, column: 6, scope: !5898)
!6030 = !DILocation(line: 478, column: 3, scope: !6027)
!6031 = !DILocation(line: 478, column: 3, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6033, file: !171, line: 478, column: 3)
!6033 = distinct !DILexicalBlock(scope: !6027, file: !171, line: 478, column: 3)
!6034 = !{i32 -2140945563}
!6035 = !DILocation(line: 478, column: 3, scope: !6033)
!6036 = !DILocation(line: 480, column: 3, scope: !6027)
!6037 = !DILocation(line: 480, column: 3, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6027, file: !171, line: 480, column: 3)
!6039 = !DILocation(line: 480, column: 3, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6038, file: !171, line: 480, column: 3)
!6041 = !DILocation(line: 480, column: 3, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6038, file: !171, line: 480, column: 3)
!6043 = !{i64 2154021936, i64 2154021965, i64 2154022011, i64 2154022069, i64 2154022123, i64 2154022177, i64 2154022232, i64 2154022263}
!6044 = !DILocation(line: 483, column: 2, scope: !5898)
!6045 = !DILocation(line: 484, column: 1, scope: !5898)
!6046 = !DISubprogram(name: "kmalloc_trace", scope: !171, file: !171, line: 525, type: !6047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{!181, !6049, !1144, !336}
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6051, line: 325, flags: DIFlagFwdDecl)
!6051 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6052 = distinct !DISubprogram(name: "kmalloc_type", scope: !171, file: !171, line: 401, type: !6053, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!170, !1144, !339}
!6055 = !{!6056, !6057}
!6056 = !DILocalVariable(name: "flags", arg: 1, scope: !6052, file: !171, line: 401, type: !1144)
!6057 = !DILocalVariable(name: "caller", arg: 2, scope: !6052, file: !171, line: 401, type: !339)
!6058 = !DILocation(line: 401, column: 67, scope: !6052)
!6059 = !DILocation(line: 401, column: 88, scope: !6052)
!6060 = !DILocation(line: 407, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6052, file: !171, line: 407, column: 6)
!6062 = !DILocation(line: 407, column: 6, scope: !6052)
!6063 = !DILocation(line: 413, column: 3, scope: !6061)
!6064 = !DILocation(line: 423, column: 38, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6052, file: !171, line: 423, column: 6)
!6066 = !DILocation(line: 423, column: 44, scope: !6065)
!6067 = !DILocation(line: 423, column: 6, scope: !6052)
!6068 = !DILocation(line: 424, column: 3, scope: !6065)
!6069 = !DILocation(line: 426, column: 3, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6052, file: !171, line: 425, column: 6)
!6071 = !DILocation(line: 429, column: 1, scope: !6052)
!6072 = !DISubprogram(name: "__kmalloc", scope: !171, file: !171, line: 488, type: !5811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DISubprogram(name: "__compiletime_assert_263", scope: !171, file: !171, line: 478, type: !995, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6074 = distinct !DISubprogram(name: "refcount_set", scope: !163, file: !163, line: 134, type: !6075, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6077)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{null, !5403, !85}
!6077 = !{!6078, !6079}
!6078 = !DILocalVariable(name: "r", arg: 1, scope: !6074, file: !163, line: 134, type: !5403)
!6079 = !DILocalVariable(name: "n", arg: 2, scope: !6074, file: !163, line: 134, type: !85)
!6080 = !DILocation(line: 134, column: 45, scope: !6074)
!6081 = !DILocation(line: 134, column: 52, scope: !6074)
!6082 = !DILocation(line: 136, column: 14, scope: !6074)
!6083 = !DILocation(line: 136, column: 17, scope: !6074)
!6084 = !DILocation(line: 136, column: 23, scope: !6074)
!6085 = !DILocation(line: 136, column: 2, scope: !6074)
!6086 = !DILocation(line: 137, column: 1, scope: !6074)
!6087 = distinct !DISubprogram(name: "atomic_set", scope: !5458, file: !5458, line: 65, type: !6088, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{null, !5461, !85}
!6090 = !{!6091, !6092}
!6091 = !DILocalVariable(name: "v", arg: 1, scope: !6087, file: !5458, line: 65, type: !5461)
!6092 = !DILocalVariable(name: "i", arg: 2, scope: !6087, file: !5458, line: 65, type: !85)
!6093 = !DILocation(line: 65, column: 22, scope: !6087)
!6094 = !DILocation(line: 65, column: 29, scope: !6087)
!6095 = !DILocation(line: 67, column: 26, scope: !6087)
!6096 = !DILocation(line: 67, column: 2, scope: !6087)
!6097 = !DILocation(line: 68, column: 17, scope: !6087)
!6098 = !DILocation(line: 68, column: 20, scope: !6087)
!6099 = !DILocation(line: 68, column: 2, scope: !6087)
!6100 = !DILocation(line: 69, column: 1, scope: !6087)
!6101 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5477, file: !5477, line: 80, type: !5478, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6102)
!6102 = !{!6103, !6104}
!6103 = !DILocalVariable(name: "v", arg: 1, scope: !6101, file: !5477, line: 80, type: !5480)
!6104 = !DILocalVariable(name: "size", arg: 2, scope: !6101, file: !5477, line: 80, type: !336)
!6105 = !DILocation(line: 80, column: 74, scope: !6101)
!6106 = !DILocation(line: 80, column: 84, scope: !6101)
!6107 = !DILocation(line: 82, column: 20, scope: !6101)
!6108 = !DILocation(line: 82, column: 23, scope: !6101)
!6109 = !DILocation(line: 82, column: 2, scope: !6101)
!6110 = !DILocation(line: 83, column: 2, scope: !6101)
!6111 = !DILocation(line: 84, column: 1, scope: !6101)
!6112 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5494, file: !5494, line: 488, type: !6088, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6113)
!6113 = !{!6114, !6115}
!6114 = !DILocalVariable(name: "v", arg: 1, scope: !6112, file: !5494, line: 488, type: !5461)
!6115 = !DILocalVariable(name: "i", arg: 2, scope: !6112, file: !5494, line: 488, type: !85)
!6116 = !DILocation(line: 488, column: 26, scope: !6112)
!6117 = !DILocation(line: 488, column: 33, scope: !6112)
!6118 = !DILocation(line: 490, column: 18, scope: !6112)
!6119 = !DILocation(line: 490, column: 21, scope: !6112)
!6120 = !DILocation(line: 490, column: 2, scope: !6112)
!6121 = !DILocation(line: 491, column: 1, scope: !6112)
!6122 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5527, file: !5527, line: 26, type: !6088, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6123)
!6123 = !{!6124, !6125}
!6124 = !DILocalVariable(name: "v", arg: 1, scope: !6122, file: !5527, line: 26, type: !5461)
!6125 = !DILocalVariable(name: "i", arg: 2, scope: !6122, file: !5527, line: 26, type: !85)
!6126 = !DILocation(line: 26, column: 55, scope: !6122)
!6127 = !DILocation(line: 26, column: 62, scope: !6122)
!6128 = !DILocation(line: 28, column: 2, scope: !6122)
!6129 = !DILocation(line: 28, column: 2, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6122, file: !5527, line: 28, column: 2)
!6131 = !DILocation(line: 29, column: 1, scope: !6122)
!6132 = !DISubprogram(name: "mon_text_init", scope: !184, file: !184, line: 63, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6133 = !DISubprogram(name: "mon_bin_init", scope: !184, file: !184, line: 65, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6134 = distinct !DISubprogram(name: "mon_bus0_init", scope: !3, file: !3, line: 313, type: !995, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6135)
!6135 = !{!6136}
!6136 = !DILocalVariable(name: "mbus", scope: !6134, file: !3, line: 315, type: !182)
!6137 = !DILocation(line: 315, column: 2, scope: !6134)
!6138 = !DILocation(line: 315, column: 18, scope: !6134)
!6139 = !DILocation(line: 317, column: 13, scope: !6134)
!6140 = !DILocation(line: 317, column: 19, scope: !6134)
!6141 = !DILocation(line: 317, column: 2, scope: !6134)
!6142 = !DILocation(line: 318, column: 2, scope: !6134)
!6143 = !DILocation(line: 318, column: 2, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 318, column: 2)
!6145 = !DILocation(line: 319, column: 18, scope: !6134)
!6146 = !DILocation(line: 319, column: 24, scope: !6134)
!6147 = !DILocation(line: 319, column: 2, scope: !6134)
!6148 = !DILocation(line: 321, column: 35, scope: !6134)
!6149 = !DILocation(line: 321, column: 22, scope: !6134)
!6150 = !DILocation(line: 321, column: 2, scope: !6134)
!6151 = !DILocation(line: 321, column: 8, scope: !6134)
!6152 = !DILocation(line: 321, column: 20, scope: !6134)
!6153 = !DILocation(line: 322, column: 33, scope: !6134)
!6154 = !DILocation(line: 322, column: 21, scope: !6134)
!6155 = !DILocation(line: 322, column: 2, scope: !6134)
!6156 = !DILocation(line: 322, column: 8, scope: !6134)
!6157 = !DILocation(line: 322, column: 19, scope: !6134)
!6158 = !DILocation(line: 323, column: 1, scope: !6134)
!6159 = !DISubprogram(name: "usb_mon_register", scope: !4353, file: !4353, line: 724, type: !6160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6160 = !DISubroutineType(types: !6161)
!6161 = !{!85, !6162}
!6162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!6163 = !DISubprogram(name: "idr_get_next", scope: !6164, file: !6164, line: 122, type: !6165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6164 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!6165 = !DISubroutineType(types: !6166)
!6166 = !{!181, !6167, !759}
!6167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6168, size: 64)
!6168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !6164, line: 19, size: 192, elements: !6169)
!6169 = !{!6170, !6171, !6172}
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !6168, file: !6164, line: 20, baseType: !3562, size: 128)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !6168, file: !6164, line: 21, baseType: !7, size: 32, offset: 128)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !6168, file: !6164, line: 22, baseType: !7, size: 32, offset: 160)
!6173 = !DISubprogram(name: "usb_register_notify", scope: !146, file: !146, line: 2059, type: !5225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6174 = distinct !DISubprogram(name: "mon_submit", scope: !3, file: !3, line: 96, type: !4784, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6175)
!6175 = !{!6176, !6177, !6178}
!6176 = !DILocalVariable(name: "ubus", arg: 1, scope: !6174, file: !3, line: 96, type: !237)
!6177 = !DILocalVariable(name: "urb", arg: 2, scope: !6174, file: !3, line: 96, type: !4668)
!6178 = !DILocalVariable(name: "mbus", scope: !6174, file: !3, line: 98, type: !182)
!6179 = !DILocation(line: 96, column: 40, scope: !6174)
!6180 = !DILocation(line: 96, column: 58, scope: !6174)
!6181 = !DILocation(line: 98, column: 2, scope: !6174)
!6182 = !DILocation(line: 98, column: 18, scope: !6174)
!6183 = !DILocation(line: 100, column: 9, scope: !6174)
!6184 = !DILocation(line: 100, column: 15, scope: !6174)
!6185 = !DILocation(line: 100, column: 7, scope: !6174)
!6186 = !DILocation(line: 101, column: 6, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 101, column: 6)
!6188 = !DILocation(line: 101, column: 11, scope: !6187)
!6189 = !DILocation(line: 101, column: 6, scope: !6174)
!6190 = !DILocation(line: 102, column: 18, scope: !6187)
!6191 = !DILocation(line: 102, column: 24, scope: !6187)
!6192 = !DILocation(line: 102, column: 3, scope: !6187)
!6193 = !DILocation(line: 103, column: 28, scope: !6174)
!6194 = !DILocation(line: 103, column: 2, scope: !6174)
!6195 = !DILocation(line: 104, column: 1, scope: !6174)
!6196 = distinct !DISubprogram(name: "mon_submit_error", scope: !3, file: !3, line: 123, type: !4788, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6197 = !{!6198, !6199, !6200, !6201}
!6198 = !DILocalVariable(name: "ubus", arg: 1, scope: !6196, file: !3, line: 123, type: !237)
!6199 = !DILocalVariable(name: "urb", arg: 2, scope: !6196, file: !3, line: 123, type: !4668)
!6200 = !DILocalVariable(name: "error", arg: 3, scope: !6196, file: !3, line: 123, type: !85)
!6201 = !DILocalVariable(name: "mbus", scope: !6196, file: !3, line: 125, type: !182)
!6202 = !DILocation(line: 123, column: 46, scope: !6196)
!6203 = !DILocation(line: 123, column: 64, scope: !6196)
!6204 = !DILocation(line: 123, column: 73, scope: !6196)
!6205 = !DILocation(line: 125, column: 2, scope: !6196)
!6206 = !DILocation(line: 125, column: 18, scope: !6196)
!6207 = !DILocation(line: 127, column: 9, scope: !6196)
!6208 = !DILocation(line: 127, column: 15, scope: !6196)
!6209 = !DILocation(line: 127, column: 7, scope: !6196)
!6210 = !DILocation(line: 128, column: 6, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 128, column: 6)
!6212 = !DILocation(line: 128, column: 11, scope: !6211)
!6213 = !DILocation(line: 128, column: 6, scope: !6196)
!6214 = !DILocation(line: 129, column: 24, scope: !6211)
!6215 = !DILocation(line: 129, column: 30, scope: !6211)
!6216 = !DILocation(line: 129, column: 35, scope: !6211)
!6217 = !DILocation(line: 129, column: 3, scope: !6211)
!6218 = !DILocation(line: 130, column: 34, scope: !6196)
!6219 = !DILocation(line: 130, column: 39, scope: !6196)
!6220 = !DILocation(line: 130, column: 2, scope: !6196)
!6221 = !DILocation(line: 131, column: 1, scope: !6196)
!6222 = distinct !DISubprogram(name: "mon_complete", scope: !3, file: !3, line: 150, type: !4788, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6223)
!6223 = !{!6224, !6225, !6226, !6227}
!6224 = !DILocalVariable(name: "ubus", arg: 1, scope: !6222, file: !3, line: 150, type: !237)
!6225 = !DILocalVariable(name: "urb", arg: 2, scope: !6222, file: !3, line: 150, type: !4668)
!6226 = !DILocalVariable(name: "status", arg: 3, scope: !6222, file: !3, line: 150, type: !85)
!6227 = !DILocalVariable(name: "mbus", scope: !6222, file: !3, line: 152, type: !182)
!6228 = !DILocation(line: 150, column: 42, scope: !6222)
!6229 = !DILocation(line: 150, column: 60, scope: !6222)
!6230 = !DILocation(line: 150, column: 69, scope: !6222)
!6231 = !DILocation(line: 152, column: 2, scope: !6222)
!6232 = !DILocation(line: 152, column: 18, scope: !6222)
!6233 = !DILocation(line: 154, column: 9, scope: !6222)
!6234 = !DILocation(line: 154, column: 15, scope: !6222)
!6235 = !DILocation(line: 154, column: 7, scope: !6222)
!6236 = !DILocation(line: 155, column: 6, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 155, column: 6)
!6238 = !DILocation(line: 155, column: 11, scope: !6237)
!6239 = !DILocation(line: 155, column: 6, scope: !6222)
!6240 = !DILocation(line: 156, column: 20, scope: !6237)
!6241 = !DILocation(line: 156, column: 26, scope: !6237)
!6242 = !DILocation(line: 156, column: 31, scope: !6237)
!6243 = !DILocation(line: 156, column: 3, scope: !6237)
!6244 = !DILocation(line: 157, column: 30, scope: !6222)
!6245 = !DILocation(line: 157, column: 35, scope: !6222)
!6246 = !DILocation(line: 157, column: 2, scope: !6222)
!6247 = !DILocation(line: 158, column: 1, scope: !6222)
!6248 = distinct !DISubprogram(name: "mon_bus_submit", scope: !3, file: !3, line: 81, type: !6249, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6251)
!6249 = !DISubroutineType(types: !6250)
!6250 = !{null, !182, !4668}
!6251 = !{!6252, !6253, !6254, !6255, !6256, !6257, !6261, !6262}
!6252 = !DILocalVariable(name: "mbus", arg: 1, scope: !6248, file: !3, line: 81, type: !182)
!6253 = !DILocalVariable(name: "urb", arg: 2, scope: !6248, file: !3, line: 81, type: !4668)
!6254 = !DILocalVariable(name: "flags", scope: !6248, file: !3, line: 83, type: !339)
!6255 = !DILocalVariable(name: "pos", scope: !6248, file: !3, line: 84, type: !191)
!6256 = !DILocalVariable(name: "r", scope: !6248, file: !3, line: 85, type: !4658)
!6257 = !DILocalVariable(name: "__dummy", scope: !6258, file: !3, line: 87, type: !339)
!6258 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 87, column: 2)
!6259 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 87, column: 2)
!6260 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 87, column: 2)
!6261 = !DILocalVariable(name: "__dummy2", scope: !6258, file: !3, line: 87, type: !339)
!6262 = !DILocalVariable(name: "__mptr", scope: !6263, file: !3, line: 90, type: !181)
!6263 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 90, column: 7)
!6264 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 89, column: 37)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 89, column: 2)
!6266 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 89, column: 2)
!6267 = !DILocation(line: 81, column: 44, scope: !6248)
!6268 = !DILocation(line: 81, column: 62, scope: !6248)
!6269 = !DILocation(line: 83, column: 2, scope: !6248)
!6270 = !DILocation(line: 83, column: 16, scope: !6248)
!6271 = !DILocation(line: 84, column: 2, scope: !6248)
!6272 = !DILocation(line: 84, column: 20, scope: !6248)
!6273 = !DILocation(line: 85, column: 2, scope: !6248)
!6274 = !DILocation(line: 85, column: 21, scope: !6248)
!6275 = !DILocation(line: 87, column: 2, scope: !6248)
!6276 = !DILocation(line: 87, column: 2, scope: !6260)
!6277 = !DILocation(line: 87, column: 2, scope: !6258)
!6278 = !DILocation(line: 87, column: 2, scope: !6259)
!6279 = !DILocation(line: 88, column: 2, scope: !6248)
!6280 = !DILocation(line: 88, column: 8, scope: !6248)
!6281 = !DILocation(line: 88, column: 18, scope: !6248)
!6282 = !DILocation(line: 89, column: 2, scope: !6266)
!6283 = !DILocation(line: 89, column: 2, scope: !6265)
!6284 = !DILocation(line: 90, column: 7, scope: !6263)
!6285 = !DILocation(line: 90, column: 7, scope: !6264)
!6286 = !DILocation(line: 90, column: 5, scope: !6264)
!6287 = !DILocation(line: 91, column: 3, scope: !6264)
!6288 = !DILocation(line: 91, column: 6, scope: !6264)
!6289 = !DILocation(line: 91, column: 17, scope: !6264)
!6290 = !DILocation(line: 91, column: 20, scope: !6264)
!6291 = !DILocation(line: 91, column: 28, scope: !6264)
!6292 = !DILocation(line: 92, column: 2, scope: !6264)
!6293 = distinct !{!6293, !6282, !6294, !4855, !4856}
!6294 = !DILocation(line: 92, column: 2, scope: !6266)
!6295 = !DILocation(line: 93, column: 26, scope: !6248)
!6296 = !DILocation(line: 93, column: 32, scope: !6248)
!6297 = !DILocation(line: 93, column: 38, scope: !6248)
!6298 = !DILocation(line: 93, column: 2, scope: !6248)
!6299 = !DILocation(line: 94, column: 1, scope: !6248)
!6300 = distinct !DISubprogram(name: "mon_bus_submit_error", scope: !3, file: !3, line: 108, type: !6301, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6301 = !DISubroutineType(types: !6302)
!6302 = !{null, !182, !4668, !85}
!6303 = !{!6304, !6305, !6306, !6307, !6308, !6309, !6310, !6314, !6315}
!6304 = !DILocalVariable(name: "mbus", arg: 1, scope: !6300, file: !3, line: 108, type: !182)
!6305 = !DILocalVariable(name: "urb", arg: 2, scope: !6300, file: !3, line: 108, type: !4668)
!6306 = !DILocalVariable(name: "error", arg: 3, scope: !6300, file: !3, line: 108, type: !85)
!6307 = !DILocalVariable(name: "flags", scope: !6300, file: !3, line: 110, type: !339)
!6308 = !DILocalVariable(name: "pos", scope: !6300, file: !3, line: 111, type: !191)
!6309 = !DILocalVariable(name: "r", scope: !6300, file: !3, line: 112, type: !4658)
!6310 = !DILocalVariable(name: "__dummy", scope: !6311, file: !3, line: 114, type: !339)
!6311 = distinct !DILexicalBlock(scope: !6312, file: !3, line: 114, column: 2)
!6312 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 114, column: 2)
!6313 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 114, column: 2)
!6314 = !DILocalVariable(name: "__dummy2", scope: !6311, file: !3, line: 114, type: !339)
!6315 = !DILocalVariable(name: "__mptr", scope: !6316, file: !3, line: 117, type: !181)
!6316 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 117, column: 7)
!6317 = distinct !DILexicalBlock(scope: !6318, file: !3, line: 116, column: 37)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 116, column: 2)
!6319 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 116, column: 2)
!6320 = !DILocation(line: 108, column: 50, scope: !6300)
!6321 = !DILocation(line: 108, column: 68, scope: !6300)
!6322 = !DILocation(line: 108, column: 77, scope: !6300)
!6323 = !DILocation(line: 110, column: 2, scope: !6300)
!6324 = !DILocation(line: 110, column: 16, scope: !6300)
!6325 = !DILocation(line: 111, column: 2, scope: !6300)
!6326 = !DILocation(line: 111, column: 20, scope: !6300)
!6327 = !DILocation(line: 112, column: 2, scope: !6300)
!6328 = !DILocation(line: 112, column: 21, scope: !6300)
!6329 = !DILocation(line: 114, column: 2, scope: !6300)
!6330 = !DILocation(line: 114, column: 2, scope: !6313)
!6331 = !DILocation(line: 114, column: 2, scope: !6311)
!6332 = !DILocation(line: 114, column: 2, scope: !6312)
!6333 = !DILocation(line: 115, column: 2, scope: !6300)
!6334 = !DILocation(line: 115, column: 8, scope: !6300)
!6335 = !DILocation(line: 115, column: 18, scope: !6300)
!6336 = !DILocation(line: 116, column: 2, scope: !6319)
!6337 = !DILocation(line: 116, column: 2, scope: !6318)
!6338 = !DILocation(line: 117, column: 7, scope: !6316)
!6339 = !DILocation(line: 117, column: 7, scope: !6317)
!6340 = !DILocation(line: 117, column: 5, scope: !6317)
!6341 = !DILocation(line: 118, column: 3, scope: !6317)
!6342 = !DILocation(line: 118, column: 6, scope: !6317)
!6343 = !DILocation(line: 118, column: 16, scope: !6317)
!6344 = !DILocation(line: 118, column: 19, scope: !6317)
!6345 = !DILocation(line: 118, column: 27, scope: !6317)
!6346 = !DILocation(line: 118, column: 32, scope: !6317)
!6347 = !DILocation(line: 119, column: 2, scope: !6317)
!6348 = distinct !{!6348, !6336, !6349, !4855, !4856}
!6349 = !DILocation(line: 119, column: 2, scope: !6319)
!6350 = !DILocation(line: 120, column: 26, scope: !6300)
!6351 = !DILocation(line: 120, column: 32, scope: !6300)
!6352 = !DILocation(line: 120, column: 38, scope: !6300)
!6353 = !DILocation(line: 120, column: 2, scope: !6300)
!6354 = !DILocation(line: 121, column: 1, scope: !6300)
!6355 = distinct !DISubprogram(name: "mon_bus_complete", scope: !3, file: !3, line: 135, type: !6301, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6356)
!6356 = !{!6357, !6358, !6359, !6360, !6361, !6362, !6363, !6367, !6368}
!6357 = !DILocalVariable(name: "mbus", arg: 1, scope: !6355, file: !3, line: 135, type: !182)
!6358 = !DILocalVariable(name: "urb", arg: 2, scope: !6355, file: !3, line: 135, type: !4668)
!6359 = !DILocalVariable(name: "status", arg: 3, scope: !6355, file: !3, line: 135, type: !85)
!6360 = !DILocalVariable(name: "flags", scope: !6355, file: !3, line: 137, type: !339)
!6361 = !DILocalVariable(name: "pos", scope: !6355, file: !3, line: 138, type: !191)
!6362 = !DILocalVariable(name: "r", scope: !6355, file: !3, line: 139, type: !4658)
!6363 = !DILocalVariable(name: "__dummy", scope: !6364, file: !3, line: 141, type: !339)
!6364 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 141, column: 2)
!6365 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 141, column: 2)
!6366 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 141, column: 2)
!6367 = !DILocalVariable(name: "__dummy2", scope: !6364, file: !3, line: 141, type: !339)
!6368 = !DILocalVariable(name: "__mptr", scope: !6369, file: !3, line: 144, type: !181)
!6369 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 144, column: 7)
!6370 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 143, column: 37)
!6371 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 143, column: 2)
!6372 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 143, column: 2)
!6373 = !DILocation(line: 135, column: 46, scope: !6355)
!6374 = !DILocation(line: 135, column: 64, scope: !6355)
!6375 = !DILocation(line: 135, column: 73, scope: !6355)
!6376 = !DILocation(line: 137, column: 2, scope: !6355)
!6377 = !DILocation(line: 137, column: 16, scope: !6355)
!6378 = !DILocation(line: 138, column: 2, scope: !6355)
!6379 = !DILocation(line: 138, column: 20, scope: !6355)
!6380 = !DILocation(line: 139, column: 2, scope: !6355)
!6381 = !DILocation(line: 139, column: 21, scope: !6355)
!6382 = !DILocation(line: 141, column: 2, scope: !6355)
!6383 = !DILocation(line: 141, column: 2, scope: !6366)
!6384 = !DILocation(line: 141, column: 2, scope: !6364)
!6385 = !DILocation(line: 141, column: 2, scope: !6365)
!6386 = !DILocation(line: 142, column: 2, scope: !6355)
!6387 = !DILocation(line: 142, column: 8, scope: !6355)
!6388 = !DILocation(line: 142, column: 18, scope: !6355)
!6389 = !DILocation(line: 143, column: 2, scope: !6372)
!6390 = !DILocation(line: 143, column: 2, scope: !6371)
!6391 = !DILocation(line: 144, column: 7, scope: !6369)
!6392 = !DILocation(line: 144, column: 7, scope: !6370)
!6393 = !DILocation(line: 144, column: 5, scope: !6370)
!6394 = !DILocation(line: 145, column: 3, scope: !6370)
!6395 = !DILocation(line: 145, column: 6, scope: !6370)
!6396 = !DILocation(line: 145, column: 19, scope: !6370)
!6397 = !DILocation(line: 145, column: 22, scope: !6370)
!6398 = !DILocation(line: 145, column: 30, scope: !6370)
!6399 = !DILocation(line: 145, column: 35, scope: !6370)
!6400 = !DILocation(line: 146, column: 2, scope: !6370)
!6401 = distinct !{!6401, !6389, !6402, !4855, !4856}
!6402 = !DILocation(line: 146, column: 2, scope: !6372)
!6403 = !DILocation(line: 147, column: 26, scope: !6355)
!6404 = !DILocation(line: 147, column: 32, scope: !6355)
!6405 = !DILocation(line: 147, column: 38, scope: !6355)
!6406 = !DILocation(line: 147, column: 2, scope: !6355)
!6407 = !DILocation(line: 148, column: 1, scope: !6355)
