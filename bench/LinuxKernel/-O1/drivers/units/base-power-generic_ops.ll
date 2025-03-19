; ModuleID = 'drivers/base/power/generic_ops.c'
source_filename = "drivers/base/power/generic_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_runtime_suspend: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_runtime_suspend ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_runtime_resume: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_runtime_resume ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_suspend_noirq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_suspend_noirq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_suspend_late: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_suspend_late ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_suspend: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_suspend ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_freeze_noirq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_freeze_noirq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_freeze_late: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_freeze_late ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_freeze: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_freeze ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_poweroff_noirq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_poweroff_noirq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_poweroff_late: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_poweroff_late ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_poweroff: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_poweroff ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_thaw_noirq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_thaw_noirq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_thaw_early: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_thaw_early ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_thaw: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_thaw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_resume_noirq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_resume_noirq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_resume_early: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_resume_early ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_resume: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_resume ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_restore_noirq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_restore_noirq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_restore_early: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_restore_early ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_generic_restore: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_generic_restore ; .previous"

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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_pm_generic_runtime_suspend204 = internal global ptr @pm_generic_runtime_suspend, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_pm_generic_runtime_resume205 = internal global ptr @pm_generic_runtime_resume, section ".discard.addressable", align 8, !dbg !81
@__UNIQUE_ID___addressable_pm_generic_suspend_noirq206 = internal global ptr @pm_generic_suspend_noirq, section ".discard.addressable", align 8, !dbg !83
@__UNIQUE_ID___addressable_pm_generic_suspend_late207 = internal global ptr @pm_generic_suspend_late, section ".discard.addressable", align 8, !dbg !85
@__UNIQUE_ID___addressable_pm_generic_suspend208 = internal global ptr @pm_generic_suspend, section ".discard.addressable", align 8, !dbg !87
@__UNIQUE_ID___addressable_pm_generic_freeze_noirq209 = internal global ptr @pm_generic_freeze_noirq, section ".discard.addressable", align 8, !dbg !89
@__UNIQUE_ID___addressable_pm_generic_freeze_late210 = internal global ptr @pm_generic_freeze_late, section ".discard.addressable", align 8, !dbg !91
@__UNIQUE_ID___addressable_pm_generic_freeze211 = internal global ptr @pm_generic_freeze, section ".discard.addressable", align 8, !dbg !93
@__UNIQUE_ID___addressable_pm_generic_poweroff_noirq212 = internal global ptr @pm_generic_poweroff_noirq, section ".discard.addressable", align 8, !dbg !95
@__UNIQUE_ID___addressable_pm_generic_poweroff_late213 = internal global ptr @pm_generic_poweroff_late, section ".discard.addressable", align 8, !dbg !97
@__UNIQUE_ID___addressable_pm_generic_poweroff214 = internal global ptr @pm_generic_poweroff, section ".discard.addressable", align 8, !dbg !99
@__UNIQUE_ID___addressable_pm_generic_thaw_noirq215 = internal global ptr @pm_generic_thaw_noirq, section ".discard.addressable", align 8, !dbg !101
@__UNIQUE_ID___addressable_pm_generic_thaw_early216 = internal global ptr @pm_generic_thaw_early, section ".discard.addressable", align 8, !dbg !103
@__UNIQUE_ID___addressable_pm_generic_thaw217 = internal global ptr @pm_generic_thaw, section ".discard.addressable", align 8, !dbg !105
@__UNIQUE_ID___addressable_pm_generic_resume_noirq218 = internal global ptr @pm_generic_resume_noirq, section ".discard.addressable", align 8, !dbg !107
@__UNIQUE_ID___addressable_pm_generic_resume_early219 = internal global ptr @pm_generic_resume_early, section ".discard.addressable", align 8, !dbg !109
@__UNIQUE_ID___addressable_pm_generic_resume220 = internal global ptr @pm_generic_resume, section ".discard.addressable", align 8, !dbg !111
@__UNIQUE_ID___addressable_pm_generic_restore_noirq221 = internal global ptr @pm_generic_restore_noirq, section ".discard.addressable", align 8, !dbg !113
@__UNIQUE_ID___addressable_pm_generic_restore_early222 = internal global ptr @pm_generic_restore_early, section ".discard.addressable", align 8, !dbg !115
@__UNIQUE_ID___addressable_pm_generic_restore223 = internal global ptr @pm_generic_restore, section ".discard.addressable", align 8, !dbg !117
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID___addressable_pm_generic_runtime_suspend204, ptr @__UNIQUE_ID___addressable_pm_generic_runtime_resume205, ptr @__UNIQUE_ID___addressable_pm_generic_suspend_noirq206, ptr @__UNIQUE_ID___addressable_pm_generic_suspend_late207, ptr @__UNIQUE_ID___addressable_pm_generic_suspend208, ptr @__UNIQUE_ID___addressable_pm_generic_freeze_noirq209, ptr @__UNIQUE_ID___addressable_pm_generic_freeze_late210, ptr @__UNIQUE_ID___addressable_pm_generic_freeze211, ptr @__UNIQUE_ID___addressable_pm_generic_poweroff_noirq212, ptr @__UNIQUE_ID___addressable_pm_generic_poweroff_late213, ptr @__UNIQUE_ID___addressable_pm_generic_poweroff214, ptr @__UNIQUE_ID___addressable_pm_generic_thaw_noirq215, ptr @__UNIQUE_ID___addressable_pm_generic_thaw_early216, ptr @__UNIQUE_ID___addressable_pm_generic_thaw217, ptr @__UNIQUE_ID___addressable_pm_generic_resume_noirq218, ptr @__UNIQUE_ID___addressable_pm_generic_resume_early219, ptr @__UNIQUE_ID___addressable_pm_generic_resume220, ptr @__UNIQUE_ID___addressable_pm_generic_restore_noirq221, ptr @__UNIQUE_ID___addressable_pm_generic_restore_early222, ptr @__UNIQUE_ID___addressable_pm_generic_restore223], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_runtime_suspend(ptr noundef %dev) #0 align 16 !dbg !128 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1602, metadata !DIExpression()), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1603, metadata !DIExpression()), !dbg !1607
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1608
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1609
  %1 = load ptr, ptr %driver, align 8, !dbg !1609
  %tobool = icmp ne ptr %1, null, !dbg !1608
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1608

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1610
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1611
  %3 = load ptr, ptr %driver1, align 8, !dbg !1611
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1612
  %4 = load ptr, ptr %pm2, align 8, !dbg !1612
  br label %cond.end, !dbg !1608

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1608

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1608
  store ptr %cond, ptr %pm, align 8, !dbg !1607
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3, !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1604, metadata !DIExpression()), !dbg !1614
  %5 = load ptr, ptr %pm, align 8, !dbg !1615
  %tobool3 = icmp ne ptr %5, null, !dbg !1615
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1616

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1617
  %runtime_suspend = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 20, !dbg !1618
  %7 = load ptr, ptr %runtime_suspend, align 8, !dbg !1618
  %tobool4 = icmp ne ptr %7, null, !dbg !1617
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1615

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1619
  %runtime_suspend6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 20, !dbg !1620
  %9 = load ptr, ptr %runtime_suspend6, align 8, !dbg !1620
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1621
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1619
  br label %cond.end8, !dbg !1615

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1615

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1615
  store i32 %cond9, ptr %ret, align 4, !dbg !1622
  %11 = load i32, ptr %ret, align 4, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3, !dbg !1624
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1624
  ret i32 %11, !dbg !1625
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_runtime_resume(ptr noundef %dev) #0 align 16 !dbg !1626 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1628, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1629, metadata !DIExpression()), !dbg !1633
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1634
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1635
  %1 = load ptr, ptr %driver, align 8, !dbg !1635
  %tobool = icmp ne ptr %1, null, !dbg !1634
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1634

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1636
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1637
  %3 = load ptr, ptr %driver1, align 8, !dbg !1637
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1638
  %4 = load ptr, ptr %pm2, align 8, !dbg !1638
  br label %cond.end, !dbg !1634

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1634

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1634
  store ptr %cond, ptr %pm, align 8, !dbg !1633
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3, !dbg !1639
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1630, metadata !DIExpression()), !dbg !1640
  %5 = load ptr, ptr %pm, align 8, !dbg !1641
  %tobool3 = icmp ne ptr %5, null, !dbg !1641
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1642

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1643
  %runtime_resume = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 21, !dbg !1644
  %7 = load ptr, ptr %runtime_resume, align 8, !dbg !1644
  %tobool4 = icmp ne ptr %7, null, !dbg !1643
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1641

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1645
  %runtime_resume6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 21, !dbg !1646
  %9 = load ptr, ptr %runtime_resume6, align 8, !dbg !1646
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1647
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1645
  br label %cond.end8, !dbg !1641

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1641

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1641
  store i32 %cond9, ptr %ret, align 4, !dbg !1648
  %11 = load i32, ptr %ret, align 4, !dbg !1649
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3, !dbg !1650
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1650
  ret i32 %11, !dbg !1651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_prepare(ptr noundef %dev) #0 align 16 !dbg !1652 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1654, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #3, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !1655, metadata !DIExpression()), !dbg !1659
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1660
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1661
  %1 = load ptr, ptr %driver, align 8, !dbg !1661
  store ptr %1, ptr %drv, align 8, !dbg !1659
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3, !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1656, metadata !DIExpression()), !dbg !1663
  store i32 0, ptr %ret, align 4, !dbg !1663
  %2 = load ptr, ptr %drv, align 8, !dbg !1664
  %tobool = icmp ne ptr %2, null, !dbg !1664
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1666

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %drv, align 8, !dbg !1667
  %pm = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1668
  %4 = load ptr, ptr %pm, align 8, !dbg !1668
  %tobool1 = icmp ne ptr %4, null, !dbg !1667
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !1669

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %drv, align 8, !dbg !1670
  %pm3 = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 16, !dbg !1671
  %6 = load ptr, ptr %pm3, align 8, !dbg !1671
  %prepare = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 0, !dbg !1672
  %7 = load ptr, ptr %prepare, align 8, !dbg !1672
  %tobool4 = icmp ne ptr %7, null, !dbg !1670
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1673

if.then:                                          ; preds = %land.lhs.true2
  %8 = load ptr, ptr %drv, align 8, !dbg !1674
  %pm5 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 16, !dbg !1675
  %9 = load ptr, ptr %pm5, align 8, !dbg !1675
  %prepare6 = getelementptr inbounds %struct.dev_pm_ops, ptr %9, i32 0, i32 0, !dbg !1676
  %10 = load ptr, ptr %prepare6, align 8, !dbg !1676
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !1677
  %call = call i32 %10(ptr noundef %11) #4, !dbg !1674
  store i32 %call, ptr %ret, align 4, !dbg !1678
  br label %if.end, !dbg !1679

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %12 = load i32, ptr %ret, align 4, !dbg !1680
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3, !dbg !1681
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #3, !dbg !1681
  ret i32 %12, !dbg !1682
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_suspend_noirq(ptr noundef %dev) #0 align 16 !dbg !1683 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1685, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1686, metadata !DIExpression()), !dbg !1689
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1690
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1691
  %1 = load ptr, ptr %driver, align 8, !dbg !1691
  %tobool = icmp ne ptr %1, null, !dbg !1690
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1690

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1692
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1693
  %3 = load ptr, ptr %driver1, align 8, !dbg !1693
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1694
  %4 = load ptr, ptr %pm2, align 8, !dbg !1694
  br label %cond.end, !dbg !1690

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1690

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1690
  store ptr %cond, ptr %pm, align 8, !dbg !1689
  %5 = load ptr, ptr %pm, align 8, !dbg !1695
  %tobool3 = icmp ne ptr %5, null, !dbg !1695
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1696

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1697
  %suspend_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 14, !dbg !1698
  %7 = load ptr, ptr %suspend_noirq, align 8, !dbg !1698
  %tobool4 = icmp ne ptr %7, null, !dbg !1697
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1695

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1699
  %suspend_noirq6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 14, !dbg !1700
  %9 = load ptr, ptr %suspend_noirq6, align 8, !dbg !1700
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1701
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1699
  br label %cond.end8, !dbg !1695

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1695

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1695
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1702
  ret i32 %cond9, !dbg !1703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_suspend_late(ptr noundef %dev) #0 align 16 !dbg !1704 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1706, metadata !DIExpression()), !dbg !1708
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1707, metadata !DIExpression()), !dbg !1710
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1711
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1712
  %1 = load ptr, ptr %driver, align 8, !dbg !1712
  %tobool = icmp ne ptr %1, null, !dbg !1711
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1711

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1713
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1714
  %3 = load ptr, ptr %driver1, align 8, !dbg !1714
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1715
  %4 = load ptr, ptr %pm2, align 8, !dbg !1715
  br label %cond.end, !dbg !1711

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1711

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1711
  store ptr %cond, ptr %pm, align 8, !dbg !1710
  %5 = load ptr, ptr %pm, align 8, !dbg !1716
  %tobool3 = icmp ne ptr %5, null, !dbg !1716
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1717

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1718
  %suspend_late = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 8, !dbg !1719
  %7 = load ptr, ptr %suspend_late, align 8, !dbg !1719
  %tobool4 = icmp ne ptr %7, null, !dbg !1718
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1716

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1720
  %suspend_late6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 8, !dbg !1721
  %9 = load ptr, ptr %suspend_late6, align 8, !dbg !1721
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1722
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1720
  br label %cond.end8, !dbg !1716

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1716

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1723
  ret i32 %cond9, !dbg !1724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_suspend(ptr noundef %dev) #0 align 16 !dbg !1725 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1727, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1728, metadata !DIExpression()), !dbg !1731
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1732
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1733
  %1 = load ptr, ptr %driver, align 8, !dbg !1733
  %tobool = icmp ne ptr %1, null, !dbg !1732
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1732

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1734
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1735
  %3 = load ptr, ptr %driver1, align 8, !dbg !1735
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1736
  %4 = load ptr, ptr %pm2, align 8, !dbg !1736
  br label %cond.end, !dbg !1732

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1732

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1732
  store ptr %cond, ptr %pm, align 8, !dbg !1731
  %5 = load ptr, ptr %pm, align 8, !dbg !1737
  %tobool3 = icmp ne ptr %5, null, !dbg !1737
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1738

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1739
  %suspend = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 2, !dbg !1740
  %7 = load ptr, ptr %suspend, align 8, !dbg !1740
  %tobool4 = icmp ne ptr %7, null, !dbg !1739
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1737

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1741
  %suspend6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 2, !dbg !1742
  %9 = load ptr, ptr %suspend6, align 8, !dbg !1742
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1743
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1741
  br label %cond.end8, !dbg !1737

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1737

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1737
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1744
  ret i32 %cond9, !dbg !1745
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_freeze_noirq(ptr noundef %dev) #0 align 16 !dbg !1746 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1748, metadata !DIExpression()), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1749, metadata !DIExpression()), !dbg !1752
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1753
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1754
  %1 = load ptr, ptr %driver, align 8, !dbg !1754
  %tobool = icmp ne ptr %1, null, !dbg !1753
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1753

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1755
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1756
  %3 = load ptr, ptr %driver1, align 8, !dbg !1756
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1757
  %4 = load ptr, ptr %pm2, align 8, !dbg !1757
  br label %cond.end, !dbg !1753

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1753

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1753
  store ptr %cond, ptr %pm, align 8, !dbg !1752
  %5 = load ptr, ptr %pm, align 8, !dbg !1758
  %tobool3 = icmp ne ptr %5, null, !dbg !1758
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1759

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1760
  %freeze_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 16, !dbg !1761
  %7 = load ptr, ptr %freeze_noirq, align 8, !dbg !1761
  %tobool4 = icmp ne ptr %7, null, !dbg !1760
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1758

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1762
  %freeze_noirq6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 16, !dbg !1763
  %9 = load ptr, ptr %freeze_noirq6, align 8, !dbg !1763
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1764
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1762
  br label %cond.end8, !dbg !1758

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1758

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1758
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1765
  ret i32 %cond9, !dbg !1766
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_freeze_late(ptr noundef %dev) #0 align 16 !dbg !1767 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1770, metadata !DIExpression()), !dbg !1773
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1774
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1775
  %1 = load ptr, ptr %driver, align 8, !dbg !1775
  %tobool = icmp ne ptr %1, null, !dbg !1774
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1774

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1776
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1777
  %3 = load ptr, ptr %driver1, align 8, !dbg !1777
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1778
  %4 = load ptr, ptr %pm2, align 8, !dbg !1778
  br label %cond.end, !dbg !1774

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1774

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1774
  store ptr %cond, ptr %pm, align 8, !dbg !1773
  %5 = load ptr, ptr %pm, align 8, !dbg !1779
  %tobool3 = icmp ne ptr %5, null, !dbg !1779
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1780

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1781
  %freeze_late = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 10, !dbg !1782
  %7 = load ptr, ptr %freeze_late, align 8, !dbg !1782
  %tobool4 = icmp ne ptr %7, null, !dbg !1781
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1779

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1783
  %freeze_late6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 10, !dbg !1784
  %9 = load ptr, ptr %freeze_late6, align 8, !dbg !1784
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1785
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1783
  br label %cond.end8, !dbg !1779

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1779

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1779
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1786
  ret i32 %cond9, !dbg !1787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_freeze(ptr noundef %dev) #0 align 16 !dbg !1788 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1790, metadata !DIExpression()), !dbg !1792
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1793
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1791, metadata !DIExpression()), !dbg !1794
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1795
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1796
  %1 = load ptr, ptr %driver, align 8, !dbg !1796
  %tobool = icmp ne ptr %1, null, !dbg !1795
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1795

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1797
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1798
  %3 = load ptr, ptr %driver1, align 8, !dbg !1798
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1799
  %4 = load ptr, ptr %pm2, align 8, !dbg !1799
  br label %cond.end, !dbg !1795

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1795

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1795
  store ptr %cond, ptr %pm, align 8, !dbg !1794
  %5 = load ptr, ptr %pm, align 8, !dbg !1800
  %tobool3 = icmp ne ptr %5, null, !dbg !1800
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1801

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1802
  %freeze = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 4, !dbg !1803
  %7 = load ptr, ptr %freeze, align 8, !dbg !1803
  %tobool4 = icmp ne ptr %7, null, !dbg !1802
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1800

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1804
  %freeze6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 4, !dbg !1805
  %9 = load ptr, ptr %freeze6, align 8, !dbg !1805
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1806
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1804
  br label %cond.end8, !dbg !1800

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1800

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1807
  ret i32 %cond9, !dbg !1808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_poweroff_noirq(ptr noundef %dev) #0 align 16 !dbg !1809 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1811, metadata !DIExpression()), !dbg !1813
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1814
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1812, metadata !DIExpression()), !dbg !1815
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1816
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1817
  %1 = load ptr, ptr %driver, align 8, !dbg !1817
  %tobool = icmp ne ptr %1, null, !dbg !1816
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1816

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1818
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1819
  %3 = load ptr, ptr %driver1, align 8, !dbg !1819
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1820
  %4 = load ptr, ptr %pm2, align 8, !dbg !1820
  br label %cond.end, !dbg !1816

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1816

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1816
  store ptr %cond, ptr %pm, align 8, !dbg !1815
  %5 = load ptr, ptr %pm, align 8, !dbg !1821
  %tobool3 = icmp ne ptr %5, null, !dbg !1821
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1822

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1823
  %poweroff_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 18, !dbg !1824
  %7 = load ptr, ptr %poweroff_noirq, align 8, !dbg !1824
  %tobool4 = icmp ne ptr %7, null, !dbg !1823
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1821

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1825
  %poweroff_noirq6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 18, !dbg !1826
  %9 = load ptr, ptr %poweroff_noirq6, align 8, !dbg !1826
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1827
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1825
  br label %cond.end8, !dbg !1821

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1821

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1821
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1828
  ret i32 %cond9, !dbg !1829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_poweroff_late(ptr noundef %dev) #0 align 16 !dbg !1830 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1832, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1833, metadata !DIExpression()), !dbg !1836
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1837
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1838
  %1 = load ptr, ptr %driver, align 8, !dbg !1838
  %tobool = icmp ne ptr %1, null, !dbg !1837
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1837

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1839
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1840
  %3 = load ptr, ptr %driver1, align 8, !dbg !1840
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1841
  %4 = load ptr, ptr %pm2, align 8, !dbg !1841
  br label %cond.end, !dbg !1837

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1837

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1837
  store ptr %cond, ptr %pm, align 8, !dbg !1836
  %5 = load ptr, ptr %pm, align 8, !dbg !1842
  %tobool3 = icmp ne ptr %5, null, !dbg !1842
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1843

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1844
  %poweroff_late = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 12, !dbg !1845
  %7 = load ptr, ptr %poweroff_late, align 8, !dbg !1845
  %tobool4 = icmp ne ptr %7, null, !dbg !1844
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1842

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1846
  %poweroff_late6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 12, !dbg !1847
  %9 = load ptr, ptr %poweroff_late6, align 8, !dbg !1847
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1848
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1846
  br label %cond.end8, !dbg !1842

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1842

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1842
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1849
  ret i32 %cond9, !dbg !1850
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_poweroff(ptr noundef %dev) #0 align 16 !dbg !1851 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1856
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1854, metadata !DIExpression()), !dbg !1857
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1858
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1859
  %1 = load ptr, ptr %driver, align 8, !dbg !1859
  %tobool = icmp ne ptr %1, null, !dbg !1858
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1858

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1860
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1861
  %3 = load ptr, ptr %driver1, align 8, !dbg !1861
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1862
  %4 = load ptr, ptr %pm2, align 8, !dbg !1862
  br label %cond.end, !dbg !1858

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1858
  store ptr %cond, ptr %pm, align 8, !dbg !1857
  %5 = load ptr, ptr %pm, align 8, !dbg !1863
  %tobool3 = icmp ne ptr %5, null, !dbg !1863
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1864

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1865
  %poweroff = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 6, !dbg !1866
  %7 = load ptr, ptr %poweroff, align 8, !dbg !1866
  %tobool4 = icmp ne ptr %7, null, !dbg !1865
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1863

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1867
  %poweroff6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 6, !dbg !1868
  %9 = load ptr, ptr %poweroff6, align 8, !dbg !1868
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1869
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1867
  br label %cond.end8, !dbg !1863

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1863

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1863
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1870
  ret i32 %cond9, !dbg !1871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_thaw_noirq(ptr noundef %dev) #0 align 16 !dbg !1872 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1874, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1875, metadata !DIExpression()), !dbg !1878
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1879
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1880
  %1 = load ptr, ptr %driver, align 8, !dbg !1880
  %tobool = icmp ne ptr %1, null, !dbg !1879
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1879

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1881
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1882
  %3 = load ptr, ptr %driver1, align 8, !dbg !1882
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1883
  %4 = load ptr, ptr %pm2, align 8, !dbg !1883
  br label %cond.end, !dbg !1879

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1879

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1879
  store ptr %cond, ptr %pm, align 8, !dbg !1878
  %5 = load ptr, ptr %pm, align 8, !dbg !1884
  %tobool3 = icmp ne ptr %5, null, !dbg !1884
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1885

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1886
  %thaw_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 17, !dbg !1887
  %7 = load ptr, ptr %thaw_noirq, align 8, !dbg !1887
  %tobool4 = icmp ne ptr %7, null, !dbg !1886
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1884

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1888
  %thaw_noirq6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 17, !dbg !1889
  %9 = load ptr, ptr %thaw_noirq6, align 8, !dbg !1889
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1890
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1888
  br label %cond.end8, !dbg !1884

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1884

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1884
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1891
  ret i32 %cond9, !dbg !1892
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_thaw_early(ptr noundef %dev) #0 align 16 !dbg !1893 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1896, metadata !DIExpression()), !dbg !1899
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1900
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1901
  %1 = load ptr, ptr %driver, align 8, !dbg !1901
  %tobool = icmp ne ptr %1, null, !dbg !1900
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1900

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1902
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1903
  %3 = load ptr, ptr %driver1, align 8, !dbg !1903
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1904
  %4 = load ptr, ptr %pm2, align 8, !dbg !1904
  br label %cond.end, !dbg !1900

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1900

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1900
  store ptr %cond, ptr %pm, align 8, !dbg !1899
  %5 = load ptr, ptr %pm, align 8, !dbg !1905
  %tobool3 = icmp ne ptr %5, null, !dbg !1905
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1906

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1907
  %thaw_early = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 11, !dbg !1908
  %7 = load ptr, ptr %thaw_early, align 8, !dbg !1908
  %tobool4 = icmp ne ptr %7, null, !dbg !1907
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1905

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1909
  %thaw_early6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 11, !dbg !1910
  %9 = load ptr, ptr %thaw_early6, align 8, !dbg !1910
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1911
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1909
  br label %cond.end8, !dbg !1905

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1905

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1912
  ret i32 %cond9, !dbg !1913
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_thaw(ptr noundef %dev) #0 align 16 !dbg !1914 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1917, metadata !DIExpression()), !dbg !1920
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1921
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1922
  %1 = load ptr, ptr %driver, align 8, !dbg !1922
  %tobool = icmp ne ptr %1, null, !dbg !1921
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1921

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1923
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1924
  %3 = load ptr, ptr %driver1, align 8, !dbg !1924
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1925
  %4 = load ptr, ptr %pm2, align 8, !dbg !1925
  br label %cond.end, !dbg !1921

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1921

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1921
  store ptr %cond, ptr %pm, align 8, !dbg !1920
  %5 = load ptr, ptr %pm, align 8, !dbg !1926
  %tobool3 = icmp ne ptr %5, null, !dbg !1926
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1927

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1928
  %thaw = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 5, !dbg !1929
  %7 = load ptr, ptr %thaw, align 8, !dbg !1929
  %tobool4 = icmp ne ptr %7, null, !dbg !1928
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1926

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1930
  %thaw6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 5, !dbg !1931
  %9 = load ptr, ptr %thaw6, align 8, !dbg !1931
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1932
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1930
  br label %cond.end8, !dbg !1926

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1926

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1926
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1933
  ret i32 %cond9, !dbg !1934
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_resume_noirq(ptr noundef %dev) #0 align 16 !dbg !1935 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1937, metadata !DIExpression()), !dbg !1939
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1940
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1938, metadata !DIExpression()), !dbg !1941
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1942
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1943
  %1 = load ptr, ptr %driver, align 8, !dbg !1943
  %tobool = icmp ne ptr %1, null, !dbg !1942
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1942

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1944
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1945
  %3 = load ptr, ptr %driver1, align 8, !dbg !1945
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1946
  %4 = load ptr, ptr %pm2, align 8, !dbg !1946
  br label %cond.end, !dbg !1942

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1942

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1942
  store ptr %cond, ptr %pm, align 8, !dbg !1941
  %5 = load ptr, ptr %pm, align 8, !dbg !1947
  %tobool3 = icmp ne ptr %5, null, !dbg !1947
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1948

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1949
  %resume_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 15, !dbg !1950
  %7 = load ptr, ptr %resume_noirq, align 8, !dbg !1950
  %tobool4 = icmp ne ptr %7, null, !dbg !1949
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1947

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1951
  %resume_noirq6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 15, !dbg !1952
  %9 = load ptr, ptr %resume_noirq6, align 8, !dbg !1952
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1953
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1951
  br label %cond.end8, !dbg !1947

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1947

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1947
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1954
  ret i32 %cond9, !dbg !1955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_resume_early(ptr noundef %dev) #0 align 16 !dbg !1956 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1958, metadata !DIExpression()), !dbg !1960
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1959, metadata !DIExpression()), !dbg !1962
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1963
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1964
  %1 = load ptr, ptr %driver, align 8, !dbg !1964
  %tobool = icmp ne ptr %1, null, !dbg !1963
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1963

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1965
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1966
  %3 = load ptr, ptr %driver1, align 8, !dbg !1966
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1967
  %4 = load ptr, ptr %pm2, align 8, !dbg !1967
  br label %cond.end, !dbg !1963

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1963
  store ptr %cond, ptr %pm, align 8, !dbg !1962
  %5 = load ptr, ptr %pm, align 8, !dbg !1968
  %tobool3 = icmp ne ptr %5, null, !dbg !1968
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1969

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1970
  %resume_early = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 9, !dbg !1971
  %7 = load ptr, ptr %resume_early, align 8, !dbg !1971
  %tobool4 = icmp ne ptr %7, null, !dbg !1970
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1968

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1972
  %resume_early6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 9, !dbg !1973
  %9 = load ptr, ptr %resume_early6, align 8, !dbg !1973
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1974
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1972
  br label %cond.end8, !dbg !1968

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1968

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1968
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1975
  ret i32 %cond9, !dbg !1976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_resume(ptr noundef %dev) #0 align 16 !dbg !1977 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1979, metadata !DIExpression()), !dbg !1981
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !1982
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !1980, metadata !DIExpression()), !dbg !1983
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1984
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !1985
  %1 = load ptr, ptr %driver, align 8, !dbg !1985
  %tobool = icmp ne ptr %1, null, !dbg !1984
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1984

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1986
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !1987
  %3 = load ptr, ptr %driver1, align 8, !dbg !1987
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !1988
  %4 = load ptr, ptr %pm2, align 8, !dbg !1988
  br label %cond.end, !dbg !1984

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1984
  store ptr %cond, ptr %pm, align 8, !dbg !1983
  %5 = load ptr, ptr %pm, align 8, !dbg !1989
  %tobool3 = icmp ne ptr %5, null, !dbg !1989
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !1990

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !1991
  %resume = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 3, !dbg !1992
  %7 = load ptr, ptr %resume, align 8, !dbg !1992
  %tobool4 = icmp ne ptr %7, null, !dbg !1991
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1989

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !1993
  %resume6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 3, !dbg !1994
  %9 = load ptr, ptr %resume6, align 8, !dbg !1994
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1995
  %call = call i32 %9(ptr noundef %10) #4, !dbg !1993
  br label %cond.end8, !dbg !1989

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !1989

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !1989
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !1996
  ret i32 %cond9, !dbg !1997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_restore_noirq(ptr noundef %dev) #0 align 16 !dbg !1998 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !2001, metadata !DIExpression()), !dbg !2004
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2005
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2006
  %1 = load ptr, ptr %driver, align 8, !dbg !2006
  %tobool = icmp ne ptr %1, null, !dbg !2005
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2005

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2007
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !2008
  %3 = load ptr, ptr %driver1, align 8, !dbg !2008
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !2009
  %4 = load ptr, ptr %pm2, align 8, !dbg !2009
  br label %cond.end, !dbg !2005

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2005

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !2005
  store ptr %cond, ptr %pm, align 8, !dbg !2004
  %5 = load ptr, ptr %pm, align 8, !dbg !2010
  %tobool3 = icmp ne ptr %5, null, !dbg !2010
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !2011

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !2012
  %restore_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 19, !dbg !2013
  %7 = load ptr, ptr %restore_noirq, align 8, !dbg !2013
  %tobool4 = icmp ne ptr %7, null, !dbg !2012
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !2010

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !2014
  %restore_noirq6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 19, !dbg !2015
  %9 = load ptr, ptr %restore_noirq6, align 8, !dbg !2015
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2016
  %call = call i32 %9(ptr noundef %10) #4, !dbg !2014
  br label %cond.end8, !dbg !2010

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !2010

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !2010
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !2017
  ret i32 %cond9, !dbg !2018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_restore_early(ptr noundef %dev) #0 align 16 !dbg !2019 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !2022, metadata !DIExpression()), !dbg !2025
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2026
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2027
  %1 = load ptr, ptr %driver, align 8, !dbg !2027
  %tobool = icmp ne ptr %1, null, !dbg !2026
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2026

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2028
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !2029
  %3 = load ptr, ptr %driver1, align 8, !dbg !2029
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !2030
  %4 = load ptr, ptr %pm2, align 8, !dbg !2030
  br label %cond.end, !dbg !2026

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2026

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !2026
  store ptr %cond, ptr %pm, align 8, !dbg !2025
  %5 = load ptr, ptr %pm, align 8, !dbg !2031
  %tobool3 = icmp ne ptr %5, null, !dbg !2031
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !2032

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !2033
  %restore_early = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 13, !dbg !2034
  %7 = load ptr, ptr %restore_early, align 8, !dbg !2034
  %tobool4 = icmp ne ptr %7, null, !dbg !2033
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !2031

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !2035
  %restore_early6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 13, !dbg !2036
  %9 = load ptr, ptr %restore_early6, align 8, !dbg !2036
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2037
  %call = call i32 %9(ptr noundef %10) #4, !dbg !2035
  br label %cond.end8, !dbg !2031

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !2031

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !2031
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !2038
  ret i32 %cond9, !dbg !2039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_generic_restore(ptr noundef %dev) #0 align 16 !dbg !2040 {
entry:
  %dev.addr = alloca ptr, align 8
  %pm = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm) #3, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %pm, metadata !2043, metadata !DIExpression()), !dbg !2046
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2047
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2048
  %1 = load ptr, ptr %driver, align 8, !dbg !2048
  %tobool = icmp ne ptr %1, null, !dbg !2047
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2047

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2049
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !2050
  %3 = load ptr, ptr %driver1, align 8, !dbg !2050
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !2051
  %4 = load ptr, ptr %pm2, align 8, !dbg !2051
  br label %cond.end, !dbg !2047

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2047

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !2047
  store ptr %cond, ptr %pm, align 8, !dbg !2046
  %5 = load ptr, ptr %pm, align 8, !dbg !2052
  %tobool3 = icmp ne ptr %5, null, !dbg !2052
  br i1 %tobool3, label %land.lhs.true, label %cond.false7, !dbg !2053

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %pm, align 8, !dbg !2054
  %restore = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 7, !dbg !2055
  %7 = load ptr, ptr %restore, align 8, !dbg !2055
  %tobool4 = icmp ne ptr %7, null, !dbg !2054
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !2052

cond.true5:                                       ; preds = %land.lhs.true
  %8 = load ptr, ptr %pm, align 8, !dbg !2056
  %restore6 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 7, !dbg !2057
  %9 = load ptr, ptr %restore6, align 8, !dbg !2057
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2058
  %call = call i32 %9(ptr noundef %10) #4, !dbg !2056
  br label %cond.end8, !dbg !2052

cond.false7:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end8, !dbg !2052

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false7 ], !dbg !2052
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm) #3, !dbg !2059
  ret i32 %cond9, !dbg !2060
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pm_generic_complete(ptr noundef %dev) #0 align 16 !dbg !2061 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #3, !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2064, metadata !DIExpression()), !dbg !2067
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2068
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2069
  %1 = load ptr, ptr %driver, align 8, !dbg !2069
  store ptr %1, ptr %drv, align 8, !dbg !2067
  %2 = load ptr, ptr %drv, align 8, !dbg !2070
  %tobool = icmp ne ptr %2, null, !dbg !2070
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2072

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %drv, align 8, !dbg !2073
  %pm = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16, !dbg !2074
  %4 = load ptr, ptr %pm, align 8, !dbg !2074
  %tobool1 = icmp ne ptr %4, null, !dbg !2073
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !2075

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %drv, align 8, !dbg !2076
  %pm3 = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 16, !dbg !2077
  %6 = load ptr, ptr %pm3, align 8, !dbg !2077
  %complete = getelementptr inbounds %struct.dev_pm_ops, ptr %6, i32 0, i32 1, !dbg !2078
  %7 = load ptr, ptr %complete, align 8, !dbg !2078
  %tobool4 = icmp ne ptr %7, null, !dbg !2076
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2079

if.then:                                          ; preds = %land.lhs.true2
  %8 = load ptr, ptr %drv, align 8, !dbg !2080
  %pm5 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 16, !dbg !2081
  %9 = load ptr, ptr %pm5, align 8, !dbg !2081
  %complete6 = getelementptr inbounds %struct.dev_pm_ops, ptr %9, i32 0, i32 1, !dbg !2082
  %10 = load ptr, ptr %complete6, align 8, !dbg !2082
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2083
  call void %10(ptr noundef %11) #4, !dbg !2080
  br label %if.end, !dbg !2080

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #3, !dbg !2084
  ret void, !dbg !2084
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_runtime_suspend204", scope: !2, file: !3, line: 29, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/power/.generic_ops.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/power/generic_ops\22 -D KBUILD_BASENAME=\22generic_ops\22 -D KBUILD_MODNAME=\22generic_ops\22 -D __KBUILD_MODNAME=kmod_generic_ops -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/power/generic_ops.ll drivers/base/power/generic_ops.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !80, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/generic_ops.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98544969eeb5b0ad6f1e3556626da8a9")
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
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !{!0, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_runtime_resume205", scope: !2, file: !3, line: 48, type: !79, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_suspend_noirq206", scope: !2, file: !3, line: 79, type: !79, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_suspend_late207", scope: !2, file: !3, line: 91, type: !79, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_suspend208", scope: !2, file: !3, line: 103, type: !79, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_freeze_noirq209", scope: !2, file: !3, line: 115, type: !79, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_freeze_late210", scope: !2, file: !3, line: 127, type: !79, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_freeze211", scope: !2, file: !3, line: 139, type: !79, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_poweroff_noirq212", scope: !2, file: !3, line: 151, type: !79, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_poweroff_late213", scope: !2, file: !3, line: 163, type: !79, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_poweroff214", scope: !2, file: !3, line: 175, type: !79, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_thaw_noirq215", scope: !2, file: !3, line: 187, type: !79, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_thaw_early216", scope: !2, file: !3, line: 199, type: !79, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_thaw217", scope: !2, file: !3, line: 211, type: !79, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_resume_noirq218", scope: !2, file: !3, line: 223, type: !79, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_resume_early219", scope: !2, file: !3, line: 235, type: !79, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_resume220", scope: !2, file: !3, line: 247, type: !79, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_restore_noirq221", scope: !2, file: !3, line: 259, type: !79, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_restore_early222", scope: !2, file: !3, line: 271, type: !79, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_generic_restore223", scope: !2, file: !3, line: 283, type: !79, isLocal: true, isDefinition: true)
!119 = !{i32 7, !"Dwarf Version", i32 5}
!120 = !{i32 2, !"Debug Info Version", i32 3}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 8, !"cf-protection-branch", i32 1}
!123 = !{i32 4, !"function_return_thunk_extern", i32 1}
!124 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!125 = !{i32 1, !"Code Model", i32 2}
!126 = !{i32 1, !"override-stack-alignment", i32 8}
!127 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!128 = distinct !DISubprogram(name: "pm_generic_runtime_suspend", scope: !3, file: !3, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1601)
!129 = !DISubroutineType(types: !130)
!130 = !{!46, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !133)
!133 = !{!134, !801, !802, !805, !806, !857, !1304, !1305, !1306, !1307, !1308, !1315, !1485, !1498, !1508, !1512, !1514, !1515, !1516, !1520, !1527, !1528, !1531, !1534, !1538, !1541, !1542, !1545, !1546, !1547, !1548, !1578, !1579, !1580, !1583, !1586, !1595, !1596, !1597, !1598, !1599, !1600}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !132, file: !26, line: 706, baseType: !135, size: 512)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !136, line: 64, size: 512, elements: !137)
!136 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!137 = !{!138, !142, !149, !151, !240, !672, !786, !796, !797, !798, !799, !800}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !136, line: 65, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !135, file: !136, line: 66, baseType: !143, size: 128, offset: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !144, line: 190, size: 128, elements: !145)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !144, line: 191, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !144, line: 191, baseType: !147, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !136, line: 67, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !135, file: !136, line: 68, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !136, line: 168, size: 768, elements: !154)
!154 = !{!155, !156, !199, !200}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !153, file: !136, line: 169, baseType: !143, size: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !153, file: !136, line: 170, baseType: !157, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !158, line: 29, baseType: !159)
!158 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !158, line: 17, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 18, baseType: !162, size: 32)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 18, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !162, file: !158, line: 19, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !166, line: 14, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !165, file: !166, line: 15, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !170, line: 44, baseType: !171)
!170 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !170, line: 14, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 15, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 15, size: 32, elements: !175)
!175 = !{!176, !181, !191}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !174, file: !170, line: 16, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 174, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 172, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !178, file: !144, line: 173, baseType: !46, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !170, line: 24, baseType: !182, size: 16)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !170, line: 24, size: 16, elements: !183)
!183 = !{!184, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !182, file: !170, line: 25, baseType: !185, size: 8)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !186, line: 17, baseType: !187)
!186 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !188, line: 21, baseType: !189)
!188 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!189 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !182, file: !170, line: 26, baseType: !185, size: 8, offset: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !170, line: 28, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !170, line: 28, size: 32, elements: !193)
!193 = !{!194, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !192, file: !170, line: 29, baseType: !195, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !186, line: 19, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !188, line: 24, baseType: !197)
!197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !192, file: !170, line: 30, baseType: !195, size: 16, offset: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !153, file: !136, line: 171, baseType: !135, size: 512, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !153, file: !136, line: 172, baseType: !201, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !136, line: 133, size: 192, elements: !204)
!204 = !{!205, !212, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !203, file: !136, line: 134, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!46, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !136, line: 135, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!139, !210}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !203, file: !136, line: 136, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!46, !210, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !136, line: 125, size: 20736, elements: !224)
!224 = !{!225, !230, !234, !235, !239}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !223, file: !136, line: 126, baseType: !226, size: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 192, elements: !228)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!228 = !{!229}
!229 = !DISubrange(count: 3)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !223, file: !136, line: 127, baseType: !231, size: 4096, offset: 192)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 4096, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !223, file: !136, line: 128, baseType: !46, size: 32, offset: 4288)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !223, file: !136, line: 129, baseType: !236, size: 16384, offset: 4320)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 16384, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 2048)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !223, file: !136, line: 130, baseType: !46, size: 32, offset: 20704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !135, file: !136, line: 69, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !136, line: 116, size: 384, elements: !244)
!244 = !{!245, !249, !278, !620, !650, !654}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !243, file: !136, line: 117, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !150}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !243, file: !136, line: 118, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !253, line: 254, size: 128, elements: !254)
!253 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!254 = !{!255, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !252, file: !253, line: 255, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !150, !264, !227}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !144, line: 66, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !261, line: 73, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !263)
!263 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !253, line: 30, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !253, line: 31, baseType: !139, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !265, file: !253, line: 32, baseType: !269, size: 16, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !144, line: 24, baseType: !197)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !252, file: !253, line: 256, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!259, !150, !264, !139, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !277)
!277 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !243, file: !136, line: 119, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !253, line: 84, size: 320, elements: !283)
!283 = !{!284, !285, !289, !616, !618}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !253, line: 85, baseType: !139, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !282, file: !253, line: 86, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!269, !150, !264, !46}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !282, file: !253, line: 88, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!269, !150, !293, !46}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !253, line: 175, size: 512, elements: !295)
!295 = !{!296, !297, !298, !299, !306, !316, !317}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !294, file: !253, line: 176, baseType: !265, size: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !294, file: !253, line: 177, baseType: !274, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !294, file: !253, line: 178, baseType: !79, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !294, file: !253, line: 179, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !305, line: 32, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !294, file: !253, line: 180, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!259, !310, !150, !293, !227, !313, !274}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !312, line: 537, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !144, line: 52, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !261, line: 88, baseType: !315)
!315 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !294, file: !253, line: 182, baseType: !307, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !294, file: !253, line: 184, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!46, !310, !150, !293, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !305, line: 625, size: 1344, elements: !323)
!323 = !{!324, !341, !564, !570, !577, !578, !583, !586, !598, !599, !602, !606, !607, !608, !609, !610, !614}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !305, line: 628, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !305, line: 628, size: 128, elements: !326)
!326 = !{!327, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !305, line: 629, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !305, line: 629, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !328, file: !305, line: 631, baseType: !277, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !328, file: !305, line: 632, baseType: !277, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !325, file: !305, line: 635, baseType: !333, size: 128, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !144, line: 232, size: 128, align: 64, elements: !334)
!334 = !{!335, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !144, line: 233, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !333, file: !144, line: 234, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !336}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !322, file: !305, line: 639, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !305, line: 733, size: 10240, elements: !344)
!344 = !{!345, !560}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !305, line: 734, baseType: !346, size: 10240)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !305, line: 734, size: 10240, elements: !347)
!347 = !{!348, !352, !366, !370, !371, !372, !373, !374, !375, !383, !384, !385, !394, !395, !404, !405, !406, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !453, !467, !470, !525, !526, !527, !530, !534, !535, !538, !539, !540, !547, !548}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !305, line: 739, baseType: !349, size: 512, align: 512)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !305, line: 739, size: 512, align: 512, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !349, file: !305, line: 747, baseType: !177, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !346, file: !305, line: 750, baseType: !353, size: 128, offset: 512)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !354, line: 218, size: 128, elements: !355)
!354 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!355 = !{!356, !364, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !354, line: 219, baseType: !357, size: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !354, line: 219, size: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !357, file: !354, line: 220, baseType: !157, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !357, file: !354, line: 221, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !354, line: 197, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 197, elements: !363)
!363 = !{}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !353, file: !354, line: 223, baseType: !7, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !353, file: !354, line: 224, baseType: !79, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !346, file: !305, line: 752, baseType: !367, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!277, !310, !277, !277, !277, !277}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !346, file: !305, line: 756, baseType: !277, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !346, file: !305, line: 757, baseType: !277, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !346, file: !305, line: 760, baseType: !277, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !346, file: !305, line: 761, baseType: !277, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !346, file: !305, line: 763, baseType: !277, size: 64, offset: 960)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !346, file: !305, line: 764, baseType: !376, size: 64, offset: 1024)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !312, line: 299, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 299, size: 64, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !378, file: !312, line: 299, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !382, line: 18, baseType: !277)
!382 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !346, file: !305, line: 773, baseType: !177, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !346, file: !305, line: 785, baseType: !177, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !346, file: !305, line: 795, baseType: !386, size: 64, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !305, line: 726, size: 128, elements: !388)
!388 = !{!389, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !387, file: !305, line: 727, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !186, line: 23, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !188, line: 31, baseType: !392)
!392 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !387, file: !305, line: 728, baseType: !46, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !346, file: !305, line: 801, baseType: !277, size: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !346, file: !305, line: 804, baseType: !396, size: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !397, line: 13, baseType: !398)
!397 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !144, line: 181, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 179, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !399, file: !144, line: 180, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !186, line: 22, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !188, line: 30, baseType: !315)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !346, file: !305, line: 806, baseType: !46, size: 32, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !346, file: !305, line: 808, baseType: !157, size: 32, offset: 1376)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !346, file: !305, line: 823, baseType: !407, size: 320, offset: 1408)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !408, line: 48, size: 320, elements: !409)
!408 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!409 = !{!410, !411, !412, !417, !419}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !408, line: 49, baseType: !396, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !407, file: !408, line: 55, baseType: !396, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !407, file: !408, line: 57, baseType: !413, size: 32, offset: 128)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !414, line: 15, size: 32, elements: !415)
!414 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !413, file: !414, line: 20, baseType: !177, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !407, file: !408, line: 59, baseType: !418, size: 32, offset: 160)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !166, line: 23, baseType: !165)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !407, file: !408, line: 60, baseType: !143, size: 128, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !346, file: !305, line: 825, baseType: !143, size: 128, offset: 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !346, file: !305, line: 845, baseType: !46, size: 32, offset: 1856)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !346, file: !305, line: 849, baseType: !277, size: 64, offset: 1920)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !346, file: !305, line: 850, baseType: !277, size: 64, offset: 1984)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !346, file: !305, line: 852, baseType: !277, size: 64, offset: 2048)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !346, file: !305, line: 853, baseType: !277, size: 64, offset: 2112)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !346, file: !305, line: 854, baseType: !398, size: 64, offset: 2176)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !346, file: !305, line: 855, baseType: !277, size: 64, offset: 2240)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !346, file: !305, line: 856, baseType: !277, size: 64, offset: 2304)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !346, file: !305, line: 857, baseType: !277, size: 64, offset: 2368)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !346, file: !305, line: 858, baseType: !277, size: 64, offset: 2432)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !346, file: !305, line: 865, baseType: !432, size: 32, offset: 2496)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !433, line: 69, baseType: !434)
!433 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !433, line: 64, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !434, file: !433, line: 65, baseType: !7, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !346, file: !305, line: 867, baseType: !157, size: 32, offset: 2528)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2560)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2624)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2688)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2752)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !346, file: !305, line: 870, baseType: !277, size: 64, offset: 2816)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !346, file: !305, line: 870, baseType: !277, size: 64, offset: 2880)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !346, file: !305, line: 870, baseType: !277, size: 64, offset: 2944)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3008)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3072)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3136)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3200)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !346, file: !305, line: 873, baseType: !450, size: 3328, offset: 3264)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 3328, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 52)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !346, file: !305, line: 875, baseType: !454, size: 1280, offset: 6592)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 1280, elements: !465)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !456, line: 22, size: 320, elements: !457)
!456 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !456, line: 23, baseType: !418, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !456, line: 24, baseType: !402, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !455, file: !456, line: 26, baseType: !143, size: 128, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !455, file: !456, line: 28, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !186, line: 20, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !188, line: 26, baseType: !46)
!465 = !{!466}
!466 = !DISubrange(count: 4)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !346, file: !305, line: 877, baseType: !468, size: 64, offset: 7872)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !305, line: 877, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !346, file: !305, line: 880, baseType: !471, size: 1088, offset: 7936)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !472, line: 72, baseType: !473)
!472 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 23, size: 1088, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !482, !483, !491, !492, !519, !520, !521}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !473, file: !472, line: 28, baseType: !390, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !473, file: !472, line: 38, baseType: !398, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !473, file: !472, line: 40, baseType: !277, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !473, file: !472, line: 43, baseType: !407, size: 320, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !473, file: !472, line: 44, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !472, line: 44, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !472, line: 48, baseType: !277, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !473, file: !472, line: 59, baseType: !484, size: 256, offset: 640)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !485, line: 66, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !484, file: !485, line: 67, baseType: !396, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !484, file: !485, line: 68, baseType: !418, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !484, file: !485, line: 70, baseType: !413, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !484, file: !485, line: 72, baseType: !143, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !473, file: !472, line: 60, baseType: !79, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !473, file: !472, line: 61, baseType: !493, size: 64, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !496, line: 13, size: 1216, elements: !497)
!496 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!497 = !{!498, !499, !500, !501, !502, !503, !504, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !495, file: !496, line: 14, baseType: !79, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !495, file: !496, line: 15, baseType: !277, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !495, file: !496, line: 17, baseType: !277, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !495, file: !496, line: 17, baseType: !277, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !495, file: !496, line: 18, baseType: !277, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !495, file: !496, line: 18, baseType: !277, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !495, file: !496, line: 19, baseType: !505, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !495, file: !496, line: 21, baseType: !263, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !495, file: !496, line: 23, baseType: !263, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !495, file: !496, line: 24, baseType: !263, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !495, file: !496, line: 25, baseType: !263, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !495, file: !496, line: 26, baseType: !263, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !495, file: !496, line: 27, baseType: !263, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !495, file: !496, line: 28, baseType: !263, size: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !495, file: !496, line: 29, baseType: !263, size: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !495, file: !496, line: 30, baseType: !263, size: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !495, file: !496, line: 31, baseType: !263, size: 64, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !495, file: !496, line: 32, baseType: !263, size: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !495, file: !496, line: 33, baseType: !263, size: 64, offset: 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !473, file: !472, line: 63, baseType: !177, size: 32, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !473, file: !472, line: 69, baseType: !195, size: 16, offset: 1056)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !473, file: !472, line: 70, baseType: !522, size: 16, offset: 1072)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !186, line: 18, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !188, line: 23, baseType: !524)
!524 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !305, line: 882, baseType: !277, size: 64, offset: 9024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !346, file: !305, line: 885, baseType: !157, size: 32, offset: 9088)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !346, file: !305, line: 886, baseType: !528, size: 64, offset: 9152)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !305, line: 732, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !346, file: !305, line: 901, baseType: !531, size: 64, offset: 9216)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !533, line: 18, flags: DIFlagFwdDecl)
!533 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !346, file: !305, line: 904, baseType: !310, size: 64, offset: 9280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !346, file: !305, line: 906, baseType: !536, size: 64, offset: 9344)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !305, line: 906, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !346, file: !305, line: 930, baseType: !177, size: 32, offset: 9408)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !346, file: !305, line: 933, baseType: !177, size: 32, offset: 9440)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !346, file: !305, line: 935, baseType: !541, size: 64, offset: 9472)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !542, line: 103, size: 64, elements: !543)
!542 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !541, file: !542, line: 104, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !542, line: 101, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !346, file: !305, line: 940, baseType: !396, size: 64, offset: 9536)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !346, file: !305, line: 942, baseType: !549, size: 256, offset: 9600)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !550, line: 98, size: 256, elements: !551)
!550 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!551 = !{!552, !553, !554}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !549, file: !550, line: 99, baseType: !396, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !549, file: !550, line: 100, baseType: !143, size: 128, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !549, file: !550, line: 101, baseType: !555, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !550, line: 21, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !343, file: !305, line: 986, baseType: !561, offset: 10240)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: -1)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !322, file: !305, line: 640, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !312, line: 297, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !312, line: 297, size: 64, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !566, file: !312, line: 297, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !382, line: 19, baseType: !277)
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !305, line: 646, baseType: !571, size: 64, offset: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !305, line: 646, size: 64, elements: !572)
!572 = !{!573, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !571, file: !305, line: 647, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !305, line: 542, baseType: !277)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !571, file: !305, line: 648, baseType: !575, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !322, file: !305, line: 666, baseType: !46, size: 32, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !322, file: !305, line: 667, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !305, line: 579, size: 320, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !305, line: 580, baseType: !407, size: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !322, file: !305, line: 670, baseType: !584, size: 8, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 35, baseType: !585)
!585 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !322, file: !305, line: 681, baseType: !587, size: 256, offset: 512)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !305, line: 678, size: 256, elements: !588)
!588 = !{!589, !597}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !587, file: !305, line: 679, baseType: !590, size: 192, align: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !591, line: 5, size: 192, align: 64, elements: !592)
!591 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!592 = !{!593, !594, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !590, file: !591, line: 6, baseType: !277, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !590, file: !591, line: 7, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !590, file: !591, line: 8, baseType: !595, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !587, file: !305, line: 680, baseType: !277, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !322, file: !305, line: 689, baseType: !143, size: 128, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !322, file: !305, line: 691, baseType: !600, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !305, line: 691, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !322, file: !305, line: 694, baseType: !603, size: 64, offset: 960)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !305, line: 694, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !322, file: !305, line: 697, baseType: !277, size: 64, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !322, file: !305, line: 699, baseType: !310, size: 64, offset: 1088)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !322, file: !305, line: 700, baseType: !79, size: 64, offset: 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !322, file: !305, line: 711, baseType: !396, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !322, file: !305, line: 717, baseType: !611, size: 64, offset: 1280)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !613, line: 54, flags: DIFlagFwdDecl)
!613 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !322, file: !305, line: 722, baseType: !615, offset: 1344)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !305, line: 570, elements: !363)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !282, file: !253, line: 90, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !282, file: !253, line: 91, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !243, file: !136, line: 120, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !210}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !627)
!627 = !{!628, !629, !633, !636, !642, !646}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !6, line: 40, baseType: !5, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !626, file: !6, line: 41, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!584}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !626, file: !6, line: 42, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !78)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !626, file: !6, line: 43, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!505, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !626, file: !6, line: 44, baseType: !643, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!505}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !626, file: !6, line: 45, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !79}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !243, file: !136, line: 121, baseType: !651, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!505, !210}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !243, file: !136, line: 122, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !210, !658, !665}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !533, line: 23, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 21, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !660, file: !533, line: 22, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !144, line: 37, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !7)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !533, line: 28, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 26, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !667, file: !533, line: 27, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !144, line: 38, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !7)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !135, file: !136, line: 70, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !675, line: 190, size: 1152, elements: !676)
!675 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !778, !779, !780, !781, !782, !785}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !674, file: !675, line: 191, baseType: !177, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !674, file: !675, line: 192, baseType: !177, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !674, file: !675, line: 202, baseType: !673, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !674, file: !675, line: 203, baseType: !139, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !674, file: !675, line: 205, baseType: !590, size: 192, align: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !674, file: !675, line: 207, baseType: !505, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !674, file: !675, line: 208, baseType: !7, size: 32, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 209, baseType: !685, size: 256, offset: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 209, size: 256, elements: !686)
!686 = !{!687, !699, !703}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !685, file: !675, line: 210, baseType: !688, size: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !675, line: 153, size: 256, elements: !689)
!689 = !{!690, !691, !695, !698}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !688, file: !675, line: 154, baseType: !277, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !688, file: !675, line: 156, baseType: !692, size: 64, offset: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !591, line: 12, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !692, file: !591, line: 13, baseType: !595, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !688, file: !675, line: 162, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !675, line: 162, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !688, file: !675, line: 167, baseType: !277, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !685, file: !675, line: 211, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !675, line: 170, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !700, file: !675, line: 171, baseType: !673, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !685, file: !675, line: 212, baseType: !704, size: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !675, line: 174, size: 256, elements: !705)
!705 = !{!706, !773, !776, !777}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !704, file: !675, line: 175, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !675, line: 271, size: 768, elements: !710)
!710 = !{!711, !733, !737, !741, !746, !750, !754, !758, !759, !760, !761, !769}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !709, file: !675, line: 276, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!46, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !675, line: 251, size: 1216, elements: !717)
!717 = !{!718, !719, !720, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !716, file: !675, line: 253, baseType: !673, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !716, file: !675, line: 254, baseType: !310, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !716, file: !675, line: 255, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !613, line: 66, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !716, file: !675, line: 256, baseType: !79, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !716, file: !675, line: 259, baseType: !484, size: 256, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !716, file: !675, line: 260, baseType: !484, size: 256, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !716, file: !675, line: 261, baseType: !46, size: 32, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !716, file: !675, line: 262, baseType: !143, size: 128, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !716, file: !675, line: 263, baseType: !227, size: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !716, file: !675, line: 265, baseType: !274, size: 64, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !716, file: !675, line: 266, baseType: !584, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !716, file: !675, line: 267, baseType: !584, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !716, file: !675, line: 268, baseType: !603, size: 64, offset: 1152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !709, file: !675, line: 277, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !715}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !709, file: !675, line: 290, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!46, !721, !79}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !709, file: !675, line: 292, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!79, !721, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !709, file: !675, line: 293, baseType: !747, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!79, !721, !79, !745}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !709, file: !675, line: 294, baseType: !751, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !721, !79}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !709, file: !675, line: 296, baseType: !755, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!259, !715, !227, !274, !313}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !709, file: !675, line: 306, baseType: !274, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !709, file: !675, line: 313, baseType: !584, size: 8, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !709, file: !675, line: 314, baseType: !755, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !709, file: !675, line: 317, baseType: !762, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!765, !715, !767}
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !766, line: 59, baseType: !7)
!766 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !675, line: 31, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !709, file: !675, line: 320, baseType: !770, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!46, !715, !321}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !704, file: !675, line: 176, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !675, line: 35, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !704, file: !675, line: 177, baseType: !313, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !704, file: !675, line: 178, baseType: !673, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !674, file: !675, line: 215, baseType: !79, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !674, file: !675, line: 221, baseType: !390, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !675, line: 223, baseType: !197, size: 16, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !674, file: !675, line: 224, baseType: !269, size: 16, offset: 912)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !674, file: !675, line: 225, baseType: !783, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !675, line: 36, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !674, file: !675, line: 227, baseType: !333, size: 128, align: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !135, file: !136, line: 71, baseType: !787, size: 32, offset: 448)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !788, line: 19, size: 32, elements: !789)
!788 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !787, file: !788, line: 20, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !792, line: 113, baseType: !793)
!792 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !792, line: 111, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !793, file: !792, line: 112, baseType: !177, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !135, file: !136, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !135, file: !136, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !135, file: !136, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !135, file: !136, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !135, file: !136, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !26, line: 707, baseType: !131, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !132, file: !26, line: 709, baseType: !803, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !132, file: !26, line: 711, baseType: !139, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !26, line: 712, baseType: !807, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !810)
!810 = !{!811, !812, !813, !819, !824, !828}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !809, file: !26, line: 90, baseType: !139, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !809, file: !26, line: 91, baseType: !279, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !809, file: !26, line: 92, baseType: !814, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!46, !817, !222}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !809, file: !26, line: 93, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!227, !817, !823, !658, !665}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !809, file: !26, line: 95, baseType: !825, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !131}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !809, file: !26, line: 97, baseType: !829, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !832)
!832 = !{!833, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !831, file: !38, line: 287, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !831, file: !38, line: 288, baseType: !825, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !831, file: !38, line: 289, baseType: !834, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !831, file: !38, line: 290, baseType: !834, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !831, file: !38, line: 291, baseType: !834, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !831, file: !38, line: 292, baseType: !834, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !831, file: !38, line: 293, baseType: !834, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !831, file: !38, line: 294, baseType: !834, size: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !831, file: !38, line: 295, baseType: !834, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !831, file: !38, line: 296, baseType: !834, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !831, file: !38, line: 297, baseType: !834, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !831, file: !38, line: 298, baseType: !834, size: 64, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !831, file: !38, line: 299, baseType: !834, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !831, file: !38, line: 300, baseType: !834, size: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !831, file: !38, line: 301, baseType: !834, size: 64, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !831, file: !38, line: 302, baseType: !834, size: 64, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !831, file: !38, line: 303, baseType: !834, size: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !831, file: !38, line: 304, baseType: !834, size: 64, offset: 1088)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !831, file: !38, line: 305, baseType: !834, size: 64, offset: 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !831, file: !38, line: 306, baseType: !834, size: 64, offset: 1216)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !831, file: !38, line: 307, baseType: !834, size: 64, offset: 1280)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !831, file: !38, line: 308, baseType: !834, size: 64, offset: 1344)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !831, file: !38, line: 309, baseType: !834, size: 64, offset: 1408)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !132, file: !26, line: 714, baseType: !858, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !861, line: 80, size: 1344, elements: !862)
!861 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!862 = !{!863, !864, !865, !866, !867, !868, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1303}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !860, file: !861, line: 81, baseType: !139, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !860, file: !861, line: 82, baseType: !139, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !860, file: !861, line: 83, baseType: !279, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !860, file: !861, line: 84, baseType: !279, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !860, file: !861, line: 85, baseType: !279, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !860, file: !861, line: 87, baseType: !869, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!46, !131, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !874)
!874 = !{!875, !876, !877, !1255, !1256, !1257, !1258, !1262, !1266, !1267, !1268, !1269, !1270, !1278, !1279, !1280, !1281, !1282, !1283}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !873, file: !20, line: 97, baseType: !139, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !873, file: !20, line: 98, baseType: !858, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !873, file: !20, line: 100, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !880)
!880 = !{!881, !882, !883, !887, !908, !934, !935, !936, !937, !941, !944, !945, !946, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1009, !1013, !1033, !1051, !1052, !1053, !1054, !1063, !1087, !1088, !1091, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1105, !1106, !1213, !1221, !1222, !1223, !1225, !1229, !1230, !1234, !1235, !1236, !1237, !1239, !1240, !1241, !1248, !1249, !1250, !1254}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !879, file: !13, line: 403, baseType: !12, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !879, file: !13, line: 406, baseType: !143, size: 128, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !13, line: 409, baseType: !884, size: 448, offset: 192)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 448, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 56)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !879, file: !13, line: 417, baseType: !888, size: 768, offset: 640)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !889)
!889 = !{!890, !891, !892, !893, !896}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !888, file: !13, line: 46, baseType: !135, size: 512)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !888, file: !13, line: 47, baseType: !878, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !888, file: !13, line: 48, baseType: !150, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !888, file: !13, line: 49, baseType: !894, size: 64, offset: 640)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !888, file: !13, line: 50, baseType: !897, size: 64, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !899, line: 26, size: 256, elements: !900)
!899 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !898, file: !899, line: 27, baseType: !7, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !898, file: !899, line: 28, baseType: !903, size: 192, offset: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !904, line: 43, size: 192, elements: !905)
!904 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !903, file: !904, line: 44, baseType: !418, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !903, file: !904, line: 45, baseType: !143, size: 128, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !879, file: !13, line: 418, baseType: !909, size: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !911)
!911 = !{!912, !913, !918, !922, !926, !930}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !910, file: !13, line: 54, baseType: !265, size: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !910, file: !13, line: 55, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!259, !909, !917, !227}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !910, file: !13, line: 57, baseType: !919, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!259, !909, !917, !139, !274}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !910, file: !13, line: 59, baseType: !923, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !878, !139}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !910, file: !13, line: 60, baseType: !927, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!46, !878}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !910, file: !13, line: 61, baseType: !931, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !878}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !879, file: !13, line: 419, baseType: !139, size: 64, offset: 1472)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !879, file: !13, line: 420, baseType: !139, size: 64, offset: 1536)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !879, file: !13, line: 421, baseType: !150, size: 64, offset: 1600)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !879, file: !13, line: 424, baseType: !938, size: 64, offset: 1664)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !879, file: !13, line: 425, baseType: !942, size: 64, offset: 1728)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !879, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !879, file: !13, line: 435, baseType: !484, size: 256, offset: 1856)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !879, file: !13, line: 437, baseType: !947, size: 64, offset: 2112)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !949, line: 69, size: 320, elements: !950)
!949 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!950 = !{!951, !952, !953, !970, !972, !976, !977}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !948, file: !949, line: 70, baseType: !139, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !948, file: !949, line: 71, baseType: !878, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !948, file: !949, line: 72, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !949, line: 47, size: 256, elements: !957)
!957 = !{!958, !959, !965, !969}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !949, line: 49, baseType: !7, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !956, file: !949, line: 51, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!46, !139, !963}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !956, file: !949, line: 53, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!46, !227, !963}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !956, file: !949, line: 55, baseType: !647, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !948, file: !949, line: 73, baseType: !971, size: 16, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !948, file: !949, line: 74, baseType: !973, size: 8, offset: 208)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !186, line: 16, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !188, line: 20, baseType: !975)
!975 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !949, line: 75, baseType: !185, size: 8, offset: 216)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !949, line: 76, baseType: !978, size: 64, offset: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !949, line: 76, size: 64, elements: !979)
!979 = !{!980, !981, !988}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !978, file: !949, line: 77, baseType: !79, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !978, file: !949, line: 78, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !949, line: 86, size: 128, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !984, file: !949, line: 87, baseType: !7, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !984, file: !949, line: 88, baseType: !227, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !978, file: !949, line: 79, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !949, line: 92, size: 256, elements: !992)
!992 = !{!993, !994, !995, !997, !998}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !991, file: !949, line: 94, baseType: !7, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !991, file: !949, line: 95, baseType: !7, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !991, file: !949, line: 96, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !991, file: !949, line: 97, baseType: !954, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !991, file: !949, line: 98, baseType: !79, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !879, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !879, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !879, file: !13, line: 442, baseType: !938, size: 64, offset: 2240)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !879, file: !13, line: 443, baseType: !942, size: 64, offset: 2304)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !879, file: !13, line: 444, baseType: !584, size: 8, offset: 2368)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !879, file: !13, line: 451, baseType: !584, size: 8, offset: 2376)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !879, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !879, file: !13, line: 455, baseType: !1007, size: 64, offset: 2432)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !879, file: !13, line: 458, baseType: !1010, size: 64, offset: 2496)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!46}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !879, file: !13, line: 460, baseType: !1014, size: 4032, align: 512, offset: 2560)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 4032, elements: !1031)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1015, file: !13, line: 363, baseType: !79, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1015, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1015, file: !13, line: 367, baseType: !1020, size: 448, offset: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1020, file: !13, line: 320, baseType: !878, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1020, file: !13, line: 321, baseType: !1024, size: 384, offset: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1025, line: 40, size: 384, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1024, file: !1025, line: 41, baseType: !1028, size: 384, align: 64)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 384, align: 64, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 2)
!1031 = !{!1032}
!1032 = !DISubrange(count: 7)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !879, file: !13, line: 463, baseType: !1034, size: 192, offset: 6592)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1035, line: 8, size: 192, elements: !1036)
!1035 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1036 = !{!1037, !1038, !1040}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1034, file: !1035, line: 10, baseType: !7, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1034, file: !1035, line: 11, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1034, file: !1035, line: 12, baseType: !1041, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1043, line: 59, size: 48, elements: !1044)
!1043 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1042, file: !1043, line: 60, baseType: !522, size: 16)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1042, file: !1043, line: 61, baseType: !522, size: 16, offset: 16)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1042, file: !1043, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1042, file: !1043, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1042, file: !1043, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1042, file: !1043, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !879, file: !13, line: 465, baseType: !277, size: 64, offset: 6784)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !879, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !879, file: !13, line: 470, baseType: !143, size: 128, offset: 6912)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !879, file: !13, line: 471, baseType: !1055, size: 64, offset: 7040)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1057, line: 33, size: 96, elements: !1058)
!1057 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1058 = !{!1059, !1060, !1061, !1062}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1056, file: !1057, line: 37, baseType: !46, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1056, file: !1057, line: 43, baseType: !46, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1056, file: !1057, line: 45, baseType: !197, size: 16, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !1057, line: 47, baseType: !197, size: 16, offset: 80)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !879, file: !13, line: 476, baseType: !1064, size: 64, offset: 7104)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1066)
!1066 = !{!1067, !1084, !1085, !1086}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1065, file: !13, line: 379, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1070, line: 204, baseType: !1071)
!1070 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1070, line: 197, size: 192, elements: !1072)
!1072 = !{!1073, !1076, !1077, !1078, !1080, !1082}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1071, file: !1070, line: 198, baseType: !1074, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1070, line: 21, baseType: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !188, line: 27, baseType: !7)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1071, file: !1070, line: 199, baseType: !189, size: 8, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1071, file: !1070, line: 200, baseType: !189, size: 8, offset: 40)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1071, file: !1070, line: 201, baseType: !1079, size: 16, offset: 48)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1070, line: 17, baseType: !196)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1071, file: !1070, line: 202, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1070, line: 16, baseType: !391)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1071, file: !1070, line: 203, baseType: !1083, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1070, line: 22, baseType: !391)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1065, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1065, file: !13, line: 381, baseType: !227, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1065, file: !13, line: 382, baseType: !227, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !879, file: !13, line: 477, baseType: !1065, size: 256, offset: 7168)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !879, file: !13, line: 480, baseType: !1089, size: 64, offset: 7424)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !879, file: !13, line: 483, baseType: !1092, size: 64, offset: 7488)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !879, file: !13, line: 488, baseType: !227, size: 64, offset: 7552)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !879, file: !13, line: 492, baseType: !79, size: 64, offset: 7616)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !879, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !879, file: !13, line: 495, baseType: !79, size: 64, offset: 7744)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !879, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !879, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !879, file: !13, line: 500, baseType: !1101, size: 64, offset: 7872)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1103, line: 45, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !879, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !879, file: !13, line: 504, baseType: !1107, size: 64, offset: 8000)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1110, line: 96, size: 192, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1111 = !{!1112, !1113, !1174, !1177}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1109, file: !1110, line: 97, baseType: !7, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1109, file: !1110, line: 98, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1110, line: 24, size: 3072, elements: !1116)
!1116 = !{!1117, !1119, !1120, !1121, !1122, !1136, !1137, !1138, !1139, !1158, !1159, !1160, !1171, !1172, !1173}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1115, file: !1110, line: 26, baseType: !1118, size: 128)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, elements: !1029)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1115, file: !1110, line: 27, baseType: !1118, size: 128, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1115, file: !1110, line: 28, baseType: !46, size: 32, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !1110, line: 31, baseType: !157, size: 32, align: 512, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1115, file: !1110, line: 32, baseType: !1123, size: 960, offset: 576)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1124, line: 206, size: 960, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1125 = !{!1126, !1127, !1130, !1132, !1133, !1135}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1123, file: !1124, line: 207, baseType: !336, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1123, file: !1124, line: 208, baseType: !1128, size: 256, offset: 64)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 256, elements: !465)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1123, file: !1124, line: 209, baseType: !1131, size: 256, offset: 320)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !465)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1123, file: !1124, line: 213, baseType: !263, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1123, file: !1124, line: 215, baseType: !1134, size: 256, offset: 640)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !465)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !1124, line: 216, baseType: !185, size: 8, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1115, file: !1110, line: 33, baseType: !277, size: 64, offset: 1536)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1115, file: !1110, line: 34, baseType: !277, size: 64, offset: 1600)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1115, file: !1110, line: 35, baseType: !584, size: 8, offset: 1664)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1115, file: !1110, line: 36, baseType: !1140, size: 320, offset: 1728)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1141, line: 11, size: 320, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1142 = !{!1143, !1150, !1151, !1156}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1140, file: !1141, line: 16, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !144, line: 198, size: 128, elements: !1145)
!1145 = !{!1146, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1144, file: !144, line: 199, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1144, file: !144, line: 199, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1140, file: !1141, line: 17, baseType: !277, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1140, file: !1141, line: 18, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 19, baseType: !1157, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !186, line: 21, baseType: !1075)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1115, file: !1110, line: 37, baseType: !549, size: 256, offset: 2048)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1115, file: !1110, line: 38, baseType: !333, size: 128, align: 64, offset: 2304)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1115, file: !1110, line: 39, baseType: !1161, size: 64, offset: 2432)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1110, line: 49, size: 768, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1162, file: !1110, line: 50, baseType: !157, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1162, file: !1110, line: 51, baseType: !1131, size: 256, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1162, file: !1110, line: 53, baseType: !1131, size: 256, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1162, file: !1110, line: 54, baseType: !277, size: 64, offset: 576)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1162, file: !1110, line: 55, baseType: !1161, size: 64, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1162, file: !1110, line: 56, baseType: !46, size: 32, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1162, file: !1110, line: 57, baseType: !46, size: 32, offset: 736)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1115, file: !1110, line: 40, baseType: !277, size: 64, offset: 2496)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1115, file: !1110, line: 42, baseType: !46, size: 32, offset: 2560)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1115, file: !1110, line: 43, baseType: !1108, size: 64, offset: 2624)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1109, file: !1110, line: 99, baseType: !1175, offset: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1176, line: 211, elements: !363)
!1176 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1109, file: !1110, line: 100, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1110, line: 63, size: 3008, elements: !1180)
!1180 = !{!1181, !1182, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1212}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1179, file: !1110, line: 64, baseType: !1161, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1179, file: !1110, line: 65, baseType: !1183, size: 192, offset: 64)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1161, size: 192, elements: !228)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1179, file: !1110, line: 67, baseType: !46, size: 32, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1179, file: !1110, line: 68, baseType: !484, size: 256, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1179, file: !1110, line: 69, baseType: !157, size: 32, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1179, file: !1110, line: 70, baseType: !484, size: 256, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1179, file: !1110, line: 71, baseType: !277, size: 64, offset: 896)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1179, file: !1110, line: 72, baseType: !277, size: 64, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1179, file: !1110, line: 73, baseType: !277, size: 64, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1179, file: !1110, line: 74, baseType: !277, size: 64, offset: 1088)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1179, file: !1110, line: 75, baseType: !277, size: 64, offset: 1152)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1179, file: !1110, line: 76, baseType: !277, size: 64, offset: 1216)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1179, file: !1110, line: 77, baseType: !277, size: 64, offset: 1280)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1179, file: !1110, line: 78, baseType: !277, size: 64, offset: 1344)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1179, file: !1110, line: 79, baseType: !584, size: 8, offset: 1408)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1179, file: !1110, line: 80, baseType: !277, size: 64, offset: 1472)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1179, file: !1110, line: 81, baseType: !484, size: 256, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1179, file: !1110, line: 82, baseType: !898, size: 256, offset: 1792)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1179, file: !1110, line: 84, baseType: !177, size: 32, offset: 2048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1179, file: !1110, line: 87, baseType: !277, size: 64, offset: 2112)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1179, file: !1110, line: 88, baseType: !277, size: 64, offset: 2176)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1179, file: !1110, line: 89, baseType: !1204, size: 704, offset: 2240)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !550, line: 111, size: 704, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1211}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1204, file: !550, line: 112, baseType: !549, size: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1204, file: !550, line: 113, baseType: !1140, size: 320, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1204, file: !550, line: 116, baseType: !1209, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !550, line: 18, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1204, file: !550, line: 117, baseType: !46, size: 32, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1179, file: !1110, line: 90, baseType: !1108, size: 64, offset: 2944)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !879, file: !13, line: 515, baseType: !1214, size: 64, offset: 8064)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1216, line: 117, size: 128, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1215, file: !1216, line: 118, baseType: !463, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1215, file: !1216, line: 119, baseType: !463, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1215, file: !1216, line: 120, baseType: !263, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !879, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !879, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !879, file: !13, line: 520, baseType: !1224, size: 64, offset: 8192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !879, file: !13, line: 523, baseType: !1226, size: 64, offset: 8256)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !879, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !879, file: !13, line: 525, baseType: !1231, size: 64, offset: 8384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !879, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !879, file: !13, line: 533, baseType: !79, size: 64, offset: 8512)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !879, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !879, file: !13, line: 535, baseType: !1238, size: 64, offset: 8640)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !879, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !879, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !879, file: !13, line: 540, baseType: !1242, size: 64, offset: 8768)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1244, line: 32, size: 64, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1243, file: !1244, line: 33, baseType: !463, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1243, file: !1244, line: 34, baseType: !463, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !879, file: !13, line: 563, baseType: !143, size: 128, offset: 8832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !879, file: !13, line: 565, baseType: !143, size: 128, offset: 8960)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !879, file: !13, line: 568, baseType: !1251, size: 64, offset: 9088)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !879, file: !13, line: 570, baseType: !177, size: 32, offset: 9152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !873, file: !20, line: 101, baseType: !139, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !873, file: !20, line: 103, baseType: !584, size: 8, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !873, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !873, file: !20, line: 106, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !873, file: !20, line: 107, baseType: !1263, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !873, file: !20, line: 109, baseType: !834, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !873, file: !20, line: 110, baseType: !825, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !873, file: !20, line: 111, baseType: !834, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !873, file: !20, line: 112, baseType: !825, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !873, file: !20, line: 113, baseType: !1271, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!46, !131, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1275, file: !38, line: 59, baseType: !46, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !873, file: !20, line: 114, baseType: !834, size: 64, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !873, file: !20, line: 115, baseType: !279, size: 64, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !873, file: !20, line: 116, baseType: !279, size: 64, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !873, file: !20, line: 118, baseType: !829, size: 64, offset: 960)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !873, file: !20, line: 119, baseType: !825, size: 64, offset: 1024)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !873, file: !20, line: 121, baseType: !1284, size: 64, offset: 1088)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !860, file: !861, line: 88, baseType: !814, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !860, file: !861, line: 89, baseType: !834, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !860, file: !861, line: 90, baseType: !825, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !860, file: !861, line: 91, baseType: !825, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !860, file: !861, line: 92, baseType: !825, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !860, file: !861, line: 94, baseType: !834, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !860, file: !861, line: 95, baseType: !834, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !860, file: !861, line: 97, baseType: !1271, size: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !860, file: !861, line: 98, baseType: !834, size: 64, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !860, file: !861, line: 100, baseType: !834, size: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !860, file: !861, line: 102, baseType: !834, size: 64, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !860, file: !861, line: 103, baseType: !825, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !860, file: !861, line: 105, baseType: !829, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !860, file: !861, line: 107, baseType: !1300, size: 64, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1302)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !861, line: 107, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !860, file: !861, line: 109, baseType: !584, size: 8, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !132, file: !26, line: 715, baseType: !872, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !132, file: !26, line: 717, baseType: !79, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !132, file: !26, line: 719, baseType: !79, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !132, file: !26, line: 721, baseType: !484, size: 256, offset: 1024)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !132, file: !26, line: 725, baseType: !1309, size: 448, offset: 1280)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1309, file: !26, line: 518, baseType: !143, size: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1309, file: !26, line: 519, baseType: !143, size: 128, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1309, file: !26, line: 520, baseType: !143, size: 128, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1309, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !132, file: !26, line: 726, baseType: !1316, size: 2496, offset: 1728)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1362, !1363, !1364, !1365, !1366, !1367, !1438, !1439, !1440, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1478, !1482}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1316, file: !38, line: 664, baseType: !1274, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1316, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1316, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1316, file: !38, line: 667, baseType: !584, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1316, file: !38, line: 668, baseType: !584, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1316, file: !38, line: 669, baseType: !584, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1316, file: !38, line: 670, baseType: !584, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1316, file: !38, line: 671, baseType: !584, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1316, file: !38, line: 672, baseType: !584, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1316, file: !38, line: 673, baseType: !584, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1316, file: !38, line: 674, baseType: !584, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1316, file: !38, line: 675, baseType: !1157, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !38, line: 676, baseType: !157, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1316, file: !38, line: 678, baseType: !143, size: 128, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1316, file: !38, line: 679, baseType: !898, size: 256, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1316, file: !38, line: 680, baseType: !1334, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1336, line: 43, size: 1536, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1345, !1346, !1347, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1335, file: !1336, line: 44, baseType: !139, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1335, file: !1336, line: 45, baseType: !46, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1335, file: !1336, line: 46, baseType: !143, size: 128, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1335, file: !1336, line: 47, baseType: !157, size: 32, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1335, file: !1336, line: 48, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1335, file: !1336, line: 49, baseType: !1140, size: 320, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1335, file: !1336, line: 50, baseType: !277, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1335, file: !1336, line: 51, baseType: !1348, size: 64, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1349, line: 29, baseType: !402)
!1349 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1335, file: !1336, line: 52, baseType: !1348, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1335, file: !1336, line: 53, baseType: !1348, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1335, file: !1336, line: 54, baseType: !1348, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1335, file: !1336, line: 55, baseType: !1348, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1335, file: !1336, line: 56, baseType: !277, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1335, file: !1336, line: 57, baseType: !277, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1335, file: !1336, line: 58, baseType: !277, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1335, file: !1336, line: 59, baseType: !277, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1335, file: !1336, line: 60, baseType: !277, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1335, file: !1336, line: 61, baseType: !131, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1335, file: !1336, line: 62, baseType: !584, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1335, file: !1336, line: 63, baseType: !584, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1316, file: !38, line: 681, baseType: !584, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1316, file: !38, line: 682, baseType: !584, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1316, file: !38, line: 683, baseType: !584, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1316, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1316, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1316, file: !38, line: 690, baseType: !1368, size: 512, offset: 640)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1369)
!1369 = !{!1370, !1376, !1377, !1382, !1434, !1435, !1436, !1437}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1368, file: !33, line: 119, baseType: !1371, size: 256)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1372, line: 9, size: 256, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1371, file: !1372, line: 10, baseType: !590, size: 192, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1371, file: !1372, line: 11, baseType: !1348, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1368, file: !33, line: 120, baseType: !1348, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1368, file: !33, line: 121, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!32, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1368, file: !33, line: 122, baseType: !1383, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1385)
!1385 = !{!1386, !1411, !1412, !1415, !1420, !1421, !1429, !1433}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1384, file: !33, line: 160, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !33, line: 216, baseType: !418, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1388, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1388, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1388, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1388, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1388, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1388, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1388, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1388, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1388, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1388, file: !33, line: 227, baseType: !197, size: 16, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1388, file: !33, line: 228, baseType: !197, size: 16, offset: 208)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1388, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1388, file: !33, line: 235, baseType: !1348, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1388, file: !33, line: 236, baseType: !1381, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1388, file: !33, line: 237, baseType: !1348, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1388, file: !33, line: 238, baseType: !1381, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1388, file: !33, line: 239, baseType: !1408, size: 4096, align: 512, offset: 512)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 4096, align: 512, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 8)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1384, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1384, file: !33, line: 162, baseType: !1413, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !144, line: 32, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !46)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1384, file: !33, line: 163, baseType: !1416, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !433, line: 274, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !433, line: 274, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1417, file: !433, line: 274, baseType: !432, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1384, file: !33, line: 164, baseType: !1381, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1384, file: !33, line: 165, baseType: !1422, size: 128, offset: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1372, line: 14, size: 128, elements: !1423)
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1422, file: !1372, line: 15, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !591, line: 26, size: 128, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1425, file: !591, line: 27, baseType: !692, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1425, file: !591, line: 28, baseType: !595, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1384, file: !33, line: 166, baseType: !1430, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1348}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1384, file: !33, line: 167, baseType: !1348, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1368, file: !33, line: 123, baseType: !185, size: 8, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1368, file: !33, line: 124, baseType: !185, size: 8, offset: 456)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1368, file: !33, line: 125, baseType: !185, size: 8, offset: 464)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1368, file: !33, line: 126, baseType: !185, size: 8, offset: 472)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1316, file: !38, line: 691, baseType: !390, size: 64, offset: 1152)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1316, file: !38, line: 692, baseType: !549, size: 256, offset: 1216)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1316, file: !38, line: 693, baseType: !1441, size: 192, offset: 1472)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1442, line: 41, baseType: !1443)
!1442 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1442, line: 37, size: 192, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1443, file: !1442, line: 38, baseType: !157, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1443, file: !1442, line: 39, baseType: !143, size: 128, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1316, file: !38, line: 694, baseType: !1343, size: 64, offset: 1664)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1316, file: !38, line: 695, baseType: !177, size: 32, offset: 1728)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1316, file: !38, line: 696, baseType: !177, size: 32, offset: 1760)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1316, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1316, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1316, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1316, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1316, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1316, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1316, file: !38, line: 703, baseType: !584, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1316, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1316, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1316, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1316, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1316, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1316, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1316, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1316, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1316, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1316, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1316, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1316, file: !38, line: 715, baseType: !390, size: 64, offset: 2048)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1316, file: !38, line: 716, baseType: !390, size: 64, offset: 2112)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1316, file: !38, line: 717, baseType: !390, size: 64, offset: 2176)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1316, file: !38, line: 718, baseType: !390, size: 64, offset: 2240)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1316, file: !38, line: 720, baseType: !1473, size: 64, offset: 2304)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1474, file: !38, line: 633, baseType: !157, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1474, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1316, file: !38, line: 721, baseType: !1479, size: 64, offset: 2368)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !131, !463}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1316, file: !38, line: 722, baseType: !1483, size: 64, offset: 2432)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !132, file: !26, line: 727, baseType: !1486, size: 64, offset: 4224)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1495, !1496, !1497}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1487, file: !38, line: 743, baseType: !831, size: 1472)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1487, file: !38, line: 744, baseType: !834, size: 64, offset: 1472)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1487, file: !38, line: 745, baseType: !1492, size: 64, offset: 1536)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !131, !584}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1487, file: !38, line: 746, baseType: !834, size: 64, offset: 1600)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1487, file: !38, line: 747, baseType: !825, size: 64, offset: 1664)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1487, file: !38, line: 748, baseType: !825, size: 64, offset: 1728)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !132, file: !26, line: 736, baseType: !1499, size: 128, offset: 4288)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1500)
!1500 = !{!1501, !1505}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1499, file: !26, line: 531, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1504, line: 13, flags: DIFlagFwdDecl)
!1504 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1499, file: !26, line: 532, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !132, file: !26, line: 738, baseType: !1509, size: 64, offset: 4416)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !132, file: !26, line: 740, baseType: !1513, size: 64, offset: 4480)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !132, file: !26, line: 741, baseType: !390, size: 64, offset: 4544)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !132, file: !26, line: 746, baseType: !390, size: 64, offset: 4608)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !132, file: !26, line: 747, baseType: !1517, size: 64, offset: 4672)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !132, file: !26, line: 749, baseType: !1521, size: 64, offset: 4736)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1523)
!1523 = !{!1524, !1525, !1526}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1522, file: !26, line: 433, baseType: !7, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1522, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1522, file: !26, line: 435, baseType: !277, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !132, file: !26, line: 751, baseType: !143, size: 128, offset: 4800)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !132, file: !26, line: 762, baseType: !1529, size: 64, offset: 4928)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !132, file: !26, line: 770, baseType: !1532, offset: 4992)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1533, line: 5, elements: !363)
!1533 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !132, file: !26, line: 772, baseType: !1535, size: 64, offset: 4992)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1537, line: 18, flags: DIFlagFwdDecl)
!1537 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !132, file: !26, line: 773, baseType: !1539, size: 64, offset: 5056)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !861, line: 22, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !132, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !132, file: !26, line: 778, baseType: !1543, size: 32, offset: 5152)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !144, line: 21, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !144, line: 18, baseType: !1157)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !26, line: 779, baseType: !1157, size: 32, offset: 5184)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !132, file: !26, line: 781, baseType: !157, size: 32, offset: 5216)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !132, file: !26, line: 782, baseType: !143, size: 128, offset: 5248)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !132, file: !26, line: 784, baseType: !1549, size: 64, offset: 5376)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1552, line: 52, size: 768, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1562, !1566, !1567, !1568, !1569, !1573, !1577}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !1552, line: 53, baseType: !139, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1551, file: !1552, line: 55, baseType: !279, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1551, file: !1552, line: 56, baseType: !279, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1551, file: !1552, line: 58, baseType: !814, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1551, file: !1552, line: 59, baseType: !1559, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!227, !817, !823}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1551, file: !1552, line: 61, baseType: !1563, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !1549}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1551, file: !1552, line: 62, baseType: !825, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1551, file: !1552, line: 64, baseType: !834, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1551, file: !1552, line: 66, baseType: !624, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1551, file: !1552, line: 67, baseType: !1570, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!505, !817}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1551, file: !1552, line: 69, baseType: !1574, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !817, !658, !665}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1551, file: !1552, line: 71, baseType: !829, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !132, file: !26, line: 785, baseType: !279, size: 64, offset: 5440)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !132, file: !26, line: 787, baseType: !825, size: 64, offset: 5504)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !132, file: !26, line: 788, baseType: !1581, size: 64, offset: 5568)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !132, file: !26, line: 789, baseType: !1584, size: 64, offset: 5632)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !132, file: !26, line: 791, baseType: !1587, size: 64, offset: 5696)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1588, file: !26, line: 598, baseType: !53, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1588, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1588, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1588, file: !26, line: 601, baseType: !584, size: 8, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1588, file: !26, line: 602, baseType: !584, size: 8, offset: 104)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !132, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !132, file: !26, line: 795, baseType: !584, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !132, file: !26, line: 796, baseType: !584, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !132, file: !26, line: 797, baseType: !584, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !132, file: !26, line: 798, baseType: !584, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !132, file: !26, line: 799, baseType: !584, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1601 = !{!1602, !1603, !1604}
!1602 = !DILocalVariable(name: "dev", arg: 1, scope: !128, file: !3, line: 20, type: !131)
!1603 = !DILocalVariable(name: "pm", scope: !128, file: !3, line: 22, type: !829)
!1604 = !DILocalVariable(name: "ret", scope: !128, file: !3, line: 23, type: !46)
!1605 = !DILocation(line: 20, column: 47, scope: !128)
!1606 = !DILocation(line: 22, column: 2, scope: !128)
!1607 = !DILocation(line: 22, column: 27, scope: !128)
!1608 = !DILocation(line: 22, column: 32, scope: !128)
!1609 = !DILocation(line: 22, column: 37, scope: !128)
!1610 = !DILocation(line: 22, column: 46, scope: !128)
!1611 = !DILocation(line: 22, column: 51, scope: !128)
!1612 = !DILocation(line: 22, column: 59, scope: !128)
!1613 = !DILocation(line: 23, column: 2, scope: !128)
!1614 = !DILocation(line: 23, column: 6, scope: !128)
!1615 = !DILocation(line: 25, column: 8, scope: !128)
!1616 = !DILocation(line: 25, column: 11, scope: !128)
!1617 = !DILocation(line: 25, column: 14, scope: !128)
!1618 = !DILocation(line: 25, column: 18, scope: !128)
!1619 = !DILocation(line: 25, column: 36, scope: !128)
!1620 = !DILocation(line: 25, column: 40, scope: !128)
!1621 = !DILocation(line: 25, column: 56, scope: !128)
!1622 = !DILocation(line: 25, column: 6, scope: !128)
!1623 = !DILocation(line: 27, column: 9, scope: !128)
!1624 = !DILocation(line: 28, column: 1, scope: !128)
!1625 = !DILocation(line: 27, column: 2, scope: !128)
!1626 = distinct !DISubprogram(name: "pm_generic_runtime_resume", scope: !3, file: !3, line: 39, type: !129, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DILocalVariable(name: "dev", arg: 1, scope: !1626, file: !3, line: 39, type: !131)
!1629 = !DILocalVariable(name: "pm", scope: !1626, file: !3, line: 41, type: !829)
!1630 = !DILocalVariable(name: "ret", scope: !1626, file: !3, line: 42, type: !46)
!1631 = !DILocation(line: 39, column: 46, scope: !1626)
!1632 = !DILocation(line: 41, column: 2, scope: !1626)
!1633 = !DILocation(line: 41, column: 27, scope: !1626)
!1634 = !DILocation(line: 41, column: 32, scope: !1626)
!1635 = !DILocation(line: 41, column: 37, scope: !1626)
!1636 = !DILocation(line: 41, column: 46, scope: !1626)
!1637 = !DILocation(line: 41, column: 51, scope: !1626)
!1638 = !DILocation(line: 41, column: 59, scope: !1626)
!1639 = !DILocation(line: 42, column: 2, scope: !1626)
!1640 = !DILocation(line: 42, column: 6, scope: !1626)
!1641 = !DILocation(line: 44, column: 8, scope: !1626)
!1642 = !DILocation(line: 44, column: 11, scope: !1626)
!1643 = !DILocation(line: 44, column: 14, scope: !1626)
!1644 = !DILocation(line: 44, column: 18, scope: !1626)
!1645 = !DILocation(line: 44, column: 35, scope: !1626)
!1646 = !DILocation(line: 44, column: 39, scope: !1626)
!1647 = !DILocation(line: 44, column: 54, scope: !1626)
!1648 = !DILocation(line: 44, column: 6, scope: !1626)
!1649 = !DILocation(line: 46, column: 9, scope: !1626)
!1650 = !DILocation(line: 47, column: 1, scope: !1626)
!1651 = !DILocation(line: 46, column: 2, scope: !1626)
!1652 = distinct !DISubprogram(name: "pm_generic_prepare", scope: !3, file: !3, line: 58, type: !129, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DILocalVariable(name: "dev", arg: 1, scope: !1652, file: !3, line: 58, type: !131)
!1655 = !DILocalVariable(name: "drv", scope: !1652, file: !3, line: 60, type: !872)
!1656 = !DILocalVariable(name: "ret", scope: !1652, file: !3, line: 61, type: !46)
!1657 = !DILocation(line: 58, column: 39, scope: !1652)
!1658 = !DILocation(line: 60, column: 2, scope: !1652)
!1659 = !DILocation(line: 60, column: 24, scope: !1652)
!1660 = !DILocation(line: 60, column: 30, scope: !1652)
!1661 = !DILocation(line: 60, column: 35, scope: !1652)
!1662 = !DILocation(line: 61, column: 2, scope: !1652)
!1663 = !DILocation(line: 61, column: 6, scope: !1652)
!1664 = !DILocation(line: 63, column: 6, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 63, column: 6)
!1666 = !DILocation(line: 63, column: 10, scope: !1665)
!1667 = !DILocation(line: 63, column: 13, scope: !1665)
!1668 = !DILocation(line: 63, column: 18, scope: !1665)
!1669 = !DILocation(line: 63, column: 21, scope: !1665)
!1670 = !DILocation(line: 63, column: 24, scope: !1665)
!1671 = !DILocation(line: 63, column: 29, scope: !1665)
!1672 = !DILocation(line: 63, column: 33, scope: !1665)
!1673 = !DILocation(line: 63, column: 6, scope: !1652)
!1674 = !DILocation(line: 64, column: 9, scope: !1665)
!1675 = !DILocation(line: 64, column: 14, scope: !1665)
!1676 = !DILocation(line: 64, column: 18, scope: !1665)
!1677 = !DILocation(line: 64, column: 26, scope: !1665)
!1678 = !DILocation(line: 64, column: 7, scope: !1665)
!1679 = !DILocation(line: 64, column: 3, scope: !1665)
!1680 = !DILocation(line: 66, column: 9, scope: !1652)
!1681 = !DILocation(line: 67, column: 1, scope: !1652)
!1682 = !DILocation(line: 66, column: 2, scope: !1652)
!1683 = distinct !DISubprogram(name: "pm_generic_suspend_noirq", scope: !3, file: !3, line: 73, type: !129, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1684)
!1684 = !{!1685, !1686}
!1685 = !DILocalVariable(name: "dev", arg: 1, scope: !1683, file: !3, line: 73, type: !131)
!1686 = !DILocalVariable(name: "pm", scope: !1683, file: !3, line: 75, type: !829)
!1687 = !DILocation(line: 73, column: 45, scope: !1683)
!1688 = !DILocation(line: 75, column: 2, scope: !1683)
!1689 = !DILocation(line: 75, column: 27, scope: !1683)
!1690 = !DILocation(line: 75, column: 32, scope: !1683)
!1691 = !DILocation(line: 75, column: 37, scope: !1683)
!1692 = !DILocation(line: 75, column: 46, scope: !1683)
!1693 = !DILocation(line: 75, column: 51, scope: !1683)
!1694 = !DILocation(line: 75, column: 59, scope: !1683)
!1695 = !DILocation(line: 77, column: 9, scope: !1683)
!1696 = !DILocation(line: 77, column: 12, scope: !1683)
!1697 = !DILocation(line: 77, column: 15, scope: !1683)
!1698 = !DILocation(line: 77, column: 19, scope: !1683)
!1699 = !DILocation(line: 77, column: 35, scope: !1683)
!1700 = !DILocation(line: 77, column: 39, scope: !1683)
!1701 = !DILocation(line: 77, column: 53, scope: !1683)
!1702 = !DILocation(line: 78, column: 1, scope: !1683)
!1703 = !DILocation(line: 77, column: 2, scope: !1683)
!1704 = distinct !DISubprogram(name: "pm_generic_suspend_late", scope: !3, file: !3, line: 85, type: !129, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1705)
!1705 = !{!1706, !1707}
!1706 = !DILocalVariable(name: "dev", arg: 1, scope: !1704, file: !3, line: 85, type: !131)
!1707 = !DILocalVariable(name: "pm", scope: !1704, file: !3, line: 87, type: !829)
!1708 = !DILocation(line: 85, column: 44, scope: !1704)
!1709 = !DILocation(line: 87, column: 2, scope: !1704)
!1710 = !DILocation(line: 87, column: 27, scope: !1704)
!1711 = !DILocation(line: 87, column: 32, scope: !1704)
!1712 = !DILocation(line: 87, column: 37, scope: !1704)
!1713 = !DILocation(line: 87, column: 46, scope: !1704)
!1714 = !DILocation(line: 87, column: 51, scope: !1704)
!1715 = !DILocation(line: 87, column: 59, scope: !1704)
!1716 = !DILocation(line: 89, column: 9, scope: !1704)
!1717 = !DILocation(line: 89, column: 12, scope: !1704)
!1718 = !DILocation(line: 89, column: 15, scope: !1704)
!1719 = !DILocation(line: 89, column: 19, scope: !1704)
!1720 = !DILocation(line: 89, column: 34, scope: !1704)
!1721 = !DILocation(line: 89, column: 38, scope: !1704)
!1722 = !DILocation(line: 89, column: 51, scope: !1704)
!1723 = !DILocation(line: 90, column: 1, scope: !1704)
!1724 = !DILocation(line: 89, column: 2, scope: !1704)
!1725 = distinct !DISubprogram(name: "pm_generic_suspend", scope: !3, file: !3, line: 97, type: !129, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1726)
!1726 = !{!1727, !1728}
!1727 = !DILocalVariable(name: "dev", arg: 1, scope: !1725, file: !3, line: 97, type: !131)
!1728 = !DILocalVariable(name: "pm", scope: !1725, file: !3, line: 99, type: !829)
!1729 = !DILocation(line: 97, column: 39, scope: !1725)
!1730 = !DILocation(line: 99, column: 2, scope: !1725)
!1731 = !DILocation(line: 99, column: 27, scope: !1725)
!1732 = !DILocation(line: 99, column: 32, scope: !1725)
!1733 = !DILocation(line: 99, column: 37, scope: !1725)
!1734 = !DILocation(line: 99, column: 46, scope: !1725)
!1735 = !DILocation(line: 99, column: 51, scope: !1725)
!1736 = !DILocation(line: 99, column: 59, scope: !1725)
!1737 = !DILocation(line: 101, column: 9, scope: !1725)
!1738 = !DILocation(line: 101, column: 12, scope: !1725)
!1739 = !DILocation(line: 101, column: 15, scope: !1725)
!1740 = !DILocation(line: 101, column: 19, scope: !1725)
!1741 = !DILocation(line: 101, column: 29, scope: !1725)
!1742 = !DILocation(line: 101, column: 33, scope: !1725)
!1743 = !DILocation(line: 101, column: 41, scope: !1725)
!1744 = !DILocation(line: 102, column: 1, scope: !1725)
!1745 = !DILocation(line: 101, column: 2, scope: !1725)
!1746 = distinct !DISubprogram(name: "pm_generic_freeze_noirq", scope: !3, file: !3, line: 109, type: !129, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1747)
!1747 = !{!1748, !1749}
!1748 = !DILocalVariable(name: "dev", arg: 1, scope: !1746, file: !3, line: 109, type: !131)
!1749 = !DILocalVariable(name: "pm", scope: !1746, file: !3, line: 111, type: !829)
!1750 = !DILocation(line: 109, column: 44, scope: !1746)
!1751 = !DILocation(line: 111, column: 2, scope: !1746)
!1752 = !DILocation(line: 111, column: 27, scope: !1746)
!1753 = !DILocation(line: 111, column: 32, scope: !1746)
!1754 = !DILocation(line: 111, column: 37, scope: !1746)
!1755 = !DILocation(line: 111, column: 46, scope: !1746)
!1756 = !DILocation(line: 111, column: 51, scope: !1746)
!1757 = !DILocation(line: 111, column: 59, scope: !1746)
!1758 = !DILocation(line: 113, column: 9, scope: !1746)
!1759 = !DILocation(line: 113, column: 12, scope: !1746)
!1760 = !DILocation(line: 113, column: 15, scope: !1746)
!1761 = !DILocation(line: 113, column: 19, scope: !1746)
!1762 = !DILocation(line: 113, column: 34, scope: !1746)
!1763 = !DILocation(line: 113, column: 38, scope: !1746)
!1764 = !DILocation(line: 113, column: 51, scope: !1746)
!1765 = !DILocation(line: 114, column: 1, scope: !1746)
!1766 = !DILocation(line: 113, column: 2, scope: !1746)
!1767 = distinct !DISubprogram(name: "pm_generic_freeze_late", scope: !3, file: !3, line: 121, type: !129, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1768 = !{!1769, !1770}
!1769 = !DILocalVariable(name: "dev", arg: 1, scope: !1767, file: !3, line: 121, type: !131)
!1770 = !DILocalVariable(name: "pm", scope: !1767, file: !3, line: 123, type: !829)
!1771 = !DILocation(line: 121, column: 43, scope: !1767)
!1772 = !DILocation(line: 123, column: 2, scope: !1767)
!1773 = !DILocation(line: 123, column: 27, scope: !1767)
!1774 = !DILocation(line: 123, column: 32, scope: !1767)
!1775 = !DILocation(line: 123, column: 37, scope: !1767)
!1776 = !DILocation(line: 123, column: 46, scope: !1767)
!1777 = !DILocation(line: 123, column: 51, scope: !1767)
!1778 = !DILocation(line: 123, column: 59, scope: !1767)
!1779 = !DILocation(line: 125, column: 9, scope: !1767)
!1780 = !DILocation(line: 125, column: 12, scope: !1767)
!1781 = !DILocation(line: 125, column: 15, scope: !1767)
!1782 = !DILocation(line: 125, column: 19, scope: !1767)
!1783 = !DILocation(line: 125, column: 33, scope: !1767)
!1784 = !DILocation(line: 125, column: 37, scope: !1767)
!1785 = !DILocation(line: 125, column: 49, scope: !1767)
!1786 = !DILocation(line: 126, column: 1, scope: !1767)
!1787 = !DILocation(line: 125, column: 2, scope: !1767)
!1788 = distinct !DISubprogram(name: "pm_generic_freeze", scope: !3, file: !3, line: 133, type: !129, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1789 = !{!1790, !1791}
!1790 = !DILocalVariable(name: "dev", arg: 1, scope: !1788, file: !3, line: 133, type: !131)
!1791 = !DILocalVariable(name: "pm", scope: !1788, file: !3, line: 135, type: !829)
!1792 = !DILocation(line: 133, column: 38, scope: !1788)
!1793 = !DILocation(line: 135, column: 2, scope: !1788)
!1794 = !DILocation(line: 135, column: 27, scope: !1788)
!1795 = !DILocation(line: 135, column: 32, scope: !1788)
!1796 = !DILocation(line: 135, column: 37, scope: !1788)
!1797 = !DILocation(line: 135, column: 46, scope: !1788)
!1798 = !DILocation(line: 135, column: 51, scope: !1788)
!1799 = !DILocation(line: 135, column: 59, scope: !1788)
!1800 = !DILocation(line: 137, column: 9, scope: !1788)
!1801 = !DILocation(line: 137, column: 12, scope: !1788)
!1802 = !DILocation(line: 137, column: 15, scope: !1788)
!1803 = !DILocation(line: 137, column: 19, scope: !1788)
!1804 = !DILocation(line: 137, column: 28, scope: !1788)
!1805 = !DILocation(line: 137, column: 32, scope: !1788)
!1806 = !DILocation(line: 137, column: 39, scope: !1788)
!1807 = !DILocation(line: 138, column: 1, scope: !1788)
!1808 = !DILocation(line: 137, column: 2, scope: !1788)
!1809 = distinct !DISubprogram(name: "pm_generic_poweroff_noirq", scope: !3, file: !3, line: 145, type: !129, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1810)
!1810 = !{!1811, !1812}
!1811 = !DILocalVariable(name: "dev", arg: 1, scope: !1809, file: !3, line: 145, type: !131)
!1812 = !DILocalVariable(name: "pm", scope: !1809, file: !3, line: 147, type: !829)
!1813 = !DILocation(line: 145, column: 46, scope: !1809)
!1814 = !DILocation(line: 147, column: 2, scope: !1809)
!1815 = !DILocation(line: 147, column: 27, scope: !1809)
!1816 = !DILocation(line: 147, column: 32, scope: !1809)
!1817 = !DILocation(line: 147, column: 37, scope: !1809)
!1818 = !DILocation(line: 147, column: 46, scope: !1809)
!1819 = !DILocation(line: 147, column: 51, scope: !1809)
!1820 = !DILocation(line: 147, column: 59, scope: !1809)
!1821 = !DILocation(line: 149, column: 9, scope: !1809)
!1822 = !DILocation(line: 149, column: 12, scope: !1809)
!1823 = !DILocation(line: 149, column: 15, scope: !1809)
!1824 = !DILocation(line: 149, column: 19, scope: !1809)
!1825 = !DILocation(line: 149, column: 36, scope: !1809)
!1826 = !DILocation(line: 149, column: 40, scope: !1809)
!1827 = !DILocation(line: 149, column: 55, scope: !1809)
!1828 = !DILocation(line: 150, column: 1, scope: !1809)
!1829 = !DILocation(line: 149, column: 2, scope: !1809)
!1830 = distinct !DISubprogram(name: "pm_generic_poweroff_late", scope: !3, file: !3, line: 157, type: !129, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1831)
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "dev", arg: 1, scope: !1830, file: !3, line: 157, type: !131)
!1833 = !DILocalVariable(name: "pm", scope: !1830, file: !3, line: 159, type: !829)
!1834 = !DILocation(line: 157, column: 45, scope: !1830)
!1835 = !DILocation(line: 159, column: 2, scope: !1830)
!1836 = !DILocation(line: 159, column: 27, scope: !1830)
!1837 = !DILocation(line: 159, column: 32, scope: !1830)
!1838 = !DILocation(line: 159, column: 37, scope: !1830)
!1839 = !DILocation(line: 159, column: 46, scope: !1830)
!1840 = !DILocation(line: 159, column: 51, scope: !1830)
!1841 = !DILocation(line: 159, column: 59, scope: !1830)
!1842 = !DILocation(line: 161, column: 9, scope: !1830)
!1843 = !DILocation(line: 161, column: 12, scope: !1830)
!1844 = !DILocation(line: 161, column: 15, scope: !1830)
!1845 = !DILocation(line: 161, column: 19, scope: !1830)
!1846 = !DILocation(line: 161, column: 35, scope: !1830)
!1847 = !DILocation(line: 161, column: 39, scope: !1830)
!1848 = !DILocation(line: 161, column: 53, scope: !1830)
!1849 = !DILocation(line: 162, column: 1, scope: !1830)
!1850 = !DILocation(line: 161, column: 2, scope: !1830)
!1851 = distinct !DISubprogram(name: "pm_generic_poweroff", scope: !3, file: !3, line: 169, type: !129, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1852)
!1852 = !{!1853, !1854}
!1853 = !DILocalVariable(name: "dev", arg: 1, scope: !1851, file: !3, line: 169, type: !131)
!1854 = !DILocalVariable(name: "pm", scope: !1851, file: !3, line: 171, type: !829)
!1855 = !DILocation(line: 169, column: 40, scope: !1851)
!1856 = !DILocation(line: 171, column: 2, scope: !1851)
!1857 = !DILocation(line: 171, column: 27, scope: !1851)
!1858 = !DILocation(line: 171, column: 32, scope: !1851)
!1859 = !DILocation(line: 171, column: 37, scope: !1851)
!1860 = !DILocation(line: 171, column: 46, scope: !1851)
!1861 = !DILocation(line: 171, column: 51, scope: !1851)
!1862 = !DILocation(line: 171, column: 59, scope: !1851)
!1863 = !DILocation(line: 173, column: 9, scope: !1851)
!1864 = !DILocation(line: 173, column: 12, scope: !1851)
!1865 = !DILocation(line: 173, column: 15, scope: !1851)
!1866 = !DILocation(line: 173, column: 19, scope: !1851)
!1867 = !DILocation(line: 173, column: 30, scope: !1851)
!1868 = !DILocation(line: 173, column: 34, scope: !1851)
!1869 = !DILocation(line: 173, column: 43, scope: !1851)
!1870 = !DILocation(line: 174, column: 1, scope: !1851)
!1871 = !DILocation(line: 173, column: 2, scope: !1851)
!1872 = distinct !DISubprogram(name: "pm_generic_thaw_noirq", scope: !3, file: !3, line: 181, type: !129, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "dev", arg: 1, scope: !1872, file: !3, line: 181, type: !131)
!1875 = !DILocalVariable(name: "pm", scope: !1872, file: !3, line: 183, type: !829)
!1876 = !DILocation(line: 181, column: 42, scope: !1872)
!1877 = !DILocation(line: 183, column: 2, scope: !1872)
!1878 = !DILocation(line: 183, column: 27, scope: !1872)
!1879 = !DILocation(line: 183, column: 32, scope: !1872)
!1880 = !DILocation(line: 183, column: 37, scope: !1872)
!1881 = !DILocation(line: 183, column: 46, scope: !1872)
!1882 = !DILocation(line: 183, column: 51, scope: !1872)
!1883 = !DILocation(line: 183, column: 59, scope: !1872)
!1884 = !DILocation(line: 185, column: 9, scope: !1872)
!1885 = !DILocation(line: 185, column: 12, scope: !1872)
!1886 = !DILocation(line: 185, column: 15, scope: !1872)
!1887 = !DILocation(line: 185, column: 19, scope: !1872)
!1888 = !DILocation(line: 185, column: 32, scope: !1872)
!1889 = !DILocation(line: 185, column: 36, scope: !1872)
!1890 = !DILocation(line: 185, column: 47, scope: !1872)
!1891 = !DILocation(line: 186, column: 1, scope: !1872)
!1892 = !DILocation(line: 185, column: 2, scope: !1872)
!1893 = distinct !DISubprogram(name: "pm_generic_thaw_early", scope: !3, file: !3, line: 193, type: !129, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1894 = !{!1895, !1896}
!1895 = !DILocalVariable(name: "dev", arg: 1, scope: !1893, file: !3, line: 193, type: !131)
!1896 = !DILocalVariable(name: "pm", scope: !1893, file: !3, line: 195, type: !829)
!1897 = !DILocation(line: 193, column: 42, scope: !1893)
!1898 = !DILocation(line: 195, column: 2, scope: !1893)
!1899 = !DILocation(line: 195, column: 27, scope: !1893)
!1900 = !DILocation(line: 195, column: 32, scope: !1893)
!1901 = !DILocation(line: 195, column: 37, scope: !1893)
!1902 = !DILocation(line: 195, column: 46, scope: !1893)
!1903 = !DILocation(line: 195, column: 51, scope: !1893)
!1904 = !DILocation(line: 195, column: 59, scope: !1893)
!1905 = !DILocation(line: 197, column: 9, scope: !1893)
!1906 = !DILocation(line: 197, column: 12, scope: !1893)
!1907 = !DILocation(line: 197, column: 15, scope: !1893)
!1908 = !DILocation(line: 197, column: 19, scope: !1893)
!1909 = !DILocation(line: 197, column: 32, scope: !1893)
!1910 = !DILocation(line: 197, column: 36, scope: !1893)
!1911 = !DILocation(line: 197, column: 47, scope: !1893)
!1912 = !DILocation(line: 198, column: 1, scope: !1893)
!1913 = !DILocation(line: 197, column: 2, scope: !1893)
!1914 = distinct !DISubprogram(name: "pm_generic_thaw", scope: !3, file: !3, line: 205, type: !129, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "dev", arg: 1, scope: !1914, file: !3, line: 205, type: !131)
!1917 = !DILocalVariable(name: "pm", scope: !1914, file: !3, line: 207, type: !829)
!1918 = !DILocation(line: 205, column: 36, scope: !1914)
!1919 = !DILocation(line: 207, column: 2, scope: !1914)
!1920 = !DILocation(line: 207, column: 27, scope: !1914)
!1921 = !DILocation(line: 207, column: 32, scope: !1914)
!1922 = !DILocation(line: 207, column: 37, scope: !1914)
!1923 = !DILocation(line: 207, column: 46, scope: !1914)
!1924 = !DILocation(line: 207, column: 51, scope: !1914)
!1925 = !DILocation(line: 207, column: 59, scope: !1914)
!1926 = !DILocation(line: 209, column: 9, scope: !1914)
!1927 = !DILocation(line: 209, column: 12, scope: !1914)
!1928 = !DILocation(line: 209, column: 15, scope: !1914)
!1929 = !DILocation(line: 209, column: 19, scope: !1914)
!1930 = !DILocation(line: 209, column: 26, scope: !1914)
!1931 = !DILocation(line: 209, column: 30, scope: !1914)
!1932 = !DILocation(line: 209, column: 35, scope: !1914)
!1933 = !DILocation(line: 210, column: 1, scope: !1914)
!1934 = !DILocation(line: 209, column: 2, scope: !1914)
!1935 = distinct !DISubprogram(name: "pm_generic_resume_noirq", scope: !3, file: !3, line: 217, type: !129, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1936)
!1936 = !{!1937, !1938}
!1937 = !DILocalVariable(name: "dev", arg: 1, scope: !1935, file: !3, line: 217, type: !131)
!1938 = !DILocalVariable(name: "pm", scope: !1935, file: !3, line: 219, type: !829)
!1939 = !DILocation(line: 217, column: 44, scope: !1935)
!1940 = !DILocation(line: 219, column: 2, scope: !1935)
!1941 = !DILocation(line: 219, column: 27, scope: !1935)
!1942 = !DILocation(line: 219, column: 32, scope: !1935)
!1943 = !DILocation(line: 219, column: 37, scope: !1935)
!1944 = !DILocation(line: 219, column: 46, scope: !1935)
!1945 = !DILocation(line: 219, column: 51, scope: !1935)
!1946 = !DILocation(line: 219, column: 59, scope: !1935)
!1947 = !DILocation(line: 221, column: 9, scope: !1935)
!1948 = !DILocation(line: 221, column: 12, scope: !1935)
!1949 = !DILocation(line: 221, column: 15, scope: !1935)
!1950 = !DILocation(line: 221, column: 19, scope: !1935)
!1951 = !DILocation(line: 221, column: 34, scope: !1935)
!1952 = !DILocation(line: 221, column: 38, scope: !1935)
!1953 = !DILocation(line: 221, column: 51, scope: !1935)
!1954 = !DILocation(line: 222, column: 1, scope: !1935)
!1955 = !DILocation(line: 221, column: 2, scope: !1935)
!1956 = distinct !DISubprogram(name: "pm_generic_resume_early", scope: !3, file: !3, line: 229, type: !129, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "dev", arg: 1, scope: !1956, file: !3, line: 229, type: !131)
!1959 = !DILocalVariable(name: "pm", scope: !1956, file: !3, line: 231, type: !829)
!1960 = !DILocation(line: 229, column: 44, scope: !1956)
!1961 = !DILocation(line: 231, column: 2, scope: !1956)
!1962 = !DILocation(line: 231, column: 27, scope: !1956)
!1963 = !DILocation(line: 231, column: 32, scope: !1956)
!1964 = !DILocation(line: 231, column: 37, scope: !1956)
!1965 = !DILocation(line: 231, column: 46, scope: !1956)
!1966 = !DILocation(line: 231, column: 51, scope: !1956)
!1967 = !DILocation(line: 231, column: 59, scope: !1956)
!1968 = !DILocation(line: 233, column: 9, scope: !1956)
!1969 = !DILocation(line: 233, column: 12, scope: !1956)
!1970 = !DILocation(line: 233, column: 15, scope: !1956)
!1971 = !DILocation(line: 233, column: 19, scope: !1956)
!1972 = !DILocation(line: 233, column: 34, scope: !1956)
!1973 = !DILocation(line: 233, column: 38, scope: !1956)
!1974 = !DILocation(line: 233, column: 51, scope: !1956)
!1975 = !DILocation(line: 234, column: 1, scope: !1956)
!1976 = !DILocation(line: 233, column: 2, scope: !1956)
!1977 = distinct !DISubprogram(name: "pm_generic_resume", scope: !3, file: !3, line: 241, type: !129, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1978 = !{!1979, !1980}
!1979 = !DILocalVariable(name: "dev", arg: 1, scope: !1977, file: !3, line: 241, type: !131)
!1980 = !DILocalVariable(name: "pm", scope: !1977, file: !3, line: 243, type: !829)
!1981 = !DILocation(line: 241, column: 38, scope: !1977)
!1982 = !DILocation(line: 243, column: 2, scope: !1977)
!1983 = !DILocation(line: 243, column: 27, scope: !1977)
!1984 = !DILocation(line: 243, column: 32, scope: !1977)
!1985 = !DILocation(line: 243, column: 37, scope: !1977)
!1986 = !DILocation(line: 243, column: 46, scope: !1977)
!1987 = !DILocation(line: 243, column: 51, scope: !1977)
!1988 = !DILocation(line: 243, column: 59, scope: !1977)
!1989 = !DILocation(line: 245, column: 9, scope: !1977)
!1990 = !DILocation(line: 245, column: 12, scope: !1977)
!1991 = !DILocation(line: 245, column: 15, scope: !1977)
!1992 = !DILocation(line: 245, column: 19, scope: !1977)
!1993 = !DILocation(line: 245, column: 28, scope: !1977)
!1994 = !DILocation(line: 245, column: 32, scope: !1977)
!1995 = !DILocation(line: 245, column: 39, scope: !1977)
!1996 = !DILocation(line: 246, column: 1, scope: !1977)
!1997 = !DILocation(line: 245, column: 2, scope: !1977)
!1998 = distinct !DISubprogram(name: "pm_generic_restore_noirq", scope: !3, file: !3, line: 253, type: !129, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1999 = !{!2000, !2001}
!2000 = !DILocalVariable(name: "dev", arg: 1, scope: !1998, file: !3, line: 253, type: !131)
!2001 = !DILocalVariable(name: "pm", scope: !1998, file: !3, line: 255, type: !829)
!2002 = !DILocation(line: 253, column: 45, scope: !1998)
!2003 = !DILocation(line: 255, column: 2, scope: !1998)
!2004 = !DILocation(line: 255, column: 27, scope: !1998)
!2005 = !DILocation(line: 255, column: 32, scope: !1998)
!2006 = !DILocation(line: 255, column: 37, scope: !1998)
!2007 = !DILocation(line: 255, column: 46, scope: !1998)
!2008 = !DILocation(line: 255, column: 51, scope: !1998)
!2009 = !DILocation(line: 255, column: 59, scope: !1998)
!2010 = !DILocation(line: 257, column: 9, scope: !1998)
!2011 = !DILocation(line: 257, column: 12, scope: !1998)
!2012 = !DILocation(line: 257, column: 15, scope: !1998)
!2013 = !DILocation(line: 257, column: 19, scope: !1998)
!2014 = !DILocation(line: 257, column: 35, scope: !1998)
!2015 = !DILocation(line: 257, column: 39, scope: !1998)
!2016 = !DILocation(line: 257, column: 53, scope: !1998)
!2017 = !DILocation(line: 258, column: 1, scope: !1998)
!2018 = !DILocation(line: 257, column: 2, scope: !1998)
!2019 = distinct !DISubprogram(name: "pm_generic_restore_early", scope: !3, file: !3, line: 265, type: !129, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2020)
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "dev", arg: 1, scope: !2019, file: !3, line: 265, type: !131)
!2022 = !DILocalVariable(name: "pm", scope: !2019, file: !3, line: 267, type: !829)
!2023 = !DILocation(line: 265, column: 45, scope: !2019)
!2024 = !DILocation(line: 267, column: 2, scope: !2019)
!2025 = !DILocation(line: 267, column: 27, scope: !2019)
!2026 = !DILocation(line: 267, column: 32, scope: !2019)
!2027 = !DILocation(line: 267, column: 37, scope: !2019)
!2028 = !DILocation(line: 267, column: 46, scope: !2019)
!2029 = !DILocation(line: 267, column: 51, scope: !2019)
!2030 = !DILocation(line: 267, column: 59, scope: !2019)
!2031 = !DILocation(line: 269, column: 9, scope: !2019)
!2032 = !DILocation(line: 269, column: 12, scope: !2019)
!2033 = !DILocation(line: 269, column: 15, scope: !2019)
!2034 = !DILocation(line: 269, column: 19, scope: !2019)
!2035 = !DILocation(line: 269, column: 35, scope: !2019)
!2036 = !DILocation(line: 269, column: 39, scope: !2019)
!2037 = !DILocation(line: 269, column: 53, scope: !2019)
!2038 = !DILocation(line: 270, column: 1, scope: !2019)
!2039 = !DILocation(line: 269, column: 2, scope: !2019)
!2040 = distinct !DISubprogram(name: "pm_generic_restore", scope: !3, file: !3, line: 277, type: !129, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2041 = !{!2042, !2043}
!2042 = !DILocalVariable(name: "dev", arg: 1, scope: !2040, file: !3, line: 277, type: !131)
!2043 = !DILocalVariable(name: "pm", scope: !2040, file: !3, line: 279, type: !829)
!2044 = !DILocation(line: 277, column: 39, scope: !2040)
!2045 = !DILocation(line: 279, column: 2, scope: !2040)
!2046 = !DILocation(line: 279, column: 27, scope: !2040)
!2047 = !DILocation(line: 279, column: 32, scope: !2040)
!2048 = !DILocation(line: 279, column: 37, scope: !2040)
!2049 = !DILocation(line: 279, column: 46, scope: !2040)
!2050 = !DILocation(line: 279, column: 51, scope: !2040)
!2051 = !DILocation(line: 279, column: 59, scope: !2040)
!2052 = !DILocation(line: 281, column: 9, scope: !2040)
!2053 = !DILocation(line: 281, column: 12, scope: !2040)
!2054 = !DILocation(line: 281, column: 15, scope: !2040)
!2055 = !DILocation(line: 281, column: 19, scope: !2040)
!2056 = !DILocation(line: 281, column: 29, scope: !2040)
!2057 = !DILocation(line: 281, column: 33, scope: !2040)
!2058 = !DILocation(line: 281, column: 41, scope: !2040)
!2059 = !DILocation(line: 282, column: 1, scope: !2040)
!2060 = !DILocation(line: 281, column: 2, scope: !2040)
!2061 = distinct !DISubprogram(name: "pm_generic_complete", scope: !3, file: !3, line: 291, type: !826, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "dev", arg: 1, scope: !2061, file: !3, line: 291, type: !131)
!2064 = !DILocalVariable(name: "drv", scope: !2061, file: !3, line: 293, type: !872)
!2065 = !DILocation(line: 291, column: 41, scope: !2061)
!2066 = !DILocation(line: 293, column: 2, scope: !2061)
!2067 = !DILocation(line: 293, column: 24, scope: !2061)
!2068 = !DILocation(line: 293, column: 30, scope: !2061)
!2069 = !DILocation(line: 293, column: 35, scope: !2061)
!2070 = !DILocation(line: 295, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 295, column: 6)
!2072 = !DILocation(line: 295, column: 10, scope: !2071)
!2073 = !DILocation(line: 295, column: 13, scope: !2071)
!2074 = !DILocation(line: 295, column: 18, scope: !2071)
!2075 = !DILocation(line: 295, column: 21, scope: !2071)
!2076 = !DILocation(line: 295, column: 24, scope: !2071)
!2077 = !DILocation(line: 295, column: 29, scope: !2071)
!2078 = !DILocation(line: 295, column: 33, scope: !2071)
!2079 = !DILocation(line: 295, column: 6, scope: !2061)
!2080 = !DILocation(line: 296, column: 3, scope: !2071)
!2081 = !DILocation(line: 296, column: 8, scope: !2071)
!2082 = !DILocation(line: 296, column: 12, scope: !2071)
!2083 = !DILocation(line: 296, column: 21, scope: !2071)
!2084 = !DILocation(line: 297, column: 1, scope: !2061)
