; ModuleID = 'drivers/base/transport_class.c'
source_filename = "drivers/base/transport_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_class_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_class_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_class_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_class_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_anon_transport_class_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad anon_transport_class_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_anon_transport_class_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad anon_transport_class_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_setup_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_setup_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_add_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_add_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_configure_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_configure_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_remove_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_remove_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_transport_destroy_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad transport_destroy_device ; .previous"

%struct.transport_class = type { %struct.class, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon_transport_class = type { %struct.transport_class, %struct.attribute_container }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i64 }
%struct.list_head = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
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

@__UNIQUE_ID___addressable_transport_class_register203 = internal global ptr @transport_class_register, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_transport_class_unregister204 = internal global ptr @transport_class_unregister, section ".discard.addressable", align 8, !dbg !1614
@__UNIQUE_ID___addressable_anon_transport_class_register205 = internal global ptr @anon_transport_class_register, section ".discard.addressable", align 8, !dbg !1616
@.str = private unnamed_addr constant [31 x i8] c"drivers/base/transport_class.c\00", align 1, !dbg !1618
@__UNIQUE_ID___addressable_anon_transport_class_unregister206 = internal global ptr @anon_transport_class_unregister, section ".discard.addressable", align 8, !dbg !1623
@__UNIQUE_ID___addressable_transport_setup_device207 = internal global ptr @transport_setup_device, section ".discard.addressable", align 8, !dbg !1625
@__UNIQUE_ID___addressable_transport_add_device208 = internal global ptr @transport_add_device, section ".discard.addressable", align 8, !dbg !1627
@__UNIQUE_ID___addressable_transport_configure_device209 = internal global ptr @transport_configure_device, section ".discard.addressable", align 8, !dbg !1629
@__UNIQUE_ID___addressable_transport_remove_device210 = internal global ptr @transport_remove_device, section ".discard.addressable", align 8, !dbg !1631
@__UNIQUE_ID___addressable_transport_destroy_device211 = internal global ptr @transport_destroy_device, section ".discard.addressable", align 8, !dbg !1633
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_transport_class_register203, ptr @__UNIQUE_ID___addressable_transport_class_unregister204, ptr @__UNIQUE_ID___addressable_anon_transport_class_register205, ptr @__UNIQUE_ID___addressable_anon_transport_class_unregister206, ptr @__UNIQUE_ID___addressable_transport_setup_device207, ptr @__UNIQUE_ID___addressable_transport_add_device208, ptr @__UNIQUE_ID___addressable_transport_configure_device209, ptr @__UNIQUE_ID___addressable_transport_remove_device210, ptr @__UNIQUE_ID___addressable_transport_destroy_device211], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @transport_class_register(ptr noundef %tclass) #0 align 16 !dbg !1644 {
entry:
  %tclass.addr = alloca ptr, align 8
  store ptr %tclass, ptr %tclass.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tclass.addr, metadata !1648, metadata !DIExpression()), !dbg !1649
  %0 = load ptr, ptr %tclass.addr, align 8, !dbg !1650
  %class = getelementptr inbounds %struct.transport_class, ptr %0, i32 0, i32 0, !dbg !1651
  %call = call i32 @class_register(ptr noundef %class) #6, !dbg !1652
  ret i32 %call, !dbg !1653
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1654 dso_local i32 @class_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @transport_class_unregister(ptr noundef %tclass) #0 align 16 !dbg !1657 {
entry:
  %tclass.addr = alloca ptr, align 8
  store ptr %tclass, ptr %tclass.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tclass.addr, metadata !1661, metadata !DIExpression()), !dbg !1662
  %0 = load ptr, ptr %tclass.addr, align 8, !dbg !1663
  %class = getelementptr inbounds %struct.transport_class, ptr %0, i32 0, i32 0, !dbg !1664
  call void @class_unregister(ptr noundef %class) #6, !dbg !1665
  ret void, !dbg !1666
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1667 dso_local void @class_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @anon_transport_class_register(ptr noundef %atc) #0 align 16 !dbg !1668 {
entry:
  %retval = alloca i32, align 4
  %atc.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %atc, ptr %atc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atc.addr, metadata !1677, metadata !DIExpression()), !dbg !1679
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1678, metadata !DIExpression()), !dbg !1681
  %0 = load ptr, ptr %atc.addr, align 8, !dbg !1682
  %tclass = getelementptr inbounds %struct.anon_transport_class, ptr %0, i32 0, i32 0, !dbg !1683
  %class = getelementptr inbounds %struct.transport_class, ptr %tclass, i32 0, i32 0, !dbg !1684
  %1 = load ptr, ptr %atc.addr, align 8, !dbg !1685
  %container = getelementptr inbounds %struct.anon_transport_class, ptr %1, i32 0, i32 1, !dbg !1686
  %class1 = getelementptr inbounds %struct.attribute_container, ptr %container, i32 0, i32 2, !dbg !1687
  store ptr %class, ptr %class1, align 8, !dbg !1688
  %2 = load ptr, ptr %atc.addr, align 8, !dbg !1689
  %container2 = getelementptr inbounds %struct.anon_transport_class, ptr %2, i32 0, i32 1, !dbg !1690
  call void @attribute_container_set_no_classdevs(ptr noundef %container2) #6, !dbg !1691
  %3 = load ptr, ptr %atc.addr, align 8, !dbg !1692
  %container3 = getelementptr inbounds %struct.anon_transport_class, ptr %3, i32 0, i32 1, !dbg !1693
  %call = call i32 @attribute_container_register(ptr noundef %container3) #6, !dbg !1694
  store i32 %call, ptr %error, align 4, !dbg !1695
  %4 = load i32, ptr %error, align 4, !dbg !1696
  %tobool = icmp ne i32 %4, 0, !dbg !1696
  br i1 %tobool, label %if.then, label %if.end, !dbg !1698

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %error, align 4, !dbg !1699
  store i32 %5, ptr %retval, align 4, !dbg !1700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1700

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %atc.addr, align 8, !dbg !1701
  %tclass4 = getelementptr inbounds %struct.anon_transport_class, ptr %6, i32 0, i32 0, !dbg !1702
  %setup = getelementptr inbounds %struct.transport_class, ptr %tclass4, i32 0, i32 1, !dbg !1703
  store ptr @anon_transport_dummy_function, ptr %setup, align 8, !dbg !1704
  %7 = load ptr, ptr %atc.addr, align 8, !dbg !1705
  %tclass5 = getelementptr inbounds %struct.anon_transport_class, ptr %7, i32 0, i32 0, !dbg !1706
  %remove = getelementptr inbounds %struct.transport_class, ptr %tclass5, i32 0, i32 3, !dbg !1707
  store ptr @anon_transport_dummy_function, ptr %remove, align 8, !dbg !1708
  store i32 0, ptr %retval, align 4, !dbg !1709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1709

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !1710
  %8 = load i32, ptr %retval, align 4, !dbg !1710
  ret i32 %8, !dbg !1710
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @attribute_container_set_no_classdevs(ptr noundef %atc) #4 align 16 !dbg !1711 {
entry:
  %atc.addr = alloca ptr, align 8
  store ptr %atc, ptr %atc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atc.addr, metadata !1715, metadata !DIExpression()), !dbg !1716
  %0 = load ptr, ptr %atc.addr, align 8, !dbg !1717
  %flags = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 6, !dbg !1718
  %1 = load i64, ptr %flags, align 8, !dbg !1719
  %or = or i64 %1, 1, !dbg !1719
  store i64 %or, ptr %flags, align 8, !dbg !1719
  ret void, !dbg !1720
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1721 dso_local i32 @attribute_container_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @anon_transport_dummy_function(ptr noundef %tc, ptr noundef %dev, ptr noundef %cdev) #0 align 16 !dbg !1724 {
entry:
  %tc.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %cdev.addr = alloca ptr, align 8
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !1726, metadata !DIExpression()), !dbg !1729
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1727, metadata !DIExpression()), !dbg !1730
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !1728, metadata !DIExpression()), !dbg !1731
  ret i32 0, !dbg !1732
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @anon_transport_class_unregister(ptr noundef %atc) #0 align 16 !dbg !1733 {
entry:
  %atc.addr = alloca ptr, align 8
  store ptr %atc, ptr %atc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atc.addr, metadata !1737, metadata !DIExpression()), !dbg !1738
  %0 = load ptr, ptr %atc.addr, align 8, !dbg !1739
  %container = getelementptr inbounds %struct.anon_transport_class, ptr %0, i32 0, i32 1, !dbg !1739
  %call = call i32 @attribute_container_unregister(ptr noundef %container) #6, !dbg !1739
  %tobool = icmp ne i32 %call, 0, !dbg !1739
  %lnot = xor i1 %tobool, true, !dbg !1739
  %lnot1 = xor i1 %lnot, true, !dbg !1739
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1739
  %conv = sext i32 %lnot.ext to i64, !dbg !1739
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1739
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1739
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1741

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1742

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !1743

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !1745

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !1743

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 116, i32 0, i64 12) #7, !dbg !1747, !srcloc !1749
  br label %do.end5, !dbg !1747

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !1743

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !1743

if.end:                                           ; preds = %do.end6, %entry
  ret void, !dbg !1750
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1751 dso_local i32 @attribute_container_unregister(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @transport_setup_device(ptr noundef %dev) #0 align 16 !dbg !1752 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1754, metadata !DIExpression()), !dbg !1755
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1756
  call void @attribute_container_add_device(ptr noundef %0, ptr noundef @transport_setup_classdev) #6, !dbg !1757
  ret void, !dbg !1758
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1759 dso_local void @attribute_container_add_device(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @transport_setup_classdev(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev) #0 align 16 !dbg !1765 {
entry:
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %classdev.addr = alloca ptr, align 8
  %tclass = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcont = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1767, metadata !DIExpression()), !dbg !1776
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1768, metadata !DIExpression()), !dbg !1777
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !1769, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.start.p0(i64 8, ptr %tclass) #7, !dbg !1779
  call void @llvm.dbg.declare(metadata ptr %tclass, metadata !1770, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1771, metadata !DIExpression()), !dbg !1781
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1781
  %class = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2, !dbg !1781
  %1 = load ptr, ptr %class, align 8, !dbg !1781
  store ptr %1, ptr %__mptr, align 8, !dbg !1781
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1781
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !1781
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1782
  %3 = load ptr, ptr %tmp, align 8, !dbg !1781
  store ptr %3, ptr %tclass, align 8, !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcont) #7, !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %tcont, metadata !1773, metadata !DIExpression()), !dbg !1784
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1774, metadata !DIExpression()), !dbg !1785
  %4 = load ptr, ptr %cont.addr, align 8, !dbg !1785
  store ptr %4, ptr %__mptr1, align 8, !dbg !1785
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !1785
  %add.ptr3 = getelementptr i8, ptr %5, i64 0, !dbg !1785
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !1786
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1785
  store ptr %6, ptr %tcont, align 8, !dbg !1784
  %7 = load ptr, ptr %tclass, align 8, !dbg !1787
  %setup = getelementptr inbounds %struct.transport_class, ptr %7, i32 0, i32 1, !dbg !1789
  %8 = load ptr, ptr %setup, align 8, !dbg !1789
  %tobool = icmp ne ptr %8, null, !dbg !1787
  br i1 %tobool, label %if.then, label %if.end, !dbg !1790

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tclass, align 8, !dbg !1791
  %setup4 = getelementptr inbounds %struct.transport_class, ptr %9, i32 0, i32 1, !dbg !1792
  %10 = load ptr, ptr %setup4, align 8, !dbg !1792
  %11 = load ptr, ptr %tcont, align 8, !dbg !1793
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1794
  %13 = load ptr, ptr %classdev.addr, align 8, !dbg !1795
  %call = call i32 %10(ptr noundef %11, ptr noundef %12, ptr noundef %13) #6, !dbg !1791
  br label %if.end, !dbg !1791

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcont) #7, !dbg !1796
  call void @llvm.lifetime.end.p0(i64 8, ptr %tclass) #7, !dbg !1796
  ret i32 0, !dbg !1797
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @transport_add_device(ptr noundef %dev) #0 align 16 !dbg !1798 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1800, metadata !DIExpression()), !dbg !1801
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1802
  %call = call i32 @attribute_container_device_trigger_safe(ptr noundef %0, ptr noundef @transport_add_class_device, ptr noundef @transport_remove_classdev) #6, !dbg !1803
  ret i32 %call, !dbg !1804
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1805 dso_local i32 @attribute_container_device_trigger_safe(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @transport_add_class_device(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev) #0 align 16 !dbg !1808 {
entry:
  %retval = alloca i32, align 4
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %classdev.addr = alloca ptr, align 8
  %tclass = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %error = alloca i32, align 4
  %tcont = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1810, metadata !DIExpression()), !dbg !1822
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1811, metadata !DIExpression()), !dbg !1823
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !1812, metadata !DIExpression()), !dbg !1824
  call void @llvm.lifetime.start.p0(i64 8, ptr %tclass) #7, !dbg !1825
  call void @llvm.dbg.declare(metadata ptr %tclass, metadata !1813, metadata !DIExpression()), !dbg !1826
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1814, metadata !DIExpression()), !dbg !1827
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1827
  %class = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2, !dbg !1827
  %1 = load ptr, ptr %class, align 8, !dbg !1827
  store ptr %1, ptr %__mptr, align 8, !dbg !1827
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1827
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !1827
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1827
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1828
  %3 = load ptr, ptr %tmp, align 8, !dbg !1827
  store ptr %3, ptr %tclass, align 8, !dbg !1826
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1816, metadata !DIExpression()), !dbg !1830
  %4 = load ptr, ptr %classdev.addr, align 8, !dbg !1831
  %call = call i32 @attribute_container_add_class_device(ptr noundef %4) #6, !dbg !1832
  store i32 %call, ptr %error, align 4, !dbg !1830
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcont) #7, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %tcont, metadata !1817, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1818, metadata !DIExpression()), !dbg !1835
  %5 = load ptr, ptr %cont.addr, align 8, !dbg !1835
  store ptr %5, ptr %__mptr1, align 8, !dbg !1835
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !1835
  %add.ptr3 = getelementptr i8, ptr %6, i64 0, !dbg !1835
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1835
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !1836
  %7 = load ptr, ptr %tmp2, align 8, !dbg !1835
  store ptr %7, ptr %tcont, align 8, !dbg !1834
  %8 = load i32, ptr %error, align 4, !dbg !1837
  %tobool = icmp ne i32 %8, 0, !dbg !1837
  br i1 %tobool, label %if.then, label %if.end, !dbg !1839

if.then:                                          ; preds = %entry
  br label %err_remove, !dbg !1840

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %tcont, align 8, !dbg !1841
  %statistics = getelementptr inbounds %struct.transport_container, ptr %9, i32 0, i32 1, !dbg !1843
  %10 = load ptr, ptr %statistics, align 8, !dbg !1843
  %tobool4 = icmp ne ptr %10, null, !dbg !1841
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !1844

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %classdev.addr, align 8, !dbg !1845
  %kobj = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 0, !dbg !1847
  %12 = load ptr, ptr %tcont, align 8, !dbg !1848
  %statistics6 = getelementptr inbounds %struct.transport_container, ptr %12, i32 0, i32 1, !dbg !1849
  %13 = load ptr, ptr %statistics6, align 8, !dbg !1849
  %call7 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef %13) #6, !dbg !1850
  store i32 %call7, ptr %error, align 4, !dbg !1851
  %14 = load i32, ptr %error, align 4, !dbg !1852
  %tobool8 = icmp ne i32 %14, 0, !dbg !1852
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1854

if.then9:                                         ; preds = %if.then5
  br label %err_del, !dbg !1855

if.end10:                                         ; preds = %if.then5
  br label %if.end11, !dbg !1856

if.end11:                                         ; preds = %if.end10, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1857

err_del:                                          ; preds = %if.then9
  call void @llvm.dbg.label(metadata !1820), !dbg !1858
  %15 = load ptr, ptr %classdev.addr, align 8, !dbg !1859
  call void @attribute_container_class_device_del(ptr noundef %15) #6, !dbg !1860
  br label %err_remove, !dbg !1860

err_remove:                                       ; preds = %err_del, %if.then
  call void @llvm.dbg.label(metadata !1821), !dbg !1861
  %16 = load ptr, ptr %tclass, align 8, !dbg !1862
  %remove = getelementptr inbounds %struct.transport_class, ptr %16, i32 0, i32 3, !dbg !1864
  %17 = load ptr, ptr %remove, align 8, !dbg !1864
  %tobool12 = icmp ne ptr %17, null, !dbg !1862
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !1865

if.then13:                                        ; preds = %err_remove
  %18 = load ptr, ptr %tclass, align 8, !dbg !1866
  %remove14 = getelementptr inbounds %struct.transport_class, ptr %18, i32 0, i32 3, !dbg !1867
  %19 = load ptr, ptr %remove14, align 8, !dbg !1867
  %20 = load ptr, ptr %tcont, align 8, !dbg !1868
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !1869
  %22 = load ptr, ptr %classdev.addr, align 8, !dbg !1870
  %call15 = call i32 %19(ptr noundef %20, ptr noundef %21, ptr noundef %22) #6, !dbg !1866
  br label %if.end16, !dbg !1866

if.end16:                                         ; preds = %if.then13, %err_remove
  %23 = load i32, ptr %error, align 4, !dbg !1871
  store i32 %23, ptr %retval, align 4, !dbg !1872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1872

cleanup:                                          ; preds = %if.end16, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcont) #7, !dbg !1873
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !1873
  call void @llvm.lifetime.end.p0(i64 8, ptr %tclass) #7, !dbg !1873
  %24 = load i32, ptr %retval, align 4, !dbg !1873
  ret i32 %24, !dbg !1873
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @transport_remove_classdev(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev) #0 align 16 !dbg !1874 {
entry:
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %classdev.addr = alloca ptr, align 8
  %tcont = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tclass = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1876, metadata !DIExpression()), !dbg !1885
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1877, metadata !DIExpression()), !dbg !1886
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !1878, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcont) #7, !dbg !1888
  call void @llvm.dbg.declare(metadata ptr %tcont, metadata !1879, metadata !DIExpression()), !dbg !1889
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1880, metadata !DIExpression()), !dbg !1890
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1890
  store ptr %0, ptr %__mptr, align 8, !dbg !1890
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1890
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1890
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1891
  %2 = load ptr, ptr %tmp, align 8, !dbg !1890
  store ptr %2, ptr %tcont, align 8, !dbg !1889
  call void @llvm.lifetime.start.p0(i64 8, ptr %tclass) #7, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %tclass, metadata !1882, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1883, metadata !DIExpression()), !dbg !1894
  %3 = load ptr, ptr %cont.addr, align 8, !dbg !1894
  %class = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 2, !dbg !1894
  %4 = load ptr, ptr %class, align 8, !dbg !1894
  store ptr %4, ptr %__mptr1, align 8, !dbg !1894
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !1894
  %add.ptr3 = getelementptr i8, ptr %5, i64 0, !dbg !1894
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !1895
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1894
  store ptr %6, ptr %tclass, align 8, !dbg !1893
  %7 = load ptr, ptr %tclass, align 8, !dbg !1896
  %remove = getelementptr inbounds %struct.transport_class, ptr %7, i32 0, i32 3, !dbg !1898
  %8 = load ptr, ptr %remove, align 8, !dbg !1898
  %tobool = icmp ne ptr %8, null, !dbg !1896
  br i1 %tobool, label %if.then, label %if.end, !dbg !1899

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tclass, align 8, !dbg !1900
  %remove4 = getelementptr inbounds %struct.transport_class, ptr %9, i32 0, i32 3, !dbg !1901
  %10 = load ptr, ptr %remove4, align 8, !dbg !1901
  %11 = load ptr, ptr %tcont, align 8, !dbg !1902
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1903
  %13 = load ptr, ptr %classdev.addr, align 8, !dbg !1904
  %call = call i32 %10(ptr noundef %11, ptr noundef %12, ptr noundef %13) #6, !dbg !1900
  br label %if.end, !dbg !1900

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %tclass, align 8, !dbg !1905
  %remove5 = getelementptr inbounds %struct.transport_class, ptr %14, i32 0, i32 3, !dbg !1907
  %15 = load ptr, ptr %remove5, align 8, !dbg !1907
  %cmp = icmp ne ptr %15, @anon_transport_dummy_function, !dbg !1908
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !1909

if.then6:                                         ; preds = %if.end
  %16 = load ptr, ptr %tcont, align 8, !dbg !1910
  %statistics = getelementptr inbounds %struct.transport_container, ptr %16, i32 0, i32 1, !dbg !1913
  %17 = load ptr, ptr %statistics, align 8, !dbg !1913
  %tobool7 = icmp ne ptr %17, null, !dbg !1910
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !1914

if.then8:                                         ; preds = %if.then6
  %18 = load ptr, ptr %classdev.addr, align 8, !dbg !1915
  %kobj = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 0, !dbg !1916
  %19 = load ptr, ptr %tcont, align 8, !dbg !1917
  %statistics9 = getelementptr inbounds %struct.transport_container, ptr %19, i32 0, i32 1, !dbg !1918
  %20 = load ptr, ptr %statistics9, align 8, !dbg !1918
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef %20) #6, !dbg !1919
  br label %if.end10, !dbg !1919

if.end10:                                         ; preds = %if.then8, %if.then6
  %21 = load ptr, ptr %classdev.addr, align 8, !dbg !1920
  call void @attribute_container_class_device_del(ptr noundef %21) #6, !dbg !1921
  br label %if.end11, !dbg !1922

if.end11:                                         ; preds = %if.end10, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tclass) #7, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcont) #7, !dbg !1923
  ret i32 0, !dbg !1924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @transport_configure_device(ptr noundef %dev) #0 align 16 !dbg !1925 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1927, metadata !DIExpression()), !dbg !1928
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1929
  call void @attribute_container_device_trigger(ptr noundef %0, ptr noundef @transport_configure) #6, !dbg !1930
  ret void, !dbg !1931
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1932 dso_local void @attribute_container_device_trigger(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @transport_configure(ptr noundef %cont, ptr noundef %dev, ptr noundef %cdev) #0 align 16 !dbg !1933 {
entry:
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %cdev.addr = alloca ptr, align 8
  %tclass = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcont = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1935, metadata !DIExpression()), !dbg !1944
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1936, metadata !DIExpression()), !dbg !1945
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !1937, metadata !DIExpression()), !dbg !1946
  call void @llvm.lifetime.start.p0(i64 8, ptr %tclass) #7, !dbg !1947
  call void @llvm.dbg.declare(metadata ptr %tclass, metadata !1938, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1939, metadata !DIExpression()), !dbg !1949
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1949
  %class = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2, !dbg !1949
  %1 = load ptr, ptr %class, align 8, !dbg !1949
  store ptr %1, ptr %__mptr, align 8, !dbg !1949
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1949
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !1949
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1950
  %3 = load ptr, ptr %tmp, align 8, !dbg !1949
  store ptr %3, ptr %tclass, align 8, !dbg !1948
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcont) #7, !dbg !1951
  call void @llvm.dbg.declare(metadata ptr %tcont, metadata !1941, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !1953
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1942, metadata !DIExpression()), !dbg !1953
  %4 = load ptr, ptr %cont.addr, align 8, !dbg !1953
  store ptr %4, ptr %__mptr1, align 8, !dbg !1953
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !1953
  %add.ptr3 = getelementptr i8, ptr %5, i64 0, !dbg !1953
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !1954
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1953
  store ptr %6, ptr %tcont, align 8, !dbg !1952
  %7 = load ptr, ptr %tclass, align 8, !dbg !1955
  %configure = getelementptr inbounds %struct.transport_class, ptr %7, i32 0, i32 2, !dbg !1957
  %8 = load ptr, ptr %configure, align 8, !dbg !1957
  %tobool = icmp ne ptr %8, null, !dbg !1955
  br i1 %tobool, label %if.then, label %if.end, !dbg !1958

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tclass, align 8, !dbg !1959
  %configure4 = getelementptr inbounds %struct.transport_class, ptr %9, i32 0, i32 2, !dbg !1960
  %10 = load ptr, ptr %configure4, align 8, !dbg !1960
  %11 = load ptr, ptr %tcont, align 8, !dbg !1961
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1962
  %13 = load ptr, ptr %cdev.addr, align 8, !dbg !1963
  %call = call i32 %10(ptr noundef %11, ptr noundef %12, ptr noundef %13) #6, !dbg !1959
  br label %if.end, !dbg !1959

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcont) #7, !dbg !1964
  call void @llvm.lifetime.end.p0(i64 8, ptr %tclass) #7, !dbg !1964
  ret i32 0, !dbg !1965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @transport_remove_device(ptr noundef %dev) #0 align 16 !dbg !1966 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1968, metadata !DIExpression()), !dbg !1969
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1970
  call void @attribute_container_device_trigger(ptr noundef %0, ptr noundef @transport_remove_classdev) #6, !dbg !1971
  ret void, !dbg !1972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @transport_destroy_device(ptr noundef %dev) #0 align 16 !dbg !1973 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1975, metadata !DIExpression()), !dbg !1976
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1977
  call void @attribute_container_remove_device(ptr noundef %0, ptr noundef @transport_destroy_classdev) #6, !dbg !1978
  ret void, !dbg !1979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1980 dso_local void @attribute_container_remove_device(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @transport_destroy_classdev(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev) #0 align 16 !dbg !1986 {
entry:
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %classdev.addr = alloca ptr, align 8
  %tclass = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1988, metadata !DIExpression()), !dbg !1994
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1989, metadata !DIExpression()), !dbg !1995
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !1990, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.start.p0(i64 8, ptr %tclass) #7, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %tclass, metadata !1991, metadata !DIExpression()), !dbg !1998
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1999
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1992, metadata !DIExpression()), !dbg !1999
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1999
  %class = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2, !dbg !1999
  %1 = load ptr, ptr %class, align 8, !dbg !1999
  store ptr %1, ptr %__mptr, align 8, !dbg !1999
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1999
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !1999
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1999
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !2000
  %3 = load ptr, ptr %tmp, align 8, !dbg !1999
  store ptr %3, ptr %tclass, align 8, !dbg !1998
  %4 = load ptr, ptr %tclass, align 8, !dbg !2001
  %remove = getelementptr inbounds %struct.transport_class, ptr %4, i32 0, i32 3, !dbg !2003
  %5 = load ptr, ptr %remove, align 8, !dbg !2003
  %cmp = icmp ne ptr %5, @anon_transport_dummy_function, !dbg !2004
  br i1 %cmp, label %if.then, label %if.end, !dbg !2005

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %classdev.addr, align 8, !dbg !2006
  call void @put_device(ptr noundef %6) #6, !dbg !2007
  br label %if.end, !dbg !2007

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %tclass) #7, !dbg !2008
  ret void, !dbg !2008
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2009 dso_local i32 @attribute_container_add_class_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2010 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2013 dso_local void @attribute_container_class_device_del(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2014 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2017 dso_local void @put_device(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!llvm.ident = !{!1643}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_class_register203", scope: !2, file: !3, line: 55, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.transport_class.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/transport_class\22 -D KBUILD_BASENAME=\22transport_class\22 -D KBUILD_MODNAME=\22transport_class\22 -D __KBUILD_MODNAME=kmod_transport_class -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/transport_class.ll drivers/base/transport_class.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !1613, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/transport_class.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dde3b9d7d74fd018f96f5ed16b9d42c3")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
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
!78 = !{!79, !80, !1562}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transport_class", file: !82, line: 17, size: 960, elements: !83)
!82 = !DIFile(filename: "./include/linux/transport_class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f718d2335be17aecefe565492dc683f")
!83 = !{!84, !1558, !1611, !1612}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !81, file: !82, line: 18, baseType: !85, size: 768)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !86, line: 52, size: 768, elements: !87)
!86 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!87 = !{!88, !92, !757, !758, !1538, !1542, !1546, !1547, !1548, !1549, !1553, !1557}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !86, line: 53, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !85, file: !86, line: 55, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !97, line: 84, size: 320, elements: !98)
!97 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!98 = !{!99, !100, !728, !753, !755}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !97, line: 85, baseType: !89, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !96, file: !97, line: 86, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !107, !230, !46}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !105, line: 24, baseType: !106)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !109, line: 64, size: 512, elements: !110)
!109 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!110 = !{!111, !112, !118, !119, !207, !302, !713, !723, !724, !725, !726, !727}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !109, line: 65, baseType: !89, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !108, file: !109, line: 66, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !105, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !105, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !109, line: 67, baseType: !107, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !108, file: !109, line: 68, baseType: !120, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !109, line: 168, size: 768, elements: !122)
!122 = !{!123, !124, !166, !167}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !121, file: !109, line: 169, baseType: !113, size: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !121, file: !109, line: 170, baseType: !125, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !126, line: 29, baseType: !127)
!126 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !126, line: 17, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !126, line: 18, baseType: !130, size: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !126, line: 18, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !130, file: !126, line: 19, baseType: !133, size: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !134, line: 14, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !133, file: !134, line: 15, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !138, line: 44, baseType: !139)
!138 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !138, line: 14, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 15, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 15, size: 32, elements: !143)
!143 = !{!144, !149, !159}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !138, line: 16, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 174, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 172, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !146, file: !105, line: 173, baseType: !46, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !138, line: 24, baseType: !150, size: 16)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !138, line: 24, size: 16, elements: !151)
!151 = !{!152, !158}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !150, file: !138, line: 25, baseType: !153, size: 8)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !154, line: 17, baseType: !155)
!154 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !156, line: 21, baseType: !157)
!156 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !150, file: !138, line: 26, baseType: !153, size: 8, offset: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !138, line: 28, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !138, line: 28, size: 32, elements: !161)
!161 = !{!162, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !160, file: !138, line: 29, baseType: !163, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !154, line: 19, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !156, line: 24, baseType: !106)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !160, file: !138, line: 30, baseType: !163, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !121, file: !109, line: 171, baseType: !108, size: 512, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !121, file: !109, line: 172, baseType: !168, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !109, line: 133, size: 192, elements: !171)
!171 = !{!172, !179, !184}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !170, file: !109, line: 134, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!46, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !109, line: 135, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!89, !177}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !170, file: !109, line: 136, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!46, !177, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !109, line: 125, size: 20736, elements: !191)
!191 = !{!192, !197, !201, !202, !206}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !190, file: !109, line: 126, baseType: !193, size: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 192, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!195 = !{!196}
!196 = !DISubrange(count: 3)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !190, file: !109, line: 127, baseType: !198, size: 4096, offset: 192)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 4096, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !190, file: !109, line: 128, baseType: !46, size: 32, offset: 4288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !190, file: !109, line: 129, baseType: !203, size: 16384, offset: 4320)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 16384, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 2048)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !190, file: !109, line: 130, baseType: !46, size: 32, offset: 20704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !108, file: !109, line: 69, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !109, line: 116, size: 384, elements: !211)
!211 = !{!212, !216, !243, !244, !279, !283}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !210, file: !109, line: 117, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !107}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !210, file: !109, line: 118, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !97, line: 254, size: 128, elements: !220)
!220 = !{!221, !235}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !219, file: !97, line: 255, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !107, !230, !194}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 66, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !227, line: 73, baseType: !228)
!227 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !227, line: 15, baseType: !229)
!229 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !97, line: 30, size: 128, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !97, line: 31, baseType: !89, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !231, file: !97, line: 32, baseType: !104, size: 16, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !219, file: !97, line: 256, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!225, !107, !230, !89, !239}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 61, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !227, line: 72, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !227, line: 16, baseType: !242)
!242 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !210, file: !109, line: 119, baseType: !93, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !210, file: !109, line: 120, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !177}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !251)
!251 = !{!252, !253, !259, !263, !271, !275}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !250, file: !6, line: 40, baseType: !5, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !250, file: !6, line: 41, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 35, baseType: !258)
!258 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !250, file: !6, line: 42, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!79}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !250, file: !6, line: 43, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !250, file: !6, line: 44, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!267}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !250, file: !6, line: 45, baseType: !276, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !79}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !210, file: !109, line: 121, baseType: !280, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!267, !177}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !210, file: !109, line: 122, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !177, !287, !295}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !289, line: 23, baseType: !290)
!289 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !289, line: 21, size: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !290, file: !289, line: 22, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !105, line: 37, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !227, line: 49, baseType: !7)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !289, line: 28, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !289, line: 26, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !297, file: !289, line: 27, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !105, line: 38, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !227, line: 50, baseType: !7)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !108, file: !109, line: 70, baseType: !303, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !305, line: 190, size: 1152, elements: !306)
!305 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!306 = !{!307, !308, !309, !310, !311, !319, !320, !321, !705, !706, !707, !708, !709, !712}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !304, file: !305, line: 191, baseType: !145, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !304, file: !305, line: 192, baseType: !145, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !304, file: !305, line: 202, baseType: !303, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 203, baseType: !89, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !304, file: !305, line: 205, baseType: !312, size: 192, align: 64, offset: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !313, line: 5, size: 192, align: 64, elements: !314)
!313 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!314 = !{!315, !316, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !312, file: !313, line: 6, baseType: !242, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !312, file: !313, line: 7, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !312, file: !313, line: 8, baseType: !317, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !304, file: !305, line: 207, baseType: !267, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !304, file: !305, line: 208, baseType: !7, size: 32, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !305, line: 209, baseType: !322, size: 256, offset: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !305, line: 209, size: 256, elements: !323)
!323 = !{!324, !336, !340}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !322, file: !305, line: 210, baseType: !325, size: 256)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !305, line: 153, size: 256, elements: !326)
!326 = !{!327, !328, !332, !335}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !325, file: !305, line: 154, baseType: !242, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !325, file: !305, line: 156, baseType: !329, size: 64, offset: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !313, line: 12, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !329, file: !313, line: 13, baseType: !317, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !325, file: !305, line: 162, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !305, line: 162, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !325, file: !305, line: 167, baseType: !242, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !322, file: !305, line: 211, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !305, line: 170, size: 64, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !337, file: !305, line: 171, baseType: !303, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !322, file: !305, line: 212, baseType: !341, size: 256)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !305, line: 174, size: 256, elements: !342)
!342 = !{!343, !700, !703, !704}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !341, file: !305, line: 175, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !305, line: 271, size: 768, elements: !347)
!347 = !{!348, !399, !403, !407, !414, !418, !422, !426, !427, !428, !429, !437}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !346, file: !305, line: 276, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!46, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !305, line: 251, size: 1216, elements: !354)
!354 = !{!355, !356, !360, !364, !365, !387, !388, !389, !390, !391, !392, !393, !394}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !353, file: !305, line: 253, baseType: !303, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !353, file: !305, line: 254, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !359, line: 537, flags: DIFlagFwdDecl)
!359 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !353, file: !305, line: 255, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !363, line: 66, flags: DIFlagFwdDecl)
!363 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!364 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !353, file: !305, line: 256, baseType: !79, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !353, file: !305, line: 259, baseType: !366, size: 256, offset: 256)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !367, line: 66, size: 256, elements: !368)
!367 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!368 = !{!369, !379, !381, !386}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !366, file: !367, line: 67, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !371, line: 13, baseType: !372)
!371 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !105, line: 181, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 179, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !373, file: !105, line: 180, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !154, line: 22, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !156, line: 30, baseType: !378)
!378 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !366, file: !367, line: 68, baseType: !380, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !134, line: 23, baseType: !133)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !366, file: !367, line: 70, baseType: !382, size: 32, offset: 96)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !383, line: 15, size: 32, elements: !384)
!383 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !382, file: !383, line: 20, baseType: !145, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !366, file: !367, line: 72, baseType: !113, size: 128, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !353, file: !305, line: 260, baseType: !366, size: 256, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !353, file: !305, line: 261, baseType: !46, size: 32, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !353, file: !305, line: 262, baseType: !113, size: 128, offset: 832)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !353, file: !305, line: 263, baseType: !194, size: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !353, file: !305, line: 265, baseType: !239, size: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !353, file: !305, line: 266, baseType: !257, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !353, file: !305, line: 267, baseType: !257, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !353, file: !305, line: 268, baseType: !395, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !398, line: 694, flags: DIFlagFwdDecl)
!398 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !346, file: !305, line: 277, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !352}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !346, file: !305, line: 290, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!46, !361, !79}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !346, file: !305, line: 292, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!79, !361, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !105, line: 52, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !227, line: 88, baseType: !378)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !346, file: !305, line: 293, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!79, !361, !79, !411}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !346, file: !305, line: 294, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !361, !79}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !346, file: !305, line: 296, baseType: !423, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!225, !352, !194, !239, !412}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !346, file: !305, line: 306, baseType: !239, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !346, file: !305, line: 313, baseType: !257, size: 8, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !346, file: !305, line: 314, baseType: !423, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !346, file: !305, line: 317, baseType: !430, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !352, !435}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !434, line: 59, baseType: !7)
!434 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !305, line: 31, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !346, file: !305, line: 320, baseType: !438, size: 64, offset: 704)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!46, !352, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !398, line: 625, size: 1344, elements: !443)
!443 = !{!444, !461, !661, !667, !674, !675, !680, !681, !686, !687, !690, !691, !692, !693, !694, !695, !698}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !398, line: 628, baseType: !445, size: 128)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !398, line: 628, size: 128, elements: !446)
!446 = !{!447, !452}
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !398, line: 629, baseType: !448, size: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !445, file: !398, line: 629, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !448, file: !398, line: 631, baseType: !242, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !448, file: !398, line: 632, baseType: !242, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !445, file: !398, line: 635, baseType: !453, size: 128, align: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !105, line: 232, size: 128, align: 64, elements: !454)
!454 = !{!455, !457}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !105, line: 233, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !453, file: !105, line: 234, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !456}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !442, file: !398, line: 639, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !398, line: 733, size: 10240, elements: !464)
!464 = !{!465, !657}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !398, line: 734, baseType: !466, size: 10240)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !398, line: 734, size: 10240, elements: !467)
!467 = !{!468, !472, !486, !490, !491, !492, !493, !494, !495, !503, !504, !505, !514, !515, !516, !517, !518, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !560, !574, !577, !623, !624, !625, !628, !631, !632, !635, !636, !637, !644, !645}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !398, line: 739, baseType: !469, size: 512, align: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !398, line: 739, size: 512, align: 512, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !469, file: !398, line: 747, baseType: !145, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !466, file: !398, line: 750, baseType: !473, size: 128, offset: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !474, line: 218, size: 128, elements: !475)
!474 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!475 = !{!476, !484, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !474, line: 219, baseType: !477, size: 32)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !474, line: 219, size: 32, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !477, file: !474, line: 220, baseType: !125, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !477, file: !474, line: 221, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !474, line: 197, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 197, elements: !483)
!483 = !{}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !473, file: !474, line: 223, baseType: !7, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !473, file: !474, line: 224, baseType: !79, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !466, file: !398, line: 752, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!242, !357, !242, !242, !242, !242}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !466, file: !398, line: 756, baseType: !242, size: 64, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !466, file: !398, line: 757, baseType: !242, size: 64, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !466, file: !398, line: 760, baseType: !242, size: 64, offset: 832)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !466, file: !398, line: 761, baseType: !242, size: 64, offset: 896)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !466, file: !398, line: 763, baseType: !242, size: 64, offset: 960)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !466, file: !398, line: 764, baseType: !496, size: 64, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !359, line: 299, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 299, size: 64, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !498, file: !359, line: 299, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !502, line: 18, baseType: !242)
!502 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !466, file: !398, line: 773, baseType: !145, size: 32, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !466, file: !398, line: 785, baseType: !145, size: 32, offset: 1120)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !466, file: !398, line: 795, baseType: !506, size: 64, offset: 1152)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !398, line: 726, size: 128, elements: !508)
!508 = !{!509, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !507, file: !398, line: 727, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !154, line: 23, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !156, line: 31, baseType: !512)
!512 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !507, file: !398, line: 728, baseType: !46, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !466, file: !398, line: 801, baseType: !242, size: 64, offset: 1216)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !466, file: !398, line: 804, baseType: !370, size: 64, offset: 1280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !466, file: !398, line: 806, baseType: !46, size: 32, offset: 1344)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !466, file: !398, line: 808, baseType: !125, size: 32, offset: 1376)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !466, file: !398, line: 823, baseType: !519, size: 320, offset: 1408)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !520, line: 48, size: 320, elements: !521)
!520 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!521 = !{!522, !523, !524, !525, !526}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !519, file: !520, line: 49, baseType: !370, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !519, file: !520, line: 55, baseType: !370, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !519, file: !520, line: 57, baseType: !382, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !519, file: !520, line: 59, baseType: !380, size: 32, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !519, file: !520, line: 60, baseType: !113, size: 128, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !466, file: !398, line: 825, baseType: !113, size: 128, offset: 1728)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !466, file: !398, line: 845, baseType: !46, size: 32, offset: 1856)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !466, file: !398, line: 849, baseType: !242, size: 64, offset: 1920)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !466, file: !398, line: 850, baseType: !242, size: 64, offset: 1984)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !466, file: !398, line: 852, baseType: !242, size: 64, offset: 2048)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !466, file: !398, line: 853, baseType: !242, size: 64, offset: 2112)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !466, file: !398, line: 854, baseType: !372, size: 64, offset: 2176)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !466, file: !398, line: 855, baseType: !242, size: 64, offset: 2240)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !466, file: !398, line: 856, baseType: !242, size: 64, offset: 2304)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !466, file: !398, line: 857, baseType: !242, size: 64, offset: 2368)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !466, file: !398, line: 858, baseType: !242, size: 64, offset: 2432)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !466, file: !398, line: 865, baseType: !539, size: 32, offset: 2496)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !540, line: 69, baseType: !541)
!540 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !540, line: 64, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !541, file: !540, line: 65, baseType: !7, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !466, file: !398, line: 867, baseType: !125, size: 32, offset: 2528)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !466, file: !398, line: 869, baseType: !242, size: 64, offset: 2560)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !466, file: !398, line: 869, baseType: !242, size: 64, offset: 2624)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !466, file: !398, line: 869, baseType: !242, size: 64, offset: 2688)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !466, file: !398, line: 869, baseType: !242, size: 64, offset: 2752)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !466, file: !398, line: 870, baseType: !242, size: 64, offset: 2816)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !466, file: !398, line: 870, baseType: !242, size: 64, offset: 2880)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !466, file: !398, line: 870, baseType: !242, size: 64, offset: 2944)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !466, file: !398, line: 871, baseType: !242, size: 64, offset: 3008)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !466, file: !398, line: 871, baseType: !242, size: 64, offset: 3072)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !466, file: !398, line: 871, baseType: !242, size: 64, offset: 3136)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !466, file: !398, line: 871, baseType: !242, size: 64, offset: 3200)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !466, file: !398, line: 873, baseType: !557, size: 3328, offset: 3264)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 3328, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 52)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !466, file: !398, line: 875, baseType: !561, size: 1280, offset: 6592)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 1280, elements: !572)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !563, line: 22, size: 320, elements: !564)
!563 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!564 = !{!565, !566, !567, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !563, line: 23, baseType: !380, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !563, line: 24, baseType: !376, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !562, file: !563, line: 26, baseType: !113, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !562, file: !563, line: 28, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !154, line: 20, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !156, line: 26, baseType: !46)
!572 = !{!573}
!573 = !DISubrange(count: 4)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !466, file: !398, line: 877, baseType: !575, size: 64, offset: 7872)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !398, line: 877, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !466, file: !398, line: 880, baseType: !578, size: 1088, offset: 7936)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !579, line: 72, baseType: !580)
!579 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 23, size: 1088, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !589, !590, !591, !592, !617, !618, !619}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !580, file: !579, line: 28, baseType: !510, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !580, file: !579, line: 38, baseType: !372, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !580, file: !579, line: 40, baseType: !242, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !580, file: !579, line: 43, baseType: !519, size: 320, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !580, file: !579, line: 44, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !579, line: 44, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !579, line: 48, baseType: !242, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !579, line: 59, baseType: !366, size: 256, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !580, file: !579, line: 60, baseType: !79, size: 64, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !580, file: !579, line: 61, baseType: !593, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !596, line: 13, size: 1216, elements: !597)
!596 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !595, file: !596, line: 14, baseType: !79, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !596, line: 15, baseType: !242, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !595, file: !596, line: 17, baseType: !242, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !595, file: !596, line: 17, baseType: !242, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !595, file: !596, line: 18, baseType: !242, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !595, file: !596, line: 18, baseType: !242, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !595, file: !596, line: 19, baseType: !267, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !595, file: !596, line: 21, baseType: !229, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !595, file: !596, line: 23, baseType: !229, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !595, file: !596, line: 24, baseType: !229, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !595, file: !596, line: 25, baseType: !229, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !595, file: !596, line: 26, baseType: !229, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !595, file: !596, line: 27, baseType: !229, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !595, file: !596, line: 28, baseType: !229, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !595, file: !596, line: 29, baseType: !229, size: 64, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !595, file: !596, line: 30, baseType: !229, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !595, file: !596, line: 31, baseType: !229, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !595, file: !596, line: 32, baseType: !229, size: 64, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !595, file: !596, line: 33, baseType: !229, size: 64, offset: 1152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !580, file: !579, line: 63, baseType: !145, size: 32, offset: 1024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !580, file: !579, line: 69, baseType: !163, size: 16, offset: 1056)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !580, file: !579, line: 70, baseType: !620, size: 16, offset: 1072)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !154, line: 18, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !156, line: 23, baseType: !622)
!622 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !398, line: 882, baseType: !242, size: 64, offset: 9024)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !466, file: !398, line: 885, baseType: !125, size: 32, offset: 9088)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !466, file: !398, line: 886, baseType: !626, size: 64, offset: 9152)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !398, line: 732, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !466, file: !398, line: 901, baseType: !629, size: 64, offset: 9216)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !289, line: 18, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !466, file: !398, line: 904, baseType: !357, size: 64, offset: 9280)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !466, file: !398, line: 906, baseType: !633, size: 64, offset: 9344)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !398, line: 906, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !466, file: !398, line: 930, baseType: !145, size: 32, offset: 9408)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !466, file: !398, line: 933, baseType: !145, size: 32, offset: 9440)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !466, file: !398, line: 935, baseType: !638, size: 64, offset: 9472)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !639, line: 103, size: 64, elements: !640)
!639 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !638, file: !639, line: 104, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !639, line: 101, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !466, file: !398, line: 940, baseType: !370, size: 64, offset: 9536)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !466, file: !398, line: 942, baseType: !646, size: 256, offset: 9600)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !647, line: 98, size: 256, elements: !648)
!647 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!648 = !{!649, !650, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !646, file: !647, line: 99, baseType: !370, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !646, file: !647, line: 100, baseType: !113, size: 128, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !646, file: !647, line: 101, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !647, line: 21, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !463, file: !398, line: 986, baseType: !658, offset: 10240)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: -1)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !442, file: !398, line: 640, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !359, line: 297, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !359, line: 297, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !663, file: !359, line: 297, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !502, line: 19, baseType: !242)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !398, line: 646, baseType: !668, size: 64, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !398, line: 646, size: 64, elements: !669)
!669 = !{!670, !673}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !668, file: !398, line: 647, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !398, line: 542, baseType: !242)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !668, file: !398, line: 648, baseType: !672, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !442, file: !398, line: 666, baseType: !46, size: 32, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !442, file: !398, line: 667, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !398, line: 579, size: 320, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !398, line: 580, baseType: !519, size: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !442, file: !398, line: 670, baseType: !257, size: 8, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !442, file: !398, line: 681, baseType: !682, size: 256, offset: 512)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !398, line: 678, size: 256, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !682, file: !398, line: 679, baseType: !312, size: 192, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !682, file: !398, line: 680, baseType: !242, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !442, file: !398, line: 689, baseType: !113, size: 128, offset: 768)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !442, file: !398, line: 691, baseType: !688, size: 64, offset: 896)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !398, line: 691, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !442, file: !398, line: 694, baseType: !395, size: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !442, file: !398, line: 697, baseType: !242, size: 64, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !442, file: !398, line: 699, baseType: !357, size: 64, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !442, file: !398, line: 700, baseType: !79, size: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !442, file: !398, line: 711, baseType: !370, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !442, file: !398, line: 717, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !363, line: 54, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !442, file: !398, line: 722, baseType: !699, offset: 1344)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !398, line: 570, elements: !483)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !341, file: !305, line: 176, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !305, line: 35, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !341, file: !305, line: 177, baseType: !412, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !341, file: !305, line: 178, baseType: !303, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !304, file: !305, line: 215, baseType: !79, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !304, file: !305, line: 221, baseType: !510, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 223, baseType: !106, size: 16, offset: 896)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !304, file: !305, line: 224, baseType: !104, size: 16, offset: 912)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !304, file: !305, line: 225, baseType: !710, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !305, line: 36, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !304, file: !305, line: 227, baseType: !453, size: 128, align: 64, offset: 1024)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !108, file: !109, line: 71, baseType: !714, size: 32, offset: 448)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !715, line: 19, size: 32, elements: !716)
!715 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !714, file: !715, line: 20, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !719, line: 113, baseType: !720)
!719 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !719, line: 111, size: 32, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !720, file: !719, line: 112, baseType: !145, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !108, file: !109, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !108, file: !109, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !108, file: !109, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !108, file: !109, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !108, file: !109, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !96, file: !97, line: 88, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!104, !107, !732, !46}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !97, line: 175, size: 512, elements: !734)
!734 = !{!735, !736, !737, !738, !744, !748, !749}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !733, file: !97, line: 176, baseType: !231, size: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !733, file: !97, line: 177, baseType: !239, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !733, file: !97, line: 178, baseType: !79, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !733, file: !97, line: 179, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !398, line: 32, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !733, file: !97, line: 180, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!225, !357, !107, !732, !194, !412, !239}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !733, file: !97, line: 182, baseType: !745, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !733, file: !97, line: 184, baseType: !750, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!46, !357, !107, !732, !441}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !96, file: !97, line: 90, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !96, file: !97, line: 91, baseType: !756, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !85, file: !86, line: 56, baseType: !93, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !85, file: !86, line: 58, baseType: !759, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!46, !762, !189}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !765)
!765 = !{!766, !767, !769, !772, !773, !821, !1268, !1269, !1270, !1271, !1272, !1279, !1449, !1462, !1472, !1476, !1478, !1479, !1480, !1484, !1491, !1492, !1495, !1498, !1502, !1505, !1506, !1509, !1510, !1511, !1512, !1515, !1516, !1517, !1520, !1523, !1532, !1533, !1534, !1535, !1536, !1537}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !764, file: !26, line: 706, baseType: !108, size: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !764, file: !26, line: 707, baseType: !768, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !764, file: !26, line: 709, baseType: !770, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !764, file: !26, line: 711, baseType: !89, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !26, line: 712, baseType: !774, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !777)
!777 = !{!778, !779, !780, !781, !786, !790}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !776, file: !26, line: 90, baseType: !89, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !776, file: !26, line: 91, baseType: !93, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !776, file: !26, line: 92, baseType: !759, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !776, file: !26, line: 93, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!194, !762, !785, !287, !295}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !776, file: !26, line: 95, baseType: !787, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !768}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !776, file: !26, line: 97, baseType: !791, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !794)
!794 = !{!795, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !793, file: !38, line: 287, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!46, !768}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !793, file: !38, line: 288, baseType: !787, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !793, file: !38, line: 289, baseType: !796, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !793, file: !38, line: 290, baseType: !796, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !793, file: !38, line: 291, baseType: !796, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !793, file: !38, line: 292, baseType: !796, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !793, file: !38, line: 293, baseType: !796, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !793, file: !38, line: 294, baseType: !796, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !793, file: !38, line: 295, baseType: !796, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !793, file: !38, line: 296, baseType: !796, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !793, file: !38, line: 297, baseType: !796, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !793, file: !38, line: 298, baseType: !796, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !793, file: !38, line: 299, baseType: !796, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !793, file: !38, line: 300, baseType: !796, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !793, file: !38, line: 301, baseType: !796, size: 64, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !793, file: !38, line: 302, baseType: !796, size: 64, offset: 960)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !793, file: !38, line: 303, baseType: !796, size: 64, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !793, file: !38, line: 304, baseType: !796, size: 64, offset: 1088)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !793, file: !38, line: 305, baseType: !796, size: 64, offset: 1152)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !793, file: !38, line: 306, baseType: !796, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !793, file: !38, line: 307, baseType: !796, size: 64, offset: 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !793, file: !38, line: 308, baseType: !796, size: 64, offset: 1344)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !793, file: !38, line: 309, baseType: !796, size: 64, offset: 1408)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !764, file: !26, line: 714, baseType: !822, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !825, line: 80, size: 1344, elements: !826)
!825 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!826 = !{!827, !828, !829, !830, !831, !832, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1267}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !824, file: !825, line: 81, baseType: !89, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !824, file: !825, line: 82, baseType: !89, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !824, file: !825, line: 83, baseType: !93, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !824, file: !825, line: 84, baseType: !93, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !824, file: !825, line: 85, baseType: !93, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !824, file: !825, line: 87, baseType: !833, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!46, !768, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !838)
!838 = !{!839, !840, !841, !1219, !1220, !1221, !1222, !1226, !1230, !1231, !1232, !1233, !1234, !1242, !1243, !1244, !1245, !1246, !1247}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !837, file: !20, line: 97, baseType: !89, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !837, file: !20, line: 98, baseType: !822, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !837, file: !20, line: 100, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !844)
!844 = !{!845, !846, !847, !851, !872, !898, !899, !900, !901, !905, !908, !909, !910, !963, !964, !965, !966, !967, !968, !969, !970, !973, !977, !997, !1015, !1016, !1017, !1018, !1027, !1051, !1052, !1055, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1069, !1070, !1177, !1185, !1186, !1187, !1189, !1193, !1194, !1198, !1199, !1200, !1201, !1203, !1204, !1205, !1212, !1213, !1214, !1218}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !843, file: !13, line: 403, baseType: !12, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !843, file: !13, line: 406, baseType: !113, size: 128, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !843, file: !13, line: 409, baseType: !848, size: 448, offset: 192)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 448, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 56)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !843, file: !13, line: 417, baseType: !852, size: 768, offset: 640)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !853)
!853 = !{!854, !855, !856, !857, !860}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !852, file: !13, line: 46, baseType: !108, size: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !852, file: !13, line: 47, baseType: !842, size: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !852, file: !13, line: 48, baseType: !107, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !852, file: !13, line: 49, baseType: !858, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !852, file: !13, line: 50, baseType: !861, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !863, line: 26, size: 256, elements: !864)
!863 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !862, file: !863, line: 27, baseType: !7, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !862, file: !863, line: 28, baseType: !867, size: 192, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !868, line: 43, size: 192, elements: !869)
!868 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !867, file: !868, line: 44, baseType: !380, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !867, file: !868, line: 45, baseType: !113, size: 128, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !843, file: !13, line: 418, baseType: !873, size: 64, offset: 1408)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !875)
!875 = !{!876, !877, !882, !886, !890, !894}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !874, file: !13, line: 54, baseType: !231, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !874, file: !13, line: 55, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!225, !873, !881, !194}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !874, file: !13, line: 57, baseType: !883, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!225, !873, !881, !89, !239}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !874, file: !13, line: 59, baseType: !887, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !842, !89}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !874, file: !13, line: 60, baseType: !891, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!46, !842}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !874, file: !13, line: 61, baseType: !895, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !842}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !843, file: !13, line: 419, baseType: !89, size: 64, offset: 1472)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !843, file: !13, line: 420, baseType: !89, size: 64, offset: 1536)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !843, file: !13, line: 421, baseType: !107, size: 64, offset: 1600)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !843, file: !13, line: 424, baseType: !902, size: 64, offset: 1664)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !843, file: !13, line: 425, baseType: !906, size: 64, offset: 1728)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !843, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !843, file: !13, line: 435, baseType: !366, size: 256, offset: 1856)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !843, file: !13, line: 437, baseType: !911, size: 64, offset: 2112)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !913, line: 69, size: 320, elements: !914)
!913 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!914 = !{!915, !916, !917, !934, !936, !940, !941}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !912, file: !913, line: 70, baseType: !89, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !912, file: !913, line: 71, baseType: !842, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !912, file: !913, line: 72, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !913, line: 47, size: 256, elements: !921)
!921 = !{!922, !923, !929, !933}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !913, line: 49, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !920, file: !913, line: 51, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!46, !89, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !920, file: !913, line: 53, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!46, !194, !927}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !920, file: !913, line: 55, baseType: !276, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !912, file: !913, line: 73, baseType: !935, size: 16, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !912, file: !913, line: 74, baseType: !937, size: 8, offset: 208)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !154, line: 16, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !156, line: 20, baseType: !939)
!939 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !912, file: !913, line: 75, baseType: !153, size: 8, offset: 216)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !913, line: 76, baseType: !942, size: 64, offset: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !913, line: 76, size: 64, elements: !943)
!943 = !{!944, !945, !952}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !942, file: !913, line: 77, baseType: !79, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !942, file: !913, line: 78, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !913, line: 86, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !948, file: !913, line: 87, baseType: !7, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !948, file: !913, line: 88, baseType: !194, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !942, file: !913, line: 79, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !913, line: 92, size: 256, elements: !956)
!956 = !{!957, !958, !959, !961, !962}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !955, file: !913, line: 94, baseType: !7, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !955, file: !913, line: 95, baseType: !7, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !955, file: !913, line: 96, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !955, file: !913, line: 97, baseType: !918, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !955, file: !913, line: 98, baseType: !79, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !843, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !843, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !843, file: !13, line: 442, baseType: !902, size: 64, offset: 2240)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !843, file: !13, line: 443, baseType: !906, size: 64, offset: 2304)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !843, file: !13, line: 444, baseType: !257, size: 8, offset: 2368)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !843, file: !13, line: 451, baseType: !257, size: 8, offset: 2376)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !843, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !843, file: !13, line: 455, baseType: !971, size: 64, offset: 2432)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !843, file: !13, line: 458, baseType: !974, size: 64, offset: 2496)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!46}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !843, file: !13, line: 460, baseType: !978, size: 4032, align: 512, offset: 2560)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 4032, elements: !995)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !980)
!980 = !{!981, !982, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !979, file: !13, line: 363, baseType: !79, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !979, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !979, file: !13, line: 367, baseType: !984, size: 448, offset: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !984, file: !13, line: 320, baseType: !842, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !984, file: !13, line: 321, baseType: !988, size: 384, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !989, line: 40, size: 384, elements: !990)
!989 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !988, file: !989, line: 41, baseType: !992, size: 384, align: 64)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 384, align: 64, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 2)
!995 = !{!996}
!996 = !DISubrange(count: 7)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !843, file: !13, line: 463, baseType: !998, size: 192, offset: 6592)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !999, line: 8, size: 192, elements: !1000)
!999 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1000 = !{!1001, !1002, !1004}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !998, file: !999, line: 10, baseType: !7, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !998, file: !999, line: 11, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !998, file: !999, line: 12, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1007, line: 59, size: 48, elements: !1008)
!1007 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1006, file: !1007, line: 60, baseType: !620, size: 16)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1006, file: !1007, line: 61, baseType: !620, size: 16, offset: 16)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1006, file: !1007, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1006, file: !1007, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1006, file: !1007, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1006, file: !1007, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !843, file: !13, line: 465, baseType: !242, size: 64, offset: 6784)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !843, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !843, file: !13, line: 470, baseType: !113, size: 128, offset: 6912)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !843, file: !13, line: 471, baseType: !1019, size: 64, offset: 7040)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1021, line: 33, size: 96, elements: !1022)
!1021 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1020, file: !1021, line: 37, baseType: !46, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1020, file: !1021, line: 43, baseType: !46, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1020, file: !1021, line: 45, baseType: !106, size: 16, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !1021, line: 47, baseType: !106, size: 16, offset: 80)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !843, file: !13, line: 476, baseType: !1028, size: 64, offset: 7104)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1030)
!1030 = !{!1031, !1048, !1049, !1050}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1029, file: !13, line: 379, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1034, line: 204, baseType: !1035)
!1034 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1034, line: 197, size: 192, elements: !1036)
!1036 = !{!1037, !1040, !1041, !1042, !1044, !1046}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1035, file: !1034, line: 198, baseType: !1038, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1034, line: 21, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !156, line: 27, baseType: !7)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1035, file: !1034, line: 199, baseType: !157, size: 8, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1035, file: !1034, line: 200, baseType: !157, size: 8, offset: 40)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1035, file: !1034, line: 201, baseType: !1043, size: 16, offset: 48)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1034, line: 17, baseType: !164)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1035, file: !1034, line: 202, baseType: !1045, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1034, line: 16, baseType: !511)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1035, file: !1034, line: 203, baseType: !1047, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1034, line: 22, baseType: !511)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1029, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1029, file: !13, line: 381, baseType: !194, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1029, file: !13, line: 382, baseType: !194, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !843, file: !13, line: 477, baseType: !1029, size: 256, offset: 7168)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !843, file: !13, line: 480, baseType: !1053, size: 64, offset: 7424)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !843, file: !13, line: 483, baseType: !1056, size: 64, offset: 7488)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !843, file: !13, line: 488, baseType: !194, size: 64, offset: 7552)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !843, file: !13, line: 492, baseType: !79, size: 64, offset: 7616)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !843, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !843, file: !13, line: 495, baseType: !79, size: 64, offset: 7744)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !843, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !843, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !843, file: !13, line: 500, baseType: !1065, size: 64, offset: 7872)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1067, line: 45, baseType: !1068)
!1067 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !843, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !843, file: !13, line: 504, baseType: !1071, size: 64, offset: 8000)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1074, line: 96, size: 192, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1075 = !{!1076, !1077, !1138, !1141}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1073, file: !1074, line: 97, baseType: !7, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1073, file: !1074, line: 98, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1074, line: 24, size: 3072, elements: !1080)
!1080 = !{!1081, !1083, !1084, !1085, !1086, !1100, !1101, !1102, !1103, !1122, !1123, !1124, !1135, !1136, !1137}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1079, file: !1074, line: 26, baseType: !1082, size: 128)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !993)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1079, file: !1074, line: 27, baseType: !1082, size: 128, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1079, file: !1074, line: 28, baseType: !46, size: 32, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !1074, line: 31, baseType: !125, size: 32, align: 512, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1079, file: !1074, line: 32, baseType: !1087, size: 960, offset: 576)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1088, line: 206, size: 960, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1089 = !{!1090, !1091, !1094, !1096, !1097, !1099}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1087, file: !1088, line: 207, baseType: !456, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1087, file: !1088, line: 208, baseType: !1092, size: 256, offset: 64)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 256, elements: !572)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1087, file: !1088, line: 209, baseType: !1095, size: 256, offset: 320)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !572)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1087, file: !1088, line: 213, baseType: !229, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1087, file: !1088, line: 215, baseType: !1098, size: 256, offset: 640)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !572)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1088, line: 216, baseType: !153, size: 8, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1079, file: !1074, line: 33, baseType: !242, size: 64, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1079, file: !1074, line: 34, baseType: !242, size: 64, offset: 1600)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1079, file: !1074, line: 35, baseType: !257, size: 8, offset: 1664)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1079, file: !1074, line: 36, baseType: !1104, size: 320, offset: 1728)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1105, line: 11, size: 320, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1106 = !{!1107, !1114, !1115, !1120}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1104, file: !1105, line: 16, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !105, line: 198, size: 128, elements: !1109)
!1109 = !{!1110, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !105, line: 199, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1108, file: !105, line: 199, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1104, file: !1105, line: 17, baseType: !242, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1104, file: !1105, line: 18, baseType: !1116, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !1105, line: 19, baseType: !1121, size: 32, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !154, line: 21, baseType: !1039)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1079, file: !1074, line: 37, baseType: !646, size: 256, offset: 2048)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1079, file: !1074, line: 38, baseType: !453, size: 128, align: 64, offset: 2304)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1079, file: !1074, line: 39, baseType: !1125, size: 64, offset: 2432)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1074, line: 49, size: 768, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1126, file: !1074, line: 50, baseType: !125, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1126, file: !1074, line: 51, baseType: !1095, size: 256, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1126, file: !1074, line: 53, baseType: !1095, size: 256, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1126, file: !1074, line: 54, baseType: !242, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1126, file: !1074, line: 55, baseType: !1125, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1126, file: !1074, line: 56, baseType: !46, size: 32, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1126, file: !1074, line: 57, baseType: !46, size: 32, offset: 736)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1079, file: !1074, line: 40, baseType: !242, size: 64, offset: 2496)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1079, file: !1074, line: 42, baseType: !46, size: 32, offset: 2560)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1079, file: !1074, line: 43, baseType: !1072, size: 64, offset: 2624)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1073, file: !1074, line: 99, baseType: !1139, offset: 128)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1140, line: 211, elements: !483)
!1140 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1073, file: !1074, line: 100, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1074, line: 63, size: 3008, elements: !1144)
!1144 = !{!1145, !1146, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1176}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1143, file: !1074, line: 64, baseType: !1125, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1143, file: !1074, line: 65, baseType: !1147, size: 192, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 192, elements: !195)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1143, file: !1074, line: 67, baseType: !46, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1143, file: !1074, line: 68, baseType: !366, size: 256, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1143, file: !1074, line: 69, baseType: !125, size: 32, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1143, file: !1074, line: 70, baseType: !366, size: 256, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1143, file: !1074, line: 71, baseType: !242, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1143, file: !1074, line: 72, baseType: !242, size: 64, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1143, file: !1074, line: 73, baseType: !242, size: 64, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1143, file: !1074, line: 74, baseType: !242, size: 64, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1143, file: !1074, line: 75, baseType: !242, size: 64, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1143, file: !1074, line: 76, baseType: !242, size: 64, offset: 1216)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1143, file: !1074, line: 77, baseType: !242, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1143, file: !1074, line: 78, baseType: !242, size: 64, offset: 1344)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1143, file: !1074, line: 79, baseType: !257, size: 8, offset: 1408)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1143, file: !1074, line: 80, baseType: !242, size: 64, offset: 1472)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1143, file: !1074, line: 81, baseType: !366, size: 256, offset: 1536)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1143, file: !1074, line: 82, baseType: !862, size: 256, offset: 1792)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1143, file: !1074, line: 84, baseType: !145, size: 32, offset: 2048)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1143, file: !1074, line: 87, baseType: !242, size: 64, offset: 2112)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1143, file: !1074, line: 88, baseType: !242, size: 64, offset: 2176)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1143, file: !1074, line: 89, baseType: !1168, size: 704, offset: 2240)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !647, line: 111, size: 704, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1168, file: !647, line: 112, baseType: !646, size: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1168, file: !647, line: 113, baseType: !1104, size: 320, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1168, file: !647, line: 116, baseType: !1173, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !647, line: 18, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1168, file: !647, line: 117, baseType: !46, size: 32, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1143, file: !1074, line: 90, baseType: !1072, size: 64, offset: 2944)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !843, file: !13, line: 515, baseType: !1178, size: 64, offset: 8064)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1180, line: 117, size: 128, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1179, file: !1180, line: 118, baseType: !570, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1179, file: !1180, line: 119, baseType: !570, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1179, file: !1180, line: 120, baseType: !229, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !843, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !843, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !843, file: !13, line: 520, baseType: !1188, size: 64, offset: 8192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !843, file: !13, line: 523, baseType: !1190, size: 64, offset: 8256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !843, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !843, file: !13, line: 525, baseType: !1195, size: 64, offset: 8384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !843, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !843, file: !13, line: 533, baseType: !79, size: 64, offset: 8512)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !843, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !843, file: !13, line: 535, baseType: !1202, size: 64, offset: 8640)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !843, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !843, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !843, file: !13, line: 540, baseType: !1206, size: 64, offset: 8768)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1208, line: 32, size: 64, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1207, file: !1208, line: 33, baseType: !570, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1207, file: !1208, line: 34, baseType: !570, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !843, file: !13, line: 563, baseType: !113, size: 128, offset: 8832)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !843, file: !13, line: 565, baseType: !113, size: 128, offset: 8960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !843, file: !13, line: 568, baseType: !1215, size: 64, offset: 9088)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !843, file: !13, line: 570, baseType: !145, size: 32, offset: 9152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !837, file: !20, line: 101, baseType: !89, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !837, file: !20, line: 103, baseType: !257, size: 8, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !837, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !837, file: !20, line: 106, baseType: !1223, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !837, file: !20, line: 107, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !837, file: !20, line: 109, baseType: !796, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !837, file: !20, line: 110, baseType: !787, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !837, file: !20, line: 111, baseType: !796, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !837, file: !20, line: 112, baseType: !787, size: 64, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !837, file: !20, line: 113, baseType: !1235, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!46, !768, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1239, file: !38, line: 59, baseType: !46, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !837, file: !20, line: 114, baseType: !796, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !837, file: !20, line: 115, baseType: !93, size: 64, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !837, file: !20, line: 116, baseType: !93, size: 64, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !837, file: !20, line: 118, baseType: !791, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !837, file: !20, line: 119, baseType: !787, size: 64, offset: 1024)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !837, file: !20, line: 121, baseType: !1248, size: 64, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !824, file: !825, line: 88, baseType: !759, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !824, file: !825, line: 89, baseType: !796, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !824, file: !825, line: 90, baseType: !787, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !824, file: !825, line: 91, baseType: !787, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !824, file: !825, line: 92, baseType: !787, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !824, file: !825, line: 94, baseType: !796, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !824, file: !825, line: 95, baseType: !796, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !824, file: !825, line: 97, baseType: !1235, size: 64, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !824, file: !825, line: 98, baseType: !796, size: 64, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !824, file: !825, line: 100, baseType: !796, size: 64, offset: 960)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !824, file: !825, line: 102, baseType: !796, size: 64, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !824, file: !825, line: 103, baseType: !787, size: 64, offset: 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !824, file: !825, line: 105, baseType: !791, size: 64, offset: 1152)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !824, file: !825, line: 107, baseType: !1264, size: 64, offset: 1216)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !825, line: 107, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !824, file: !825, line: 109, baseType: !257, size: 8, offset: 1280)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !764, file: !26, line: 715, baseType: !836, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !764, file: !26, line: 717, baseType: !79, size: 64, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !764, file: !26, line: 719, baseType: !79, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !764, file: !26, line: 721, baseType: !366, size: 256, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !764, file: !26, line: 725, baseType: !1273, size: 448, offset: 1280)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1273, file: !26, line: 518, baseType: !113, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1273, file: !26, line: 519, baseType: !113, size: 128, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1273, file: !26, line: 520, baseType: !113, size: 128, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1273, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !764, file: !26, line: 726, baseType: !1280, size: 2496, offset: 1728)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1326, !1327, !1328, !1329, !1330, !1331, !1402, !1403, !1404, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1442, !1446}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1280, file: !38, line: 664, baseType: !1238, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1280, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1280, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1280, file: !38, line: 667, baseType: !257, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1280, file: !38, line: 668, baseType: !257, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1280, file: !38, line: 669, baseType: !257, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1280, file: !38, line: 670, baseType: !257, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1280, file: !38, line: 671, baseType: !257, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1280, file: !38, line: 672, baseType: !257, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1280, file: !38, line: 673, baseType: !257, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1280, file: !38, line: 674, baseType: !257, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1280, file: !38, line: 675, baseType: !1121, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1280, file: !38, line: 676, baseType: !125, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1280, file: !38, line: 678, baseType: !113, size: 128, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1280, file: !38, line: 679, baseType: !862, size: 256, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1280, file: !38, line: 680, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1300, line: 43, size: 1536, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1309, !1310, !1311, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1299, file: !1300, line: 44, baseType: !89, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1299, file: !1300, line: 45, baseType: !46, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1299, file: !1300, line: 46, baseType: !113, size: 128, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1299, file: !1300, line: 47, baseType: !125, size: 32, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1299, file: !1300, line: 48, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1299, file: !1300, line: 49, baseType: !1104, size: 320, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1299, file: !1300, line: 50, baseType: !242, size: 64, offset: 704)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1299, file: !1300, line: 51, baseType: !1312, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1313, line: 29, baseType: !376)
!1313 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1299, file: !1300, line: 52, baseType: !1312, size: 64, offset: 832)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1299, file: !1300, line: 53, baseType: !1312, size: 64, offset: 896)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1299, file: !1300, line: 54, baseType: !1312, size: 64, offset: 960)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1299, file: !1300, line: 55, baseType: !1312, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1299, file: !1300, line: 56, baseType: !242, size: 64, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1299, file: !1300, line: 57, baseType: !242, size: 64, offset: 1152)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1299, file: !1300, line: 58, baseType: !242, size: 64, offset: 1216)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1299, file: !1300, line: 59, baseType: !242, size: 64, offset: 1280)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1299, file: !1300, line: 60, baseType: !242, size: 64, offset: 1344)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1299, file: !1300, line: 61, baseType: !768, size: 64, offset: 1408)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1299, file: !1300, line: 62, baseType: !257, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1299, file: !1300, line: 63, baseType: !257, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1280, file: !38, line: 681, baseType: !257, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1280, file: !38, line: 682, baseType: !257, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1280, file: !38, line: 683, baseType: !257, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1280, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1280, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1280, file: !38, line: 690, baseType: !1332, size: 512, offset: 640)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1333)
!1333 = !{!1334, !1340, !1341, !1346, !1398, !1399, !1400, !1401}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1332, file: !33, line: 119, baseType: !1335, size: 256)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1336, line: 9, size: 256, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1335, file: !1336, line: 10, baseType: !312, size: 192, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1335, file: !1336, line: 11, baseType: !1312, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1332, file: !33, line: 120, baseType: !1312, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1332, file: !33, line: 121, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!32, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1332, file: !33, line: 122, baseType: !1347, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1349)
!1349 = !{!1350, !1375, !1376, !1379, !1384, !1385, !1393, !1397}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1348, file: !33, line: 160, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !33, line: 216, baseType: !380, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1352, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1352, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1352, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1352, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1352, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1352, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1352, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1352, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1352, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1352, file: !33, line: 227, baseType: !106, size: 16, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1352, file: !33, line: 228, baseType: !106, size: 16, offset: 208)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1352, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1352, file: !33, line: 235, baseType: !1312, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1352, file: !33, line: 236, baseType: !1345, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1352, file: !33, line: 237, baseType: !1312, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1352, file: !33, line: 238, baseType: !1345, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1352, file: !33, line: 239, baseType: !1372, size: 4096, align: 512, offset: 512)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 4096, align: 512, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 8)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1348, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1348, file: !33, line: 162, baseType: !1377, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !105, line: 32, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !227, line: 96, baseType: !46)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1348, file: !33, line: 163, baseType: !1380, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !540, line: 274, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !540, line: 274, size: 32, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1381, file: !540, line: 274, baseType: !539, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1348, file: !33, line: 164, baseType: !1345, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1348, file: !33, line: 165, baseType: !1386, size: 128, offset: 256)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1336, line: 14, size: 128, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1386, file: !1336, line: 15, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !313, line: 26, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1389, file: !313, line: 27, baseType: !329, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1389, file: !313, line: 28, baseType: !317, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1348, file: !33, line: 166, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1312}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1348, file: !33, line: 167, baseType: !1312, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1332, file: !33, line: 123, baseType: !153, size: 8, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1332, file: !33, line: 124, baseType: !153, size: 8, offset: 456)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1332, file: !33, line: 125, baseType: !153, size: 8, offset: 464)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1332, file: !33, line: 126, baseType: !153, size: 8, offset: 472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1280, file: !38, line: 691, baseType: !510, size: 64, offset: 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1280, file: !38, line: 692, baseType: !646, size: 256, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1280, file: !38, line: 693, baseType: !1405, size: 192, offset: 1472)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1406, line: 41, baseType: !1407)
!1406 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1406, line: 37, size: 192, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1407, file: !1406, line: 38, baseType: !125, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1407, file: !1406, line: 39, baseType: !113, size: 128, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1280, file: !38, line: 694, baseType: !1307, size: 64, offset: 1664)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1280, file: !38, line: 695, baseType: !145, size: 32, offset: 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1280, file: !38, line: 696, baseType: !145, size: 32, offset: 1760)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1280, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1280, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1280, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1280, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1280, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1280, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1280, file: !38, line: 703, baseType: !257, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1280, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1280, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1280, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1280, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1280, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1280, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1280, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1280, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1280, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1280, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1280, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1280, file: !38, line: 715, baseType: !510, size: 64, offset: 2048)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1280, file: !38, line: 716, baseType: !510, size: 64, offset: 2112)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1280, file: !38, line: 717, baseType: !510, size: 64, offset: 2176)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1280, file: !38, line: 718, baseType: !510, size: 64, offset: 2240)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1280, file: !38, line: 720, baseType: !1437, size: 64, offset: 2304)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !38, line: 633, baseType: !125, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1438, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1280, file: !38, line: 721, baseType: !1443, size: 64, offset: 2368)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !768, !570}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1280, file: !38, line: 722, baseType: !1447, size: 64, offset: 2432)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !764, file: !26, line: 727, baseType: !1450, size: 64, offset: 4224)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1459, !1460, !1461}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1451, file: !38, line: 743, baseType: !793, size: 1472)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1451, file: !38, line: 744, baseType: !796, size: 64, offset: 1472)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1451, file: !38, line: 745, baseType: !1456, size: 64, offset: 1536)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !768, !257}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1451, file: !38, line: 746, baseType: !796, size: 64, offset: 1600)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1451, file: !38, line: 747, baseType: !787, size: 64, offset: 1664)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1451, file: !38, line: 748, baseType: !787, size: 64, offset: 1728)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !764, file: !26, line: 736, baseType: !1463, size: 128, offset: 4288)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1464)
!1464 = !{!1465, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1463, file: !26, line: 531, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1468, line: 13, flags: DIFlagFwdDecl)
!1468 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1463, file: !26, line: 532, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !764, file: !26, line: 738, baseType: !1473, size: 64, offset: 4416)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !764, file: !26, line: 740, baseType: !1477, size: 64, offset: 4480)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !764, file: !26, line: 741, baseType: !510, size: 64, offset: 4544)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !764, file: !26, line: 746, baseType: !510, size: 64, offset: 4608)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !764, file: !26, line: 747, baseType: !1481, size: 64, offset: 4672)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !764, file: !26, line: 749, baseType: !1485, size: 64, offset: 4736)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1486, file: !26, line: 433, baseType: !7, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1486, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1486, file: !26, line: 435, baseType: !242, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !764, file: !26, line: 751, baseType: !113, size: 128, offset: 4800)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !764, file: !26, line: 762, baseType: !1493, size: 64, offset: 4928)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !764, file: !26, line: 770, baseType: !1496, offset: 4992)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1497, line: 5, elements: !483)
!1497 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !764, file: !26, line: 772, baseType: !1499, size: 64, offset: 4992)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1501, line: 18, flags: DIFlagFwdDecl)
!1501 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !764, file: !26, line: 773, baseType: !1503, size: 64, offset: 5056)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !825, line: 22, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !764, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !764, file: !26, line: 778, baseType: !1507, size: 32, offset: 5152)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !105, line: 21, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !105, line: 18, baseType: !1121)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !764, file: !26, line: 779, baseType: !1121, size: 32, offset: 5184)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !764, file: !26, line: 781, baseType: !125, size: 32, offset: 5216)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !764, file: !26, line: 782, baseType: !113, size: 128, offset: 5248)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !764, file: !26, line: 784, baseType: !1513, size: 64, offset: 5376)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !764, file: !26, line: 785, baseType: !93, size: 64, offset: 5440)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !764, file: !26, line: 787, baseType: !787, size: 64, offset: 5504)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !764, file: !26, line: 788, baseType: !1518, size: 64, offset: 5568)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !764, file: !26, line: 789, baseType: !1521, size: 64, offset: 5632)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !764, file: !26, line: 791, baseType: !1524, size: 64, offset: 5696)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1525, file: !26, line: 598, baseType: !53, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1525, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1525, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1525, file: !26, line: 601, baseType: !257, size: 8, offset: 96)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1525, file: !26, line: 602, baseType: !257, size: 8, offset: 104)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !764, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !764, file: !26, line: 795, baseType: !257, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !764, file: !26, line: 796, baseType: !257, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !764, file: !26, line: 797, baseType: !257, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !764, file: !26, line: 798, baseType: !257, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !764, file: !26, line: 799, baseType: !257, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !85, file: !86, line: 59, baseType: !1539, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!194, !762, !785}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !85, file: !86, line: 61, baseType: !1543, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1513}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !85, file: !86, line: 62, baseType: !787, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !85, file: !86, line: 64, baseType: !796, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !85, file: !86, line: 66, baseType: !248, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !85, file: !86, line: 67, baseType: !1550, size: 64, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!267, !762}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !85, file: !86, line: 69, baseType: !1554, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !762, !287, !295}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !85, file: !86, line: 71, baseType: !791, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !81, file: !82, line: 19, baseType: !1559, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!46, !1562, !768, !768}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transport_container", file: !82, line: 56, size: 832, elements: !1564)
!1564 = !{!1565, !1610}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1563, file: !82, line: 57, baseType: !1566, size: 768)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_container", file: !1567, line: 16, size: 768, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/attribute_container.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "693585871664ed4d3c31cbad8ead9d64")
!1568 = !{!1569, !1570, !1587, !1589, !1590, !1604, !1609}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1566, file: !1567, line: 17, baseType: !113, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "containers", scope: !1566, file: !1567, line: 18, baseType: !1571, size: 320, align: 64, offset: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !1572, line: 18, size: 320, align: 64, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!1573 = !{!1574, !1575, !1576, !1586}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !1571, file: !1572, line: 19, baseType: !125, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !1571, file: !1572, line: 20, baseType: !113, size: 128, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1571, file: !1572, line: 21, baseType: !1577, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !1572, line: 37, size: 256, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !1581, file: !1572, line: 38, baseType: !79, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !1581, file: !1572, line: 39, baseType: !113, size: 128, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !1581, file: !1572, line: 40, baseType: !714, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1571, file: !1572, line: 22, baseType: !1577, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1566, file: !1567, line: 19, baseType: !1588, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !1566, file: !1567, line: 20, baseType: !94, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1566, file: !1567, line: 21, baseType: !1591, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1594)
!1594 = !{!1595, !1596, !1600}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1593, file: !26, line: 107, baseType: !231, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1593, file: !26, line: 108, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!225, !768, !1592, !194}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1593, file: !26, line: 110, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!225, !768, !1592, !89, !239}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1566, file: !1567, line: 22, baseType: !1605, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!46, !1608, !768}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !1567, line: 24, baseType: !242, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1563, file: !82, line: 58, baseType: !94, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !81, file: !82, line: 21, baseType: !1559, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !81, file: !82, line: 23, baseType: !1559, size: 64, offset: 896)
!1613 = !{!0, !1614, !1616, !1618, !1623, !1625, !1627, !1629, !1631, !1633}
!1614 = !DIGlobalVariableExpression(var: !1615, expr: !DIExpression())
!1615 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_class_unregister204", scope: !2, file: !3, line: 69, type: !79, isLocal: true, isDefinition: true)
!1616 = !DIGlobalVariableExpression(var: !1617, expr: !DIExpression())
!1617 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_anon_transport_class_register205", scope: !2, file: !3, line: 103, type: !79, isLocal: true, isDefinition: true)
!1618 = !DIGlobalVariableExpression(var: !1619, expr: !DIExpression())
!1619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !1620, isLocal: true, isDefinition: true)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 248, elements: !1621)
!1621 = !{!1622}
!1622 = !DISubrange(count: 31)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_anon_transport_class_unregister206", scope: !2, file: !3, line: 118, type: !79, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_setup_device207", scope: !2, file: !3, line: 152, type: !79, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_add_device208", scope: !2, file: !3, line: 200, type: !79, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_configure_device209", scope: !2, file: !3, line: 231, type: !79, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_remove_device210", scope: !2, file: !3, line: 270, type: !79, isLocal: true, isDefinition: true)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_transport_destroy_device211", scope: !2, file: !3, line: 299, type: !79, isLocal: true, isDefinition: true)
!1635 = !{i32 7, !"Dwarf Version", i32 5}
!1636 = !{i32 2, !"Debug Info Version", i32 3}
!1637 = !{i32 1, !"wchar_size", i32 2}
!1638 = !{i32 8, !"cf-protection-branch", i32 1}
!1639 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1640 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1641 = !{i32 1, !"Code Model", i32 2}
!1642 = !{i32 1, !"override-stack-alignment", i32 8}
!1643 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1644 = distinct !DISubprogram(name: "transport_class_register", scope: !3, file: !3, line: 51, type: !1645, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!46, !80}
!1647 = !{!1648}
!1648 = !DILocalVariable(name: "tclass", arg: 1, scope: !1644, file: !3, line: 51, type: !80)
!1649 = !DILocation(line: 51, column: 54, scope: !1644)
!1650 = !DILocation(line: 53, column: 25, scope: !1644)
!1651 = !DILocation(line: 53, column: 33, scope: !1644)
!1652 = !DILocation(line: 53, column: 9, scope: !1644)
!1653 = !DILocation(line: 53, column: 2, scope: !1644)
!1654 = !DISubprogram(name: "class_register", scope: !86, file: !86, line: 80, type: !1655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!46, !1513}
!1657 = distinct !DISubprogram(name: "transport_class_unregister", scope: !3, file: !3, line: 65, type: !1658, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !80}
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "tclass", arg: 1, scope: !1657, file: !3, line: 65, type: !80)
!1662 = !DILocation(line: 65, column: 57, scope: !1657)
!1663 = !DILocation(line: 67, column: 20, scope: !1657)
!1664 = !DILocation(line: 67, column: 28, scope: !1657)
!1665 = !DILocation(line: 67, column: 2, scope: !1657)
!1666 = !DILocation(line: 68, column: 1, scope: !1657)
!1667 = !DISubprogram(name: "class_unregister", scope: !86, file: !86, line: 81, type: !1544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = distinct !DISubprogram(name: "anon_transport_class_register", scope: !3, file: !3, line: 91, type: !1669, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!46, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_transport_class", file: !82, line: 38, size: 1728, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tclass", scope: !1672, file: !82, line: 39, baseType: !81, size: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1672, file: !82, line: 40, baseType: !1566, size: 768, offset: 960)
!1676 = !{!1677, !1678}
!1677 = !DILocalVariable(name: "atc", arg: 1, scope: !1668, file: !3, line: 91, type: !1671)
!1678 = !DILocalVariable(name: "error", scope: !1668, file: !3, line: 93, type: !46)
!1679 = !DILocation(line: 91, column: 64, scope: !1668)
!1680 = !DILocation(line: 93, column: 2, scope: !1668)
!1681 = !DILocation(line: 93, column: 6, scope: !1668)
!1682 = !DILocation(line: 94, column: 26, scope: !1668)
!1683 = !DILocation(line: 94, column: 31, scope: !1668)
!1684 = !DILocation(line: 94, column: 38, scope: !1668)
!1685 = !DILocation(line: 94, column: 2, scope: !1668)
!1686 = !DILocation(line: 94, column: 7, scope: !1668)
!1687 = !DILocation(line: 94, column: 17, scope: !1668)
!1688 = !DILocation(line: 94, column: 23, scope: !1668)
!1689 = !DILocation(line: 95, column: 40, scope: !1668)
!1690 = !DILocation(line: 95, column: 45, scope: !1668)
!1691 = !DILocation(line: 95, column: 2, scope: !1668)
!1692 = !DILocation(line: 96, column: 40, scope: !1668)
!1693 = !DILocation(line: 96, column: 45, scope: !1668)
!1694 = !DILocation(line: 96, column: 10, scope: !1668)
!1695 = !DILocation(line: 96, column: 8, scope: !1668)
!1696 = !DILocation(line: 97, column: 6, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 97, column: 6)
!1698 = !DILocation(line: 97, column: 6, scope: !1668)
!1699 = !DILocation(line: 98, column: 10, scope: !1697)
!1700 = !DILocation(line: 98, column: 3, scope: !1697)
!1701 = !DILocation(line: 99, column: 2, scope: !1668)
!1702 = !DILocation(line: 99, column: 7, scope: !1668)
!1703 = !DILocation(line: 99, column: 14, scope: !1668)
!1704 = !DILocation(line: 99, column: 20, scope: !1668)
!1705 = !DILocation(line: 100, column: 2, scope: !1668)
!1706 = !DILocation(line: 100, column: 7, scope: !1668)
!1707 = !DILocation(line: 100, column: 14, scope: !1668)
!1708 = !DILocation(line: 100, column: 21, scope: !1668)
!1709 = !DILocation(line: 101, column: 2, scope: !1668)
!1710 = !DILocation(line: 102, column: 1, scope: !1668)
!1711 = distinct !DISubprogram(name: "attribute_container_set_no_classdevs", scope: !1567, file: !1567, line: 34, type: !1712, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null, !1608}
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "atc", arg: 1, scope: !1711, file: !1567, line: 34, type: !1608)
!1716 = !DILocation(line: 34, column: 66, scope: !1711)
!1717 = !DILocation(line: 36, column: 2, scope: !1711)
!1718 = !DILocation(line: 36, column: 7, scope: !1711)
!1719 = !DILocation(line: 36, column: 13, scope: !1711)
!1720 = !DILocation(line: 37, column: 1, scope: !1711)
!1721 = !DISubprogram(name: "attribute_container_register", scope: !1567, file: !1567, line: 39, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!46, !1608}
!1724 = distinct !DISubprogram(name: "anon_transport_dummy_function", scope: !3, file: !3, line: 71, type: !1560, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DILocalVariable(name: "tc", arg: 1, scope: !1724, file: !3, line: 71, type: !1562)
!1727 = !DILocalVariable(name: "dev", arg: 2, scope: !1724, file: !3, line: 72, type: !768)
!1728 = !DILocalVariable(name: "cdev", arg: 3, scope: !1724, file: !3, line: 73, type: !768)
!1729 = !DILocation(line: 71, column: 70, scope: !1724)
!1730 = !DILocation(line: 72, column: 22, scope: !1724)
!1731 = !DILocation(line: 73, column: 22, scope: !1724)
!1732 = !DILocation(line: 76, column: 2, scope: !1724)
!1733 = distinct !DISubprogram(name: "anon_transport_class_unregister", scope: !3, file: !3, line: 113, type: !1734, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1671}
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "atc", arg: 1, scope: !1733, file: !3, line: 113, type: !1671)
!1738 = !DILocation(line: 113, column: 67, scope: !1733)
!1739 = !DILocation(line: 115, column: 6, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 115, column: 6)
!1741 = !DILocation(line: 115, column: 6, scope: !1733)
!1742 = !DILocation(line: 116, column: 3, scope: !1740)
!1743 = !DILocation(line: 116, column: 3, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 116, column: 3)
!1745 = !DILocation(line: 116, column: 3, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 116, column: 3)
!1747 = !DILocation(line: 116, column: 3, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 116, column: 3)
!1749 = !{i64 2152544075, i64 2152544104, i64 2152544150, i64 2152544208, i64 2152544262, i64 2152544316, i64 2152544371, i64 2152544402}
!1750 = !DILocation(line: 117, column: 1, scope: !1733)
!1751 = !DISubprogram(name: "attribute_container_unregister", scope: !1567, file: !1567, line: 40, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1752 = distinct !DISubprogram(name: "transport_setup_device", scope: !3, file: !3, line: 148, type: !788, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1753)
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "dev", arg: 1, scope: !1752, file: !3, line: 148, type: !768)
!1755 = !DILocation(line: 148, column: 44, scope: !1752)
!1756 = !DILocation(line: 150, column: 33, scope: !1752)
!1757 = !DILocation(line: 150, column: 2, scope: !1752)
!1758 = !DILocation(line: 151, column: 1, scope: !1752)
!1759 = !DISubprogram(name: "attribute_container_add_device", scope: !1567, file: !1567, line: 45, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !768, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!46, !1608, !768, !768}
!1765 = distinct !DISubprogram(name: "transport_setup_classdev", scope: !3, file: !3, line: 120, type: !1763, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1773, !1774}
!1767 = !DILocalVariable(name: "cont", arg: 1, scope: !1765, file: !3, line: 120, type: !1608)
!1768 = !DILocalVariable(name: "dev", arg: 2, scope: !1765, file: !3, line: 121, type: !768)
!1769 = !DILocalVariable(name: "classdev", arg: 3, scope: !1765, file: !3, line: 122, type: !768)
!1770 = !DILocalVariable(name: "tclass", scope: !1765, file: !3, line: 124, type: !80)
!1771 = !DILocalVariable(name: "__mptr", scope: !1772, file: !3, line: 124, type: !79)
!1772 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 124, column: 35)
!1773 = !DILocalVariable(name: "tcont", scope: !1765, file: !3, line: 125, type: !1562)
!1774 = !DILocalVariable(name: "__mptr", scope: !1775, file: !3, line: 125, type: !79)
!1775 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 125, column: 38)
!1776 = !DILocation(line: 120, column: 65, scope: !1765)
!1777 = !DILocation(line: 121, column: 24, scope: !1765)
!1778 = !DILocation(line: 122, column: 24, scope: !1765)
!1779 = !DILocation(line: 124, column: 2, scope: !1765)
!1780 = !DILocation(line: 124, column: 26, scope: !1765)
!1781 = !DILocation(line: 124, column: 35, scope: !1772)
!1782 = !DILocation(line: 124, column: 35, scope: !1765)
!1783 = !DILocation(line: 125, column: 2, scope: !1765)
!1784 = !DILocation(line: 125, column: 30, scope: !1765)
!1785 = !DILocation(line: 125, column: 38, scope: !1775)
!1786 = !DILocation(line: 125, column: 38, scope: !1765)
!1787 = !DILocation(line: 127, column: 6, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 127, column: 6)
!1789 = !DILocation(line: 127, column: 14, scope: !1788)
!1790 = !DILocation(line: 127, column: 6, scope: !1765)
!1791 = !DILocation(line: 128, column: 3, scope: !1788)
!1792 = !DILocation(line: 128, column: 11, scope: !1788)
!1793 = !DILocation(line: 128, column: 17, scope: !1788)
!1794 = !DILocation(line: 128, column: 24, scope: !1788)
!1795 = !DILocation(line: 128, column: 29, scope: !1788)
!1796 = !DILocation(line: 131, column: 1, scope: !1765)
!1797 = !DILocation(line: 130, column: 2, scope: !1765)
!1798 = distinct !DISubprogram(name: "transport_add_device", scope: !3, file: !3, line: 194, type: !797, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1799)
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "dev", arg: 1, scope: !1798, file: !3, line: 194, type: !768)
!1801 = !DILocation(line: 194, column: 41, scope: !1798)
!1802 = !DILocation(line: 196, column: 49, scope: !1798)
!1803 = !DILocation(line: 196, column: 9, scope: !1798)
!1804 = !DILocation(line: 196, column: 2, scope: !1798)
!1805 = !DISubprogram(name: "attribute_container_device_trigger_safe", scope: !1567, file: !1567, line: 57, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!46, !768, !1762, !1762}
!1808 = distinct !DISubprogram(name: "transport_add_class_device", scope: !3, file: !3, line: 154, type: !1763, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1816, !1817, !1818, !1820, !1821}
!1810 = !DILocalVariable(name: "cont", arg: 1, scope: !1808, file: !3, line: 154, type: !1608)
!1811 = !DILocalVariable(name: "dev", arg: 2, scope: !1808, file: !3, line: 155, type: !768)
!1812 = !DILocalVariable(name: "classdev", arg: 3, scope: !1808, file: !3, line: 156, type: !768)
!1813 = !DILocalVariable(name: "tclass", scope: !1808, file: !3, line: 158, type: !80)
!1814 = !DILocalVariable(name: "__mptr", scope: !1815, file: !3, line: 158, type: !79)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 158, column: 35)
!1816 = !DILocalVariable(name: "error", scope: !1808, file: !3, line: 159, type: !46)
!1817 = !DILocalVariable(name: "tcont", scope: !1808, file: !3, line: 160, type: !1562)
!1818 = !DILocalVariable(name: "__mptr", scope: !1819, file: !3, line: 161, type: !79)
!1819 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 161, column: 3)
!1820 = !DILabel(scope: !1808, name: "err_del", file: !3, line: 174)
!1821 = !DILabel(scope: !1808, name: "err_remove", file: !3, line: 176)
!1822 = !DILocation(line: 154, column: 67, scope: !1808)
!1823 = !DILocation(line: 155, column: 26, scope: !1808)
!1824 = !DILocation(line: 156, column: 26, scope: !1808)
!1825 = !DILocation(line: 158, column: 2, scope: !1808)
!1826 = !DILocation(line: 158, column: 26, scope: !1808)
!1827 = !DILocation(line: 158, column: 35, scope: !1815)
!1828 = !DILocation(line: 158, column: 35, scope: !1808)
!1829 = !DILocation(line: 159, column: 2, scope: !1808)
!1830 = !DILocation(line: 159, column: 6, scope: !1808)
!1831 = !DILocation(line: 159, column: 51, scope: !1808)
!1832 = !DILocation(line: 159, column: 14, scope: !1808)
!1833 = !DILocation(line: 160, column: 2, scope: !1808)
!1834 = !DILocation(line: 160, column: 30, scope: !1808)
!1835 = !DILocation(line: 161, column: 3, scope: !1819)
!1836 = !DILocation(line: 161, column: 3, scope: !1808)
!1837 = !DILocation(line: 163, column: 6, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 163, column: 6)
!1839 = !DILocation(line: 163, column: 6, scope: !1808)
!1840 = !DILocation(line: 164, column: 3, scope: !1838)
!1841 = !DILocation(line: 166, column: 6, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 166, column: 6)
!1843 = !DILocation(line: 166, column: 13, scope: !1842)
!1844 = !DILocation(line: 166, column: 6, scope: !1808)
!1845 = !DILocation(line: 167, column: 31, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 166, column: 25)
!1847 = !DILocation(line: 167, column: 41, scope: !1846)
!1848 = !DILocation(line: 167, column: 47, scope: !1846)
!1849 = !DILocation(line: 167, column: 54, scope: !1846)
!1850 = !DILocation(line: 167, column: 11, scope: !1846)
!1851 = !DILocation(line: 167, column: 9, scope: !1846)
!1852 = !DILocation(line: 168, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 168, column: 7)
!1854 = !DILocation(line: 168, column: 7, scope: !1846)
!1855 = !DILocation(line: 169, column: 4, scope: !1853)
!1856 = !DILocation(line: 170, column: 2, scope: !1846)
!1857 = !DILocation(line: 172, column: 2, scope: !1808)
!1858 = !DILocation(line: 174, column: 1, scope: !1808)
!1859 = !DILocation(line: 175, column: 39, scope: !1808)
!1860 = !DILocation(line: 175, column: 2, scope: !1808)
!1861 = !DILocation(line: 176, column: 1, scope: !1808)
!1862 = !DILocation(line: 177, column: 6, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 177, column: 6)
!1864 = !DILocation(line: 177, column: 14, scope: !1863)
!1865 = !DILocation(line: 177, column: 6, scope: !1808)
!1866 = !DILocation(line: 178, column: 3, scope: !1863)
!1867 = !DILocation(line: 178, column: 11, scope: !1863)
!1868 = !DILocation(line: 178, column: 18, scope: !1863)
!1869 = !DILocation(line: 178, column: 25, scope: !1863)
!1870 = !DILocation(line: 178, column: 30, scope: !1863)
!1871 = !DILocation(line: 180, column: 9, scope: !1808)
!1872 = !DILocation(line: 180, column: 2, scope: !1808)
!1873 = !DILocation(line: 181, column: 1, scope: !1808)
!1874 = distinct !DISubprogram(name: "transport_remove_classdev", scope: !3, file: !3, line: 233, type: !1763, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1882, !1883}
!1876 = !DILocalVariable(name: "cont", arg: 1, scope: !1874, file: !3, line: 233, type: !1608)
!1877 = !DILocalVariable(name: "dev", arg: 2, scope: !1874, file: !3, line: 234, type: !768)
!1878 = !DILocalVariable(name: "classdev", arg: 3, scope: !1874, file: !3, line: 235, type: !768)
!1879 = !DILocalVariable(name: "tcont", scope: !1874, file: !3, line: 237, type: !1562)
!1880 = !DILocalVariable(name: "__mptr", scope: !1881, file: !3, line: 238, type: !79)
!1881 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 238, column: 3)
!1882 = !DILocalVariable(name: "tclass", scope: !1874, file: !3, line: 239, type: !80)
!1883 = !DILocalVariable(name: "__mptr", scope: !1884, file: !3, line: 239, type: !79)
!1884 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 239, column: 35)
!1885 = !DILocation(line: 233, column: 66, scope: !1874)
!1886 = !DILocation(line: 234, column: 25, scope: !1874)
!1887 = !DILocation(line: 235, column: 25, scope: !1874)
!1888 = !DILocation(line: 237, column: 2, scope: !1874)
!1889 = !DILocation(line: 237, column: 30, scope: !1874)
!1890 = !DILocation(line: 238, column: 3, scope: !1881)
!1891 = !DILocation(line: 238, column: 3, scope: !1874)
!1892 = !DILocation(line: 239, column: 2, scope: !1874)
!1893 = !DILocation(line: 239, column: 26, scope: !1874)
!1894 = !DILocation(line: 239, column: 35, scope: !1884)
!1895 = !DILocation(line: 239, column: 35, scope: !1874)
!1896 = !DILocation(line: 241, column: 6, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 241, column: 6)
!1898 = !DILocation(line: 241, column: 14, scope: !1897)
!1899 = !DILocation(line: 241, column: 6, scope: !1874)
!1900 = !DILocation(line: 242, column: 3, scope: !1897)
!1901 = !DILocation(line: 242, column: 11, scope: !1897)
!1902 = !DILocation(line: 242, column: 18, scope: !1897)
!1903 = !DILocation(line: 242, column: 25, scope: !1897)
!1904 = !DILocation(line: 242, column: 30, scope: !1897)
!1905 = !DILocation(line: 244, column: 6, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 244, column: 6)
!1907 = !DILocation(line: 244, column: 14, scope: !1906)
!1908 = !DILocation(line: 244, column: 21, scope: !1906)
!1909 = !DILocation(line: 244, column: 6, scope: !1874)
!1910 = !DILocation(line: 245, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 245, column: 7)
!1912 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 244, column: 55)
!1913 = !DILocation(line: 245, column: 14, scope: !1911)
!1914 = !DILocation(line: 245, column: 7, scope: !1912)
!1915 = !DILocation(line: 246, column: 24, scope: !1911)
!1916 = !DILocation(line: 246, column: 34, scope: !1911)
!1917 = !DILocation(line: 246, column: 40, scope: !1911)
!1918 = !DILocation(line: 246, column: 47, scope: !1911)
!1919 = !DILocation(line: 246, column: 4, scope: !1911)
!1920 = !DILocation(line: 247, column: 40, scope: !1912)
!1921 = !DILocation(line: 247, column: 3, scope: !1912)
!1922 = !DILocation(line: 248, column: 2, scope: !1912)
!1923 = !DILocation(line: 251, column: 1, scope: !1874)
!1924 = !DILocation(line: 250, column: 2, scope: !1874)
!1925 = distinct !DISubprogram(name: "transport_configure_device", scope: !3, file: !3, line: 227, type: !788, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1926)
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "dev", arg: 1, scope: !1925, file: !3, line: 227, type: !768)
!1928 = !DILocation(line: 227, column: 48, scope: !1925)
!1929 = !DILocation(line: 229, column: 37, scope: !1925)
!1930 = !DILocation(line: 229, column: 2, scope: !1925)
!1931 = !DILocation(line: 230, column: 1, scope: !1925)
!1932 = !DISubprogram(name: "attribute_container_device_trigger", scope: !1567, file: !1567, line: 53, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1933 = distinct !DISubprogram(name: "transport_configure", scope: !3, file: !3, line: 202, type: !1763, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1941, !1942}
!1935 = !DILocalVariable(name: "cont", arg: 1, scope: !1933, file: !3, line: 202, type: !1608)
!1936 = !DILocalVariable(name: "dev", arg: 2, scope: !1933, file: !3, line: 203, type: !768)
!1937 = !DILocalVariable(name: "cdev", arg: 3, scope: !1933, file: !3, line: 204, type: !768)
!1938 = !DILocalVariable(name: "tclass", scope: !1933, file: !3, line: 206, type: !80)
!1939 = !DILocalVariable(name: "__mptr", scope: !1940, file: !3, line: 206, type: !79)
!1940 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 206, column: 35)
!1941 = !DILocalVariable(name: "tcont", scope: !1933, file: !3, line: 207, type: !1562)
!1942 = !DILocalVariable(name: "__mptr", scope: !1943, file: !3, line: 207, type: !79)
!1943 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 207, column: 38)
!1944 = !DILocation(line: 202, column: 60, scope: !1933)
!1945 = !DILocation(line: 203, column: 26, scope: !1933)
!1946 = !DILocation(line: 204, column: 26, scope: !1933)
!1947 = !DILocation(line: 206, column: 2, scope: !1933)
!1948 = !DILocation(line: 206, column: 26, scope: !1933)
!1949 = !DILocation(line: 206, column: 35, scope: !1940)
!1950 = !DILocation(line: 206, column: 35, scope: !1933)
!1951 = !DILocation(line: 207, column: 2, scope: !1933)
!1952 = !DILocation(line: 207, column: 30, scope: !1933)
!1953 = !DILocation(line: 207, column: 38, scope: !1943)
!1954 = !DILocation(line: 207, column: 38, scope: !1933)
!1955 = !DILocation(line: 209, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 209, column: 6)
!1957 = !DILocation(line: 209, column: 14, scope: !1956)
!1958 = !DILocation(line: 209, column: 6, scope: !1933)
!1959 = !DILocation(line: 210, column: 3, scope: !1956)
!1960 = !DILocation(line: 210, column: 11, scope: !1956)
!1961 = !DILocation(line: 210, column: 21, scope: !1956)
!1962 = !DILocation(line: 210, column: 28, scope: !1956)
!1963 = !DILocation(line: 210, column: 33, scope: !1956)
!1964 = !DILocation(line: 213, column: 1, scope: !1933)
!1965 = !DILocation(line: 212, column: 2, scope: !1933)
!1966 = distinct !DISubprogram(name: "transport_remove_device", scope: !3, file: !3, line: 266, type: !788, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1967)
!1967 = !{!1968}
!1968 = !DILocalVariable(name: "dev", arg: 1, scope: !1966, file: !3, line: 266, type: !768)
!1969 = !DILocation(line: 266, column: 45, scope: !1966)
!1970 = !DILocation(line: 268, column: 37, scope: !1966)
!1971 = !DILocation(line: 268, column: 2, scope: !1966)
!1972 = !DILocation(line: 269, column: 1, scope: !1966)
!1973 = distinct !DISubprogram(name: "transport_destroy_device", scope: !3, file: !3, line: 295, type: !788, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "dev", arg: 1, scope: !1973, file: !3, line: 295, type: !768)
!1976 = !DILocation(line: 295, column: 46, scope: !1973)
!1977 = !DILocation(line: 297, column: 36, scope: !1973)
!1978 = !DILocation(line: 297, column: 2, scope: !1973)
!1979 = !DILocation(line: 298, column: 1, scope: !1973)
!1980 = !DISubprogram(name: "attribute_container_remove_device", scope: !1567, file: !1567, line: 49, type: !1981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !768, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1608, !768, !768}
!1986 = distinct !DISubprogram(name: "transport_destroy_classdev", scope: !3, file: !3, line: 272, type: !1984, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992}
!1988 = !DILocalVariable(name: "cont", arg: 1, scope: !1986, file: !3, line: 272, type: !1608)
!1989 = !DILocalVariable(name: "dev", arg: 2, scope: !1986, file: !3, line: 273, type: !768)
!1990 = !DILocalVariable(name: "classdev", arg: 3, scope: !1986, file: !3, line: 274, type: !768)
!1991 = !DILocalVariable(name: "tclass", scope: !1986, file: !3, line: 276, type: !80)
!1992 = !DILocalVariable(name: "__mptr", scope: !1993, file: !3, line: 276, type: !79)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 276, column: 35)
!1994 = !DILocation(line: 272, column: 68, scope: !1986)
!1995 = !DILocation(line: 273, column: 26, scope: !1986)
!1996 = !DILocation(line: 274, column: 26, scope: !1986)
!1997 = !DILocation(line: 276, column: 2, scope: !1986)
!1998 = !DILocation(line: 276, column: 26, scope: !1986)
!1999 = !DILocation(line: 276, column: 35, scope: !1993)
!2000 = !DILocation(line: 276, column: 35, scope: !1986)
!2001 = !DILocation(line: 278, column: 6, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 278, column: 6)
!2003 = !DILocation(line: 278, column: 14, scope: !2002)
!2004 = !DILocation(line: 278, column: 21, scope: !2002)
!2005 = !DILocation(line: 278, column: 6, scope: !1986)
!2006 = !DILocation(line: 279, column: 14, scope: !2002)
!2007 = !DILocation(line: 279, column: 3, scope: !2002)
!2008 = !DILocation(line: 280, column: 1, scope: !1986)
!2009 = !DISubprogram(name: "attribute_container_add_class_device", scope: !1567, file: !1567, line: 68, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2010 = !DISubprogram(name: "sysfs_create_group", scope: !97, file: !97, line: 307, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!46, !107, !94}
!2013 = !DISubprogram(name: "attribute_container_class_device_del", scope: !1567, file: !1567, line: 73, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2014 = !DISubprogram(name: "sysfs_remove_group", scope: !97, file: !97, line: 315, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !107, !94}
!2017 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
