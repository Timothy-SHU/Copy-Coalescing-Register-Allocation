; ModuleID = 'kernel/irq/devres.c'
source_filename = "kernel/irq/devres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_request_threaded_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_request_threaded_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_request_any_context_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_request_any_context_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_free_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_free_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___devm_irq_alloc_descs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __devm_irq_alloc_descs ; .previous"

%struct.irq_devres = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.irq_desc_devres = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"devm_irq_release\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_devm_request_threaded_irq206 = internal global ptr @devm_request_threaded_irq, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_devm_request_any_context_irq207 = internal global ptr @devm_request_any_context_irq, section ".discard.addressable", align 8, !dbg !95
@.str.1 = private unnamed_addr constant [20 x i8] c"kernel/irq/devres.c\00", align 1, !dbg !97
@__UNIQUE_ID___addressable_devm_free_irq208 = internal global ptr @devm_free_irq, section ".discard.addressable", align 8, !dbg !102
@.str.2 = private unnamed_addr constant [22 x i8] c"devm_irq_desc_release\00", align 1, !dbg !104
@__UNIQUE_ID___addressable___devm_irq_alloc_descs209 = internal global ptr @__devm_irq_alloc_descs, section ".discard.addressable", align 8, !dbg !109
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_devm_request_threaded_irq206, ptr @__UNIQUE_ID___addressable_devm_request_any_context_irq207, ptr @__UNIQUE_ID___addressable_devm_free_irq208, ptr @__UNIQUE_ID___addressable___devm_irq_alloc_descs209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, ptr noundef %thread_fn, i64 noundef %irqflags, ptr noundef %devname, ptr noundef %dev_id) #0 align 16 !dbg !120 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %thread_fn.addr = alloca ptr, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca ptr, align 8
  %dev_id.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1707, metadata !DIExpression()), !dbg !1721
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !1708, metadata !DIExpression()), !dbg !1722
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1709, metadata !DIExpression()), !dbg !1723
  store ptr %thread_fn, ptr %thread_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread_fn.addr, metadata !1710, metadata !DIExpression()), !dbg !1724
  store i64 %irqflags, ptr %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqflags.addr, metadata !1711, metadata !DIExpression()), !dbg !1725
  store ptr %devname, ptr %devname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devname.addr, metadata !1712, metadata !DIExpression()), !dbg !1726
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !1713, metadata !DIExpression()), !dbg !1727
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #6, !dbg !1728
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !1714, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #6, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1720, metadata !DIExpression()), !dbg !1731
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_irq_release, i64 noundef 16, i32 noundef 3264, i32 noundef -1, ptr noundef @.str) #7, !dbg !1732
  store ptr %call, ptr %dr, align 8, !dbg !1733
  %0 = load ptr, ptr %dr, align 8, !dbg !1734
  %tobool = icmp ne ptr %0, null, !dbg !1734
  br i1 %tobool, label %if.end, label %if.then, !dbg !1736

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1737

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %devname.addr, align 8, !dbg !1738
  %tobool1 = icmp ne ptr %1, null, !dbg !1738
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !1740

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1741
  %call3 = call ptr @dev_name(ptr noundef %2) #7, !dbg !1742
  store ptr %call3, ptr %devname.addr, align 8, !dbg !1743
  br label %if.end4, !dbg !1744

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load i32, ptr %irq.addr, align 4, !dbg !1745
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !1746
  %5 = load ptr, ptr %thread_fn.addr, align 8, !dbg !1747
  %6 = load i64, ptr %irqflags.addr, align 8, !dbg !1748
  %7 = load ptr, ptr %devname.addr, align 8, !dbg !1749
  %8 = load ptr, ptr %dev_id.addr, align 8, !dbg !1750
  %call5 = call i32 @request_threaded_irq(i32 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) #7, !dbg !1751
  store i32 %call5, ptr %rc, align 4, !dbg !1752
  %9 = load i32, ptr %rc, align 4, !dbg !1753
  %tobool6 = icmp ne i32 %9, 0, !dbg !1753
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1755

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %dr, align 8, !dbg !1756
  call void @devres_free(ptr noundef %10) #7, !dbg !1758
  %11 = load i32, ptr %rc, align 4, !dbg !1759
  store i32 %11, ptr %retval, align 4, !dbg !1760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1760

if.end8:                                          ; preds = %if.end4
  %12 = load i32, ptr %irq.addr, align 4, !dbg !1761
  %13 = load ptr, ptr %dr, align 8, !dbg !1762
  %irq9 = getelementptr inbounds %struct.irq_devres, ptr %13, i32 0, i32 0, !dbg !1763
  store i32 %12, ptr %irq9, align 8, !dbg !1764
  %14 = load ptr, ptr %dev_id.addr, align 8, !dbg !1765
  %15 = load ptr, ptr %dr, align 8, !dbg !1766
  %dev_id10 = getelementptr inbounds %struct.irq_devres, ptr %15, i32 0, i32 1, !dbg !1767
  store ptr %14, ptr %dev_id10, align 8, !dbg !1768
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !1769
  %17 = load ptr, ptr %dr, align 8, !dbg !1770
  call void @devres_add(ptr noundef %16, ptr noundef %17) #7, !dbg !1771
  store i32 0, ptr %retval, align 4, !dbg !1772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1772

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #6, !dbg !1773
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #6, !dbg !1773
  %18 = load i32, ptr %retval, align 4, !dbg !1773
  ret i32 %18, !dbg !1773
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1774 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_irq_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !1781 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1783, metadata !DIExpression()), !dbg !1786
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1784, metadata !DIExpression()), !dbg !1787
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #6, !dbg !1788
  call void @llvm.dbg.declare(metadata ptr %this, metadata !1785, metadata !DIExpression()), !dbg !1789
  %0 = load ptr, ptr %res.addr, align 8, !dbg !1790
  store ptr %0, ptr %this, align 8, !dbg !1789
  %1 = load ptr, ptr %this, align 8, !dbg !1791
  %irq = getelementptr inbounds %struct.irq_devres, ptr %1, i32 0, i32 0, !dbg !1792
  %2 = load i32, ptr %irq, align 8, !dbg !1792
  %3 = load ptr, ptr %this, align 8, !dbg !1793
  %dev_id = getelementptr inbounds %struct.irq_devres, ptr %3, i32 0, i32 1, !dbg !1794
  %4 = load ptr, ptr %dev_id, align 8, !dbg !1794
  %call = call ptr @free_irq(i32 noundef %2, ptr noundef %4) #7, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #6, !dbg !1796
  ret void, !dbg !1796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !1797 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1801, metadata !DIExpression()), !dbg !1802
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1803
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !1805
  %1 = load ptr, ptr %init_name, align 8, !dbg !1805
  %tobool = icmp ne ptr %1, null, !dbg !1803
  br i1 %tobool, label %if.then, label %if.end, !dbg !1806

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1807
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !1808
  %3 = load ptr, ptr %init_name1, align 8, !dbg !1808
  store ptr %3, ptr %retval, align 8, !dbg !1809
  br label %return, !dbg !1809

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1810
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !1811
  %call = call ptr @kobject_name(ptr noundef %kobj) #7, !dbg !1812
  store ptr %call, ptr %retval, align 8, !dbg !1813
  br label %return, !dbg !1813

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !1814
  ret ptr %5, !dbg !1814
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1815 dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1818 dso_local void @devres_free(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1819 dso_local void @devres_add(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, i64 noundef %irqflags, ptr noundef %devname, ptr noundef %dev_id) #0 align 16 !dbg !1820 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca ptr, align 8
  %dev_id.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1824, metadata !DIExpression()), !dbg !1832
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !1825, metadata !DIExpression()), !dbg !1833
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1826, metadata !DIExpression()), !dbg !1834
  store i64 %irqflags, ptr %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqflags.addr, metadata !1827, metadata !DIExpression()), !dbg !1835
  store ptr %devname, ptr %devname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devname.addr, metadata !1828, metadata !DIExpression()), !dbg !1836
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !1829, metadata !DIExpression()), !dbg !1837
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #6, !dbg !1838
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !1830, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #6, !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1831, metadata !DIExpression()), !dbg !1841
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_irq_release, i64 noundef 16, i32 noundef 3264, i32 noundef -1, ptr noundef @.str) #7, !dbg !1842
  store ptr %call, ptr %dr, align 8, !dbg !1843
  %0 = load ptr, ptr %dr, align 8, !dbg !1844
  %tobool = icmp ne ptr %0, null, !dbg !1844
  br i1 %tobool, label %if.end, label %if.then, !dbg !1846

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1847

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %devname.addr, align 8, !dbg !1848
  %tobool1 = icmp ne ptr %1, null, !dbg !1848
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !1850

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1851
  %call3 = call ptr @dev_name(ptr noundef %2) #7, !dbg !1852
  store ptr %call3, ptr %devname.addr, align 8, !dbg !1853
  br label %if.end4, !dbg !1854

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load i32, ptr %irq.addr, align 4, !dbg !1855
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !1856
  %5 = load i64, ptr %irqflags.addr, align 8, !dbg !1857
  %6 = load ptr, ptr %devname.addr, align 8, !dbg !1858
  %7 = load ptr, ptr %dev_id.addr, align 8, !dbg !1859
  %call5 = call i32 @request_any_context_irq(i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) #7, !dbg !1860
  store i32 %call5, ptr %rc, align 4, !dbg !1861
  %8 = load i32, ptr %rc, align 4, !dbg !1862
  %cmp = icmp slt i32 %8, 0, !dbg !1864
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !1865

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %dr, align 8, !dbg !1866
  call void @devres_free(ptr noundef %9) #7, !dbg !1868
  %10 = load i32, ptr %rc, align 4, !dbg !1869
  store i32 %10, ptr %retval, align 4, !dbg !1870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1870

if.end7:                                          ; preds = %if.end4
  %11 = load i32, ptr %irq.addr, align 4, !dbg !1871
  %12 = load ptr, ptr %dr, align 8, !dbg !1872
  %irq8 = getelementptr inbounds %struct.irq_devres, ptr %12, i32 0, i32 0, !dbg !1873
  store i32 %11, ptr %irq8, align 8, !dbg !1874
  %13 = load ptr, ptr %dev_id.addr, align 8, !dbg !1875
  %14 = load ptr, ptr %dr, align 8, !dbg !1876
  %dev_id9 = getelementptr inbounds %struct.irq_devres, ptr %14, i32 0, i32 1, !dbg !1877
  store ptr %13, ptr %dev_id9, align 8, !dbg !1878
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !1879
  %16 = load ptr, ptr %dr, align 8, !dbg !1880
  call void @devres_add(ptr noundef %15, ptr noundef %16) #7, !dbg !1881
  %17 = load i32, ptr %rc, align 4, !dbg !1882
  store i32 %17, ptr %retval, align 4, !dbg !1883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1883

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #6, !dbg !1884
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #6, !dbg !1884
  %18 = load i32, ptr %retval, align 4, !dbg !1884
  ret i32 %18, !dbg !1884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1885 dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_free_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %dev_id) #0 align 16 !dbg !1888 {
entry:
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca ptr, align 8
  %match_data = alloca %struct.irq_devres, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1892, metadata !DIExpression()), !dbg !1901
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !1893, metadata !DIExpression()), !dbg !1902
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !1894, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.start.p0(i64 16, ptr %match_data) #6, !dbg !1904
  call void @llvm.dbg.declare(metadata ptr %match_data, metadata !1895, metadata !DIExpression()), !dbg !1905
  %irq1 = getelementptr inbounds %struct.irq_devres, ptr %match_data, i32 0, i32 0, !dbg !1906
  %0 = load i32, ptr %irq.addr, align 4, !dbg !1907
  store i32 %0, ptr %irq1, align 8, !dbg !1906
  %dev_id2 = getelementptr inbounds %struct.irq_devres, ptr %match_data, i32 0, i32 1, !dbg !1906
  %1 = load ptr, ptr %dev_id.addr, align 8, !dbg !1908
  store ptr %1, ptr %dev_id2, align 8, !dbg !1906
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !1909
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1896, metadata !DIExpression()), !dbg !1909
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1909
  %call = call i32 @devres_destroy(ptr noundef %2, ptr noundef @devm_irq_release, ptr noundef @devm_irq_match, ptr noundef %match_data) #7, !dbg !1909
  %tobool = icmp ne i32 %call, 0, !dbg !1909
  %lnot = xor i1 %tobool, true, !dbg !1909
  %lnot3 = xor i1 %lnot, true, !dbg !1909
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1909
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1909
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1910
  %tobool4 = icmp ne i32 %3, 0, !dbg !1910
  %lnot5 = xor i1 %tobool4, true, !dbg !1910
  %lnot7 = xor i1 %lnot5, true, !dbg !1910
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1910
  %conv = sext i32 %lnot.ext8 to i64, !dbg !1910
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1910
  %tobool9 = icmp ne i64 %expval, 0, !dbg !1910
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1909

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1910

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1898, metadata !DIExpression()), !dbg !1911
  store i32 2305, ptr %__flags, align 4, !dbg !1911
  br label %do.body10, !dbg !1911

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !1912

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !1912

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !1911

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !1914
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 144, i32 %4, i64 12) #6, !dbg !1914, !srcloc !1916
  br label %do.cond12, !dbg !1914

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1914

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1911

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !1917

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1917

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !1910
  br label %do.cond17, !dbg !1911

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !1911

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !1911

if.end:                                           ; preds = %do.end18, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1909
  %tobool19 = icmp ne i32 %5, 0, !dbg !1909
  %lnot20 = xor i1 %tobool19, true, !dbg !1909
  %lnot22 = xor i1 %lnot20, true, !dbg !1909
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !1909
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !1909
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !1909
  store i64 %expval25, ptr %tmp, align 8, !dbg !1910
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !1919
  %6 = load i64, ptr %tmp, align 8, !dbg !1909
  %7 = load i32, ptr %irq.addr, align 4, !dbg !1920
  %8 = load ptr, ptr %dev_id.addr, align 8, !dbg !1921
  %call26 = call ptr @free_irq(i32 noundef %7, ptr noundef %8) #7, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 16, ptr %match_data) #6, !dbg !1923
  ret void, !dbg !1923
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1924 dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_irq_match(ptr noundef %dev, ptr noundef %res, ptr noundef %data) #0 align 16 !dbg !1931 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  %match = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1933, metadata !DIExpression()), !dbg !1938
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1934, metadata !DIExpression()), !dbg !1939
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1935, metadata !DIExpression()), !dbg !1940
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #6, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %this, metadata !1936, metadata !DIExpression()), !dbg !1942
  %0 = load ptr, ptr %res.addr, align 8, !dbg !1943
  store ptr %0, ptr %this, align 8, !dbg !1942
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #6, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %match, metadata !1937, metadata !DIExpression()), !dbg !1944
  %1 = load ptr, ptr %data.addr, align 8, !dbg !1945
  store ptr %1, ptr %match, align 8, !dbg !1944
  %2 = load ptr, ptr %this, align 8, !dbg !1946
  %irq = getelementptr inbounds %struct.irq_devres, ptr %2, i32 0, i32 0, !dbg !1947
  %3 = load i32, ptr %irq, align 8, !dbg !1947
  %4 = load ptr, ptr %match, align 8, !dbg !1948
  %irq1 = getelementptr inbounds %struct.irq_devres, ptr %4, i32 0, i32 0, !dbg !1949
  %5 = load i32, ptr %irq1, align 8, !dbg !1949
  %cmp = icmp eq i32 %3, %5, !dbg !1950
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1951

land.rhs:                                         ; preds = %entry
  %6 = load ptr, ptr %this, align 8, !dbg !1952
  %dev_id = getelementptr inbounds %struct.irq_devres, ptr %6, i32 0, i32 1, !dbg !1953
  %7 = load ptr, ptr %dev_id, align 8, !dbg !1953
  %8 = load ptr, ptr %match, align 8, !dbg !1954
  %dev_id2 = getelementptr inbounds %struct.irq_devres, ptr %8, i32 0, i32 1, !dbg !1955
  %9 = load ptr, ptr %dev_id2, align 8, !dbg !1955
  %cmp3 = icmp eq ptr %7, %9, !dbg !1956
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !1957
  %land.ext = zext i1 %10 to i32, !dbg !1951
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #6, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #6, !dbg !1958
  ret i32 %land.ext, !dbg !1959
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1960 dso_local ptr @free_irq(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__devm_irq_alloc_descs(ptr noundef %dev, i32 noundef %irq, i32 noundef %from, i32 noundef %cnt, i32 noundef %node, ptr noundef %owner, ptr noundef %affinity) #0 align 16 !dbg !1963 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %owner.addr = alloca ptr, align 8
  %affinity.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %base = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1980, metadata !DIExpression()), !dbg !1994
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !1981, metadata !DIExpression()), !dbg !1995
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1982, metadata !DIExpression()), !dbg !1996
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !1983, metadata !DIExpression()), !dbg !1997
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1984, metadata !DIExpression()), !dbg !1998
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1985, metadata !DIExpression()), !dbg !1999
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !1986, metadata !DIExpression()), !dbg !2000
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #6, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !1987, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #6, !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %base, metadata !1993, metadata !DIExpression()), !dbg !2004
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_irq_desc_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.2) #7, !dbg !2005
  store ptr %call, ptr %dr, align 8, !dbg !2006
  %0 = load ptr, ptr %dr, align 8, !dbg !2007
  %tobool = icmp ne ptr %0, null, !dbg !2007
  br i1 %tobool, label %if.end, label %if.then, !dbg !2009

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2010

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %irq.addr, align 4, !dbg !2011
  %2 = load i32, ptr %from.addr, align 4, !dbg !2012
  %3 = load i32, ptr %cnt.addr, align 4, !dbg !2013
  %4 = load i32, ptr %node.addr, align 4, !dbg !2014
  %5 = load ptr, ptr %owner.addr, align 8, !dbg !2015
  %6 = load ptr, ptr %affinity.addr, align 8, !dbg !2016
  %call1 = call i32 @__irq_alloc_descs(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #7, !dbg !2017
  store i32 %call1, ptr %base, align 4, !dbg !2018
  %7 = load i32, ptr %base, align 4, !dbg !2019
  %cmp = icmp slt i32 %7, 0, !dbg !2021
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2022

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %dr, align 8, !dbg !2023
  call void @devres_free(ptr noundef %8) #7, !dbg !2025
  %9 = load i32, ptr %base, align 4, !dbg !2026
  store i32 %9, ptr %retval, align 4, !dbg !2027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2027

if.end3:                                          ; preds = %if.end
  %10 = load i32, ptr %base, align 4, !dbg !2028
  %11 = load ptr, ptr %dr, align 8, !dbg !2029
  %from4 = getelementptr inbounds %struct.irq_desc_devres, ptr %11, i32 0, i32 0, !dbg !2030
  store i32 %10, ptr %from4, align 4, !dbg !2031
  %12 = load i32, ptr %cnt.addr, align 4, !dbg !2032
  %13 = load ptr, ptr %dr, align 8, !dbg !2033
  %cnt5 = getelementptr inbounds %struct.irq_desc_devres, ptr %13, i32 0, i32 1, !dbg !2034
  store i32 %12, ptr %cnt5, align 4, !dbg !2035
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2036
  %15 = load ptr, ptr %dr, align 8, !dbg !2037
  call void @devres_add(ptr noundef %14, ptr noundef %15) #7, !dbg !2038
  %16 = load i32, ptr %base, align 4, !dbg !2039
  store i32 %16, ptr %retval, align 4, !dbg !2040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2040

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #6, !dbg !2041
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #6, !dbg !2041
  %17 = load i32, ptr %retval, align 4, !dbg !2041
  ret i32 %17, !dbg !2041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_irq_desc_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !2042 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2044, metadata !DIExpression()), !dbg !2047
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #6, !dbg !2049
  call void @llvm.dbg.declare(metadata ptr %this, metadata !2046, metadata !DIExpression()), !dbg !2050
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2051
  store ptr %0, ptr %this, align 8, !dbg !2050
  %1 = load ptr, ptr %this, align 8, !dbg !2052
  %from = getelementptr inbounds %struct.irq_desc_devres, ptr %1, i32 0, i32 0, !dbg !2053
  %2 = load i32, ptr %from, align 4, !dbg !2053
  %3 = load ptr, ptr %this, align 8, !dbg !2054
  %cnt = getelementptr inbounds %struct.irq_desc_devres, ptr %3, i32 0, i32 1, !dbg !2055
  %4 = load i32, ptr %cnt, align 4, !dbg !2055
  call void @irq_free_descs(i32 noundef %2, i32 noundef %4) #7, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #6, !dbg !2057
  ret void, !dbg !2057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2058 dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !2062 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2064, metadata !DIExpression()), !dbg !2065
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2066
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !2067
  %1 = load ptr, ptr %name, align 8, !dbg !2067
  ret ptr %1, !dbg !2068
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2069 dso_local void @irq_free_descs(i32 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/irq/devres.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef043760d72f087b9dd3b2d71dac61af")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_request_threaded_irq206", scope: !9, file: !2, line: 80, type: !93, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.devres.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/devres\22 -D KBUILD_BASENAME=\22devres\22 -D KBUILD_MODNAME=\22devres\22 -D __KBUILD_MODNAME=kmod_devres -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/devres.ll kernel/irq/devres.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !90, globals: !94, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !25, !31, !38, !43, !51, !59, !68, !73, !78, !84}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!22 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!23 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!24 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !26, line: 45, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!29 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!30 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !32, line: 487, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!33 = !{!34, !35, !36, !37}
!34 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!35 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!36 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!37 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 620, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!47 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!48 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!49 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!50 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 597, baseType: !52, size: 32, elements: !53)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!55 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!56 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!57 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!58 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !32, line: 547, baseType: !13, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !32, line: 564, baseType: !13, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !32, line: 577, baseType: !13, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !32, line: 503, baseType: !13, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !85, line: 11, baseType: !13, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!88 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!89 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !92, line: 154, baseType: !13)
!92 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !{!0, !7, !95, !97, !102, !104, !109}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_request_any_context_irq207", scope: !9, file: !2, line: 126, type: !93, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_free_irq208", scope: !9, file: !2, line: 147, type: !93, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 22)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___devm_irq_alloc_descs209", scope: !9, file: !2, line: 201, type: !93, isLocal: true, isDefinition: true)
!111 = !{i32 7, !"Dwarf Version", i32 5}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 8, !"cf-protection-branch", i32 1}
!115 = !{i32 4, !"function_return_thunk_extern", i32 1}
!116 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!117 = !{i32 1, !"Code Model", i32 2}
!118 = !{i32 1, !"override-stack-alignment", i32 8}
!119 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!120 = distinct !DISubprogram(name: "devm_request_threaded_irq", scope: !2, file: !2, line: 51, type: !121, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1706)
!121 = !DISubroutineType(types: !122)
!122 = !{!52, !123, !13, !1700, !1700, !267, !131, !93}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !32, line: 705, size: 5824, elements: !125)
!125 = !{!126, !792, !793, !796, !797, !850, !1302, !1303, !1304, !1305, !1306, !1313, !1483, !1496, !1506, !1510, !1512, !1513, !1514, !1518, !1525, !1526, !1529, !1532, !1536, !1640, !1641, !1644, !1645, !1646, !1647, !1677, !1678, !1679, !1682, !1685, !1694, !1695, !1696, !1697, !1698, !1699}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !124, file: !32, line: 706, baseType: !127, size: 512)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !128, line: 64, size: 512, elements: !129)
!128 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!129 = !{!130, !133, !139, !141, !230, !662, !777, !787, !788, !789, !790, !791}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !128, line: 65, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !127, file: !128, line: 66, baseType: !134, size: 128, offset: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !92, line: 190, size: 128, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !92, line: 191, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !92, line: 191, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !128, line: 67, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !127, file: !128, line: 68, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !128, line: 168, size: 768, elements: !144)
!144 = !{!145, !146, !189, !190}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !128, line: 169, baseType: !134, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !143, file: !128, line: 170, baseType: !147, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !148, line: 29, baseType: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !148, line: 17, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 18, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 18, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !152, file: !148, line: 19, baseType: !155, size: 32)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !156, line: 14, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !155, file: !156, line: 15, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !160, line: 44, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !160, line: 14, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !160, line: 15, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !160, line: 15, size: 32, elements: !165)
!165 = !{!166, !171, !181}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !160, line: 16, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !92, line: 174, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 172, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !168, file: !92, line: 173, baseType: !52, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !160, line: 24, baseType: !172, size: 16)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !160, line: 24, size: 16, elements: !173)
!173 = !{!174, !180}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !172, file: !160, line: 25, baseType: !175, size: 8)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !176, line: 17, baseType: !177)
!176 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !178, line: 21, baseType: !179)
!178 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !172, file: !160, line: 26, baseType: !175, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !160, line: 28, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !160, line: 28, size: 32, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !182, file: !160, line: 29, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !176, line: 19, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !178, line: 24, baseType: !187)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !182, file: !160, line: 30, baseType: !185, size: 16, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !128, line: 171, baseType: !127, size: 512, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !143, file: !128, line: 172, baseType: !191, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !128, line: 133, size: 192, elements: !194)
!194 = !{!195, !202, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !193, file: !128, line: 134, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!52, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !128, line: 135, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!131, !200}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !193, file: !128, line: 136, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!52, !200, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !128, line: 125, size: 20736, elements: !214)
!214 = !{!215, !220, !224, !225, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !213, file: !128, line: 126, baseType: !216, size: 192)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !218)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !213, file: !128, line: 127, baseType: !221, size: 4096, offset: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 4096, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !213, file: !128, line: 128, baseType: !52, size: 32, offset: 4288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !213, file: !128, line: 129, baseType: !226, size: 16384, offset: 4320)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !213, file: !128, line: 130, baseType: !52, size: 32, offset: 20704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !127, file: !128, line: 69, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !128, line: 116, size: 384, elements: !234)
!234 = !{!235, !239, !268, !609, !640, !644}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !128, line: 117, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !140}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !233, file: !128, line: 118, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !243, line: 254, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!244 = !{!245, !260}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !242, file: !243, line: 255, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !140, !254, !217}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !92, line: 66, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !251, line: 73, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !251, line: 15, baseType: !253)
!253 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !243, line: 30, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !243, line: 31, baseType: !131, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !255, file: !243, line: 32, baseType: !259, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !92, line: 24, baseType: !187)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !243, line: 256, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!249, !140, !254, !131, !264}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 61, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !251, line: 72, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !251, line: 16, baseType: !267)
!267 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !233, file: !128, line: 119, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !243, line: 84, size: 320, elements: !273)
!273 = !{!274, !275, !279, !605, !607}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !243, line: 85, baseType: !131, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !272, file: !243, line: 86, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!259, !140, !254, !52}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !272, file: !243, line: 88, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!259, !140, !283, !52}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !243, line: 175, size: 512, elements: !285)
!285 = !{!286, !287, !288, !289, !296, !306, !307}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !284, file: !243, line: 176, baseType: !255, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !284, file: !243, line: 177, baseType: !264, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !284, file: !243, line: 178, baseType: !93, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !284, file: !243, line: 179, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !295, line: 32, flags: DIFlagFwdDecl)
!295 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !284, file: !243, line: 180, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!249, !300, !140, !283, !217, !303, !264}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !302, line: 537, flags: DIFlagFwdDecl)
!302 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !92, line: 52, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !251, line: 88, baseType: !305)
!305 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !284, file: !243, line: 182, baseType: !297, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !284, file: !243, line: 184, baseType: !308, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!52, !300, !140, !283, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !295, line: 625, size: 1344, elements: !313)
!313 = !{!314, !331, !554, !560, !567, !568, !573, !576, !588, !589, !592, !596, !597, !598, !599, !600, !603}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !295, line: 628, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !295, line: 628, size: 128, elements: !316)
!316 = !{!317, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !295, line: 629, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !295, line: 629, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !318, file: !295, line: 631, baseType: !267, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !318, file: !295, line: 632, baseType: !267, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !315, file: !295, line: 635, baseType: !323, size: 128, align: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !92, line: 232, size: 128, align: 64, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !92, line: 233, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !323, file: !92, line: 234, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !326}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !312, file: !295, line: 639, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !295, line: 733, size: 10240, elements: !334)
!334 = !{!335, !550}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !295, line: 734, baseType: !336, size: 10240)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !295, line: 734, size: 10240, elements: !337)
!337 = !{!338, !342, !356, !360, !361, !362, !363, !364, !365, !373, !374, !375, !384, !385, !394, !395, !396, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !443, !457, !460, !515, !516, !517, !520, !524, !525, !528, !529, !530, !537, !538}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !295, line: 739, baseType: !339, size: 512, align: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !295, line: 739, size: 512, align: 512, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !339, file: !295, line: 747, baseType: !167, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !336, file: !295, line: 750, baseType: !343, size: 128, offset: 512)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !344, line: 218, size: 128, elements: !345)
!344 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!345 = !{!346, !354, !355}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !344, line: 219, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !344, line: 219, size: 32, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !347, file: !344, line: 220, baseType: !147, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !347, file: !344, line: 221, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !344, line: 197, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 197, elements: !353)
!353 = !{}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !343, file: !344, line: 223, baseType: !13, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !343, file: !344, line: 224, baseType: !93, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !336, file: !295, line: 752, baseType: !357, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!267, !300, !267, !267, !267, !267}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !336, file: !295, line: 756, baseType: !267, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !336, file: !295, line: 757, baseType: !267, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !336, file: !295, line: 760, baseType: !267, size: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !336, file: !295, line: 761, baseType: !267, size: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !336, file: !295, line: 763, baseType: !267, size: 64, offset: 960)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !336, file: !295, line: 764, baseType: !366, size: 64, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !302, line: 299, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 299, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !368, file: !302, line: 299, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !372, line: 18, baseType: !267)
!372 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !336, file: !295, line: 773, baseType: !167, size: 32, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !336, file: !295, line: 785, baseType: !167, size: 32, offset: 1120)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !336, file: !295, line: 795, baseType: !376, size: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !295, line: 726, size: 128, elements: !378)
!378 = !{!379, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !377, file: !295, line: 727, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !176, line: 23, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !178, line: 31, baseType: !382)
!382 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !377, file: !295, line: 728, baseType: !52, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !336, file: !295, line: 801, baseType: !267, size: 64, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !336, file: !295, line: 804, baseType: !386, size: 64, offset: 1280)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !387, line: 13, baseType: !388)
!387 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !92, line: 181, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 179, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !389, file: !92, line: 180, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !176, line: 22, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !178, line: 30, baseType: !305)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !336, file: !295, line: 806, baseType: !52, size: 32, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !336, file: !295, line: 808, baseType: !147, size: 32, offset: 1376)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !336, file: !295, line: 823, baseType: !397, size: 320, offset: 1408)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !398, line: 48, size: 320, elements: !399)
!398 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!399 = !{!400, !401, !402, !407, !409}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !397, file: !398, line: 49, baseType: !386, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !397, file: !398, line: 55, baseType: !386, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !397, file: !398, line: 57, baseType: !403, size: 32, offset: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !404, line: 15, size: 32, elements: !405)
!404 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !403, file: !404, line: 20, baseType: !167, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !397, file: !398, line: 59, baseType: !408, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !156, line: 23, baseType: !155)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !397, file: !398, line: 60, baseType: !134, size: 128, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !336, file: !295, line: 825, baseType: !134, size: 128, offset: 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !336, file: !295, line: 845, baseType: !52, size: 32, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !336, file: !295, line: 849, baseType: !267, size: 64, offset: 1920)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !336, file: !295, line: 850, baseType: !267, size: 64, offset: 1984)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !336, file: !295, line: 852, baseType: !267, size: 64, offset: 2048)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !336, file: !295, line: 853, baseType: !267, size: 64, offset: 2112)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !336, file: !295, line: 854, baseType: !388, size: 64, offset: 2176)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !336, file: !295, line: 855, baseType: !267, size: 64, offset: 2240)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !336, file: !295, line: 856, baseType: !267, size: 64, offset: 2304)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !336, file: !295, line: 857, baseType: !267, size: 64, offset: 2368)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !336, file: !295, line: 858, baseType: !267, size: 64, offset: 2432)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !336, file: !295, line: 865, baseType: !422, size: 32, offset: 2496)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !423, line: 69, baseType: !424)
!423 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !423, line: 64, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !424, file: !423, line: 65, baseType: !13, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !336, file: !295, line: 867, baseType: !147, size: 32, offset: 2528)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !336, file: !295, line: 869, baseType: !267, size: 64, offset: 2560)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !336, file: !295, line: 869, baseType: !267, size: 64, offset: 2624)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !336, file: !295, line: 869, baseType: !267, size: 64, offset: 2688)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !336, file: !295, line: 869, baseType: !267, size: 64, offset: 2752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !336, file: !295, line: 870, baseType: !267, size: 64, offset: 2816)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !336, file: !295, line: 870, baseType: !267, size: 64, offset: 2880)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !336, file: !295, line: 870, baseType: !267, size: 64, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !336, file: !295, line: 871, baseType: !267, size: 64, offset: 3008)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !336, file: !295, line: 871, baseType: !267, size: 64, offset: 3072)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !336, file: !295, line: 871, baseType: !267, size: 64, offset: 3136)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !336, file: !295, line: 871, baseType: !267, size: 64, offset: 3200)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !336, file: !295, line: 873, baseType: !440, size: 3328, offset: 3264)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 3328, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 52)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !336, file: !295, line: 875, baseType: !444, size: 1280, offset: 6592)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1280, elements: !455)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !446, line: 22, size: 320, elements: !447)
!446 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!447 = !{!448, !449, !450, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !445, file: !446, line: 23, baseType: !408, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !445, file: !446, line: 24, baseType: !392, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !445, file: !446, line: 26, baseType: !134, size: 128, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !445, file: !446, line: 28, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !176, line: 20, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !178, line: 26, baseType: !52)
!455 = !{!456}
!456 = !DISubrange(count: 4)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !336, file: !295, line: 877, baseType: !458, size: 64, offset: 7872)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !295, line: 877, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !336, file: !295, line: 880, baseType: !461, size: 1088, offset: 7936)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !462, line: 72, baseType: !463)
!462 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 23, size: 1088, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !472, !473, !481, !482, !509, !510, !511}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !463, file: !462, line: 28, baseType: !380, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !463, file: !462, line: 38, baseType: !388, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !463, file: !462, line: 40, baseType: !267, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !463, file: !462, line: 43, baseType: !397, size: 320, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !463, file: !462, line: 44, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !462, line: 44, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !462, line: 48, baseType: !267, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !463, file: !462, line: 59, baseType: !474, size: 256, offset: 640)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !475, line: 66, size: 256, elements: !476)
!475 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!476 = !{!477, !478, !479, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !474, file: !475, line: 67, baseType: !386, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !474, file: !475, line: 68, baseType: !408, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !474, file: !475, line: 70, baseType: !403, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !474, file: !475, line: 72, baseType: !134, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !463, file: !462, line: 60, baseType: !93, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !463, file: !462, line: 61, baseType: !483, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !486, line: 13, size: 1216, elements: !487)
!486 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !485, file: !486, line: 14, baseType: !93, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !485, file: !486, line: 15, baseType: !267, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !485, file: !486, line: 17, baseType: !267, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !485, file: !486, line: 17, baseType: !267, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !485, file: !486, line: 18, baseType: !267, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !485, file: !486, line: 18, baseType: !267, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !485, file: !486, line: 19, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !485, file: !486, line: 21, baseType: !253, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !485, file: !486, line: 23, baseType: !253, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !485, file: !486, line: 24, baseType: !253, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !485, file: !486, line: 25, baseType: !253, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !485, file: !486, line: 26, baseType: !253, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !485, file: !486, line: 27, baseType: !253, size: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !485, file: !486, line: 28, baseType: !253, size: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !485, file: !486, line: 29, baseType: !253, size: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !485, file: !486, line: 30, baseType: !253, size: 64, offset: 960)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !485, file: !486, line: 31, baseType: !253, size: 64, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !485, file: !486, line: 32, baseType: !253, size: 64, offset: 1088)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !485, file: !486, line: 33, baseType: !253, size: 64, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !463, file: !462, line: 63, baseType: !167, size: 32, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !463, file: !462, line: 69, baseType: !185, size: 16, offset: 1056)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !463, file: !462, line: 70, baseType: !512, size: 16, offset: 1072)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !176, line: 18, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !178, line: 23, baseType: !514)
!514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !295, line: 882, baseType: !267, size: 64, offset: 9024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !336, file: !295, line: 885, baseType: !147, size: 32, offset: 9088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !336, file: !295, line: 886, baseType: !518, size: 64, offset: 9152)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !295, line: 732, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !336, file: !295, line: 901, baseType: !521, size: 64, offset: 9216)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !523, line: 18, flags: DIFlagFwdDecl)
!523 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!524 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !336, file: !295, line: 904, baseType: !300, size: 64, offset: 9280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !336, file: !295, line: 906, baseType: !526, size: 64, offset: 9344)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !295, line: 906, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !336, file: !295, line: 930, baseType: !167, size: 32, offset: 9408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !336, file: !295, line: 933, baseType: !167, size: 32, offset: 9440)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !336, file: !295, line: 935, baseType: !531, size: 64, offset: 9472)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !532, line: 103, size: 64, elements: !533)
!532 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !531, file: !532, line: 104, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !532, line: 101, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !336, file: !295, line: 940, baseType: !386, size: 64, offset: 9536)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !336, file: !295, line: 942, baseType: !539, size: 256, offset: 9600)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !540, line: 98, size: 256, elements: !541)
!540 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !539, file: !540, line: 99, baseType: !386, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !539, file: !540, line: 100, baseType: !134, size: 128, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !539, file: !540, line: 101, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !540, line: 21, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !333, file: !295, line: 986, baseType: !551, offset: 10240)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: -1)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !312, file: !295, line: 640, baseType: !555, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !302, line: 297, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !302, line: 297, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !556, file: !302, line: 297, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !372, line: 19, baseType: !267)
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !295, line: 646, baseType: !561, size: 64, offset: 256)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !295, line: 646, size: 64, elements: !562)
!562 = !{!563, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !561, file: !295, line: 647, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !295, line: 542, baseType: !267)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !561, file: !295, line: 648, baseType: !565, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !312, file: !295, line: 666, baseType: !52, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !312, file: !295, line: 667, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !295, line: 579, size: 320, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !570, file: !295, line: 580, baseType: !397, size: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !312, file: !295, line: 670, baseType: !574, size: 8, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !92, line: 35, baseType: !575)
!575 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !312, file: !295, line: 681, baseType: !577, size: 256, offset: 512)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !295, line: 678, size: 256, elements: !578)
!578 = !{!579, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !577, file: !295, line: 679, baseType: !580, size: 192, align: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !581, line: 5, size: 192, align: 64, elements: !582)
!581 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!582 = !{!583, !584, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !580, file: !581, line: 6, baseType: !267, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !580, file: !581, line: 7, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !580, file: !581, line: 8, baseType: !585, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !577, file: !295, line: 680, baseType: !267, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !312, file: !295, line: 689, baseType: !134, size: 128, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !312, file: !295, line: 691, baseType: !590, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !295, line: 691, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !312, file: !295, line: 694, baseType: !593, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !295, line: 694, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !312, file: !295, line: 697, baseType: !267, size: 64, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !312, file: !295, line: 699, baseType: !300, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !312, file: !295, line: 700, baseType: !93, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !312, file: !295, line: 711, baseType: !386, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !312, file: !295, line: 717, baseType: !601, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !295, line: 717, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !312, file: !295, line: 722, baseType: !604, offset: 1344)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !295, line: 570, elements: !353)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !272, file: !243, line: 90, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !272, file: !243, line: 91, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !233, file: !128, line: 120, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!613, !200}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !616)
!616 = !{!617, !618, !622, !626, !632, !636}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !12, line: 40, baseType: !11, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !615, file: !12, line: 41, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!574}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !615, file: !12, line: 42, baseType: !623, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!93}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !615, file: !12, line: 43, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!495, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !615, file: !12, line: 44, baseType: !633, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!495}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !615, file: !12, line: 45, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !93}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !233, file: !128, line: 121, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!495, !200}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !233, file: !128, line: 122, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !200, !648, !655}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !523, line: 23, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 21, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !523, line: 22, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !92, line: 37, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !251, line: 49, baseType: !13)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !523, line: 28, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 26, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !657, file: !523, line: 27, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !92, line: 38, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !251, line: 50, baseType: !13)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !127, file: !128, line: 70, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !665, line: 190, size: 1152, elements: !666)
!665 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !769, !770, !771, !772, !773, !776}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 191, baseType: !167, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !664, file: !665, line: 192, baseType: !167, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !664, file: !665, line: 202, baseType: !663, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !665, line: 203, baseType: !131, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !664, file: !665, line: 205, baseType: !580, size: 192, align: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !664, file: !665, line: 207, baseType: !495, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !664, file: !665, line: 208, baseType: !13, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 209, baseType: !675, size: 256, offset: 512)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 209, size: 256, elements: !676)
!676 = !{!677, !689, !693}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !675, file: !665, line: 210, baseType: !678, size: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !665, line: 153, size: 256, elements: !679)
!679 = !{!680, !681, !685, !688}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !678, file: !665, line: 154, baseType: !267, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !678, file: !665, line: 156, baseType: !682, size: 64, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !581, line: 12, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !682, file: !581, line: 13, baseType: !585, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !678, file: !665, line: 162, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !665, line: 162, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !678, file: !665, line: 167, baseType: !267, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !675, file: !665, line: 211, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !665, line: 170, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !690, file: !665, line: 171, baseType: !663, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !675, file: !665, line: 212, baseType: !694, size: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !665, line: 174, size: 256, elements: !695)
!695 = !{!696, !764, !767, !768}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !694, file: !665, line: 175, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !665, line: 271, size: 768, elements: !700)
!700 = !{!701, !724, !728, !732, !737, !741, !745, !749, !750, !751, !752, !760}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !699, file: !665, line: 276, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!52, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !665, line: 251, size: 1216, elements: !707)
!707 = !{!708, !709, !710, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !706, file: !665, line: 253, baseType: !663, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !706, file: !665, line: 254, baseType: !300, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !706, file: !665, line: 255, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !713, line: 66, flags: DIFlagFwdDecl)
!713 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!714 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !706, file: !665, line: 256, baseType: !93, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !706, file: !665, line: 259, baseType: !474, size: 256, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !706, file: !665, line: 260, baseType: !474, size: 256, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !706, file: !665, line: 261, baseType: !52, size: 32, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !706, file: !665, line: 262, baseType: !134, size: 128, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !706, file: !665, line: 263, baseType: !217, size: 64, offset: 960)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !706, file: !665, line: 265, baseType: !264, size: 64, offset: 1024)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !706, file: !665, line: 266, baseType: !574, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !706, file: !665, line: 267, baseType: !574, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !706, file: !665, line: 268, baseType: !593, size: 64, offset: 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !699, file: !665, line: 277, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !705}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !699, file: !665, line: 290, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!52, !711, !93}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !699, file: !665, line: 292, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!93, !711, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !699, file: !665, line: 293, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!93, !711, !93, !736}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !699, file: !665, line: 294, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !711, !93}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !699, file: !665, line: 296, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!249, !705, !217, !264, !303}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !699, file: !665, line: 306, baseType: !264, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !699, file: !665, line: 313, baseType: !574, size: 8, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !699, file: !665, line: 314, baseType: !746, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !699, file: !665, line: 317, baseType: !753, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!756, !705, !758}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !757, line: 59, baseType: !13)
!757 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !665, line: 31, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !699, file: !665, line: 320, baseType: !761, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!52, !705, !311}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !694, file: !665, line: 176, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !665, line: 35, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !694, file: !665, line: 177, baseType: !303, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !694, file: !665, line: 178, baseType: !663, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !664, file: !665, line: 215, baseType: !93, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !664, file: !665, line: 221, baseType: !380, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !665, line: 223, baseType: !187, size: 16, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !664, file: !665, line: 224, baseType: !259, size: 16, offset: 912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !664, file: !665, line: 225, baseType: !774, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !665, line: 36, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !664, file: !665, line: 227, baseType: !323, size: 128, align: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !127, file: !128, line: 71, baseType: !778, size: 32, offset: 448)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !779, line: 19, size: 32, elements: !780)
!779 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !778, file: !779, line: 20, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !783, line: 113, baseType: !784)
!783 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !783, line: 111, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !784, file: !783, line: 112, baseType: !167, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !127, file: !128, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !127, file: !128, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !127, file: !128, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !127, file: !128, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !127, file: !128, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !124, file: !32, line: 707, baseType: !123, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !124, file: !32, line: 709, baseType: !794, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !32, line: 37, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !124, file: !32, line: 711, baseType: !131, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !32, line: 712, baseType: !798, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !32, line: 89, size: 384, elements: !801)
!801 = !{!802, !803, !804, !810, !815, !819}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !800, file: !32, line: 90, baseType: !131, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !800, file: !32, line: 91, baseType: !269, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !800, file: !32, line: 92, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!52, !808, !212}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !800, file: !32, line: 93, baseType: !811, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!217, !808, !814, !648, !655}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !800, file: !32, line: 95, baseType: !816, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !123}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !800, file: !32, line: 97, baseType: !820, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 286, size: 1472, elements: !823)
!823 = !{!824, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !822, file: !44, line: 287, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!52, !123}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !822, file: !44, line: 288, baseType: !816, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !822, file: !44, line: 289, baseType: !825, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !822, file: !44, line: 290, baseType: !825, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !822, file: !44, line: 291, baseType: !825, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !822, file: !44, line: 292, baseType: !825, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !822, file: !44, line: 293, baseType: !825, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !822, file: !44, line: 294, baseType: !825, size: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !822, file: !44, line: 295, baseType: !825, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !822, file: !44, line: 296, baseType: !825, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !822, file: !44, line: 297, baseType: !825, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !822, file: !44, line: 298, baseType: !825, size: 64, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !822, file: !44, line: 299, baseType: !825, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !822, file: !44, line: 300, baseType: !825, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !822, file: !44, line: 301, baseType: !825, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !822, file: !44, line: 302, baseType: !825, size: 64, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !822, file: !44, line: 303, baseType: !825, size: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !822, file: !44, line: 304, baseType: !825, size: 64, offset: 1088)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !822, file: !44, line: 305, baseType: !825, size: 64, offset: 1152)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !822, file: !44, line: 306, baseType: !825, size: 64, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !822, file: !44, line: 307, baseType: !825, size: 64, offset: 1280)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !822, file: !44, line: 308, baseType: !825, size: 64, offset: 1344)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !822, file: !44, line: 309, baseType: !825, size: 64, offset: 1408)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !124, file: !32, line: 714, baseType: !851, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !854, line: 80, size: 1344, elements: !855)
!854 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!855 = !{!856, !857, !858, !859, !860, !861, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1301}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !854, line: 81, baseType: !131, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !853, file: !854, line: 82, baseType: !131, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !853, file: !854, line: 83, baseType: !269, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !853, file: !854, line: 84, baseType: !269, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !853, file: !854, line: 85, baseType: !269, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !853, file: !854, line: 87, baseType: !862, size: 64, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!52, !123, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !26, line: 96, size: 1152, elements: !867)
!867 = !{!868, !869, !870, !1253, !1254, !1255, !1256, !1260, !1264, !1265, !1266, !1267, !1268, !1276, !1277, !1278, !1279, !1280, !1281}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !26, line: 97, baseType: !131, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !866, file: !26, line: 98, baseType: !851, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !866, file: !26, line: 100, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !873)
!873 = !{!874, !875, !876, !880, !901, !927, !928, !929, !930, !934, !937, !938, !939, !992, !993, !994, !995, !996, !997, !998, !999, !1007, !1011, !1031, !1049, !1050, !1051, !1052, !1061, !1085, !1086, !1089, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1103, !1104, !1211, !1219, !1220, !1221, !1223, !1227, !1228, !1232, !1233, !1234, !1235, !1237, !1238, !1239, !1246, !1247, !1248, !1252}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !872, file: !19, line: 403, baseType: !18, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !872, file: !19, line: 406, baseType: !134, size: 128, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !872, file: !19, line: 409, baseType: !877, size: 448, offset: 192)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 56)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !872, file: !19, line: 417, baseType: !881, size: 768, offset: 640)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !882)
!882 = !{!883, !884, !885, !886, !889}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !881, file: !19, line: 46, baseType: !127, size: 512)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !881, file: !19, line: 47, baseType: !871, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !881, file: !19, line: 48, baseType: !140, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !881, file: !19, line: 49, baseType: !887, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !881, file: !19, line: 50, baseType: !890, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !892, line: 26, size: 256, elements: !893)
!892 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !891, file: !892, line: 27, baseType: !13, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !891, file: !892, line: 28, baseType: !896, size: 192, offset: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !897, line: 43, size: 192, elements: !898)
!897 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !896, file: !897, line: 44, baseType: !408, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !896, file: !897, line: 45, baseType: !134, size: 128, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !872, file: !19, line: 418, baseType: !902, size: 64, offset: 1408)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !904)
!904 = !{!905, !906, !911, !915, !919, !923}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !903, file: !19, line: 54, baseType: !255, size: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !903, file: !19, line: 55, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!249, !902, !910, !217}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !903, file: !19, line: 57, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!249, !902, !910, !131, !264}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !903, file: !19, line: 59, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !871, !131}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !903, file: !19, line: 60, baseType: !920, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!52, !871}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !903, file: !19, line: 61, baseType: !924, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !871}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !872, file: !19, line: 419, baseType: !131, size: 64, offset: 1472)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !872, file: !19, line: 420, baseType: !131, size: 64, offset: 1536)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !872, file: !19, line: 421, baseType: !140, size: 64, offset: 1600)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !872, file: !19, line: 424, baseType: !931, size: 64, offset: 1664)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !872, file: !19, line: 425, baseType: !935, size: 64, offset: 1728)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !872, file: !19, line: 426, baseType: !13, size: 32, offset: 1792)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !872, file: !19, line: 435, baseType: !474, size: 256, offset: 1856)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !872, file: !19, line: 437, baseType: !940, size: 64, offset: 2112)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !942, line: 69, size: 320, elements: !943)
!942 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!943 = !{!944, !945, !946, !963, !965, !969, !970}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !942, line: 70, baseType: !131, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !941, file: !942, line: 71, baseType: !871, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !941, file: !942, line: 72, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !942, line: 47, size: 256, elements: !950)
!950 = !{!951, !952, !958, !962}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !942, line: 49, baseType: !13, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !949, file: !942, line: 51, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!52, !131, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !949, file: !942, line: 53, baseType: !959, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!52, !217, !956}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !949, file: !942, line: 55, baseType: !637, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !941, file: !942, line: 73, baseType: !964, size: 16, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !941, file: !942, line: 74, baseType: !966, size: 8, offset: 208)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !176, line: 16, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !178, line: 20, baseType: !968)
!968 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !942, line: 75, baseType: !175, size: 8, offset: 216)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !942, line: 76, baseType: !971, size: 64, offset: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !942, line: 76, size: 64, elements: !972)
!972 = !{!973, !974, !981}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !971, file: !942, line: 77, baseType: !93, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !971, file: !942, line: 78, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !942, line: 86, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !977, file: !942, line: 87, baseType: !13, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !977, file: !942, line: 88, baseType: !217, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !971, file: !942, line: 79, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !942, line: 92, size: 256, elements: !985)
!985 = !{!986, !987, !988, !990, !991}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !984, file: !942, line: 94, baseType: !13, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !984, file: !942, line: 95, baseType: !13, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !984, file: !942, line: 96, baseType: !989, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !984, file: !942, line: 97, baseType: !947, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !984, file: !942, line: 98, baseType: !93, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !872, file: !19, line: 438, baseType: !13, size: 32, offset: 2176)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !872, file: !19, line: 441, baseType: !13, size: 32, offset: 2208)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !872, file: !19, line: 442, baseType: !931, size: 64, offset: 2240)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !872, file: !19, line: 443, baseType: !935, size: 64, offset: 2304)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !872, file: !19, line: 444, baseType: !574, size: 8, offset: 2368)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !872, file: !19, line: 451, baseType: !574, size: 8, offset: 2376)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !872, file: !19, line: 454, baseType: !13, size: 32, offset: 2400)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !872, file: !19, line: 455, baseType: !1000, size: 64, offset: 2432)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1002, line: 23, size: 96, elements: !1003)
!1002 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1001, file: !1002, line: 24, baseType: !52, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1001, file: !1002, line: 24, baseType: !52, size: 32, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1001, file: !1002, line: 24, baseType: !52, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !872, file: !19, line: 458, baseType: !1008, size: 64, offset: 2496)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!52}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !872, file: !19, line: 460, baseType: !1012, size: 4032, align: 512, offset: 2560)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 4032, elements: !1029)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1013, file: !19, line: 363, baseType: !93, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1013, file: !19, line: 364, baseType: !13, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1013, file: !19, line: 367, baseType: !1018, size: 448, offset: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1018, file: !19, line: 320, baseType: !871, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1018, file: !19, line: 321, baseType: !1022, size: 384, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1023, line: 40, size: 384, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1022, file: !1023, line: 41, baseType: !1026, size: 384, align: 64)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 384, align: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 2)
!1029 = !{!1030}
!1030 = !DISubrange(count: 7)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !872, file: !19, line: 463, baseType: !1032, size: 192, offset: 6592)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1033, line: 8, size: 192, elements: !1034)
!1033 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1034 = !{!1035, !1036, !1038}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1032, file: !1033, line: 10, baseType: !13, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1032, file: !1033, line: 11, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1032, file: !1033, line: 12, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1041, line: 59, size: 48, elements: !1042)
!1041 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1040, file: !1041, line: 60, baseType: !512, size: 16)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1040, file: !1041, line: 61, baseType: !512, size: 16, offset: 16)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1040, file: !1041, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1040, file: !1041, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1040, file: !1041, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1040, file: !1041, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !872, file: !19, line: 465, baseType: !267, size: 64, offset: 6784)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !872, file: !19, line: 469, baseType: !13, size: 32, offset: 6848)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !872, file: !19, line: 470, baseType: !134, size: 128, offset: 6912)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !872, file: !19, line: 471, baseType: !1053, size: 64, offset: 7040)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1055, line: 33, size: 96, elements: !1056)
!1055 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1054, file: !1055, line: 37, baseType: !52, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1054, file: !1055, line: 43, baseType: !52, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1054, file: !1055, line: 45, baseType: !187, size: 16, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 47, baseType: !187, size: 16, offset: 80)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !872, file: !19, line: 476, baseType: !1062, size: 64, offset: 7104)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !1064)
!1064 = !{!1065, !1082, !1083, !1084}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1063, file: !19, line: 379, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1068, line: 204, baseType: !1069)
!1068 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1068, line: 197, size: 192, elements: !1070)
!1070 = !{!1071, !1074, !1075, !1076, !1078, !1080}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1069, file: !1068, line: 198, baseType: !1072, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1068, line: 21, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !178, line: 27, baseType: !13)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1069, file: !1068, line: 199, baseType: !179, size: 8, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1069, file: !1068, line: 200, baseType: !179, size: 8, offset: 40)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1069, file: !1068, line: 201, baseType: !1077, size: 16, offset: 48)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1068, line: 17, baseType: !186)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1069, file: !1068, line: 202, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1068, line: 16, baseType: !381)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1069, file: !1068, line: 203, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1068, line: 22, baseType: !381)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1063, file: !19, line: 380, baseType: !13, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1063, file: !19, line: 381, baseType: !217, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1063, file: !19, line: 382, baseType: !217, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !872, file: !19, line: 477, baseType: !1063, size: 256, offset: 7168)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !872, file: !19, line: 480, baseType: !1087, size: 64, offset: 7424)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !872, file: !19, line: 483, baseType: !1090, size: 64, offset: 7488)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !872, file: !19, line: 488, baseType: !217, size: 64, offset: 7552)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !872, file: !19, line: 492, baseType: !93, size: 64, offset: 7616)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !872, file: !19, line: 493, baseType: !13, size: 32, offset: 7680)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !872, file: !19, line: 495, baseType: !93, size: 64, offset: 7744)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !872, file: !19, line: 496, baseType: !13, size: 32, offset: 7808)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !872, file: !19, line: 499, baseType: !13, size: 32, offset: 7840)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !872, file: !19, line: 500, baseType: !1099, size: 64, offset: 7872)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1101, line: 45, baseType: !1102)
!1101 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !872, file: !19, line: 503, baseType: !13, size: 32, offset: 7936)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !872, file: !19, line: 504, baseType: !1105, size: 64, offset: 8000)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1108, line: 96, size: 192, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1109 = !{!1110, !1111, !1172, !1175}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1107, file: !1108, line: 97, baseType: !13, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1107, file: !1108, line: 98, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1108, line: 24, size: 3072, elements: !1114)
!1114 = !{!1115, !1117, !1118, !1119, !1120, !1134, !1135, !1136, !1137, !1156, !1157, !1158, !1169, !1170, !1171}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1113, file: !1108, line: 26, baseType: !1116, size: 128)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !1027)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1113, file: !1108, line: 27, baseType: !1116, size: 128, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1113, file: !1108, line: 28, baseType: !52, size: 32, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1108, line: 31, baseType: !147, size: 32, align: 512, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1113, file: !1108, line: 32, baseType: !1121, size: 960, offset: 576)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1122, line: 206, size: 960, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1123 = !{!1124, !1125, !1128, !1130, !1131, !1133}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1121, file: !1122, line: 207, baseType: !326, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1121, file: !1122, line: 208, baseType: !1126, size: 256, offset: 64)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 256, elements: !455)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1121, file: !1122, line: 209, baseType: !1129, size: 256, offset: 320)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !455)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1121, file: !1122, line: 213, baseType: !253, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1121, file: !1122, line: 215, baseType: !1132, size: 256, offset: 640)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !455)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !1122, line: 216, baseType: !175, size: 8, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1113, file: !1108, line: 33, baseType: !267, size: 64, offset: 1536)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1113, file: !1108, line: 34, baseType: !267, size: 64, offset: 1600)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1113, file: !1108, line: 35, baseType: !574, size: 8, offset: 1664)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1113, file: !1108, line: 36, baseType: !1138, size: 320, offset: 1728)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1139, line: 11, size: 320, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1140 = !{!1141, !1148, !1149, !1154}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1138, file: !1139, line: 16, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !92, line: 198, size: 128, elements: !1143)
!1143 = !{!1144, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1142, file: !92, line: 199, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1142, file: !92, line: 199, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1138, file: !1139, line: 17, baseType: !267, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1138, file: !1139, line: 18, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !1139, line: 19, baseType: !1155, size: 32, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !176, line: 21, baseType: !1073)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1113, file: !1108, line: 37, baseType: !539, size: 256, offset: 2048)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1113, file: !1108, line: 38, baseType: !323, size: 128, align: 64, offset: 2304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1113, file: !1108, line: 39, baseType: !1159, size: 64, offset: 2432)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1108, line: 49, size: 768, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1160, file: !1108, line: 50, baseType: !147, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1160, file: !1108, line: 51, baseType: !1129, size: 256, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1160, file: !1108, line: 53, baseType: !1129, size: 256, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1160, file: !1108, line: 54, baseType: !267, size: 64, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1160, file: !1108, line: 55, baseType: !1159, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1160, file: !1108, line: 56, baseType: !52, size: 32, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1160, file: !1108, line: 57, baseType: !52, size: 32, offset: 736)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1113, file: !1108, line: 40, baseType: !267, size: 64, offset: 2496)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1113, file: !1108, line: 42, baseType: !52, size: 32, offset: 2560)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1113, file: !1108, line: 43, baseType: !1106, size: 64, offset: 2624)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1107, file: !1108, line: 99, baseType: !1173, offset: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1174, line: 211, elements: !353)
!1174 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1107, file: !1108, line: 100, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1108, line: 63, size: 3008, elements: !1178)
!1178 = !{!1179, !1180, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1210}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1177, file: !1108, line: 64, baseType: !1159, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1177, file: !1108, line: 65, baseType: !1181, size: 192, offset: 64)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 192, elements: !218)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1177, file: !1108, line: 67, baseType: !52, size: 32, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1177, file: !1108, line: 68, baseType: !474, size: 256, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1177, file: !1108, line: 69, baseType: !147, size: 32, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1177, file: !1108, line: 70, baseType: !474, size: 256, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1177, file: !1108, line: 71, baseType: !267, size: 64, offset: 896)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1177, file: !1108, line: 72, baseType: !267, size: 64, offset: 960)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1177, file: !1108, line: 73, baseType: !267, size: 64, offset: 1024)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1177, file: !1108, line: 74, baseType: !267, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1177, file: !1108, line: 75, baseType: !267, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1177, file: !1108, line: 76, baseType: !267, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1177, file: !1108, line: 77, baseType: !267, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1177, file: !1108, line: 78, baseType: !267, size: 64, offset: 1344)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1177, file: !1108, line: 79, baseType: !574, size: 8, offset: 1408)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1177, file: !1108, line: 80, baseType: !267, size: 64, offset: 1472)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1177, file: !1108, line: 81, baseType: !474, size: 256, offset: 1536)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1177, file: !1108, line: 82, baseType: !891, size: 256, offset: 1792)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1177, file: !1108, line: 84, baseType: !167, size: 32, offset: 2048)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1177, file: !1108, line: 87, baseType: !267, size: 64, offset: 2112)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1177, file: !1108, line: 88, baseType: !267, size: 64, offset: 2176)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1177, file: !1108, line: 89, baseType: !1202, size: 704, offset: 2240)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !540, line: 111, size: 704, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1209}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1202, file: !540, line: 112, baseType: !539, size: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1202, file: !540, line: 113, baseType: !1138, size: 320, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1202, file: !540, line: 116, baseType: !1207, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !540, line: 18, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1202, file: !540, line: 117, baseType: !52, size: 32, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1177, file: !1108, line: 90, baseType: !1106, size: 64, offset: 2944)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !872, file: !19, line: 515, baseType: !1212, size: 64, offset: 8064)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1214, line: 117, size: 128, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1213, file: !1214, line: 118, baseType: !453, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1213, file: !1214, line: 119, baseType: !453, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1213, file: !1214, line: 120, baseType: !253, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !872, file: !19, line: 516, baseType: !13, size: 32, offset: 8128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !872, file: !19, line: 519, baseType: !13, size: 32, offset: 8160)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !872, file: !19, line: 520, baseType: !1222, size: 64, offset: 8192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !872, file: !19, line: 523, baseType: !1224, size: 64, offset: 8256)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !872, file: !19, line: 524, baseType: !13, size: 32, offset: 8320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !872, file: !19, line: 525, baseType: !1229, size: 64, offset: 8384)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !872, file: !19, line: 526, baseType: !13, size: 32, offset: 8448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !872, file: !19, line: 533, baseType: !93, size: 64, offset: 8512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !872, file: !19, line: 534, baseType: !13, size: 32, offset: 8576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !872, file: !19, line: 535, baseType: !1236, size: 64, offset: 8640)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !872, file: !19, line: 536, baseType: !13, size: 32, offset: 8704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !872, file: !19, line: 539, baseType: !52, size: 32, offset: 8736)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !872, file: !19, line: 540, baseType: !1240, size: 64, offset: 8768)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1242, line: 32, size: 64, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1241, file: !1242, line: 33, baseType: !453, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1241, file: !1242, line: 34, baseType: !453, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !872, file: !19, line: 563, baseType: !134, size: 128, offset: 8832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !872, file: !19, line: 565, baseType: !134, size: 128, offset: 8960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !872, file: !19, line: 568, baseType: !1249, size: 64, offset: 9088)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !872, file: !19, line: 570, baseType: !167, size: 32, offset: 9152)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !866, file: !26, line: 101, baseType: !131, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !866, file: !26, line: 103, baseType: !574, size: 8, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !866, file: !26, line: 104, baseType: !25, size: 32, offset: 288)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !866, file: !26, line: 106, baseType: !1257, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !26, line: 106, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !866, file: !26, line: 107, baseType: !1261, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !26, line: 107, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !866, file: !26, line: 109, baseType: !825, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !866, file: !26, line: 110, baseType: !816, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !866, file: !26, line: 111, baseType: !825, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !866, file: !26, line: 112, baseType: !816, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !866, file: !26, line: 113, baseType: !1269, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!52, !123, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 60, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 58, size: 32, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1273, file: !44, line: 59, baseType: !52, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !866, file: !26, line: 114, baseType: !825, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !866, file: !26, line: 115, baseType: !269, size: 64, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !866, file: !26, line: 116, baseType: !269, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !866, file: !26, line: 118, baseType: !820, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !866, file: !26, line: 119, baseType: !816, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !866, file: !26, line: 121, baseType: !1282, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !26, line: 121, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !853, file: !854, line: 88, baseType: !805, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !853, file: !854, line: 89, baseType: !825, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !853, file: !854, line: 90, baseType: !816, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !853, file: !854, line: 91, baseType: !816, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !853, file: !854, line: 92, baseType: !816, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !853, file: !854, line: 94, baseType: !825, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !853, file: !854, line: 95, baseType: !825, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !853, file: !854, line: 97, baseType: !1269, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !853, file: !854, line: 98, baseType: !825, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !853, file: !854, line: 100, baseType: !825, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !853, file: !854, line: 102, baseType: !825, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !853, file: !854, line: 103, baseType: !816, size: 64, offset: 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !853, file: !854, line: 105, baseType: !820, size: 64, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !853, file: !854, line: 107, baseType: !1298, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !854, line: 107, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !853, file: !854, line: 109, baseType: !574, size: 8, offset: 1280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !124, file: !32, line: 715, baseType: !865, size: 64, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !124, file: !32, line: 717, baseType: !93, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !124, file: !32, line: 719, baseType: !93, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !124, file: !32, line: 721, baseType: !474, size: 256, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !124, file: !32, line: 725, baseType: !1307, size: 448, offset: 1280)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !32, line: 517, size: 448, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1307, file: !32, line: 518, baseType: !134, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1307, file: !32, line: 519, baseType: !134, size: 128, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1307, file: !32, line: 520, baseType: !134, size: 128, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1307, file: !32, line: 521, baseType: !31, size: 32, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !124, file: !32, line: 726, baseType: !1314, size: 2496, offset: 1728)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 663, size: 2496, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1360, !1361, !1362, !1363, !1364, !1365, !1436, !1437, !1438, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1476, !1480}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1314, file: !44, line: 664, baseType: !1272, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1314, file: !44, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1314, file: !44, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1314, file: !44, line: 667, baseType: !574, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1314, file: !44, line: 668, baseType: !574, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1314, file: !44, line: 669, baseType: !574, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1314, file: !44, line: 670, baseType: !574, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1314, file: !44, line: 671, baseType: !574, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1314, file: !44, line: 672, baseType: !574, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1314, file: !44, line: 673, baseType: !574, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1314, file: !44, line: 674, baseType: !574, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1314, file: !44, line: 675, baseType: !1155, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !44, line: 676, baseType: !147, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1314, file: !44, line: 678, baseType: !134, size: 128, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1314, file: !44, line: 679, baseType: !891, size: 256, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1314, file: !44, line: 680, baseType: !1332, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1334, line: 43, size: 1536, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1343, !1344, !1345, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1333, file: !1334, line: 44, baseType: !131, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1333, file: !1334, line: 45, baseType: !52, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1333, file: !1334, line: 46, baseType: !134, size: 128, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1333, file: !1334, line: 47, baseType: !147, size: 32, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1333, file: !1334, line: 48, baseType: !1341, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 629, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1333, file: !1334, line: 49, baseType: !1138, size: 320, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1333, file: !1334, line: 50, baseType: !267, size: 64, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1333, file: !1334, line: 51, baseType: !1346, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1347, line: 29, baseType: !392)
!1347 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1333, file: !1334, line: 52, baseType: !1346, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1333, file: !1334, line: 53, baseType: !1346, size: 64, offset: 896)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1333, file: !1334, line: 54, baseType: !1346, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1333, file: !1334, line: 55, baseType: !1346, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1333, file: !1334, line: 56, baseType: !267, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1333, file: !1334, line: 57, baseType: !267, size: 64, offset: 1152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1333, file: !1334, line: 58, baseType: !267, size: 64, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1333, file: !1334, line: 59, baseType: !267, size: 64, offset: 1280)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1333, file: !1334, line: 60, baseType: !267, size: 64, offset: 1344)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1333, file: !1334, line: 61, baseType: !123, size: 64, offset: 1408)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1333, file: !1334, line: 62, baseType: !574, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1333, file: !1334, line: 63, baseType: !574, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1314, file: !44, line: 681, baseType: !574, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1314, file: !44, line: 682, baseType: !574, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1314, file: !44, line: 683, baseType: !574, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1314, file: !44, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1314, file: !44, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1314, file: !44, line: 690, baseType: !1366, size: 512, offset: 640)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1367)
!1367 = !{!1368, !1374, !1375, !1380, !1432, !1433, !1434, !1435}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1366, file: !39, line: 119, baseType: !1369, size: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1370, line: 9, size: 256, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1369, file: !1370, line: 10, baseType: !580, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1369, file: !1370, line: 11, baseType: !1346, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1366, file: !39, line: 120, baseType: !1346, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1366, file: !39, line: 121, baseType: !1376, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!38, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1366, file: !39, line: 122, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1383)
!1383 = !{!1384, !1409, !1410, !1413, !1418, !1419, !1427, !1431}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1382, file: !39, line: 160, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !39, line: 216, baseType: !408, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1386, file: !39, line: 217, baseType: !13, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1386, file: !39, line: 218, baseType: !13, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1386, file: !39, line: 219, baseType: !13, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1386, file: !39, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1386, file: !39, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1386, file: !39, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1386, file: !39, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1386, file: !39, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1386, file: !39, line: 226, baseType: !13, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1386, file: !39, line: 227, baseType: !187, size: 16, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1386, file: !39, line: 228, baseType: !187, size: 16, offset: 208)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1386, file: !39, line: 229, baseType: !13, size: 32, offset: 224)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1386, file: !39, line: 235, baseType: !1346, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1386, file: !39, line: 236, baseType: !1379, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1386, file: !39, line: 237, baseType: !1346, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1386, file: !39, line: 238, baseType: !1379, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1386, file: !39, line: 239, baseType: !1406, size: 4096, align: 512, offset: 512)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 4096, align: 512, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 8)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1382, file: !39, line: 161, baseType: !13, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1382, file: !39, line: 162, baseType: !1411, size: 32, offset: 96)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !92, line: 32, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !251, line: 96, baseType: !52)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1382, file: !39, line: 163, baseType: !1414, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !423, line: 274, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !423, line: 274, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1415, file: !423, line: 274, baseType: !422, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1382, file: !39, line: 164, baseType: !1379, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1382, file: !39, line: 165, baseType: !1420, size: 128, offset: 256)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1370, line: 14, size: 128, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1420, file: !1370, line: 15, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !581, line: 26, size: 128, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1423, file: !581, line: 27, baseType: !682, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1423, file: !581, line: 28, baseType: !585, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1382, file: !39, line: 166, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1346}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1382, file: !39, line: 167, baseType: !1346, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1366, file: !39, line: 123, baseType: !175, size: 8, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1366, file: !39, line: 124, baseType: !175, size: 8, offset: 456)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1366, file: !39, line: 125, baseType: !175, size: 8, offset: 464)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1366, file: !39, line: 126, baseType: !175, size: 8, offset: 472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1314, file: !44, line: 691, baseType: !380, size: 64, offset: 1152)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1314, file: !44, line: 692, baseType: !539, size: 256, offset: 1216)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1314, file: !44, line: 693, baseType: !1439, size: 192, offset: 1472)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1440, line: 41, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1440, line: 37, size: 192, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !1440, line: 38, baseType: !147, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1441, file: !1440, line: 39, baseType: !134, size: 128, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1314, file: !44, line: 694, baseType: !1341, size: 64, offset: 1664)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1314, file: !44, line: 695, baseType: !167, size: 32, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1314, file: !44, line: 696, baseType: !167, size: 32, offset: 1760)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1314, file: !44, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1314, file: !44, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1314, file: !44, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1314, file: !44, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1314, file: !44, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1314, file: !44, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1314, file: !44, line: 703, baseType: !574, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1314, file: !44, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1314, file: !44, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1314, file: !44, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1314, file: !44, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1314, file: !44, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1314, file: !44, line: 709, baseType: !13, size: 32, offset: 1824)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1314, file: !44, line: 710, baseType: !43, size: 32, offset: 1856)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1314, file: !44, line: 711, baseType: !51, size: 32, offset: 1888)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1314, file: !44, line: 712, baseType: !51, size: 32, offset: 1920)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1314, file: !44, line: 713, baseType: !52, size: 32, offset: 1952)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1314, file: !44, line: 714, baseType: !52, size: 32, offset: 1984)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1314, file: !44, line: 715, baseType: !380, size: 64, offset: 2048)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1314, file: !44, line: 716, baseType: !380, size: 64, offset: 2112)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1314, file: !44, line: 717, baseType: !380, size: 64, offset: 2176)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1314, file: !44, line: 718, baseType: !380, size: 64, offset: 2240)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1314, file: !44, line: 720, baseType: !1471, size: 64, offset: 2304)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 632, size: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !44, line: 633, baseType: !147, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1472, file: !44, line: 634, baseType: !13, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1314, file: !44, line: 721, baseType: !1477, size: 64, offset: 2368)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !123, !453}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1314, file: !44, line: 722, baseType: !1481, size: 64, offset: 2432)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 722, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !124, file: !32, line: 727, baseType: !1484, size: 64, offset: 4224)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 742, size: 1792, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1493, !1494, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1485, file: !44, line: 743, baseType: !822, size: 1472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1485, file: !44, line: 744, baseType: !825, size: 64, offset: 1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1485, file: !44, line: 745, baseType: !1490, size: 64, offset: 1536)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !123, !574}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1485, file: !44, line: 746, baseType: !825, size: 64, offset: 1600)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1485, file: !44, line: 747, baseType: !816, size: 64, offset: 1664)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1485, file: !44, line: 748, baseType: !816, size: 64, offset: 1728)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !124, file: !32, line: 736, baseType: !1497, size: 128, offset: 4288)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !32, line: 529, size: 128, elements: !1498)
!1498 = !{!1499, !1503}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1497, file: !32, line: 531, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1502, line: 13, flags: DIFlagFwdDecl)
!1502 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1497, file: !32, line: 532, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !32, line: 49, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !124, file: !32, line: 738, baseType: !1507, size: 64, offset: 4416)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !32, line: 738, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !124, file: !32, line: 740, baseType: !1511, size: 64, offset: 4480)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !124, file: !32, line: 741, baseType: !380, size: 64, offset: 4544)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !124, file: !32, line: 746, baseType: !380, size: 64, offset: 4608)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !124, file: !32, line: 747, baseType: !1515, size: 64, offset: 4672)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !32, line: 747, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !124, file: !32, line: 749, baseType: !1519, size: 64, offset: 4736)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !32, line: 428, size: 128, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1520, file: !32, line: 433, baseType: !13, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1520, file: !32, line: 434, baseType: !13, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1520, file: !32, line: 435, baseType: !267, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !124, file: !32, line: 751, baseType: !134, size: 128, offset: 4800)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !124, file: !32, line: 762, baseType: !1527, size: 64, offset: 4928)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !32, line: 762, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !124, file: !32, line: 770, baseType: !1530, offset: 4992)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1531, line: 5, elements: !353)
!1531 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !124, file: !32, line: 772, baseType: !1533, size: 64, offset: 4992)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1535, line: 18, flags: DIFlagFwdDecl)
!1535 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !124, file: !32, line: 773, baseType: !1537, size: 64, offset: 5056)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1539, line: 41, size: 512, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1540 = !{!1541, !1542, !1636, !1637, !1638, !1639}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1538, file: !1539, line: 42, baseType: !1537, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1538, file: !1539, line: 43, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1539, line: 125, size: 1408, elements: !1546)
!1546 = !{!1547, !1551, !1555, !1561, !1565, !1566, !1571, !1575, !1579, !1583, !1587, !1588, !1592, !1596, !1600, !1611, !1612, !1613, !1614, !1624, !1628, !1632}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1545, file: !1539, line: 126, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1537, !1537}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1545, file: !1539, line: 127, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1537}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1545, file: !1539, line: 128, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!574, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1545, file: !1539, line: 129, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!495, !1559, !808}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1545, file: !1539, line: 131, baseType: !1556, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1545, file: !1539, line: 133, baseType: !1567, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1570, !1559}
!1570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !1539, line: 132, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1545, file: !1539, line: 134, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!574, !1559, !131}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1545, file: !1539, line: 136, baseType: !1576, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!52, !1559, !131, !13, !93, !264}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1545, file: !1539, line: 141, baseType: !1580, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!52, !1559, !131, !1222, !264}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1545, file: !1539, line: 144, baseType: !1584, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!131, !1559}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1545, file: !1539, line: 145, baseType: !1584, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1545, file: !1539, line: 146, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1537, !1559}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1545, file: !1539, line: 148, baseType: !1593, size: 64, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1537, !1559, !1537}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1545, file: !1539, line: 151, baseType: !1597, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1537, !1559, !131}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1545, file: !1539, line: 153, baseType: !1601, size: 64, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!52, !1559, !131, !131, !13, !13, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1539, line: 94, size: 640, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1605, file: !1539, line: 95, baseType: !1537, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1605, file: !1539, line: 96, baseType: !13, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1605, file: !1539, line: 97, baseType: !1610, size: 512, offset: 128)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 512, elements: !1407)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1545, file: !1539, line: 158, baseType: !1593, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1545, file: !1539, line: 161, baseType: !1589, size: 64, offset: 1024)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1545, file: !1539, line: 163, baseType: !1548, size: 64, offset: 1088)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1545, file: !1539, line: 164, baseType: !1615, size: 64, offset: 1152)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!52, !1559, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1539, line: 73, size: 128, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1619, file: !1539, line: 74, baseType: !13, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1619, file: !1539, line: 75, baseType: !13, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1619, file: !1539, line: 76, baseType: !1559, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1545, file: !1539, line: 166, baseType: !1625, size: 64, offset: 1216)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!93, !1537, !52}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1545, file: !1539, line: 167, baseType: !1629, size: 64, offset: 1280)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!52, !1559, !13}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1545, file: !1539, line: 168, baseType: !1633, size: 64, offset: 1344)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!52, !1537}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1538, file: !1539, line: 44, baseType: !123, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1538, file: !1539, line: 45, baseType: !134, size: 128, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1538, file: !1539, line: 46, baseType: !134, size: 128, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !1539, line: 47, baseType: !175, size: 8, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !124, file: !32, line: 776, baseType: !52, size: 32, offset: 5120)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !124, file: !32, line: 778, baseType: !1642, size: 32, offset: 5152)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !92, line: 21, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !92, line: 18, baseType: !1155)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !124, file: !32, line: 779, baseType: !1155, size: 32, offset: 5184)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !124, file: !32, line: 781, baseType: !147, size: 32, offset: 5216)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !124, file: !32, line: 782, baseType: !134, size: 128, offset: 5248)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !124, file: !32, line: 784, baseType: !1648, size: 64, offset: 5376)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1651, line: 52, size: 768, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1661, !1665, !1666, !1667, !1668, !1672, !1676}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1650, file: !1651, line: 53, baseType: !131, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1650, file: !1651, line: 55, baseType: !269, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1650, file: !1651, line: 56, baseType: !269, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1650, file: !1651, line: 58, baseType: !805, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1650, file: !1651, line: 59, baseType: !1658, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!217, !808, !814}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1650, file: !1651, line: 61, baseType: !1662, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1648}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1650, file: !1651, line: 62, baseType: !816, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1650, file: !1651, line: 64, baseType: !825, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1650, file: !1651, line: 66, baseType: !613, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1650, file: !1651, line: 67, baseType: !1669, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!495, !808}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1650, file: !1651, line: 69, baseType: !1673, size: 64, offset: 640)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !808, !648, !655}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1650, file: !1651, line: 71, baseType: !820, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !124, file: !32, line: 785, baseType: !269, size: 64, offset: 5440)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !124, file: !32, line: 787, baseType: !816, size: 64, offset: 5504)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !124, file: !32, line: 788, baseType: !1680, size: 64, offset: 5568)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !32, line: 46, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !124, file: !32, line: 789, baseType: !1683, size: 64, offset: 5632)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !32, line: 48, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !124, file: !32, line: 791, baseType: !1686, size: 64, offset: 5696)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !32, line: 597, size: 128, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1687, file: !32, line: 598, baseType: !59, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1687, file: !32, line: 599, baseType: !68, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1687, file: !32, line: 600, baseType: !73, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1687, file: !32, line: 601, baseType: !574, size: 8, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1687, file: !32, line: 602, baseType: !574, size: 8, offset: 104)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !124, file: !32, line: 793, baseType: !78, size: 32, offset: 5760)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !124, file: !32, line: 795, baseType: !574, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !124, file: !32, line: 796, baseType: !574, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !124, file: !32, line: 797, baseType: !574, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !124, file: !32, line: 798, baseType: !574, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !124, file: !32, line: 799, baseType: !574, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !1701, line: 100, baseType: !1702)
!1701 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!1705, !52, !93}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !85, line: 17, baseType: !84)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1720}
!1707 = !DILocalVariable(name: "dev", arg: 1, scope: !120, file: !2, line: 51, type: !123)
!1708 = !DILocalVariable(name: "irq", arg: 2, scope: !120, file: !2, line: 51, type: !13)
!1709 = !DILocalVariable(name: "handler", arg: 3, scope: !120, file: !2, line: 52, type: !1700)
!1710 = !DILocalVariable(name: "thread_fn", arg: 4, scope: !120, file: !2, line: 52, type: !1700)
!1711 = !DILocalVariable(name: "irqflags", arg: 5, scope: !120, file: !2, line: 53, type: !267)
!1712 = !DILocalVariable(name: "devname", arg: 6, scope: !120, file: !2, line: 53, type: !131)
!1713 = !DILocalVariable(name: "dev_id", arg: 7, scope: !120, file: !2, line: 54, type: !93)
!1714 = !DILocalVariable(name: "dr", scope: !120, file: !2, line: 56, type: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_devres", file: !2, line: 13, size: 128, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1716, file: !2, line: 14, baseType: !13, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !1716, file: !2, line: 15, baseType: !93, size: 64, offset: 64)
!1720 = !DILocalVariable(name: "rc", scope: !120, file: !2, line: 57, type: !52)
!1721 = !DILocation(line: 51, column: 46, scope: !120)
!1722 = !DILocation(line: 51, column: 64, scope: !120)
!1723 = !DILocation(line: 52, column: 24, scope: !120)
!1724 = !DILocation(line: 52, column: 47, scope: !120)
!1725 = !DILocation(line: 53, column: 24, scope: !120)
!1726 = !DILocation(line: 53, column: 46, scope: !120)
!1727 = !DILocation(line: 54, column: 16, scope: !120)
!1728 = !DILocation(line: 56, column: 2, scope: !120)
!1729 = !DILocation(line: 56, column: 21, scope: !120)
!1730 = !DILocation(line: 57, column: 2, scope: !120)
!1731 = !DILocation(line: 57, column: 6, scope: !120)
!1732 = !DILocation(line: 59, column: 7, scope: !120)
!1733 = !DILocation(line: 59, column: 5, scope: !120)
!1734 = !DILocation(line: 61, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !120, file: !2, line: 61, column: 6)
!1736 = !DILocation(line: 61, column: 6, scope: !120)
!1737 = !DILocation(line: 62, column: 3, scope: !1735)
!1738 = !DILocation(line: 64, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !120, file: !2, line: 64, column: 6)
!1740 = !DILocation(line: 64, column: 6, scope: !120)
!1741 = !DILocation(line: 65, column: 22, scope: !1739)
!1742 = !DILocation(line: 65, column: 13, scope: !1739)
!1743 = !DILocation(line: 65, column: 11, scope: !1739)
!1744 = !DILocation(line: 65, column: 3, scope: !1739)
!1745 = !DILocation(line: 67, column: 28, scope: !120)
!1746 = !DILocation(line: 67, column: 33, scope: !120)
!1747 = !DILocation(line: 67, column: 42, scope: !120)
!1748 = !DILocation(line: 67, column: 53, scope: !120)
!1749 = !DILocation(line: 67, column: 63, scope: !120)
!1750 = !DILocation(line: 68, column: 7, scope: !120)
!1751 = !DILocation(line: 67, column: 7, scope: !120)
!1752 = !DILocation(line: 67, column: 5, scope: !120)
!1753 = !DILocation(line: 69, column: 6, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !120, file: !2, line: 69, column: 6)
!1755 = !DILocation(line: 69, column: 6, scope: !120)
!1756 = !DILocation(line: 70, column: 15, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 69, column: 10)
!1758 = !DILocation(line: 70, column: 3, scope: !1757)
!1759 = !DILocation(line: 71, column: 10, scope: !1757)
!1760 = !DILocation(line: 71, column: 3, scope: !1757)
!1761 = !DILocation(line: 74, column: 12, scope: !120)
!1762 = !DILocation(line: 74, column: 2, scope: !120)
!1763 = !DILocation(line: 74, column: 6, scope: !120)
!1764 = !DILocation(line: 74, column: 10, scope: !120)
!1765 = !DILocation(line: 75, column: 15, scope: !120)
!1766 = !DILocation(line: 75, column: 2, scope: !120)
!1767 = !DILocation(line: 75, column: 6, scope: !120)
!1768 = !DILocation(line: 75, column: 13, scope: !120)
!1769 = !DILocation(line: 76, column: 13, scope: !120)
!1770 = !DILocation(line: 76, column: 18, scope: !120)
!1771 = !DILocation(line: 76, column: 2, scope: !120)
!1772 = !DILocation(line: 78, column: 2, scope: !120)
!1773 = !DILocation(line: 79, column: 1, scope: !120)
!1774 = !DISubprogram(name: "__devres_alloc_node", scope: !32, file: !32, line: 274, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!93, !1777, !264, !91, !52, !131}
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !32, line: 271, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !123, !93}
!1781 = distinct !DISubprogram(name: "devm_irq_release", scope: !2, file: !2, line: 18, type: !1779, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DILocalVariable(name: "dev", arg: 1, scope: !1781, file: !2, line: 18, type: !123)
!1784 = !DILocalVariable(name: "res", arg: 2, scope: !1781, file: !2, line: 18, type: !93)
!1785 = !DILocalVariable(name: "this", scope: !1781, file: !2, line: 20, type: !1715)
!1786 = !DILocation(line: 18, column: 45, scope: !1781)
!1787 = !DILocation(line: 18, column: 56, scope: !1781)
!1788 = !DILocation(line: 20, column: 2, scope: !1781)
!1789 = !DILocation(line: 20, column: 21, scope: !1781)
!1790 = !DILocation(line: 20, column: 28, scope: !1781)
!1791 = !DILocation(line: 22, column: 11, scope: !1781)
!1792 = !DILocation(line: 22, column: 17, scope: !1781)
!1793 = !DILocation(line: 22, column: 22, scope: !1781)
!1794 = !DILocation(line: 22, column: 28, scope: !1781)
!1795 = !DILocation(line: 22, column: 2, scope: !1781)
!1796 = !DILocation(line: 23, column: 1, scope: !1781)
!1797 = distinct !DISubprogram(name: "dev_name", scope: !32, file: !32, line: 858, type: !1798, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!131, !808}
!1800 = !{!1801}
!1801 = !DILocalVariable(name: "dev", arg: 1, scope: !1797, file: !32, line: 858, type: !808)
!1802 = !DILocation(line: 858, column: 57, scope: !1797)
!1803 = !DILocation(line: 861, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1797, file: !32, line: 861, column: 6)
!1805 = !DILocation(line: 861, column: 11, scope: !1804)
!1806 = !DILocation(line: 861, column: 6, scope: !1797)
!1807 = !DILocation(line: 862, column: 10, scope: !1804)
!1808 = !DILocation(line: 862, column: 15, scope: !1804)
!1809 = !DILocation(line: 862, column: 3, scope: !1804)
!1810 = !DILocation(line: 864, column: 23, scope: !1797)
!1811 = !DILocation(line: 864, column: 28, scope: !1797)
!1812 = !DILocation(line: 864, column: 9, scope: !1797)
!1813 = !DILocation(line: 864, column: 2, scope: !1797)
!1814 = !DILocation(line: 865, column: 1, scope: !1797)
!1815 = !DISubprogram(name: "request_threaded_irq", scope: !1701, file: !1701, line: 147, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!52, !13, !1700, !1700, !267, !131, !93}
!1818 = !DISubprogram(name: "devres_free", scope: !32, file: !32, line: 285, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1819 = !DISubprogram(name: "devres_add", scope: !32, file: !32, line: 286, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1820 = distinct !DISubprogram(name: "devm_request_any_context_irq", scope: !2, file: !2, line: 99, type: !1821, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!52, !123, !13, !1700, !267, !131, !93}
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1824 = !DILocalVariable(name: "dev", arg: 1, scope: !1820, file: !2, line: 99, type: !123)
!1825 = !DILocalVariable(name: "irq", arg: 2, scope: !1820, file: !2, line: 99, type: !13)
!1826 = !DILocalVariable(name: "handler", arg: 3, scope: !1820, file: !2, line: 100, type: !1700)
!1827 = !DILocalVariable(name: "irqflags", arg: 4, scope: !1820, file: !2, line: 100, type: !267)
!1828 = !DILocalVariable(name: "devname", arg: 5, scope: !1820, file: !2, line: 101, type: !131)
!1829 = !DILocalVariable(name: "dev_id", arg: 6, scope: !1820, file: !2, line: 101, type: !93)
!1830 = !DILocalVariable(name: "dr", scope: !1820, file: !2, line: 103, type: !1715)
!1831 = !DILocalVariable(name: "rc", scope: !1820, file: !2, line: 104, type: !52)
!1832 = !DILocation(line: 99, column: 49, scope: !1820)
!1833 = !DILocation(line: 99, column: 67, scope: !1820)
!1834 = !DILocation(line: 100, column: 24, scope: !1820)
!1835 = !DILocation(line: 100, column: 47, scope: !1820)
!1836 = !DILocation(line: 101, column: 22, scope: !1820)
!1837 = !DILocation(line: 101, column: 37, scope: !1820)
!1838 = !DILocation(line: 103, column: 2, scope: !1820)
!1839 = !DILocation(line: 103, column: 21, scope: !1820)
!1840 = !DILocation(line: 104, column: 2, scope: !1820)
!1841 = !DILocation(line: 104, column: 6, scope: !1820)
!1842 = !DILocation(line: 106, column: 7, scope: !1820)
!1843 = !DILocation(line: 106, column: 5, scope: !1820)
!1844 = !DILocation(line: 108, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 108, column: 6)
!1846 = !DILocation(line: 108, column: 6, scope: !1820)
!1847 = !DILocation(line: 109, column: 3, scope: !1845)
!1848 = !DILocation(line: 111, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 111, column: 6)
!1850 = !DILocation(line: 111, column: 6, scope: !1820)
!1851 = !DILocation(line: 112, column: 22, scope: !1849)
!1852 = !DILocation(line: 112, column: 13, scope: !1849)
!1853 = !DILocation(line: 112, column: 11, scope: !1849)
!1854 = !DILocation(line: 112, column: 3, scope: !1849)
!1855 = !DILocation(line: 114, column: 31, scope: !1820)
!1856 = !DILocation(line: 114, column: 36, scope: !1820)
!1857 = !DILocation(line: 114, column: 45, scope: !1820)
!1858 = !DILocation(line: 114, column: 55, scope: !1820)
!1859 = !DILocation(line: 114, column: 64, scope: !1820)
!1860 = !DILocation(line: 114, column: 7, scope: !1820)
!1861 = !DILocation(line: 114, column: 5, scope: !1820)
!1862 = !DILocation(line: 115, column: 6, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 115, column: 6)
!1864 = !DILocation(line: 115, column: 9, scope: !1863)
!1865 = !DILocation(line: 115, column: 6, scope: !1820)
!1866 = !DILocation(line: 116, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 115, column: 14)
!1868 = !DILocation(line: 116, column: 3, scope: !1867)
!1869 = !DILocation(line: 117, column: 10, scope: !1867)
!1870 = !DILocation(line: 117, column: 3, scope: !1867)
!1871 = !DILocation(line: 120, column: 12, scope: !1820)
!1872 = !DILocation(line: 120, column: 2, scope: !1820)
!1873 = !DILocation(line: 120, column: 6, scope: !1820)
!1874 = !DILocation(line: 120, column: 10, scope: !1820)
!1875 = !DILocation(line: 121, column: 15, scope: !1820)
!1876 = !DILocation(line: 121, column: 2, scope: !1820)
!1877 = !DILocation(line: 121, column: 6, scope: !1820)
!1878 = !DILocation(line: 121, column: 13, scope: !1820)
!1879 = !DILocation(line: 122, column: 13, scope: !1820)
!1880 = !DILocation(line: 122, column: 18, scope: !1820)
!1881 = !DILocation(line: 122, column: 2, scope: !1820)
!1882 = !DILocation(line: 124, column: 9, scope: !1820)
!1883 = !DILocation(line: 124, column: 2, scope: !1820)
!1884 = !DILocation(line: 125, column: 1, scope: !1820)
!1885 = !DISubprogram(name: "request_any_context_irq", scope: !1701, file: !1701, line: 172, type: !1886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!52, !13, !1700, !267, !131, !93}
!1888 = distinct !DISubprogram(name: "devm_free_irq", scope: !2, file: !2, line: 139, type: !1889, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !123, !13, !93}
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1898}
!1892 = !DILocalVariable(name: "dev", arg: 1, scope: !1888, file: !2, line: 139, type: !123)
!1893 = !DILocalVariable(name: "irq", arg: 2, scope: !1888, file: !2, line: 139, type: !13)
!1894 = !DILocalVariable(name: "dev_id", arg: 3, scope: !1888, file: !2, line: 139, type: !93)
!1895 = !DILocalVariable(name: "match_data", scope: !1888, file: !2, line: 141, type: !1716)
!1896 = !DILocalVariable(name: "__ret_warn_on", scope: !1897, file: !2, line: 143, type: !52)
!1897 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 143, column: 2)
!1898 = !DILocalVariable(name: "__flags", scope: !1899, file: !2, line: 143, type: !52)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !2, line: 143, column: 2)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 143, column: 2)
!1901 = !DILocation(line: 139, column: 35, scope: !1888)
!1902 = !DILocation(line: 139, column: 53, scope: !1888)
!1903 = !DILocation(line: 139, column: 64, scope: !1888)
!1904 = !DILocation(line: 141, column: 2, scope: !1888)
!1905 = !DILocation(line: 141, column: 20, scope: !1888)
!1906 = !DILocation(line: 141, column: 33, scope: !1888)
!1907 = !DILocation(line: 141, column: 35, scope: !1888)
!1908 = !DILocation(line: 141, column: 40, scope: !1888)
!1909 = !DILocation(line: 143, column: 2, scope: !1897)
!1910 = !DILocation(line: 143, column: 2, scope: !1900)
!1911 = !DILocation(line: 143, column: 2, scope: !1899)
!1912 = !DILocation(line: 143, column: 2, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 143, column: 2)
!1914 = !DILocation(line: 143, column: 2, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 143, column: 2)
!1916 = !{i64 2153068138, i64 2153068167, i64 2153068213, i64 2153068271, i64 2153068325, i64 2153068379, i64 2153068434, i64 2153068465, i64 2153068773, i64 2153068779, i64 2153068826, i64 2153068849, i64 2153068875}
!1917 = !DILocation(line: 143, column: 2, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 143, column: 2)
!1919 = !DILocation(line: 143, column: 2, scope: !1888)
!1920 = !DILocation(line: 145, column: 11, scope: !1888)
!1921 = !DILocation(line: 145, column: 16, scope: !1888)
!1922 = !DILocation(line: 145, column: 2, scope: !1888)
!1923 = !DILocation(line: 146, column: 1, scope: !1888)
!1924 = !DISubprogram(name: "devres_destroy", scope: !32, file: !32, line: 293, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!52, !123, !1777, !1927, !93}
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !32, line: 272, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!52, !123, !93, !93}
!1931 = distinct !DISubprogram(name: "devm_irq_match", scope: !2, file: !2, line: 25, type: !1929, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1932)
!1932 = !{!1933, !1934, !1935, !1936, !1937}
!1933 = !DILocalVariable(name: "dev", arg: 1, scope: !1931, file: !2, line: 25, type: !123)
!1934 = !DILocalVariable(name: "res", arg: 2, scope: !1931, file: !2, line: 25, type: !93)
!1935 = !DILocalVariable(name: "data", arg: 3, scope: !1931, file: !2, line: 25, type: !93)
!1936 = !DILocalVariable(name: "this", scope: !1931, file: !2, line: 27, type: !1715)
!1937 = !DILocalVariable(name: "match", scope: !1931, file: !2, line: 27, type: !1715)
!1938 = !DILocation(line: 25, column: 42, scope: !1931)
!1939 = !DILocation(line: 25, column: 53, scope: !1931)
!1940 = !DILocation(line: 25, column: 64, scope: !1931)
!1941 = !DILocation(line: 27, column: 2, scope: !1931)
!1942 = !DILocation(line: 27, column: 21, scope: !1931)
!1943 = !DILocation(line: 27, column: 28, scope: !1931)
!1944 = !DILocation(line: 27, column: 34, scope: !1931)
!1945 = !DILocation(line: 27, column: 42, scope: !1931)
!1946 = !DILocation(line: 29, column: 9, scope: !1931)
!1947 = !DILocation(line: 29, column: 15, scope: !1931)
!1948 = !DILocation(line: 29, column: 22, scope: !1931)
!1949 = !DILocation(line: 29, column: 29, scope: !1931)
!1950 = !DILocation(line: 29, column: 19, scope: !1931)
!1951 = !DILocation(line: 29, column: 33, scope: !1931)
!1952 = !DILocation(line: 29, column: 36, scope: !1931)
!1953 = !DILocation(line: 29, column: 42, scope: !1931)
!1954 = !DILocation(line: 29, column: 52, scope: !1931)
!1955 = !DILocation(line: 29, column: 59, scope: !1931)
!1956 = !DILocation(line: 29, column: 49, scope: !1931)
!1957 = !DILocation(line: 0, scope: !1931)
!1958 = !DILocation(line: 30, column: 1, scope: !1931)
!1959 = !DILocation(line: 29, column: 2, scope: !1931)
!1960 = !DISubprogram(name: "free_irq", scope: !1701, file: !1701, line: 196, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!495, !13, !93}
!1963 = distinct !DISubprogram(name: "__devm_irq_alloc_descs", scope: !2, file: !2, line: 178, type: !1964, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1979)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!52, !123, !52, !13, !13, !52, !871, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !1701, line: 299, size: 128, elements: !1969)
!1969 = !{!1970, !1978}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1968, file: !1701, line: 300, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1972, line: 19, size: 64, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1971, file: !1972, line: 19, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !1976)
!1976 = !{!1977}
!1977 = !DISubrange(count: 1)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !1968, file: !1701, line: 301, baseType: !13, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1993}
!1980 = !DILocalVariable(name: "dev", arg: 1, scope: !1963, file: !2, line: 178, type: !123)
!1981 = !DILocalVariable(name: "irq", arg: 2, scope: !1963, file: !2, line: 178, type: !52)
!1982 = !DILocalVariable(name: "from", arg: 3, scope: !1963, file: !2, line: 178, type: !13)
!1983 = !DILocalVariable(name: "cnt", arg: 4, scope: !1963, file: !2, line: 179, type: !13)
!1984 = !DILocalVariable(name: "node", arg: 5, scope: !1963, file: !2, line: 179, type: !52)
!1985 = !DILocalVariable(name: "owner", arg: 6, scope: !1963, file: !2, line: 179, type: !871)
!1986 = !DILocalVariable(name: "affinity", arg: 7, scope: !1963, file: !2, line: 180, type: !1966)
!1987 = !DILocalVariable(name: "dr", scope: !1963, file: !2, line: 182, type: !1988)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc_devres", file: !2, line: 149, size: 64, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1989, file: !2, line: 150, baseType: !13, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !1989, file: !2, line: 151, baseType: !13, size: 32, offset: 32)
!1993 = !DILocalVariable(name: "base", scope: !1963, file: !2, line: 183, type: !52)
!1994 = !DILocation(line: 178, column: 43, scope: !1963)
!1995 = !DILocation(line: 178, column: 52, scope: !1963)
!1996 = !DILocation(line: 178, column: 70, scope: !1963)
!1997 = !DILocation(line: 179, column: 20, scope: !1963)
!1998 = !DILocation(line: 179, column: 29, scope: !1963)
!1999 = !DILocation(line: 179, column: 50, scope: !1963)
!2000 = !DILocation(line: 180, column: 39, scope: !1963)
!2001 = !DILocation(line: 182, column: 2, scope: !1963)
!2002 = !DILocation(line: 182, column: 26, scope: !1963)
!2003 = !DILocation(line: 183, column: 2, scope: !1963)
!2004 = !DILocation(line: 183, column: 6, scope: !1963)
!2005 = !DILocation(line: 185, column: 7, scope: !1963)
!2006 = !DILocation(line: 185, column: 5, scope: !1963)
!2007 = !DILocation(line: 186, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 186, column: 6)
!2009 = !DILocation(line: 186, column: 6, scope: !1963)
!2010 = !DILocation(line: 187, column: 3, scope: !2008)
!2011 = !DILocation(line: 189, column: 27, scope: !1963)
!2012 = !DILocation(line: 189, column: 32, scope: !1963)
!2013 = !DILocation(line: 189, column: 38, scope: !1963)
!2014 = !DILocation(line: 189, column: 43, scope: !1963)
!2015 = !DILocation(line: 189, column: 49, scope: !1963)
!2016 = !DILocation(line: 189, column: 56, scope: !1963)
!2017 = !DILocation(line: 189, column: 9, scope: !1963)
!2018 = !DILocation(line: 189, column: 7, scope: !1963)
!2019 = !DILocation(line: 190, column: 6, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 190, column: 6)
!2021 = !DILocation(line: 190, column: 11, scope: !2020)
!2022 = !DILocation(line: 190, column: 6, scope: !1963)
!2023 = !DILocation(line: 191, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 190, column: 16)
!2025 = !DILocation(line: 191, column: 3, scope: !2024)
!2026 = !DILocation(line: 192, column: 10, scope: !2024)
!2027 = !DILocation(line: 192, column: 3, scope: !2024)
!2028 = !DILocation(line: 195, column: 13, scope: !1963)
!2029 = !DILocation(line: 195, column: 2, scope: !1963)
!2030 = !DILocation(line: 195, column: 6, scope: !1963)
!2031 = !DILocation(line: 195, column: 11, scope: !1963)
!2032 = !DILocation(line: 196, column: 12, scope: !1963)
!2033 = !DILocation(line: 196, column: 2, scope: !1963)
!2034 = !DILocation(line: 196, column: 6, scope: !1963)
!2035 = !DILocation(line: 196, column: 10, scope: !1963)
!2036 = !DILocation(line: 197, column: 13, scope: !1963)
!2037 = !DILocation(line: 197, column: 18, scope: !1963)
!2038 = !DILocation(line: 197, column: 2, scope: !1963)
!2039 = !DILocation(line: 199, column: 9, scope: !1963)
!2040 = !DILocation(line: 199, column: 2, scope: !1963)
!2041 = !DILocation(line: 200, column: 1, scope: !1963)
!2042 = distinct !DISubprogram(name: "devm_irq_desc_release", scope: !2, file: !2, line: 154, type: !1779, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "dev", arg: 1, scope: !2042, file: !2, line: 154, type: !123)
!2045 = !DILocalVariable(name: "res", arg: 2, scope: !2042, file: !2, line: 154, type: !93)
!2046 = !DILocalVariable(name: "this", scope: !2042, file: !2, line: 156, type: !1988)
!2047 = !DILocation(line: 154, column: 50, scope: !2042)
!2048 = !DILocation(line: 154, column: 61, scope: !2042)
!2049 = !DILocation(line: 156, column: 2, scope: !2042)
!2050 = !DILocation(line: 156, column: 26, scope: !2042)
!2051 = !DILocation(line: 156, column: 33, scope: !2042)
!2052 = !DILocation(line: 158, column: 17, scope: !2042)
!2053 = !DILocation(line: 158, column: 23, scope: !2042)
!2054 = !DILocation(line: 158, column: 29, scope: !2042)
!2055 = !DILocation(line: 158, column: 35, scope: !2042)
!2056 = !DILocation(line: 158, column: 2, scope: !2042)
!2057 = !DILocation(line: 159, column: 1, scope: !2042)
!2058 = !DISubprogram(name: "__irq_alloc_descs", scope: !2059, file: !2059, line: 937, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!52, !52, !13, !13, !52, !871, !1966}
!2062 = distinct !DISubprogram(name: "kobject_name", scope: !128, file: !128, line: 87, type: !205, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2063)
!2063 = !{!2064}
!2064 = !DILocalVariable(name: "kobj", arg: 1, scope: !2062, file: !128, line: 87, type: !200)
!2065 = !DILocation(line: 87, column: 62, scope: !2062)
!2066 = !DILocation(line: 89, column: 9, scope: !2062)
!2067 = !DILocation(line: 89, column: 15, scope: !2062)
!2068 = !DILocation(line: 89, column: 2, scope: !2062)
!2069 = !DISubprogram(name: "irq_free_descs", scope: !2059, file: !2059, line: 976, type: !2070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !13, !13}
