; ModuleID = 'drivers/acpi/acpica/utmutex.c'
source_filename = "drivers/acpi/acpica/utmutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_rw_lock = type { ptr, ptr, i32 }
%struct.acpi_mutex_info = type { ptr, i32, i64 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@acpi_gbl_hardware_lock = external dso_local global ptr, align 8
@acpi_gbl_reference_count_lock = external dso_local global ptr, align 8
@acpi_gbl_osi_mutex = external dso_local global ptr, align 8
@acpi_gbl_namespace_rw_lock = external dso_local global %struct.acpi_rw_lock, align 8
@acpi_gbl_mutex_info = external dso_local global [6 x %struct.acpi_mutex_info], align 16
@_acpi_module_name = internal constant [8 x i8] c"utmutex\00", align 1, !dbg !0
@.str = private unnamed_addr constant [46 x i8] c"Thread %u could not acquire Mutex [%s] (0x%X)\00", align 1, !dbg !1520
@.str.1 = private unnamed_addr constant [50 x i8] c"Mutex [%s] (0x%X) is not acquired, cannot release\00", align 1, !dbg !1525
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1530
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_mutex_initialize() #0 align 16 !dbg !1546 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %lock = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %tmp = alloca i32, align 4
  %lock10 = alloca ptr, align 8
  %.compoundliteral15 = alloca %struct.raw_spinlock, align 4
  %tmp21 = alloca i32, align 4
  %lock27 = alloca ptr, align 8
  %.compoundliteral33 = alloca %struct.spinlock, align 4
  %tmp39 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1550, metadata !DIExpression()), !dbg !1561
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1551, metadata !DIExpression()), !dbg !1563
  store i32 0, ptr %i, align 4, !dbg !1564
  br label %for.cond, !dbg !1566

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1567
  %cmp = icmp ult i32 %0, 6, !dbg !1569
  br i1 %cmp, label %for.body, label %for.end, !dbg !1570

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !1571
  %call = call i32 @acpi_ut_create_mutex(i32 noundef %1) #14, !dbg !1573
  store i32 %call, ptr %status, align 4, !dbg !1574
  %2 = load i32, ptr %status, align 4, !dbg !1575
  %tobool = icmp ne i32 %2, 0, !dbg !1575
  br i1 %tobool, label %if.then, label %if.end, !dbg !1577

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %status, align 4, !dbg !1578
  store i32 %3, ptr %retval, align 4, !dbg !1578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1578

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1580

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !1581
  %inc = add i32 %4, 1, !dbg !1581
  store i32 %inc, ptr %i, align 4, !dbg !1581
  br label %for.cond, !dbg !1582, !llvm.loop !1583

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock) #13, !dbg !1587
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !1552, metadata !DIExpression()), !dbg !1587
  %call1 = call ptr @acpi_os_allocate(i64 noundef 4) #14, !dbg !1587
  store ptr %call1, ptr %lock, align 8, !dbg !1587
  %5 = load ptr, ptr %lock, align 8, !dbg !1588
  %tobool2 = icmp ne ptr %5, null, !dbg !1588
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1587

if.then3:                                         ; preds = %for.end
  %6 = load ptr, ptr %lock, align 8, !dbg !1590
  store ptr %6, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1590
  br label %do.body, !dbg !1590

do.body:                                          ; preds = %if.then3
  %7 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1592
  %call4 = call ptr @spinlock_check(ptr noundef %7) #14, !dbg !1592
  %8 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1592
  %9 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !1592
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %9, i32 0, i32 0, !dbg !1592
  %10 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !1592
  %counter = getelementptr inbounds %struct.atomic_t, ptr %10, i32 0, i32 0, !dbg !1592
  store i32 0, ptr %counter, align 4, !dbg !1592
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1592
  br label %do.cond, !dbg !1592

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1592

do.end:                                           ; preds = %do.cond
  br label %if.end5, !dbg !1590

if.end5:                                          ; preds = %do.end, %for.end
  %11 = load ptr, ptr %lock, align 8, !dbg !1587
  %tobool6 = icmp ne ptr %11, null, !dbg !1587
  %12 = zext i1 %tobool6 to i64, !dbg !1587
  %cond = select i1 %tobool6, i32 0, i32 4, !dbg !1587
  store i32 %cond, ptr %tmp, align 4, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock) #13, !dbg !1594
  %13 = load i32, ptr %tmp, align 4, !dbg !1587
  store i32 %13, ptr %status, align 4, !dbg !1595
  %14 = load i32, ptr %status, align 4, !dbg !1596
  %tobool7 = icmp ne i32 %14, 0, !dbg !1596
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1598

if.then8:                                         ; preds = %if.end5
  %15 = load i32, ptr %status, align 4, !dbg !1599
  store i32 %15, ptr %retval, align 4, !dbg !1599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1599

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock10) #13, !dbg !1601
  call void @llvm.dbg.declare(metadata ptr %lock10, metadata !1555, metadata !DIExpression()), !dbg !1601
  %call11 = call ptr @acpi_os_allocate(i64 noundef 4) #14, !dbg !1601
  store ptr %call11, ptr %lock10, align 8, !dbg !1601
  %16 = load ptr, ptr %lock10, align 8, !dbg !1602
  %tobool12 = icmp ne ptr %16, null, !dbg !1602
  br i1 %tobool12, label %if.then13, label %if.end20, !dbg !1601

if.then13:                                        ; preds = %if.end9
  %17 = load ptr, ptr %lock10, align 8, !dbg !1604
  store ptr %17, ptr @acpi_gbl_hardware_lock, align 8, !dbg !1604
  br label %do.body14, !dbg !1604

do.body14:                                        ; preds = %if.then13
  %18 = load ptr, ptr @acpi_gbl_hardware_lock, align 8, !dbg !1606
  %raw_lock16 = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral15, i32 0, i32 0, !dbg !1606
  %19 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock16, i32 0, i32 0, !dbg !1606
  %counter17 = getelementptr inbounds %struct.atomic_t, ptr %19, i32 0, i32 0, !dbg !1606
  store i32 0, ptr %counter17, align 4, !dbg !1606
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %.compoundliteral15, i64 4, i1 false), !dbg !1606
  br label %do.cond18, !dbg !1606

do.cond18:                                        ; preds = %do.body14
  br label %do.end19, !dbg !1606

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !1604

if.end20:                                         ; preds = %do.end19, %if.end9
  %20 = load ptr, ptr %lock10, align 8, !dbg !1601
  %tobool22 = icmp ne ptr %20, null, !dbg !1601
  %21 = zext i1 %tobool22 to i64, !dbg !1601
  %cond23 = select i1 %tobool22, i32 0, i32 4, !dbg !1601
  store i32 %cond23, ptr %tmp21, align 4, !dbg !1602
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock10) #13, !dbg !1608
  %22 = load i32, ptr %tmp21, align 4, !dbg !1601
  store i32 %22, ptr %status, align 4, !dbg !1609
  %23 = load i32, ptr %status, align 4, !dbg !1610
  %tobool24 = icmp ne i32 %23, 0, !dbg !1610
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1612

if.then25:                                        ; preds = %if.end20
  %24 = load i32, ptr %status, align 4, !dbg !1613
  store i32 %24, ptr %retval, align 4, !dbg !1613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1613

if.end26:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock27) #13, !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %lock27, metadata !1558, metadata !DIExpression()), !dbg !1615
  %call28 = call ptr @acpi_os_allocate(i64 noundef 4) #14, !dbg !1615
  store ptr %call28, ptr %lock27, align 8, !dbg !1615
  %25 = load ptr, ptr %lock27, align 8, !dbg !1616
  %tobool29 = icmp ne ptr %25, null, !dbg !1616
  br i1 %tobool29, label %if.then30, label %if.end38, !dbg !1615

if.then30:                                        ; preds = %if.end26
  %26 = load ptr, ptr %lock27, align 8, !dbg !1618
  store ptr %26, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1618
  br label %do.body31, !dbg !1618

do.body31:                                        ; preds = %if.then30
  %27 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1620
  %call32 = call ptr @spinlock_check(ptr noundef %27) #14, !dbg !1620
  %28 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1620
  %29 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral33, i32 0, i32 0, !dbg !1620
  %raw_lock34 = getelementptr inbounds %struct.raw_spinlock, ptr %29, i32 0, i32 0, !dbg !1620
  %30 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock34, i32 0, i32 0, !dbg !1620
  %counter35 = getelementptr inbounds %struct.atomic_t, ptr %30, i32 0, i32 0, !dbg !1620
  store i32 0, ptr %counter35, align 4, !dbg !1620
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %.compoundliteral33, i64 4, i1 false), !dbg !1620
  br label %do.cond36, !dbg !1620

do.cond36:                                        ; preds = %do.body31
  br label %do.end37, !dbg !1620

do.end37:                                         ; preds = %do.cond36
  br label %if.end38, !dbg !1618

if.end38:                                         ; preds = %do.end37, %if.end26
  %31 = load ptr, ptr %lock27, align 8, !dbg !1615
  %tobool40 = icmp ne ptr %31, null, !dbg !1615
  %32 = zext i1 %tobool40 to i64, !dbg !1615
  %cond41 = select i1 %tobool40, i32 0, i32 4, !dbg !1615
  store i32 %cond41, ptr %tmp39, align 4, !dbg !1616
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock27) #13, !dbg !1622
  %33 = load i32, ptr %tmp39, align 4, !dbg !1615
  store i32 %33, ptr %status, align 4, !dbg !1623
  %34 = load i32, ptr %status, align 4, !dbg !1624
  %tobool42 = icmp ne i32 %34, 0, !dbg !1624
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1626

if.then43:                                        ; preds = %if.end38
  %35 = load i32, ptr %status, align 4, !dbg !1627
  store i32 %35, ptr %retval, align 4, !dbg !1627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1627

if.end44:                                         ; preds = %if.end38
  %call45 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef @acpi_gbl_osi_mutex) #14, !dbg !1629
  store i32 %call45, ptr %status, align 4, !dbg !1630
  %36 = load i32, ptr %status, align 4, !dbg !1631
  %tobool46 = icmp ne i32 %36, 0, !dbg !1631
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !1633

if.then47:                                        ; preds = %if.end44
  %37 = load i32, ptr %status, align 4, !dbg !1634
  store i32 %37, ptr %retval, align 4, !dbg !1634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1634

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @acpi_ut_create_rw_lock(ptr noundef @acpi_gbl_namespace_rw_lock) #14, !dbg !1636
  store i32 %call49, ptr %status, align 4, !dbg !1637
  %38 = load i32, ptr %status, align 4, !dbg !1638
  %tobool50 = icmp ne i32 %38, 0, !dbg !1638
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !1640

if.then51:                                        ; preds = %if.end48
  %39 = load i32, ptr %status, align 4, !dbg !1641
  store i32 %39, ptr %retval, align 4, !dbg !1641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1641

if.end52:                                         ; preds = %if.end48
  %40 = load i32, ptr %status, align 4, !dbg !1643
  store i32 %40, ptr %retval, align 4, !dbg !1643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1643

cleanup:                                          ; preds = %if.end52, %if.then51, %if.then47, %if.then43, %if.then25, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1644
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1644
  %41 = load i32, ptr %retval, align 4, !dbg !1644
  ret i32 %41, !dbg !1644
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_create_mutex(i32 noundef %mutex_id) #0 align 16 !dbg !1645 {
entry:
  %mutex_id.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %mutex_id, ptr %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mutex_id.addr, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1654
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1652, metadata !DIExpression()), !dbg !1655
  store i32 0, ptr %status, align 4, !dbg !1655
  %0 = load i32, ptr %mutex_id.addr, align 4, !dbg !1656
  %idxprom = zext i32 %0 to i64, !dbg !1658
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1658
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx, i32 0, i32 0, !dbg !1659
  %1 = load ptr, ptr %mutex, align 8, !dbg !1659
  %tobool = icmp ne ptr %1, null, !dbg !1658
  br i1 %tobool, label %if.end, label %if.then, !dbg !1660

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %mutex_id.addr, align 4, !dbg !1661
  %idxprom1 = zext i32 %2 to i64, !dbg !1661
  %arrayidx2 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom1, !dbg !1661
  %mutex3 = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx2, i32 0, i32 0, !dbg !1661
  %call = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %mutex3) #14, !dbg !1661
  store i32 %call, ptr %status, align 4, !dbg !1663
  %3 = load i32, ptr %mutex_id.addr, align 4, !dbg !1664
  %idxprom4 = zext i32 %3 to i64, !dbg !1665
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !1665
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx5, i32 0, i32 2, !dbg !1666
  store i64 0, ptr %thread_id, align 8, !dbg !1667
  %4 = load i32, ptr %mutex_id.addr, align 4, !dbg !1668
  %idxprom6 = zext i32 %4 to i64, !dbg !1669
  %arrayidx7 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom6, !dbg !1669
  %use_count = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx7, i32 0, i32 1, !dbg !1670
  store i32 0, ptr %use_count, align 8, !dbg !1671
  br label %if.end, !dbg !1672

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %status, align 4, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1674
  ret i32 %5, !dbg !1673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #3 align 16 !dbg !1675 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1680, metadata !DIExpression()), !dbg !1691
  %0 = load i64, ptr %size.addr, align 8, !dbg !1692
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1681, metadata !DIExpression()), !dbg !1693
  br label %do.body, !dbg !1693

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1683, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1686, metadata !DIExpression()), !dbg !1694
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1694
  %conv = zext i1 %cmp to i32, !dbg !1694
  store i32 1, ptr %tmp, align 4, !dbg !1694
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1695
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1695
  %1 = load i32, ptr %tmp, align 4, !dbg !1694
  %call = call i64 @arch_local_save_flags() #14, !dbg !1695
  store i64 %call, ptr %_flags, align 8, !dbg !1695
  br label %do.cond, !dbg !1695

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1695

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1687, metadata !DIExpression()), !dbg !1696
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1690, metadata !DIExpression()), !dbg !1696
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1696
  %conv6 = zext i1 %cmp5 to i32, !dbg !1696
  store i32 1, ptr %tmp7, align 4, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1697
  %2 = load i32, ptr %tmp7, align 4, !dbg !1696
  %3 = load i64, ptr %_flags, align 8, !dbg !1697
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1697
  store i32 %call9, ptr %tmp8, align 4, !dbg !1697
  %4 = load i32, ptr %tmp8, align 4, !dbg !1697
  store i32 %4, ptr %tmp1, align 4, !dbg !1695
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1698
  %5 = load i32, ptr %tmp1, align 4, !dbg !1693
  %tobool = icmp ne i32 %5, 0, !dbg !1698
  %6 = zext i1 %tobool to i64, !dbg !1698
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1698
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1699
  ret ptr %call10, !dbg !1700
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !1701 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1706, metadata !DIExpression()), !dbg !1707
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1708
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1709
  ret ptr %1, !dbg !1710
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1711 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1716 dso_local i32 @acpi_ut_create_rw_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_mutex_terminate() #0 align 16 !dbg !1726 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1730, metadata !DIExpression()), !dbg !1732
  store i32 0, ptr %i, align 4, !dbg !1733
  br label %for.cond, !dbg !1735

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1736
  %cmp = icmp ult i32 %0, 6, !dbg !1738
  br i1 %cmp, label %for.body, label %for.end, !dbg !1739

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !1740
  call void @acpi_ut_delete_mutex(i32 noundef %1) #14, !dbg !1742
  br label %for.inc, !dbg !1743

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !1744
  %inc = add i32 %2, 1, !dbg !1744
  store i32 %inc, ptr %i, align 4, !dbg !1744
  br label %for.cond, !dbg !1745, !llvm.loop !1746

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !1748
  %call = call i32 @acpi_os_delete_semaphore(ptr noundef %3) #14, !dbg !1748
  %4 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1749
  call void @acpi_os_delete_lock(ptr noundef %4) #14, !dbg !1750
  %5 = load ptr, ptr @acpi_gbl_hardware_lock, align 8, !dbg !1751
  call void @acpi_os_delete_raw_lock(ptr noundef %5) #14, !dbg !1752
  %6 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1753
  call void @acpi_os_delete_lock(ptr noundef %6) #14, !dbg !1754
  call void @acpi_ut_delete_rw_lock(ptr noundef @acpi_gbl_namespace_rw_lock) #14, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1756
  ret void, !dbg !1756
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ut_delete_mutex(i32 noundef %mutex_id) #0 align 16 !dbg !1757 {
entry:
  %mutex_id.addr = alloca i32, align 4
  store i32 %mutex_id, ptr %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mutex_id.addr, metadata !1761, metadata !DIExpression()), !dbg !1762
  %0 = load i32, ptr %mutex_id.addr, align 4, !dbg !1763
  %idxprom = zext i32 %0 to i64, !dbg !1763
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1763
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx, i32 0, i32 0, !dbg !1763
  %1 = load ptr, ptr %mutex, align 8, !dbg !1763
  %call = call i32 @acpi_os_delete_semaphore(ptr noundef %1) #14, !dbg !1763
  %2 = load i32, ptr %mutex_id.addr, align 4, !dbg !1764
  %idxprom1 = zext i32 %2 to i64, !dbg !1765
  %arrayidx2 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom1, !dbg !1765
  %mutex3 = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx2, i32 0, i32 0, !dbg !1766
  store ptr null, ptr %mutex3, align 8, !dbg !1767
  %3 = load i32, ptr %mutex_id.addr, align 4, !dbg !1768
  %idxprom4 = zext i32 %3 to i64, !dbg !1769
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !1769
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx5, i32 0, i32 2, !dbg !1770
  store i64 0, ptr %thread_id, align 8, !dbg !1771
  ret void, !dbg !1772
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1773 dso_local i32 @acpi_os_delete_semaphore(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1776 dso_local void @acpi_os_delete_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_delete_raw_lock(ptr noundef %handle) #3 align 16 !dbg !1779 {
entry:
  %handle.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1785
  call void @acpi_os_free(ptr noundef %0) #14, !dbg !1785
  ret void, !dbg !1786
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1787 dso_local void @acpi_ut_delete_rw_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_acquire_mutex(i32 noundef %mutex_id) #0 align 16 !dbg !1790 {
entry:
  %retval = alloca i32, align 4
  %mutex_id.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %this_thread_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mutex_id, ptr %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mutex_id.addr, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1793, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_thread_id) #13, !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %this_thread_id, metadata !1794, metadata !DIExpression()), !dbg !1799
  %0 = load i32, ptr %mutex_id.addr, align 4, !dbg !1800
  %cmp = icmp ugt i32 %0, 5, !dbg !1802
  br i1 %cmp, label %if.then, label %if.end, !dbg !1803

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1804

if.end:                                           ; preds = %entry
  %call = call i64 @acpi_os_get_thread_id() #14, !dbg !1806
  store i64 %call, ptr %this_thread_id, align 8, !dbg !1807
  %1 = load i32, ptr %mutex_id.addr, align 4, !dbg !1808
  %idxprom = zext i32 %1 to i64, !dbg !1808
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1808
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx, i32 0, i32 0, !dbg !1808
  %2 = load ptr, ptr %mutex, align 8, !dbg !1808
  %call1 = call i32 @acpi_os_wait_semaphore(ptr noundef %2, i32 noundef 1, i16 noundef zeroext -1) #14, !dbg !1808
  store i32 %call1, ptr %status, align 4, !dbg !1809
  %3 = load i32, ptr %status, align 4, !dbg !1810
  %tobool = icmp ne i32 %3, 0, !dbg !1810
  br i1 %tobool, label %if.else, label %if.then2, !dbg !1812

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %mutex_id.addr, align 4, !dbg !1813
  %idxprom3 = zext i32 %4 to i64, !dbg !1815
  %arrayidx4 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom3, !dbg !1815
  %use_count = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx4, i32 0, i32 1, !dbg !1816
  %5 = load i32, ptr %use_count, align 8, !dbg !1817
  %inc = add i32 %5, 1, !dbg !1817
  store i32 %inc, ptr %use_count, align 8, !dbg !1817
  %6 = load i64, ptr %this_thread_id, align 8, !dbg !1818
  %7 = load i32, ptr %mutex_id.addr, align 4, !dbg !1819
  %idxprom5 = zext i32 %7 to i64, !dbg !1820
  %arrayidx6 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom5, !dbg !1820
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx6, i32 0, i32 2, !dbg !1821
  store i64 %6, ptr %thread_id, align 8, !dbg !1822
  br label %if.end8, !dbg !1823

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %status, align 4, !dbg !1824
  %9 = load i64, ptr %this_thread_id, align 8, !dbg !1824
  %conv = trunc i64 %9 to i32, !dbg !1824
  %10 = load i32, ptr %mutex_id.addr, align 4, !dbg !1824
  %call7 = call ptr @acpi_ut_get_mutex_name(i32 noundef %10) #14, !dbg !1824
  %11 = load i32, ptr %mutex_id.addr, align 4, !dbg !1824
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 252, i32 noundef %8, ptr noundef @.str, i32 noundef %conv, ptr noundef %call7, i32 noundef %11) #14, !dbg !1824
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %12 = load i32, ptr %status, align 4, !dbg !1826
  store i32 %12, ptr %retval, align 4, !dbg !1827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1827

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_thread_id) #13, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1828
  %13 = load i32, ptr %retval, align 4, !dbg !1828
  ret i32 %13, !dbg !1828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_os_get_thread_id() #3 align 16 !dbg !1829 {
entry:
  %call = call ptr @get_current() #14, !dbg !1832
  %0 = ptrtoint ptr %call to i64, !dbg !1833
  ret i64 %0, !dbg !1834
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1835 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1838 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1843 dso_local ptr @acpi_ut_get_mutex_name(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_release_mutex(i32 noundef %mutex_id) #0 align 16 !dbg !1846 {
entry:
  %retval = alloca i32, align 4
  %mutex_id.addr = alloca i32, align 4
  store i32 %mutex_id, ptr %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mutex_id.addr, metadata !1848, metadata !DIExpression()), !dbg !1849
  %0 = load i32, ptr %mutex_id.addr, align 4, !dbg !1850
  %cmp = icmp ugt i32 %0, 5, !dbg !1852
  br i1 %cmp, label %if.then, label %if.end, !dbg !1853

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1854
  br label %return, !dbg !1854

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mutex_id.addr, align 4, !dbg !1856
  %idxprom = zext i32 %1 to i64, !dbg !1858
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1858
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx, i32 0, i32 2, !dbg !1859
  %2 = load i64, ptr %thread_id, align 8, !dbg !1859
  %cmp1 = icmp eq i64 %2, 0, !dbg !1860
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1861

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %mutex_id.addr, align 4, !dbg !1862
  %call = call ptr @acpi_ut_get_mutex_name(i32 noundef %3) #14, !dbg !1862
  %4 = load i32, ptr %mutex_id.addr, align 4, !dbg !1862
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 289, ptr noundef @.str.1, ptr noundef %call, i32 noundef %4) #14, !dbg !1862
  store i32 20, ptr %retval, align 4, !dbg !1864
  br label %return, !dbg !1864

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %mutex_id.addr, align 4, !dbg !1865
  %idxprom4 = zext i32 %5 to i64, !dbg !1866
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !1866
  %thread_id6 = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx5, i32 0, i32 2, !dbg !1867
  store i64 0, ptr %thread_id6, align 8, !dbg !1868
  %6 = load i32, ptr %mutex_id.addr, align 4, !dbg !1869
  %idxprom7 = zext i32 %6 to i64, !dbg !1869
  %arrayidx8 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom7, !dbg !1869
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx8, i32 0, i32 0, !dbg !1869
  %7 = load ptr, ptr %mutex, align 8, !dbg !1869
  %call9 = call i32 @acpi_os_signal_semaphore(ptr noundef %7, i32 noundef 1) #14, !dbg !1869
  store i32 0, ptr %retval, align 4, !dbg !1870
  br label %return, !dbg !1870

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !1871
  ret i32 %8, !dbg !1871
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1872 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1875 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1878 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1882, metadata !DIExpression()), !dbg !1887
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1883, metadata !DIExpression()), !dbg !1888
  %0 = load i64, ptr %size.addr, align 8, !dbg !1889
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1890
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1891

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1892
  %tobool = icmp ne i64 %2, 0, !dbg !1892
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1893

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1884, metadata !DIExpression()), !dbg !1895
  %3 = load i64, ptr %size.addr, align 8, !dbg !1896
  %cmp = icmp ugt i64 %3, 8192, !dbg !1898
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1899

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1900
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1901
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1902
  store ptr %call, ptr %retval, align 8, !dbg !1903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1903

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1904
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1904
  store i32 %call2, ptr %index, align 4, !dbg !1905
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1906
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1907
  %9 = ptrtoint ptr %8 to i64, !dbg !1907
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1908
  %idxprom = zext i32 %call3 to i64, !dbg !1909
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1909
  %10 = load i32, ptr %index, align 4, !dbg !1910
  %idxprom4 = zext i32 %10 to i64, !dbg !1909
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1909
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1909
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1911
  %13 = load i64, ptr %size.addr, align 8, !dbg !1912
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1913
  store ptr %call6, ptr %retval, align 8, !dbg !1914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1914

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1915
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1916
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1917
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1918
  store ptr %call8, ptr %retval, align 8, !dbg !1919
  br label %return, !dbg !1919

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1920
  ret ptr %16, !dbg !1920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #4 align 16 !dbg !1921 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1925
  ret i64 %call, !dbg !1926
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #4 align 16 !dbg !1927 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1931, metadata !DIExpression()), !dbg !1932
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1933
  %and = and i64 %0, 512, !dbg !1934
  %tobool = icmp ne i64 %and, 0, !dbg !1935
  %lnot = xor i1 %tobool, true, !dbg !1935
  %lnot.ext = zext i1 %lnot to i32, !dbg !1935
  ret i32 %lnot.ext, !dbg !1936
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1937 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !1938 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1942, metadata !DIExpression()), !dbg !1944
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1943, metadata !DIExpression()), !dbg !1945
  %0 = load i64, ptr %size.addr, align 8, !dbg !1946
  %tobool = icmp ne i64 %0, 0, !dbg !1946
  br i1 %tobool, label %if.end, label %if.then, !dbg !1948

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1949
  br label %return, !dbg !1949

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1950
  %cmp = icmp ule i64 %1, 8, !dbg !1952
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1953

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1954
  br label %return, !dbg !1954

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1955
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1957
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1958

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1959
  %cmp4 = icmp ule i64 %3, 96, !dbg !1960
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1961

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1962
  br label %return, !dbg !1962

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1963
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1965
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1966

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1967
  %cmp9 = icmp ule i64 %5, 192, !dbg !1968
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1969

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1970
  br label %return, !dbg !1970

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1971
  %cmp12 = icmp ule i64 %6, 8, !dbg !1973
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1974

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1975
  br label %return, !dbg !1975

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1976
  %cmp15 = icmp ule i64 %7, 16, !dbg !1978
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1979

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1980
  br label %return, !dbg !1980

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1981
  %cmp18 = icmp ule i64 %8, 32, !dbg !1983
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1984

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1985
  br label %return, !dbg !1985

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1986
  %cmp21 = icmp ule i64 %9, 64, !dbg !1988
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1989

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1990
  br label %return, !dbg !1990

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1991
  %cmp24 = icmp ule i64 %10, 128, !dbg !1993
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1994

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1995
  br label %return, !dbg !1995

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1996
  %cmp27 = icmp ule i64 %11, 256, !dbg !1998
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1999

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2000
  br label %return, !dbg !2000

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2001
  %cmp30 = icmp ule i64 %12, 512, !dbg !2003
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2004

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2005
  br label %return, !dbg !2005

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2006
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2008
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2009

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2010
  br label %return, !dbg !2010

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2011
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2013
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2014

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2015
  br label %return, !dbg !2015

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2016
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2018
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2019

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2020
  br label %return, !dbg !2020

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2021
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2023
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2024

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2025
  br label %return, !dbg !2025

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2026
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2028
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2029

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2030
  br label %return, !dbg !2030

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2031
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2033
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2034

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2035
  br label %return, !dbg !2035

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2036
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2038
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2039

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2040
  br label %return, !dbg !2040

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2041
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2043
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2044

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2045
  br label %return, !dbg !2045

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2046
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2048
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2049

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2050
  br label %return, !dbg !2050

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2051
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2053
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2054

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2055
  br label %return, !dbg !2055

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2056
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2058
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2059

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2060
  br label %return, !dbg !2060

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2061
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2063
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2064

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2065
  br label %return, !dbg !2065

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2066, !range !2068, !noundef !438
  %tobool69 = trunc i8 %25 to i1, !dbg !2066
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2069

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2070

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2071, !srcloc !2074
  unreachable, !dbg !2071

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2075

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2076

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2077

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2079

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2077

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #13, !dbg !2081, !srcloc !2083
  br label %do.end75, !dbg !2081

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2077

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2084
  br label %return, !dbg !2084

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2085
  ret i32 %26, !dbg !2085
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2086 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !2092 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2096, metadata !DIExpression()), !dbg !2098
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2097, metadata !DIExpression()), !dbg !2099
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2100
  %and = and i32 %0, 17, !dbg !2100
  %cmp = icmp eq i32 %and, 0, !dbg !2100
  %lnot = xor i1 %cmp, true, !dbg !2100
  %lnot1 = xor i1 %lnot, true, !dbg !2100
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2100
  %conv = sext i32 %lnot.ext to i64, !dbg !2100
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2100
  %tobool = icmp ne i64 %expval, 0, !dbg !2100
  br i1 %tobool, label %if.then, label %if.end, !dbg !2102

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2103
  br label %return, !dbg !2103

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2104
  %and2 = and i32 %1, 1, !dbg !2106
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2106
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2107

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2108
  br label %return, !dbg !2108

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2109
  br label %return, !dbg !2109

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2111
  ret i32 %2, !dbg !2111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2112 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2113 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #4 align 16 !dbg !2114 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2119, !srcloc !2120
  %0 = load i64, ptr %flags, align 8, !dbg !2121
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2122
  ret i64 %0, !dbg !2123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !2124 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !2130
  call void @kfree(ptr noundef %0) #14, !dbg !2131
  ret void, !dbg !2132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2133 dso_local void @kfree(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !2138 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2149
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2143, metadata !DIExpression()), !dbg !2149
  br label %do.body, !dbg !2149

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2145, metadata !DIExpression()), !dbg !2150
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2150
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2149
  br label %do.cond, !dbg !2150

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2150

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !2151
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2147, metadata !DIExpression()), !dbg !2151
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !2151, !srcloc !2152
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2151
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2151
  %3 = inttoptr i64 %2 to ptr, !dbg !2151
  store ptr %3, ptr %tmp, align 8, !dbg !2151
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !2149
  %4 = load ptr, ptr %tmp, align 8, !dbg !2151
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2149
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2149
  store ptr %5, ptr %tmp1, align 8, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2153
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2149
  ret ptr %6, !dbg !2154
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!llvm.ident = !{!1545}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 12, type: !1535, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utmutex.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utmutex\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utmutex.ll drivers/acpi/acpica/utmutex.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !1519, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utmutex.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86676040cffc32b122bc6a62e719d26e")
!4 = !{!5, !11, !21, !26, !32}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "TT_NONE", value: 0)
!30 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!31 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !33, line: 51, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!36 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!37 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!38 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!39 = !{!40, !47, !48, !42, !50, !52, !53, !54, !55}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !41, line: 127, baseType: !42)
!41 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !41, line: 421, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 21, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !7)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !51, line: 154, baseType: !7)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !57, line: 746, size: 58368, elements: !58)
!57 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!58 = !{!59, !67, !68, !69, !80, !81, !82, !83, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !172, !183, !310, !314, !317, !348, !349, !350, !351, !362, !364, !365, !366, !367, !368, !369, !380, !381, !384, !385, !386, !387, !388, !389, !390, !391, !398, !399, !406, !407, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !687, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !743, !745, !746, !747, !759, !761, !762, !763, !764, !765, !766, !772, !773, !774, !775, !776, !777, !778, !792, !798, !802, !803, !804, !807, !812, !815, !822, !827, !830, !833, !836, !839, !842, !845, !851, !852, !853, !859, !860, !864, !865, !866, !869, !876, !877, !886, !897, !898, !899, !900, !901, !906, !907, !908, !911, !912, !915, !918, !921, !924, !927, !928, !1015, !1026, !1027, !1028, !1029, !1035, !1040, !1041, !1042, !1045, !1046, !1049, !1052, !1053, !1056, !1057, !1058, !1061, !1062, !1063, !1066, !1067, !1068, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1100, !1103, !1171, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1183, !1255, !1257, !1258, !1259, !1260, !1261, !1273, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1290, !1291, !1292}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !56, file: !57, line: 752, baseType: !60, size: 192)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !61, line: 56, size: 192, elements: !62)
!61 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!62 = !{!63, !64, !65, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !61, line: 57, baseType: !52, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !60, file: !61, line: 58, baseType: !52, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !60, file: !61, line: 59, baseType: !48, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !60, file: !61, line: 61, baseType: !48, size: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !56, file: !57, line: 754, baseType: !7, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !56, file: !57, line: 767, baseType: !53, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !56, file: !57, line: 768, baseType: !70, size: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !71, line: 113, baseType: !72)
!71 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !71, line: 111, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !72, file: !71, line: 112, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !51, line: 174, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 172, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !76, file: !51, line: 173, baseType: !79, size: 32)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !57, line: 770, baseType: !7, size: 32, offset: 352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !56, file: !57, line: 771, baseType: !7, size: 32, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !56, file: !57, line: 774, baseType: !79, size: 32, offset: 416)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !56, file: !57, line: 775, baseType: !84, size: 128, offset: 448)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !85, line: 58, size: 128, elements: !86)
!85 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!86 = !{!87, !93, !98, !102}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !84, file: !85, line: 59, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !89, line: 60, size: 64, elements: !90)
!89 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !89, line: 61, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !85, line: 60, baseType: !94, size: 32, offset: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !85, line: 60, size: 32, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !94, file: !85, line: 61, baseType: !7, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !94, file: !85, line: 62, baseType: !75, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !84, file: !85, line: 65, baseType: !99, size: 16, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !84, file: !85, line: 65, baseType: !99, size: 16, offset: 112)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !56, file: !57, line: 776, baseType: !7, size: 32, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !56, file: !57, line: 777, baseType: !52, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !56, file: !57, line: 778, baseType: !55, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !56, file: !57, line: 787, baseType: !79, size: 32, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !56, file: !57, line: 788, baseType: !79, size: 32, offset: 800)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !56, file: !57, line: 790, baseType: !79, size: 32, offset: 832)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !56, file: !57, line: 792, baseType: !79, size: 32, offset: 864)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !56, file: !57, line: 793, baseType: !79, size: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !56, file: !57, line: 794, baseType: !79, size: 32, offset: 928)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !56, file: !57, line: 795, baseType: !7, size: 32, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !56, file: !57, line: 797, baseType: !114, size: 2048, offset: 1024)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !57, line: 551, size: 2048, elements: !115)
!115 = !{!116, !121, !129, !130, !131, !137, !138, !139, !140, !141, !142, !146, !147, !148, !149, !151, !154, !155, !156}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !114, file: !57, line: 553, baseType: !117, size: 128)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !57, line: 411, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !117, file: !57, line: 412, baseType: !52, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !117, file: !57, line: 413, baseType: !48, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !114, file: !57, line: 554, baseType: !122, size: 192, align: 64, offset: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !123, line: 5, size: 192, align: 64, elements: !124)
!123 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!124 = !{!125, !126, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !122, file: !123, line: 6, baseType: !52, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !122, file: !123, line: 7, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !122, file: !123, line: 8, baseType: !127, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !114, file: !57, line: 555, baseType: !42, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !114, file: !57, line: 556, baseType: !42, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !114, file: !57, line: 558, baseType: !132, size: 128, offset: 448)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !51, line: 190, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !51, line: 191, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !51, line: 191, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !114, file: !57, line: 559, baseType: !7, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !114, file: !57, line: 561, baseType: !42, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !114, file: !57, line: 562, baseType: !42, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !114, file: !57, line: 563, baseType: !42, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !114, file: !57, line: 564, baseType: !42, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !114, file: !57, line: 565, baseType: !143, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !43, line: 22, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !45, line: 30, baseType: !145)
!145 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !114, file: !57, line: 566, baseType: !42, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !114, file: !57, line: 568, baseType: !42, size: 64, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !114, file: !57, line: 571, baseType: !79, size: 32, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !57, line: 572, baseType: !150, size: 64, offset: 1152)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !114, file: !57, line: 574, baseType: !152, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !57, line: 49, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !114, file: !57, line: 576, baseType: !152, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !114, file: !57, line: 578, baseType: !52, size: 64, offset: 1344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !114, file: !57, line: 588, baseType: !157, size: 512, align: 512, offset: 1536)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !57, line: 497, size: 512, align: 512, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !157, file: !57, line: 498, baseType: !42, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !157, file: !57, line: 499, baseType: !42, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !157, file: !57, line: 500, baseType: !42, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !157, file: !57, line: 501, baseType: !48, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !157, file: !57, line: 502, baseType: !48, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !157, file: !57, line: 503, baseType: !52, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !157, file: !57, line: 504, baseType: !52, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !157, file: !57, line: 505, baseType: !52, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !157, file: !57, line: 506, baseType: !168, size: 64, align: 64, offset: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !57, line: 445, size: 64, align: 64, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !168, file: !57, line: 446, baseType: !7, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !168, file: !57, line: 447, baseType: !7, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !56, file: !57, line: 798, baseType: !173, size: 384, offset: 3072)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !57, line: 592, size: 384, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !173, file: !57, line: 593, baseType: !132, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !173, file: !57, line: 594, baseType: !52, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !173, file: !57, line: 595, baseType: !52, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !173, file: !57, line: 596, baseType: !7, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !173, file: !57, line: 597, baseType: !101, size: 16, offset: 288)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !173, file: !57, line: 598, baseType: !101, size: 16, offset: 304)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !173, file: !57, line: 600, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !56, file: !57, line: 799, baseType: !184, size: 1792, offset: 3456)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !57, line: 610, size: 1792, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !307, !308}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !184, file: !57, line: 611, baseType: !122, size: 192, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !184, file: !57, line: 618, baseType: !42, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !184, file: !57, line: 619, baseType: !42, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !184, file: !57, line: 620, baseType: !42, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !184, file: !57, line: 621, baseType: !42, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !184, file: !57, line: 622, baseType: !42, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !184, file: !57, line: 629, baseType: !143, size: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !184, file: !57, line: 630, baseType: !42, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !57, line: 631, baseType: !7, size: 32, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !184, file: !57, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !184, file: !57, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !184, file: !57, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !184, file: !57, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !184, file: !57, line: 662, baseType: !200, size: 512, offset: 704)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !201)
!201 = !{!202, !210, !211, !216, !303, !304, !305, !306}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !22, line: 119, baseType: !203, size: 256)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !204, line: 9, size: 256, elements: !205)
!204 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !204, line: 10, baseType: !122, size: 192, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !203, file: !204, line: 11, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !209, line: 29, baseType: !143)
!209 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !200, file: !22, line: 120, baseType: !208, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !200, file: !22, line: 121, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!21, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !200, file: !22, line: 122, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !219)
!219 = !{!220, !271, !272, !276, !286, !287, !298, !302}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !218, file: !22, line: 160, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !223)
!223 = !{!224, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !222, file: !22, line: 216, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !226, line: 23, baseType: !227)
!226 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !226, line: 14, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !227, file: !226, line: 15, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !231, line: 44, baseType: !232)
!231 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !231, line: 14, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 15, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 15, size: 32, elements: !236)
!236 = !{!237, !238, !246}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !235, file: !231, line: 16, baseType: !75, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !231, line: 24, baseType: !239, size: 16)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !231, line: 24, size: 16, elements: !240)
!240 = !{!241, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !239, file: !231, line: 25, baseType: !242, size: 8)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 17, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !244)
!244 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !239, file: !231, line: 26, baseType: !242, size: 8, offset: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !231, line: 28, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !231, line: 28, size: 32, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !247, file: !231, line: 29, baseType: !99, size: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !247, file: !231, line: 30, baseType: !99, size: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !222, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !222, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !222, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !222, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !222, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !222, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !222, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !222, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !222, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !222, file: !22, line: 227, baseType: !101, size: 16, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !222, file: !22, line: 228, baseType: !101, size: 16, offset: 208)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !222, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !222, file: !22, line: 235, baseType: !208, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !222, file: !22, line: 236, baseType: !215, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !222, file: !22, line: 237, baseType: !208, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !222, file: !22, line: 238, baseType: !215, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !222, file: !22, line: 239, baseType: !268, size: 4096, align: 512, offset: 512)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 4096, align: 512, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !218, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !218, file: !22, line: 162, baseType: !273, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !51, line: 32, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !275, line: 96, baseType: !79)
!275 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !218, file: !22, line: 163, baseType: !277, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !278, line: 274, baseType: !279)
!278 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !278, line: 274, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !279, file: !278, line: 274, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !278, line: 69, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !278, line: 64, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !283, file: !278, line: 65, baseType: !7, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !218, file: !22, line: 164, baseType: !215, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !218, file: !22, line: 165, baseType: !288, size: 128, offset: 256)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !204, line: 14, size: 128, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !288, file: !204, line: 15, baseType: !291, size: 128)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !123, line: 26, size: 128, elements: !292)
!292 = !{!293, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !291, file: !123, line: 27, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !123, line: 12, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !294, file: !123, line: 13, baseType: !127, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !291, file: !123, line: 28, baseType: !127, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !218, file: !22, line: 166, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!208}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !218, file: !22, line: 167, baseType: !208, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !200, file: !22, line: 123, baseType: !242, size: 8, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !200, file: !22, line: 124, baseType: !242, size: 8, offset: 456)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !200, file: !22, line: 125, baseType: !242, size: 8, offset: 464)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !200, file: !22, line: 126, baseType: !242, size: 8, offset: 472)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !184, file: !57, line: 671, baseType: !200, size: 512, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !184, file: !57, line: 679, baseType: !309, size: 64, offset: 1728)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !56, file: !57, line: 800, baseType: !311, size: 64, offset: 5248)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !57, line: 800, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !56, file: !57, line: 809, baseType: !315, size: 64, offset: 5312)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !57, line: 70, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !56, file: !57, line: 825, baseType: !318, size: 2048, align: 512, offset: 5632)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !57, line: 509, size: 2048, align: 512, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !318, file: !57, line: 511, baseType: !42, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !318, file: !57, line: 512, baseType: !42, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !318, file: !57, line: 513, baseType: !42, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !318, file: !57, line: 514, baseType: !42, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !318, file: !57, line: 515, baseType: !42, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !318, file: !57, line: 516, baseType: !42, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !318, file: !57, line: 518, baseType: !42, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !318, file: !57, line: 519, baseType: !42, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !318, file: !57, line: 520, baseType: !143, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !318, file: !57, line: 522, baseType: !42, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !318, file: !57, line: 523, baseType: !42, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !318, file: !57, line: 524, baseType: !143, size: 64, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !318, file: !57, line: 526, baseType: !143, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !318, file: !57, line: 527, baseType: !42, size: 64, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !318, file: !57, line: 529, baseType: !42, size: 64, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !318, file: !57, line: 530, baseType: !42, size: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !318, file: !57, line: 531, baseType: !42, size: 64, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !318, file: !57, line: 532, baseType: !42, size: 64, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !318, file: !57, line: 533, baseType: !42, size: 64, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !318, file: !57, line: 535, baseType: !42, size: 64, offset: 1216)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !318, file: !57, line: 536, baseType: !42, size: 64, offset: 1280)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !318, file: !57, line: 537, baseType: !42, size: 64, offset: 1344)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !318, file: !57, line: 538, baseType: !42, size: 64, offset: 1408)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !318, file: !57, line: 539, baseType: !42, size: 64, offset: 1472)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !318, file: !57, line: 540, baseType: !42, size: 64, offset: 1536)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !318, file: !57, line: 541, baseType: !42, size: 64, offset: 1600)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !318, file: !57, line: 542, baseType: !42, size: 64, offset: 1664)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !318, file: !57, line: 543, baseType: !42, size: 64, offset: 1728)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !56, file: !57, line: 833, baseType: !7, size: 32, offset: 7680)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !56, file: !57, line: 836, baseType: !7, size: 32, offset: 7712)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !56, file: !57, line: 837, baseType: !79, size: 32, offset: 7744)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !56, file: !57, line: 838, baseType: !352, size: 64, offset: 7808)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !355, line: 19, baseType: !356)
!355 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !355, line: 19, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !356, file: !355, line: 19, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 1)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !56, file: !57, line: 839, baseType: !363, size: 64, offset: 7872)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !56, file: !57, line: 840, baseType: !354, size: 64, offset: 7936)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !56, file: !57, line: 841, baseType: !53, size: 64, offset: 8000)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !56, file: !57, line: 843, baseType: !101, size: 16, offset: 8064)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !56, file: !57, line: 845, baseType: !101, size: 16, offset: 8080)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !56, file: !57, line: 848, baseType: !79, size: 32, offset: 8096)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !56, file: !57, line: 849, baseType: !370, size: 32, offset: 8128)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !57, line: 718, size: 32, elements: !371)
!371 = !{!372, !379}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !370, file: !57, line: 724, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !57, line: 719, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !373, file: !57, line: 720, baseType: !242, size: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !373, file: !57, line: 721, baseType: !242, size: 8, offset: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !373, file: !57, line: 722, baseType: !242, size: 8, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !373, file: !57, line: 723, baseType: !242, size: 8, offset: 24)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !370, file: !57, line: 725, baseType: !48, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !56, file: !57, line: 850, baseType: !132, size: 128, offset: 8192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !56, file: !57, line: 851, baseType: !382, size: 64, offset: 8320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !57, line: 60, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !56, file: !57, line: 855, baseType: !52, size: 64, offset: 8384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !56, file: !57, line: 856, baseType: !242, size: 8, offset: 8448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !56, file: !57, line: 857, baseType: !242, size: 8, offset: 8456)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !56, file: !57, line: 858, baseType: !79, size: 32, offset: 8480)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !56, file: !57, line: 859, baseType: !132, size: 128, offset: 8512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !56, file: !57, line: 860, baseType: !79, size: 32, offset: 8640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !56, file: !57, line: 861, baseType: !132, size: 128, offset: 8704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !56, file: !57, line: 873, baseType: !392, size: 256, offset: 8832)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !57, line: 376, size: 256, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !392, file: !57, line: 381, baseType: !52, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !392, file: !57, line: 384, baseType: !46, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !392, file: !57, line: 389, baseType: !46, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !392, file: !57, line: 392, baseType: !46, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !56, file: !57, line: 875, baseType: !132, size: 128, offset: 9088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !56, file: !57, line: 877, baseType: !400, size: 320, offset: 9216)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !401, line: 86, size: 320, elements: !402)
!401 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!402 = !{!403, !404, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !400, file: !401, line: 87, baseType: !79, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !400, file: !401, line: 88, baseType: !132, size: 128, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !400, file: !401, line: 89, baseType: !132, size: 128, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !56, file: !57, line: 878, baseType: !122, size: 192, align: 64, offset: 9536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !56, file: !57, line: 881, baseType: !408, size: 64, offset: 9728)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !410, line: 733, size: 10240, elements: !411)
!410 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!411 = !{!412, !603}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !410, line: 734, baseType: !413, size: 10240)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !410, line: 734, size: 10240, elements: !414)
!414 = !{!415, !419, !441, !448, !449, !450, !451, !452, !453, !461, !462, !463, !469, !470, !477, !478, !479, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !520, !534, !537, !569, !570, !571, !574, !578, !579, !582, !583, !584, !590, !591}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !410, line: 739, baseType: !416, size: 512, align: 512)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !410, line: 739, size: 512, align: 512, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !416, file: !410, line: 747, baseType: !75, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !413, file: !410, line: 750, baseType: !420, size: 128, offset: 512)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !421, line: 218, size: 128, elements: !422)
!421 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!422 = !{!423, !439, !440}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 219, baseType: !424, size: 32)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 219, size: 32, elements: !425)
!425 = !{!426, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !424, file: !421, line: 220, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !428, line: 29, baseType: !429)
!428 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !428, line: 17, size: 32, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !428, line: 18, baseType: !432, size: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !428, line: 18, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !432, file: !428, line: 19, baseType: !227, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !424, file: !421, line: 221, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !421, line: 197, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 197, elements: !438)
!438 = !{}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !420, file: !421, line: 223, baseType: !7, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !420, file: !421, line: 224, baseType: !53, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !413, file: !410, line: 752, baseType: !442, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!52, !445, !52, !52, !52, !52}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !447, line: 537, flags: DIFlagFwdDecl)
!447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !413, file: !410, line: 756, baseType: !52, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !413, file: !410, line: 757, baseType: !52, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !413, file: !410, line: 760, baseType: !52, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !413, file: !410, line: 761, baseType: !52, size: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !413, file: !410, line: 763, baseType: !52, size: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !413, file: !410, line: 764, baseType: !454, size: 64, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !447, line: 299, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 299, size: 64, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !456, file: !447, line: 299, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !460, line: 18, baseType: !52)
!460 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !413, file: !410, line: 773, baseType: !75, size: 32, offset: 1088)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !413, file: !410, line: 785, baseType: !75, size: 32, offset: 1120)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !413, file: !410, line: 795, baseType: !464, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !410, line: 726, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !465, file: !410, line: 727, baseType: !42, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !465, file: !410, line: 728, baseType: !79, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !413, file: !410, line: 801, baseType: !52, size: 64, offset: 1216)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !413, file: !410, line: 804, baseType: !471, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !472, line: 13, baseType: !473)
!472 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !51, line: 181, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 179, size: 64, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !474, file: !51, line: 180, baseType: !143, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !413, file: !410, line: 806, baseType: !79, size: 32, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !413, file: !410, line: 808, baseType: !427, size: 32, offset: 1376)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !413, file: !410, line: 823, baseType: !480, size: 320, offset: 1408)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !481, line: 48, size: 320, elements: !482)
!481 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!482 = !{!483, !484, !485, !490, !491}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !480, file: !481, line: 49, baseType: !471, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !480, file: !481, line: 55, baseType: !471, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !480, file: !481, line: 57, baseType: !486, size: 32, offset: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !487, line: 15, size: 32, elements: !488)
!487 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !486, file: !487, line: 20, baseType: !75, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !480, file: !481, line: 59, baseType: !225, size: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !480, file: !481, line: 60, baseType: !132, size: 128, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !413, file: !410, line: 825, baseType: !132, size: 128, offset: 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !413, file: !410, line: 845, baseType: !79, size: 32, offset: 1856)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !413, file: !410, line: 849, baseType: !52, size: 64, offset: 1920)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !413, file: !410, line: 850, baseType: !52, size: 64, offset: 1984)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !413, file: !410, line: 852, baseType: !52, size: 64, offset: 2048)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !413, file: !410, line: 853, baseType: !52, size: 64, offset: 2112)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !413, file: !410, line: 854, baseType: !473, size: 64, offset: 2176)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !413, file: !410, line: 855, baseType: !52, size: 64, offset: 2240)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !413, file: !410, line: 856, baseType: !52, size: 64, offset: 2304)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !413, file: !410, line: 857, baseType: !52, size: 64, offset: 2368)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !413, file: !410, line: 858, baseType: !52, size: 64, offset: 2432)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !413, file: !410, line: 865, baseType: !282, size: 32, offset: 2496)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !413, file: !410, line: 867, baseType: !427, size: 32, offset: 2528)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !413, file: !410, line: 869, baseType: !52, size: 64, offset: 2560)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !413, file: !410, line: 869, baseType: !52, size: 64, offset: 2624)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !413, file: !410, line: 869, baseType: !52, size: 64, offset: 2688)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !413, file: !410, line: 869, baseType: !52, size: 64, offset: 2752)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !413, file: !410, line: 870, baseType: !52, size: 64, offset: 2816)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !413, file: !410, line: 870, baseType: !52, size: 64, offset: 2880)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !413, file: !410, line: 870, baseType: !52, size: 64, offset: 2944)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !413, file: !410, line: 871, baseType: !52, size: 64, offset: 3008)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !413, file: !410, line: 871, baseType: !52, size: 64, offset: 3072)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !413, file: !410, line: 871, baseType: !52, size: 64, offset: 3136)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !413, file: !410, line: 871, baseType: !52, size: 64, offset: 3200)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !413, file: !410, line: 873, baseType: !517, size: 3328, offset: 3264)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3328, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 52)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !413, file: !410, line: 875, baseType: !521, size: 1280, offset: 6592)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 1280, elements: !532)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !523, line: 22, size: 320, elements: !524)
!523 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !523, line: 23, baseType: !225, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !523, line: 24, baseType: !143, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !522, file: !523, line: 26, baseType: !132, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !522, file: !523, line: 28, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !43, line: 20, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !45, line: 26, baseType: !79)
!532 = !{!533}
!533 = !DISubrange(count: 4)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !413, file: !410, line: 877, baseType: !535, size: 64, offset: 7872)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !410, line: 877, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !413, file: !410, line: 880, baseType: !538, size: 1088, offset: 7936)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !539, line: 72, baseType: !540)
!539 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 23, size: 1088, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !549, !550, !558, !559, !563, !564, !565}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !540, file: !539, line: 28, baseType: !42, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !540, file: !539, line: 38, baseType: !473, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !540, file: !539, line: 40, baseType: !52, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !540, file: !539, line: 43, baseType: !480, size: 320, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !540, file: !539, line: 44, baseType: !547, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !539, line: 44, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !539, line: 48, baseType: !52, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !540, file: !539, line: 59, baseType: !551, size: 256, offset: 640)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !552, line: 66, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!553 = !{!554, !555, !556, !557}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !552, line: 67, baseType: !471, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !551, file: !552, line: 68, baseType: !225, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !551, file: !552, line: 70, baseType: !486, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !551, file: !552, line: 72, baseType: !132, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !540, file: !539, line: 60, baseType: !53, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !540, file: !539, line: 61, baseType: !560, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !539, line: 61, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !540, file: !539, line: 63, baseType: !75, size: 32, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !540, file: !539, line: 69, baseType: !99, size: 16, offset: 1056)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !540, file: !539, line: 70, baseType: !566, size: 16, offset: 1072)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !43, line: 18, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !45, line: 23, baseType: !568)
!568 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !410, line: 882, baseType: !52, size: 64, offset: 9024)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !413, file: !410, line: 885, baseType: !427, size: 32, offset: 9088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !413, file: !410, line: 886, baseType: !572, size: 64, offset: 9152)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !410, line: 732, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !413, file: !410, line: 901, baseType: !575, size: 64, offset: 9216)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !577, line: 18, flags: DIFlagFwdDecl)
!577 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !413, file: !410, line: 904, baseType: !445, size: 64, offset: 9280)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !413, file: !410, line: 906, baseType: !580, size: 64, offset: 9344)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !410, line: 906, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !413, file: !410, line: 930, baseType: !75, size: 32, offset: 9408)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !413, file: !410, line: 933, baseType: !75, size: 32, offset: 9440)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !413, file: !410, line: 935, baseType: !585, size: 64, offset: 9472)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !33, line: 103, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !585, file: !33, line: 104, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !33, line: 101, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !413, file: !410, line: 940, baseType: !471, size: 64, offset: 9536)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !413, file: !410, line: 942, baseType: !592, size: 256, offset: 9600)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !593, line: 98, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!594 = !{!595, !596, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !592, file: !593, line: 99, baseType: !471, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !592, file: !593, line: 100, baseType: !132, size: 128, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !592, file: !593, line: 101, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !593, line: 21, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !409, file: !410, line: 986, baseType: !604, offset: 10240)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: -1)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !56, file: !57, line: 882, baseType: !408, size: 64, offset: 9792)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !56, file: !57, line: 884, baseType: !79, size: 32, offset: 9856)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !56, file: !57, line: 885, baseType: !79, size: 32, offset: 9888)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !56, file: !57, line: 886, baseType: !79, size: 32, offset: 9920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !56, file: !57, line: 888, baseType: !79, size: 32, offset: 9952)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !56, file: !57, line: 890, baseType: !52, size: 64, offset: 9984)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !56, file: !57, line: 893, baseType: !7, size: 32, offset: 10048)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !56, file: !57, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !56, file: !57, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !56, file: !57, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !56, file: !57, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !56, file: !57, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !56, file: !57, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !56, file: !57, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !56, file: !57, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !56, file: !57, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !56, file: !57, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !56, file: !57, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !56, file: !57, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !56, file: !57, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !56, file: !57, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !56, file: !57, line: 969, baseType: !52, size: 64, offset: 10176)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !56, file: !57, line: 971, baseType: !630, size: 448, offset: 10240)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !631)
!631 = !{!632, !633, !639}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !630, file: !27, line: 26, baseType: !52, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !630, file: !27, line: 27, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !638}
!637 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !27, line: 28, baseType: !640, size: 320, offset: 128)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !27, line: 28, size: 320, elements: !641)
!641 = !{!642, !652, !677}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !640, file: !27, line: 37, baseType: !643, size: 320)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !27, line: 30, size: 320, elements: !644)
!644 = !{!645, !647, !648, !649, !650, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !643, file: !27, line: 31, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !643, file: !27, line: 32, baseType: !48, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !27, line: 33, baseType: !48, size: 32, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !643, file: !27, line: 34, baseType: !48, size: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !643, file: !27, line: 35, baseType: !42, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !643, file: !27, line: 36, baseType: !646, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !640, file: !27, line: 47, baseType: !653, size: 192)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !27, line: 39, size: 192, elements: !654)
!654 = !{!655, !656, !657, !676}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !653, file: !27, line: 40, baseType: !273, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !27, line: 42, baseType: !658, size: 64, offset: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !27, line: 42, size: 64, elements: !659)
!659 = !{!660, !668}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !658, file: !27, line: 43, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !663, line: 7, size: 128, elements: !664)
!663 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!664 = !{!665, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !662, file: !663, line: 8, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !275, line: 93, baseType: !145)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !662, file: !663, line: 9, baseType: !145, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !658, file: !27, line: 44, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !671, line: 7, size: 64, elements: !672)
!671 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!672 = !{!673, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !670, file: !671, line: 8, baseType: !674, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !671, line: 5, baseType: !530)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !670, file: !671, line: 9, baseType: !530, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !653, file: !27, line: 46, baseType: !42, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !640, file: !27, line: 55, baseType: !678, size: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !27, line: 49, size: 256, elements: !679)
!679 = !{!680, !683, !684, !685, !686}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !678, file: !27, line: 50, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !27, line: 14, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !678, file: !27, line: 51, baseType: !79, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !678, file: !27, line: 52, baseType: !79, size: 32, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !678, file: !27, line: 53, baseType: !52, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !678, file: !27, line: 54, baseType: !52, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !56, file: !57, line: 973, baseType: !688, size: 32, offset: 10688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !51, line: 27, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !275, line: 28, baseType: !79)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !56, file: !57, line: 974, baseType: !688, size: 32, offset: 10720)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !56, file: !57, line: 978, baseType: !52, size: 64, offset: 10752)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !56, file: !57, line: 987, baseType: !55, size: 64, offset: 10816)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !56, file: !57, line: 990, baseType: !55, size: 64, offset: 10880)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !56, file: !57, line: 995, baseType: !132, size: 128, offset: 10944)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !56, file: !57, line: 996, baseType: !132, size: 128, offset: 11072)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !56, file: !57, line: 997, baseType: !55, size: 64, offset: 11200)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !56, file: !57, line: 1005, baseType: !132, size: 128, offset: 11264)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !56, file: !57, line: 1006, baseType: !132, size: 128, offset: 11392)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !56, file: !57, line: 1009, baseType: !700, size: 64, offset: 11520)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !702, line: 59, size: 768, elements: !703)
!702 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!703 = !{!704, !705, !706, !707, !718, !719, !726, !735}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 61, baseType: !70, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !701, file: !702, line: 62, baseType: !7, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !702, line: 63, baseType: !427, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !701, file: !702, line: 65, baseType: !708, size: 256, offset: 128)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 256, elements: !532)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !51, line: 194, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !709, file: !51, line: 195, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !51, line: 198, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !51, line: 199, baseType: !712, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !713, file: !51, line: 199, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !701, file: !702, line: 66, baseType: !709, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !701, file: !702, line: 68, baseType: !720, size: 192, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !721, line: 41, baseType: !722)
!721 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !721, line: 37, size: 192, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !721, line: 38, baseType: !427, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !722, file: !721, line: 39, baseType: !132, size: 128, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !701, file: !702, line: 69, baseType: !727, size: 128, align: 64, offset: 640)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !51, line: 232, size: 128, align: 64, elements: !728)
!728 = !{!729, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !51, line: 233, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !727, file: !51, line: 234, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !730}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !701, file: !702, line: 70, baseType: !736, offset: 768)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, elements: !605)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !702, line: 54, size: 128, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !737, file: !702, line: 55, baseType: !79, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !737, file: !702, line: 56, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !702, line: 56, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !56, file: !57, line: 1010, baseType: !744, size: 512, offset: 11584)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 512, elements: !532)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !56, file: !57, line: 1011, baseType: !132, size: 128, offset: 12096)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !56, file: !57, line: 1012, baseType: !132, size: 128, offset: 12224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !56, file: !57, line: 1014, baseType: !748, size: 64, offset: 12352)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !750, line: 26, size: 256, elements: !751)
!750 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !749, file: !750, line: 27, baseType: !7, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !749, file: !750, line: 28, baseType: !754, size: 192, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !755, line: 43, size: 192, elements: !756)
!755 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !755, line: 44, baseType: !225, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !754, file: !755, line: 45, baseType: !132, size: 128, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !56, file: !57, line: 1017, baseType: !760, size: 64, offset: 12416)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !56, file: !57, line: 1020, baseType: !760, size: 64, offset: 12480)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !56, file: !57, line: 1023, baseType: !53, size: 64, offset: 12544)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !56, file: !57, line: 1025, baseType: !42, size: 64, offset: 12608)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !56, file: !57, line: 1026, baseType: !42, size: 64, offset: 12672)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !56, file: !57, line: 1031, baseType: !42, size: 64, offset: 12736)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !56, file: !57, line: 1032, baseType: !767, size: 192, offset: 12800)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !57, line: 324, size: 192, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !767, file: !57, line: 326, baseType: !42, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !767, file: !57, line: 327, baseType: !42, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !57, line: 328, baseType: !225, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !56, file: !57, line: 1041, baseType: !52, size: 64, offset: 12992)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !56, file: !57, line: 1042, baseType: !52, size: 64, offset: 13056)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !56, file: !57, line: 1045, baseType: !42, size: 64, offset: 13120)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !56, file: !57, line: 1048, baseType: !42, size: 64, offset: 13184)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !56, file: !57, line: 1051, baseType: !52, size: 64, offset: 13248)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !56, file: !57, line: 1052, baseType: !52, size: 64, offset: 13312)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !56, file: !57, line: 1055, baseType: !779, size: 640, offset: 13376)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !780, line: 132, size: 640, elements: !781)
!780 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!781 = !{!782, !790, !791}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !779, file: !780, line: 133, baseType: !783, size: 576)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 576, elements: !788)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !780, line: 117, size: 192, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !784, file: !780, line: 118, baseType: !42, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !784, file: !780, line: 119, baseType: !288, size: 128, offset: 64)
!788 = !{!789}
!789 = !DISubrange(count: 3)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !779, file: !780, line: 134, baseType: !7, size: 32, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !779, file: !780, line: 135, baseType: !7, size: 32, offset: 608)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !56, file: !57, line: 1058, baseType: !793, size: 448, offset: 14016)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !780, line: 144, size: 448, elements: !794)
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !793, file: !780, line: 145, baseType: !727, size: 128, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !793, file: !780, line: 146, baseType: !551, size: 256, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !793, file: !780, line: 147, baseType: !7, size: 32, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !56, file: !57, line: 1064, baseType: !799, size: 64, offset: 14464)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !57, line: 1064, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !56, file: !57, line: 1067, baseType: !799, size: 64, offset: 14528)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !56, file: !57, line: 1070, baseType: !799, size: 64, offset: 14592)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !56, file: !57, line: 1074, baseType: !805, size: 64, offset: 14656)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !57, line: 1074, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !56, file: !57, line: 1084, baseType: !808, size: 128, offset: 14720)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 128, elements: !810)
!809 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!810 = !{!811}
!811 = !DISubrange(count: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !56, file: !57, line: 1086, baseType: !813, size: 64, offset: 14848)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !57, line: 55, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !56, file: !57, line: 1089, baseType: !816, size: 64, offset: 14912)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !817, line: 12, size: 64, elements: !818)
!817 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !816, file: !817, line: 13, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !817, line: 8, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !56, file: !57, line: 1090, baseType: !823, size: 128, offset: 14976)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !824, line: 13, size: 128, elements: !825)
!824 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !823, file: !824, line: 14, baseType: !132, size: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !56, file: !57, line: 1097, baseType: !828, size: 64, offset: 15104)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !57, line: 50, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !56, file: !57, line: 1100, baseType: !831, size: 64, offset: 15168)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !57, line: 1100, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !56, file: !57, line: 1103, baseType: !834, size: 64, offset: 15232)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !57, line: 53, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !56, file: !57, line: 1107, baseType: !837, size: 64, offset: 15296)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !57, line: 56, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !56, file: !57, line: 1110, baseType: !840, size: 64, offset: 15360)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !780, line: 236, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !56, file: !57, line: 1111, baseType: !843, size: 64, offset: 15424)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !57, line: 67, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !56, file: !57, line: 1112, baseType: !846, size: 64, offset: 15488)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !847, line: 25, baseType: !848)
!847 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !847, line: 23, size: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !848, file: !847, line: 24, baseType: !359, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !56, file: !57, line: 1113, baseType: !846, size: 64, offset: 15552)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !56, file: !57, line: 1115, baseType: !846, size: 64, offset: 15616)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !56, file: !57, line: 1116, baseType: !854, size: 192, offset: 15680)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !855, line: 32, size: 192, elements: !856)
!855 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !854, file: !855, line: 33, baseType: !132, size: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !854, file: !855, line: 34, baseType: !846, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !56, file: !57, line: 1117, baseType: !52, size: 64, offset: 15872)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !56, file: !57, line: 1118, baseType: !861, size: 64, offset: 15936)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 61, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !275, line: 72, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !275, line: 16, baseType: !52)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !56, file: !57, line: 1119, baseType: !7, size: 32, offset: 16000)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !56, file: !57, line: 1121, baseType: !730, size: 64, offset: 16064)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !56, file: !57, line: 1125, baseType: !867, size: 64, offset: 16128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !57, line: 43, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !56, file: !57, line: 1127, baseType: !870, size: 32, offset: 16192)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !577, line: 23, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 21, size: 32, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !871, file: !577, line: 22, baseType: !874, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !51, line: 37, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !275, line: 49, baseType: !7)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !56, file: !57, line: 1128, baseType: !7, size: 32, offset: 16224)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !56, file: !57, line: 1130, baseType: !878, size: 128, offset: 16256)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !879, line: 37, size: 128, elements: !880)
!879 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !878, file: !879, line: 38, baseType: !79, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !878, file: !879, line: 39, baseType: !75, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !878, file: !879, line: 40, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !879, line: 24, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !56, file: !57, line: 1131, baseType: !887, size: 256, offset: 16384)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !888, line: 12, size: 256, elements: !889)
!888 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!889 = !{!890, !892, !893, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !887, file: !888, line: 13, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !887, file: !888, line: 14, baseType: !52, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !887, file: !888, line: 15, baseType: !52, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !887, file: !888, line: 16, baseType: !895, size: 8, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 35, baseType: !896)
!896 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !56, file: !57, line: 1134, baseType: !42, size: 64, offset: 16640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !56, file: !57, line: 1135, baseType: !42, size: 64, offset: 16704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !56, file: !57, line: 1138, baseType: !427, size: 32, offset: 16768)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !56, file: !57, line: 1141, baseType: !225, size: 32, offset: 16800)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !56, file: !57, line: 1143, baseType: !902, size: 64, offset: 16832)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !57, line: 735, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !57, line: 736, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !56, file: !57, line: 1147, baseType: !291, size: 128, offset: 16896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !56, file: !57, line: 1149, baseType: !55, size: 64, offset: 17024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !56, file: !57, line: 1151, baseType: !909, size: 64, offset: 17088)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !57, line: 1151, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !56, file: !57, line: 1188, baseType: !53, size: 64, offset: 17152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !56, file: !57, line: 1191, baseType: !913, size: 64, offset: 17216)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !57, line: 44, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !56, file: !57, line: 1194, baseType: !916, size: 64, offset: 17280)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !57, line: 45, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !56, file: !57, line: 1197, baseType: !919, size: 64, offset: 17344)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !57, line: 61, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !56, file: !57, line: 1199, baseType: !922, size: 64, offset: 17408)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !57, line: 52, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !56, file: !57, line: 1202, baseType: !925, size: 64, offset: 17472)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !57, line: 48, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !56, file: !57, line: 1205, baseType: !52, size: 64, offset: 17536)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !56, file: !57, line: 1206, baseType: !929, size: 64, offset: 17600)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !855, line: 14, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !855, line: 12, size: 384, elements: !932)
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !855, line: 13, baseType: !934, size: 384)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !855, line: 13, size: 384, elements: !935)
!935 = !{!936, !937, !938, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !934, file: !855, line: 13, baseType: !79, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !934, file: !855, line: 13, baseType: !79, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !934, file: !855, line: 13, baseType: !79, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !934, file: !855, line: 13, baseType: !940, size: 256, offset: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !941, line: 37, size: 256, elements: !942)
!941 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!942 = !{!943, !948, !961, !967, !977, !1004, !1009}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !940, file: !941, line: 42, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 39, size: 64, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !944, file: !941, line: 40, baseType: !689, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !944, file: !941, line: 41, baseType: !875, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !940, file: !941, line: 50, baseType: !949, size: 192)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 45, size: 192, elements: !950)
!950 = !{!951, !953, !954, !960}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !949, file: !941, line: 46, baseType: !952, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !275, line: 95, baseType: !79)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !949, file: !941, line: 47, baseType: !79, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !949, file: !941, line: 48, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !941, line: 11, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !941, line: 8, size: 64, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !956, file: !941, line: 9, baseType: !79, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !956, file: !941, line: 10, baseType: !53, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !949, file: !941, line: 49, baseType: !79, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !940, file: !941, line: 57, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 53, size: 128, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !962, file: !941, line: 54, baseType: !689, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !962, file: !941, line: 55, baseType: !875, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !962, file: !941, line: 56, baseType: !955, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !940, file: !941, line: 66, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 60, size: 256, elements: !969)
!969 = !{!970, !971, !972, !973, !976}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !968, file: !941, line: 61, baseType: !689, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !968, file: !941, line: 62, baseType: !875, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !968, file: !941, line: 63, baseType: !79, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !968, file: !941, line: 64, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !275, line: 94, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !275, line: 15, baseType: !637)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !968, file: !941, line: 65, baseType: !974, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !940, file: !941, line: 105, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 69, size: 256, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !978, file: !941, line: 70, baseType: !53, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !941, line: 79, baseType: !982, size: 192, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !941, line: 79, size: 192, elements: !983)
!983 = !{!984, !985, !986, !993, !998}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !982, file: !941, line: 81, baseType: !79, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !982, file: !941, line: 86, baseType: !568, size: 16)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !982, file: !941, line: 92, baseType: !987, size: 192)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !941, line: 88, size: 192, elements: !988)
!988 = !{!989, !991, !992}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !987, file: !941, line: 89, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 64, elements: !269)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !987, file: !941, line: 90, baseType: !53, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !987, file: !941, line: 91, baseType: !53, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !982, file: !941, line: 97, baseType: !994, size: 96)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !941, line: 94, size: 96, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !994, file: !941, line: 95, baseType: !990, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !994, file: !941, line: 96, baseType: !49, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !982, file: !941, line: 103, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !941, line: 99, size: 128, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !999, file: !941, line: 100, baseType: !52, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !999, file: !941, line: 101, baseType: !49, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !999, file: !941, line: 102, baseType: !49, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !940, file: !941, line: 111, baseType: !1005, size: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 108, size: 128, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1005, file: !941, line: 109, baseType: !637, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1005, file: !941, line: 110, baseType: !79, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !940, file: !941, line: 118, baseType: !1010, size: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !941, line: 114, size: 128, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1010, file: !941, line: 115, baseType: !53, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1010, file: !941, line: 116, baseType: !79, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1010, file: !941, line: 117, baseType: !7, size: 32, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !56, file: !57, line: 1208, baseType: !1016, size: 448, offset: 17664)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1017, line: 12, size: 448, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1016, file: !1017, line: 15, baseType: !42, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1016, file: !1017, line: 17, baseType: !42, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1016, file: !1017, line: 19, baseType: !42, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1016, file: !1017, line: 21, baseType: !42, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1016, file: !1017, line: 29, baseType: !42, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1016, file: !1017, line: 35, baseType: !42, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1016, file: !1017, line: 44, baseType: !42, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !56, file: !57, line: 1215, baseType: !42, size: 64, offset: 18112)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !56, file: !57, line: 1217, baseType: !42, size: 64, offset: 18176)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !56, file: !57, line: 1219, baseType: !42, size: 64, offset: 18240)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !56, file: !57, line: 1223, baseType: !1030, size: 64, offset: 18304)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1031, line: 99, baseType: !1032)
!1031 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 99, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1032, file: !1031, line: 99, baseType: !359, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !56, file: !57, line: 1225, baseType: !1036, size: 32, offset: 18368)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !278, line: 275, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !278, line: 275, size: 32, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1037, file: !278, line: 275, baseType: !282, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !56, file: !57, line: 1226, baseType: !79, size: 32, offset: 18400)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !56, file: !57, line: 1227, baseType: !79, size: 32, offset: 18432)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !56, file: !57, line: 1231, baseType: !1043, size: 64, offset: 18496)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !57, line: 1231, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !56, file: !57, line: 1233, baseType: !132, size: 128, offset: 18560)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !56, file: !57, line: 1240, baseType: !1047, size: 64, offset: 18688)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !57, line: 62, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !56, file: !57, line: 1242, baseType: !1050, size: 64, offset: 18752)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !57, line: 1242, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !56, file: !57, line: 1244, baseType: !132, size: 128, offset: 18816)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !56, file: !57, line: 1245, baseType: !1054, size: 64, offset: 18944)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !57, line: 51, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !56, file: !57, line: 1246, baseType: !551, size: 256, offset: 19008)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !56, file: !57, line: 1247, baseType: !7, size: 32, offset: 19264)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !56, file: !57, line: 1250, baseType: !1059, size: 64, offset: 19328)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !57, line: 57, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !56, file: !57, line: 1251, baseType: !551, size: 256, offset: 19392)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !56, file: !57, line: 1252, baseType: !132, size: 128, offset: 19648)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !56, file: !57, line: 1259, baseType: !1064, size: 64, offset: 19776)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !57, line: 54, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !56, file: !57, line: 1260, baseType: !568, size: 16, offset: 19840)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !56, file: !57, line: 1261, baseType: !568, size: 16, offset: 19856)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !56, file: !57, line: 1314, baseType: !1069, size: 64, offset: 19904)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1071, line: 62, size: 256, align: 256, elements: !1072)
!1071 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1070, file: !1071, line: 75, baseType: !49, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1070, file: !1071, line: 90, baseType: !49, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1070, file: !1071, line: 112, baseType: !44, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !1071, line: 132, baseType: !49, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1070, file: !1071, line: 140, baseType: !49, size: 32, offset: 160)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1070, file: !1071, line: 149, baseType: !49, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1070, file: !1071, line: 154, baseType: !1080, offset: 224)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, elements: !605)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !56, file: !57, line: 1315, baseType: !48, size: 32, offset: 19968)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !56, file: !57, line: 1316, baseType: !48, size: 32, offset: 20000)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !56, file: !57, line: 1321, baseType: !52, size: 64, offset: 20032)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !56, file: !57, line: 1325, baseType: !79, size: 32, offset: 20096)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !56, file: !57, line: 1326, baseType: !79, size: 32, offset: 20128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !56, file: !57, line: 1327, baseType: !79, size: 32, offset: 20160)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !56, file: !57, line: 1328, baseType: !79, size: 32, offset: 20192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !56, file: !57, line: 1329, baseType: !727, size: 128, align: 64, offset: 20224)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !56, file: !57, line: 1332, baseType: !1090, size: 128, offset: 20352)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1091, line: 51, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1092 = !{!1093, !1098, !1099}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1090, file: !1091, line: 60, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1095, line: 7, size: 64, elements: !1096)
!1095 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1094, file: !1095, line: 12, baseType: !356, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1090, file: !1091, line: 63, baseType: !895, size: 8, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1090, file: !1091, line: 70, baseType: !895, size: 8, offset: 72)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !56, file: !57, line: 1335, baseType: !1101, size: 64, offset: 20480)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !57, line: 59, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !56, file: !57, line: 1337, baseType: !1104, size: 128, offset: 20544)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1091, line: 39, size: 128, elements: !1105)
!1105 = !{!1106, !1169, !1170}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1104, file: !1091, line: 40, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !410, line: 74, size: 512, align: 128, elements: !1109)
!1109 = !{!1110, !1111, !1163, !1168}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !410, line: 75, baseType: !52, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !410, line: 83, baseType: !1112, size: 320, offset: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !410, line: 83, size: 320, elements: !1113)
!1113 = !{!1114, !1137, !1151, !1155, !1162}
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !410, line: 84, baseType: !1115, size: 320)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !410, line: 84, size: 320, elements: !1116)
!1116 = !{!1117, !1128, !1131, !1136}
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !410, line: 90, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !410, line: 90, size: 128, elements: !1119)
!1119 = !{!1120, !1121, !1126, !1127}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1118, file: !410, line: 91, baseType: !132, size: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !410, line: 94, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1118, file: !410, line: 94, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1122, file: !410, line: 96, baseType: !53, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1122, file: !410, line: 98, baseType: !7, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1118, file: !410, line: 102, baseType: !132, size: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1118, file: !410, line: 103, baseType: !132, size: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1115, file: !410, line: 106, baseType: !1129, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !410, line: 32, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !410, line: 107, baseType: !1132, size: 64, offset: 192)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !410, line: 107, size: 64, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1132, file: !410, line: 108, baseType: !52, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1132, file: !410, line: 109, baseType: !52, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1115, file: !410, line: 117, baseType: !52, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !410, line: 119, baseType: !1138, size: 320)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !410, line: 119, size: 320, elements: !1139)
!1139 = !{!1140, !1141, !1144, !1145, !1146}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1138, file: !410, line: 124, baseType: !52, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1138, file: !410, line: 125, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !410, line: 125, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1138, file: !410, line: 126, baseType: !52, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1138, file: !410, line: 127, baseType: !52, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !410, line: 128, baseType: !1147, size: 64, offset: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1138, file: !410, line: 128, size: 64, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1147, file: !410, line: 133, baseType: !52, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1147, file: !410, line: 138, baseType: !471, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !410, line: 141, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !410, line: 141, size: 64, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1152, file: !410, line: 142, baseType: !52, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !410, line: 144, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !410, line: 144, size: 128, elements: !1157)
!1157 = !{!1158, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1156, file: !410, line: 146, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !410, line: 146, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1156, file: !410, line: 147, baseType: !53, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1112, file: !410, line: 161, baseType: !727, size: 128, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !410, line: 164, baseType: !1164, size: 32, offset: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !410, line: 164, size: 32, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1164, file: !410, line: 169, baseType: !75, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1164, file: !410, line: 177, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1108, file: !410, line: 181, baseType: !75, size: 32, offset: 416)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1104, file: !1091, line: 42, baseType: !49, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1104, file: !1091, line: 43, baseType: !49, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !56, file: !57, line: 1340, baseType: !1172, size: 64, offset: 20672)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !57, line: 69, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !56, file: !57, line: 1351, baseType: !79, size: 32, offset: 20736)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !56, file: !57, line: 1352, baseType: !79, size: 32, offset: 20768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !56, file: !57, line: 1354, baseType: !52, size: 64, offset: 20800)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !56, file: !57, line: 1364, baseType: !42, size: 64, offset: 20864)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !56, file: !57, line: 1365, baseType: !42, size: 64, offset: 20928)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !56, file: !57, line: 1412, baseType: !52, size: 64, offset: 20992)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !56, file: !57, line: 1453, baseType: !1181, size: 64, offset: 21056)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !57, line: 1453, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !56, file: !57, line: 1457, baseType: !1184, size: 64, offset: 21120)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !33, line: 61, size: 576, elements: !1186)
!1186 = !{!1187, !1188, !1207, !1210, !1211, !1244, !1254}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1185, file: !33, line: 62, baseType: !32, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !33, line: 64, baseType: !1189, size: 192, offset: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !33, line: 64, size: 192, elements: !1190)
!1190 = !{!1191, !1202}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !33, line: 65, baseType: !1192, size: 192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !33, line: 65, size: 192, elements: !1193)
!1193 = !{!1194, !1201}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1192, file: !33, line: 66, baseType: !1195, size: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1196, line: 50, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1195, file: !1196, line: 52, baseType: !52, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1195, file: !1196, line: 54, baseType: !7, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1195, file: !1196, line: 55, baseType: !7, size: 32, offset: 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1192, file: !33, line: 67, baseType: !52, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !33, line: 70, baseType: !1203, size: 192)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !33, line: 70, size: 192, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1203, file: !33, line: 71, baseType: !727, size: 128, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1203, file: !33, line: 72, baseType: !52, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1185, file: !33, line: 76, baseType: !1208, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !33, line: 76, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1185, file: !33, line: 77, baseType: !52, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1185, file: !33, line: 79, baseType: !1212, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1196, line: 25, size: 256, elements: !1214)
!1214 = !{!1215, !1221, !1225}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1196, line: 26, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1196, line: 26, size: 128, elements: !1217)
!1217 = !{!1218, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1216, file: !1196, line: 27, baseType: !1219, size: 128)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !810)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1216, file: !1196, line: 28, baseType: !1219, size: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1213, file: !1196, line: 31, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1196, line: 23, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1196, line: 33, baseType: !1226, size: 64, offset: 192)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1196, line: 33, size: 64, elements: !1227)
!1227 = !{!1228, !1234, !1239}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1226, file: !1196, line: 38, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1196, line: 34, size: 64, elements: !1230)
!1230 = !{!1231, !1232, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1229, file: !1196, line: 35, baseType: !530, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1229, file: !1196, line: 36, baseType: !242, size: 8, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1229, file: !1196, line: 37, baseType: !242, size: 8, offset: 40)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1226, file: !1196, line: 42, baseType: !1235, size: 16)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1196, line: 39, size: 16, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1235, file: !1196, line: 40, baseType: !242, size: 8)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1235, file: !1196, line: 41, baseType: !242, size: 8, offset: 8)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1226, file: !1196, line: 46, baseType: !1240, size: 16)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1196, line: 43, size: 16, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1240, file: !1196, line: 44, baseType: !242, size: 8)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1240, file: !1196, line: 45, baseType: !242, size: 8, offset: 8)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1185, file: !33, line: 81, baseType: !1245, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !33, line: 85, size: 384, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1246, file: !33, line: 86, baseType: !1208, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1246, file: !33, line: 87, baseType: !52, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1246, file: !33, line: 88, baseType: !52, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1246, file: !33, line: 89, baseType: !52, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1246, file: !33, line: 90, baseType: !895, size: 8, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1246, file: !33, line: 92, baseType: !1245, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1185, file: !33, line: 82, baseType: !7, size: 32, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !56, file: !57, line: 1463, baseType: !1256, offset: 21184)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !57, line: 739, elements: !438)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !56, file: !57, line: 1470, baseType: !727, size: 128, align: 64, offset: 21184)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !56, file: !57, line: 1471, baseType: !70, size: 32, offset: 21312)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !56, file: !57, line: 1472, baseType: !79, size: 32, offset: 21344)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !56, file: !57, line: 1474, baseType: !55, size: 64, offset: 21376)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !56, file: !57, line: 1475, baseType: !1262, size: 320, offset: 21440)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1263, line: 11, size: 320, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1264 = !{!1265, !1266, !1267, !1272}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1262, file: !1263, line: 16, baseType: !713, size: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1262, file: !1263, line: 17, baseType: !52, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1262, file: !1263, line: 18, baseType: !1268, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1262, file: !1263, line: 19, baseType: !48, size: 32, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !56, file: !57, line: 1478, baseType: !1274, size: 64, offset: 21760)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !57, line: 1478, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !56, file: !57, line: 1482, baseType: !70, size: 32, offset: 21824)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !56, file: !57, line: 1489, baseType: !53, size: 64, offset: 21888)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !56, file: !57, line: 1504, baseType: !53, size: 64, offset: 21952)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !56, file: !57, line: 1505, baseType: !44, size: 64, offset: 22016)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !56, file: !57, line: 1506, baseType: !42, size: 64, offset: 22080)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !56, file: !57, line: 1507, baseType: !44, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !56, file: !57, line: 1508, baseType: !44, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !56, file: !57, line: 1509, baseType: !44, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !56, file: !57, line: 1510, baseType: !727, size: 128, align: 64, offset: 22208)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !56, file: !57, line: 1511, baseType: !79, size: 32, offset: 22336)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !56, file: !57, line: 1515, baseType: !1287, size: 64, offset: 22400)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !89, line: 56, size: 64, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1287, file: !89, line: 57, baseType: !92, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !56, file: !57, line: 1518, baseType: !1287, size: 64, offset: 22464)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !56, file: !57, line: 1528, baseType: !727, size: 128, align: 64, offset: 22528)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !56, file: !57, line: 1552, baseType: !1293, size: 35328, offset: 23040)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1294, line: 430, size: 35328, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1295 = !{!1296, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1325, !1326, !1327, !1328, !1329, !1330, !1333, !1334, !1335, !1336}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1293, file: !1294, line: 432, baseType: !1297, size: 192)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 192, elements: !788)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1299, line: 16, size: 64, elements: !1300)
!1299 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1298, file: !1299, line: 17, baseType: !99, size: 16)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1298, file: !1299, line: 18, baseType: !99, size: 16, offset: 16)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1298, file: !1299, line: 19, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1298, file: !1299, line: 19, baseType: !99, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1298, file: !1299, line: 19, baseType: !99, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1298, file: !1299, line: 19, baseType: !99, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1298, file: !1299, line: 19, baseType: !99, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1298, file: !1299, line: 20, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1298, file: !1299, line: 20, baseType: !99, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1298, file: !1299, line: 20, baseType: !99, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1298, file: !1299, line: 20, baseType: !99, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1298, file: !1299, line: 20, baseType: !99, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1298, file: !1299, line: 20, baseType: !99, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1293, file: !1294, line: 436, baseType: !52, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1293, file: !1294, line: 440, baseType: !101, size: 16, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1293, file: !1294, line: 441, baseType: !101, size: 16, offset: 272)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1293, file: !1294, line: 442, baseType: !101, size: 16, offset: 288)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1293, file: !1294, line: 443, baseType: !101, size: 16, offset: 304)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1293, file: !1294, line: 447, baseType: !52, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1293, file: !1294, line: 448, baseType: !52, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1293, file: !1294, line: 459, baseType: !1322, size: 256, offset: 448)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 256, elements: !532)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1294, line: 428, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1293, file: !1294, line: 461, baseType: !52, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1293, file: !1294, line: 463, baseType: !52, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1293, file: !1294, line: 465, baseType: !52, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1293, file: !1294, line: 466, baseType: !52, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1293, file: !1294, line: 467, baseType: !52, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1293, file: !1294, line: 473, baseType: !1331, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1294, line: 10, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1293, file: !1294, line: 480, baseType: !52, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1293, file: !1294, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1293, file: !1294, line: 491, baseType: !48, size: 32, offset: 1184)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1293, file: !1294, line: 501, baseType: !1337, size: 33792, offset: 1536)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1338, line: 448, size: 33792, elements: !1339)
!1338 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1339 = !{!1340, !1341, !1342, !1510, !1511, !1517, !1518}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1337, file: !1338, line: 461, baseType: !7, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1337, file: !1338, line: 468, baseType: !52, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1337, file: !1338, line: 476, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1338, line: 356, size: 33280, align: 512, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1344, file: !1338, line: 358, baseType: !7, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1344, file: !1338, line: 361, baseType: !7, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1344, file: !1338, line: 364, baseType: !42, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1344, file: !1338, line: 367, baseType: !42, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1344, file: !1338, line: 370, baseType: !42, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1344, file: !1338, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1344, file: !1338, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1344, file: !1338, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1344, file: !1338, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1344, file: !1338, line: 397, baseType: !1356, size: 32768, offset: 512)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1338, line: 348, size: 32768, elements: !1357)
!1357 = !{!1358, !1373, !1414, !1491, !1506}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1356, file: !1338, line: 349, baseType: !1359, size: 896)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1338, line: 12, size: 896, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1372}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1359, file: !1338, line: 13, baseType: !48, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1359, file: !1338, line: 14, baseType: !48, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1359, file: !1338, line: 15, baseType: !48, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1359, file: !1338, line: 16, baseType: !48, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1359, file: !1338, line: 17, baseType: !48, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1359, file: !1338, line: 18, baseType: !48, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1359, file: !1338, line: 19, baseType: !48, size: 32, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1359, file: !1338, line: 22, baseType: !1369, size: 640, offset: 224)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 20)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1359, file: !1338, line: 25, baseType: !48, size: 32, offset: 864)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1356, file: !1338, line: 350, baseType: !1374, size: 4096, align: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1338, line: 34, size: 4096, align: 128, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1395, !1396, !1397, !1401, !1405, !1409}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1374, file: !1338, line: 35, baseType: !99, size: 16)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1374, file: !1338, line: 36, baseType: !99, size: 16, offset: 16)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1374, file: !1338, line: 37, baseType: !99, size: 16, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1374, file: !1338, line: 38, baseType: !99, size: 16, offset: 48)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1338, line: 39, baseType: !1381, size: 128, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1338, line: 39, size: 128, elements: !1382)
!1382 = !{!1383, !1388}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1338, line: 40, baseType: !1384, size: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !1338, line: 40, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1384, file: !1338, line: 41, baseType: !42, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1384, file: !1338, line: 42, baseType: !42, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1338, line: 44, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !1338, line: 44, size: 128, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1389, file: !1338, line: 45, baseType: !48, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1389, file: !1338, line: 46, baseType: !48, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1389, file: !1338, line: 47, baseType: !48, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1389, file: !1338, line: 48, baseType: !48, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1374, file: !1338, line: 51, baseType: !48, size: 32, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1374, file: !1338, line: 52, baseType: !48, size: 32, offset: 224)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1374, file: !1338, line: 55, baseType: !1398, size: 1024, offset: 256)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1374, file: !1338, line: 58, baseType: !1402, size: 2048, offset: 1280)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !1403)
!1403 = !{!1404}
!1404 = !DISubrange(count: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1374, file: !1338, line: 60, baseType: !1406, size: 384, offset: 3328)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 12)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1338, line: 62, baseType: !1410, size: 384, offset: 3712)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1338, line: 62, size: 384, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1410, file: !1338, line: 63, baseType: !1406, size: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1410, file: !1338, line: 64, baseType: !1406, size: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1356, file: !1338, line: 351, baseType: !1415, size: 1088)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1338, line: 79, size: 1088, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1490}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1415, file: !1338, line: 80, baseType: !48, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1415, file: !1338, line: 81, baseType: !48, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1415, file: !1338, line: 82, baseType: !48, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1415, file: !1338, line: 83, baseType: !48, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1415, file: !1338, line: 84, baseType: !48, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1415, file: !1338, line: 85, baseType: !48, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1415, file: !1338, line: 86, baseType: !48, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1415, file: !1338, line: 88, baseType: !1369, size: 640, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1415, file: !1338, line: 89, baseType: !242, size: 8, offset: 864)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1415, file: !1338, line: 90, baseType: !242, size: 8, offset: 872)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1415, file: !1338, line: 91, baseType: !242, size: 8, offset: 880)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1415, file: !1338, line: 92, baseType: !242, size: 8, offset: 888)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1415, file: !1338, line: 93, baseType: !242, size: 8, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1415, file: !1338, line: 94, baseType: !242, size: 8, offset: 904)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1415, file: !1338, line: 95, baseType: !1432, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1434, line: 11, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1433, file: !1434, line: 12, baseType: !637, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1433, file: !1434, line: 13, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1440, line: 103, size: 1344, elements: !1441)
!1440 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1470, !1471, !1472}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1439, file: !1440, line: 109, baseType: !52, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1439, file: !1440, line: 110, baseType: !52, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1439, file: !1440, line: 111, baseType: !52, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1439, file: !1440, line: 112, baseType: !52, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1439, file: !1440, line: 113, baseType: !52, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1439, file: !1440, line: 114, baseType: !52, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1439, file: !1440, line: 117, baseType: !52, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1439, file: !1440, line: 118, baseType: !52, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1439, file: !1440, line: 119, baseType: !52, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1439, file: !1440, line: 120, baseType: !52, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1439, file: !1440, line: 121, baseType: !52, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1439, file: !1440, line: 122, baseType: !52, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1439, file: !1440, line: 123, baseType: !52, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1439, file: !1440, line: 124, baseType: !52, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1439, file: !1440, line: 125, baseType: !52, size: 64, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1439, file: !1440, line: 139, baseType: !52, size: 64, offset: 960)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1439, file: !1440, line: 142, baseType: !52, size: 64, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !1440, line: 144, baseType: !1460, size: 64, offset: 1088)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !1440, line: 144, size: 64, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1460, file: !1440, line: 146, baseType: !99, size: 16)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1460, file: !1440, line: 148, baseType: !42, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1460, file: !1440, line: 150, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1440, line: 59, size: 64, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1465, file: !1440, line: 61, baseType: !42, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1465, file: !1440, line: 63, baseType: !42, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1465, file: !1440, line: 65, baseType: !42, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !1440, line: 153, baseType: !52, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1439, file: !1440, line: 154, baseType: !52, size: 64, offset: 1216)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !1440, line: 156, baseType: !1473, size: 64, offset: 1280)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !1440, line: 156, size: 64, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1473, file: !1440, line: 158, baseType: !99, size: 16)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1473, file: !1440, line: 160, baseType: !42, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1473, file: !1440, line: 162, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1440, line: 69, size: 64, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1478, file: !1440, line: 71, baseType: !42, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1478, file: !1440, line: 73, baseType: !42, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1478, file: !1440, line: 75, baseType: !42, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1478, file: !1440, line: 77, baseType: !42, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1478, file: !1440, line: 80, baseType: !42, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1478, file: !1440, line: 83, baseType: !42, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1478, file: !1440, line: 86, baseType: !42, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1478, file: !1440, line: 88, baseType: !42, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1478, file: !1440, line: 93, baseType: !42, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1478, file: !1440, line: 100, baseType: !42, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1415, file: !1338, line: 96, baseType: !48, size: 32, offset: 1024)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1356, file: !1338, line: 352, baseType: !1492, size: 4608, align: 512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1338, line: 333, size: 4608, align: 512, elements: !1493)
!1493 = !{!1494, !1495, !1504}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1492, file: !1338, line: 334, baseType: !1374, size: 4096, align: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1492, file: !1338, line: 335, baseType: !1496, size: 512, offset: 4096)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1338, line: 312, size: 512, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1496, file: !1338, line: 313, baseType: !42, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1496, file: !1338, line: 314, baseType: !42, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1496, file: !1338, line: 315, baseType: !1501, size: 384, offset: 128)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 6)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1492, file: !1338, line: 336, baseType: !1505, offset: 4608)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !605)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1356, file: !1338, line: 353, baseType: !1507, size: 32768)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 32768, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 4096)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1337, file: !1338, line: 484, baseType: !1343, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1337, file: !1338, line: 491, baseType: !1512, size: 128, offset: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1338, line: 404, size: 128, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1512, file: !1338, line: 424, baseType: !42, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1512, file: !1338, line: 432, baseType: !7, size: 32, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1512, file: !1338, line: 440, baseType: !7, size: 32, offset: 96)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1337, file: !1338, line: 498, baseType: !1512, size: 128, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1337, file: !1338, line: 508, baseType: !1344, size: 33280, align: 512, offset: 512)
!1519 = !{!1520, !1525, !1530, !0}
!1520 = !DIGlobalVariableExpression(var: !1521, expr: !DIExpression())
!1521 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !1522, isLocal: true, isDefinition: true)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 368, elements: !1523)
!1523 = !{!1524}
!1524 = !DISubrange(count: 46)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !1527, isLocal: true, isDefinition: true)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 400, elements: !1528)
!1528 = !{!1529}
!1529 = !DISubrange(count: 50)
!1530 = !DIGlobalVariableExpression(var: !1531, expr: !DIExpression())
!1531 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !1532, isLocal: true, isDefinition: true)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 168, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 21)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 64, elements: !269)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!1537 = !{i32 7, !"Dwarf Version", i32 5}
!1538 = !{i32 2, !"Debug Info Version", i32 3}
!1539 = !{i32 1, !"wchar_size", i32 2}
!1540 = !{i32 8, !"cf-protection-branch", i32 1}
!1541 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1542 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1543 = !{i32 1, !"Code Model", i32 2}
!1544 = !{i32 1, !"override-stack-alignment", i32 8}
!1545 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1546 = distinct !DISubprogram(name: "acpi_ut_mutex_initialize", scope: !3, file: !3, line: 32, type: !1547, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!47}
!1549 = !{!1550, !1551, !1552, !1555, !1558}
!1550 = !DILocalVariable(name: "i", scope: !1546, file: !3, line: 34, type: !48)
!1551 = !DILocalVariable(name: "status", scope: !1546, file: !3, line: 35, type: !47)
!1552 = !DILocalVariable(name: "lock", scope: !1553, file: !3, line: 50, type: !1554)
!1553 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 50, column: 11)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!1555 = !DILocalVariable(name: "lock", scope: !1556, file: !3, line: 55, type: !1557)
!1556 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 55, column: 11)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1558 = !DILocalVariable(name: "lock", scope: !1559, file: !3, line: 60, type: !1554)
!1559 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 60, column: 11)
!1560 = !DILocation(line: 34, column: 2, scope: !1546)
!1561 = !DILocation(line: 34, column: 6, scope: !1546)
!1562 = !DILocation(line: 35, column: 2, scope: !1546)
!1563 = !DILocation(line: 35, column: 14, scope: !1546)
!1564 = !DILocation(line: 41, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 41, column: 2)
!1566 = !DILocation(line: 41, column: 7, scope: !1565)
!1567 = !DILocation(line: 41, column: 14, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 41, column: 2)
!1569 = !DILocation(line: 41, column: 16, scope: !1568)
!1570 = !DILocation(line: 41, column: 2, scope: !1565)
!1571 = !DILocation(line: 42, column: 33, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 41, column: 39)
!1573 = !DILocation(line: 42, column: 12, scope: !1572)
!1574 = !DILocation(line: 42, column: 10, scope: !1572)
!1575 = !DILocation(line: 43, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 43, column: 7)
!1577 = !DILocation(line: 43, column: 7, scope: !1572)
!1578 = !DILocation(line: 44, column: 4, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 43, column: 29)
!1580 = !DILocation(line: 46, column: 2, scope: !1572)
!1581 = !DILocation(line: 41, column: 35, scope: !1568)
!1582 = !DILocation(line: 41, column: 2, scope: !1568)
!1583 = distinct !{!1583, !1570, !1584, !1585, !1586}
!1584 = !DILocation(line: 46, column: 2, scope: !1565)
!1585 = !{!"llvm.loop.mustprogress"}
!1586 = !{!"llvm.loop.unroll.disable"}
!1587 = !DILocation(line: 50, column: 11, scope: !1553)
!1588 = !DILocation(line: 50, column: 11, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 50, column: 11)
!1590 = !DILocation(line: 50, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 50, column: 11)
!1592 = !DILocation(line: 50, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 50, column: 11)
!1594 = !DILocation(line: 50, column: 11, scope: !1546)
!1595 = !DILocation(line: 50, column: 9, scope: !1546)
!1596 = !DILocation(line: 51, column: 6, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 51, column: 6)
!1598 = !DILocation(line: 51, column: 6, scope: !1546)
!1599 = !DILocation(line: 52, column: 3, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 51, column: 29)
!1601 = !DILocation(line: 55, column: 11, scope: !1556)
!1602 = !DILocation(line: 55, column: 11, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 55, column: 11)
!1604 = !DILocation(line: 55, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 55, column: 11)
!1606 = !DILocation(line: 55, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 55, column: 11)
!1608 = !DILocation(line: 55, column: 11, scope: !1546)
!1609 = !DILocation(line: 55, column: 9, scope: !1546)
!1610 = !DILocation(line: 56, column: 6, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 56, column: 6)
!1612 = !DILocation(line: 56, column: 6, scope: !1546)
!1613 = !DILocation(line: 57, column: 3, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 56, column: 29)
!1615 = !DILocation(line: 60, column: 11, scope: !1559)
!1616 = !DILocation(line: 60, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 60, column: 11)
!1618 = !DILocation(line: 60, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 60, column: 11)
!1620 = !DILocation(line: 60, column: 11, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 60, column: 11)
!1622 = !DILocation(line: 60, column: 11, scope: !1546)
!1623 = !DILocation(line: 60, column: 9, scope: !1546)
!1624 = !DILocation(line: 61, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 61, column: 6)
!1626 = !DILocation(line: 61, column: 6, scope: !1546)
!1627 = !DILocation(line: 62, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 61, column: 28)
!1629 = !DILocation(line: 67, column: 11, scope: !1546)
!1630 = !DILocation(line: 67, column: 9, scope: !1546)
!1631 = !DILocation(line: 68, column: 6, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 68, column: 6)
!1633 = !DILocation(line: 68, column: 6, scope: !1546)
!1634 = !DILocation(line: 69, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 68, column: 28)
!1636 = !DILocation(line: 74, column: 11, scope: !1546)
!1637 = !DILocation(line: 74, column: 9, scope: !1546)
!1638 = !DILocation(line: 75, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 75, column: 6)
!1640 = !DILocation(line: 75, column: 6, scope: !1546)
!1641 = !DILocation(line: 76, column: 3, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 75, column: 28)
!1643 = !DILocation(line: 79, column: 2, scope: !1546)
!1644 = !DILocation(line: 80, column: 1, scope: !1546)
!1645 = distinct !DISubprogram(name: "acpi_ut_create_mutex", scope: !3, file: !3, line: 133, type: !1646, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!47, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !1649, line: 17, baseType: !48)
!1649 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!1650 = !{!1651, !1652}
!1651 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1645, file: !3, line: 133, type: !1648)
!1652 = !DILocalVariable(name: "status", scope: !1645, file: !3, line: 135, type: !47)
!1653 = !DILocation(line: 133, column: 59, scope: !1645)
!1654 = !DILocation(line: 135, column: 2, scope: !1645)
!1655 = !DILocation(line: 135, column: 14, scope: !1645)
!1656 = !DILocation(line: 139, column: 27, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 139, column: 6)
!1658 = !DILocation(line: 139, column: 7, scope: !1657)
!1659 = !DILocation(line: 139, column: 37, scope: !1657)
!1660 = !DILocation(line: 139, column: 6, scope: !1645)
!1661 = !DILocation(line: 141, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 139, column: 44)
!1663 = !DILocation(line: 140, column: 10, scope: !1662)
!1664 = !DILocation(line: 142, column: 23, scope: !1662)
!1665 = !DILocation(line: 142, column: 3, scope: !1662)
!1666 = !DILocation(line: 142, column: 33, scope: !1662)
!1667 = !DILocation(line: 142, column: 43, scope: !1662)
!1668 = !DILocation(line: 144, column: 23, scope: !1662)
!1669 = !DILocation(line: 144, column: 3, scope: !1662)
!1670 = !DILocation(line: 144, column: 33, scope: !1662)
!1671 = !DILocation(line: 144, column: 43, scope: !1662)
!1672 = !DILocation(line: 145, column: 2, scope: !1662)
!1673 = !DILocation(line: 147, column: 2, scope: !1645)
!1674 = !DILocation(line: 148, column: 1, scope: !1645)
!1675 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1676, file: !1676, line: 50, type: !1677, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1679)
!1676 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!53, !40}
!1679 = !{!1680, !1681, !1683, !1686, !1687, !1690}
!1680 = !DILocalVariable(name: "size", arg: 1, scope: !1675, file: !1676, line: 50, type: !40)
!1681 = !DILocalVariable(name: "_flags", scope: !1682, file: !1676, line: 52, type: !52)
!1682 = distinct !DILexicalBlock(scope: !1675, file: !1676, line: 52, column: 23)
!1683 = !DILocalVariable(name: "__dummy", scope: !1684, file: !1676, line: 52, type: !52)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !1676, line: 52, column: 23)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !1676, line: 52, column: 23)
!1686 = !DILocalVariable(name: "__dummy2", scope: !1684, file: !1676, line: 52, type: !52)
!1687 = !DILocalVariable(name: "__dummy", scope: !1688, file: !1676, line: 52, type: !52)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !1676, line: 52, column: 23)
!1689 = distinct !DILexicalBlock(scope: !1682, file: !1676, line: 52, column: 23)
!1690 = !DILocalVariable(name: "__dummy2", scope: !1688, file: !1676, line: 52, type: !52)
!1691 = !DILocation(line: 50, column: 48, scope: !1675)
!1692 = !DILocation(line: 52, column: 17, scope: !1675)
!1693 = !DILocation(line: 52, column: 23, scope: !1682)
!1694 = !DILocation(line: 52, column: 23, scope: !1684)
!1695 = !DILocation(line: 52, column: 23, scope: !1685)
!1696 = !DILocation(line: 52, column: 23, scope: !1688)
!1697 = !DILocation(line: 52, column: 23, scope: !1689)
!1698 = !DILocation(line: 52, column: 23, scope: !1675)
!1699 = !DILocation(line: 52, column: 9, scope: !1675)
!1700 = !DILocation(line: 52, column: 2, scope: !1675)
!1701 = distinct !DISubprogram(name: "spinlock_check", scope: !1702, file: !1702, line: 324, type: !1703, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1705)
!1702 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!1557, !1554}
!1705 = !{!1706}
!1706 = !DILocalVariable(name: "lock", arg: 1, scope: !1701, file: !1702, line: 324, type: !1554)
!1707 = !DILocation(line: 324, column: 67, scope: !1701)
!1708 = !DILocation(line: 326, column: 10, scope: !1701)
!1709 = !DILocation(line: 326, column: 16, scope: !1701)
!1710 = !DILocation(line: 326, column: 2, scope: !1701)
!1711 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !1712, file: !1712, line: 126, type: !1713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1712 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!47, !48, !48, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1716 = !DISubprogram(name: "acpi_ut_create_rw_lock", scope: !1717, file: !1717, line: 421, type: !1718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1717 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!47, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rw_lock", file: !1649, line: 58, size: 192, elements: !1722)
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "writer_mutex", scope: !1721, file: !1649, line: 59, baseType: !53, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "reader_mutex", scope: !1721, file: !1649, line: 60, baseType: !53, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "num_readers", scope: !1721, file: !1649, line: 61, baseType: !48, size: 32, offset: 128)
!1726 = distinct !DISubprogram(name: "acpi_ut_mutex_terminate", scope: !3, file: !3, line: 95, type: !1727, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null}
!1729 = !{!1730}
!1730 = !DILocalVariable(name: "i", scope: !1726, file: !3, line: 97, type: !48)
!1731 = !DILocation(line: 97, column: 2, scope: !1726)
!1732 = !DILocation(line: 97, column: 6, scope: !1726)
!1733 = !DILocation(line: 103, column: 9, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 103, column: 2)
!1735 = !DILocation(line: 103, column: 7, scope: !1734)
!1736 = !DILocation(line: 103, column: 14, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 103, column: 2)
!1738 = !DILocation(line: 103, column: 16, scope: !1737)
!1739 = !DILocation(line: 103, column: 2, scope: !1734)
!1740 = !DILocation(line: 104, column: 24, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 103, column: 39)
!1742 = !DILocation(line: 104, column: 3, scope: !1741)
!1743 = !DILocation(line: 105, column: 2, scope: !1741)
!1744 = !DILocation(line: 103, column: 35, scope: !1737)
!1745 = !DILocation(line: 103, column: 2, scope: !1737)
!1746 = distinct !{!1746, !1739, !1747, !1585, !1586}
!1747 = !DILocation(line: 105, column: 2, scope: !1734)
!1748 = !DILocation(line: 107, column: 2, scope: !1726)
!1749 = !DILocation(line: 111, column: 22, scope: !1726)
!1750 = !DILocation(line: 111, column: 2, scope: !1726)
!1751 = !DILocation(line: 112, column: 26, scope: !1726)
!1752 = !DILocation(line: 112, column: 2, scope: !1726)
!1753 = !DILocation(line: 113, column: 22, scope: !1726)
!1754 = !DILocation(line: 113, column: 2, scope: !1726)
!1755 = !DILocation(line: 117, column: 2, scope: !1726)
!1756 = !DILocation(line: 119, column: 1, scope: !1726)
!1757 = distinct !DISubprogram(name: "acpi_ut_delete_mutex", scope: !3, file: !3, line: 162, type: !1758, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1648}
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1757, file: !3, line: 162, type: !1648)
!1762 = !DILocation(line: 162, column: 52, scope: !1757)
!1763 = !DILocation(line: 167, column: 2, scope: !1757)
!1764 = !DILocation(line: 169, column: 22, scope: !1757)
!1765 = !DILocation(line: 169, column: 2, scope: !1757)
!1766 = !DILocation(line: 169, column: 32, scope: !1757)
!1767 = !DILocation(line: 169, column: 38, scope: !1757)
!1768 = !DILocation(line: 170, column: 22, scope: !1757)
!1769 = !DILocation(line: 170, column: 2, scope: !1757)
!1770 = !DILocation(line: 170, column: 32, scope: !1757)
!1771 = !DILocation(line: 170, column: 42, scope: !1757)
!1772 = !DILocation(line: 172, column: 2, scope: !1757)
!1773 = !DISubprogram(name: "acpi_os_delete_semaphore", scope: !1712, file: !1712, line: 131, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!47, !53}
!1776 = !DISubprogram(name: "acpi_os_delete_lock", scope: !1712, file: !1712, line: 89, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1554}
!1779 = distinct !DISubprogram(name: "acpi_os_delete_raw_lock", scope: !1676, file: !1676, line: 118, type: !1780, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1782)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1557}
!1782 = !{!1783}
!1783 = !DILocalVariable(name: "handle", arg: 1, scope: !1779, file: !1676, line: 118, type: !1557)
!1784 = !DILocation(line: 118, column: 62, scope: !1779)
!1785 = !DILocation(line: 120, column: 2, scope: !1779)
!1786 = !DILocation(line: 121, column: 1, scope: !1779)
!1787 = !DISubprogram(name: "acpi_ut_delete_rw_lock", scope: !1717, file: !1717, line: 423, type: !1788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1720}
!1790 = distinct !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !3, file: !3, line: 187, type: !1646, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1790, file: !3, line: 187, type: !1648)
!1793 = !DILocalVariable(name: "status", scope: !1790, file: !3, line: 189, type: !47)
!1794 = !DILocalVariable(name: "this_thread_id", scope: !1790, file: !3, line: 190, type: !42)
!1795 = !DILocation(line: 187, column: 53, scope: !1790)
!1796 = !DILocation(line: 189, column: 2, scope: !1790)
!1797 = !DILocation(line: 189, column: 14, scope: !1790)
!1798 = !DILocation(line: 190, column: 2, scope: !1790)
!1799 = !DILocation(line: 190, column: 17, scope: !1790)
!1800 = !DILocation(line: 194, column: 6, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 194, column: 6)
!1802 = !DILocation(line: 194, column: 15, scope: !1801)
!1803 = !DILocation(line: 194, column: 6, scope: !1790)
!1804 = !DILocation(line: 195, column: 3, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 194, column: 33)
!1806 = !DILocation(line: 198, column: 19, scope: !1790)
!1807 = !DILocation(line: 198, column: 17, scope: !1790)
!1808 = !DILocation(line: 241, column: 6, scope: !1790)
!1809 = !DILocation(line: 240, column: 9, scope: !1790)
!1810 = !DILocation(line: 243, column: 6, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 243, column: 6)
!1812 = !DILocation(line: 243, column: 6, scope: !1790)
!1813 = !DILocation(line: 249, column: 23, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 243, column: 28)
!1815 = !DILocation(line: 249, column: 3, scope: !1814)
!1816 = !DILocation(line: 249, column: 33, scope: !1814)
!1817 = !DILocation(line: 249, column: 42, scope: !1814)
!1818 = !DILocation(line: 250, column: 45, scope: !1814)
!1819 = !DILocation(line: 250, column: 23, scope: !1814)
!1820 = !DILocation(line: 250, column: 3, scope: !1814)
!1821 = !DILocation(line: 250, column: 33, scope: !1814)
!1822 = !DILocation(line: 250, column: 43, scope: !1814)
!1823 = !DILocation(line: 251, column: 2, scope: !1814)
!1824 = !DILocation(line: 252, column: 3, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 251, column: 9)
!1826 = !DILocation(line: 258, column: 10, scope: !1790)
!1827 = !DILocation(line: 258, column: 2, scope: !1790)
!1828 = !DILocation(line: 259, column: 1, scope: !1790)
!1829 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !1676, file: !1676, line: 71, type: !1830, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!42}
!1832 = !DILocation(line: 73, column: 41, scope: !1829)
!1833 = !DILocation(line: 73, column: 26, scope: !1829)
!1834 = !DILocation(line: 73, column: 2, scope: !1829)
!1835 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !1712, file: !1712, line: 136, type: !1836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!47, !53, !48, !99}
!1838 = !DISubprogram(name: "acpi_exception", scope: !1839, file: !1839, line: 906, type: !1840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1842, !48, !47, !1842, null}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1843 = !DISubprogram(name: "acpi_ut_get_mutex_name", scope: !1717, file: !1717, line: 218, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1842, !48}
!1846 = distinct !DISubprogram(name: "acpi_ut_release_mutex", scope: !3, file: !3, line: 273, type: !1646, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1847)
!1847 = !{!1848}
!1848 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1846, file: !3, line: 273, type: !1648)
!1849 = !DILocation(line: 273, column: 53, scope: !1846)
!1850 = !DILocation(line: 281, column: 6, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 281, column: 6)
!1852 = !DILocation(line: 281, column: 15, scope: !1851)
!1853 = !DILocation(line: 281, column: 6, scope: !1846)
!1854 = !DILocation(line: 282, column: 3, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 281, column: 33)
!1856 = !DILocation(line: 288, column: 26, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 288, column: 6)
!1858 = !DILocation(line: 288, column: 6, scope: !1857)
!1859 = !DILocation(line: 288, column: 36, scope: !1857)
!1860 = !DILocation(line: 288, column: 46, scope: !1857)
!1861 = !DILocation(line: 288, column: 6, scope: !1846)
!1862 = !DILocation(line: 289, column: 3, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 288, column: 74)
!1864 = !DILocation(line: 293, column: 3, scope: !1863)
!1865 = !DILocation(line: 326, column: 22, scope: !1846)
!1866 = !DILocation(line: 326, column: 2, scope: !1846)
!1867 = !DILocation(line: 326, column: 32, scope: !1846)
!1868 = !DILocation(line: 326, column: 42, scope: !1846)
!1869 = !DILocation(line: 328, column: 2, scope: !1846)
!1870 = !DILocation(line: 329, column: 2, scope: !1846)
!1871 = !DILocation(line: 330, column: 1, scope: !1846)
!1872 = !DISubprogram(name: "acpi_error", scope: !1839, file: !1839, line: 901, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1842, !48, !1842, null}
!1875 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !1712, file: !1712, line: 140, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!47, !53, !48}
!1878 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1879, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!53, !861, !50}
!1881 = !{!1882, !1883, !1884}
!1882 = !DILocalVariable(name: "size", arg: 1, scope: !1878, file: !12, line: 591, type: !861)
!1883 = !DILocalVariable(name: "flags", arg: 2, scope: !1878, file: !12, line: 591, type: !50)
!1884 = !DILocalVariable(name: "index", scope: !1885, file: !12, line: 594, type: !7)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !12, line: 593, column: 42)
!1886 = distinct !DILexicalBlock(scope: !1878, file: !12, line: 593, column: 6)
!1887 = !DILocation(line: 591, column: 61, scope: !1878)
!1888 = !DILocation(line: 591, column: 73, scope: !1878)
!1889 = !DILocation(line: 593, column: 27, scope: !1886)
!1890 = !DILocation(line: 593, column: 6, scope: !1886)
!1891 = !DILocation(line: 593, column: 33, scope: !1886)
!1892 = !DILocation(line: 593, column: 36, scope: !1886)
!1893 = !DILocation(line: 593, column: 6, scope: !1878)
!1894 = !DILocation(line: 594, column: 3, scope: !1885)
!1895 = !DILocation(line: 594, column: 16, scope: !1885)
!1896 = !DILocation(line: 596, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1885, file: !12, line: 596, column: 7)
!1898 = !DILocation(line: 596, column: 12, scope: !1897)
!1899 = !DILocation(line: 596, column: 7, scope: !1885)
!1900 = !DILocation(line: 597, column: 25, scope: !1897)
!1901 = !DILocation(line: 597, column: 31, scope: !1897)
!1902 = !DILocation(line: 597, column: 11, scope: !1897)
!1903 = !DILocation(line: 597, column: 4, scope: !1897)
!1904 = !DILocation(line: 599, column: 11, scope: !1885)
!1905 = !DILocation(line: 599, column: 9, scope: !1885)
!1906 = !DILocation(line: 601, column: 33, scope: !1885)
!1907 = !DILocation(line: 601, column: 40, scope: !1885)
!1908 = !DILocation(line: 601, column: 20, scope: !1885)
!1909 = !DILocation(line: 601, column: 5, scope: !1885)
!1910 = !DILocation(line: 601, column: 51, scope: !1885)
!1911 = !DILocation(line: 602, column: 5, scope: !1885)
!1912 = !DILocation(line: 602, column: 12, scope: !1885)
!1913 = !DILocation(line: 600, column: 10, scope: !1885)
!1914 = !DILocation(line: 600, column: 3, scope: !1885)
!1915 = !DILocation(line: 603, column: 2, scope: !1886)
!1916 = !DILocation(line: 604, column: 19, scope: !1878)
!1917 = !DILocation(line: 604, column: 25, scope: !1878)
!1918 = !DILocation(line: 604, column: 9, scope: !1878)
!1919 = !DILocation(line: 604, column: 2, scope: !1878)
!1920 = !DILocation(line: 605, column: 1, scope: !1878)
!1921 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1922, file: !1922, line: 65, type: !1923, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1922 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!52}
!1925 = !DILocation(line: 67, column: 9, scope: !1921)
!1926 = !DILocation(line: 67, column: 2, scope: !1921)
!1927 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1922, file: !1922, line: 120, type: !1928, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!79, !52}
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "flags", arg: 1, scope: !1927, file: !1922, line: 120, type: !52)
!1932 = !DILocation(line: 120, column: 67, scope: !1927)
!1933 = !DILocation(line: 122, column: 11, scope: !1927)
!1934 = !DILocation(line: 122, column: 17, scope: !1927)
!1935 = !DILocation(line: 122, column: 9, scope: !1927)
!1936 = !DILocation(line: 122, column: 2, scope: !1927)
!1937 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1939, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!7, !861, !895}
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(name: "size", arg: 1, scope: !1938, file: !12, line: 444, type: !861)
!1943 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1938, file: !12, line: 445, type: !895)
!1944 = !DILocation(line: 444, column: 60, scope: !1938)
!1945 = !DILocation(line: 445, column: 16, scope: !1938)
!1946 = !DILocation(line: 447, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 447, column: 6)
!1948 = !DILocation(line: 447, column: 6, scope: !1938)
!1949 = !DILocation(line: 448, column: 3, scope: !1947)
!1950 = !DILocation(line: 450, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 450, column: 6)
!1952 = !DILocation(line: 450, column: 11, scope: !1951)
!1953 = !DILocation(line: 450, column: 6, scope: !1938)
!1954 = !DILocation(line: 451, column: 3, scope: !1951)
!1955 = !DILocation(line: 453, column: 32, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 453, column: 6)
!1957 = !DILocation(line: 453, column: 37, scope: !1956)
!1958 = !DILocation(line: 453, column: 42, scope: !1956)
!1959 = !DILocation(line: 453, column: 45, scope: !1956)
!1960 = !DILocation(line: 453, column: 50, scope: !1956)
!1961 = !DILocation(line: 453, column: 6, scope: !1938)
!1962 = !DILocation(line: 454, column: 3, scope: !1956)
!1963 = !DILocation(line: 455, column: 32, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 455, column: 6)
!1965 = !DILocation(line: 455, column: 37, scope: !1964)
!1966 = !DILocation(line: 455, column: 43, scope: !1964)
!1967 = !DILocation(line: 455, column: 46, scope: !1964)
!1968 = !DILocation(line: 455, column: 51, scope: !1964)
!1969 = !DILocation(line: 455, column: 6, scope: !1938)
!1970 = !DILocation(line: 456, column: 3, scope: !1964)
!1971 = !DILocation(line: 457, column: 6, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 457, column: 6)
!1973 = !DILocation(line: 457, column: 11, scope: !1972)
!1974 = !DILocation(line: 457, column: 6, scope: !1938)
!1975 = !DILocation(line: 457, column: 26, scope: !1972)
!1976 = !DILocation(line: 458, column: 6, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 458, column: 6)
!1978 = !DILocation(line: 458, column: 11, scope: !1977)
!1979 = !DILocation(line: 458, column: 6, scope: !1938)
!1980 = !DILocation(line: 458, column: 26, scope: !1977)
!1981 = !DILocation(line: 459, column: 6, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 459, column: 6)
!1983 = !DILocation(line: 459, column: 11, scope: !1982)
!1984 = !DILocation(line: 459, column: 6, scope: !1938)
!1985 = !DILocation(line: 459, column: 26, scope: !1982)
!1986 = !DILocation(line: 460, column: 6, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 460, column: 6)
!1988 = !DILocation(line: 460, column: 11, scope: !1987)
!1989 = !DILocation(line: 460, column: 6, scope: !1938)
!1990 = !DILocation(line: 460, column: 26, scope: !1987)
!1991 = !DILocation(line: 461, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 461, column: 6)
!1993 = !DILocation(line: 461, column: 11, scope: !1992)
!1994 = !DILocation(line: 461, column: 6, scope: !1938)
!1995 = !DILocation(line: 461, column: 26, scope: !1992)
!1996 = !DILocation(line: 462, column: 6, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 462, column: 6)
!1998 = !DILocation(line: 462, column: 11, scope: !1997)
!1999 = !DILocation(line: 462, column: 6, scope: !1938)
!2000 = !DILocation(line: 462, column: 26, scope: !1997)
!2001 = !DILocation(line: 463, column: 6, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 463, column: 6)
!2003 = !DILocation(line: 463, column: 11, scope: !2002)
!2004 = !DILocation(line: 463, column: 6, scope: !1938)
!2005 = !DILocation(line: 463, column: 26, scope: !2002)
!2006 = !DILocation(line: 464, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 464, column: 6)
!2008 = !DILocation(line: 464, column: 11, scope: !2007)
!2009 = !DILocation(line: 464, column: 6, scope: !1938)
!2010 = !DILocation(line: 464, column: 26, scope: !2007)
!2011 = !DILocation(line: 465, column: 6, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 465, column: 6)
!2013 = !DILocation(line: 465, column: 11, scope: !2012)
!2014 = !DILocation(line: 465, column: 6, scope: !1938)
!2015 = !DILocation(line: 465, column: 26, scope: !2012)
!2016 = !DILocation(line: 466, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 466, column: 6)
!2018 = !DILocation(line: 466, column: 11, scope: !2017)
!2019 = !DILocation(line: 466, column: 6, scope: !1938)
!2020 = !DILocation(line: 466, column: 26, scope: !2017)
!2021 = !DILocation(line: 467, column: 6, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 467, column: 6)
!2023 = !DILocation(line: 467, column: 11, scope: !2022)
!2024 = !DILocation(line: 467, column: 6, scope: !1938)
!2025 = !DILocation(line: 467, column: 26, scope: !2022)
!2026 = !DILocation(line: 468, column: 6, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 468, column: 6)
!2028 = !DILocation(line: 468, column: 11, scope: !2027)
!2029 = !DILocation(line: 468, column: 6, scope: !1938)
!2030 = !DILocation(line: 468, column: 26, scope: !2027)
!2031 = !DILocation(line: 469, column: 6, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 469, column: 6)
!2033 = !DILocation(line: 469, column: 11, scope: !2032)
!2034 = !DILocation(line: 469, column: 6, scope: !1938)
!2035 = !DILocation(line: 469, column: 26, scope: !2032)
!2036 = !DILocation(line: 470, column: 6, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 470, column: 6)
!2038 = !DILocation(line: 470, column: 11, scope: !2037)
!2039 = !DILocation(line: 470, column: 6, scope: !1938)
!2040 = !DILocation(line: 470, column: 26, scope: !2037)
!2041 = !DILocation(line: 471, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 471, column: 6)
!2043 = !DILocation(line: 471, column: 11, scope: !2042)
!2044 = !DILocation(line: 471, column: 6, scope: !1938)
!2045 = !DILocation(line: 471, column: 26, scope: !2042)
!2046 = !DILocation(line: 472, column: 6, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 472, column: 6)
!2048 = !DILocation(line: 472, column: 11, scope: !2047)
!2049 = !DILocation(line: 472, column: 6, scope: !1938)
!2050 = !DILocation(line: 472, column: 26, scope: !2047)
!2051 = !DILocation(line: 473, column: 6, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 473, column: 6)
!2053 = !DILocation(line: 473, column: 11, scope: !2052)
!2054 = !DILocation(line: 473, column: 6, scope: !1938)
!2055 = !DILocation(line: 473, column: 26, scope: !2052)
!2056 = !DILocation(line: 474, column: 6, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 474, column: 6)
!2058 = !DILocation(line: 474, column: 11, scope: !2057)
!2059 = !DILocation(line: 474, column: 6, scope: !1938)
!2060 = !DILocation(line: 474, column: 27, scope: !2057)
!2061 = !DILocation(line: 475, column: 6, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 475, column: 6)
!2063 = !DILocation(line: 475, column: 11, scope: !2062)
!2064 = !DILocation(line: 475, column: 6, scope: !1938)
!2065 = !DILocation(line: 475, column: 32, scope: !2062)
!2066 = !DILocation(line: 477, column: 50, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1938, file: !12, line: 477, column: 6)
!2068 = !{i8 0, i8 2}
!2069 = !DILocation(line: 477, column: 6, scope: !1938)
!2070 = !DILocation(line: 478, column: 3, scope: !2067)
!2071 = !DILocation(line: 478, column: 3, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !12, line: 478, column: 3)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !12, line: 478, column: 3)
!2074 = !{i32 -2143041104}
!2075 = !DILocation(line: 478, column: 3, scope: !2073)
!2076 = !DILocation(line: 480, column: 3, scope: !2067)
!2077 = !DILocation(line: 480, column: 3, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2067, file: !12, line: 480, column: 3)
!2079 = !DILocation(line: 480, column: 3, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2078, file: !12, line: 480, column: 3)
!2081 = !DILocation(line: 480, column: 3, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !12, line: 480, column: 3)
!2083 = !{i64 2151926395, i64 2151926424, i64 2151926470, i64 2151926528, i64 2151926582, i64 2151926636, i64 2151926691, i64 2151926722}
!2084 = !DILocation(line: 483, column: 2, scope: !1938)
!2085 = !DILocation(line: 484, column: 1, scope: !1938)
!2086 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!53, !2089, !50, !861}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2091, line: 11, flags: DIFlagFwdDecl)
!2091 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2092 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2093, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!11, !50, !52}
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "flags", arg: 1, scope: !2092, file: !12, line: 401, type: !50)
!2097 = !DILocalVariable(name: "caller", arg: 2, scope: !2092, file: !12, line: 401, type: !52)
!2098 = !DILocation(line: 401, column: 67, scope: !2092)
!2099 = !DILocation(line: 401, column: 88, scope: !2092)
!2100 = !DILocation(line: 407, column: 6, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2092, file: !12, line: 407, column: 6)
!2102 = !DILocation(line: 407, column: 6, scope: !2092)
!2103 = !DILocation(line: 413, column: 3, scope: !2101)
!2104 = !DILocation(line: 423, column: 38, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2092, file: !12, line: 423, column: 6)
!2106 = !DILocation(line: 423, column: 44, scope: !2105)
!2107 = !DILocation(line: 423, column: 6, scope: !2092)
!2108 = !DILocation(line: 424, column: 3, scope: !2105)
!2109 = !DILocation(line: 426, column: 3, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2092, file: !12, line: 425, column: 6)
!2111 = !DILocation(line: 429, column: 1, scope: !2092)
!2112 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2113 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1727, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2114 = distinct !DISubprogram(name: "native_save_fl", scope: !1922, file: !1922, line: 17, type: !1923, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2115 = !{!2116}
!2116 = !DILocalVariable(name: "flags", scope: !2114, file: !1922, line: 19, type: !52)
!2117 = !DILocation(line: 19, column: 2, scope: !2114)
!2118 = !DILocation(line: 19, column: 16, scope: !2114)
!2119 = !DILocation(line: 26, column: 2, scope: !2114)
!2120 = !{i64 1516314, i64 1516335}
!2121 = !DILocation(line: 32, column: 9, scope: !2114)
!2122 = !DILocation(line: 33, column: 1, scope: !2114)
!2123 = !DILocation(line: 32, column: 2, scope: !2114)
!2124 = distinct !DISubprogram(name: "acpi_os_free", scope: !1676, file: !1676, line: 60, type: !2125, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !53}
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "memory", arg: 1, scope: !2124, file: !1676, line: 60, type: !53)
!2129 = !DILocation(line: 60, column: 39, scope: !2124)
!2130 = !DILocation(line: 62, column: 8, scope: !2124)
!2131 = !DILocation(line: 62, column: 2, scope: !2124)
!2132 = !DILocation(line: 63, column: 1, scope: !2124)
!2133 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2138 = distinct !DISubprogram(name: "get_current", scope: !2139, file: !2139, line: 39, type: !2140, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2142)
!2139 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!55}
!2142 = !{!2143, !2145, !2147}
!2143 = !DILocalVariable(name: "pscr_ret__", scope: !2144, file: !2139, line: 41, type: !55)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !2139, line: 41, column: 9)
!2145 = !DILocalVariable(name: "__vpp_verify", scope: !2146, file: !2139, line: 41, type: !2136)
!2146 = distinct !DILexicalBlock(scope: !2144, file: !2139, line: 41, column: 9)
!2147 = !DILocalVariable(name: "pfo_val__", scope: !2148, file: !2139, line: 41, type: !42)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !2139, line: 41, column: 9)
!2149 = !DILocation(line: 41, column: 9, scope: !2144)
!2150 = !DILocation(line: 41, column: 9, scope: !2146)
!2151 = !DILocation(line: 41, column: 9, scope: !2148)
!2152 = !{i64 2148284759}
!2153 = !DILocation(line: 41, column: 9, scope: !2138)
!2154 = !DILocation(line: 41, column: 2, scope: !2138)
