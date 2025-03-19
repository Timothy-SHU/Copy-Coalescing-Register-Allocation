; ModuleID = 'sound/core/device.c'
source_filename = "sound/core/device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_device_new: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_device_new ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_device_disconnect: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_device_disconnect ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_device_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_device_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_device_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_device_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_device_get_state: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_device_get_state ; .previous"

%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.2, %struct.qspinlock }
%union.anon.2 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_device_ops = type { ptr, ptr, ptr }

@__UNIQUE_ID___addressable_snd_device_new207 = internal global ptr @snd_device_new, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_device_disconnect208 = internal global ptr @snd_device_disconnect, section ".discard.addressable", align 8, !dbg !1706
@__UNIQUE_ID___addressable_snd_device_free209 = internal global ptr @snd_device_free, section ".discard.addressable", align 8, !dbg !1708
@__UNIQUE_ID___addressable_snd_device_register210 = internal global ptr @snd_device_register, section ".discard.addressable", align 8, !dbg !1710
@__UNIQUE_ID___addressable_snd_device_get_state211 = internal global ptr @snd_device_get_state, section ".discard.addressable", align 8, !dbg !1712
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1714
@.str.1 = private unnamed_addr constant [27 x i8] c"device disconnect failure\0A\00", align 1, !dbg !1719
@.str.2 = private unnamed_addr constant [21 x i8] c"device free failure\0A\00", align 1, !dbg !1724
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_snd_device_new207, ptr @__UNIQUE_ID___addressable_snd_device_disconnect208, ptr @__UNIQUE_ID___addressable_snd_device_free209, ptr @__UNIQUE_ID___addressable_snd_device_register210, ptr @__UNIQUE_ID___addressable_snd_device_get_state211], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_device_new(ptr noundef %card, i32 noundef %type, ptr noundef %device_data, ptr noundef %ops) #0 align 16 !dbg !1735 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %device_data.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !1739, metadata !DIExpression()), !dbg !1754
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1740, metadata !DIExpression()), !dbg !1755
  store ptr %device_data, ptr %device_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_data.addr, metadata !1741, metadata !DIExpression()), !dbg !1756
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !1742, metadata !DIExpression()), !dbg !1757
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !1758
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1743, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1760
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1744, metadata !DIExpression()), !dbg !1761
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1745, metadata !DIExpression()), !dbg !1762
  %0 = load ptr, ptr %card.addr, align 8, !dbg !1762
  %tobool = icmp ne ptr %0, null, !dbg !1762
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !1762

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %device_data.addr, align 8, !dbg !1762
  %tobool1 = icmp ne ptr %1, null, !dbg !1762
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !1762

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %ops.addr, align 8, !dbg !1762
  %tobool2 = icmp ne ptr %2, null, !dbg !1762
  %lnot = xor i1 %tobool2, true, !dbg !1762
  br label %lor.end, !dbg !1762

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %3, true, !dbg !1762
  %lnot4 = xor i1 %lnot3, true, !dbg !1762
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1762
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1762
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1762
  %tobool5 = icmp ne i32 %4, 0, !dbg !1762
  %lnot6 = xor i1 %tobool5, true, !dbg !1762
  %lnot8 = xor i1 %lnot6, true, !dbg !1762
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1762
  %conv = sext i32 %lnot.ext9 to i64, !dbg !1762
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1762
  store i64 %expval, ptr %tmp, align 8, !dbg !1762
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1763
  %5 = load i64, ptr %tmp, align 8, !dbg !1762
  %tobool10 = icmp ne i64 %5, 0, !dbg !1763
  br i1 %tobool10, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %lor.end
  store i32 -6, ptr %retval, align 4, !dbg !1765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1765

if.end:                                           ; preds = %lor.end
  %call = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #15, !dbg !1766
  store ptr %call, ptr %dev, align 8, !dbg !1767
  %6 = load ptr, ptr %dev, align 8, !dbg !1768
  %tobool11 = icmp ne ptr %6, null, !dbg !1768
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1770

if.then12:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1771

if.end13:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev, align 8, !dbg !1772
  %list = getelementptr inbounds %struct.snd_device, ptr %7, i32 0, i32 0, !dbg !1773
  call void @INIT_LIST_HEAD(ptr noundef %list) #16, !dbg !1774
  %8 = load ptr, ptr %card.addr, align 8, !dbg !1775
  %9 = load ptr, ptr %dev, align 8, !dbg !1776
  %card14 = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 1, !dbg !1777
  store ptr %8, ptr %card14, align 8, !dbg !1778
  %10 = load i32, ptr %type.addr, align 4, !dbg !1779
  %11 = load ptr, ptr %dev, align 8, !dbg !1780
  %type15 = getelementptr inbounds %struct.snd_device, ptr %11, i32 0, i32 3, !dbg !1781
  store i32 %10, ptr %type15, align 4, !dbg !1782
  %12 = load ptr, ptr %dev, align 8, !dbg !1783
  %state = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 2, !dbg !1784
  store i32 0, ptr %state, align 8, !dbg !1785
  %13 = load ptr, ptr %device_data.addr, align 8, !dbg !1786
  %14 = load ptr, ptr %dev, align 8, !dbg !1787
  %device_data16 = getelementptr inbounds %struct.snd_device, ptr %14, i32 0, i32 4, !dbg !1788
  store ptr %13, ptr %device_data16, align 8, !dbg !1789
  %15 = load ptr, ptr %ops.addr, align 8, !dbg !1790
  %16 = load ptr, ptr %dev, align 8, !dbg !1791
  %ops17 = getelementptr inbounds %struct.snd_device, ptr %16, i32 0, i32 5, !dbg !1792
  store ptr %15, ptr %ops17, align 8, !dbg !1793
  %17 = load ptr, ptr %card.addr, align 8, !dbg !1794
  %devices = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 11, !dbg !1794
  %prev = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1, !dbg !1794
  %18 = load ptr, ptr %prev, align 8, !dbg !1794
  store ptr %18, ptr %p, align 8, !dbg !1794
  br label %for.cond, !dbg !1794

for.cond:                                         ; preds = %for.inc, %if.end13
  %19 = load ptr, ptr %p, align 8, !dbg !1795
  %20 = load ptr, ptr %card.addr, align 8, !dbg !1795
  %devices18 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 11, !dbg !1795
  %call19 = call i32 @list_is_head(ptr noundef %19, ptr noundef %devices18) #16, !dbg !1795
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1795
  %lnot21 = xor i1 %tobool20, true, !dbg !1795
  br i1 %lnot21, label %for.body, label %for.end, !dbg !1794

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #14, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !1748, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1752, metadata !DIExpression()), !dbg !1798
  %21 = load ptr, ptr %p, align 8, !dbg !1798
  store ptr %21, ptr %__mptr, align 8, !dbg !1798
  %22 = load ptr, ptr %__mptr, align 8, !dbg !1798
  %add.ptr = getelementptr i8, ptr %22, i64 0, !dbg !1798
  store ptr %add.ptr, ptr %tmp23, align 8, !dbg !1798
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1799
  %23 = load ptr, ptr %tmp23, align 8, !dbg !1798
  store ptr %23, ptr %pdev, align 8, !dbg !1797
  %24 = load ptr, ptr %pdev, align 8, !dbg !1800
  %type24 = getelementptr inbounds %struct.snd_device, ptr %24, i32 0, i32 3, !dbg !1802
  %25 = load i32, ptr %type24, align 4, !dbg !1802
  %26 = load i32, ptr %type.addr, align 4, !dbg !1803
  %cmp = icmp ule i32 %25, %26, !dbg !1804
  br i1 %cmp, label %if.then26, label %if.end27, !dbg !1805

if.then26:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1806

if.end27:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1807
  br label %cleanup, !dbg !1807

cleanup:                                          ; preds = %if.end27, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #14, !dbg !1807
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1808

for.inc:                                          ; preds = %cleanup.cont
  %27 = load ptr, ptr %p, align 8, !dbg !1795
  %prev28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1, !dbg !1795
  %28 = load ptr, ptr %prev28, align 8, !dbg !1795
  store ptr %28, ptr %p, align 8, !dbg !1795
  br label %for.cond, !dbg !1795, !llvm.loop !1809

for.end:                                          ; preds = %cleanup, %for.cond
  %29 = load ptr, ptr %dev, align 8, !dbg !1813
  %list29 = getelementptr inbounds %struct.snd_device, ptr %29, i32 0, i32 0, !dbg !1814
  %30 = load ptr, ptr %p, align 8, !dbg !1815
  call void @list_add(ptr noundef %list29, ptr noundef %30) #16, !dbg !1816
  store i32 0, ptr %retval, align 4, !dbg !1817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1817

cleanup30:                                        ; preds = %for.end, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1818
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !1818
  %31 = load i32, ptr %retval, align 4, !dbg !1818
  ret i32 %31, !dbg !1818

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !1819 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1823, metadata !DIExpression()), !dbg !1825
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1824, metadata !DIExpression()), !dbg !1826
  %0 = load i64, ptr %size.addr, align 8, !dbg !1827
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1828
  %or = or i32 %1, 256, !dbg !1829
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1830
  ret ptr %call, !dbg !1831
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !1832 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1837, metadata !DIExpression()), !dbg !1838
  br label %do.body, !dbg !1839

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1840

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1842

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1840

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1844
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1844
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1844
  store volatile ptr %0, ptr %next, align 8, !dbg !1844
  br label %do.end3, !dbg !1844

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1840

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1846

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1847

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1849

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1847

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1851
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1851
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1851
  store volatile ptr %2, ptr %prev, align 8, !dbg !1851
  br label %do.end9, !dbg !1851

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1847

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #5 align 16 !dbg !1854 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1860, metadata !DIExpression()), !dbg !1862
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1861, metadata !DIExpression()), !dbg !1863
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1864
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1865
  %cmp = icmp eq ptr %0, %1, !dbg !1866
  %conv = zext i1 %cmp to i32, !dbg !1866
  ret i32 %conv, !dbg !1867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !1868 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1872, metadata !DIExpression()), !dbg !1874
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1873, metadata !DIExpression()), !dbg !1875
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1876
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1877
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1878
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !1879
  %3 = load ptr, ptr %next, align 8, !dbg !1879
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !1880
  ret void, !dbg !1881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_device_disconnect(ptr noundef %card, ptr noundef %device_data) #0 align 16 !dbg !1882 {
entry:
  %card.addr = alloca ptr, align 8
  %device_data.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !1886, metadata !DIExpression()), !dbg !1892
  store ptr %device_data, ptr %device_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_data.addr, metadata !1887, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1888, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1889, metadata !DIExpression()), !dbg !1896
  %0 = load ptr, ptr %card.addr, align 8, !dbg !1896
  %tobool = icmp ne ptr %0, null, !dbg !1896
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !1896

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %device_data.addr, align 8, !dbg !1896
  %tobool1 = icmp ne ptr %1, null, !dbg !1896
  %lnot = xor i1 %tobool1, true, !dbg !1896
  br label %lor.end, !dbg !1896

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !1896
  %lnot3 = xor i1 %lnot2, true, !dbg !1896
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1896
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1896
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1896
  %tobool4 = icmp ne i32 %3, 0, !dbg !1896
  %lnot5 = xor i1 %tobool4, true, !dbg !1896
  %lnot7 = xor i1 %lnot5, true, !dbg !1896
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1896
  %conv = sext i32 %lnot.ext8 to i64, !dbg !1896
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1896
  store i64 %expval, ptr %tmp, align 8, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1897
  %4 = load i64, ptr %tmp, align 8, !dbg !1896
  %tobool9 = icmp ne i64 %4, 0, !dbg !1897
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1898

if.then:                                          ; preds = %lor.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1899

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %card.addr, align 8, !dbg !1900
  %6 = load ptr, ptr %device_data.addr, align 8, !dbg !1901
  %call = call ptr @look_for_dev(ptr noundef %5, ptr noundef %6) #16, !dbg !1902
  store ptr %call, ptr %dev, align 8, !dbg !1903
  %7 = load ptr, ptr %dev, align 8, !dbg !1904
  %tobool10 = icmp ne ptr %7, null, !dbg !1904
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !1906

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr %dev, align 8, !dbg !1907
  call void @__snd_device_disconnect(ptr noundef %8) #16, !dbg !1908
  br label %if.end12, !dbg !1908

if.else:                                          ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1909
  br label %cleanup, !dbg !1909

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !1909
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1909

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @look_for_dev(ptr noundef %card, ptr noundef %device_data) #0 align 16 !dbg !1910 {
entry:
  %retval = alloca ptr, align 8
  %card.addr = alloca ptr, align 8
  %device_data.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !1914, metadata !DIExpression()), !dbg !1923
  store ptr %device_data, ptr %device_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_data.addr, metadata !1915, metadata !DIExpression()), !dbg !1924
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1916, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1917, metadata !DIExpression()), !dbg !1927
  %0 = load ptr, ptr %card.addr, align 8, !dbg !1927
  %devices = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11, !dbg !1927
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !1927
  %1 = load ptr, ptr %next, align 8, !dbg !1927
  store ptr %1, ptr %__mptr, align 8, !dbg !1927
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1927
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !1927
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1927
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1928
  %3 = load ptr, ptr %tmp, align 8, !dbg !1927
  store ptr %3, ptr %dev, align 8, !dbg !1928
  br label %for.cond, !dbg !1928

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !1929
  %list = getelementptr inbounds %struct.snd_device, ptr %4, i32 0, i32 0, !dbg !1929
  %5 = load ptr, ptr %card.addr, align 8, !dbg !1929
  %devices1 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 11, !dbg !1929
  %cmp = icmp eq ptr %list, %devices1, !dbg !1929
  %lnot = xor i1 %cmp, true, !dbg !1929
  br i1 %lnot, label %for.body, label %for.end, !dbg !1928

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !1930
  %device_data2 = getelementptr inbounds %struct.snd_device, ptr %6, i32 0, i32 4, !dbg !1932
  %7 = load ptr, ptr %device_data2, align 8, !dbg !1932
  %8 = load ptr, ptr %device_data.addr, align 8, !dbg !1933
  %cmp3 = icmp eq ptr %7, %8, !dbg !1934
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1935

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %dev, align 8, !dbg !1936
  store ptr %9, ptr %retval, align 8, !dbg !1937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1937

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1933

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #14, !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !1920, metadata !DIExpression()), !dbg !1938
  %10 = load ptr, ptr %dev, align 8, !dbg !1938
  %list5 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 0, !dbg !1938
  %next6 = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !1938
  %11 = load ptr, ptr %next6, align 8, !dbg !1938
  store ptr %11, ptr %__mptr4, align 8, !dbg !1938
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !1938
  %add.ptr8 = getelementptr i8, ptr %12, i64 0, !dbg !1938
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !1938
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #14, !dbg !1929
  %13 = load ptr, ptr %tmp7, align 8, !dbg !1938
  store ptr %13, ptr %dev, align 8, !dbg !1929
  br label %for.cond, !dbg !1929, !llvm.loop !1939

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1941

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !1942
  %14 = load ptr, ptr %retval, align 8, !dbg !1942
  ret ptr %14, !dbg !1942
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__snd_device_disconnect(ptr noundef %dev) #0 align 16 !dbg !1943 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1949
  %state = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 2, !dbg !1951
  %1 = load i32, ptr %state, align 8, !dbg !1951
  %cmp = icmp eq i32 %1, 1, !dbg !1952
  br i1 %cmp, label %if.then, label %if.end7, !dbg !1953

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1954
  %ops = getelementptr inbounds %struct.snd_device, ptr %2, i32 0, i32 5, !dbg !1957
  %3 = load ptr, ptr %ops, align 8, !dbg !1957
  %dev_disconnect = getelementptr inbounds %struct.snd_device_ops, ptr %3, i32 0, i32 2, !dbg !1958
  %4 = load ptr, ptr %dev_disconnect, align 8, !dbg !1958
  %tobool = icmp ne ptr %4, null, !dbg !1954
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1959

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1960
  %ops1 = getelementptr inbounds %struct.snd_device, ptr %5, i32 0, i32 5, !dbg !1961
  %6 = load ptr, ptr %ops1, align 8, !dbg !1961
  %dev_disconnect2 = getelementptr inbounds %struct.snd_device_ops, ptr %6, i32 0, i32 2, !dbg !1962
  %7 = load ptr, ptr %dev_disconnect2, align 8, !dbg !1962
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !1963
  %call = call i32 %7(ptr noundef %8) #16, !dbg !1960
  %tobool3 = icmp ne i32 %call, 0, !dbg !1960
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1964

if.then4:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !1965

do.body:                                          ; preds = %if.then4
  br label %do.end, !dbg !1967

do.end:                                           ; preds = %do.body
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !1965
  %card = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 1, !dbg !1965
  %10 = load ptr, ptr %card, align 8, !dbg !1965
  %dev5 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 30, !dbg !1965
  %11 = load ptr, ptr %dev5, align 8, !dbg !1965
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef @.str.1) #17, !dbg !1965
  br label %if.end, !dbg !1969

if.end:                                           ; preds = %do.end, %land.lhs.true, %if.then
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1970
  %state6 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 2, !dbg !1971
  store i32 2, ptr %state6, align 8, !dbg !1972
  br label %if.end7, !dbg !1973

if.end7:                                          ; preds = %if.end, %entry
  ret void, !dbg !1974
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_device_free(ptr noundef %card, ptr noundef %device_data) #0 align 16 !dbg !1975 {
entry:
  %card.addr = alloca ptr, align 8
  %device_data.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !1977, metadata !DIExpression()), !dbg !1983
  store ptr %device_data, ptr %device_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_data.addr, metadata !1978, metadata !DIExpression()), !dbg !1984
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1979, metadata !DIExpression()), !dbg !1986
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1980, metadata !DIExpression()), !dbg !1987
  %0 = load ptr, ptr %card.addr, align 8, !dbg !1987
  %tobool = icmp ne ptr %0, null, !dbg !1987
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !1987

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %device_data.addr, align 8, !dbg !1987
  %tobool1 = icmp ne ptr %1, null, !dbg !1987
  %lnot = xor i1 %tobool1, true, !dbg !1987
  br label %lor.end, !dbg !1987

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !1987
  %lnot3 = xor i1 %lnot2, true, !dbg !1987
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1987
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1987
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1987
  %tobool4 = icmp ne i32 %3, 0, !dbg !1987
  %lnot5 = xor i1 %tobool4, true, !dbg !1987
  %lnot7 = xor i1 %lnot5, true, !dbg !1987
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1987
  %conv = sext i32 %lnot.ext8 to i64, !dbg !1987
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1987
  store i64 %expval, ptr %tmp, align 8, !dbg !1987
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1988
  %4 = load i64, ptr %tmp, align 8, !dbg !1987
  %tobool9 = icmp ne i64 %4, 0, !dbg !1988
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1989

if.then:                                          ; preds = %lor.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1990

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %card.addr, align 8, !dbg !1991
  %6 = load ptr, ptr %device_data.addr, align 8, !dbg !1992
  %call = call ptr @look_for_dev(ptr noundef %5, ptr noundef %6) #16, !dbg !1993
  store ptr %call, ptr %dev, align 8, !dbg !1994
  %7 = load ptr, ptr %dev, align 8, !dbg !1995
  %tobool10 = icmp ne ptr %7, null, !dbg !1995
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !1997

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr %dev, align 8, !dbg !1998
  call void @__snd_device_free(ptr noundef %8) #16, !dbg !1999
  br label %if.end12, !dbg !1999

if.else:                                          ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2000
  br label %cleanup, !dbg !2000

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2000
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2000

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__snd_device_free(ptr noundef %dev) #0 align 16 !dbg !2001 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2003, metadata !DIExpression()), !dbg !2004
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2005
  %list = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 0, !dbg !2006
  call void @list_del(ptr noundef %list) #16, !dbg !2007
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2008
  call void @__snd_device_disconnect(ptr noundef %1) #16, !dbg !2009
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2010
  %ops = getelementptr inbounds %struct.snd_device, ptr %2, i32 0, i32 5, !dbg !2012
  %3 = load ptr, ptr %ops, align 8, !dbg !2012
  %dev_free = getelementptr inbounds %struct.snd_device_ops, ptr %3, i32 0, i32 0, !dbg !2013
  %4 = load ptr, ptr %dev_free, align 8, !dbg !2013
  %tobool = icmp ne ptr %4, null, !dbg !2010
  br i1 %tobool, label %if.then, label %if.end6, !dbg !2014

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2015
  %ops1 = getelementptr inbounds %struct.snd_device, ptr %5, i32 0, i32 5, !dbg !2018
  %6 = load ptr, ptr %ops1, align 8, !dbg !2018
  %dev_free2 = getelementptr inbounds %struct.snd_device_ops, ptr %6, i32 0, i32 0, !dbg !2019
  %7 = load ptr, ptr %dev_free2, align 8, !dbg !2019
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2020
  %call = call i32 %7(ptr noundef %8) #16, !dbg !2015
  %tobool3 = icmp ne i32 %call, 0, !dbg !2015
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2021

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !2022

do.body:                                          ; preds = %if.then4
  br label %do.end, !dbg !2024

do.end:                                           ; preds = %do.body
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2022
  %card = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 1, !dbg !2022
  %10 = load ptr, ptr %card, align 8, !dbg !2022
  %dev5 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 30, !dbg !2022
  %11 = load ptr, ptr %dev5, align 8, !dbg !2022
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef @.str.2) #17, !dbg !2022
  br label %if.end, !dbg !2026

if.end:                                           ; preds = %do.end, %if.then
  br label %if.end6, !dbg !2027

if.end6:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2028
  call void @kfree(ptr noundef %12) #16, !dbg !2029
  ret void, !dbg !2030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_device_register(ptr noundef %card, ptr noundef %device_data) #0 align 16 !dbg !2031 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %device_data.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2035, metadata !DIExpression()), !dbg !2041
  store ptr %device_data, ptr %device_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_data.addr, metadata !2036, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2037, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2038, metadata !DIExpression()), !dbg !2045
  %0 = load ptr, ptr %card.addr, align 8, !dbg !2045
  %tobool = icmp ne ptr %0, null, !dbg !2045
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2045

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %device_data.addr, align 8, !dbg !2045
  %tobool1 = icmp ne ptr %1, null, !dbg !2045
  %lnot = xor i1 %tobool1, true, !dbg !2045
  br label %lor.end, !dbg !2045

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !2045
  %lnot3 = xor i1 %lnot2, true, !dbg !2045
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2045
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2045
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2045
  %tobool4 = icmp ne i32 %3, 0, !dbg !2045
  %lnot5 = xor i1 %tobool4, true, !dbg !2045
  %lnot7 = xor i1 %lnot5, true, !dbg !2045
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2045
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2045
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2045
  store i64 %expval, ptr %tmp, align 8, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2046
  %4 = load i64, ptr %tmp, align 8, !dbg !2045
  %tobool9 = icmp ne i64 %4, 0, !dbg !2046
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2047

if.then:                                          ; preds = %lor.end
  store i32 -6, ptr %retval, align 4, !dbg !2048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2048

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %card.addr, align 8, !dbg !2049
  %6 = load ptr, ptr %device_data.addr, align 8, !dbg !2050
  %call = call ptr @look_for_dev(ptr noundef %5, ptr noundef %6) #16, !dbg !2051
  store ptr %call, ptr %dev, align 8, !dbg !2052
  %7 = load ptr, ptr %dev, align 8, !dbg !2053
  %tobool10 = icmp ne ptr %7, null, !dbg !2053
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2055

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr %dev, align 8, !dbg !2056
  %call12 = call i32 @__snd_device_register(ptr noundef %8) #16, !dbg !2057
  store i32 %call12, ptr %retval, align 4, !dbg !2058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2058

if.end13:                                         ; preds = %if.end
  br label %do.body, !dbg !2059

do.body:                                          ; preds = %if.end13
  br label %do.cond, !dbg !2060

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2060

do.end:                                           ; preds = %do.cond
  store i32 -6, ptr %retval, align 4, !dbg !2062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2062

cleanup:                                          ; preds = %do.end, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2063
  %9 = load i32, ptr %retval, align 4, !dbg !2063
  ret i32 %9, !dbg !2063
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__snd_device_register(ptr noundef %dev) #0 align 16 !dbg !2064 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2066, metadata !DIExpression()), !dbg !2072
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2073
  %state = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 2, !dbg !2074
  %1 = load i32, ptr %state, align 8, !dbg !2074
  %cmp = icmp eq i32 %1, 0, !dbg !2075
  br i1 %cmp, label %if.then, label %if.end8, !dbg !2076

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2077
  %ops = getelementptr inbounds %struct.snd_device, ptr %2, i32 0, i32 5, !dbg !2078
  %3 = load ptr, ptr %ops, align 8, !dbg !2078
  %dev_register = getelementptr inbounds %struct.snd_device_ops, ptr %3, i32 0, i32 1, !dbg !2079
  %4 = load ptr, ptr %dev_register, align 8, !dbg !2079
  %tobool = icmp ne ptr %4, null, !dbg !2077
  br i1 %tobool, label %if.then1, label %if.end6, !dbg !2080

if.then1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2081
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2067, metadata !DIExpression()), !dbg !2082
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2083
  %ops2 = getelementptr inbounds %struct.snd_device, ptr %5, i32 0, i32 5, !dbg !2084
  %6 = load ptr, ptr %ops2, align 8, !dbg !2084
  %dev_register3 = getelementptr inbounds %struct.snd_device_ops, ptr %6, i32 0, i32 1, !dbg !2085
  %7 = load ptr, ptr %dev_register3, align 8, !dbg !2085
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2086
  %call = call i32 %7(ptr noundef %8) #16, !dbg !2083
  store i32 %call, ptr %err, align 4, !dbg !2082
  %9 = load i32, ptr %err, align 4, !dbg !2087
  %cmp4 = icmp slt i32 %9, 0, !dbg !2089
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2090

if.then5:                                         ; preds = %if.then1
  %10 = load i32, ptr %err, align 4, !dbg !2091
  store i32 %10, ptr %retval, align 4, !dbg !2092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2092

if.end:                                           ; preds = %if.then1
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2093
  br label %cleanup, !dbg !2093

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2093
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !2094

if.end6:                                          ; preds = %cleanup.cont, %if.then
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2095
  %state7 = getelementptr inbounds %struct.snd_device, ptr %11, i32 0, i32 2, !dbg !2096
  store i32 1, ptr %state7, align 8, !dbg !2097
  br label %if.end8, !dbg !2098

if.end8:                                          ; preds = %if.end6, %entry
  store i32 0, ptr %retval, align 4, !dbg !2099
  br label %return, !dbg !2099

return:                                           ; preds = %if.end8, %cleanup
  %12 = load i32, ptr %retval, align 4, !dbg !2100
  ret i32 %12, !dbg !2100

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_device_register_all(ptr noundef %card) #0 align 16 !dbg !2101 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2105, metadata !DIExpression()), !dbg !2117
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2106, metadata !DIExpression()), !dbg !2119
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2107, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2108, metadata !DIExpression()), !dbg !2122
  %0 = load ptr, ptr %card.addr, align 8, !dbg !2122
  %tobool = icmp ne ptr %0, null, !dbg !2122
  %lnot = xor i1 %tobool, true, !dbg !2122
  %lnot1 = xor i1 %lnot, true, !dbg !2122
  %lnot2 = xor i1 %lnot1, true, !dbg !2122
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2122
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2122
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2122
  %tobool3 = icmp ne i32 %1, 0, !dbg !2122
  %lnot4 = xor i1 %tobool3, true, !dbg !2122
  %lnot6 = xor i1 %lnot4, true, !dbg !2122
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2122
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2122
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2122
  store i64 %expval, ptr %tmp, align 8, !dbg !2122
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2123
  %2 = load i64, ptr %tmp, align 8, !dbg !2122
  %tobool8 = icmp ne i64 %2, 0, !dbg !2123
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2124

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !2125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2125

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2126
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2111, metadata !DIExpression()), !dbg !2126
  %3 = load ptr, ptr %card.addr, align 8, !dbg !2126
  %devices = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 11, !dbg !2126
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !2126
  %4 = load ptr, ptr %next, align 8, !dbg !2126
  store ptr %4, ptr %__mptr, align 8, !dbg !2126
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2126
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !2126
  store ptr %add.ptr, ptr %tmp9, align 8, !dbg !2126
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2127
  %6 = load ptr, ptr %tmp9, align 8, !dbg !2126
  store ptr %6, ptr %dev, align 8, !dbg !2127
  br label %for.cond, !dbg !2127

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %dev, align 8, !dbg !2128
  %list = getelementptr inbounds %struct.snd_device, ptr %7, i32 0, i32 0, !dbg !2128
  %8 = load ptr, ptr %card.addr, align 8, !dbg !2128
  %devices10 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 11, !dbg !2128
  %cmp = icmp eq ptr %list, %devices10, !dbg !2128
  %lnot12 = xor i1 %cmp, true, !dbg !2128
  br i1 %lnot12, label %for.body, label %for.end, !dbg !2127

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %dev, align 8, !dbg !2129
  %call = call i32 @__snd_device_register(ptr noundef %9) #16, !dbg !2131
  store i32 %call, ptr %err, align 4, !dbg !2132
  %10 = load i32, ptr %err, align 4, !dbg !2133
  %cmp14 = icmp slt i32 %10, 0, !dbg !2135
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2136

if.then16:                                        ; preds = %for.body
  %11 = load i32, ptr %err, align 4, !dbg !2137
  store i32 %11, ptr %retval, align 4, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !2139

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #14, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !2114, metadata !DIExpression()), !dbg !2140
  %12 = load ptr, ptr %dev, align 8, !dbg !2140
  %list19 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 0, !dbg !2140
  %next20 = getelementptr inbounds %struct.list_head, ptr %list19, i32 0, i32 0, !dbg !2140
  %13 = load ptr, ptr %next20, align 8, !dbg !2140
  store ptr %13, ptr %__mptr18, align 8, !dbg !2140
  %14 = load ptr, ptr %__mptr18, align 8, !dbg !2140
  %add.ptr22 = getelementptr i8, ptr %14, i64 0, !dbg !2140
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !2140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #14, !dbg !2128
  %15 = load ptr, ptr %tmp21, align 8, !dbg !2140
  store ptr %15, ptr %dev, align 8, !dbg !2128
  br label %for.cond, !dbg !2128, !llvm.loop !2141

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2143

cleanup:                                          ; preds = %for.end, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2144
  %16 = load i32, ptr %retval, align 4, !dbg !2144
  ret i32 %16, !dbg !2144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_device_disconnect_all(ptr noundef %card) #0 align 16 !dbg !2145 {
entry:
  %card.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2147, metadata !DIExpression()), !dbg !2158
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2159
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2148, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2149, metadata !DIExpression()), !dbg !2161
  %0 = load ptr, ptr %card.addr, align 8, !dbg !2161
  %tobool = icmp ne ptr %0, null, !dbg !2161
  %lnot = xor i1 %tobool, true, !dbg !2161
  %lnot1 = xor i1 %lnot, true, !dbg !2161
  %lnot2 = xor i1 %lnot1, true, !dbg !2161
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2161
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2161
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2161
  %tobool3 = icmp ne i32 %1, 0, !dbg !2161
  %lnot4 = xor i1 %tobool3, true, !dbg !2161
  %lnot6 = xor i1 %lnot4, true, !dbg !2161
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2161
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2161
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2161
  store i64 %expval, ptr %tmp, align 8, !dbg !2161
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2162
  %2 = load i64, ptr %tmp, align 8, !dbg !2161
  %tobool8 = icmp ne i64 %2, 0, !dbg !2162
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2163

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2164

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2152, metadata !DIExpression()), !dbg !2165
  %3 = load ptr, ptr %card.addr, align 8, !dbg !2165
  %devices = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 11, !dbg !2165
  %prev = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1, !dbg !2165
  %4 = load ptr, ptr %prev, align 8, !dbg !2165
  store ptr %4, ptr %__mptr, align 8, !dbg !2165
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2165
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !2165
  store ptr %add.ptr, ptr %tmp9, align 8, !dbg !2165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2166
  %6 = load ptr, ptr %tmp9, align 8, !dbg !2165
  store ptr %6, ptr %dev, align 8, !dbg !2166
  br label %for.cond, !dbg !2166

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %dev, align 8, !dbg !2167
  %list = getelementptr inbounds %struct.snd_device, ptr %7, i32 0, i32 0, !dbg !2167
  %8 = load ptr, ptr %card.addr, align 8, !dbg !2167
  %devices10 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 11, !dbg !2167
  %cmp = icmp eq ptr %list, %devices10, !dbg !2167
  %lnot12 = xor i1 %cmp, true, !dbg !2167
  br i1 %lnot12, label %for.body, label %for.end, !dbg !2166

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %dev, align 8, !dbg !2168
  call void @__snd_device_disconnect(ptr noundef %9) #16, !dbg !2169
  br label %for.inc, !dbg !2169

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #14, !dbg !2170
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !2155, metadata !DIExpression()), !dbg !2170
  %10 = load ptr, ptr %dev, align 8, !dbg !2170
  %list15 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 0, !dbg !2170
  %prev16 = getelementptr inbounds %struct.list_head, ptr %list15, i32 0, i32 1, !dbg !2170
  %11 = load ptr, ptr %prev16, align 8, !dbg !2170
  store ptr %11, ptr %__mptr14, align 8, !dbg !2170
  %12 = load ptr, ptr %__mptr14, align 8, !dbg !2170
  %add.ptr18 = getelementptr i8, ptr %12, i64 0, !dbg !2170
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #14, !dbg !2167
  %13 = load ptr, ptr %tmp17, align 8, !dbg !2170
  store ptr %13, ptr %dev, align 8, !dbg !2167
  br label %for.cond, !dbg !2167, !llvm.loop !2171

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2173
  br label %cleanup, !dbg !2173

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2173
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2173

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_device_free_all(ptr noundef %card) #0 align 16 !dbg !2174 {
entry:
  %card.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %__mptr36 = alloca ptr, align 8
  %tmp39 = alloca ptr, align 8
  %__mptr50 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2176, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2177, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #14, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2178, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2179, metadata !DIExpression()), !dbg !2202
  %0 = load ptr, ptr %card.addr, align 8, !dbg !2202
  %tobool = icmp ne ptr %0, null, !dbg !2202
  %lnot = xor i1 %tobool, true, !dbg !2202
  %lnot1 = xor i1 %lnot, true, !dbg !2202
  %lnot2 = xor i1 %lnot1, true, !dbg !2202
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2202
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2202
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2202
  %tobool3 = icmp ne i32 %1, 0, !dbg !2202
  %lnot4 = xor i1 %tobool3, true, !dbg !2202
  %lnot6 = xor i1 %lnot4, true, !dbg !2202
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2202
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2202
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2202
  store i64 %expval, ptr %tmp, align 8, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2203
  %2 = load i64, ptr %tmp, align 8, !dbg !2202
  %tobool8 = icmp ne i64 %2, 0, !dbg !2203
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2204

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2205

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2182, metadata !DIExpression()), !dbg !2206
  %3 = load ptr, ptr %card.addr, align 8, !dbg !2206
  %devices = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 11, !dbg !2206
  %prev = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1, !dbg !2206
  %4 = load ptr, ptr %prev, align 8, !dbg !2206
  store ptr %4, ptr %__mptr, align 8, !dbg !2206
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2206
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !2206
  store ptr %add.ptr, ptr %tmp9, align 8, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2207
  %6 = load ptr, ptr %tmp9, align 8, !dbg !2206
  store ptr %6, ptr %dev, align 8, !dbg !2207
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #14, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !2185, metadata !DIExpression()), !dbg !2208
  %7 = load ptr, ptr %dev, align 8, !dbg !2208
  %list = getelementptr inbounds %struct.snd_device, ptr %7, i32 0, i32 0, !dbg !2208
  %prev11 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1, !dbg !2208
  %8 = load ptr, ptr %prev11, align 8, !dbg !2208
  store ptr %8, ptr %__mptr10, align 8, !dbg !2208
  %9 = load ptr, ptr %__mptr10, align 8, !dbg !2208
  %add.ptr13 = getelementptr i8, ptr %9, i64 0, !dbg !2208
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #14, !dbg !2207
  %10 = load ptr, ptr %tmp12, align 8, !dbg !2208
  store ptr %10, ptr %next, align 8, !dbg !2207
  br label %for.cond, !dbg !2207

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load ptr, ptr %dev, align 8, !dbg !2209
  %list14 = getelementptr inbounds %struct.snd_device, ptr %11, i32 0, i32 0, !dbg !2209
  %12 = load ptr, ptr %card.addr, align 8, !dbg !2209
  %devices15 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 11, !dbg !2209
  %cmp = icmp eq ptr %list14, %devices15, !dbg !2209
  %lnot17 = xor i1 %cmp, true, !dbg !2209
  br i1 %lnot17, label %for.body, label %for.end, !dbg !2207

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %dev, align 8, !dbg !2210
  %type = getelementptr inbounds %struct.snd_device, ptr %13, i32 0, i32 3, !dbg !2213
  %14 = load i32, ptr %type, align 4, !dbg !2213
  %cmp19 = icmp eq i32 %14, 11, !dbg !2214
  br i1 %cmp19, label %if.then24, label %lor.lhs.false, !dbg !2215

lor.lhs.false:                                    ; preds = %for.body
  %15 = load ptr, ptr %dev, align 8, !dbg !2216
  %type21 = getelementptr inbounds %struct.snd_device, ptr %15, i32 0, i32 3, !dbg !2217
  %16 = load i32, ptr %type21, align 4, !dbg !2217
  %cmp22 = icmp eq i32 %16, 0, !dbg !2218
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !2219

if.then24:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2220

if.end25:                                         ; preds = %lor.lhs.false
  %17 = load ptr, ptr %dev, align 8, !dbg !2221
  call void @__snd_device_free(ptr noundef %17) #16, !dbg !2222
  br label %for.inc, !dbg !2223

for.inc:                                          ; preds = %if.end25, %if.then24
  %18 = load ptr, ptr %next, align 8, !dbg !2209
  store ptr %18, ptr %dev, align 8, !dbg !2209
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #14, !dbg !2224
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !2187, metadata !DIExpression()), !dbg !2224
  %19 = load ptr, ptr %next, align 8, !dbg !2224
  %list27 = getelementptr inbounds %struct.snd_device, ptr %19, i32 0, i32 0, !dbg !2224
  %prev28 = getelementptr inbounds %struct.list_head, ptr %list27, i32 0, i32 1, !dbg !2224
  %20 = load ptr, ptr %prev28, align 8, !dbg !2224
  store ptr %20, ptr %__mptr26, align 8, !dbg !2224
  %21 = load ptr, ptr %__mptr26, align 8, !dbg !2224
  %add.ptr30 = getelementptr i8, ptr %21, i64 0, !dbg !2224
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #14, !dbg !2209
  %22 = load ptr, ptr %tmp29, align 8, !dbg !2224
  store ptr %22, ptr %next, align 8, !dbg !2209
  br label %for.cond, !dbg !2209, !llvm.loop !2225

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #14, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !2190, metadata !DIExpression()), !dbg !2227
  %23 = load ptr, ptr %card.addr, align 8, !dbg !2227
  %devices32 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 11, !dbg !2227
  %prev33 = getelementptr inbounds %struct.list_head, ptr %devices32, i32 0, i32 1, !dbg !2227
  %24 = load ptr, ptr %prev33, align 8, !dbg !2227
  store ptr %24, ptr %__mptr31, align 8, !dbg !2227
  %25 = load ptr, ptr %__mptr31, align 8, !dbg !2227
  %add.ptr35 = getelementptr i8, ptr %25, i64 0, !dbg !2227
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #14, !dbg !2228
  %26 = load ptr, ptr %tmp34, align 8, !dbg !2227
  store ptr %26, ptr %dev, align 8, !dbg !2228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr36) #14, !dbg !2229
  call void @llvm.dbg.declare(metadata ptr %__mptr36, metadata !2193, metadata !DIExpression()), !dbg !2229
  %27 = load ptr, ptr %dev, align 8, !dbg !2229
  %list37 = getelementptr inbounds %struct.snd_device, ptr %27, i32 0, i32 0, !dbg !2229
  %prev38 = getelementptr inbounds %struct.list_head, ptr %list37, i32 0, i32 1, !dbg !2229
  %28 = load ptr, ptr %prev38, align 8, !dbg !2229
  store ptr %28, ptr %__mptr36, align 8, !dbg !2229
  %29 = load ptr, ptr %__mptr36, align 8, !dbg !2229
  %add.ptr40 = getelementptr i8, ptr %29, i64 0, !dbg !2229
  store ptr %add.ptr40, ptr %tmp39, align 8, !dbg !2229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr36) #14, !dbg !2228
  %30 = load ptr, ptr %tmp39, align 8, !dbg !2229
  store ptr %30, ptr %next, align 8, !dbg !2228
  br label %for.cond41, !dbg !2228

for.cond41:                                       ; preds = %for.inc49, %for.end
  %31 = load ptr, ptr %dev, align 8, !dbg !2230
  %list42 = getelementptr inbounds %struct.snd_device, ptr %31, i32 0, i32 0, !dbg !2230
  %32 = load ptr, ptr %card.addr, align 8, !dbg !2230
  %devices43 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 11, !dbg !2230
  %cmp44 = icmp eq ptr %list42, %devices43, !dbg !2230
  %lnot46 = xor i1 %cmp44, true, !dbg !2230
  br i1 %lnot46, label %for.body48, label %for.end55, !dbg !2228

for.body48:                                       ; preds = %for.cond41
  %33 = load ptr, ptr %dev, align 8, !dbg !2231
  call void @__snd_device_free(ptr noundef %33) #16, !dbg !2232
  br label %for.inc49, !dbg !2232

for.inc49:                                        ; preds = %for.body48
  %34 = load ptr, ptr %next, align 8, !dbg !2230
  store ptr %34, ptr %dev, align 8, !dbg !2230
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr50) #14, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %__mptr50, metadata !2195, metadata !DIExpression()), !dbg !2233
  %35 = load ptr, ptr %next, align 8, !dbg !2233
  %list51 = getelementptr inbounds %struct.snd_device, ptr %35, i32 0, i32 0, !dbg !2233
  %prev52 = getelementptr inbounds %struct.list_head, ptr %list51, i32 0, i32 1, !dbg !2233
  %36 = load ptr, ptr %prev52, align 8, !dbg !2233
  store ptr %36, ptr %__mptr50, align 8, !dbg !2233
  %37 = load ptr, ptr %__mptr50, align 8, !dbg !2233
  %add.ptr54 = getelementptr i8, ptr %37, i64 0, !dbg !2233
  store ptr %add.ptr54, ptr %tmp53, align 8, !dbg !2233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr50) #14, !dbg !2230
  %38 = load ptr, ptr %tmp53, align 8, !dbg !2233
  store ptr %38, ptr %next, align 8, !dbg !2230
  br label %for.cond41, !dbg !2230, !llvm.loop !2234

for.end55:                                        ; preds = %for.cond41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2236
  br label %cleanup, !dbg !2236

cleanup:                                          ; preds = %for.end55, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #14, !dbg !2236
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2236
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2236

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_device_get_state(ptr noundef %card, ptr noundef %device_data) #0 align 16 !dbg !2237 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %device_data.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2239, metadata !DIExpression()), !dbg !2242
  store ptr %device_data, ptr %device_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_data.addr, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2244
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2241, metadata !DIExpression()), !dbg !2245
  %0 = load ptr, ptr %card.addr, align 8, !dbg !2246
  %1 = load ptr, ptr %device_data.addr, align 8, !dbg !2247
  %call = call ptr @look_for_dev(ptr noundef %0, ptr noundef %1) #16, !dbg !2248
  store ptr %call, ptr %dev, align 8, !dbg !2249
  %2 = load ptr, ptr %dev, align 8, !dbg !2250
  %tobool = icmp ne ptr %2, null, !dbg !2250
  br i1 %tobool, label %if.then, label %if.end, !dbg !2252

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !2253
  %state = getelementptr inbounds %struct.snd_device, ptr %3, i32 0, i32 2, !dbg !2254
  %4 = load i32, ptr %state, align 8, !dbg !2254
  store i32 %4, ptr %retval, align 4, !dbg !2255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2255

if.end:                                           ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2256

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2257
  %5 = load i32, ptr %retval, align 4, !dbg !2257
  ret i32 %5, !dbg !2257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2258 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2260, metadata !DIExpression()), !dbg !2265
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2261, metadata !DIExpression()), !dbg !2266
  %0 = load i64, ptr %size.addr, align 8, !dbg !2267
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2268
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2269

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2270
  %tobool = icmp ne i64 %2, 0, !dbg !2270
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2271

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2262, metadata !DIExpression()), !dbg !2273
  %3 = load i64, ptr %size.addr, align 8, !dbg !2274
  %cmp = icmp ugt i64 %3, 8192, !dbg !2276
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2277

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2278
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2279
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2280
  store ptr %call, ptr %retval, align 8, !dbg !2281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2281

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2282
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2282
  store i32 %call2, ptr %index, align 4, !dbg !2283
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2284
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2285
  %9 = ptrtoint ptr %8 to i64, !dbg !2285
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2286
  %idxprom = zext i32 %call3 to i64, !dbg !2287
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2287
  %10 = load i32, ptr %index, align 4, !dbg !2288
  %idxprom4 = zext i32 %10 to i64, !dbg !2287
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2287
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2287
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2289
  %13 = load i64, ptr %size.addr, align 8, !dbg !2290
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2291
  store ptr %call6, ptr %retval, align 8, !dbg !2292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2292

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2293
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2294
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2295
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2296
  store ptr %call8, ptr %retval, align 8, !dbg !2297
  br label %return, !dbg !2297

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2298
  ret ptr %16, !dbg !2298
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2299 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2300 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2304, metadata !DIExpression()), !dbg !2306
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2305, metadata !DIExpression()), !dbg !2307
  %0 = load i64, ptr %size.addr, align 8, !dbg !2308
  %tobool = icmp ne i64 %0, 0, !dbg !2308
  br i1 %tobool, label %if.end, label %if.then, !dbg !2310

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2312
  %cmp = icmp ule i64 %1, 8, !dbg !2314
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2315

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2317
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2319
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2320

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2321
  %cmp4 = icmp ule i64 %3, 96, !dbg !2322
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2323

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2324
  br label %return, !dbg !2324

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2325
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2327
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2328

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2329
  %cmp9 = icmp ule i64 %5, 192, !dbg !2330
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2331

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2332
  br label %return, !dbg !2332

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2333
  %cmp12 = icmp ule i64 %6, 8, !dbg !2335
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2336

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2337
  br label %return, !dbg !2337

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2338
  %cmp15 = icmp ule i64 %7, 16, !dbg !2340
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2341

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2342
  br label %return, !dbg !2342

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2343
  %cmp18 = icmp ule i64 %8, 32, !dbg !2345
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2346

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2347
  br label %return, !dbg !2347

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2348
  %cmp21 = icmp ule i64 %9, 64, !dbg !2350
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2351

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2352
  br label %return, !dbg !2352

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2353
  %cmp24 = icmp ule i64 %10, 128, !dbg !2355
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2356

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2357
  br label %return, !dbg !2357

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2358
  %cmp27 = icmp ule i64 %11, 256, !dbg !2360
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2361

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2362
  br label %return, !dbg !2362

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2363
  %cmp30 = icmp ule i64 %12, 512, !dbg !2365
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2366

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2367
  br label %return, !dbg !2367

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2368
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2370
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2371

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2372
  br label %return, !dbg !2372

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2373
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2375
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2376

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2377
  br label %return, !dbg !2377

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2378
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2380
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2381

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2382
  br label %return, !dbg !2382

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2383
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2385
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2386

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2387
  br label %return, !dbg !2387

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2388
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2390
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2391

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2392
  br label %return, !dbg !2392

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2393
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2395
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2396

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2397
  br label %return, !dbg !2397

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2398
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2400
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2401

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2402
  br label %return, !dbg !2402

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2403
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2405
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2406

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2407
  br label %return, !dbg !2407

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2408
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2410
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2411

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2412
  br label %return, !dbg !2412

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2413
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2415
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2416

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2417
  br label %return, !dbg !2417

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2418
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2420
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2421

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2422
  br label %return, !dbg !2422

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2423
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2425
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2426

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2427
  br label %return, !dbg !2427

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2428, !range !2430, !noundef !386
  %tobool69 = trunc i8 %25 to i1, !dbg !2428
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2431

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2432

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !2433, !srcloc !2436
  unreachable, !dbg !2433

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2437

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2438

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2439

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2441

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2439

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !2443, !srcloc !2445
  br label %do.end75, !dbg !2443

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2439

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2446
  br label %return, !dbg !2446

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2447
  ret i32 %26, !dbg !2447
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2448 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2454 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2458, metadata !DIExpression()), !dbg !2460
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2459, metadata !DIExpression()), !dbg !2461
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2462
  %and = and i32 %0, 17, !dbg !2462
  %cmp = icmp eq i32 %and, 0, !dbg !2462
  %lnot = xor i1 %cmp, true, !dbg !2462
  %lnot1 = xor i1 %lnot, true, !dbg !2462
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2462
  %conv = sext i32 %lnot.ext to i64, !dbg !2462
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2462
  %tobool = icmp ne i64 %expval, 0, !dbg !2462
  br i1 %tobool, label %if.then, label %if.end, !dbg !2464

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2465
  br label %return, !dbg !2465

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2466
  %and2 = and i32 %1, 1, !dbg !2468
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2468
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2469

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2471
  br label %return, !dbg !2471

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2473
  ret i32 %2, !dbg !2473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2474 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2475 dso_local void @__compiletime_assert_117() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2476 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2480, metadata !DIExpression()), !dbg !2483
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2481, metadata !DIExpression()), !dbg !2484
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2482, metadata !DIExpression()), !dbg !2485
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2486
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2488
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2489
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !2490
  br i1 %call, label %if.end, label %if.then, !dbg !2491

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2492

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2493
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2494
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2495
  store ptr %3, ptr %prev1, align 8, !dbg !2496
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2497
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2498
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2499
  store ptr %5, ptr %next2, align 8, !dbg !2500
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2501
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2502
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2503
  store ptr %7, ptr %prev3, align 8, !dbg !2504
  br label %do.body, !dbg !2505

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2506

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2508

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2506

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2510
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2510
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2510
  store volatile ptr %9, ptr %next6, align 8, !dbg !2510
  br label %do.end7, !dbg !2510

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2506

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2513 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2517, metadata !DIExpression()), !dbg !2520
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2518, metadata !DIExpression()), !dbg !2521
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2519, metadata !DIExpression()), !dbg !2522
  ret i1 true, !dbg !2523
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2524 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !2528 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2530, metadata !DIExpression()), !dbg !2531
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2532
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !2533
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2534
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2535
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2536
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2537
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2538
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2539
  ret void, !dbg !2540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2541 dso_local void @kfree(ptr noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !2544 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2548
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !2550
  br i1 %call, label %if.end, label %if.then, !dbg !2551

if.then:                                          ; preds = %entry
  br label %return, !dbg !2552

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2553
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2554
  %2 = load ptr, ptr %prev, align 8, !dbg !2554
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2555
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2556
  %4 = load ptr, ptr %next, align 8, !dbg !2556
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !2557
  br label %return, !dbg !2558

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !2559 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2563, metadata !DIExpression()), !dbg !2564
  ret i1 true, !dbg !2565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2566 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2568, metadata !DIExpression()), !dbg !2570
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2569, metadata !DIExpression()), !dbg !2571
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2572
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2573
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2574
  store ptr %0, ptr %prev1, align 8, !dbg !2575
  br label %do.body, !dbg !2576

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2577

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2579

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2577

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2581
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2581
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2581
  store volatile ptr %2, ptr %next4, align 8, !dbg !2581
  br label %do.end5, !dbg !2581

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2577

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2583
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733}
!llvm.ident = !{!1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_device_new207", scope: !2, file: !3, line: 57, type: !116, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.device.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22device\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/device.ll sound/core/device.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !1705, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/device.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f3722ae2081c64db702e2b0c184b6b3")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !93, !98, !103}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_type", file: !79, line: 38, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!81 = !DIEnumerator(name: "SNDRV_DEV_LOWLEVEL", value: 0)
!82 = !DIEnumerator(name: "SNDRV_DEV_INFO", value: 1)
!83 = !DIEnumerator(name: "SNDRV_DEV_BUS", value: 2)
!84 = !DIEnumerator(name: "SNDRV_DEV_CODEC", value: 3)
!85 = !DIEnumerator(name: "SNDRV_DEV_PCM", value: 4)
!86 = !DIEnumerator(name: "SNDRV_DEV_COMPRESS", value: 5)
!87 = !DIEnumerator(name: "SNDRV_DEV_RAWMIDI", value: 6)
!88 = !DIEnumerator(name: "SNDRV_DEV_TIMER", value: 7)
!89 = !DIEnumerator(name: "SNDRV_DEV_SEQUENCER", value: 8)
!90 = !DIEnumerator(name: "SNDRV_DEV_HWDEP", value: 9)
!91 = !DIEnumerator(name: "SNDRV_DEV_JACK", value: 10)
!92 = !DIEnumerator(name: "SNDRV_DEV_CONTROL", value: 11)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_state", file: !79, line: 53, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "SNDRV_DEV_BUILD", value: 0)
!96 = !DIEnumerator(name: "SNDRV_DEV_REGISTERED", value: 1)
!97 = !DIEnumerator(name: "SNDRV_DEV_DISCONNECTED", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 10, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!100 = !{!101, !102}
!101 = !DIEnumerator(name: "false", value: 0)
!102 = !DIEnumerator(name: "true", value: 1)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !104, line: 364, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!105 = !{!106, !107, !108, !109, !110, !111, !112}
!106 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!107 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!108 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!109 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!110 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!111 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!112 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!113 = !{!114, !116, !117, !7, !300, !1703}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !115, line: 154, baseType: !7)
!115 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device", file: !79, line: 67, size: 384, elements: !119)
!119 = !{!120, !126, !1689, !1690, !1691, !1692}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !118, file: !79, line: 68, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !115, line: 190, size: 128, elements: !122)
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !115, line: 191, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !121, file: !115, line: 191, baseType: !124, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !118, file: !79, line: 69, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !79, line: 80, size: 12288, elements: !129)
!129 = !{!130, !131, !136, !137, !141, !145, !146, !147, !151, !1189, !1190, !1194, !1195, !1625, !1626, !1627, !1648, !1649, !1650, !1651, !1652, !1659, !1660, !1661, !1664, !1667, !1668, !1671, !1672, !1673, !1674, !1675, !1676, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !128, file: !79, line: 81, baseType: !46, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !128, file: !79, line: 84, baseType: !132, size: 128, offset: 32)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !134)
!133 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !{!135}
!135 = !DISubrange(count: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !128, file: !79, line: 85, baseType: !132, size: 128, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !128, file: !79, line: 86, baseType: !138, size: 256, offset: 288)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !128, file: !79, line: 87, baseType: !142, size: 640, offset: 544)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 640, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !128, file: !79, line: 88, baseType: !138, size: 256, offset: 1184)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !128, file: !79, line: 89, baseType: !142, size: 640, offset: 1440)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !128, file: !79, line: 90, baseType: !148, size: 1024, offset: 2080)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !128, file: !79, line: 92, baseType: !152, size: 64, offset: 3136)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !154)
!154 = !{!155, !156, !157, !161, !842, !868, !869, !870, !871, !875, !878, !879, !880, !933, !934, !935, !936, !937, !938, !939, !940, !943, !947, !967, !985, !986, !987, !988, !997, !1021, !1022, !1025, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1039, !1040, !1147, !1155, !1156, !1157, !1159, !1163, !1164, !1168, !1169, !1170, !1171, !1173, !1174, !1175, !1182, !1183, !1184, !1188}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !153, file: !6, line: 403, baseType: !5, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !153, file: !6, line: 406, baseType: !121, size: 128, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !6, line: 409, baseType: !158, size: 448, offset: 192)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 448, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 56)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !153, file: !6, line: 417, baseType: !162, size: 768, offset: 640)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !163)
!163 = !{!164, !825, !826, !827, !830}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !162, file: !6, line: 46, baseType: !165, size: 512)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !166, line: 64, size: 512, elements: !167)
!166 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!167 = !{!168, !171, !172, !174, !263, !695, !810, !820, !821, !822, !823, !824}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !166, line: 65, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !165, file: !166, line: 66, baseType: !121, size: 128, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !166, line: 67, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !165, file: !166, line: 68, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !166, line: 168, size: 768, elements: !177)
!177 = !{!178, !179, !222, !223}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !176, file: !166, line: 169, baseType: !121, size: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !176, file: !166, line: 170, baseType: !180, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !181, line: 29, baseType: !182)
!181 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !181, line: 17, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !181, line: 18, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !181, line: 18, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !185, file: !181, line: 19, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !189, line: 14, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !188, file: !189, line: 15, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 44, baseType: !194)
!193 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !193, line: 14, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 15, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 15, size: 32, elements: !198)
!198 = !{!199, !204, !214}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !197, file: !193, line: 16, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !115, line: 174, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 172, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !201, file: !115, line: 173, baseType: !46, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 24, baseType: !205, size: 16)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 24, size: 16, elements: !206)
!206 = !{!207, !213}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !205, file: !193, line: 25, baseType: !208, size: 8)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !209, line: 17, baseType: !210)
!209 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !211, line: 21, baseType: !212)
!211 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !205, file: !193, line: 26, baseType: !208, size: 8, offset: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 28, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 28, size: 32, elements: !216)
!216 = !{!217, !221}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !215, file: !193, line: 29, baseType: !218, size: 16)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !209, line: 19, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !211, line: 24, baseType: !220)
!220 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !215, file: !193, line: 30, baseType: !218, size: 16, offset: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !176, file: !166, line: 171, baseType: !165, size: 512, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !176, file: !166, line: 172, baseType: !224, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !166, line: 133, size: 192, elements: !227)
!227 = !{!228, !235, !240}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !226, file: !166, line: 134, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!46, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !166, line: 135, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!169, !233}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !226, file: !166, line: 136, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!46, !233, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !166, line: 125, size: 20736, elements: !247)
!247 = !{!248, !253, !257, !258, !262}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !246, file: !166, line: 126, baseType: !249, size: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !246, file: !166, line: 127, baseType: !254, size: 4096, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 4096, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !246, file: !166, line: 128, baseType: !46, size: 32, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !166, line: 129, baseType: !259, size: 16384, offset: 4320)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 16384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !246, file: !166, line: 130, baseType: !46, size: 32, offset: 20704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !165, file: !166, line: 69, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !166, line: 116, size: 384, elements: !267)
!267 = !{!268, !272, !301, !641, !672, !676}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !266, file: !166, line: 117, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !173}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !266, file: !166, line: 118, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !276, line: 254, size: 128, elements: !277)
!276 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!277 = !{!278, !293}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !275, file: !276, line: 255, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !173, !287, !250}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 66, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !284, line: 73, baseType: !285)
!284 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !284, line: 15, baseType: !286)
!286 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !276, line: 30, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !276, line: 31, baseType: !169, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !288, file: !276, line: 32, baseType: !292, size: 16, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !115, line: 24, baseType: !220)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !275, file: !276, line: 256, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!282, !173, !287, !169, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 61, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !284, line: 72, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !284, line: 16, baseType: !300)
!300 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !266, file: !166, line: 119, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !276, line: 84, size: 320, elements: !306)
!306 = !{!307, !308, !312, !637, !639}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !276, line: 85, baseType: !169, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !305, file: !276, line: 86, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!292, !173, !287, !46}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !305, file: !276, line: 88, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!292, !173, !316, !46}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !276, line: 175, size: 512, elements: !318)
!318 = !{!319, !320, !321, !322, !329, !339, !340}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !317, file: !276, line: 176, baseType: !288, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !276, line: 177, baseType: !297, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !317, file: !276, line: 178, baseType: !116, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !317, file: !276, line: 179, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !328, line: 32, flags: DIFlagFwdDecl)
!328 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !317, file: !276, line: 180, baseType: !330, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!282, !333, !173, !316, !250, !336, !297}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !335, line: 537, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !115, line: 52, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !284, line: 88, baseType: !338)
!338 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !317, file: !276, line: 182, baseType: !330, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !276, line: 184, baseType: !341, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!46, !333, !173, !316, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !328, line: 625, size: 1344, elements: !346)
!346 = !{!347, !364, !586, !592, !599, !600, !605, !608, !620, !621, !624, !628, !629, !630, !631, !632, !635}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !328, line: 628, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !328, line: 628, size: 128, elements: !349)
!349 = !{!350, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !328, line: 629, baseType: !351, size: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !328, line: 629, size: 128, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !351, file: !328, line: 631, baseType: !300, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !351, file: !328, line: 632, baseType: !300, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !348, file: !328, line: 635, baseType: !356, size: 128, align: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !115, line: 232, size: 128, align: 64, elements: !357)
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !115, line: 233, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !356, file: !115, line: 234, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !359}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !345, file: !328, line: 639, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !328, line: 733, size: 10240, elements: !367)
!367 = !{!368, !582}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !328, line: 734, baseType: !369, size: 10240)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !328, line: 734, size: 10240, elements: !370)
!370 = !{!371, !375, !389, !393, !394, !395, !396, !397, !398, !406, !407, !408, !417, !418, !427, !428, !429, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !476, !490, !493, !548, !549, !550, !553, !556, !557, !560, !561, !562, !569, !570}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !328, line: 739, baseType: !372, size: 512, align: 512)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !328, line: 739, size: 512, align: 512, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !372, file: !328, line: 747, baseType: !200, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !369, file: !328, line: 750, baseType: !376, size: 128, offset: 512)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !377, line: 218, size: 128, elements: !378)
!377 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!378 = !{!379, !387, !388}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !377, line: 219, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !377, line: 219, size: 32, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !380, file: !377, line: 220, baseType: !180, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !380, file: !377, line: 221, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !377, line: 197, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 197, elements: !386)
!386 = !{}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !376, file: !377, line: 223, baseType: !7, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !376, file: !377, line: 224, baseType: !116, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !369, file: !328, line: 752, baseType: !390, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!300, !333, !300, !300, !300, !300}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !369, file: !328, line: 756, baseType: !300, size: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !369, file: !328, line: 757, baseType: !300, size: 64, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !369, file: !328, line: 760, baseType: !300, size: 64, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !369, file: !328, line: 761, baseType: !300, size: 64, offset: 896)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !369, file: !328, line: 763, baseType: !300, size: 64, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !369, file: !328, line: 764, baseType: !399, size: 64, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !335, line: 299, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 299, size: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !401, file: !335, line: 299, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !405, line: 18, baseType: !300)
!405 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !369, file: !328, line: 773, baseType: !200, size: 32, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !369, file: !328, line: 785, baseType: !200, size: 32, offset: 1120)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !369, file: !328, line: 795, baseType: !409, size: 64, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !328, line: 726, size: 128, elements: !411)
!411 = !{!412, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !410, file: !328, line: 727, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !209, line: 23, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !211, line: 31, baseType: !415)
!415 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !410, file: !328, line: 728, baseType: !46, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !369, file: !328, line: 801, baseType: !300, size: 64, offset: 1216)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !369, file: !328, line: 804, baseType: !419, size: 64, offset: 1280)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !420, line: 13, baseType: !421)
!420 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !115, line: 181, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 179, size: 64, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !422, file: !115, line: 180, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !209, line: 22, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !211, line: 30, baseType: !338)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !369, file: !328, line: 806, baseType: !46, size: 32, offset: 1344)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !369, file: !328, line: 808, baseType: !180, size: 32, offset: 1376)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !369, file: !328, line: 823, baseType: !430, size: 320, offset: 1408)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !431, line: 48, size: 320, elements: !432)
!431 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!432 = !{!433, !434, !435, !440, !442}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !430, file: !431, line: 49, baseType: !419, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !430, file: !431, line: 55, baseType: !419, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !430, file: !431, line: 57, baseType: !436, size: 32, offset: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !437, line: 15, size: 32, elements: !438)
!437 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !436, file: !437, line: 20, baseType: !200, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !430, file: !431, line: 59, baseType: !441, size: 32, offset: 160)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !189, line: 23, baseType: !188)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !430, file: !431, line: 60, baseType: !121, size: 128, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !369, file: !328, line: 825, baseType: !121, size: 128, offset: 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !369, file: !328, line: 845, baseType: !46, size: 32, offset: 1856)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !369, file: !328, line: 849, baseType: !300, size: 64, offset: 1920)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !369, file: !328, line: 850, baseType: !300, size: 64, offset: 1984)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !369, file: !328, line: 852, baseType: !300, size: 64, offset: 2048)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !369, file: !328, line: 853, baseType: !300, size: 64, offset: 2112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !369, file: !328, line: 854, baseType: !421, size: 64, offset: 2176)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !369, file: !328, line: 855, baseType: !300, size: 64, offset: 2240)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !369, file: !328, line: 856, baseType: !300, size: 64, offset: 2304)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !369, file: !328, line: 857, baseType: !300, size: 64, offset: 2368)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !369, file: !328, line: 858, baseType: !300, size: 64, offset: 2432)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !369, file: !328, line: 865, baseType: !455, size: 32, offset: 2496)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !456, line: 69, baseType: !457)
!456 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !456, line: 64, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !457, file: !456, line: 65, baseType: !7, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !369, file: !328, line: 867, baseType: !180, size: 32, offset: 2528)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !369, file: !328, line: 869, baseType: !300, size: 64, offset: 2560)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !369, file: !328, line: 869, baseType: !300, size: 64, offset: 2624)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !369, file: !328, line: 869, baseType: !300, size: 64, offset: 2688)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !369, file: !328, line: 869, baseType: !300, size: 64, offset: 2752)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !369, file: !328, line: 870, baseType: !300, size: 64, offset: 2816)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !369, file: !328, line: 870, baseType: !300, size: 64, offset: 2880)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !369, file: !328, line: 870, baseType: !300, size: 64, offset: 2944)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !369, file: !328, line: 871, baseType: !300, size: 64, offset: 3008)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !369, file: !328, line: 871, baseType: !300, size: 64, offset: 3072)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !369, file: !328, line: 871, baseType: !300, size: 64, offset: 3136)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !369, file: !328, line: 871, baseType: !300, size: 64, offset: 3200)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !369, file: !328, line: 873, baseType: !473, size: 3328, offset: 3264)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 3328, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 52)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !369, file: !328, line: 875, baseType: !477, size: 1280, offset: 6592)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 1280, elements: !488)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !479, line: 22, size: 320, elements: !480)
!479 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!480 = !{!481, !482, !483, !484}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !478, file: !479, line: 23, baseType: !441, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !478, file: !479, line: 24, baseType: !425, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !478, file: !479, line: 26, baseType: !121, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !478, file: !479, line: 28, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !209, line: 20, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !211, line: 26, baseType: !46)
!488 = !{!489}
!489 = !DISubrange(count: 4)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !369, file: !328, line: 877, baseType: !491, size: 64, offset: 7872)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !328, line: 877, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !369, file: !328, line: 880, baseType: !494, size: 1088, offset: 7936)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !495, line: 72, baseType: !496)
!495 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 23, size: 1088, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !505, !506, !514, !515, !542, !543, !544}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !496, file: !495, line: 28, baseType: !413, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !496, file: !495, line: 38, baseType: !421, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !496, file: !495, line: 40, baseType: !300, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !496, file: !495, line: 43, baseType: !430, size: 320, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !496, file: !495, line: 44, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !495, line: 44, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !495, line: 48, baseType: !300, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !496, file: !495, line: 59, baseType: !507, size: 256, offset: 640)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !508, line: 66, size: 256, elements: !509)
!508 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !507, file: !508, line: 67, baseType: !419, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !507, file: !508, line: 68, baseType: !441, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !507, file: !508, line: 70, baseType: !436, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !507, file: !508, line: 72, baseType: !121, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !496, file: !495, line: 60, baseType: !116, size: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !496, file: !495, line: 61, baseType: !516, size: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !519, line: 13, size: 1216, elements: !520)
!519 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!520 = !{!521, !522, !523, !524, !525, !526, !527, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !518, file: !519, line: 14, baseType: !116, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !518, file: !519, line: 15, baseType: !300, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !518, file: !519, line: 17, baseType: !300, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !518, file: !519, line: 17, baseType: !300, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !518, file: !519, line: 18, baseType: !300, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !518, file: !519, line: 18, baseType: !300, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !518, file: !519, line: 19, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !518, file: !519, line: 21, baseType: !286, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !518, file: !519, line: 23, baseType: !286, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !518, file: !519, line: 24, baseType: !286, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !518, file: !519, line: 25, baseType: !286, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !518, file: !519, line: 26, baseType: !286, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !518, file: !519, line: 27, baseType: !286, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !518, file: !519, line: 28, baseType: !286, size: 64, offset: 832)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !518, file: !519, line: 29, baseType: !286, size: 64, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !518, file: !519, line: 30, baseType: !286, size: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !518, file: !519, line: 31, baseType: !286, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !518, file: !519, line: 32, baseType: !286, size: 64, offset: 1088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !518, file: !519, line: 33, baseType: !286, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !496, file: !495, line: 63, baseType: !200, size: 32, offset: 1024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !496, file: !495, line: 69, baseType: !218, size: 16, offset: 1056)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !496, file: !495, line: 70, baseType: !545, size: 16, offset: 1072)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !209, line: 18, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !211, line: 23, baseType: !547)
!547 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !328, line: 882, baseType: !300, size: 64, offset: 9024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !369, file: !328, line: 885, baseType: !180, size: 32, offset: 9088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !369, file: !328, line: 886, baseType: !551, size: 64, offset: 9152)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !328, line: 732, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !369, file: !328, line: 901, baseType: !554, size: 64, offset: 9216)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !328, line: 901, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !369, file: !328, line: 904, baseType: !333, size: 64, offset: 9280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !369, file: !328, line: 906, baseType: !558, size: 64, offset: 9344)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !328, line: 906, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !369, file: !328, line: 930, baseType: !200, size: 32, offset: 9408)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !369, file: !328, line: 933, baseType: !200, size: 32, offset: 9440)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !369, file: !328, line: 935, baseType: !563, size: 64, offset: 9472)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !564, line: 103, size: 64, elements: !565)
!564 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !563, file: !564, line: 104, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !564, line: 101, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !369, file: !328, line: 940, baseType: !419, size: 64, offset: 9536)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !369, file: !328, line: 942, baseType: !571, size: 256, offset: 9600)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !572, line: 98, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!573 = !{!574, !575, !576}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !571, file: !572, line: 99, baseType: !419, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !571, file: !572, line: 100, baseType: !121, size: 128, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !571, file: !572, line: 101, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !572, line: 21, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !366, file: !328, line: 986, baseType: !583, offset: 10240)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: -1)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !345, file: !328, line: 640, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !335, line: 297, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !335, line: 297, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !588, file: !335, line: 297, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !405, line: 19, baseType: !300)
!592 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !328, line: 646, baseType: !593, size: 64, offset: 256)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !328, line: 646, size: 64, elements: !594)
!594 = !{!595, !598}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !593, file: !328, line: 647, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !328, line: 542, baseType: !300)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !593, file: !328, line: 648, baseType: !597, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !345, file: !328, line: 666, baseType: !46, size: 32, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !345, file: !328, line: 667, baseType: !601, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !328, line: 579, size: 320, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !602, file: !328, line: 580, baseType: !430, size: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !345, file: !328, line: 670, baseType: !606, size: 8, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !115, line: 35, baseType: !607)
!607 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !345, file: !328, line: 681, baseType: !609, size: 256, offset: 512)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !328, line: 678, size: 256, elements: !610)
!610 = !{!611, !619}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !609, file: !328, line: 679, baseType: !612, size: 192, align: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !613, line: 5, size: 192, align: 64, elements: !614)
!613 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!614 = !{!615, !616, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !612, file: !613, line: 6, baseType: !300, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !612, file: !613, line: 7, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !612, file: !613, line: 8, baseType: !617, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !609, file: !328, line: 680, baseType: !300, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !345, file: !328, line: 689, baseType: !121, size: 128, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !345, file: !328, line: 691, baseType: !622, size: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !328, line: 691, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !345, file: !328, line: 694, baseType: !625, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !328, line: 694, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !345, file: !328, line: 697, baseType: !300, size: 64, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !345, file: !328, line: 699, baseType: !333, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !345, file: !328, line: 700, baseType: !116, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !345, file: !328, line: 711, baseType: !419, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !345, file: !328, line: 717, baseType: !633, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !328, line: 717, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !345, file: !328, line: 722, baseType: !636, offset: 1344)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !328, line: 570, elements: !386)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !305, file: !276, line: 90, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !305, file: !276, line: 91, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !266, file: !166, line: 120, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !233}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !648)
!648 = !{!649, !650, !654, !658, !664, !668}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !14, line: 40, baseType: !13, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !647, file: !14, line: 41, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!606}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !647, file: !14, line: 42, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!116}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !647, file: !14, line: 43, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!528, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !647, file: !14, line: 44, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!528}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !647, file: !14, line: 45, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !116}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !266, file: !166, line: 121, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!528, !233}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !266, file: !166, line: 122, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !233, !680, !688}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !682, line: 23, baseType: !683)
!682 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 21, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !683, file: !682, line: 22, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !115, line: 37, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !284, line: 49, baseType: !7)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !682, line: 28, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 26, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !690, file: !682, line: 27, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !115, line: 38, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !284, line: 50, baseType: !7)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !165, file: !166, line: 70, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !698, line: 190, size: 1152, elements: !699)
!698 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !802, !803, !804, !805, !806, !809}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !697, file: !698, line: 191, baseType: !200, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !697, file: !698, line: 192, baseType: !200, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !697, file: !698, line: 202, baseType: !696, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !697, file: !698, line: 203, baseType: !169, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !697, file: !698, line: 205, baseType: !612, size: 192, align: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !697, file: !698, line: 207, baseType: !528, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !697, file: !698, line: 208, baseType: !7, size: 32, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 209, baseType: !708, size: 256, offset: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 209, size: 256, elements: !709)
!709 = !{!710, !722, !726}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !708, file: !698, line: 210, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !698, line: 153, size: 256, elements: !712)
!712 = !{!713, !714, !718, !721}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !711, file: !698, line: 154, baseType: !300, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !711, file: !698, line: 156, baseType: !715, size: 64, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !613, line: 12, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !715, file: !613, line: 13, baseType: !617, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !711, file: !698, line: 162, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !698, line: 162, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !711, file: !698, line: 167, baseType: !300, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !708, file: !698, line: 211, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !698, line: 170, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !723, file: !698, line: 171, baseType: !696, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !708, file: !698, line: 212, baseType: !727, size: 256)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !698, line: 174, size: 256, elements: !728)
!728 = !{!729, !797, !800, !801}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !727, file: !698, line: 175, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !698, line: 271, size: 768, elements: !733)
!733 = !{!734, !757, !761, !765, !770, !774, !778, !782, !783, !784, !785, !793}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !732, file: !698, line: 276, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!46, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !698, line: 251, size: 1216, elements: !740)
!740 = !{!741, !742, !743, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !739, file: !698, line: 253, baseType: !696, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !739, file: !698, line: 254, baseType: !333, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !739, file: !698, line: 255, baseType: !744, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !746, line: 66, flags: DIFlagFwdDecl)
!746 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!747 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !739, file: !698, line: 256, baseType: !116, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !739, file: !698, line: 259, baseType: !507, size: 256, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !739, file: !698, line: 260, baseType: !507, size: 256, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !739, file: !698, line: 261, baseType: !46, size: 32, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !739, file: !698, line: 262, baseType: !121, size: 128, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !739, file: !698, line: 263, baseType: !250, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !739, file: !698, line: 265, baseType: !297, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !739, file: !698, line: 266, baseType: !606, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !739, file: !698, line: 267, baseType: !606, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !739, file: !698, line: 268, baseType: !625, size: 64, offset: 1152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !732, file: !698, line: 277, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !738}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !732, file: !698, line: 290, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!46, !744, !116}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !732, file: !698, line: 292, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!116, !744, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !732, file: !698, line: 293, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!116, !744, !116, !769}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !732, file: !698, line: 294, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !744, !116}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !732, file: !698, line: 296, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!282, !738, !250, !297, !336}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !732, file: !698, line: 306, baseType: !297, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !732, file: !698, line: 313, baseType: !606, size: 8, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !732, file: !698, line: 314, baseType: !779, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !732, file: !698, line: 317, baseType: !786, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!789, !738, !791}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !790, line: 59, baseType: !7)
!790 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !698, line: 31, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !732, file: !698, line: 320, baseType: !794, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!46, !738, !344}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !727, file: !698, line: 176, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !698, line: 35, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !727, file: !698, line: 177, baseType: !336, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !727, file: !698, line: 178, baseType: !696, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !697, file: !698, line: 215, baseType: !116, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !697, file: !698, line: 221, baseType: !413, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !698, line: 223, baseType: !220, size: 16, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !697, file: !698, line: 224, baseType: !292, size: 16, offset: 912)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !697, file: !698, line: 225, baseType: !807, size: 64, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !698, line: 36, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !697, file: !698, line: 227, baseType: !356, size: 128, align: 64, offset: 1024)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !165, file: !166, line: 71, baseType: !811, size: 32, offset: 448)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !812, line: 19, size: 32, elements: !813)
!812 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !811, file: !812, line: 20, baseType: !815, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !816, line: 113, baseType: !817)
!816 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !816, line: 111, size: 32, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !817, file: !816, line: 112, baseType: !200, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !165, file: !166, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !165, file: !166, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !165, file: !166, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !165, file: !166, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !165, file: !166, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !162, file: !6, line: 47, baseType: !152, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !162, file: !6, line: 48, baseType: !173, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !162, file: !6, line: 49, baseType: !828, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !162, file: !6, line: 50, baseType: !831, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !833, line: 26, size: 256, elements: !834)
!833 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !832, file: !833, line: 27, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !832, file: !833, line: 28, baseType: !837, size: 192, offset: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !838, line: 43, size: 192, elements: !839)
!838 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !838, line: 44, baseType: !441, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !837, file: !838, line: 45, baseType: !121, size: 128, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !153, file: !6, line: 418, baseType: !843, size: 64, offset: 1408)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !845)
!845 = !{!846, !847, !852, !856, !860, !864}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !844, file: !6, line: 54, baseType: !288, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !844, file: !6, line: 55, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!282, !843, !851, !250}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !844, file: !6, line: 57, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!282, !843, !851, !169, !297}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !844, file: !6, line: 59, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !152, !169}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !844, file: !6, line: 60, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!46, !152}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !844, file: !6, line: 61, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !152}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !153, file: !6, line: 419, baseType: !169, size: 64, offset: 1472)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !153, file: !6, line: 420, baseType: !169, size: 64, offset: 1536)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !153, file: !6, line: 421, baseType: !173, size: 64, offset: 1600)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !153, file: !6, line: 424, baseType: !872, size: 64, offset: 1664)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !153, file: !6, line: 425, baseType: !876, size: 64, offset: 1728)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !153, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !153, file: !6, line: 435, baseType: !507, size: 256, offset: 1856)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !153, file: !6, line: 437, baseType: !881, size: 64, offset: 2112)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !883, line: 69, size: 320, elements: !884)
!883 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!884 = !{!885, !886, !887, !904, !906, !910, !911}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !882, file: !883, line: 70, baseType: !169, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !882, file: !883, line: 71, baseType: !152, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !882, file: !883, line: 72, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !883, line: 47, size: 256, elements: !891)
!891 = !{!892, !893, !899, !903}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !883, line: 49, baseType: !7, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !890, file: !883, line: 51, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!46, !169, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !890, file: !883, line: 53, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!46, !250, !897}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !890, file: !883, line: 55, baseType: !669, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !882, file: !883, line: 73, baseType: !905, size: 16, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !882, file: !883, line: 74, baseType: !907, size: 8, offset: 208)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !209, line: 16, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !211, line: 20, baseType: !909)
!909 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 75, baseType: !208, size: 8, offset: 216)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 76, baseType: !912, size: 64, offset: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 76, size: 64, elements: !913)
!913 = !{!914, !915, !922}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !912, file: !883, line: 77, baseType: !116, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !912, file: !883, line: 78, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !883, line: 86, size: 128, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !918, file: !883, line: 87, baseType: !7, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !918, file: !883, line: 88, baseType: !250, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !912, file: !883, line: 79, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !883, line: 92, size: 256, elements: !926)
!926 = !{!927, !928, !929, !931, !932}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !925, file: !883, line: 94, baseType: !7, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !925, file: !883, line: 95, baseType: !7, size: 32, offset: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !925, file: !883, line: 96, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !925, file: !883, line: 97, baseType: !888, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !925, file: !883, line: 98, baseType: !116, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !153, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !153, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !153, file: !6, line: 442, baseType: !872, size: 64, offset: 2240)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !153, file: !6, line: 443, baseType: !876, size: 64, offset: 2304)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !153, file: !6, line: 444, baseType: !606, size: 8, offset: 2368)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !153, file: !6, line: 451, baseType: !606, size: 8, offset: 2376)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !153, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !153, file: !6, line: 455, baseType: !941, size: 64, offset: 2432)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !153, file: !6, line: 458, baseType: !944, size: 64, offset: 2496)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!46}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !153, file: !6, line: 460, baseType: !948, size: 4032, align: 512, offset: 2560)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 4032, elements: !965)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !949, file: !6, line: 363, baseType: !116, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !949, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !949, file: !6, line: 367, baseType: !954, size: 448, offset: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !954, file: !6, line: 320, baseType: !152, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !954, file: !6, line: 321, baseType: !958, size: 384, offset: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !959, line: 40, size: 384, elements: !960)
!959 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !958, file: !959, line: 41, baseType: !962, size: 384, align: 64)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 384, align: 64, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 2)
!965 = !{!966}
!966 = !DISubrange(count: 7)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !153, file: !6, line: 463, baseType: !968, size: 192, offset: 6592)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !969, line: 8, size: 192, elements: !970)
!969 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!970 = !{!971, !972, !974}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !968, file: !969, line: 10, baseType: !7, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !968, file: !969, line: 11, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !968, file: !969, line: 12, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !977, line: 59, size: 48, elements: !978)
!977 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!978 = !{!979, !980, !981, !982, !983, !984}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !976, file: !977, line: 60, baseType: !545, size: 16)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !976, file: !977, line: 61, baseType: !545, size: 16, offset: 16)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !976, file: !977, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !976, file: !977, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !976, file: !977, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !976, file: !977, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !153, file: !6, line: 465, baseType: !300, size: 64, offset: 6784)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !153, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !153, file: !6, line: 470, baseType: !121, size: 128, offset: 6912)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !153, file: !6, line: 471, baseType: !989, size: 64, offset: 7040)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !991, line: 33, size: 96, elements: !992)
!991 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!992 = !{!993, !994, !995, !996}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !990, file: !991, line: 37, baseType: !46, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !990, file: !991, line: 43, baseType: !46, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !990, file: !991, line: 45, baseType: !220, size: 16, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !991, line: 47, baseType: !220, size: 16, offset: 80)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !153, file: !6, line: 476, baseType: !998, size: 64, offset: 7104)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1000)
!1000 = !{!1001, !1018, !1019, !1020}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !999, file: !6, line: 379, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1004, line: 204, baseType: !1005)
!1004 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1004, line: 197, size: 192, elements: !1006)
!1006 = !{!1007, !1010, !1011, !1012, !1014, !1016}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1005, file: !1004, line: 198, baseType: !1008, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1004, line: 21, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !211, line: 27, baseType: !7)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1005, file: !1004, line: 199, baseType: !212, size: 8, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1005, file: !1004, line: 200, baseType: !212, size: 8, offset: 40)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1005, file: !1004, line: 201, baseType: !1013, size: 16, offset: 48)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1004, line: 17, baseType: !219)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1005, file: !1004, line: 202, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1004, line: 16, baseType: !414)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1005, file: !1004, line: 203, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1004, line: 22, baseType: !414)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !999, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !999, file: !6, line: 381, baseType: !250, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !999, file: !6, line: 382, baseType: !250, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !153, file: !6, line: 477, baseType: !999, size: 256, offset: 7168)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !153, file: !6, line: 480, baseType: !1023, size: 64, offset: 7424)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !153, file: !6, line: 483, baseType: !1026, size: 64, offset: 7488)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !153, file: !6, line: 488, baseType: !250, size: 64, offset: 7552)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !153, file: !6, line: 492, baseType: !116, size: 64, offset: 7616)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !153, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !153, file: !6, line: 495, baseType: !116, size: 64, offset: 7744)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !153, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !153, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !153, file: !6, line: 500, baseType: !1035, size: 64, offset: 7872)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1037, line: 45, baseType: !1038)
!1037 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !153, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !153, file: !6, line: 504, baseType: !1041, size: 64, offset: 8000)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1044, line: 96, size: 192, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1045 = !{!1046, !1047, !1108, !1111}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1043, file: !1044, line: 97, baseType: !7, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1043, file: !1044, line: 98, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1044, line: 24, size: 3072, elements: !1050)
!1050 = !{!1051, !1053, !1054, !1055, !1056, !1070, !1071, !1072, !1073, !1092, !1093, !1094, !1105, !1106, !1107}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1049, file: !1044, line: 26, baseType: !1052, size: 128)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 128, elements: !963)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1049, file: !1044, line: 27, baseType: !1052, size: 128, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1049, file: !1044, line: 28, baseType: !46, size: 32, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !1044, line: 31, baseType: !180, size: 32, align: 512, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1049, file: !1044, line: 32, baseType: !1057, size: 960, offset: 576)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1058, line: 206, size: 960, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1059 = !{!1060, !1061, !1064, !1066, !1067, !1069}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1057, file: !1058, line: 207, baseType: !359, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1057, file: !1058, line: 208, baseType: !1062, size: 256, offset: 64)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 256, elements: !488)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1057, file: !1058, line: 209, baseType: !1065, size: 256, offset: 320)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !488)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1057, file: !1058, line: 213, baseType: !286, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1057, file: !1058, line: 215, baseType: !1068, size: 256, offset: 640)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !488)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1057, file: !1058, line: 216, baseType: !208, size: 8, offset: 896)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1049, file: !1044, line: 33, baseType: !300, size: 64, offset: 1536)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1049, file: !1044, line: 34, baseType: !300, size: 64, offset: 1600)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1049, file: !1044, line: 35, baseType: !606, size: 8, offset: 1664)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1049, file: !1044, line: 36, baseType: !1074, size: 320, offset: 1728)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1075, line: 11, size: 320, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1076 = !{!1077, !1084, !1085, !1090}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1074, file: !1075, line: 16, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !115, line: 198, size: 128, elements: !1079)
!1079 = !{!1080, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1078, file: !115, line: 199, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1078, file: !115, line: 199, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1074, file: !1075, line: 17, baseType: !300, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1074, file: !1075, line: 18, baseType: !1086, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !1075, line: 19, baseType: !1091, size: 32, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !209, line: 21, baseType: !1009)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1049, file: !1044, line: 37, baseType: !571, size: 256, offset: 2048)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1049, file: !1044, line: 38, baseType: !356, size: 128, align: 64, offset: 2304)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1049, file: !1044, line: 39, baseType: !1095, size: 64, offset: 2432)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1044, line: 49, size: 768, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1096, file: !1044, line: 50, baseType: !180, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1096, file: !1044, line: 51, baseType: !1065, size: 256, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1096, file: !1044, line: 53, baseType: !1065, size: 256, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1096, file: !1044, line: 54, baseType: !300, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1096, file: !1044, line: 55, baseType: !1095, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1096, file: !1044, line: 56, baseType: !46, size: 32, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1096, file: !1044, line: 57, baseType: !46, size: 32, offset: 736)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1049, file: !1044, line: 40, baseType: !300, size: 64, offset: 2496)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1049, file: !1044, line: 42, baseType: !46, size: 32, offset: 2560)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1049, file: !1044, line: 43, baseType: !1042, size: 64, offset: 2624)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1043, file: !1044, line: 99, baseType: !1109, offset: 128)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1110, line: 211, elements: !386)
!1110 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1043, file: !1044, line: 100, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1044, line: 63, size: 3008, elements: !1114)
!1114 = !{!1115, !1116, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1146}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1113, file: !1044, line: 64, baseType: !1095, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1113, file: !1044, line: 65, baseType: !1117, size: 192, offset: 64)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 192, elements: !251)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1113, file: !1044, line: 67, baseType: !46, size: 32, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1113, file: !1044, line: 68, baseType: !507, size: 256, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1044, line: 69, baseType: !180, size: 32, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1113, file: !1044, line: 70, baseType: !507, size: 256, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1113, file: !1044, line: 71, baseType: !300, size: 64, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1113, file: !1044, line: 72, baseType: !300, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1113, file: !1044, line: 73, baseType: !300, size: 64, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1113, file: !1044, line: 74, baseType: !300, size: 64, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1113, file: !1044, line: 75, baseType: !300, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1113, file: !1044, line: 76, baseType: !300, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1113, file: !1044, line: 77, baseType: !300, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1113, file: !1044, line: 78, baseType: !300, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1113, file: !1044, line: 79, baseType: !606, size: 8, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1113, file: !1044, line: 80, baseType: !300, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1113, file: !1044, line: 81, baseType: !507, size: 256, offset: 1536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1113, file: !1044, line: 82, baseType: !832, size: 256, offset: 1792)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1113, file: !1044, line: 84, baseType: !200, size: 32, offset: 2048)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1113, file: !1044, line: 87, baseType: !300, size: 64, offset: 2112)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1113, file: !1044, line: 88, baseType: !300, size: 64, offset: 2176)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1113, file: !1044, line: 89, baseType: !1138, size: 704, offset: 2240)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !572, line: 111, size: 704, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1145}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1138, file: !572, line: 112, baseType: !571, size: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1138, file: !572, line: 113, baseType: !1074, size: 320, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1138, file: !572, line: 116, baseType: !1143, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !572, line: 18, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1138, file: !572, line: 117, baseType: !46, size: 32, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1113, file: !1044, line: 90, baseType: !1042, size: 64, offset: 2944)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !153, file: !6, line: 515, baseType: !1148, size: 64, offset: 8064)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1150, line: 117, size: 128, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1149, file: !1150, line: 118, baseType: !486, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1149, file: !1150, line: 119, baseType: !486, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1149, file: !1150, line: 120, baseType: !286, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !153, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !153, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !153, file: !6, line: 520, baseType: !1158, size: 64, offset: 8192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !153, file: !6, line: 523, baseType: !1160, size: 64, offset: 8256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !153, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !153, file: !6, line: 525, baseType: !1165, size: 64, offset: 8384)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !153, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !153, file: !6, line: 533, baseType: !116, size: 64, offset: 8512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !153, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !153, file: !6, line: 535, baseType: !1172, size: 64, offset: 8640)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !153, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !153, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !153, file: !6, line: 540, baseType: !1176, size: 64, offset: 8768)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1178, line: 32, size: 64, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1177, file: !1178, line: 33, baseType: !486, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1177, file: !1178, line: 34, baseType: !486, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !153, file: !6, line: 563, baseType: !121, size: 128, offset: 8832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !153, file: !6, line: 565, baseType: !121, size: 128, offset: 8960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !153, file: !6, line: 568, baseType: !1185, size: 64, offset: 9088)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !153, file: !6, line: 570, baseType: !200, size: 32, offset: 9152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !128, file: !79, line: 94, baseType: !116, size: 64, offset: 3200)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !128, file: !79, line: 95, baseType: !1191, size: 64, offset: 3264)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !127}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !128, file: !79, line: 97, baseType: !121, size: 128, offset: 3328)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !128, file: !79, line: 99, baseType: !1196, size: 64, offset: 3456)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1204, !1205, !1258, !1328, !1329, !1330, !1331, !1332, !1339, !1509, !1522, !1532, !1536, !1538, !1539, !1540, !1544, !1551, !1552, !1555, !1558, !1562, !1565, !1566, !1569, !1570, !1571, !1572, !1602, !1603, !1604, !1607, !1610, !1619, !1620, !1621, !1622, !1623, !1624}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1197, file: !26, line: 706, baseType: !165, size: 512)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1197, file: !26, line: 707, baseType: !1196, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1197, file: !26, line: 709, baseType: !1202, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1197, file: !26, line: 711, baseType: !169, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1197, file: !26, line: 712, baseType: !1206, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1218, !1223, !1227}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1208, file: !26, line: 90, baseType: !169, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1208, file: !26, line: 91, baseType: !302, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1208, file: !26, line: 92, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!46, !1216, !245}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1208, file: !26, line: 93, baseType: !1219, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!250, !1216, !1222, !680, !688}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1208, file: !26, line: 95, baseType: !1224, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1196}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1208, file: !26, line: 97, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1231)
!1231 = !{!1232, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1230, file: !38, line: 287, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!46, !1196}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1230, file: !38, line: 288, baseType: !1224, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1230, file: !38, line: 289, baseType: !1233, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1230, file: !38, line: 290, baseType: !1233, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1230, file: !38, line: 291, baseType: !1233, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1230, file: !38, line: 292, baseType: !1233, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1230, file: !38, line: 293, baseType: !1233, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1230, file: !38, line: 294, baseType: !1233, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1230, file: !38, line: 295, baseType: !1233, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1230, file: !38, line: 296, baseType: !1233, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1230, file: !38, line: 297, baseType: !1233, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1230, file: !38, line: 298, baseType: !1233, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1230, file: !38, line: 299, baseType: !1233, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1230, file: !38, line: 300, baseType: !1233, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1230, file: !38, line: 301, baseType: !1233, size: 64, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1230, file: !38, line: 302, baseType: !1233, size: 64, offset: 960)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1230, file: !38, line: 303, baseType: !1233, size: 64, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1230, file: !38, line: 304, baseType: !1233, size: 64, offset: 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1230, file: !38, line: 305, baseType: !1233, size: 64, offset: 1152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1230, file: !38, line: 306, baseType: !1233, size: 64, offset: 1216)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1230, file: !38, line: 307, baseType: !1233, size: 64, offset: 1280)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1230, file: !38, line: 308, baseType: !1233, size: 64, offset: 1344)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1230, file: !38, line: 309, baseType: !1233, size: 64, offset: 1408)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1197, file: !26, line: 714, baseType: !1259, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1262, line: 80, size: 1344, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1327}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1261, file: !1262, line: 81, baseType: !169, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1261, file: !1262, line: 82, baseType: !169, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1261, file: !1262, line: 83, baseType: !302, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1261, file: !1262, line: 84, baseType: !302, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1261, file: !1262, line: 85, baseType: !302, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1261, file: !1262, line: 87, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!46, !1196, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1286, !1290, !1291, !1292, !1293, !1294, !1302, !1303, !1304, !1305, !1306, !1307}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1274, file: !20, line: 97, baseType: !169, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1274, file: !20, line: 98, baseType: !1259, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1274, file: !20, line: 100, baseType: !152, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1274, file: !20, line: 101, baseType: !169, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1274, file: !20, line: 103, baseType: !606, size: 8, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1274, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1274, file: !20, line: 106, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1274, file: !20, line: 107, baseType: !1287, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1274, file: !20, line: 109, baseType: !1233, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1274, file: !20, line: 110, baseType: !1224, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1274, file: !20, line: 111, baseType: !1233, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1274, file: !20, line: 112, baseType: !1224, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1274, file: !20, line: 113, baseType: !1295, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!46, !1196, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1299, file: !38, line: 59, baseType: !46, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1274, file: !20, line: 114, baseType: !1233, size: 64, offset: 768)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1274, file: !20, line: 115, baseType: !302, size: 64, offset: 832)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1274, file: !20, line: 116, baseType: !302, size: 64, offset: 896)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1274, file: !20, line: 118, baseType: !1228, size: 64, offset: 960)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1274, file: !20, line: 119, baseType: !1224, size: 64, offset: 1024)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1274, file: !20, line: 121, baseType: !1308, size: 64, offset: 1088)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1261, file: !1262, line: 88, baseType: !1213, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1261, file: !1262, line: 89, baseType: !1233, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1261, file: !1262, line: 90, baseType: !1224, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1261, file: !1262, line: 91, baseType: !1224, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1261, file: !1262, line: 92, baseType: !1224, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1261, file: !1262, line: 94, baseType: !1233, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1261, file: !1262, line: 95, baseType: !1233, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1261, file: !1262, line: 97, baseType: !1295, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1261, file: !1262, line: 98, baseType: !1233, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1261, file: !1262, line: 100, baseType: !1233, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1261, file: !1262, line: 102, baseType: !1233, size: 64, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1261, file: !1262, line: 103, baseType: !1224, size: 64, offset: 1088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1261, file: !1262, line: 105, baseType: !1228, size: 64, offset: 1152)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1261, file: !1262, line: 107, baseType: !1324, size: 64, offset: 1216)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1262, line: 107, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1261, file: !1262, line: 109, baseType: !606, size: 8, offset: 1280)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1197, file: !26, line: 715, baseType: !1273, size: 64, offset: 832)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1197, file: !26, line: 717, baseType: !116, size: 64, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1197, file: !26, line: 719, baseType: !116, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1197, file: !26, line: 721, baseType: !507, size: 256, offset: 1024)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1197, file: !26, line: 725, baseType: !1333, size: 448, offset: 1280)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1333, file: !26, line: 518, baseType: !121, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1333, file: !26, line: 519, baseType: !121, size: 128, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1333, file: !26, line: 520, baseType: !121, size: 128, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1333, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1197, file: !26, line: 726, baseType: !1340, size: 2496, offset: 1728)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1386, !1387, !1388, !1389, !1390, !1391, !1462, !1463, !1464, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1502, !1506}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1340, file: !38, line: 664, baseType: !1298, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1340, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1340, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1340, file: !38, line: 667, baseType: !606, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1340, file: !38, line: 668, baseType: !606, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1340, file: !38, line: 669, baseType: !606, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1340, file: !38, line: 670, baseType: !606, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1340, file: !38, line: 671, baseType: !606, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1340, file: !38, line: 672, baseType: !606, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1340, file: !38, line: 673, baseType: !606, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1340, file: !38, line: 674, baseType: !606, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1340, file: !38, line: 675, baseType: !1091, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1340, file: !38, line: 676, baseType: !180, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1340, file: !38, line: 678, baseType: !121, size: 128, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1340, file: !38, line: 679, baseType: !832, size: 256, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1340, file: !38, line: 680, baseType: !1358, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1360, line: 43, size: 1536, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1369, !1370, !1371, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1359, file: !1360, line: 44, baseType: !169, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1359, file: !1360, line: 45, baseType: !46, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1359, file: !1360, line: 46, baseType: !121, size: 128, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !1360, line: 47, baseType: !180, size: 32, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1359, file: !1360, line: 48, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1359, file: !1360, line: 49, baseType: !1074, size: 320, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1359, file: !1360, line: 50, baseType: !300, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1359, file: !1360, line: 51, baseType: !1372, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1373, line: 29, baseType: !425)
!1373 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1359, file: !1360, line: 52, baseType: !1372, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1359, file: !1360, line: 53, baseType: !1372, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1359, file: !1360, line: 54, baseType: !1372, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1359, file: !1360, line: 55, baseType: !1372, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1359, file: !1360, line: 56, baseType: !300, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1359, file: !1360, line: 57, baseType: !300, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1359, file: !1360, line: 58, baseType: !300, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1359, file: !1360, line: 59, baseType: !300, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1359, file: !1360, line: 60, baseType: !300, size: 64, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1359, file: !1360, line: 61, baseType: !1196, size: 64, offset: 1408)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1359, file: !1360, line: 62, baseType: !606, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1359, file: !1360, line: 63, baseType: !606, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1340, file: !38, line: 681, baseType: !606, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1340, file: !38, line: 682, baseType: !606, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1340, file: !38, line: 683, baseType: !606, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1340, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1340, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1340, file: !38, line: 690, baseType: !1392, size: 512, offset: 640)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1393)
!1393 = !{!1394, !1400, !1401, !1406, !1458, !1459, !1460, !1461}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1392, file: !33, line: 119, baseType: !1395, size: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1396, line: 9, size: 256, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1395, file: !1396, line: 10, baseType: !612, size: 192, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1395, file: !1396, line: 11, baseType: !1372, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1392, file: !33, line: 120, baseType: !1372, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1392, file: !33, line: 121, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!32, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1392, file: !33, line: 122, baseType: !1407, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1409)
!1409 = !{!1410, !1435, !1436, !1439, !1444, !1445, !1453, !1457}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1408, file: !33, line: 160, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !33, line: 216, baseType: !441, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1412, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1412, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1412, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1412, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1412, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1412, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1412, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1412, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1412, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1412, file: !33, line: 227, baseType: !220, size: 16, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1412, file: !33, line: 228, baseType: !220, size: 16, offset: 208)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1412, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1412, file: !33, line: 235, baseType: !1372, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1412, file: !33, line: 236, baseType: !1405, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1412, file: !33, line: 237, baseType: !1372, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1412, file: !33, line: 238, baseType: !1405, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1412, file: !33, line: 239, baseType: !1432, size: 4096, align: 512, offset: 512)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 4096, align: 512, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 8)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1408, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1408, file: !33, line: 162, baseType: !1437, size: 32, offset: 96)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !115, line: 32, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !284, line: 96, baseType: !46)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1408, file: !33, line: 163, baseType: !1440, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !456, line: 274, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !456, line: 274, size: 32, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1441, file: !456, line: 274, baseType: !455, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1408, file: !33, line: 164, baseType: !1405, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1408, file: !33, line: 165, baseType: !1446, size: 128, offset: 256)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1396, line: 14, size: 128, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1446, file: !1396, line: 15, baseType: !1449, size: 128)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !613, line: 26, size: 128, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1449, file: !613, line: 27, baseType: !715, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1449, file: !613, line: 28, baseType: !617, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1408, file: !33, line: 166, baseType: !1454, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1372}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1408, file: !33, line: 167, baseType: !1372, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1392, file: !33, line: 123, baseType: !208, size: 8, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1392, file: !33, line: 124, baseType: !208, size: 8, offset: 456)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1392, file: !33, line: 125, baseType: !208, size: 8, offset: 464)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1392, file: !33, line: 126, baseType: !208, size: 8, offset: 472)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1340, file: !38, line: 691, baseType: !413, size: 64, offset: 1152)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1340, file: !38, line: 692, baseType: !571, size: 256, offset: 1216)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1340, file: !38, line: 693, baseType: !1465, size: 192, offset: 1472)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1466, line: 41, baseType: !1467)
!1466 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1466, line: 37, size: 192, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !1466, line: 38, baseType: !180, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1467, file: !1466, line: 39, baseType: !121, size: 128, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1340, file: !38, line: 694, baseType: !1367, size: 64, offset: 1664)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1340, file: !38, line: 695, baseType: !200, size: 32, offset: 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1340, file: !38, line: 696, baseType: !200, size: 32, offset: 1760)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1340, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1340, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1340, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1340, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1340, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1340, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1340, file: !38, line: 703, baseType: !606, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1340, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1340, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1340, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1340, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1340, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1340, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1340, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1340, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1340, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1340, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1340, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1340, file: !38, line: 715, baseType: !413, size: 64, offset: 2048)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1340, file: !38, line: 716, baseType: !413, size: 64, offset: 2112)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1340, file: !38, line: 717, baseType: !413, size: 64, offset: 2176)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1340, file: !38, line: 718, baseType: !413, size: 64, offset: 2240)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1340, file: !38, line: 720, baseType: !1497, size: 64, offset: 2304)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1498, file: !38, line: 633, baseType: !180, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1498, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1340, file: !38, line: 721, baseType: !1503, size: 64, offset: 2368)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !1196, !486}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1340, file: !38, line: 722, baseType: !1507, size: 64, offset: 2432)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1197, file: !26, line: 727, baseType: !1510, size: 64, offset: 4224)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1519, !1520, !1521}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1511, file: !38, line: 743, baseType: !1230, size: 1472)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1511, file: !38, line: 744, baseType: !1233, size: 64, offset: 1472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1511, file: !38, line: 745, baseType: !1516, size: 64, offset: 1536)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1196, !606}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1511, file: !38, line: 746, baseType: !1233, size: 64, offset: 1600)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1511, file: !38, line: 747, baseType: !1224, size: 64, offset: 1664)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1511, file: !38, line: 748, baseType: !1224, size: 64, offset: 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1197, file: !26, line: 736, baseType: !1523, size: 128, offset: 4288)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1524)
!1524 = !{!1525, !1529}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1523, file: !26, line: 531, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1528, line: 13, flags: DIFlagFwdDecl)
!1528 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !26, line: 532, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1197, file: !26, line: 738, baseType: !1533, size: 64, offset: 4416)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1197, file: !26, line: 740, baseType: !1537, size: 64, offset: 4480)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1197, file: !26, line: 741, baseType: !413, size: 64, offset: 4544)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1197, file: !26, line: 746, baseType: !413, size: 64, offset: 4608)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1197, file: !26, line: 747, baseType: !1541, size: 64, offset: 4672)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1197, file: !26, line: 749, baseType: !1545, size: 64, offset: 4736)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1546, file: !26, line: 433, baseType: !7, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1546, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1546, file: !26, line: 435, baseType: !300, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1197, file: !26, line: 751, baseType: !121, size: 128, offset: 4800)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1197, file: !26, line: 762, baseType: !1553, size: 64, offset: 4928)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1197, file: !26, line: 770, baseType: !1556, offset: 4992)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1557, line: 5, elements: !386)
!1557 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1197, file: !26, line: 772, baseType: !1559, size: 64, offset: 4992)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1561, line: 18, flags: DIFlagFwdDecl)
!1561 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1197, file: !26, line: 773, baseType: !1563, size: 64, offset: 5056)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1262, line: 22, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1197, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1197, file: !26, line: 778, baseType: !1567, size: 32, offset: 5152)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !115, line: 21, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !115, line: 18, baseType: !1091)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1197, file: !26, line: 779, baseType: !1091, size: 32, offset: 5184)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1197, file: !26, line: 781, baseType: !180, size: 32, offset: 5216)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1197, file: !26, line: 782, baseType: !121, size: 128, offset: 5248)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1197, file: !26, line: 784, baseType: !1573, size: 64, offset: 5376)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1576, line: 52, size: 768, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1586, !1590, !1591, !1592, !1593, !1597, !1601}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1575, file: !1576, line: 53, baseType: !169, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1575, file: !1576, line: 55, baseType: !302, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1575, file: !1576, line: 56, baseType: !302, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1575, file: !1576, line: 58, baseType: !1213, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1575, file: !1576, line: 59, baseType: !1583, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!250, !1216, !1222}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1575, file: !1576, line: 61, baseType: !1587, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1573}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1575, file: !1576, line: 62, baseType: !1224, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1575, file: !1576, line: 64, baseType: !1233, size: 64, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1575, file: !1576, line: 66, baseType: !645, size: 64, offset: 512)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1575, file: !1576, line: 67, baseType: !1594, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!528, !1216}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1575, file: !1576, line: 69, baseType: !1598, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1216, !680, !688}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1575, file: !1576, line: 71, baseType: !1228, size: 64, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1197, file: !26, line: 785, baseType: !302, size: 64, offset: 5440)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1197, file: !26, line: 787, baseType: !1224, size: 64, offset: 5504)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1197, file: !26, line: 788, baseType: !1605, size: 64, offset: 5568)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1197, file: !26, line: 789, baseType: !1608, size: 64, offset: 5632)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1197, file: !26, line: 791, baseType: !1611, size: 64, offset: 5696)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1612, file: !26, line: 598, baseType: !53, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1612, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1612, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1612, file: !26, line: 601, baseType: !606, size: 8, offset: 96)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1612, file: !26, line: 602, baseType: !606, size: 8, offset: 104)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1197, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1197, file: !26, line: 795, baseType: !606, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1197, file: !26, line: 796, baseType: !606, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1197, file: !26, line: 797, baseType: !606, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1197, file: !26, line: 798, baseType: !606, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1197, file: !26, line: 799, baseType: !606, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !128, file: !79, line: 100, baseType: !7, size: 32, offset: 3520)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !128, file: !79, line: 101, baseType: !430, size: 320, offset: 3584)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !128, file: !79, line: 102, baseType: !1628, size: 64, offset: 3904)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1629, line: 34, baseType: !1630)
!1629 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1629, line: 25, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1630, file: !1629, line: 26, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1634, line: 27, baseType: !1635)
!1634 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1634, line: 13, size: 64, elements: !1636)
!1636 = !{!1637, !1647}
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1634, line: 14, baseType: !1638, size: 32)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1634, line: 14, size: 32, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1638, file: !1634, line: 15, baseType: !200, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1634, line: 16, baseType: !1642, size: 32)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1634, line: 16, size: 32, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1642, file: !1634, line: 18, baseType: !208, size: 8)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1642, file: !1634, line: 19, baseType: !1646, size: 24, offset: 8)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 24, elements: !251)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1635, file: !1634, line: 26, baseType: !192, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !128, file: !79, line: 103, baseType: !46, size: 32, offset: 3968)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !128, file: !79, line: 104, baseType: !297, size: 64, offset: 4032)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !128, file: !79, line: 105, baseType: !121, size: 128, offset: 4096)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !128, file: !79, line: 106, baseType: !121, size: 128, offset: 4224)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !128, file: !79, line: 108, baseType: !1653, size: 128, offset: 4352)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1654, line: 296, size: 128, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1653, file: !1654, line: 297, baseType: !180, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1653, file: !1654, line: 299, baseType: !114, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1653, file: !1654, line: 300, baseType: !116, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !128, file: !79, line: 109, baseType: !1653, size: 128, offset: 4480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !128, file: !79, line: 110, baseType: !606, size: 8, offset: 4608)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !128, file: !79, line: 113, baseType: !1662, size: 64, offset: 4672)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !79, line: 113, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !128, file: !79, line: 114, baseType: !1665, size: 64, offset: 4736)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !79, line: 114, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !128, file: !79, line: 116, baseType: !121, size: 128, offset: 4800)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !128, file: !79, line: 117, baseType: !1669, size: 64, offset: 4928)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !79, line: 117, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !128, file: !79, line: 119, baseType: !180, size: 32, offset: 4992)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !128, file: !79, line: 120, baseType: !46, size: 32, offset: 5024)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !128, file: !79, line: 121, baseType: !831, size: 64, offset: 5056)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !128, file: !79, line: 122, baseType: !1196, size: 64, offset: 5120)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !128, file: !79, line: 123, baseType: !1197, size: 5824, offset: 5184)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !128, file: !79, line: 124, baseType: !1677, size: 256, offset: 11008)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !488)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !128, file: !79, line: 125, baseType: !606, size: 8, offset: 11264)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !128, file: !79, line: 126, baseType: !606, size: 8, offset: 11272)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !128, file: !79, line: 127, baseType: !606, size: 8, offset: 11280)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !128, file: !79, line: 128, baseType: !46, size: 32, offset: 11296)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !128, file: !79, line: 129, baseType: !1465, size: 192, offset: 11328)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !128, file: !79, line: 131, baseType: !297, size: 64, offset: 11520)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !128, file: !79, line: 132, baseType: !507, size: 256, offset: 11584)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !128, file: !79, line: 138, baseType: !7, size: 32, offset: 11840)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !128, file: !79, line: 139, baseType: !200, size: 32, offset: 11872)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !128, file: !79, line: 140, baseType: !1465, size: 192, offset: 11904)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !128, file: !79, line: 141, baseType: !1465, size: 192, offset: 12096)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !118, file: !79, line: 70, baseType: !93, size: 32, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !79, line: 71, baseType: !78, size: 32, offset: 224)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !118, file: !79, line: 72, baseType: !116, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !118, file: !79, line: 73, baseType: !1693, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device_ops", file: !79, line: 61, size: 192, elements: !1696)
!1696 = !{!1697, !1701, !1702}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_free", scope: !1695, file: !79, line: 62, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!46, !117}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_register", scope: !1695, file: !79, line: 63, baseType: !1698, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disconnect", scope: !1695, file: !79, line: 64, baseType: !1698, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!1705 = !{!0, !1706, !1708, !1710, !1712, !1714, !1719, !1724}
!1706 = !DIGlobalVariableExpression(var: !1707, expr: !DIExpression())
!1707 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_device_disconnect208", scope: !2, file: !3, line: 119, type: !116, isLocal: true, isDefinition: true)
!1708 = !DIGlobalVariableExpression(var: !1709, expr: !DIExpression())
!1709 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_device_free209", scope: !2, file: !3, line: 143, type: !116, isLocal: true, isDefinition: true)
!1710 = !DIGlobalVariableExpression(var: !1711, expr: !DIExpression())
!1711 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_device_register210", scope: !2, file: !3, line: 183, type: !116, isLocal: true, isDefinition: true)
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_device_get_state211", scope: !2, file: !3, line: 262, type: !116, isLocal: true, isDefinition: true)
!1714 = !DIGlobalVariableExpression(var: !1715, expr: !DIExpression())
!1715 = distinct !DIGlobalVariable(scope: null, file: !104, line: 480, type: !1716, isLocal: true, isDefinition: true)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 168, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 21)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !1721, isLocal: true, isDefinition: true)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 216, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 27)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !1716, isLocal: true, isDefinition: true)
!1726 = !{i32 7, !"Dwarf Version", i32 5}
!1727 = !{i32 2, !"Debug Info Version", i32 3}
!1728 = !{i32 1, !"wchar_size", i32 2}
!1729 = !{i32 8, !"cf-protection-branch", i32 1}
!1730 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1731 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1732 = !{i32 1, !"Code Model", i32 2}
!1733 = !{i32 1, !"override-stack-alignment", i32 8}
!1734 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1735 = distinct !DISubprogram(name: "snd_device_new", scope: !3, file: !3, line: 29, type: !1736, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!46, !127, !78, !116, !1693}
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1748, !1752}
!1739 = !DILocalVariable(name: "card", arg: 1, scope: !1735, file: !3, line: 29, type: !127)
!1740 = !DILocalVariable(name: "type", arg: 2, scope: !1735, file: !3, line: 29, type: !78)
!1741 = !DILocalVariable(name: "device_data", arg: 3, scope: !1735, file: !3, line: 30, type: !116)
!1742 = !DILocalVariable(name: "ops", arg: 4, scope: !1735, file: !3, line: 30, type: !1693)
!1743 = !DILocalVariable(name: "dev", scope: !1735, file: !3, line: 32, type: !117)
!1744 = !DILocalVariable(name: "p", scope: !1735, file: !3, line: 33, type: !124)
!1745 = !DILocalVariable(name: "__ret_warn_on", scope: !1746, file: !3, line: 35, type: !46)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 35, column: 6)
!1747 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 35, column: 6)
!1748 = !DILocalVariable(name: "pdev", scope: !1749, file: !3, line: 49, type: !117)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 48, column: 40)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 48, column: 2)
!1751 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 48, column: 2)
!1752 = !DILocalVariable(name: "__mptr", scope: !1753, file: !3, line: 49, type: !116)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 49, column: 29)
!1754 = !DILocation(line: 29, column: 37, scope: !1735)
!1755 = !DILocation(line: 29, column: 64, scope: !1735)
!1756 = !DILocation(line: 30, column: 12, scope: !1735)
!1757 = !DILocation(line: 30, column: 54, scope: !1735)
!1758 = !DILocation(line: 32, column: 2, scope: !1735)
!1759 = !DILocation(line: 32, column: 21, scope: !1735)
!1760 = !DILocation(line: 33, column: 2, scope: !1735)
!1761 = !DILocation(line: 33, column: 20, scope: !1735)
!1762 = !DILocation(line: 35, column: 6, scope: !1746)
!1763 = !DILocation(line: 35, column: 6, scope: !1747)
!1764 = !DILocation(line: 35, column: 6, scope: !1735)
!1765 = !DILocation(line: 36, column: 3, scope: !1747)
!1766 = !DILocation(line: 37, column: 8, scope: !1735)
!1767 = !DILocation(line: 37, column: 6, scope: !1735)
!1768 = !DILocation(line: 38, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 38, column: 6)
!1770 = !DILocation(line: 38, column: 6, scope: !1735)
!1771 = !DILocation(line: 39, column: 3, scope: !1769)
!1772 = !DILocation(line: 40, column: 18, scope: !1735)
!1773 = !DILocation(line: 40, column: 23, scope: !1735)
!1774 = !DILocation(line: 40, column: 2, scope: !1735)
!1775 = !DILocation(line: 41, column: 14, scope: !1735)
!1776 = !DILocation(line: 41, column: 2, scope: !1735)
!1777 = !DILocation(line: 41, column: 7, scope: !1735)
!1778 = !DILocation(line: 41, column: 12, scope: !1735)
!1779 = !DILocation(line: 42, column: 14, scope: !1735)
!1780 = !DILocation(line: 42, column: 2, scope: !1735)
!1781 = !DILocation(line: 42, column: 7, scope: !1735)
!1782 = !DILocation(line: 42, column: 12, scope: !1735)
!1783 = !DILocation(line: 43, column: 2, scope: !1735)
!1784 = !DILocation(line: 43, column: 7, scope: !1735)
!1785 = !DILocation(line: 43, column: 13, scope: !1735)
!1786 = !DILocation(line: 44, column: 21, scope: !1735)
!1787 = !DILocation(line: 44, column: 2, scope: !1735)
!1788 = !DILocation(line: 44, column: 7, scope: !1735)
!1789 = !DILocation(line: 44, column: 19, scope: !1735)
!1790 = !DILocation(line: 45, column: 13, scope: !1735)
!1791 = !DILocation(line: 45, column: 2, scope: !1735)
!1792 = !DILocation(line: 45, column: 7, scope: !1735)
!1793 = !DILocation(line: 45, column: 11, scope: !1735)
!1794 = !DILocation(line: 48, column: 2, scope: !1751)
!1795 = !DILocation(line: 48, column: 2, scope: !1750)
!1796 = !DILocation(line: 49, column: 3, scope: !1749)
!1797 = !DILocation(line: 49, column: 22, scope: !1749)
!1798 = !DILocation(line: 49, column: 29, scope: !1753)
!1799 = !DILocation(line: 49, column: 29, scope: !1749)
!1800 = !DILocation(line: 50, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 50, column: 7)
!1802 = !DILocation(line: 50, column: 27, scope: !1801)
!1803 = !DILocation(line: 50, column: 49, scope: !1801)
!1804 = !DILocation(line: 50, column: 32, scope: !1801)
!1805 = !DILocation(line: 50, column: 7, scope: !1749)
!1806 = !DILocation(line: 51, column: 4, scope: !1801)
!1807 = !DILocation(line: 52, column: 2, scope: !1750)
!1808 = !DILocation(line: 52, column: 2, scope: !1749)
!1809 = distinct !{!1809, !1794, !1810, !1811, !1812}
!1810 = !DILocation(line: 52, column: 2, scope: !1751)
!1811 = !{!"llvm.loop.mustprogress"}
!1812 = !{!"llvm.loop.unroll.disable"}
!1813 = !DILocation(line: 54, column: 12, scope: !1735)
!1814 = !DILocation(line: 54, column: 17, scope: !1735)
!1815 = !DILocation(line: 54, column: 23, scope: !1735)
!1816 = !DILocation(line: 54, column: 2, scope: !1735)
!1817 = !DILocation(line: 55, column: 2, scope: !1735)
!1818 = !DILocation(line: 56, column: 1, scope: !1735)
!1819 = distinct !DISubprogram(name: "kzalloc", scope: !104, file: !104, line: 719, type: !1820, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!116, !297, !114}
!1822 = !{!1823, !1824}
!1823 = !DILocalVariable(name: "size", arg: 1, scope: !1819, file: !104, line: 719, type: !297)
!1824 = !DILocalVariable(name: "flags", arg: 2, scope: !1819, file: !104, line: 719, type: !114)
!1825 = !DILocation(line: 719, column: 52, scope: !1819)
!1826 = !DILocation(line: 719, column: 64, scope: !1819)
!1827 = !DILocation(line: 721, column: 17, scope: !1819)
!1828 = !DILocation(line: 721, column: 23, scope: !1819)
!1829 = !DILocation(line: 721, column: 29, scope: !1819)
!1830 = !DILocation(line: 721, column: 9, scope: !1819)
!1831 = !DILocation(line: 721, column: 2, scope: !1819)
!1832 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1833, file: !1833, line: 35, type: !1834, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1833 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !124}
!1836 = !{!1837}
!1837 = !DILocalVariable(name: "list", arg: 1, scope: !1832, file: !1833, line: 35, type: !124)
!1838 = !DILocation(line: 35, column: 53, scope: !1832)
!1839 = !DILocation(line: 37, column: 2, scope: !1832)
!1840 = !DILocation(line: 37, column: 2, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !1833, line: 37, column: 2)
!1842 = !DILocation(line: 37, column: 2, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !1833, line: 37, column: 2)
!1844 = !DILocation(line: 37, column: 2, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !1833, line: 37, column: 2)
!1846 = !DILocation(line: 38, column: 2, scope: !1832)
!1847 = !DILocation(line: 38, column: 2, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1832, file: !1833, line: 38, column: 2)
!1849 = !DILocation(line: 38, column: 2, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !1833, line: 38, column: 2)
!1851 = !DILocation(line: 38, column: 2, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !1833, line: 38, column: 2)
!1853 = !DILocation(line: 39, column: 1, scope: !1832)
!1854 = distinct !DISubprogram(name: "list_is_head", scope: !1833, file: !1833, line: 362, type: !1855, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1859)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!46, !1857, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1859 = !{!1860, !1861}
!1860 = !DILocalVariable(name: "list", arg: 1, scope: !1854, file: !1833, line: 362, type: !1857)
!1861 = !DILocalVariable(name: "head", arg: 2, scope: !1854, file: !1833, line: 362, type: !1857)
!1862 = !DILocation(line: 362, column: 56, scope: !1854)
!1863 = !DILocation(line: 362, column: 86, scope: !1854)
!1864 = !DILocation(line: 364, column: 9, scope: !1854)
!1865 = !DILocation(line: 364, column: 17, scope: !1854)
!1866 = !DILocation(line: 364, column: 14, scope: !1854)
!1867 = !DILocation(line: 364, column: 2, scope: !1854)
!1868 = distinct !DISubprogram(name: "list_add", scope: !1833, file: !1833, line: 167, type: !1869, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !124, !124}
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "new", arg: 1, scope: !1868, file: !1833, line: 167, type: !124)
!1873 = !DILocalVariable(name: "head", arg: 2, scope: !1868, file: !1833, line: 167, type: !124)
!1874 = !DILocation(line: 167, column: 47, scope: !1868)
!1875 = !DILocation(line: 167, column: 70, scope: !1868)
!1876 = !DILocation(line: 169, column: 13, scope: !1868)
!1877 = !DILocation(line: 169, column: 18, scope: !1868)
!1878 = !DILocation(line: 169, column: 24, scope: !1868)
!1879 = !DILocation(line: 169, column: 30, scope: !1868)
!1880 = !DILocation(line: 169, column: 2, scope: !1868)
!1881 = !DILocation(line: 170, column: 1, scope: !1868)
!1882 = distinct !DISubprogram(name: "snd_device_disconnect", scope: !3, file: !3, line: 106, type: !1883, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !127, !116}
!1885 = !{!1886, !1887, !1888, !1889}
!1886 = !DILocalVariable(name: "card", arg: 1, scope: !1882, file: !3, line: 106, type: !127)
!1887 = !DILocalVariable(name: "device_data", arg: 2, scope: !1882, file: !3, line: 106, type: !116)
!1888 = !DILocalVariable(name: "dev", scope: !1882, file: !3, line: 108, type: !117)
!1889 = !DILocalVariable(name: "__ret_warn_on", scope: !1890, file: !3, line: 110, type: !46)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 110, column: 6)
!1891 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 110, column: 6)
!1892 = !DILocation(line: 106, column: 45, scope: !1882)
!1893 = !DILocation(line: 106, column: 57, scope: !1882)
!1894 = !DILocation(line: 108, column: 2, scope: !1882)
!1895 = !DILocation(line: 108, column: 21, scope: !1882)
!1896 = !DILocation(line: 110, column: 6, scope: !1890)
!1897 = !DILocation(line: 110, column: 6, scope: !1891)
!1898 = !DILocation(line: 110, column: 6, scope: !1882)
!1899 = !DILocation(line: 111, column: 3, scope: !1891)
!1900 = !DILocation(line: 112, column: 21, scope: !1882)
!1901 = !DILocation(line: 112, column: 27, scope: !1882)
!1902 = !DILocation(line: 112, column: 8, scope: !1882)
!1903 = !DILocation(line: 112, column: 6, scope: !1882)
!1904 = !DILocation(line: 113, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 113, column: 6)
!1906 = !DILocation(line: 113, column: 6, scope: !1882)
!1907 = !DILocation(line: 114, column: 27, scope: !1905)
!1908 = !DILocation(line: 114, column: 3, scope: !1905)
!1909 = !DILocation(line: 118, column: 1, scope: !1882)
!1910 = distinct !DISubprogram(name: "look_for_dev", scope: !3, file: !3, line: 82, type: !1911, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!117, !127, !116}
!1913 = !{!1914, !1915, !1916, !1917, !1920}
!1914 = !DILocalVariable(name: "card", arg: 1, scope: !1910, file: !3, line: 82, type: !127)
!1915 = !DILocalVariable(name: "device_data", arg: 2, scope: !1910, file: !3, line: 82, type: !116)
!1916 = !DILocalVariable(name: "dev", scope: !1910, file: !3, line: 84, type: !117)
!1917 = !DILocalVariable(name: "__mptr", scope: !1918, file: !3, line: 86, type: !116)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 86, column: 2)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 86, column: 2)
!1920 = !DILocalVariable(name: "__mptr", scope: !1921, file: !3, line: 86, type: !116)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 86, column: 2)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 86, column: 2)
!1923 = !DILocation(line: 82, column: 57, scope: !1910)
!1924 = !DILocation(line: 82, column: 69, scope: !1910)
!1925 = !DILocation(line: 84, column: 2, scope: !1910)
!1926 = !DILocation(line: 84, column: 21, scope: !1910)
!1927 = !DILocation(line: 86, column: 2, scope: !1918)
!1928 = !DILocation(line: 86, column: 2, scope: !1919)
!1929 = !DILocation(line: 86, column: 2, scope: !1922)
!1930 = !DILocation(line: 87, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 87, column: 7)
!1932 = !DILocation(line: 87, column: 12, scope: !1931)
!1933 = !DILocation(line: 87, column: 27, scope: !1931)
!1934 = !DILocation(line: 87, column: 24, scope: !1931)
!1935 = !DILocation(line: 87, column: 7, scope: !1922)
!1936 = !DILocation(line: 88, column: 11, scope: !1931)
!1937 = !DILocation(line: 88, column: 4, scope: !1931)
!1938 = !DILocation(line: 86, column: 2, scope: !1921)
!1939 = distinct !{!1939, !1928, !1940, !1811, !1812}
!1940 = !DILocation(line: 88, column: 11, scope: !1919)
!1941 = !DILocation(line: 90, column: 2, scope: !1910)
!1942 = !DILocation(line: 91, column: 1, scope: !1910)
!1943 = distinct !DISubprogram(name: "__snd_device_disconnect", scope: !3, file: !3, line: 59, type: !1944, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !117}
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "dev", arg: 1, scope: !1943, file: !3, line: 59, type: !117)
!1948 = !DILocation(line: 59, column: 56, scope: !1943)
!1949 = !DILocation(line: 61, column: 6, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 61, column: 6)
!1951 = !DILocation(line: 61, column: 11, scope: !1950)
!1952 = !DILocation(line: 61, column: 17, scope: !1950)
!1953 = !DILocation(line: 61, column: 6, scope: !1943)
!1954 = !DILocation(line: 62, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 62, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 61, column: 42)
!1957 = !DILocation(line: 62, column: 12, scope: !1955)
!1958 = !DILocation(line: 62, column: 17, scope: !1955)
!1959 = !DILocation(line: 62, column: 32, scope: !1955)
!1960 = !DILocation(line: 63, column: 7, scope: !1955)
!1961 = !DILocation(line: 63, column: 12, scope: !1955)
!1962 = !DILocation(line: 63, column: 17, scope: !1955)
!1963 = !DILocation(line: 63, column: 32, scope: !1955)
!1964 = !DILocation(line: 62, column: 7, scope: !1956)
!1965 = !DILocation(line: 64, column: 4, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 64, column: 4)
!1967 = !DILocation(line: 64, column: 4, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 64, column: 4)
!1969 = !DILocation(line: 64, column: 4, scope: !1955)
!1970 = !DILocation(line: 65, column: 3, scope: !1956)
!1971 = !DILocation(line: 65, column: 8, scope: !1956)
!1972 = !DILocation(line: 65, column: 14, scope: !1956)
!1973 = !DILocation(line: 66, column: 2, scope: !1956)
!1974 = !DILocation(line: 67, column: 1, scope: !1943)
!1975 = distinct !DISubprogram(name: "snd_device_free", scope: !3, file: !3, line: 130, type: !1883, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1976 = !{!1977, !1978, !1979, !1980}
!1977 = !DILocalVariable(name: "card", arg: 1, scope: !1975, file: !3, line: 130, type: !127)
!1978 = !DILocalVariable(name: "device_data", arg: 2, scope: !1975, file: !3, line: 130, type: !116)
!1979 = !DILocalVariable(name: "dev", scope: !1975, file: !3, line: 132, type: !117)
!1980 = !DILocalVariable(name: "__ret_warn_on", scope: !1981, file: !3, line: 134, type: !46)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 134, column: 6)
!1982 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 134, column: 6)
!1983 = !DILocation(line: 130, column: 39, scope: !1975)
!1984 = !DILocation(line: 130, column: 51, scope: !1975)
!1985 = !DILocation(line: 132, column: 2, scope: !1975)
!1986 = !DILocation(line: 132, column: 21, scope: !1975)
!1987 = !DILocation(line: 134, column: 6, scope: !1981)
!1988 = !DILocation(line: 134, column: 6, scope: !1982)
!1989 = !DILocation(line: 134, column: 6, scope: !1975)
!1990 = !DILocation(line: 135, column: 3, scope: !1982)
!1991 = !DILocation(line: 136, column: 21, scope: !1975)
!1992 = !DILocation(line: 136, column: 27, scope: !1975)
!1993 = !DILocation(line: 136, column: 8, scope: !1975)
!1994 = !DILocation(line: 136, column: 6, scope: !1975)
!1995 = !DILocation(line: 137, column: 6, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 137, column: 6)
!1997 = !DILocation(line: 137, column: 6, scope: !1975)
!1998 = !DILocation(line: 138, column: 21, scope: !1996)
!1999 = !DILocation(line: 138, column: 3, scope: !1996)
!2000 = !DILocation(line: 142, column: 1, scope: !1975)
!2001 = distinct !DISubprogram(name: "__snd_device_free", scope: !3, file: !3, line: 69, type: !1944, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!2002 = !{!2003}
!2003 = !DILocalVariable(name: "dev", arg: 1, scope: !2001, file: !3, line: 69, type: !117)
!2004 = !DILocation(line: 69, column: 50, scope: !2001)
!2005 = !DILocation(line: 72, column: 12, scope: !2001)
!2006 = !DILocation(line: 72, column: 17, scope: !2001)
!2007 = !DILocation(line: 72, column: 2, scope: !2001)
!2008 = !DILocation(line: 74, column: 26, scope: !2001)
!2009 = !DILocation(line: 74, column: 2, scope: !2001)
!2010 = !DILocation(line: 75, column: 6, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 75, column: 6)
!2012 = !DILocation(line: 75, column: 11, scope: !2011)
!2013 = !DILocation(line: 75, column: 16, scope: !2011)
!2014 = !DILocation(line: 75, column: 6, scope: !2001)
!2015 = !DILocation(line: 76, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 76, column: 7)
!2017 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 75, column: 26)
!2018 = !DILocation(line: 76, column: 12, scope: !2016)
!2019 = !DILocation(line: 76, column: 17, scope: !2016)
!2020 = !DILocation(line: 76, column: 26, scope: !2016)
!2021 = !DILocation(line: 76, column: 7, scope: !2017)
!2022 = !DILocation(line: 77, column: 4, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 77, column: 4)
!2024 = !DILocation(line: 77, column: 4, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 77, column: 4)
!2026 = !DILocation(line: 77, column: 4, scope: !2016)
!2027 = !DILocation(line: 78, column: 2, scope: !2017)
!2028 = !DILocation(line: 79, column: 8, scope: !2001)
!2029 = !DILocation(line: 79, column: 2, scope: !2001)
!2030 = !DILocation(line: 80, column: 1, scope: !2001)
!2031 = distinct !DISubprogram(name: "snd_device_register", scope: !3, file: !3, line: 171, type: !2032, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!46, !127, !116}
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DILocalVariable(name: "card", arg: 1, scope: !2031, file: !3, line: 171, type: !127)
!2036 = !DILocalVariable(name: "device_data", arg: 2, scope: !2031, file: !3, line: 171, type: !116)
!2037 = !DILocalVariable(name: "dev", scope: !2031, file: !3, line: 173, type: !117)
!2038 = !DILocalVariable(name: "__ret_warn_on", scope: !2039, file: !3, line: 175, type: !46)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 175, column: 6)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 175, column: 6)
!2041 = !DILocation(line: 171, column: 42, scope: !2031)
!2042 = !DILocation(line: 171, column: 54, scope: !2031)
!2043 = !DILocation(line: 173, column: 2, scope: !2031)
!2044 = !DILocation(line: 173, column: 21, scope: !2031)
!2045 = !DILocation(line: 175, column: 6, scope: !2039)
!2046 = !DILocation(line: 175, column: 6, scope: !2040)
!2047 = !DILocation(line: 175, column: 6, scope: !2031)
!2048 = !DILocation(line: 176, column: 3, scope: !2040)
!2049 = !DILocation(line: 177, column: 21, scope: !2031)
!2050 = !DILocation(line: 177, column: 27, scope: !2031)
!2051 = !DILocation(line: 177, column: 8, scope: !2031)
!2052 = !DILocation(line: 177, column: 6, scope: !2031)
!2053 = !DILocation(line: 178, column: 6, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 178, column: 6)
!2055 = !DILocation(line: 178, column: 6, scope: !2031)
!2056 = !DILocation(line: 179, column: 32, scope: !2054)
!2057 = !DILocation(line: 179, column: 10, scope: !2054)
!2058 = !DILocation(line: 179, column: 3, scope: !2054)
!2059 = !DILocation(line: 180, column: 2, scope: !2031)
!2060 = !DILocation(line: 180, column: 2, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 180, column: 2)
!2062 = !DILocation(line: 181, column: 2, scope: !2031)
!2063 = !DILocation(line: 182, column: 1, scope: !2031)
!2064 = distinct !DISubprogram(name: "__snd_device_register", scope: !3, file: !3, line: 145, type: !1699, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "dev", arg: 1, scope: !2064, file: !3, line: 145, type: !117)
!2067 = !DILocalVariable(name: "err", scope: !2068, file: !3, line: 149, type: !46)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 148, column: 31)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 148, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 147, column: 37)
!2071 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 147, column: 6)
!2072 = !DILocation(line: 145, column: 53, scope: !2064)
!2073 = !DILocation(line: 147, column: 6, scope: !2071)
!2074 = !DILocation(line: 147, column: 11, scope: !2071)
!2075 = !DILocation(line: 147, column: 17, scope: !2071)
!2076 = !DILocation(line: 147, column: 6, scope: !2064)
!2077 = !DILocation(line: 148, column: 7, scope: !2069)
!2078 = !DILocation(line: 148, column: 12, scope: !2069)
!2079 = !DILocation(line: 148, column: 17, scope: !2069)
!2080 = !DILocation(line: 148, column: 7, scope: !2070)
!2081 = !DILocation(line: 149, column: 4, scope: !2068)
!2082 = !DILocation(line: 149, column: 8, scope: !2068)
!2083 = !DILocation(line: 149, column: 14, scope: !2068)
!2084 = !DILocation(line: 149, column: 19, scope: !2068)
!2085 = !DILocation(line: 149, column: 24, scope: !2068)
!2086 = !DILocation(line: 149, column: 37, scope: !2068)
!2087 = !DILocation(line: 150, column: 8, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 150, column: 8)
!2089 = !DILocation(line: 150, column: 12, scope: !2088)
!2090 = !DILocation(line: 150, column: 8, scope: !2068)
!2091 = !DILocation(line: 151, column: 12, scope: !2088)
!2092 = !DILocation(line: 151, column: 5, scope: !2088)
!2093 = !DILocation(line: 152, column: 3, scope: !2069)
!2094 = !DILocation(line: 152, column: 3, scope: !2068)
!2095 = !DILocation(line: 153, column: 3, scope: !2070)
!2096 = !DILocation(line: 153, column: 8, scope: !2070)
!2097 = !DILocation(line: 153, column: 14, scope: !2070)
!2098 = !DILocation(line: 154, column: 2, scope: !2070)
!2099 = !DILocation(line: 155, column: 2, scope: !2064)
!2100 = !DILocation(line: 156, column: 1, scope: !2064)
!2101 = distinct !DISubprogram(name: "snd_device_register_all", scope: !3, file: !3, line: 189, type: !2102, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!46, !127}
!2104 = !{!2105, !2106, !2107, !2108, !2111, !2114}
!2105 = !DILocalVariable(name: "card", arg: 1, scope: !2101, file: !3, line: 189, type: !127)
!2106 = !DILocalVariable(name: "dev", scope: !2101, file: !3, line: 191, type: !117)
!2107 = !DILocalVariable(name: "err", scope: !2101, file: !3, line: 192, type: !46)
!2108 = !DILocalVariable(name: "__ret_warn_on", scope: !2109, file: !3, line: 194, type: !46)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 194, column: 6)
!2110 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 194, column: 6)
!2111 = !DILocalVariable(name: "__mptr", scope: !2112, file: !3, line: 196, type: !116)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 196, column: 2)
!2113 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 196, column: 2)
!2114 = !DILocalVariable(name: "__mptr", scope: !2115, file: !3, line: 196, type: !116)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 196, column: 2)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 196, column: 2)
!2117 = !DILocation(line: 189, column: 46, scope: !2101)
!2118 = !DILocation(line: 191, column: 2, scope: !2101)
!2119 = !DILocation(line: 191, column: 21, scope: !2101)
!2120 = !DILocation(line: 192, column: 2, scope: !2101)
!2121 = !DILocation(line: 192, column: 6, scope: !2101)
!2122 = !DILocation(line: 194, column: 6, scope: !2109)
!2123 = !DILocation(line: 194, column: 6, scope: !2110)
!2124 = !DILocation(line: 194, column: 6, scope: !2101)
!2125 = !DILocation(line: 195, column: 3, scope: !2110)
!2126 = !DILocation(line: 196, column: 2, scope: !2112)
!2127 = !DILocation(line: 196, column: 2, scope: !2113)
!2128 = !DILocation(line: 196, column: 2, scope: !2116)
!2129 = !DILocation(line: 197, column: 31, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 196, column: 49)
!2131 = !DILocation(line: 197, column: 9, scope: !2130)
!2132 = !DILocation(line: 197, column: 7, scope: !2130)
!2133 = !DILocation(line: 198, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 198, column: 7)
!2135 = !DILocation(line: 198, column: 11, scope: !2134)
!2136 = !DILocation(line: 198, column: 7, scope: !2130)
!2137 = !DILocation(line: 199, column: 11, scope: !2134)
!2138 = !DILocation(line: 199, column: 4, scope: !2134)
!2139 = !DILocation(line: 200, column: 2, scope: !2130)
!2140 = !DILocation(line: 196, column: 2, scope: !2115)
!2141 = distinct !{!2141, !2127, !2142, !1811, !1812}
!2142 = !DILocation(line: 200, column: 2, scope: !2113)
!2143 = !DILocation(line: 201, column: 2, scope: !2101)
!2144 = !DILocation(line: 202, column: 1, scope: !2101)
!2145 = distinct !DISubprogram(name: "snd_device_disconnect_all", scope: !3, file: !3, line: 208, type: !1192, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2146)
!2146 = !{!2147, !2148, !2149, !2152, !2155}
!2147 = !DILocalVariable(name: "card", arg: 1, scope: !2145, file: !3, line: 208, type: !127)
!2148 = !DILocalVariable(name: "dev", scope: !2145, file: !3, line: 210, type: !117)
!2149 = !DILocalVariable(name: "__ret_warn_on", scope: !2150, file: !3, line: 212, type: !46)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 212, column: 6)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 212, column: 6)
!2152 = !DILocalVariable(name: "__mptr", scope: !2153, file: !3, line: 214, type: !116)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 214, column: 2)
!2154 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 214, column: 2)
!2155 = !DILocalVariable(name: "__mptr", scope: !2156, file: !3, line: 214, type: !116)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 214, column: 2)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 214, column: 2)
!2158 = !DILocation(line: 208, column: 49, scope: !2145)
!2159 = !DILocation(line: 210, column: 2, scope: !2145)
!2160 = !DILocation(line: 210, column: 21, scope: !2145)
!2161 = !DILocation(line: 212, column: 6, scope: !2150)
!2162 = !DILocation(line: 212, column: 6, scope: !2151)
!2163 = !DILocation(line: 212, column: 6, scope: !2145)
!2164 = !DILocation(line: 213, column: 3, scope: !2151)
!2165 = !DILocation(line: 214, column: 2, scope: !2153)
!2166 = !DILocation(line: 214, column: 2, scope: !2154)
!2167 = !DILocation(line: 214, column: 2, scope: !2157)
!2168 = !DILocation(line: 215, column: 27, scope: !2157)
!2169 = !DILocation(line: 215, column: 3, scope: !2157)
!2170 = !DILocation(line: 214, column: 2, scope: !2156)
!2171 = distinct !{!2171, !2166, !2172, !1811, !1812}
!2172 = !DILocation(line: 215, column: 30, scope: !2154)
!2173 = !DILocation(line: 216, column: 1, scope: !2145)
!2174 = distinct !DISubprogram(name: "snd_device_free_all", scope: !3, file: !3, line: 222, type: !1192, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2182, !2185, !2187, !2190, !2193, !2195}
!2176 = !DILocalVariable(name: "card", arg: 1, scope: !2174, file: !3, line: 222, type: !127)
!2177 = !DILocalVariable(name: "dev", scope: !2174, file: !3, line: 224, type: !117)
!2178 = !DILocalVariable(name: "next", scope: !2174, file: !3, line: 224, type: !117)
!2179 = !DILocalVariable(name: "__ret_warn_on", scope: !2180, file: !3, line: 226, type: !46)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 226, column: 6)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 226, column: 6)
!2182 = !DILocalVariable(name: "__mptr", scope: !2183, file: !3, line: 228, type: !116)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 228, column: 2)
!2184 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 228, column: 2)
!2185 = !DILocalVariable(name: "__mptr", scope: !2186, file: !3, line: 228, type: !116)
!2186 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 228, column: 2)
!2187 = !DILocalVariable(name: "__mptr", scope: !2188, file: !3, line: 228, type: !116)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 228, column: 2)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 228, column: 2)
!2190 = !DILocalVariable(name: "__mptr", scope: !2191, file: !3, line: 237, type: !116)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 237, column: 2)
!2192 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 237, column: 2)
!2193 = !DILocalVariable(name: "__mptr", scope: !2194, file: !3, line: 237, type: !116)
!2194 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 237, column: 2)
!2195 = !DILocalVariable(name: "__mptr", scope: !2196, file: !3, line: 237, type: !116)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 237, column: 2)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 237, column: 2)
!2198 = !DILocation(line: 222, column: 43, scope: !2174)
!2199 = !DILocation(line: 224, column: 2, scope: !2174)
!2200 = !DILocation(line: 224, column: 21, scope: !2174)
!2201 = !DILocation(line: 224, column: 27, scope: !2174)
!2202 = !DILocation(line: 226, column: 6, scope: !2180)
!2203 = !DILocation(line: 226, column: 6, scope: !2181)
!2204 = !DILocation(line: 226, column: 6, scope: !2174)
!2205 = !DILocation(line: 227, column: 3, scope: !2181)
!2206 = !DILocation(line: 228, column: 2, scope: !2183)
!2207 = !DILocation(line: 228, column: 2, scope: !2184)
!2208 = !DILocation(line: 228, column: 2, scope: !2186)
!2209 = !DILocation(line: 228, column: 2, scope: !2189)
!2210 = !DILocation(line: 230, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 230, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 228, column: 68)
!2213 = !DILocation(line: 230, column: 12, scope: !2211)
!2214 = !DILocation(line: 230, column: 17, scope: !2211)
!2215 = !DILocation(line: 230, column: 38, scope: !2211)
!2216 = !DILocation(line: 231, column: 7, scope: !2211)
!2217 = !DILocation(line: 231, column: 12, scope: !2211)
!2218 = !DILocation(line: 231, column: 17, scope: !2211)
!2219 = !DILocation(line: 230, column: 7, scope: !2212)
!2220 = !DILocation(line: 232, column: 4, scope: !2211)
!2221 = !DILocation(line: 233, column: 21, scope: !2212)
!2222 = !DILocation(line: 233, column: 3, scope: !2212)
!2223 = !DILocation(line: 234, column: 2, scope: !2212)
!2224 = !DILocation(line: 228, column: 2, scope: !2188)
!2225 = distinct !{!2225, !2207, !2226, !1811, !1812}
!2226 = !DILocation(line: 234, column: 2, scope: !2184)
!2227 = !DILocation(line: 237, column: 2, scope: !2191)
!2228 = !DILocation(line: 237, column: 2, scope: !2192)
!2229 = !DILocation(line: 237, column: 2, scope: !2194)
!2230 = !DILocation(line: 237, column: 2, scope: !2197)
!2231 = !DILocation(line: 238, column: 21, scope: !2197)
!2232 = !DILocation(line: 238, column: 3, scope: !2197)
!2233 = !DILocation(line: 237, column: 2, scope: !2196)
!2234 = distinct !{!2234, !2228, !2235, !1811, !1812}
!2235 = !DILocation(line: 238, column: 24, scope: !2192)
!2236 = !DILocation(line: 239, column: 1, scope: !2174)
!2237 = distinct !DISubprogram(name: "snd_device_get_state", scope: !3, file: !3, line: 253, type: !2032, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DILocalVariable(name: "card", arg: 1, scope: !2237, file: !3, line: 253, type: !127)
!2240 = !DILocalVariable(name: "device_data", arg: 2, scope: !2237, file: !3, line: 253, type: !116)
!2241 = !DILocalVariable(name: "dev", scope: !2237, file: !3, line: 255, type: !117)
!2242 = !DILocation(line: 253, column: 43, scope: !2237)
!2243 = !DILocation(line: 253, column: 55, scope: !2237)
!2244 = !DILocation(line: 255, column: 2, scope: !2237)
!2245 = !DILocation(line: 255, column: 21, scope: !2237)
!2246 = !DILocation(line: 257, column: 21, scope: !2237)
!2247 = !DILocation(line: 257, column: 27, scope: !2237)
!2248 = !DILocation(line: 257, column: 8, scope: !2237)
!2249 = !DILocation(line: 257, column: 6, scope: !2237)
!2250 = !DILocation(line: 258, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 258, column: 6)
!2252 = !DILocation(line: 258, column: 6, scope: !2237)
!2253 = !DILocation(line: 259, column: 10, scope: !2251)
!2254 = !DILocation(line: 259, column: 15, scope: !2251)
!2255 = !DILocation(line: 259, column: 3, scope: !2251)
!2256 = !DILocation(line: 260, column: 2, scope: !2237)
!2257 = !DILocation(line: 261, column: 1, scope: !2237)
!2258 = distinct !DISubprogram(name: "kmalloc", scope: !104, file: !104, line: 591, type: !1820, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2259 = !{!2260, !2261, !2262}
!2260 = !DILocalVariable(name: "size", arg: 1, scope: !2258, file: !104, line: 591, type: !297)
!2261 = !DILocalVariable(name: "flags", arg: 2, scope: !2258, file: !104, line: 591, type: !114)
!2262 = !DILocalVariable(name: "index", scope: !2263, file: !104, line: 594, type: !7)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !104, line: 593, column: 42)
!2264 = distinct !DILexicalBlock(scope: !2258, file: !104, line: 593, column: 6)
!2265 = !DILocation(line: 591, column: 61, scope: !2258)
!2266 = !DILocation(line: 591, column: 73, scope: !2258)
!2267 = !DILocation(line: 593, column: 27, scope: !2264)
!2268 = !DILocation(line: 593, column: 6, scope: !2264)
!2269 = !DILocation(line: 593, column: 33, scope: !2264)
!2270 = !DILocation(line: 593, column: 36, scope: !2264)
!2271 = !DILocation(line: 593, column: 6, scope: !2258)
!2272 = !DILocation(line: 594, column: 3, scope: !2263)
!2273 = !DILocation(line: 594, column: 16, scope: !2263)
!2274 = !DILocation(line: 596, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2263, file: !104, line: 596, column: 7)
!2276 = !DILocation(line: 596, column: 12, scope: !2275)
!2277 = !DILocation(line: 596, column: 7, scope: !2263)
!2278 = !DILocation(line: 597, column: 25, scope: !2275)
!2279 = !DILocation(line: 597, column: 31, scope: !2275)
!2280 = !DILocation(line: 597, column: 11, scope: !2275)
!2281 = !DILocation(line: 597, column: 4, scope: !2275)
!2282 = !DILocation(line: 599, column: 11, scope: !2263)
!2283 = !DILocation(line: 599, column: 9, scope: !2263)
!2284 = !DILocation(line: 601, column: 33, scope: !2263)
!2285 = !DILocation(line: 601, column: 40, scope: !2263)
!2286 = !DILocation(line: 601, column: 20, scope: !2263)
!2287 = !DILocation(line: 601, column: 5, scope: !2263)
!2288 = !DILocation(line: 601, column: 51, scope: !2263)
!2289 = !DILocation(line: 602, column: 5, scope: !2263)
!2290 = !DILocation(line: 602, column: 12, scope: !2263)
!2291 = !DILocation(line: 600, column: 10, scope: !2263)
!2292 = !DILocation(line: 600, column: 3, scope: !2263)
!2293 = !DILocation(line: 603, column: 2, scope: !2264)
!2294 = !DILocation(line: 604, column: 19, scope: !2258)
!2295 = !DILocation(line: 604, column: 25, scope: !2258)
!2296 = !DILocation(line: 604, column: 9, scope: !2258)
!2297 = !DILocation(line: 604, column: 2, scope: !2258)
!2298 = !DILocation(line: 605, column: 1, scope: !2258)
!2299 = !DISubprogram(name: "kmalloc_large", scope: !104, file: !104, line: 531, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2300 = distinct !DISubprogram(name: "__kmalloc_index", scope: !104, file: !104, line: 444, type: !2301, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!7, !297, !606}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "size", arg: 1, scope: !2300, file: !104, line: 444, type: !297)
!2305 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2300, file: !104, line: 445, type: !606)
!2306 = !DILocation(line: 444, column: 60, scope: !2300)
!2307 = !DILocation(line: 445, column: 16, scope: !2300)
!2308 = !DILocation(line: 447, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 447, column: 6)
!2310 = !DILocation(line: 447, column: 6, scope: !2300)
!2311 = !DILocation(line: 448, column: 3, scope: !2309)
!2312 = !DILocation(line: 450, column: 6, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 450, column: 6)
!2314 = !DILocation(line: 450, column: 11, scope: !2313)
!2315 = !DILocation(line: 450, column: 6, scope: !2300)
!2316 = !DILocation(line: 451, column: 3, scope: !2313)
!2317 = !DILocation(line: 453, column: 32, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 453, column: 6)
!2319 = !DILocation(line: 453, column: 37, scope: !2318)
!2320 = !DILocation(line: 453, column: 42, scope: !2318)
!2321 = !DILocation(line: 453, column: 45, scope: !2318)
!2322 = !DILocation(line: 453, column: 50, scope: !2318)
!2323 = !DILocation(line: 453, column: 6, scope: !2300)
!2324 = !DILocation(line: 454, column: 3, scope: !2318)
!2325 = !DILocation(line: 455, column: 32, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 455, column: 6)
!2327 = !DILocation(line: 455, column: 37, scope: !2326)
!2328 = !DILocation(line: 455, column: 43, scope: !2326)
!2329 = !DILocation(line: 455, column: 46, scope: !2326)
!2330 = !DILocation(line: 455, column: 51, scope: !2326)
!2331 = !DILocation(line: 455, column: 6, scope: !2300)
!2332 = !DILocation(line: 456, column: 3, scope: !2326)
!2333 = !DILocation(line: 457, column: 6, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 457, column: 6)
!2335 = !DILocation(line: 457, column: 11, scope: !2334)
!2336 = !DILocation(line: 457, column: 6, scope: !2300)
!2337 = !DILocation(line: 457, column: 26, scope: !2334)
!2338 = !DILocation(line: 458, column: 6, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 458, column: 6)
!2340 = !DILocation(line: 458, column: 11, scope: !2339)
!2341 = !DILocation(line: 458, column: 6, scope: !2300)
!2342 = !DILocation(line: 458, column: 26, scope: !2339)
!2343 = !DILocation(line: 459, column: 6, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 459, column: 6)
!2345 = !DILocation(line: 459, column: 11, scope: !2344)
!2346 = !DILocation(line: 459, column: 6, scope: !2300)
!2347 = !DILocation(line: 459, column: 26, scope: !2344)
!2348 = !DILocation(line: 460, column: 6, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 460, column: 6)
!2350 = !DILocation(line: 460, column: 11, scope: !2349)
!2351 = !DILocation(line: 460, column: 6, scope: !2300)
!2352 = !DILocation(line: 460, column: 26, scope: !2349)
!2353 = !DILocation(line: 461, column: 6, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 461, column: 6)
!2355 = !DILocation(line: 461, column: 11, scope: !2354)
!2356 = !DILocation(line: 461, column: 6, scope: !2300)
!2357 = !DILocation(line: 461, column: 26, scope: !2354)
!2358 = !DILocation(line: 462, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 462, column: 6)
!2360 = !DILocation(line: 462, column: 11, scope: !2359)
!2361 = !DILocation(line: 462, column: 6, scope: !2300)
!2362 = !DILocation(line: 462, column: 26, scope: !2359)
!2363 = !DILocation(line: 463, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 463, column: 6)
!2365 = !DILocation(line: 463, column: 11, scope: !2364)
!2366 = !DILocation(line: 463, column: 6, scope: !2300)
!2367 = !DILocation(line: 463, column: 26, scope: !2364)
!2368 = !DILocation(line: 464, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 464, column: 6)
!2370 = !DILocation(line: 464, column: 11, scope: !2369)
!2371 = !DILocation(line: 464, column: 6, scope: !2300)
!2372 = !DILocation(line: 464, column: 26, scope: !2369)
!2373 = !DILocation(line: 465, column: 6, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 465, column: 6)
!2375 = !DILocation(line: 465, column: 11, scope: !2374)
!2376 = !DILocation(line: 465, column: 6, scope: !2300)
!2377 = !DILocation(line: 465, column: 26, scope: !2374)
!2378 = !DILocation(line: 466, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 466, column: 6)
!2380 = !DILocation(line: 466, column: 11, scope: !2379)
!2381 = !DILocation(line: 466, column: 6, scope: !2300)
!2382 = !DILocation(line: 466, column: 26, scope: !2379)
!2383 = !DILocation(line: 467, column: 6, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 467, column: 6)
!2385 = !DILocation(line: 467, column: 11, scope: !2384)
!2386 = !DILocation(line: 467, column: 6, scope: !2300)
!2387 = !DILocation(line: 467, column: 26, scope: !2384)
!2388 = !DILocation(line: 468, column: 6, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 468, column: 6)
!2390 = !DILocation(line: 468, column: 11, scope: !2389)
!2391 = !DILocation(line: 468, column: 6, scope: !2300)
!2392 = !DILocation(line: 468, column: 26, scope: !2389)
!2393 = !DILocation(line: 469, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 469, column: 6)
!2395 = !DILocation(line: 469, column: 11, scope: !2394)
!2396 = !DILocation(line: 469, column: 6, scope: !2300)
!2397 = !DILocation(line: 469, column: 26, scope: !2394)
!2398 = !DILocation(line: 470, column: 6, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 470, column: 6)
!2400 = !DILocation(line: 470, column: 11, scope: !2399)
!2401 = !DILocation(line: 470, column: 6, scope: !2300)
!2402 = !DILocation(line: 470, column: 26, scope: !2399)
!2403 = !DILocation(line: 471, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 471, column: 6)
!2405 = !DILocation(line: 471, column: 11, scope: !2404)
!2406 = !DILocation(line: 471, column: 6, scope: !2300)
!2407 = !DILocation(line: 471, column: 26, scope: !2404)
!2408 = !DILocation(line: 472, column: 6, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 472, column: 6)
!2410 = !DILocation(line: 472, column: 11, scope: !2409)
!2411 = !DILocation(line: 472, column: 6, scope: !2300)
!2412 = !DILocation(line: 472, column: 26, scope: !2409)
!2413 = !DILocation(line: 473, column: 6, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 473, column: 6)
!2415 = !DILocation(line: 473, column: 11, scope: !2414)
!2416 = !DILocation(line: 473, column: 6, scope: !2300)
!2417 = !DILocation(line: 473, column: 26, scope: !2414)
!2418 = !DILocation(line: 474, column: 6, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 474, column: 6)
!2420 = !DILocation(line: 474, column: 11, scope: !2419)
!2421 = !DILocation(line: 474, column: 6, scope: !2300)
!2422 = !DILocation(line: 474, column: 27, scope: !2419)
!2423 = !DILocation(line: 475, column: 6, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 475, column: 6)
!2425 = !DILocation(line: 475, column: 11, scope: !2424)
!2426 = !DILocation(line: 475, column: 6, scope: !2300)
!2427 = !DILocation(line: 475, column: 32, scope: !2424)
!2428 = !DILocation(line: 477, column: 50, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2300, file: !104, line: 477, column: 6)
!2430 = !{i8 0, i8 2}
!2431 = !DILocation(line: 477, column: 6, scope: !2300)
!2432 = !DILocation(line: 478, column: 3, scope: !2429)
!2433 = !DILocation(line: 478, column: 3, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !104, line: 478, column: 3)
!2435 = distinct !DILexicalBlock(scope: !2429, file: !104, line: 478, column: 3)
!2436 = !{i32 -2143556612}
!2437 = !DILocation(line: 478, column: 3, scope: !2435)
!2438 = !DILocation(line: 480, column: 3, scope: !2429)
!2439 = !DILocation(line: 480, column: 3, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2429, file: !104, line: 480, column: 3)
!2441 = !DILocation(line: 480, column: 3, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2440, file: !104, line: 480, column: 3)
!2443 = !DILocation(line: 480, column: 3, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !104, line: 480, column: 3)
!2445 = !{i64 2151410887, i64 2151410916, i64 2151410962, i64 2151411020, i64 2151411074, i64 2151411128, i64 2151411183, i64 2151411214}
!2446 = !DILocation(line: 483, column: 2, scope: !2300)
!2447 = !DILocation(line: 484, column: 1, scope: !2300)
!2448 = !DISubprogram(name: "kmalloc_trace", scope: !104, file: !104, line: 525, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!116, !2451, !114, !297}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2453, line: 11, flags: DIFlagFwdDecl)
!2453 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2454 = distinct !DISubprogram(name: "kmalloc_type", scope: !104, file: !104, line: 401, type: !2455, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!103, !114, !300}
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "flags", arg: 1, scope: !2454, file: !104, line: 401, type: !114)
!2459 = !DILocalVariable(name: "caller", arg: 2, scope: !2454, file: !104, line: 401, type: !300)
!2460 = !DILocation(line: 401, column: 67, scope: !2454)
!2461 = !DILocation(line: 401, column: 88, scope: !2454)
!2462 = !DILocation(line: 407, column: 6, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2454, file: !104, line: 407, column: 6)
!2464 = !DILocation(line: 407, column: 6, scope: !2454)
!2465 = !DILocation(line: 413, column: 3, scope: !2463)
!2466 = !DILocation(line: 423, column: 38, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2454, file: !104, line: 423, column: 6)
!2468 = !DILocation(line: 423, column: 44, scope: !2467)
!2469 = !DILocation(line: 423, column: 6, scope: !2454)
!2470 = !DILocation(line: 424, column: 3, scope: !2467)
!2471 = !DILocation(line: 426, column: 3, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2454, file: !104, line: 425, column: 6)
!2473 = !DILocation(line: 429, column: 1, scope: !2454)
!2474 = !DISubprogram(name: "__kmalloc", scope: !104, file: !104, line: 488, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2475 = !DISubprogram(name: "__compiletime_assert_117", scope: !104, file: !104, line: 478, type: !1186, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2476 = distinct !DISubprogram(name: "__list_add", scope: !1833, file: !1833, line: 146, type: !2477, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !124, !124, !124}
!2479 = !{!2480, !2481, !2482}
!2480 = !DILocalVariable(name: "new", arg: 1, scope: !2476, file: !1833, line: 146, type: !124)
!2481 = !DILocalVariable(name: "prev", arg: 2, scope: !2476, file: !1833, line: 147, type: !124)
!2482 = !DILocalVariable(name: "next", arg: 3, scope: !2476, file: !1833, line: 148, type: !124)
!2483 = !DILocation(line: 146, column: 49, scope: !2476)
!2484 = !DILocation(line: 147, column: 28, scope: !2476)
!2485 = !DILocation(line: 148, column: 28, scope: !2476)
!2486 = !DILocation(line: 150, column: 24, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2476, file: !1833, line: 150, column: 6)
!2488 = !DILocation(line: 150, column: 29, scope: !2487)
!2489 = !DILocation(line: 150, column: 35, scope: !2487)
!2490 = !DILocation(line: 150, column: 7, scope: !2487)
!2491 = !DILocation(line: 150, column: 6, scope: !2476)
!2492 = !DILocation(line: 151, column: 3, scope: !2487)
!2493 = !DILocation(line: 153, column: 15, scope: !2476)
!2494 = !DILocation(line: 153, column: 2, scope: !2476)
!2495 = !DILocation(line: 153, column: 8, scope: !2476)
!2496 = !DILocation(line: 153, column: 13, scope: !2476)
!2497 = !DILocation(line: 154, column: 14, scope: !2476)
!2498 = !DILocation(line: 154, column: 2, scope: !2476)
!2499 = !DILocation(line: 154, column: 7, scope: !2476)
!2500 = !DILocation(line: 154, column: 12, scope: !2476)
!2501 = !DILocation(line: 155, column: 14, scope: !2476)
!2502 = !DILocation(line: 155, column: 2, scope: !2476)
!2503 = !DILocation(line: 155, column: 7, scope: !2476)
!2504 = !DILocation(line: 155, column: 12, scope: !2476)
!2505 = !DILocation(line: 156, column: 2, scope: !2476)
!2506 = !DILocation(line: 156, column: 2, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2476, file: !1833, line: 156, column: 2)
!2508 = !DILocation(line: 156, column: 2, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !1833, line: 156, column: 2)
!2510 = !DILocation(line: 156, column: 2, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !1833, line: 156, column: 2)
!2512 = !DILocation(line: 157, column: 1, scope: !2476)
!2513 = distinct !DISubprogram(name: "__list_add_valid", scope: !1833, file: !1833, line: 128, type: !2514, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!606, !124, !124, !124}
!2516 = !{!2517, !2518, !2519}
!2517 = !DILocalVariable(name: "new", arg: 1, scope: !2513, file: !1833, line: 128, type: !124)
!2518 = !DILocalVariable(name: "prev", arg: 2, scope: !2513, file: !1833, line: 129, type: !124)
!2519 = !DILocalVariable(name: "next", arg: 3, scope: !2513, file: !1833, line: 130, type: !124)
!2520 = !DILocation(line: 128, column: 55, scope: !2513)
!2521 = !DILocation(line: 129, column: 23, scope: !2513)
!2522 = !DILocation(line: 130, column: 23, scope: !2513)
!2523 = !DILocation(line: 132, column: 2, scope: !2513)
!2524 = !DISubprogram(name: "_dev_err", scope: !2525, file: !2525, line: 50, type: !2526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2525 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !1216, !169, null}
!2528 = distinct !DISubprogram(name: "list_del", scope: !1833, file: !1833, line: 227, type: !1834, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2529)
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "entry", arg: 1, scope: !2528, file: !1833, line: 227, type: !124)
!2531 = !DILocation(line: 227, column: 47, scope: !2528)
!2532 = !DILocation(line: 229, column: 19, scope: !2528)
!2533 = !DILocation(line: 229, column: 2, scope: !2528)
!2534 = !DILocation(line: 230, column: 2, scope: !2528)
!2535 = !DILocation(line: 230, column: 9, scope: !2528)
!2536 = !DILocation(line: 230, column: 14, scope: !2528)
!2537 = !DILocation(line: 231, column: 2, scope: !2528)
!2538 = !DILocation(line: 231, column: 9, scope: !2528)
!2539 = !DILocation(line: 231, column: 14, scope: !2528)
!2540 = !DILocation(line: 232, column: 1, scope: !2528)
!2541 = !DISubprogram(name: "kfree", scope: !104, file: !104, line: 227, type: !2542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !528}
!2544 = distinct !DISubprogram(name: "__list_del_entry", scope: !1833, file: !1833, line: 213, type: !1834, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2545)
!2545 = !{!2546}
!2546 = !DILocalVariable(name: "entry", arg: 1, scope: !2544, file: !1833, line: 213, type: !124)
!2547 = !DILocation(line: 213, column: 55, scope: !2544)
!2548 = !DILocation(line: 215, column: 30, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !1833, line: 215, column: 6)
!2550 = !DILocation(line: 215, column: 7, scope: !2549)
!2551 = !DILocation(line: 215, column: 6, scope: !2544)
!2552 = !DILocation(line: 216, column: 3, scope: !2549)
!2553 = !DILocation(line: 218, column: 13, scope: !2544)
!2554 = !DILocation(line: 218, column: 20, scope: !2544)
!2555 = !DILocation(line: 218, column: 26, scope: !2544)
!2556 = !DILocation(line: 218, column: 33, scope: !2544)
!2557 = !DILocation(line: 218, column: 2, scope: !2544)
!2558 = !DILocation(line: 219, column: 1, scope: !2544)
!2559 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1833, file: !1833, line: 134, type: !2560, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!606, !124}
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "entry", arg: 1, scope: !2559, file: !1833, line: 134, type: !124)
!2564 = !DILocation(line: 134, column: 61, scope: !2559)
!2565 = !DILocation(line: 136, column: 2, scope: !2559)
!2566 = distinct !DISubprogram(name: "__list_del", scope: !1833, file: !1833, line: 193, type: !1869, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2567)
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "prev", arg: 1, scope: !2566, file: !1833, line: 193, type: !124)
!2569 = !DILocalVariable(name: "next", arg: 2, scope: !2566, file: !1833, line: 193, type: !124)
!2570 = !DILocation(line: 193, column: 50, scope: !2566)
!2571 = !DILocation(line: 193, column: 75, scope: !2566)
!2572 = !DILocation(line: 195, column: 15, scope: !2566)
!2573 = !DILocation(line: 195, column: 2, scope: !2566)
!2574 = !DILocation(line: 195, column: 8, scope: !2566)
!2575 = !DILocation(line: 195, column: 13, scope: !2566)
!2576 = !DILocation(line: 196, column: 2, scope: !2566)
!2577 = !DILocation(line: 196, column: 2, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2566, file: !1833, line: 196, column: 2)
!2579 = !DILocation(line: 196, column: 2, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !1833, line: 196, column: 2)
!2581 = !DILocation(line: 196, column: 2, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2578, file: !1833, line: 196, column: 2)
!2583 = !DILocation(line: 197, column: 1, scope: !2566)
