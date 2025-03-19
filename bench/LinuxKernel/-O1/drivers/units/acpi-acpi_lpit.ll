; ModuleID = 'drivers/acpi/acpi_lpit.c'
source_filename = "drivers/acpi/acpi_lpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lpit_read_residency_count_address: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad lpit_read_residency_count_address ; .previous"

%struct.lpit_residency_info = type { %struct.acpi_generic_address, i64, ptr }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { i64 }
%struct.acpi_table_lpit = type { %struct.acpi_table_header }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_lpit_native = type { %struct.acpi_lpit_header, %struct.acpi_generic_address, i32, i32, %struct.acpi_generic_address, i64 }
%struct.acpi_lpit_header = type { i32, i32, i16, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@residency_info_mem = internal global %struct.lpit_residency_info zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable_lpit_read_residency_count_address206 = internal global ptr @lpit_read_residency_count_address, section ".discard.addressable", align 8, !dbg !155
@.str = private unnamed_addr constant [5 x i8] c"LPIT\00", align 1, !dbg !157
@residency_info_ffh = internal global %struct.lpit_residency_info zeroinitializer, align 8, !dbg !1765
@cpu_subsys = external dso_local global %struct.bus_type, align 8
@tsc_khz = external dso_local global i32, align 4
@dev_attr_low_power_idle_system_residency_us = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @low_power_idle_system_residency_us_show, ptr null }, align 8, !dbg !169
@.str.1 = private unnamed_addr constant [8 x i8] c"cpuidle\00", align 1, !dbg !162
@dev_attr_low_power_idle_cpu_residency_us = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @low_power_idle_cpu_residency_us_show, ptr null }, align 8, !dbg !1763
@.str.2 = private unnamed_addr constant [35 x i8] c"low_power_idle_system_residency_us\00", align 1, !dbg !164
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !1759
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"low_power_idle_cpu_residency_us\00", align 1, !dbg !1761
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_lpit_read_residency_count_address206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lpit_read_residency_count_address(ptr noundef %address) #0 align 16 !dbg !1781 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1785, metadata !DIExpression()), !dbg !1786
  %0 = load i64, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_mem, i32 0, i32 4), align 4, !dbg !1787
  %tobool = icmp ne i64 %0, 0, !dbg !1789
  br i1 %tobool, label %if.end, label %if.then, !dbg !1790

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1791
  br label %return, !dbg !1791

if.end:                                           ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_mem, i32 0, i32 4), align 4, !dbg !1792
  %2 = load ptr, ptr %address.addr, align 8, !dbg !1793
  store i64 %1, ptr %2, align 8, !dbg !1794
  store i32 0, ptr %retval, align 4, !dbg !1795
  br label %return, !dbg !1795

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !1796
  ret i32 %3, !dbg !1796
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_init_lpit() #0 align 16 !dbg !1797 {
entry:
  %status = alloca i32, align 4
  %lpit = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !1806
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1799, metadata !DIExpression()), !dbg !1807
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpit) #7, !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %lpit, metadata !1801, metadata !DIExpression()), !dbg !1809
  %call = call i32 @acpi_get_table(ptr noundef @.str, i32 noundef 0, ptr noundef %lpit) #8, !dbg !1810
  store i32 %call, ptr %status, align 4, !dbg !1811
  %0 = load i32, ptr %status, align 4, !dbg !1812
  %tobool = icmp ne i32 %0, 0, !dbg !1812
  br i1 %tobool, label %if.then, label %if.end, !dbg !1814

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1815

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lpit, align 8, !dbg !1816
  %2 = ptrtoint ptr %1 to i64, !dbg !1817
  %add = add i64 %2, 36, !dbg !1818
  %3 = load ptr, ptr %lpit, align 8, !dbg !1819
  %4 = ptrtoint ptr %3 to i64, !dbg !1820
  %5 = load ptr, ptr %lpit, align 8, !dbg !1821
  %header = getelementptr inbounds %struct.acpi_table_lpit, ptr %5, i32 0, i32 0, !dbg !1822
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !1823
  %6 = load i32, ptr %length, align 1, !dbg !1823
  %conv = zext i32 %6 to i64, !dbg !1821
  %add1 = add i64 %4, %conv, !dbg !1824
  call void @lpit_process(i64 noundef %add, i64 noundef %add1) #8, !dbg !1825
  %7 = load ptr, ptr %lpit, align 8, !dbg !1826
  call void @acpi_put_table(ptr noundef %7) #8, !dbg !1827
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1828
  br label %cleanup, !dbg !1828

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpit) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !1828
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1828

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1829 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lpit_process(i64 noundef %begin, i64 noundef %end) #0 align 16 !dbg !1834 {
entry:
  %begin.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %lpit_native = alloca ptr, align 8
  store i64 %begin, ptr %begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !1838, metadata !DIExpression()), !dbg !1842
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1839, metadata !DIExpression()), !dbg !1843
  br label %while.cond, !dbg !1844

while.cond:                                       ; preds = %if.end17, %entry
  %0 = load i64, ptr %begin.addr, align 8, !dbg !1845
  %add = add i64 %0, 56, !dbg !1846
  %1 = load i64, ptr %end.addr, align 8, !dbg !1847
  %cmp = icmp ule i64 %add, %1, !dbg !1848
  br i1 %cmp, label %while.body, label %while.end, !dbg !1844

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpit_native) #7, !dbg !1849
  call void @llvm.dbg.declare(metadata ptr %lpit_native, metadata !1840, metadata !DIExpression()), !dbg !1850
  %2 = load i64, ptr %begin.addr, align 8, !dbg !1851
  %3 = inttoptr i64 %2 to ptr, !dbg !1852
  store ptr %3, ptr %lpit_native, align 8, !dbg !1850
  %4 = load ptr, ptr %lpit_native, align 8, !dbg !1853
  %header = getelementptr inbounds %struct.acpi_lpit_native, ptr %4, i32 0, i32 0, !dbg !1855
  %type = getelementptr inbounds %struct.acpi_lpit_header, ptr %header, i32 0, i32 0, !dbg !1856
  %5 = load i32, ptr %type, align 1, !dbg !1856
  %tobool = icmp ne i32 %5, 0, !dbg !1853
  br i1 %tobool, label %if.end17, label %land.lhs.true, !dbg !1857

land.lhs.true:                                    ; preds = %while.body
  %6 = load ptr, ptr %lpit_native, align 8, !dbg !1858
  %header1 = getelementptr inbounds %struct.acpi_lpit_native, ptr %6, i32 0, i32 0, !dbg !1859
  %flags = getelementptr inbounds %struct.acpi_lpit_header, ptr %header1, i32 0, i32 4, !dbg !1860
  %7 = load i32, ptr %flags, align 1, !dbg !1860
  %tobool2 = icmp ne i32 %7, 0, !dbg !1858
  br i1 %tobool2, label %if.end17, label %if.then, !dbg !1861

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %lpit_native, align 8, !dbg !1862
  %residency_counter = getelementptr inbounds %struct.acpi_lpit_native, ptr %8, i32 0, i32 4, !dbg !1865
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %residency_counter, i32 0, i32 0, !dbg !1866
  %9 = load i8, ptr %space_id, align 1, !dbg !1866
  %conv = zext i8 %9 to i32, !dbg !1862
  %cmp3 = icmp eq i32 %conv, 0, !dbg !1867
  br i1 %cmp3, label %land.lhs.true5, label %if.else, !dbg !1868

land.lhs.true5:                                   ; preds = %if.then
  %10 = load i64, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_mem, i32 0, i32 4), align 4, !dbg !1869
  %tobool6 = icmp ne i64 %10, 0, !dbg !1870
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !1871

if.then7:                                         ; preds = %land.lhs.true5
  %11 = load ptr, ptr %lpit_native, align 8, !dbg !1872
  call void @lpit_update_residency(ptr noundef @residency_info_mem, ptr noundef %11) #8, !dbg !1874
  br label %if.end16, !dbg !1875

if.else:                                          ; preds = %land.lhs.true5, %if.then
  %12 = load ptr, ptr %lpit_native, align 8, !dbg !1876
  %residency_counter8 = getelementptr inbounds %struct.acpi_lpit_native, ptr %12, i32 0, i32 4, !dbg !1878
  %space_id9 = getelementptr inbounds %struct.acpi_generic_address, ptr %residency_counter8, i32 0, i32 0, !dbg !1879
  %13 = load i8, ptr %space_id9, align 1, !dbg !1879
  %conv10 = zext i8 %13 to i32, !dbg !1876
  %cmp11 = icmp eq i32 %conv10, 127, !dbg !1880
  br i1 %cmp11, label %land.lhs.true13, label %if.end, !dbg !1881

land.lhs.true13:                                  ; preds = %if.else
  %14 = load i64, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_ffh, i32 0, i32 4), align 4, !dbg !1882
  %tobool14 = icmp ne i64 %14, 0, !dbg !1883
  br i1 %tobool14, label %if.end, label %if.then15, !dbg !1884

if.then15:                                        ; preds = %land.lhs.true13
  %15 = load ptr, ptr %lpit_native, align 8, !dbg !1885
  call void @lpit_update_residency(ptr noundef @residency_info_ffh, ptr noundef %15) #8, !dbg !1887
  br label %if.end, !dbg !1888

if.end:                                           ; preds = %if.then15, %land.lhs.true13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then7
  br label %if.end17, !dbg !1889

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %while.body
  %16 = load ptr, ptr %lpit_native, align 8, !dbg !1890
  %header18 = getelementptr inbounds %struct.acpi_lpit_native, ptr %16, i32 0, i32 0, !dbg !1891
  %length = getelementptr inbounds %struct.acpi_lpit_header, ptr %header18, i32 0, i32 1, !dbg !1892
  %17 = load i32, ptr %length, align 1, !dbg !1892
  %conv19 = zext i32 %17 to i64, !dbg !1890
  %18 = load i64, ptr %begin.addr, align 8, !dbg !1893
  %add20 = add i64 %18, %conv19, !dbg !1893
  store i64 %add20, ptr %begin.addr, align 8, !dbg !1893
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpit_native) #7, !dbg !1894
  br label %while.cond, !dbg !1844, !llvm.loop !1895

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1899 dso_local void @acpi_put_table(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lpit_update_residency(ptr noundef %info, ptr noundef %lpit_native) #0 align 16 !dbg !1902 {
entry:
  %info.addr = alloca ptr, align 8
  %lpit_native.addr = alloca ptr, align 8
  %dev_root = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1907, metadata !DIExpression()), !dbg !1911
  store ptr %lpit_native, ptr %lpit_native.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpit_native.addr, metadata !1908, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_root) #7, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %dev_root, metadata !1909, metadata !DIExpression()), !dbg !1914
  %call = call ptr @bus_get_dev_root(ptr noundef @cpu_subsys) #8, !dbg !1915
  store ptr %call, ptr %dev_root, align 8, !dbg !1914
  %0 = load ptr, ptr %dev_root, align 8, !dbg !1916
  %tobool = icmp ne ptr %0, null, !dbg !1916
  br i1 %tobool, label %if.end, label %if.then, !dbg !1918

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1919

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lpit_native.addr, align 8, !dbg !1920
  %counter_frequency = getelementptr inbounds %struct.acpi_lpit_native, ptr %1, i32 0, i32 5, !dbg !1921
  %2 = load i64, ptr %counter_frequency, align 1, !dbg !1921
  %tobool1 = icmp ne i64 %2, 0, !dbg !1920
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1920

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %lpit_native.addr, align 8, !dbg !1922
  %counter_frequency2 = getelementptr inbounds %struct.acpi_lpit_native, ptr %3, i32 0, i32 5, !dbg !1923
  %4 = load i64, ptr %counter_frequency2, align 1, !dbg !1923
  br label %cond.end, !dbg !1920

cond.false:                                       ; preds = %if.end
  %5 = load i32, ptr @tsc_khz, align 4, !dbg !1924
  %call3 = call i64 @mul_u32_u32(i32 noundef %5, i32 noundef 1000) #8, !dbg !1925
  br label %cond.end, !dbg !1920

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %call3, %cond.false ], !dbg !1920
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1926
  %frequency = getelementptr inbounds %struct.lpit_residency_info, ptr %6, i32 0, i32 1, !dbg !1927
  store i64 %cond, ptr %frequency, align 8, !dbg !1928
  %7 = load ptr, ptr %info.addr, align 8, !dbg !1929
  %frequency4 = getelementptr inbounds %struct.lpit_residency_info, ptr %7, i32 0, i32 1, !dbg !1931
  %8 = load i64, ptr %frequency4, align 8, !dbg !1931
  %tobool5 = icmp ne i64 %8, 0, !dbg !1929
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !1932

if.then6:                                         ; preds = %cond.end
  %9 = load ptr, ptr %info.addr, align 8, !dbg !1933
  %frequency7 = getelementptr inbounds %struct.lpit_residency_info, ptr %9, i32 0, i32 1, !dbg !1934
  store i64 1, ptr %frequency7, align 8, !dbg !1935
  br label %if.end8, !dbg !1933

if.end8:                                          ; preds = %if.then6, %cond.end
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1936
  %gaddr = getelementptr inbounds %struct.lpit_residency_info, ptr %10, i32 0, i32 0, !dbg !1937
  %11 = load ptr, ptr %lpit_native.addr, align 8, !dbg !1938
  %residency_counter = getelementptr inbounds %struct.acpi_lpit_native, ptr %11, i32 0, i32 4, !dbg !1939
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gaddr, ptr align 1 %residency_counter, i64 12, i1 false), !dbg !1939
  %12 = load ptr, ptr %info.addr, align 8, !dbg !1940
  %gaddr9 = getelementptr inbounds %struct.lpit_residency_info, ptr %12, i32 0, i32 0, !dbg !1942
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %gaddr9, i32 0, i32 0, !dbg !1943
  %13 = load i8, ptr %space_id, align 8, !dbg !1943
  %conv = zext i8 %13 to i32, !dbg !1940
  %cmp = icmp eq i32 %conv, 0, !dbg !1944
  br i1 %cmp, label %if.then11, label %if.else, !dbg !1945

if.then11:                                        ; preds = %if.end8
  %14 = load ptr, ptr %info.addr, align 8, !dbg !1946
  %gaddr12 = getelementptr inbounds %struct.lpit_residency_info, ptr %14, i32 0, i32 0, !dbg !1948
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %gaddr12, i32 0, i32 4, !dbg !1949
  %15 = load i64, ptr %address, align 4, !dbg !1949
  %16 = load ptr, ptr %info.addr, align 8, !dbg !1950
  %gaddr13 = getelementptr inbounds %struct.lpit_residency_info, ptr %16, i32 0, i32 0, !dbg !1951
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %gaddr13, i32 0, i32 1, !dbg !1952
  %17 = load i8, ptr %bit_width, align 1, !dbg !1952
  %conv14 = zext i8 %17 to i32, !dbg !1950
  %div = sdiv i32 %conv14, 8, !dbg !1953
  %conv15 = sext i32 %div to i64, !dbg !1950
  %call16 = call ptr @ioremap(i64 noundef %15, i64 noundef %conv15) #8, !dbg !1954
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1955
  %iomem_addr = getelementptr inbounds %struct.lpit_residency_info, ptr %18, i32 0, i32 2, !dbg !1956
  store ptr %call16, ptr %iomem_addr, align 8, !dbg !1957
  %19 = load ptr, ptr %info.addr, align 8, !dbg !1958
  %iomem_addr17 = getelementptr inbounds %struct.lpit_residency_info, ptr %19, i32 0, i32 2, !dbg !1960
  %20 = load ptr, ptr %iomem_addr17, align 8, !dbg !1960
  %tobool18 = icmp ne ptr %20, null, !dbg !1958
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1961

if.then19:                                        ; preds = %if.then11
  br label %exit, !dbg !1962

if.end20:                                         ; preds = %if.then11
  %21 = load ptr, ptr %dev_root, align 8, !dbg !1963
  %kobj = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 0, !dbg !1964
  %call21 = call i32 @sysfs_add_file_to_group(ptr noundef %kobj, ptr noundef @dev_attr_low_power_idle_system_residency_us, ptr noundef @.str.1) #8, !dbg !1965
  br label %if.end31, !dbg !1966

if.else:                                          ; preds = %if.end8
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1967
  %gaddr22 = getelementptr inbounds %struct.lpit_residency_info, ptr %22, i32 0, i32 0, !dbg !1969
  %space_id23 = getelementptr inbounds %struct.acpi_generic_address, ptr %gaddr22, i32 0, i32 0, !dbg !1970
  %23 = load i8, ptr %space_id23, align 8, !dbg !1970
  %conv24 = zext i8 %23 to i32, !dbg !1967
  %cmp25 = icmp eq i32 %conv24, 127, !dbg !1971
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !1972

if.then27:                                        ; preds = %if.else
  %24 = load ptr, ptr %dev_root, align 8, !dbg !1973
  %kobj28 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 0, !dbg !1975
  %call29 = call i32 @sysfs_add_file_to_group(ptr noundef %kobj28, ptr noundef @dev_attr_low_power_idle_cpu_residency_us, ptr noundef @.str.1) #8, !dbg !1976
  br label %if.end30, !dbg !1977

if.end30:                                         ; preds = %if.then27, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end20
  br label %exit, !dbg !1978

exit:                                             ; preds = %if.end31, %if.then19
  call void @llvm.dbg.label(metadata !1910), !dbg !1979
  %25 = load ptr, ptr %dev_root, align 8, !dbg !1980
  call void @put_device(ptr noundef %25) #8, !dbg !1981
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1982
  br label %cleanup, !dbg !1982

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_root) #7, !dbg !1982
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1982

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1983 dso_local ptr @bus_get_dev_root(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mul_u32_u32(i32 noundef %a, i32 noundef %b) #4 align 16 !dbg !1986 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1991, metadata !DIExpression()), !dbg !1993
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1992, metadata !DIExpression()), !dbg !1994
  %0 = load i32, ptr %a.addr, align 4, !dbg !1995
  %conv = zext i32 %0 to i64, !dbg !1996
  %1 = load i32, ptr %b.addr, align 4, !dbg !1997
  %conv1 = zext i32 %1 to i64, !dbg !1997
  %mul = mul i64 %conv, %conv1, !dbg !1998
  ret i64 %mul, !dbg !1999
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2000 dso_local ptr @ioremap(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2006 dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2011 dso_local void @put_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @low_power_idle_system_residency_us_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2012 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %counter = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2014, metadata !DIExpression()), !dbg !2019
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2015, metadata !DIExpression()), !dbg !2020
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2016, metadata !DIExpression()), !dbg !2021
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #7, !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !2017, metadata !DIExpression()), !dbg !2023
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2018, metadata !DIExpression()), !dbg !2025
  %call = call i32 @lpit_read_residency_counter_us(ptr noundef %counter, i1 noundef zeroext true) #8, !dbg !2026
  store i32 %call, ptr %ret, align 4, !dbg !2027
  %0 = load i32, ptr %ret, align 4, !dbg !2028
  %tobool = icmp ne i32 %0, 0, !dbg !2028
  br i1 %tobool, label %if.then, label %if.end, !dbg !2030

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !2031
  %conv = sext i32 %1 to i64, !dbg !2031
  store i64 %conv, ptr %retval, align 8, !dbg !2032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2032

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2033
  %3 = load i64, ptr %counter, align 8, !dbg !2034
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.3, i64 noundef %3) #8, !dbg !2035
  %conv2 = sext i32 %call1 to i64, !dbg !2035
  store i64 %conv2, ptr %retval, align 8, !dbg !2036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2036

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2037
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #7, !dbg !2037
  %4 = load i64, ptr %retval, align 8, !dbg !2037
  ret i64 %4, !dbg !2037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lpit_read_residency_counter_us(ptr noundef %counter, i1 noundef zeroext %io_mem) #0 align 16 !dbg !2038 {
entry:
  %retval = alloca i32, align 4
  %counter.addr = alloca ptr, align 8
  %io_mem.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %count = alloca i64, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mask = alloca i64, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !2042, metadata !DIExpression()), !dbg !2052
  %frombool = zext i1 %io_mem to i8
  store i8 %frombool, ptr %io_mem.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %io_mem.addr, metadata !2043, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2044, metadata !DIExpression()), !dbg !2055
  %0 = load i8, ptr %io_mem.addr, align 1, !dbg !2056, !range !2057, !noundef !401
  %tobool = trunc i8 %0 to i1, !dbg !2056
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2058

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7, !dbg !2059
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2045, metadata !DIExpression()), !dbg !2060
  store i64 0, ptr %count, align 8, !dbg !2060
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2048, metadata !DIExpression()), !dbg !2062
  %1 = load ptr, ptr getelementptr inbounds (%struct.lpit_residency_info, ptr @residency_info_mem, i32 0, i32 2), align 8, !dbg !2063
  %2 = load i8, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_mem, i32 0, i32 1), align 1, !dbg !2064
  %conv = zext i8 %2 to i32, !dbg !2065
  %call = call i32 @acpi_os_read_iomem(ptr noundef %1, ptr noundef %count, i32 noundef %conv) #8, !dbg !2066
  store i32 %call, ptr %error, align 4, !dbg !2067
  %3 = load i32, ptr %error, align 4, !dbg !2068
  %tobool1 = icmp ne i32 %3, 0, !dbg !2068
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2070

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %error, align 4, !dbg !2071
  store i32 %4, ptr %retval, align 4, !dbg !2072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2072

if.end:                                           ; preds = %if.then
  %5 = load i64, ptr %count, align 8, !dbg !2073
  %mul = mul i64 %5, 1000000, !dbg !2074
  %6 = load i64, ptr getelementptr inbounds (%struct.lpit_residency_info, ptr @residency_info_mem, i32 0, i32 1), align 8, !dbg !2075
  %call3 = call i64 @div64_u64(i64 noundef %mul, i64 noundef %6) #8, !dbg !2076
  %7 = load ptr, ptr %counter.addr, align 8, !dbg !2077
  store i64 %call3, ptr %7, align 8, !dbg !2078
  store i32 0, ptr %retval, align 4, !dbg !2079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2079

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7, !dbg !2080
  br label %cleanup26

if.end5:                                          ; preds = %entry
  %8 = load i64, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_ffh, i32 0, i32 4), align 4, !dbg !2081
  %conv6 = trunc i64 %8 to i32, !dbg !2082
  %9 = load ptr, ptr %counter.addr, align 8, !dbg !2083
  %call7 = call i32 @rdmsrl_safe(i32 noundef %conv6, ptr noundef %9) #8, !dbg !2084
  store i32 %call7, ptr %err, align 4, !dbg !2085
  %10 = load i32, ptr %err, align 4, !dbg !2086
  %tobool8 = icmp ne i32 %10, 0, !dbg !2086
  br i1 %tobool8, label %if.end25, label %if.then9, !dbg !2087

if.then9:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !2088
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2049, metadata !DIExpression()), !dbg !2089
  %11 = load i8, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_ffh, i32 0, i32 2), align 2, !dbg !2090
  %conv10 = zext i8 %11 to i32, !dbg !2090
  %sh_prom = zext i32 %conv10 to i64, !dbg !2090
  %shl = shl i64 1, %sh_prom, !dbg !2090
  %sub = sub i64 -1, %shl, !dbg !2090
  %add = add i64 %sub, 1, !dbg !2090
  %12 = load i8, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_ffh, i32 0, i32 2), align 2, !dbg !2090
  %conv11 = zext i8 %12 to i32, !dbg !2090
  %13 = load i8, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_ffh, i32 0, i32 1), align 1, !dbg !2090
  %conv12 = zext i8 %13 to i32, !dbg !2090
  %add13 = add i32 %conv11, %conv12, !dbg !2090
  %sub14 = sub i32 %add13, 1, !dbg !2090
  %sub15 = sub i32 63, %sub14, !dbg !2090
  %sh_prom16 = zext i32 %sub15 to i64, !dbg !2090
  %shr = lshr i64 -1, %sh_prom16, !dbg !2090
  %and = and i64 %add, %shr, !dbg !2090
  %add17 = add i64 0, %and, !dbg !2090
  store i64 %add17, ptr %mask, align 8, !dbg !2089
  %14 = load i64, ptr %mask, align 8, !dbg !2091
  %15 = load ptr, ptr %counter.addr, align 8, !dbg !2092
  %16 = load i64, ptr %15, align 8, !dbg !2093
  %and18 = and i64 %16, %14, !dbg !2093
  store i64 %and18, ptr %15, align 8, !dbg !2093
  %17 = load i8, ptr getelementptr inbounds (%struct.acpi_generic_address, ptr @residency_info_ffh, i32 0, i32 2), align 2, !dbg !2094
  %conv19 = zext i8 %17 to i32, !dbg !2095
  %18 = load ptr, ptr %counter.addr, align 8, !dbg !2096
  %19 = load i64, ptr %18, align 8, !dbg !2097
  %sh_prom20 = zext i32 %conv19 to i64, !dbg !2097
  %shr21 = lshr i64 %19, %sh_prom20, !dbg !2097
  store i64 %shr21, ptr %18, align 8, !dbg !2097
  %20 = load ptr, ptr %counter.addr, align 8, !dbg !2098
  %21 = load i64, ptr %20, align 8, !dbg !2099
  %mul22 = mul i64 %21, 1000000, !dbg !2100
  %22 = load i64, ptr getelementptr inbounds (%struct.lpit_residency_info, ptr @residency_info_ffh, i32 0, i32 1), align 8, !dbg !2101
  %call23 = call i64 @div64_u64(i64 noundef %mul22, i64 noundef %22) #8, !dbg !2102
  %23 = load ptr, ptr %counter.addr, align 8, !dbg !2103
  store i64 %call23, ptr %23, align 8, !dbg !2104
  store i32 0, ptr %retval, align 4, !dbg !2105
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !2106
  br label %cleanup26

if.end25:                                         ; preds = %if.end5
  store i32 -61, ptr %retval, align 4, !dbg !2107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !2107

cleanup26:                                        ; preds = %if.end25, %if.then9, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !2108
  %24 = load i32, ptr %retval, align 4, !dbg !2108
  ret i32 %24, !dbg !2108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2109 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2113 dso_local i32 @acpi_os_read_iomem(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) #4 align 16 !dbg !2117 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !2125
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !2126
  %div = udiv i64 %0, %1, !dbg !2127
  ret i64 %div, !dbg !2128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #4 align 16 !dbg !2129 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2135, metadata !DIExpression()), !dbg !2138
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2137, metadata !DIExpression()), !dbg !2141
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2142
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #8, !dbg !2143
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2144
  store i64 %call, ptr %1, align 8, !dbg !2145
  %2 = load i32, ptr %err, align 4, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !2147
  ret i32 %2, !dbg !2148
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #4 align 16 !dbg !2149 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2153, metadata !DIExpression()), !dbg !2157
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2154, metadata !DIExpression()), !dbg !2158
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #7, !dbg !2159
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2155, metadata !DIExpression()), !dbg !2159
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #7, !dbg !2159
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2156, metadata !DIExpression()), !dbg !2159
  %0 = load ptr, ptr %err.addr, align 8, !dbg !2160
  %1 = load i32, ptr %msr.addr, align 4, !dbg !2161
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #7, !dbg !2162, !srcloc !2163
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !2162
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !2162
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !2162
  store i32 %asmresult, ptr %0, align 4, !dbg !2162
  store i64 %asmresult1, ptr %low, align 8, !dbg !2162
  store i64 %asmresult2, ptr %high, align 8, !dbg !2162
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #8, !dbg !2164
  br i1 %call, label %if.then, label %if.end, !dbg !2166

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !2167
  %4 = load i64, ptr %low, align 8, !dbg !2168
  %5 = load i64, ptr %high, align 8, !dbg !2168
  %shl = shl i64 %5, 32, !dbg !2168
  %or = or i64 %4, %shl, !dbg !2168
  %6 = load ptr, ptr %err.addr, align 8, !dbg !2169
  %7 = load i32, ptr %6, align 4, !dbg !2170
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #8, !dbg !2171
  br label %if.end, !dbg !2171

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !2172
  %9 = load i64, ptr %high, align 8, !dbg !2172
  %shl3 = shl i64 %9, 32, !dbg !2172
  %or4 = or i64 %8, %shl3, !dbg !2172
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #7, !dbg !2173
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #7, !dbg !2173
  ret i64 %or4, !dbg !2174
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !2175 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2193
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !2194
  ret i1 %call, !dbg !2195
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2196 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !2199 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2204, metadata !DIExpression()), !dbg !2207
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2205, metadata !DIExpression()), !dbg !2208
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2209
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2210, !range !2057, !noundef !401
  %tobool = trunc i8 %1 to i1, !dbg !2210
  %conv = zext i1 %tobool to i32, !dbg !2210
  %or = or i32 2, %conv, !dbg !2211
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #7
          to label %asm.fallthrough [label %l_yes], !dbg !2212, !srcloc !2213

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2214
  br label %return, !dbg !2214

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2206), !dbg !2215
  store i1 true, ptr %retval, align 1, !dbg !2216
  br label %return, !dbg !2216

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2217
  ret i1 %2, !dbg !2217
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @low_power_idle_cpu_residency_us_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2218 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %counter = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2220, metadata !DIExpression()), !dbg !2225
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2221, metadata !DIExpression()), !dbg !2226
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2222, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #7, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !2223, metadata !DIExpression()), !dbg !2229
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2230
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2224, metadata !DIExpression()), !dbg !2231
  %call = call i32 @lpit_read_residency_counter_us(ptr noundef %counter, i1 noundef zeroext false) #8, !dbg !2232
  store i32 %call, ptr %ret, align 4, !dbg !2233
  %0 = load i32, ptr %ret, align 4, !dbg !2234
  %tobool = icmp ne i32 %0, 0, !dbg !2234
  br i1 %tobool, label %if.then, label %if.end, !dbg !2236

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !2237
  %conv = sext i32 %1 to i64, !dbg !2237
  store i64 %conv, ptr %retval, align 8, !dbg !2238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2238

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2239
  %3 = load i64, ptr %counter, align 8, !dbg !2240
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.3, i64 noundef %3) #8, !dbg !2241
  %conv2 = sext i32 %call1 to i64, !dbg !2241
  store i64 %conv2, ptr %retval, align 8, !dbg !2242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2242

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2243
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #7, !dbg !2243
  %4 = load i64, ptr %retval, align 8, !dbg !2243
  ret i64 %4, !dbg !2243
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!llvm.ident = !{!1780}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "residency_info_mem", scope: !2, file: !3, line: 22, type: !1767, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.acpi_lpit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22acpi_lpit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpi_lpit.ll drivers/acpi/acpi_lpit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !154, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_lpit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "23a56f107cccea5b510db3afba80c633")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !68, !73, !78, !84}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !54, line: 30, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!57 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!58 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0)
!88 = !DIEnumerator(name: "true", value: 1)
!89 = !{!90, !91, !122, !92, !125, !152, !46}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !94, line: 68, size: 288, elements: !95)
!94 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!95 = !{!96, !101, !106, !110, !111, !115, !119, !120, !121}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !93, file: !94, line: 69, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32, elements: !99)
!98 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !94, line: 70, baseType: !102, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !103, line: 21, baseType: !104)
!103 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !105, line: 27, baseType: !7)
!105 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !93, file: !94, line: 71, baseType: !107, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !103, line: 17, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !105, line: 21, baseType: !109)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !93, file: !94, line: 72, baseType: !107, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !93, file: !94, line: 73, baseType: !112, size: 48, offset: 80)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 48, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 6)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !93, file: !94, line: 74, baseType: !116, size: 64, offset: 128)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !93, file: !94, line: 75, baseType: !102, size: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !93, file: !94, line: 76, baseType: !97, size: 32, offset: 224)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !93, file: !94, line: 77, baseType: !102, size: 32, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !103, line: 23, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !105, line: 31, baseType: !124)
!124 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpit_native", file: !127, line: 837, size: 448, elements: !128)
!127 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!128 = !{!129, !140, !148, !149, !150, !151}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !126, file: !127, line: 838, baseType: !130, size: 128)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpit_header", file: !127, line: 811, size: 128, elements: !131)
!131 = !{!132, !133, !134, !138, !139}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !127, line: 812, baseType: !102, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !130, file: !127, line: 813, baseType: !102, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !130, file: !127, line: 814, baseType: !135, size: 16, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !103, line: 19, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !105, line: 24, baseType: !137)
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !130, file: !127, line: 815, baseType: !135, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !127, line: 816, baseType: !102, size: 32, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "entry_trigger", scope: !126, file: !127, line: 839, baseType: !141, size: 96, offset: 128)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !94, line: 90, size: 96, elements: !142)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !141, file: !94, line: 91, baseType: !107, size: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !141, file: !94, line: 92, baseType: !107, size: 8, offset: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !141, file: !94, line: 93, baseType: !107, size: 8, offset: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !141, file: !94, line: 94, baseType: !107, size: 8, offset: 24)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !141, file: !94, line: 95, baseType: !122, size: 64, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "residency", scope: !126, file: !127, line: 840, baseType: !102, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !126, file: !127, line: 841, baseType: !102, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "residency_counter", scope: !126, file: !127, line: 842, baseType: !141, size: 96, offset: 288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "counter_frequency", scope: !126, file: !127, line: 843, baseType: !122, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !153, line: 814, baseType: !107)
!153 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!154 = !{!155, !157, !0, !162, !164, !169, !1759, !1761, !1763, !1765}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lpit_read_residency_count_address206", scope: !2, file: !3, line: 96, type: !90, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 40, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 5)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !116, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 280, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 35)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "dev_attr_low_power_idle_system_residency_us", scope: !2, file: !3, line: 70, type: !171, isLocal: true, isDefinition: true)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !172)
!172 = !{!173, !183, !1755}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !171, file: !26, line: 107, baseType: !174, size: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !175, line: 30, size: 128, elements: !176)
!175 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!176 = !{!177, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 31, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !174, file: !175, line: 32, baseType: !181, size: 16, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !182, line: 24, baseType: !137)
!182 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !171, file: !26, line: 108, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !192, !1754, !276}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !182, line: 66, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !189, line: 73, baseType: !190)
!189 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !189, line: 15, baseType: !191)
!191 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !194)
!194 = !{!195, !835, !836, !839, !840, !893, !1359, !1360, !1361, !1362, !1363, !1370, !1538, !1551, !1561, !1565, !1567, !1568, !1569, !1573, !1580, !1581, !1584, !1587, !1591, !1694, !1695, !1698, !1699, !1700, !1701, !1731, !1732, !1733, !1736, !1739, !1748, !1749, !1750, !1751, !1752, !1753}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !193, file: !26, line: 706, baseType: !196, size: 512)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !197, line: 64, size: 512, elements: !198)
!197 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!198 = !{!199, !200, !206, !208, !289, !706, !820, !830, !831, !832, !833, !834}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 65, baseType: !178, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !196, file: !197, line: 66, baseType: !201, size: 128, offset: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !182, line: 190, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !182, line: 191, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !182, line: 191, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !197, line: 67, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !196, file: !197, line: 68, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !197, line: 168, size: 768, elements: !211)
!211 = !{!212, !213, !248, !249}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !210, file: !197, line: 169, baseType: !201, size: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !210, file: !197, line: 170, baseType: !214, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !215, line: 29, baseType: !216)
!215 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !215, line: 17, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !215, line: 18, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !215, line: 18, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !219, file: !215, line: 19, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 14, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !222, file: !223, line: 15, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !227, line: 44, baseType: !228)
!227 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !227, line: 14, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !227, line: 15, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 15, size: 32, elements: !232)
!232 = !{!233, !238, !243}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !231, file: !227, line: 16, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !182, line: 174, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 172, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !235, file: !182, line: 173, baseType: !46, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 24, baseType: !239, size: 16)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 24, size: 16, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !239, file: !227, line: 25, baseType: !107, size: 8)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !239, file: !227, line: 26, baseType: !107, size: 8, offset: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 28, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 28, size: 32, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !244, file: !227, line: 29, baseType: !135, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !244, file: !227, line: 30, baseType: !135, size: 16, offset: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !210, file: !197, line: 171, baseType: !196, size: 512, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !210, file: !197, line: 172, baseType: !250, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !197, line: 133, size: 192, elements: !253)
!253 = !{!254, !261, !266}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !252, file: !197, line: 134, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!46, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !197, line: 135, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!178, !259}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !252, file: !197, line: 136, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!46, !259, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !197, line: 125, size: 20736, elements: !273)
!273 = !{!274, !279, !283, !284, !288}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !272, file: !197, line: 126, baseType: !275, size: 192)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 192, elements: !277)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!277 = !{!278}
!278 = !DISubrange(count: 3)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !272, file: !197, line: 127, baseType: !280, size: 4096, offset: 192)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 4096, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !272, file: !197, line: 128, baseType: !46, size: 32, offset: 4288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !272, file: !197, line: 129, baseType: !285, size: 16384, offset: 4320)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16384, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 2048)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !272, file: !197, line: 130, baseType: !46, size: 32, offset: 20704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !196, file: !197, line: 69, baseType: !290, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !197, line: 116, size: 384, elements: !293)
!293 = !{!294, !298, !316, !653, !684, !688}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !292, file: !197, line: 117, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !207}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !292, file: !197, line: 118, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !175, line: 254, size: 128, elements: !302)
!302 = !{!303, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !301, file: !175, line: 255, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!187, !207, !307, !276}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !301, file: !175, line: 256, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!187, !207, !307, !178, !312}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 61, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !189, line: 72, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !189, line: 16, baseType: !315)
!315 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !292, file: !197, line: 119, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !175, line: 84, size: 320, elements: !321)
!321 = !{!322, !323, !327, !649, !651}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !175, line: 85, baseType: !178, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !320, file: !175, line: 86, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!181, !207, !307, !46}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !320, file: !175, line: 88, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!181, !207, !331, !46}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !175, line: 175, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !344, !354, !355}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !332, file: !175, line: 176, baseType: !174, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !332, file: !175, line: 177, baseType: !312, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !332, file: !175, line: 178, baseType: !90, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !332, file: !175, line: 179, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !343, line: 32, flags: DIFlagFwdDecl)
!343 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !332, file: !175, line: 180, baseType: !345, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!187, !348, !207, !331, !276, !351, !312}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !350, line: 537, flags: DIFlagFwdDecl)
!350 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !182, line: 52, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !189, line: 88, baseType: !353)
!353 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !332, file: !175, line: 182, baseType: !345, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !332, file: !175, line: 184, baseType: !356, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!46, !348, !207, !331, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !343, line: 625, size: 1344, elements: !361)
!361 = !{!362, !379, !597, !603, !610, !611, !616, !619, !631, !632, !635, !639, !640, !641, !642, !643, !647}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !343, line: 628, baseType: !363, size: 128)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !343, line: 628, size: 128, elements: !364)
!364 = !{!365, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !343, line: 629, baseType: !366, size: 128)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !343, line: 629, size: 128, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !366, file: !343, line: 631, baseType: !315, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !366, file: !343, line: 632, baseType: !315, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !363, file: !343, line: 635, baseType: !371, size: 128, align: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !182, line: 232, size: 128, align: 64, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !182, line: 233, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !371, file: !182, line: 234, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !374}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !360, file: !343, line: 639, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !343, line: 733, size: 10240, elements: !382)
!382 = !{!383, !593}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !343, line: 734, baseType: !384, size: 10240)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !343, line: 734, size: 10240, elements: !385)
!385 = !{!386, !390, !404, !408, !409, !410, !411, !412, !413, !421, !422, !423, !429, !430, !439, !440, !441, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !488, !500, !503, !558, !559, !560, !563, !567, !568, !571, !572, !573, !580, !581}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !343, line: 739, baseType: !387, size: 512, align: 512)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !343, line: 739, size: 512, align: 512, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !387, file: !343, line: 747, baseType: !234, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !384, file: !343, line: 750, baseType: !391, size: 128, offset: 512)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !392, line: 218, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!393 = !{!394, !402, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !392, line: 219, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 219, size: 32, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !395, file: !392, line: 220, baseType: !214, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !395, file: !392, line: 221, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !392, line: 197, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 197, elements: !401)
!401 = !{}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !391, file: !392, line: 223, baseType: !7, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !391, file: !392, line: 224, baseType: !90, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !384, file: !343, line: 752, baseType: !405, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!315, !348, !315, !315, !315, !315}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !384, file: !343, line: 756, baseType: !315, size: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !384, file: !343, line: 757, baseType: !315, size: 64, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !384, file: !343, line: 760, baseType: !315, size: 64, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !384, file: !343, line: 761, baseType: !315, size: 64, offset: 896)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !384, file: !343, line: 763, baseType: !315, size: 64, offset: 960)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !384, file: !343, line: 764, baseType: !414, size: 64, offset: 1024)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !350, line: 299, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 299, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !416, file: !350, line: 299, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !420, line: 18, baseType: !315)
!420 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !384, file: !343, line: 773, baseType: !234, size: 32, offset: 1088)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !384, file: !343, line: 785, baseType: !234, size: 32, offset: 1120)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !384, file: !343, line: 795, baseType: !424, size: 64, offset: 1152)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !343, line: 726, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !425, file: !343, line: 727, baseType: !122, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !425, file: !343, line: 728, baseType: !46, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !384, file: !343, line: 801, baseType: !315, size: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !384, file: !343, line: 804, baseType: !431, size: 64, offset: 1280)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !432, line: 13, baseType: !433)
!432 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !182, line: 181, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 179, size: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !434, file: !182, line: 180, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !103, line: 22, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !105, line: 30, baseType: !353)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !384, file: !343, line: 806, baseType: !46, size: 32, offset: 1344)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !384, file: !343, line: 808, baseType: !214, size: 32, offset: 1376)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !384, file: !343, line: 823, baseType: !442, size: 320, offset: 1408)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !443, line: 48, size: 320, elements: !444)
!443 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!444 = !{!445, !446, !447, !452, !454}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !442, file: !443, line: 49, baseType: !431, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !442, file: !443, line: 55, baseType: !431, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !442, file: !443, line: 57, baseType: !448, size: 32, offset: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !449, line: 15, size: 32, elements: !450)
!449 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !448, file: !449, line: 20, baseType: !234, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !442, file: !443, line: 59, baseType: !453, size: 32, offset: 160)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 23, baseType: !222)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !442, file: !443, line: 60, baseType: !201, size: 128, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !384, file: !343, line: 825, baseType: !201, size: 128, offset: 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !384, file: !343, line: 845, baseType: !46, size: 32, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !384, file: !343, line: 849, baseType: !315, size: 64, offset: 1920)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !384, file: !343, line: 850, baseType: !315, size: 64, offset: 1984)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !384, file: !343, line: 852, baseType: !315, size: 64, offset: 2048)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !384, file: !343, line: 853, baseType: !315, size: 64, offset: 2112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !384, file: !343, line: 854, baseType: !433, size: 64, offset: 2176)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !384, file: !343, line: 855, baseType: !315, size: 64, offset: 2240)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !384, file: !343, line: 856, baseType: !315, size: 64, offset: 2304)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !384, file: !343, line: 857, baseType: !315, size: 64, offset: 2368)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !384, file: !343, line: 858, baseType: !315, size: 64, offset: 2432)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !384, file: !343, line: 865, baseType: !467, size: 32, offset: 2496)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !468, line: 69, baseType: !469)
!468 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !468, line: 64, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !469, file: !468, line: 65, baseType: !7, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !384, file: !343, line: 867, baseType: !214, size: 32, offset: 2528)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !384, file: !343, line: 869, baseType: !315, size: 64, offset: 2560)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !384, file: !343, line: 869, baseType: !315, size: 64, offset: 2624)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !384, file: !343, line: 869, baseType: !315, size: 64, offset: 2688)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !384, file: !343, line: 869, baseType: !315, size: 64, offset: 2752)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !384, file: !343, line: 870, baseType: !315, size: 64, offset: 2816)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !384, file: !343, line: 870, baseType: !315, size: 64, offset: 2880)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !384, file: !343, line: 870, baseType: !315, size: 64, offset: 2944)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !384, file: !343, line: 871, baseType: !315, size: 64, offset: 3008)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !384, file: !343, line: 871, baseType: !315, size: 64, offset: 3072)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !384, file: !343, line: 871, baseType: !315, size: 64, offset: 3136)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !384, file: !343, line: 871, baseType: !315, size: 64, offset: 3200)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !384, file: !343, line: 873, baseType: !485, size: 3328, offset: 3264)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 3328, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 52)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !384, file: !343, line: 875, baseType: !489, size: 1280, offset: 6592)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 1280, elements: !99)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !491, line: 22, size: 320, elements: !492)
!491 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!492 = !{!493, !494, !495, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !490, file: !491, line: 23, baseType: !453, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !490, file: !491, line: 24, baseType: !437, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !490, file: !491, line: 26, baseType: !201, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !490, file: !491, line: 28, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !103, line: 20, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !105, line: 26, baseType: !46)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !384, file: !343, line: 877, baseType: !501, size: 64, offset: 7872)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !343, line: 877, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !384, file: !343, line: 880, baseType: !504, size: 1088, offset: 7936)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !505, line: 72, baseType: !506)
!505 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 23, size: 1088, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !515, !516, !524, !525, !552, !553, !554}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !506, file: !505, line: 28, baseType: !122, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !506, file: !505, line: 38, baseType: !433, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !506, file: !505, line: 40, baseType: !315, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !506, file: !505, line: 43, baseType: !442, size: 320, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !506, file: !505, line: 44, baseType: !513, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !505, line: 44, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !505, line: 48, baseType: !315, size: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !505, line: 59, baseType: !517, size: 256, offset: 640)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !518, line: 66, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !517, file: !518, line: 67, baseType: !431, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !517, file: !518, line: 68, baseType: !453, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !517, file: !518, line: 70, baseType: !448, size: 32, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !517, file: !518, line: 72, baseType: !201, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !506, file: !505, line: 60, baseType: !90, size: 64, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !506, file: !505, line: 61, baseType: !526, size: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !529, line: 13, size: 1216, elements: !530)
!529 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!530 = !{!531, !532, !533, !534, !535, !536, !537, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !528, file: !529, line: 14, baseType: !90, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !528, file: !529, line: 15, baseType: !315, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !528, file: !529, line: 17, baseType: !315, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !528, file: !529, line: 17, baseType: !315, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !528, file: !529, line: 18, baseType: !315, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !528, file: !529, line: 18, baseType: !315, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !528, file: !529, line: 19, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !528, file: !529, line: 21, baseType: !191, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !528, file: !529, line: 23, baseType: !191, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !528, file: !529, line: 24, baseType: !191, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !528, file: !529, line: 25, baseType: !191, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !528, file: !529, line: 26, baseType: !191, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !528, file: !529, line: 27, baseType: !191, size: 64, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !528, file: !529, line: 28, baseType: !191, size: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !528, file: !529, line: 29, baseType: !191, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !528, file: !529, line: 30, baseType: !191, size: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !528, file: !529, line: 31, baseType: !191, size: 64, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !528, file: !529, line: 32, baseType: !191, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !528, file: !529, line: 33, baseType: !191, size: 64, offset: 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !506, file: !505, line: 63, baseType: !234, size: 32, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !506, file: !505, line: 69, baseType: !135, size: 16, offset: 1056)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !506, file: !505, line: 70, baseType: !555, size: 16, offset: 1072)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !103, line: 18, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !105, line: 23, baseType: !557)
!557 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !343, line: 882, baseType: !315, size: 64, offset: 9024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !384, file: !343, line: 885, baseType: !214, size: 32, offset: 9088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !384, file: !343, line: 886, baseType: !561, size: 64, offset: 9152)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !343, line: 732, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !384, file: !343, line: 901, baseType: !564, size: 64, offset: 9216)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !566, line: 18, flags: DIFlagFwdDecl)
!566 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!567 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !384, file: !343, line: 904, baseType: !348, size: 64, offset: 9280)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !384, file: !343, line: 906, baseType: !569, size: 64, offset: 9344)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !343, line: 906, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !384, file: !343, line: 930, baseType: !234, size: 32, offset: 9408)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !384, file: !343, line: 933, baseType: !234, size: 32, offset: 9440)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !384, file: !343, line: 935, baseType: !574, size: 64, offset: 9472)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !575, line: 103, size: 64, elements: !576)
!575 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !574, file: !575, line: 104, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !575, line: 101, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !384, file: !343, line: 940, baseType: !431, size: 64, offset: 9536)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !384, file: !343, line: 942, baseType: !582, size: 256, offset: 9600)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !583, line: 98, size: 256, elements: !584)
!583 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !582, file: !583, line: 99, baseType: !431, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !582, file: !583, line: 100, baseType: !201, size: 128, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !582, file: !583, line: 101, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !583, line: 21, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !381, file: !343, line: 986, baseType: !594, offset: 10240)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: -1)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !360, file: !343, line: 640, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !350, line: 297, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !350, line: 297, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !599, file: !350, line: 297, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !420, line: 19, baseType: !315)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !343, line: 646, baseType: !604, size: 64, offset: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !343, line: 646, size: 64, elements: !605)
!605 = !{!606, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !604, file: !343, line: 647, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !343, line: 542, baseType: !315)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !604, file: !343, line: 648, baseType: !608, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !360, file: !343, line: 666, baseType: !46, size: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !360, file: !343, line: 667, baseType: !612, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !343, line: 579, size: 320, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !343, line: 580, baseType: !442, size: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !360, file: !343, line: 670, baseType: !617, size: 8, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !182, line: 35, baseType: !618)
!618 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !360, file: !343, line: 681, baseType: !620, size: 256, offset: 512)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !343, line: 678, size: 256, elements: !621)
!621 = !{!622, !630}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !620, file: !343, line: 679, baseType: !623, size: 192, align: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !624, line: 5, size: 192, align: 64, elements: !625)
!624 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!625 = !{!626, !627, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !623, file: !624, line: 6, baseType: !315, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !623, file: !624, line: 7, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !623, file: !624, line: 8, baseType: !628, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !620, file: !343, line: 680, baseType: !315, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !360, file: !343, line: 689, baseType: !201, size: 128, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !360, file: !343, line: 691, baseType: !633, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !343, line: 691, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !360, file: !343, line: 694, baseType: !636, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !343, line: 694, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !360, file: !343, line: 697, baseType: !315, size: 64, offset: 1024)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !360, file: !343, line: 699, baseType: !348, size: 64, offset: 1088)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !360, file: !343, line: 700, baseType: !90, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !360, file: !343, line: 711, baseType: !431, size: 64, offset: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !360, file: !343, line: 717, baseType: !644, size: 64, offset: 1280)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !646, line: 54, flags: DIFlagFwdDecl)
!646 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !360, file: !343, line: 722, baseType: !648, offset: 1344)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !343, line: 570, elements: !401)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !320, file: !175, line: 90, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !320, file: !175, line: 91, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !292, file: !197, line: 120, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!657, !259}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !660)
!660 = !{!661, !662, !666, !670, !676, !680}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !6, line: 40, baseType: !5, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !659, file: !6, line: 41, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!617}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !659, file: !6, line: 42, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!90}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !659, file: !6, line: 43, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!538, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !659, file: !6, line: 44, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!538}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !659, file: !6, line: 45, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !90}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !292, file: !197, line: 121, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!538, !259}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !292, file: !197, line: 122, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !259, !692, !699}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !566, line: 23, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 21, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !694, file: !566, line: 22, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !182, line: 37, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !189, line: 49, baseType: !7)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !566, line: 28, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 26, size: 32, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !701, file: !566, line: 27, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !182, line: 38, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !189, line: 50, baseType: !7)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !196, file: !197, line: 70, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !709, line: 190, size: 1152, elements: !710)
!709 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !812, !813, !814, !815, !816, !819}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !708, file: !709, line: 191, baseType: !234, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !708, file: !709, line: 192, baseType: !234, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !708, file: !709, line: 202, baseType: !707, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !708, file: !709, line: 203, baseType: !178, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !708, file: !709, line: 205, baseType: !623, size: 192, align: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !708, file: !709, line: 207, baseType: !538, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !708, file: !709, line: 208, baseType: !7, size: 32, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !709, line: 209, baseType: !719, size: 256, offset: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !709, line: 209, size: 256, elements: !720)
!720 = !{!721, !733, !737}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !719, file: !709, line: 210, baseType: !722, size: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !709, line: 153, size: 256, elements: !723)
!723 = !{!724, !725, !729, !732}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !722, file: !709, line: 154, baseType: !315, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !722, file: !709, line: 156, baseType: !726, size: 64, offset: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !624, line: 12, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !726, file: !624, line: 13, baseType: !628, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !722, file: !709, line: 162, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !709, line: 162, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !722, file: !709, line: 167, baseType: !315, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !719, file: !709, line: 211, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !709, line: 170, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !734, file: !709, line: 171, baseType: !707, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !719, file: !709, line: 212, baseType: !738, size: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !709, line: 174, size: 256, elements: !739)
!739 = !{!740, !807, !810, !811}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !738, file: !709, line: 175, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !709, line: 271, size: 768, elements: !744)
!744 = !{!745, !767, !771, !775, !780, !784, !788, !792, !793, !794, !795, !803}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !743, file: !709, line: 276, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!46, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !709, line: 251, size: 1216, elements: !751)
!751 = !{!752, !753, !754, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !750, file: !709, line: 253, baseType: !707, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !750, file: !709, line: 254, baseType: !348, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !750, file: !709, line: 255, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !646, line: 66, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !750, file: !709, line: 256, baseType: !90, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !750, file: !709, line: 259, baseType: !517, size: 256, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !750, file: !709, line: 260, baseType: !517, size: 256, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !750, file: !709, line: 261, baseType: !46, size: 32, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !750, file: !709, line: 262, baseType: !201, size: 128, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !750, file: !709, line: 263, baseType: !276, size: 64, offset: 960)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !750, file: !709, line: 265, baseType: !312, size: 64, offset: 1024)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !750, file: !709, line: 266, baseType: !617, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !750, file: !709, line: 267, baseType: !617, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !750, file: !709, line: 268, baseType: !636, size: 64, offset: 1152)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !743, file: !709, line: 277, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !749}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !743, file: !709, line: 290, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!46, !755, !90}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !743, file: !709, line: 292, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!90, !755, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !743, file: !709, line: 293, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!90, !755, !90, !779}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !743, file: !709, line: 294, baseType: !785, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !755, !90}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !743, file: !709, line: 296, baseType: !789, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!187, !749, !276, !312, !351}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !743, file: !709, line: 306, baseType: !312, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !743, file: !709, line: 313, baseType: !617, size: 8, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !743, file: !709, line: 314, baseType: !789, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !743, file: !709, line: 317, baseType: !796, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !749, !801}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !800, line: 59, baseType: !7)
!800 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !709, line: 31, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !743, file: !709, line: 320, baseType: !804, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!46, !749, !359}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !738, file: !709, line: 176, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !709, line: 35, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !738, file: !709, line: 177, baseType: !351, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !738, file: !709, line: 178, baseType: !707, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !708, file: !709, line: 215, baseType: !90, size: 64, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !708, file: !709, line: 221, baseType: !122, size: 64, offset: 832)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !709, line: 223, baseType: !137, size: 16, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !708, file: !709, line: 224, baseType: !181, size: 16, offset: 912)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !708, file: !709, line: 225, baseType: !817, size: 64, offset: 960)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !709, line: 36, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !708, file: !709, line: 227, baseType: !371, size: 128, align: 64, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !196, file: !197, line: 71, baseType: !821, size: 32, offset: 448)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !822, line: 19, size: 32, elements: !823)
!822 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !821, file: !822, line: 20, baseType: !825, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !826, line: 113, baseType: !827)
!826 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !826, line: 111, size: 32, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !827, file: !826, line: 112, baseType: !234, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !196, file: !197, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !196, file: !197, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !196, file: !197, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !196, file: !197, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !196, file: !197, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !26, line: 707, baseType: !192, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !193, file: !26, line: 709, baseType: !837, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !193, file: !26, line: 711, baseType: !178, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !193, file: !26, line: 712, baseType: !841, size: 64, offset: 704)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !844)
!844 = !{!845, !846, !847, !853, !858, !862}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !843, file: !26, line: 90, baseType: !178, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !843, file: !26, line: 91, baseType: !317, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !843, file: !26, line: 92, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!46, !851, !271}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !843, file: !26, line: 93, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!276, !851, !857, !692, !699}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !843, file: !26, line: 95, baseType: !859, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !192}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !843, file: !26, line: 97, baseType: !863, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !866)
!866 = !{!867, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !865, file: !38, line: 287, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!46, !192}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !865, file: !38, line: 288, baseType: !859, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !865, file: !38, line: 289, baseType: !868, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !865, file: !38, line: 290, baseType: !868, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !865, file: !38, line: 291, baseType: !868, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !865, file: !38, line: 292, baseType: !868, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !865, file: !38, line: 293, baseType: !868, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !865, file: !38, line: 294, baseType: !868, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !865, file: !38, line: 295, baseType: !868, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !865, file: !38, line: 296, baseType: !868, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !865, file: !38, line: 297, baseType: !868, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !865, file: !38, line: 298, baseType: !868, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !865, file: !38, line: 299, baseType: !868, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !865, file: !38, line: 300, baseType: !868, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !865, file: !38, line: 301, baseType: !868, size: 64, offset: 896)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !865, file: !38, line: 302, baseType: !868, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !865, file: !38, line: 303, baseType: !868, size: 64, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !865, file: !38, line: 304, baseType: !868, size: 64, offset: 1088)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !865, file: !38, line: 305, baseType: !868, size: 64, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !865, file: !38, line: 306, baseType: !868, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !865, file: !38, line: 307, baseType: !868, size: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !865, file: !38, line: 308, baseType: !868, size: 64, offset: 1344)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !865, file: !38, line: 309, baseType: !868, size: 64, offset: 1408)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !193, file: !26, line: 714, baseType: !894, size: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !897, line: 80, size: 1344, elements: !898)
!897 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!898 = !{!899, !900, !901, !902, !903, !904, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1358}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !896, file: !897, line: 81, baseType: !178, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !896, file: !897, line: 82, baseType: !178, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !896, file: !897, line: 83, baseType: !317, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !896, file: !897, line: 84, baseType: !317, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !896, file: !897, line: 85, baseType: !317, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !896, file: !897, line: 87, baseType: !905, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!46, !192, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !910)
!910 = !{!911, !912, !913, !1289, !1290, !1291, !1292, !1308, !1321, !1322, !1323, !1324, !1325, !1333, !1334, !1335, !1336, !1337, !1338}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !909, file: !20, line: 97, baseType: !178, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !909, file: !20, line: 98, baseType: !894, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !909, file: !20, line: 100, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !916)
!916 = !{!917, !918, !919, !923, !944, !970, !971, !972, !973, !977, !980, !981, !982, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1045, !1049, !1069, !1087, !1088, !1089, !1090, !1099, !1122, !1123, !1126, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1140, !1141, !1247, !1255, !1256, !1257, !1259, !1263, !1264, !1268, !1269, !1270, !1271, !1273, !1274, !1275, !1282, !1283, !1284, !1288}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !915, file: !13, line: 403, baseType: !12, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !915, file: !13, line: 406, baseType: !201, size: 128, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !915, file: !13, line: 409, baseType: !920, size: 448, offset: 192)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 448, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 56)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !915, file: !13, line: 417, baseType: !924, size: 768, offset: 640)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !925)
!925 = !{!926, !927, !928, !929, !932}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !924, file: !13, line: 46, baseType: !196, size: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !924, file: !13, line: 47, baseType: !914, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !924, file: !13, line: 48, baseType: !207, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !924, file: !13, line: 49, baseType: !930, size: 64, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !924, file: !13, line: 50, baseType: !933, size: 64, offset: 704)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !935, line: 26, size: 256, elements: !936)
!935 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !934, file: !935, line: 27, baseType: !7, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !934, file: !935, line: 28, baseType: !939, size: 192, offset: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !940, line: 43, size: 192, elements: !941)
!940 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !939, file: !940, line: 44, baseType: !453, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !939, file: !940, line: 45, baseType: !201, size: 128, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !915, file: !13, line: 418, baseType: !945, size: 64, offset: 1408)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !947)
!947 = !{!948, !949, !954, !958, !962, !966}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !946, file: !13, line: 54, baseType: !174, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !946, file: !13, line: 55, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!187, !945, !953, !276}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !946, file: !13, line: 57, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!187, !945, !953, !178, !312}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !946, file: !13, line: 59, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !914, !178}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !946, file: !13, line: 60, baseType: !963, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!46, !914}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !946, file: !13, line: 61, baseType: !967, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !914}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !915, file: !13, line: 419, baseType: !178, size: 64, offset: 1472)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !915, file: !13, line: 420, baseType: !178, size: 64, offset: 1536)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !915, file: !13, line: 421, baseType: !207, size: 64, offset: 1600)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !915, file: !13, line: 424, baseType: !974, size: 64, offset: 1664)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !915, file: !13, line: 425, baseType: !978, size: 64, offset: 1728)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !915, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !915, file: !13, line: 435, baseType: !517, size: 256, offset: 1856)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !915, file: !13, line: 437, baseType: !983, size: 64, offset: 2112)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !985, line: 69, size: 320, elements: !986)
!985 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!986 = !{!987, !988, !989, !1006, !1008, !1012, !1013}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !984, file: !985, line: 70, baseType: !178, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !984, file: !985, line: 71, baseType: !914, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !984, file: !985, line: 72, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !985, line: 47, size: 256, elements: !993)
!993 = !{!994, !995, !1001, !1005}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !985, line: 49, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !992, file: !985, line: 51, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!46, !178, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !992, file: !985, line: 53, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!46, !276, !999}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !992, file: !985, line: 55, baseType: !681, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !984, file: !985, line: 73, baseType: !1007, size: 16, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !984, file: !985, line: 74, baseType: !1009, size: 8, offset: 208)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !103, line: 16, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !105, line: 20, baseType: !1011)
!1011 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !985, line: 75, baseType: !107, size: 8, offset: 216)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !985, line: 76, baseType: !1014, size: 64, offset: 256)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !985, line: 76, size: 64, elements: !1015)
!1015 = !{!1016, !1017, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1014, file: !985, line: 77, baseType: !90, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1014, file: !985, line: 78, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !985, line: 86, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1020, file: !985, line: 87, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1020, file: !985, line: 88, baseType: !276, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1014, file: !985, line: 79, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !985, line: 92, size: 256, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1033, !1034}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1027, file: !985, line: 94, baseType: !7, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1027, file: !985, line: 95, baseType: !7, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1027, file: !985, line: 96, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1027, file: !985, line: 97, baseType: !990, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1027, file: !985, line: 98, baseType: !90, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !915, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !915, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !915, file: !13, line: 442, baseType: !974, size: 64, offset: 2240)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !915, file: !13, line: 443, baseType: !978, size: 64, offset: 2304)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !915, file: !13, line: 444, baseType: !617, size: 8, offset: 2368)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !915, file: !13, line: 451, baseType: !617, size: 8, offset: 2376)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !915, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !915, file: !13, line: 455, baseType: !1043, size: 64, offset: 2432)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !915, file: !13, line: 458, baseType: !1046, size: 64, offset: 2496)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!46}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !915, file: !13, line: 460, baseType: !1050, size: 4032, align: 512, offset: 2560)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 4032, elements: !1067)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1052)
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1051, file: !13, line: 363, baseType: !90, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1051, file: !13, line: 367, baseType: !1056, size: 448, offset: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1056, file: !13, line: 320, baseType: !914, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1056, file: !13, line: 321, baseType: !1060, size: 384, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1061, line: 40, size: 384, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1060, file: !1061, line: 41, baseType: !1064, size: 384, align: 64)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 384, align: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 2)
!1067 = !{!1068}
!1068 = !DISubrange(count: 7)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !915, file: !13, line: 463, baseType: !1070, size: 192, offset: 6592)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1071, line: 8, size: 192, elements: !1072)
!1071 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1072 = !{!1073, !1074, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1070, file: !1071, line: 10, baseType: !7, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1070, file: !1071, line: 11, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1070, file: !1071, line: 12, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1079, line: 59, size: 48, elements: !1080)
!1079 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1078, file: !1079, line: 60, baseType: !555, size: 16)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1078, file: !1079, line: 61, baseType: !555, size: 16, offset: 16)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1078, file: !1079, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1078, file: !1079, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1078, file: !1079, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1078, file: !1079, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !915, file: !13, line: 465, baseType: !315, size: 64, offset: 6784)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !915, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !915, file: !13, line: 470, baseType: !201, size: 128, offset: 6912)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !915, file: !13, line: 471, baseType: !1091, size: 64, offset: 7040)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1093, line: 33, size: 96, elements: !1094)
!1093 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1094 = !{!1095, !1096, !1097, !1098}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1092, file: !1093, line: 37, baseType: !46, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1092, file: !1093, line: 43, baseType: !46, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1092, file: !1093, line: 45, baseType: !137, size: 16, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !1093, line: 47, baseType: !137, size: 16, offset: 80)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !915, file: !13, line: 476, baseType: !1100, size: 64, offset: 7104)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1102)
!1102 = !{!1103, !1119, !1120, !1121}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1101, file: !13, line: 379, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1106, line: 204, baseType: !1107)
!1106 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1106, line: 197, size: 192, elements: !1108)
!1108 = !{!1109, !1111, !1112, !1113, !1115, !1117}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1107, file: !1106, line: 198, baseType: !1110, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1106, line: 21, baseType: !104)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1107, file: !1106, line: 199, baseType: !109, size: 8, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1107, file: !1106, line: 200, baseType: !109, size: 8, offset: 40)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1107, file: !1106, line: 201, baseType: !1114, size: 16, offset: 48)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1106, line: 17, baseType: !136)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1107, file: !1106, line: 202, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1106, line: 16, baseType: !123)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1107, file: !1106, line: 203, baseType: !1118, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1106, line: 22, baseType: !123)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1101, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1101, file: !13, line: 381, baseType: !276, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1101, file: !13, line: 382, baseType: !276, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !915, file: !13, line: 477, baseType: !1101, size: 256, offset: 7168)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !915, file: !13, line: 480, baseType: !1124, size: 64, offset: 7424)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !915, file: !13, line: 483, baseType: !1127, size: 64, offset: 7488)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !915, file: !13, line: 488, baseType: !276, size: 64, offset: 7552)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !915, file: !13, line: 492, baseType: !90, size: 64, offset: 7616)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !915, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !915, file: !13, line: 495, baseType: !90, size: 64, offset: 7744)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !915, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !915, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !915, file: !13, line: 500, baseType: !1136, size: 64, offset: 7872)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1138, line: 45, baseType: !1139)
!1138 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !915, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !915, file: !13, line: 504, baseType: !1142, size: 64, offset: 8000)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1145, line: 96, size: 192, elements: !1146)
!1145 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1146 = !{!1147, !1148, !1208, !1211}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1144, file: !1145, line: 97, baseType: !7, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1144, file: !1145, line: 98, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1145, line: 24, size: 3072, elements: !1151)
!1151 = !{!1152, !1154, !1155, !1156, !1157, !1171, !1172, !1173, !1174, !1192, !1193, !1194, !1205, !1206, !1207}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1150, file: !1145, line: 26, baseType: !1153, size: 128)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 128, elements: !1065)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1150, file: !1145, line: 27, baseType: !1153, size: 128, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1150, file: !1145, line: 28, baseType: !46, size: 32, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1150, file: !1145, line: 31, baseType: !214, size: 32, align: 512, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1150, file: !1145, line: 32, baseType: !1158, size: 960, offset: 576)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1159, line: 206, size: 960, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1160 = !{!1161, !1162, !1165, !1167, !1168, !1170}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1158, file: !1159, line: 207, baseType: !374, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1158, file: !1159, line: 208, baseType: !1163, size: 256, offset: 64)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 256, elements: !99)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1158, file: !1159, line: 209, baseType: !1166, size: 256, offset: 320)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !99)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1158, file: !1159, line: 213, baseType: !191, size: 64, offset: 576)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1158, file: !1159, line: 215, baseType: !1169, size: 256, offset: 640)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !99)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 216, baseType: !107, size: 8, offset: 896)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1150, file: !1145, line: 33, baseType: !315, size: 64, offset: 1536)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1150, file: !1145, line: 34, baseType: !315, size: 64, offset: 1600)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1150, file: !1145, line: 35, baseType: !617, size: 8, offset: 1664)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1150, file: !1145, line: 36, baseType: !1175, size: 320, offset: 1728)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1176, line: 11, size: 320, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1177 = !{!1178, !1185, !1186, !1191}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1175, file: !1176, line: 16, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !182, line: 198, size: 128, elements: !1180)
!1180 = !{!1181, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1179, file: !182, line: 199, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1179, file: !182, line: 199, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1175, file: !1176, line: 17, baseType: !315, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1175, file: !1176, line: 18, baseType: !1187, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1175, file: !1176, line: 19, baseType: !102, size: 32, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1150, file: !1145, line: 37, baseType: !582, size: 256, offset: 2048)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1150, file: !1145, line: 38, baseType: !371, size: 128, align: 64, offset: 2304)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1150, file: !1145, line: 39, baseType: !1195, size: 64, offset: 2432)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1145, line: 49, size: 768, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1196, file: !1145, line: 50, baseType: !214, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1196, file: !1145, line: 51, baseType: !1166, size: 256, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1196, file: !1145, line: 53, baseType: !1166, size: 256, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1196, file: !1145, line: 54, baseType: !315, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1196, file: !1145, line: 55, baseType: !1195, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1196, file: !1145, line: 56, baseType: !46, size: 32, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1196, file: !1145, line: 57, baseType: !46, size: 32, offset: 736)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1150, file: !1145, line: 40, baseType: !315, size: 64, offset: 2496)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1150, file: !1145, line: 42, baseType: !46, size: 32, offset: 2560)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1150, file: !1145, line: 43, baseType: !1143, size: 64, offset: 2624)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1144, file: !1145, line: 99, baseType: !1209, offset: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1210, line: 211, elements: !401)
!1210 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1144, file: !1145, line: 100, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1145, line: 63, size: 3008, elements: !1214)
!1214 = !{!1215, !1216, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1246}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1213, file: !1145, line: 64, baseType: !1195, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1213, file: !1145, line: 65, baseType: !1217, size: 192, offset: 64)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 192, elements: !277)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1213, file: !1145, line: 67, baseType: !46, size: 32, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1213, file: !1145, line: 68, baseType: !517, size: 256, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1213, file: !1145, line: 69, baseType: !214, size: 32, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1213, file: !1145, line: 70, baseType: !517, size: 256, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1213, file: !1145, line: 71, baseType: !315, size: 64, offset: 896)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1213, file: !1145, line: 72, baseType: !315, size: 64, offset: 960)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1213, file: !1145, line: 73, baseType: !315, size: 64, offset: 1024)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1213, file: !1145, line: 74, baseType: !315, size: 64, offset: 1088)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1213, file: !1145, line: 75, baseType: !315, size: 64, offset: 1152)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1213, file: !1145, line: 76, baseType: !315, size: 64, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1213, file: !1145, line: 77, baseType: !315, size: 64, offset: 1280)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1213, file: !1145, line: 78, baseType: !315, size: 64, offset: 1344)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1213, file: !1145, line: 79, baseType: !617, size: 8, offset: 1408)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1213, file: !1145, line: 80, baseType: !315, size: 64, offset: 1472)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1213, file: !1145, line: 81, baseType: !517, size: 256, offset: 1536)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1213, file: !1145, line: 82, baseType: !934, size: 256, offset: 1792)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1213, file: !1145, line: 84, baseType: !234, size: 32, offset: 2048)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1213, file: !1145, line: 87, baseType: !315, size: 64, offset: 2112)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1213, file: !1145, line: 88, baseType: !315, size: 64, offset: 2176)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1213, file: !1145, line: 89, baseType: !1238, size: 704, offset: 2240)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !583, line: 111, size: 704, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1245}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1238, file: !583, line: 112, baseType: !582, size: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1238, file: !583, line: 113, baseType: !1175, size: 320, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1238, file: !583, line: 116, baseType: !1243, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !583, line: 18, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1238, file: !583, line: 117, baseType: !46, size: 32, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1213, file: !1145, line: 90, baseType: !1143, size: 64, offset: 2944)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !915, file: !13, line: 515, baseType: !1248, size: 64, offset: 8064)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1250, line: 117, size: 128, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1249, file: !1250, line: 118, baseType: !498, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1249, file: !1250, line: 119, baseType: !498, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1249, file: !1250, line: 120, baseType: !191, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !915, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !915, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !915, file: !13, line: 520, baseType: !1258, size: 64, offset: 8192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !915, file: !13, line: 523, baseType: !1260, size: 64, offset: 8256)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !915, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !915, file: !13, line: 525, baseType: !1265, size: 64, offset: 8384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !915, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !915, file: !13, line: 533, baseType: !90, size: 64, offset: 8512)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !915, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !915, file: !13, line: 535, baseType: !1272, size: 64, offset: 8640)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !915, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !915, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !915, file: !13, line: 540, baseType: !1276, size: 64, offset: 8768)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1278, line: 32, size: 64, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1277, file: !1278, line: 33, baseType: !498, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1277, file: !1278, line: 34, baseType: !498, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !915, file: !13, line: 563, baseType: !201, size: 128, offset: 8832)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !915, file: !13, line: 565, baseType: !201, size: 128, offset: 8960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !915, file: !13, line: 568, baseType: !1285, size: 64, offset: 9088)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !915, file: !13, line: 570, baseType: !234, size: 32, offset: 9152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !909, file: !20, line: 101, baseType: !178, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !909, file: !20, line: 103, baseType: !617, size: 8, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !909, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !909, file: !20, line: 106, baseType: !1293, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1296, line: 282, size: 1600, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1297 = !{!1298, !1302, !1303, !1307}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1295, file: !1296, line: 283, baseType: !1299, size: 256)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1295, file: !1296, line: 284, baseType: !1299, size: 256, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1295, file: !1296, line: 285, baseType: !1304, size: 1024, offset: 512)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1295, file: !1296, line: 286, baseType: !538, size: 64, offset: 1536)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !909, file: !20, line: 107, baseType: !1309, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1296, line: 217, size: 256, elements: !1312)
!1312 = !{!1313, !1317, !1319, !1320}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1311, file: !1296, line: 218, baseType: !1314, size: 128)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 16)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1311, file: !1296, line: 219, baseType: !1318, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1296, line: 15, baseType: !315)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1311, file: !1296, line: 220, baseType: !104, size: 32, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1311, file: !1296, line: 221, baseType: !104, size: 32, offset: 224)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !909, file: !20, line: 109, baseType: !868, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !909, file: !20, line: 110, baseType: !859, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !909, file: !20, line: 111, baseType: !868, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !909, file: !20, line: 112, baseType: !859, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !909, file: !20, line: 113, baseType: !1326, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!46, !192, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1330, file: !38, line: 59, baseType: !46, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !909, file: !20, line: 114, baseType: !868, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !909, file: !20, line: 115, baseType: !317, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !909, file: !20, line: 116, baseType: !317, size: 64, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !909, file: !20, line: 118, baseType: !863, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !909, file: !20, line: 119, baseType: !859, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !909, file: !20, line: 121, baseType: !1339, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !896, file: !897, line: 88, baseType: !848, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !896, file: !897, line: 89, baseType: !868, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !896, file: !897, line: 90, baseType: !859, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !896, file: !897, line: 91, baseType: !859, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !896, file: !897, line: 92, baseType: !859, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !896, file: !897, line: 94, baseType: !868, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !896, file: !897, line: 95, baseType: !868, size: 64, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !896, file: !897, line: 97, baseType: !1326, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !896, file: !897, line: 98, baseType: !868, size: 64, offset: 896)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !896, file: !897, line: 100, baseType: !868, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !896, file: !897, line: 102, baseType: !868, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !896, file: !897, line: 103, baseType: !859, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !896, file: !897, line: 105, baseType: !863, size: 64, offset: 1152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !896, file: !897, line: 107, baseType: !1355, size: 64, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !897, line: 107, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !896, file: !897, line: 109, baseType: !617, size: 8, offset: 1280)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !193, file: !26, line: 715, baseType: !908, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !193, file: !26, line: 717, baseType: !90, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !193, file: !26, line: 719, baseType: !90, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !193, file: !26, line: 721, baseType: !517, size: 256, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !193, file: !26, line: 725, baseType: !1364, size: 448, offset: 1280)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1364, file: !26, line: 518, baseType: !201, size: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1364, file: !26, line: 519, baseType: !201, size: 128, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1364, file: !26, line: 520, baseType: !201, size: 128, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1364, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !193, file: !26, line: 726, baseType: !1371, size: 2496, offset: 1728)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1417, !1418, !1419, !1420, !1421, !1422, !1491, !1492, !1493, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1531, !1535}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1371, file: !38, line: 664, baseType: !1329, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1371, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1371, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1371, file: !38, line: 667, baseType: !617, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1371, file: !38, line: 668, baseType: !617, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1371, file: !38, line: 669, baseType: !617, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1371, file: !38, line: 670, baseType: !617, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1371, file: !38, line: 671, baseType: !617, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1371, file: !38, line: 672, baseType: !617, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1371, file: !38, line: 673, baseType: !617, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1371, file: !38, line: 674, baseType: !617, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1371, file: !38, line: 675, baseType: !102, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1371, file: !38, line: 676, baseType: !214, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1371, file: !38, line: 678, baseType: !201, size: 128, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1371, file: !38, line: 679, baseType: !934, size: 256, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1371, file: !38, line: 680, baseType: !1389, size: 64, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1391, line: 43, size: 1536, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1400, !1401, !1402, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1390, file: !1391, line: 44, baseType: !178, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1390, file: !1391, line: 45, baseType: !46, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1390, file: !1391, line: 46, baseType: !201, size: 128, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1390, file: !1391, line: 47, baseType: !214, size: 32, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1390, file: !1391, line: 48, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1390, file: !1391, line: 49, baseType: !1175, size: 320, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1390, file: !1391, line: 50, baseType: !315, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1390, file: !1391, line: 51, baseType: !1403, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1404, line: 29, baseType: !437)
!1404 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1390, file: !1391, line: 52, baseType: !1403, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1390, file: !1391, line: 53, baseType: !1403, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1390, file: !1391, line: 54, baseType: !1403, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1390, file: !1391, line: 55, baseType: !1403, size: 64, offset: 1024)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1390, file: !1391, line: 56, baseType: !315, size: 64, offset: 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1390, file: !1391, line: 57, baseType: !315, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1390, file: !1391, line: 58, baseType: !315, size: 64, offset: 1216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1390, file: !1391, line: 59, baseType: !315, size: 64, offset: 1280)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1390, file: !1391, line: 60, baseType: !315, size: 64, offset: 1344)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1390, file: !1391, line: 61, baseType: !192, size: 64, offset: 1408)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1390, file: !1391, line: 62, baseType: !617, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1390, file: !1391, line: 63, baseType: !617, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1371, file: !38, line: 681, baseType: !617, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1371, file: !38, line: 682, baseType: !617, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1371, file: !38, line: 683, baseType: !617, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1371, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1371, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1371, file: !38, line: 690, baseType: !1423, size: 512, offset: 640)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1424)
!1424 = !{!1425, !1431, !1432, !1437, !1487, !1488, !1489, !1490}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1423, file: !33, line: 119, baseType: !1426, size: 256)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1427, line: 9, size: 256, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1426, file: !1427, line: 10, baseType: !623, size: 192, align: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1426, file: !1427, line: 11, baseType: !1403, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1423, file: !33, line: 120, baseType: !1403, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1423, file: !33, line: 121, baseType: !1433, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!32, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1423, file: !33, line: 122, baseType: !1438, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1440)
!1440 = !{!1441, !1464, !1465, !1468, !1473, !1474, !1482, !1486}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1439, file: !33, line: 160, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1443, file: !33, line: 216, baseType: !453, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1443, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1443, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1443, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1443, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1443, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1443, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1443, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1443, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1443, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1443, file: !33, line: 227, baseType: !137, size: 16, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1443, file: !33, line: 228, baseType: !137, size: 16, offset: 208)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1443, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1443, file: !33, line: 235, baseType: !1403, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1443, file: !33, line: 236, baseType: !1436, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1443, file: !33, line: 237, baseType: !1403, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1443, file: !33, line: 238, baseType: !1436, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1443, file: !33, line: 239, baseType: !1463, size: 4096, align: 512, offset: 512)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 4096, align: 512, elements: !117)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1439, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1439, file: !33, line: 162, baseType: !1466, size: 32, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !182, line: 32, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !189, line: 96, baseType: !46)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1439, file: !33, line: 163, baseType: !1469, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !468, line: 274, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !468, line: 274, size: 32, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1470, file: !468, line: 274, baseType: !467, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1439, file: !33, line: 164, baseType: !1436, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1439, file: !33, line: 165, baseType: !1475, size: 128, offset: 256)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1427, line: 14, size: 128, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1475, file: !1427, line: 15, baseType: !1478, size: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !624, line: 26, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1478, file: !624, line: 27, baseType: !726, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1478, file: !624, line: 28, baseType: !628, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1439, file: !33, line: 166, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!1403}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1439, file: !33, line: 167, baseType: !1403, size: 64, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1423, file: !33, line: 123, baseType: !107, size: 8, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1423, file: !33, line: 124, baseType: !107, size: 8, offset: 456)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1423, file: !33, line: 125, baseType: !107, size: 8, offset: 464)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1423, file: !33, line: 126, baseType: !107, size: 8, offset: 472)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1371, file: !38, line: 691, baseType: !122, size: 64, offset: 1152)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1371, file: !38, line: 692, baseType: !582, size: 256, offset: 1216)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1371, file: !38, line: 693, baseType: !1494, size: 192, offset: 1472)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1495, line: 41, baseType: !1496)
!1495 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1495, line: 37, size: 192, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1496, file: !1495, line: 38, baseType: !214, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1496, file: !1495, line: 39, baseType: !201, size: 128, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1371, file: !38, line: 694, baseType: !1398, size: 64, offset: 1664)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1371, file: !38, line: 695, baseType: !234, size: 32, offset: 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1371, file: !38, line: 696, baseType: !234, size: 32, offset: 1760)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1371, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1371, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1371, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1371, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1371, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1371, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1371, file: !38, line: 703, baseType: !617, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1371, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1371, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1371, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1371, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1371, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1371, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1371, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1371, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1371, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1371, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1371, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1371, file: !38, line: 715, baseType: !122, size: 64, offset: 2048)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1371, file: !38, line: 716, baseType: !122, size: 64, offset: 2112)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1371, file: !38, line: 717, baseType: !122, size: 64, offset: 2176)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1371, file: !38, line: 718, baseType: !122, size: 64, offset: 2240)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1371, file: !38, line: 720, baseType: !1526, size: 64, offset: 2304)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1527, file: !38, line: 633, baseType: !214, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1527, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1371, file: !38, line: 721, baseType: !1532, size: 64, offset: 2368)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !192, !498}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1371, file: !38, line: 722, baseType: !1536, size: 64, offset: 2432)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !193, file: !26, line: 727, baseType: !1539, size: 64, offset: 4224)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1548, !1549, !1550}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1540, file: !38, line: 743, baseType: !865, size: 1472)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1540, file: !38, line: 744, baseType: !868, size: 64, offset: 1472)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1540, file: !38, line: 745, baseType: !1545, size: 64, offset: 1536)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !192, !617}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1540, file: !38, line: 746, baseType: !868, size: 64, offset: 1600)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1540, file: !38, line: 747, baseType: !859, size: 64, offset: 1664)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1540, file: !38, line: 748, baseType: !859, size: 64, offset: 1728)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !193, file: !26, line: 736, baseType: !1552, size: 128, offset: 4288)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1553)
!1553 = !{!1554, !1558}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1552, file: !26, line: 531, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1557, line: 13, flags: DIFlagFwdDecl)
!1557 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1552, file: !26, line: 532, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !193, file: !26, line: 738, baseType: !1562, size: 64, offset: 4416)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !193, file: !26, line: 740, baseType: !1566, size: 64, offset: 4480)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !193, file: !26, line: 741, baseType: !122, size: 64, offset: 4544)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !193, file: !26, line: 746, baseType: !122, size: 64, offset: 4608)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !193, file: !26, line: 747, baseType: !1570, size: 64, offset: 4672)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !193, file: !26, line: 749, baseType: !1574, size: 64, offset: 4736)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1575, file: !26, line: 433, baseType: !7, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1575, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1575, file: !26, line: 435, baseType: !315, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !193, file: !26, line: 751, baseType: !201, size: 128, offset: 4800)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !193, file: !26, line: 762, baseType: !1582, size: 64, offset: 4928)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !193, file: !26, line: 770, baseType: !1585, offset: 4992)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1586, line: 5, elements: !401)
!1586 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !193, file: !26, line: 772, baseType: !1588, size: 64, offset: 4992)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1590, line: 18, flags: DIFlagFwdDecl)
!1590 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !193, file: !26, line: 773, baseType: !1592, size: 64, offset: 5056)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1594, line: 41, size: 512, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1595 = !{!1596, !1597, !1690, !1691, !1692, !1693}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1593, file: !1594, line: 42, baseType: !1592, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1593, file: !1594, line: 43, baseType: !1598, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1594, line: 125, size: 1408, elements: !1601)
!1601 = !{!1602, !1606, !1610, !1616, !1620, !1621, !1625, !1629, !1633, !1637, !1641, !1642, !1646, !1650, !1654, !1665, !1666, !1667, !1668, !1678, !1682, !1686}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1600, file: !1594, line: 126, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1592, !1592}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1600, file: !1594, line: 127, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1592}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1600, file: !1594, line: 128, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!617, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1600, file: !1594, line: 129, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!538, !1614, !851}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1600, file: !1594, line: 131, baseType: !1611, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1600, file: !1594, line: 133, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!53, !1614}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1600, file: !1594, line: 134, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!617, !1614, !178}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1600, file: !1594, line: 136, baseType: !1630, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!46, !1614, !178, !7, !90, !312}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1600, file: !1594, line: 141, baseType: !1634, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!46, !1614, !178, !1258, !312}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1600, file: !1594, line: 144, baseType: !1638, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!178, !1614}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1600, file: !1594, line: 145, baseType: !1638, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1600, file: !1594, line: 146, baseType: !1643, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1592, !1614}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1600, file: !1594, line: 148, baseType: !1647, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!1592, !1614, !1592}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1600, file: !1594, line: 151, baseType: !1651, size: 64, offset: 832)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1592, !1614, !178}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1600, file: !1594, line: 153, baseType: !1655, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!46, !1614, !178, !178, !7, !7, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1594, line: 94, size: 640, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1659, file: !1594, line: 95, baseType: !1592, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1659, file: !1594, line: 96, baseType: !7, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1659, file: !1594, line: 97, baseType: !1664, size: 512, offset: 128)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 512, elements: !117)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1600, file: !1594, line: 158, baseType: !1647, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1600, file: !1594, line: 161, baseType: !1643, size: 64, offset: 1024)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1600, file: !1594, line: 163, baseType: !1603, size: 64, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1600, file: !1594, line: 164, baseType: !1669, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!46, !1614, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1594, line: 73, size: 128, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1673, file: !1594, line: 74, baseType: !7, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1673, file: !1594, line: 75, baseType: !7, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1673, file: !1594, line: 76, baseType: !1614, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1600, file: !1594, line: 166, baseType: !1679, size: 64, offset: 1216)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!90, !1592, !46}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1600, file: !1594, line: 167, baseType: !1683, size: 64, offset: 1280)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!46, !1614, !7}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1600, file: !1594, line: 168, baseType: !1687, size: 64, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!46, !1592}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1593, file: !1594, line: 44, baseType: !192, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1593, file: !1594, line: 45, baseType: !201, size: 128, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1593, file: !1594, line: 46, baseType: !201, size: 128, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1594, line: 47, baseType: !107, size: 8, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !193, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !193, file: !26, line: 778, baseType: !1696, size: 32, offset: 5152)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !182, line: 21, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !182, line: 18, baseType: !102)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !193, file: !26, line: 779, baseType: !102, size: 32, offset: 5184)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !193, file: !26, line: 781, baseType: !214, size: 32, offset: 5216)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !193, file: !26, line: 782, baseType: !201, size: 128, offset: 5248)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !193, file: !26, line: 784, baseType: !1702, size: 64, offset: 5376)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1705, line: 52, size: 768, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1715, !1719, !1720, !1721, !1722, !1726, !1730}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1704, file: !1705, line: 53, baseType: !178, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1704, file: !1705, line: 55, baseType: !317, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1704, file: !1705, line: 56, baseType: !317, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1704, file: !1705, line: 58, baseType: !848, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1704, file: !1705, line: 59, baseType: !1712, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!276, !851, !857}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1704, file: !1705, line: 61, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1702}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1704, file: !1705, line: 62, baseType: !859, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1704, file: !1705, line: 64, baseType: !868, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1704, file: !1705, line: 66, baseType: !657, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1704, file: !1705, line: 67, baseType: !1723, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!538, !851}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1704, file: !1705, line: 69, baseType: !1727, size: 64, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !851, !692, !699}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1704, file: !1705, line: 71, baseType: !863, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !193, file: !26, line: 785, baseType: !317, size: 64, offset: 5440)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !193, file: !26, line: 787, baseType: !859, size: 64, offset: 5504)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !193, file: !26, line: 788, baseType: !1734, size: 64, offset: 5568)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !193, file: !26, line: 789, baseType: !1737, size: 64, offset: 5632)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !193, file: !26, line: 791, baseType: !1740, size: 64, offset: 5696)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1741, file: !26, line: 598, baseType: !59, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1741, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1741, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1741, file: !26, line: 601, baseType: !617, size: 8, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1741, file: !26, line: 602, baseType: !617, size: 8, offset: 104)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !193, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !193, file: !26, line: 795, baseType: !617, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !193, file: !26, line: 796, baseType: !617, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !193, file: !26, line: 797, baseType: !617, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !193, file: !26, line: 798, baseType: !617, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !193, file: !26, line: 799, baseType: !617, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !171, file: !26, line: 110, baseType: !1756, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!187, !192, !1754, !178, !312}
!1759 = !DIGlobalVariableExpression(var: !1760, expr: !DIExpression())
!1760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !112, isLocal: true, isDefinition: true)
!1761 = !DIGlobalVariableExpression(var: !1762, expr: !DIExpression())
!1762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !1299, isLocal: true, isDefinition: true)
!1763 = !DIGlobalVariableExpression(var: !1764, expr: !DIExpression())
!1764 = distinct !DIGlobalVariable(name: "dev_attr_low_power_idle_cpu_residency_us", scope: !2, file: !3, line: 85, type: !171, isLocal: true, isDefinition: true)
!1765 = !DIGlobalVariableExpression(var: !1766, expr: !DIExpression())
!1766 = distinct !DIGlobalVariable(name: "residency_info_ffh", scope: !2, file: !3, line: 23, type: !1767, isLocal: true, isDefinition: true)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpit_residency_info", file: !3, line: 15, size: 256, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "gaddr", scope: !1767, file: !3, line: 16, baseType: !141, size: 96)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1767, file: !3, line: 17, baseType: !122, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_addr", scope: !1767, file: !3, line: 18, baseType: !90, size: 64, offset: 192)
!1772 = !{i32 7, !"Dwarf Version", i32 5}
!1773 = !{i32 2, !"Debug Info Version", i32 3}
!1774 = !{i32 1, !"wchar_size", i32 2}
!1775 = !{i32 8, !"cf-protection-branch", i32 1}
!1776 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1777 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1778 = !{i32 1, !"Code Model", i32 2}
!1779 = !{i32 1, !"override-stack-alignment", i32 8}
!1780 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1781 = distinct !DISubprogram(name: "lpit_read_residency_count_address", scope: !3, file: !3, line: 87, type: !1782, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!46, !1566}
!1784 = !{!1785}
!1785 = !DILocalVariable(name: "address", arg: 1, scope: !1781, file: !3, line: 87, type: !1566)
!1786 = !DILocation(line: 87, column: 44, scope: !1781)
!1787 = !DILocation(line: 89, column: 32, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 89, column: 6)
!1789 = !DILocation(line: 89, column: 7, scope: !1788)
!1790 = !DILocation(line: 89, column: 6, scope: !1781)
!1791 = !DILocation(line: 90, column: 3, scope: !1788)
!1792 = !DILocation(line: 92, column: 38, scope: !1781)
!1793 = !DILocation(line: 92, column: 3, scope: !1781)
!1794 = !DILocation(line: 92, column: 11, scope: !1781)
!1795 = !DILocation(line: 94, column: 2, scope: !1781)
!1796 = !DILocation(line: 95, column: 1, scope: !1781)
!1797 = distinct !DISubprogram(name: "acpi_init_lpit", scope: !3, file: !3, line: 149, type: !1286, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1798 = !{!1799, !1801}
!1799 = !DILocalVariable(name: "status", scope: !1797, file: !3, line: 151, type: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !153, line: 421, baseType: !102)
!1801 = !DILocalVariable(name: "lpit", scope: !1797, file: !3, line: 152, type: !1802)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_lpit", file: !127, line: 805, size: 288, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1803, file: !127, line: 806, baseType: !93, size: 288)
!1806 = !DILocation(line: 151, column: 2, scope: !1797)
!1807 = !DILocation(line: 151, column: 14, scope: !1797)
!1808 = !DILocation(line: 152, column: 2, scope: !1797)
!1809 = !DILocation(line: 152, column: 26, scope: !1797)
!1810 = !DILocation(line: 154, column: 11, scope: !1797)
!1811 = !DILocation(line: 154, column: 9, scope: !1797)
!1812 = !DILocation(line: 155, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 155, column: 6)
!1814 = !DILocation(line: 155, column: 6, scope: !1797)
!1815 = !DILocation(line: 156, column: 3, scope: !1813)
!1816 = !DILocation(line: 158, column: 20, scope: !1797)
!1817 = !DILocation(line: 158, column: 15, scope: !1797)
!1818 = !DILocation(line: 158, column: 25, scope: !1797)
!1819 = !DILocation(line: 159, column: 13, scope: !1797)
!1820 = !DILocation(line: 159, column: 8, scope: !1797)
!1821 = !DILocation(line: 159, column: 20, scope: !1797)
!1822 = !DILocation(line: 159, column: 26, scope: !1797)
!1823 = !DILocation(line: 159, column: 33, scope: !1797)
!1824 = !DILocation(line: 159, column: 18, scope: !1797)
!1825 = !DILocation(line: 158, column: 2, scope: !1797)
!1826 = !DILocation(line: 161, column: 45, scope: !1797)
!1827 = !DILocation(line: 161, column: 2, scope: !1797)
!1828 = !DILocation(line: 162, column: 1, scope: !1797)
!1829 = !DISubprogram(name: "acpi_get_table", scope: !1830, file: !1830, line: 489, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1830 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1800, !1833, !102, !91}
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !153, line: 423, baseType: !276)
!1834 = distinct !DISubprogram(name: "lpit_process", scope: !3, file: !3, line: 131, type: !1835, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !122, !122}
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "begin", arg: 1, scope: !1834, file: !3, line: 131, type: !122)
!1839 = !DILocalVariable(name: "end", arg: 2, scope: !1834, file: !3, line: 131, type: !122)
!1840 = !DILocalVariable(name: "lpit_native", scope: !1841, file: !3, line: 134, type: !125)
!1841 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 133, column: 57)
!1842 = !DILocation(line: 131, column: 30, scope: !1834)
!1843 = !DILocation(line: 131, column: 41, scope: !1834)
!1844 = !DILocation(line: 133, column: 2, scope: !1834)
!1845 = !DILocation(line: 133, column: 9, scope: !1834)
!1846 = !DILocation(line: 133, column: 15, scope: !1834)
!1847 = !DILocation(line: 133, column: 52, scope: !1834)
!1848 = !DILocation(line: 133, column: 49, scope: !1834)
!1849 = !DILocation(line: 134, column: 3, scope: !1841)
!1850 = !DILocation(line: 134, column: 28, scope: !1841)
!1851 = !DILocation(line: 134, column: 69, scope: !1841)
!1852 = !DILocation(line: 134, column: 42, scope: !1841)
!1853 = !DILocation(line: 136, column: 8, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 136, column: 7)
!1855 = !DILocation(line: 136, column: 21, scope: !1854)
!1856 = !DILocation(line: 136, column: 28, scope: !1854)
!1857 = !DILocation(line: 136, column: 33, scope: !1854)
!1858 = !DILocation(line: 136, column: 37, scope: !1854)
!1859 = !DILocation(line: 136, column: 50, scope: !1854)
!1860 = !DILocation(line: 136, column: 57, scope: !1854)
!1861 = !DILocation(line: 136, column: 7, scope: !1841)
!1862 = !DILocation(line: 137, column: 8, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 137, column: 8)
!1864 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 136, column: 64)
!1865 = !DILocation(line: 137, column: 21, scope: !1863)
!1866 = !DILocation(line: 137, column: 39, scope: !1863)
!1867 = !DILocation(line: 137, column: 48, scope: !1863)
!1868 = !DILocation(line: 137, column: 80, scope: !1863)
!1869 = !DILocation(line: 138, column: 34, scope: !1863)
!1870 = !DILocation(line: 138, column: 9, scope: !1863)
!1871 = !DILocation(line: 137, column: 8, scope: !1864)
!1872 = !DILocation(line: 139, column: 48, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 138, column: 43)
!1874 = !DILocation(line: 139, column: 5, scope: !1873)
!1875 = !DILocation(line: 140, column: 4, scope: !1873)
!1876 = !DILocation(line: 140, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 140, column: 15)
!1878 = !DILocation(line: 140, column: 28, scope: !1877)
!1879 = !DILocation(line: 140, column: 46, scope: !1877)
!1880 = !DILocation(line: 140, column: 55, scope: !1877)
!1881 = !DILocation(line: 140, column: 88, scope: !1877)
!1882 = !DILocation(line: 141, column: 34, scope: !1877)
!1883 = !DILocation(line: 141, column: 9, scope: !1877)
!1884 = !DILocation(line: 140, column: 15, scope: !1863)
!1885 = !DILocation(line: 142, column: 48, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 141, column: 43)
!1887 = !DILocation(line: 142, column: 5, scope: !1886)
!1888 = !DILocation(line: 143, column: 4, scope: !1886)
!1889 = !DILocation(line: 144, column: 3, scope: !1864)
!1890 = !DILocation(line: 145, column: 12, scope: !1841)
!1891 = !DILocation(line: 145, column: 25, scope: !1841)
!1892 = !DILocation(line: 145, column: 32, scope: !1841)
!1893 = !DILocation(line: 145, column: 9, scope: !1841)
!1894 = !DILocation(line: 146, column: 2, scope: !1834)
!1895 = distinct !{!1895, !1844, !1894, !1896, !1897}
!1896 = !{!"llvm.loop.mustprogress"}
!1897 = !{!"llvm.loop.unroll.disable"}
!1898 = !DILocation(line: 147, column: 1, scope: !1834)
!1899 = !DISubprogram(name: "acpi_put_table", scope: !1830, file: !1830, line: 493, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !92}
!1902 = distinct !DISubprogram(name: "lpit_update_residency", scope: !3, file: !3, line: 98, type: !1903, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1905, !125}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DILocalVariable(name: "info", arg: 1, scope: !1902, file: !3, line: 98, type: !1905)
!1908 = !DILocalVariable(name: "lpit_native", arg: 2, scope: !1902, file: !3, line: 99, type: !125)
!1909 = !DILocalVariable(name: "dev_root", scope: !1902, file: !3, line: 101, type: !192)
!1910 = !DILabel(scope: !1902, name: "exit", file: !3, line: 127)
!1911 = !DILocation(line: 98, column: 63, scope: !1902)
!1912 = !DILocation(line: 99, column: 31, scope: !1902)
!1913 = !DILocation(line: 101, column: 2, scope: !1902)
!1914 = !DILocation(line: 101, column: 17, scope: !1902)
!1915 = !DILocation(line: 101, column: 28, scope: !1902)
!1916 = !DILocation(line: 104, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 104, column: 6)
!1918 = !DILocation(line: 104, column: 6, scope: !1902)
!1919 = !DILocation(line: 105, column: 3, scope: !1917)
!1920 = !DILocation(line: 107, column: 20, scope: !1902)
!1921 = !DILocation(line: 107, column: 33, scope: !1902)
!1922 = !DILocation(line: 108, column: 5, scope: !1902)
!1923 = !DILocation(line: 108, column: 18, scope: !1902)
!1924 = !DILocation(line: 108, column: 50, scope: !1902)
!1925 = !DILocation(line: 108, column: 38, scope: !1902)
!1926 = !DILocation(line: 107, column: 2, scope: !1902)
!1927 = !DILocation(line: 107, column: 8, scope: !1902)
!1928 = !DILocation(line: 107, column: 18, scope: !1902)
!1929 = !DILocation(line: 109, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 109, column: 6)
!1931 = !DILocation(line: 109, column: 13, scope: !1930)
!1932 = !DILocation(line: 109, column: 6, scope: !1902)
!1933 = !DILocation(line: 110, column: 3, scope: !1930)
!1934 = !DILocation(line: 110, column: 9, scope: !1930)
!1935 = !DILocation(line: 110, column: 19, scope: !1930)
!1936 = !DILocation(line: 112, column: 2, scope: !1902)
!1937 = !DILocation(line: 112, column: 8, scope: !1902)
!1938 = !DILocation(line: 112, column: 16, scope: !1902)
!1939 = !DILocation(line: 112, column: 29, scope: !1902)
!1940 = !DILocation(line: 113, column: 6, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 113, column: 6)
!1942 = !DILocation(line: 113, column: 12, scope: !1941)
!1943 = !DILocation(line: 113, column: 18, scope: !1941)
!1944 = !DILocation(line: 113, column: 27, scope: !1941)
!1945 = !DILocation(line: 113, column: 6, scope: !1902)
!1946 = !DILocation(line: 114, column: 30, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 113, column: 60)
!1948 = !DILocation(line: 114, column: 36, scope: !1947)
!1949 = !DILocation(line: 114, column: 42, scope: !1947)
!1950 = !DILocation(line: 115, column: 10, scope: !1947)
!1951 = !DILocation(line: 115, column: 16, scope: !1947)
!1952 = !DILocation(line: 115, column: 22, scope: !1947)
!1953 = !DILocation(line: 115, column: 32, scope: !1947)
!1954 = !DILocation(line: 114, column: 22, scope: !1947)
!1955 = !DILocation(line: 114, column: 3, scope: !1947)
!1956 = !DILocation(line: 114, column: 9, scope: !1947)
!1957 = !DILocation(line: 114, column: 20, scope: !1947)
!1958 = !DILocation(line: 116, column: 8, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 116, column: 7)
!1960 = !DILocation(line: 116, column: 14, scope: !1959)
!1961 = !DILocation(line: 116, column: 7, scope: !1947)
!1962 = !DILocation(line: 117, column: 4, scope: !1959)
!1963 = !DILocation(line: 119, column: 28, scope: !1947)
!1964 = !DILocation(line: 119, column: 38, scope: !1947)
!1965 = !DILocation(line: 119, column: 3, scope: !1947)
!1966 = !DILocation(line: 122, column: 2, scope: !1947)
!1967 = !DILocation(line: 122, column: 13, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 122, column: 13)
!1969 = !DILocation(line: 122, column: 19, scope: !1968)
!1970 = !DILocation(line: 122, column: 25, scope: !1968)
!1971 = !DILocation(line: 122, column: 34, scope: !1968)
!1972 = !DILocation(line: 122, column: 13, scope: !1941)
!1973 = !DILocation(line: 123, column: 28, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 122, column: 68)
!1975 = !DILocation(line: 123, column: 38, scope: !1974)
!1976 = !DILocation(line: 123, column: 3, scope: !1974)
!1977 = !DILocation(line: 126, column: 2, scope: !1974)
!1978 = !DILocation(line: 113, column: 30, scope: !1941)
!1979 = !DILocation(line: 127, column: 1, scope: !1902)
!1980 = !DILocation(line: 128, column: 13, scope: !1902)
!1981 = !DILocation(line: 128, column: 2, scope: !1902)
!1982 = !DILocation(line: 129, column: 1, scope: !1902)
!1983 = !DISubprogram(name: "bus_get_dev_root", scope: !897, file: !897, line: 280, type: !1984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!192, !894}
!1986 = distinct !DISubprogram(name: "mul_u32_u32", scope: !1987, file: !1987, line: 155, type: !1988, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1987 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!122, !102, !102}
!1990 = !{!1991, !1992}
!1991 = !DILocalVariable(name: "a", arg: 1, scope: !1986, file: !1987, line: 155, type: !102)
!1992 = !DILocalVariable(name: "b", arg: 2, scope: !1986, file: !1987, line: 155, type: !102)
!1993 = !DILocation(line: 155, column: 35, scope: !1986)
!1994 = !DILocation(line: 155, column: 42, scope: !1986)
!1995 = !DILocation(line: 157, column: 14, scope: !1986)
!1996 = !DILocation(line: 157, column: 9, scope: !1986)
!1997 = !DILocation(line: 157, column: 18, scope: !1986)
!1998 = !DILocation(line: 157, column: 16, scope: !1986)
!1999 = !DILocation(line: 157, column: 2, scope: !1986)
!2000 = !DISubprogram(name: "ioremap", scope: !2001, file: !2001, line: 196, type: !2002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2001 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!90, !2004, !315}
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !182, line: 164, baseType: !2005)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !182, line: 159, baseType: !122)
!2006 = !DISubprogram(name: "sysfs_add_file_to_group", scope: !175, file: !175, line: 319, type: !2007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!46, !207, !2009, !178}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!2011 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2012 = distinct !DISubprogram(name: "low_power_idle_system_residency_us_show", scope: !3, file: !3, line: 57, type: !185, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018}
!2014 = !DILocalVariable(name: "dev", arg: 1, scope: !2012, file: !3, line: 57, type: !192)
!2015 = !DILocalVariable(name: "attr", arg: 2, scope: !2012, file: !3, line: 58, type: !1754)
!2016 = !DILocalVariable(name: "buf", arg: 3, scope: !2012, file: !3, line: 59, type: !276)
!2017 = !DILocalVariable(name: "counter", scope: !2012, file: !3, line: 61, type: !122)
!2018 = !DILocalVariable(name: "ret", scope: !2012, file: !3, line: 62, type: !46)
!2019 = !DILocation(line: 57, column: 71, scope: !2012)
!2020 = !DILocation(line: 58, column: 39, scope: !2012)
!2021 = !DILocation(line: 59, column: 20, scope: !2012)
!2022 = !DILocation(line: 61, column: 2, scope: !2012)
!2023 = !DILocation(line: 61, column: 6, scope: !2012)
!2024 = !DILocation(line: 62, column: 2, scope: !2012)
!2025 = !DILocation(line: 62, column: 6, scope: !2012)
!2026 = !DILocation(line: 64, column: 8, scope: !2012)
!2027 = !DILocation(line: 64, column: 6, scope: !2012)
!2028 = !DILocation(line: 65, column: 6, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 65, column: 6)
!2030 = !DILocation(line: 65, column: 6, scope: !2012)
!2031 = !DILocation(line: 66, column: 10, scope: !2029)
!2032 = !DILocation(line: 66, column: 3, scope: !2029)
!2033 = !DILocation(line: 68, column: 17, scope: !2012)
!2034 = !DILocation(line: 68, column: 32, scope: !2012)
!2035 = !DILocation(line: 68, column: 9, scope: !2012)
!2036 = !DILocation(line: 68, column: 2, scope: !2012)
!2037 = !DILocation(line: 69, column: 1, scope: !2012)
!2038 = distinct !DISubprogram(name: "lpit_read_residency_counter_us", scope: !3, file: !3, line: 25, type: !2039, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!46, !1566, !617}
!2041 = !{!2042, !2043, !2044, !2045, !2048, !2049}
!2042 = !DILocalVariable(name: "counter", arg: 1, scope: !2038, file: !3, line: 25, type: !1566)
!2043 = !DILocalVariable(name: "io_mem", arg: 2, scope: !2038, file: !3, line: 25, type: !617)
!2044 = !DILocalVariable(name: "err", scope: !2038, file: !3, line: 27, type: !46)
!2045 = !DILocalVariable(name: "count", scope: !2046, file: !3, line: 30, type: !122)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 29, column: 14)
!2047 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 29, column: 6)
!2048 = !DILocalVariable(name: "error", scope: !2046, file: !3, line: 31, type: !46)
!2049 = !DILocalVariable(name: "mask", scope: !2050, file: !3, line: 44, type: !122)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 43, column: 12)
!2051 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 43, column: 6)
!2052 = !DILocation(line: 25, column: 48, scope: !2038)
!2053 = !DILocation(line: 25, column: 62, scope: !2038)
!2054 = !DILocation(line: 27, column: 2, scope: !2038)
!2055 = !DILocation(line: 27, column: 6, scope: !2038)
!2056 = !DILocation(line: 29, column: 6, scope: !2047)
!2057 = !{i8 0, i8 2}
!2058 = !DILocation(line: 29, column: 6, scope: !2038)
!2059 = !DILocation(line: 30, column: 3, scope: !2046)
!2060 = !DILocation(line: 30, column: 7, scope: !2046)
!2061 = !DILocation(line: 31, column: 3, scope: !2046)
!2062 = !DILocation(line: 31, column: 7, scope: !2046)
!2063 = !DILocation(line: 33, column: 49, scope: !2046)
!2064 = !DILocation(line: 34, column: 34, scope: !2046)
!2065 = !DILocation(line: 34, column: 9, scope: !2046)
!2066 = !DILocation(line: 33, column: 11, scope: !2046)
!2067 = !DILocation(line: 33, column: 9, scope: !2046)
!2068 = !DILocation(line: 35, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 35, column: 7)
!2070 = !DILocation(line: 35, column: 7, scope: !2046)
!2071 = !DILocation(line: 36, column: 11, scope: !2069)
!2072 = !DILocation(line: 36, column: 4, scope: !2069)
!2073 = !DILocation(line: 38, column: 24, scope: !2046)
!2074 = !DILocation(line: 38, column: 30, scope: !2046)
!2075 = !DILocation(line: 38, column: 63, scope: !2046)
!2076 = !DILocation(line: 38, column: 14, scope: !2046)
!2077 = !DILocation(line: 38, column: 4, scope: !2046)
!2078 = !DILocation(line: 38, column: 12, scope: !2046)
!2079 = !DILocation(line: 39, column: 3, scope: !2046)
!2080 = !DILocation(line: 40, column: 2, scope: !2047)
!2081 = !DILocation(line: 42, column: 45, scope: !2038)
!2082 = !DILocation(line: 42, column: 20, scope: !2038)
!2083 = !DILocation(line: 42, column: 54, scope: !2038)
!2084 = !DILocation(line: 42, column: 8, scope: !2038)
!2085 = !DILocation(line: 42, column: 6, scope: !2038)
!2086 = !DILocation(line: 43, column: 7, scope: !2051)
!2087 = !DILocation(line: 43, column: 6, scope: !2038)
!2088 = !DILocation(line: 44, column: 3, scope: !2050)
!2089 = !DILocation(line: 44, column: 7, scope: !2050)
!2090 = !DILocation(line: 44, column: 14, scope: !2050)
!2091 = !DILocation(line: 48, column: 15, scope: !2050)
!2092 = !DILocation(line: 48, column: 4, scope: !2050)
!2093 = !DILocation(line: 48, column: 12, scope: !2050)
!2094 = !DILocation(line: 49, column: 41, scope: !2050)
!2095 = !DILocation(line: 49, column: 16, scope: !2050)
!2096 = !DILocation(line: 49, column: 4, scope: !2050)
!2097 = !DILocation(line: 49, column: 12, scope: !2050)
!2098 = !DILocation(line: 50, column: 25, scope: !2050)
!2099 = !DILocation(line: 50, column: 24, scope: !2050)
!2100 = !DILocation(line: 50, column: 33, scope: !2050)
!2101 = !DILocation(line: 50, column: 66, scope: !2050)
!2102 = !DILocation(line: 50, column: 14, scope: !2050)
!2103 = !DILocation(line: 50, column: 4, scope: !2050)
!2104 = !DILocation(line: 50, column: 12, scope: !2050)
!2105 = !DILocation(line: 51, column: 3, scope: !2050)
!2106 = !DILocation(line: 52, column: 2, scope: !2051)
!2107 = !DILocation(line: 54, column: 2, scope: !2038)
!2108 = !DILocation(line: 55, column: 1, scope: !2038)
!2109 = !DISubprogram(name: "sprintf", scope: !2110, file: !2110, line: 10, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2110 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!46, !276, !178, null}
!2113 = !DISubprogram(name: "acpi_os_read_iomem", scope: !2114, file: !2114, line: 277, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2114 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!46, !90, !1566, !102}
!2117 = distinct !DISubprogram(name: "div64_u64", scope: !1987, file: !1987, line: 67, type: !2118, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!122, !122, !122}
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "dividend", arg: 1, scope: !2117, file: !1987, line: 67, type: !122)
!2122 = !DILocalVariable(name: "divisor", arg: 2, scope: !2117, file: !1987, line: 67, type: !122)
!2123 = !DILocation(line: 67, column: 33, scope: !2117)
!2124 = !DILocation(line: 67, column: 47, scope: !2117)
!2125 = !DILocation(line: 69, column: 9, scope: !2117)
!2126 = !DILocation(line: 69, column: 20, scope: !2117)
!2127 = !DILocation(line: 69, column: 18, scope: !2117)
!2128 = !DILocation(line: 69, column: 2, scope: !2117)
!2129 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !2130, file: !2130, line: 281, type: !2131, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2130 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!46, !7, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!2134 = !{!2135, !2136, !2137}
!2135 = !DILocalVariable(name: "msr", arg: 1, scope: !2129, file: !2130, line: 281, type: !7)
!2136 = !DILocalVariable(name: "p", arg: 2, scope: !2129, file: !2130, line: 281, type: !2133)
!2137 = !DILocalVariable(name: "err", scope: !2129, file: !2130, line: 283, type: !46)
!2138 = !DILocation(line: 281, column: 44, scope: !2129)
!2139 = !DILocation(line: 281, column: 69, scope: !2129)
!2140 = !DILocation(line: 283, column: 2, scope: !2129)
!2141 = !DILocation(line: 283, column: 6, scope: !2129)
!2142 = !DILocation(line: 285, column: 28, scope: !2129)
!2143 = !DILocation(line: 285, column: 7, scope: !2129)
!2144 = !DILocation(line: 285, column: 3, scope: !2129)
!2145 = !DILocation(line: 285, column: 5, scope: !2129)
!2146 = !DILocation(line: 286, column: 9, scope: !2129)
!2147 = !DILocation(line: 287, column: 1, scope: !2129)
!2148 = !DILocation(line: 286, column: 2, scope: !2129)
!2149 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !2130, file: !2130, line: 126, type: !2150, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!124, !7, !1075}
!2152 = !{!2153, !2154, !2155, !2156}
!2153 = !DILocalVariable(name: "msr", arg: 1, scope: !2149, file: !2130, line: 126, type: !7)
!2154 = !DILocalVariable(name: "err", arg: 2, scope: !2149, file: !2130, line: 127, type: !1075)
!2155 = !DILocalVariable(name: "low", scope: !2149, file: !2130, line: 129, type: !315)
!2156 = !DILocalVariable(name: "high", scope: !2149, file: !2130, line: 129, type: !315)
!2157 = !DILocation(line: 126, column: 68, scope: !2149)
!2158 = !DILocation(line: 127, column: 18, scope: !2149)
!2159 = !DILocation(line: 129, column: 2, scope: !2149)
!2160 = !DILocation(line: 134, column: 23, scope: !2149)
!2161 = !DILocation(line: 135, column: 15, scope: !2149)
!2162 = !DILocation(line: 131, column: 2, scope: !2149)
!2163 = !{i64 1884906, i64 1884947, i64 1884951, i64 2149562650, i64 2149562675, i64 2149562710, i64 2149562927, i64 2149562980, i64 2149563011, i64 2149563042, i64 2149563120, i64 2149563154, i64 2149563192, i64 2149563235, i64 2149563258, i64 2149563296, i64 2149563318, i64 2149563349, i64 2149563434, i64 2149563468, i64 2149563506, i64 2149563549, i64 2149563572, i64 2149563610, i64 2149563632, i64 2149563666, i64 2149563728, i64 2149563751, i64 2149562776, i64 2149563825, i64 2149562887}
!2164 = !DILocation(line: 136, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2149, file: !2130, line: 136, column: 6)
!2166 = !DILocation(line: 136, column: 6, scope: !2149)
!2167 = !DILocation(line: 137, column: 21, scope: !2165)
!2168 = !DILocation(line: 137, column: 26, scope: !2165)
!2169 = !DILocation(line: 137, column: 56, scope: !2165)
!2170 = !DILocation(line: 137, column: 55, scope: !2165)
!2171 = !DILocation(line: 137, column: 3, scope: !2165)
!2172 = !DILocation(line: 138, column: 9, scope: !2149)
!2173 = !DILocation(line: 139, column: 1, scope: !2149)
!2174 = !DILocation(line: 138, column: 2, scope: !2149)
!2175 = distinct !DISubprogram(name: "static_key_false", scope: !1250, file: !1250, line: 205, type: !2176, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!617, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1250, line: 85, size: 128, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2179, file: !1250, line: 86, baseType: !234, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !1250, line: 101, baseType: !2183, size: 64, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2179, file: !1250, line: 101, size: 64, elements: !2184)
!2184 = !{!2185, !2186, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2183, file: !1250, line: 102, baseType: !315, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2183, file: !1250, line: 103, baseType: !1248, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2183, file: !1250, line: 104, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1250, line: 104, flags: DIFlagFwdDecl)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "key", arg: 1, scope: !2175, file: !1250, line: 205, type: !2178)
!2192 = !DILocation(line: 205, column: 65, scope: !2175)
!2193 = !DILocation(line: 207, column: 28, scope: !2175)
!2194 = !DILocation(line: 207, column: 9, scope: !2175)
!2195 = !DILocation(line: 207, column: 2, scope: !2175)
!2196 = !DISubprogram(name: "do_trace_read_msr", scope: !2130, file: !2130, line: 65, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !7, !122, !46}
!2199 = distinct !DISubprogram(name: "arch_static_branch", scope: !2200, file: !2200, line: 25, type: !2201, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2200 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!617, !2178, !617}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "key", arg: 1, scope: !2199, file: !2200, line: 25, type: !2178)
!2205 = !DILocalVariable(name: "branch", arg: 2, scope: !2199, file: !2200, line: 25, type: !617)
!2206 = !DILabel(scope: !2199, name: "l_yes", file: !2200, line: 33)
!2207 = !DILocation(line: 25, column: 67, scope: !2199)
!2208 = !DILocation(line: 25, column: 77, scope: !2199)
!2209 = !DILocation(line: 30, column: 13, scope: !2199)
!2210 = !DILocation(line: 30, column: 28, scope: !2199)
!2211 = !DILocation(line: 30, column: 26, scope: !2199)
!2212 = !DILocation(line: 27, column: 2, scope: !2199)
!2213 = !{i64 1548140, i64 1548184, i64 2149032867, i64 2149032888, i64 2149032914, i64 2149032947, i64 2149032981, i64 2149033005}
!2214 = !DILocation(line: 32, column: 2, scope: !2199)
!2215 = !DILocation(line: 33, column: 1, scope: !2199)
!2216 = !DILocation(line: 34, column: 2, scope: !2199)
!2217 = !DILocation(line: 35, column: 1, scope: !2199)
!2218 = distinct !DISubprogram(name: "low_power_idle_cpu_residency_us_show", scope: !3, file: !3, line: 72, type: !185, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2224}
!2220 = !DILocalVariable(name: "dev", arg: 1, scope: !2218, file: !3, line: 72, type: !192)
!2221 = !DILocalVariable(name: "attr", arg: 2, scope: !2218, file: !3, line: 73, type: !1754)
!2222 = !DILocalVariable(name: "buf", arg: 3, scope: !2218, file: !3, line: 74, type: !276)
!2223 = !DILocalVariable(name: "counter", scope: !2218, file: !3, line: 76, type: !122)
!2224 = !DILocalVariable(name: "ret", scope: !2218, file: !3, line: 77, type: !46)
!2225 = !DILocation(line: 72, column: 68, scope: !2218)
!2226 = !DILocation(line: 73, column: 36, scope: !2218)
!2227 = !DILocation(line: 74, column: 17, scope: !2218)
!2228 = !DILocation(line: 76, column: 2, scope: !2218)
!2229 = !DILocation(line: 76, column: 6, scope: !2218)
!2230 = !DILocation(line: 77, column: 2, scope: !2218)
!2231 = !DILocation(line: 77, column: 6, scope: !2218)
!2232 = !DILocation(line: 79, column: 8, scope: !2218)
!2233 = !DILocation(line: 79, column: 6, scope: !2218)
!2234 = !DILocation(line: 80, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 80, column: 6)
!2236 = !DILocation(line: 80, column: 6, scope: !2218)
!2237 = !DILocation(line: 81, column: 10, scope: !2235)
!2238 = !DILocation(line: 81, column: 3, scope: !2235)
!2239 = !DILocation(line: 83, column: 17, scope: !2218)
!2240 = !DILocation(line: 83, column: 32, scope: !2218)
!2241 = !DILocation(line: 83, column: 9, scope: !2218)
!2242 = !DILocation(line: 83, column: 2, scope: !2218)
!2243 = !DILocation(line: 84, column: 1, scope: !2218)
